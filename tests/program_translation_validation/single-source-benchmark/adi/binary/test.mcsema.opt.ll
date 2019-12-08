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

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401270_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b90_kernel_adi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401140_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a60_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401340_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
define %struct.Memory* @sub_401560___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401560:
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
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %50 = bitcast [32 x %union.VectorReg]* %4 to double*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %52 = bitcast i64* %51 to double*
  %53 = bitcast %union.VectorReg* %5 to double*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to double*
  %56 = bitcast %union.VectorReg* %6 to double*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %58 = bitcast i64* %57 to double*
  %59 = bitcast %union.VectorReg* %7 to double*
  %60 = bitcast %union.VectorReg* %8 to double*
  %61 = bitcast %union.VectorReg* %5 to double*
  %62 = bitcast [32 x %union.VectorReg]* %4 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a7a

block_400a7a:                                     ; preds = %block_400b73, %block_400a60
  %63 = phi i64 [ %486, %block_400b73 ], [ %.pre, %block_400a60 ]
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -36
  %66 = add i64 %63, 3
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = add i64 %64, -4
  %71 = add i64 %63, 6
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %68, %73
  %75 = icmp ult i32 %68, %73
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %43, align 1, !tbaa !2432
  %77 = and i32 %74, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77) #8
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %44, align 1, !tbaa !2446
  %82 = xor i32 %73, %68
  %83 = xor i32 %82, %74
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %45, align 1, !tbaa !2450
  %87 = icmp eq i32 %74, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %46, align 1, !tbaa !2447
  %89 = lshr i32 %74, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %47, align 1, !tbaa !2448
  %91 = lshr i32 %68, 31
  %92 = lshr i32 %73, 31
  %93 = xor i32 %92, %91
  %94 = xor i32 %89, %91
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %48, align 1, !tbaa !2449
  %98 = icmp ne i8 %90, 0
  %99 = xor i1 %98, %96
  %.v = select i1 %99, i64 12, i64 268
  %100 = add i64 %63, %.v
  store i64 %100, i64* %49, align 8, !tbaa !2428
  br i1 %99, label %block_400a86, label %block_400b86

block_400a99:                                     ; preds = %block_400a8d
  %101 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 8) to i64*), align 8
  %102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %101, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %52, align 1, !tbaa !2452
  %103 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 16) to i64*), align 16
  %104 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %103, i64* %104, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %105 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 24) to double*), align 8
  store double %105, double* %56, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %106 = add i64 %407, -36
  %107 = add i64 %443, 27
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RAX, align 8, !tbaa !2428
  %111 = sitofp i32 %109 to double
  store double %111, double* %59, align 1, !tbaa !2452
  %112 = add i64 %443, 34
  store i64 %112, i64* %PC, align 8
  %113 = load i32, i32* %410, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = icmp eq i32 %113, -1
  %117 = icmp eq i32 %114, 0
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %43, align 1, !tbaa !2432
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #8
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %44, align 1, !tbaa !2446
  %125 = xor i32 %113, %114
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %45, align 1, !tbaa !2450
  %129 = icmp eq i32 %114, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %46, align 1, !tbaa !2447
  %131 = lshr i32 %114, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %47, align 1, !tbaa !2448
  %133 = lshr i32 %113, 31
  %134 = xor i32 %131, %133
  %135 = add nuw nsw i32 %134, %131
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %48, align 1, !tbaa !2449
  %138 = sitofp i32 %114 to double
  store double %138, double* %60, align 1, !tbaa !2452
  %139 = fmul double %111, %138
  %140 = fadd double %139, %105
  store double %140, double* %59, align 1, !tbaa !2452
  %141 = add i64 %443, 52
  store i64 %141, i64* %PC, align 8
  %142 = load i32, i32* %415, align 4
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %144 = sitofp i32 %142 to double
  store double %144, double* %56, align 1, !tbaa !2452
  %145 = fdiv double %140, %144
  store double %145, double* %59, align 1, !tbaa !2452
  %146 = add i64 %407, -16
  %147 = add i64 %443, 64
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RCX, align 8, !tbaa !2428
  %150 = load i64, i64* %RBP, align 8
  %151 = add i64 %150, -36
  %152 = add i64 %443, 68
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 13
  store i64 %156, i64* %RDX, align 8, !tbaa !2428
  %157 = lshr i64 %155, 50
  %158 = and i64 %157, 1
  %159 = add i64 %156, %149
  store i64 %159, i64* %RCX, align 8, !tbaa !2428
  %160 = icmp ult i64 %159, %149
  %161 = icmp ult i64 %159, %156
  %162 = or i1 %160, %161
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %43, align 1, !tbaa !2432
  %164 = trunc i64 %159 to i32
  %165 = and i32 %164, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165) #8
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %44, align 1, !tbaa !2446
  %170 = xor i64 %149, %159
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %45, align 1, !tbaa !2450
  %174 = icmp eq i64 %159, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %46, align 1, !tbaa !2447
  %176 = lshr i64 %159, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %47, align 1, !tbaa !2448
  %178 = lshr i64 %149, 63
  %179 = xor i64 %176, %178
  %180 = xor i64 %176, %158
  %181 = add nuw nsw i64 %179, %180
  %182 = icmp eq i64 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %48, align 1, !tbaa !2449
  %184 = add i64 %150, -40
  %185 = add i64 %443, 79
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %RDX, align 8, !tbaa !2428
  %189 = shl nsw i64 %188, 3
  %190 = add i64 %189, %159
  %191 = add i64 %443, 84
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to double*
  store double %145, double* %192, align 8
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -36
  %195 = load i64, i64* %PC, align 8
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = sitofp i32 %198 to double
  store double %200, double* %56, align 1, !tbaa !2452
  %201 = add i64 %193, -40
  %202 = add i64 %195, 10
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, 2
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = icmp ugt i32 %204, -3
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %43, align 1, !tbaa !2432
  %209 = and i32 %205, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #8
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %44, align 1, !tbaa !2446
  %214 = xor i32 %204, %205
  %215 = lshr i32 %214, 4
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %45, align 1, !tbaa !2450
  %218 = icmp eq i32 %205, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %46, align 1, !tbaa !2447
  %220 = lshr i32 %205, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %47, align 1, !tbaa !2448
  %222 = lshr i32 %204, 31
  %223 = xor i32 %220, %222
  %224 = add nuw nsw i32 %223, %220
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %48, align 1, !tbaa !2449
  %227 = sitofp i32 %205 to double
  store double %227, double* %59, align 1, !tbaa !2452
  %228 = fmul double %200, %227
  %229 = load double, double* %61, align 1
  %230 = fadd double %228, %229
  store double %230, double* %56, align 1, !tbaa !2452
  %231 = add i64 %193, -4
  %232 = add i64 %195, 28
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = sitofp i32 %234 to double
  store double %236, double* %53, align 1, !tbaa !2452
  %237 = fdiv double %230, %236
  store double %237, double* %56, align 1, !tbaa !2452
  %238 = add i64 %193, -24
  %239 = add i64 %195, 40
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RCX, align 8, !tbaa !2428
  %242 = add i64 %195, 44
  store i64 %242, i64* %PC, align 8
  %243 = load i32, i32* %197, align 4
  %244 = sext i32 %243 to i64
  %245 = shl nsw i64 %244, 13
  store i64 %245, i64* %RDX, align 8, !tbaa !2428
  %246 = lshr i64 %244, 50
  %247 = and i64 %246, 1
  %248 = add i64 %245, %241
  store i64 %248, i64* %RCX, align 8, !tbaa !2428
  %249 = icmp ult i64 %248, %241
  %250 = icmp ult i64 %248, %245
  %251 = or i1 %249, %250
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %43, align 1, !tbaa !2432
  %253 = trunc i64 %248 to i32
  %254 = and i32 %253, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254) #8
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %44, align 1, !tbaa !2446
  %259 = xor i64 %241, %248
  %260 = lshr i64 %259, 4
  %261 = trunc i64 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, i8* %45, align 1, !tbaa !2450
  %263 = icmp eq i64 %248, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %46, align 1, !tbaa !2447
  %265 = lshr i64 %248, 63
  %266 = trunc i64 %265 to i8
  store i8 %266, i8* %47, align 1, !tbaa !2448
  %267 = lshr i64 %241, 63
  %268 = xor i64 %265, %267
  %269 = xor i64 %265, %247
  %270 = add nuw nsw i64 %268, %269
  %271 = icmp eq i64 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %48, align 1, !tbaa !2449
  %273 = load i64, i64* %RBP, align 8
  %274 = add i64 %273, -40
  %275 = add i64 %195, 55
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %RDX, align 8, !tbaa !2428
  %279 = shl nsw i64 %278, 3
  %280 = add i64 %279, %248
  %281 = add i64 %195, 60
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to double*
  store double %237, double* %282, align 8
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -36
  %285 = load i64, i64* %PC, align 8
  %286 = add i64 %285, 3
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX, align 8, !tbaa !2428
  %290 = sitofp i32 %288 to double
  store double %290, double* %53, align 1, !tbaa !2452
  %291 = add i64 %283, -40
  %292 = add i64 %285, 10
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, 3
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RAX, align 8, !tbaa !2428
  %297 = icmp ugt i32 %294, -4
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %43, align 1, !tbaa !2432
  %299 = and i32 %295, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #8
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %44, align 1, !tbaa !2446
  %304 = xor i32 %294, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %45, align 1, !tbaa !2450
  %308 = icmp eq i32 %295, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %46, align 1, !tbaa !2447
  %310 = lshr i32 %295, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %47, align 1, !tbaa !2448
  %312 = lshr i32 %294, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %310
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %48, align 1, !tbaa !2449
  %317 = sitofp i32 %295 to double
  store double %317, double* %56, align 1, !tbaa !2452
  %318 = fmul double %290, %317
  %319 = load double, double* %62, align 1
  %320 = fadd double %318, %319
  store double %320, double* %53, align 1, !tbaa !2452
  %321 = add i64 %283, -4
  %322 = add i64 %285, 28
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = sitofp i32 %324 to double
  store double %326, double* %50, align 1, !tbaa !2452
  %327 = fdiv double %320, %326
  store double %327, double* %53, align 1, !tbaa !2452
  %328 = add i64 %283, -32
  %329 = add i64 %285, 40
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RCX, align 8, !tbaa !2428
  %332 = add i64 %285, 44
  store i64 %332, i64* %PC, align 8
  %333 = load i32, i32* %287, align 4
  %334 = sext i32 %333 to i64
  %335 = shl nsw i64 %334, 13
  store i64 %335, i64* %RDX, align 8, !tbaa !2428
  %336 = lshr i64 %334, 50
  %337 = and i64 %336, 1
  %338 = add i64 %335, %331
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = icmp ult i64 %338, %331
  %340 = icmp ult i64 %338, %335
  %341 = or i1 %339, %340
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %43, align 1, !tbaa !2432
  %343 = trunc i64 %338 to i32
  %344 = and i32 %343, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344) #8
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %44, align 1, !tbaa !2446
  %349 = xor i64 %331, %338
  %350 = lshr i64 %349, 4
  %351 = trunc i64 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %45, align 1, !tbaa !2450
  %353 = icmp eq i64 %338, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %46, align 1, !tbaa !2447
  %355 = lshr i64 %338, 63
  %356 = trunc i64 %355 to i8
  store i8 %356, i8* %47, align 1, !tbaa !2448
  %357 = lshr i64 %331, 63
  %358 = xor i64 %355, %357
  %359 = xor i64 %355, %337
  %360 = add nuw nsw i64 %358, %359
  %361 = icmp eq i64 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %48, align 1, !tbaa !2449
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -40
  %365 = add i64 %285, 55
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RDX, align 8, !tbaa !2428
  %369 = shl nsw i64 %368, 3
  %370 = add i64 %369, %338
  %371 = add i64 %285, 60
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to double*
  store double %327, double* %372, align 8
  %373 = load i64, i64* %RBP, align 8
  %374 = add i64 %373, -40
  %375 = load i64, i64* %PC, align 8
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %374 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, 1
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RAX, align 8, !tbaa !2428
  %381 = icmp eq i32 %378, -1
  %382 = icmp eq i32 %379, 0
  %383 = or i1 %381, %382
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %43, align 1, !tbaa !2432
  %385 = and i32 %379, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #8
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %44, align 1, !tbaa !2446
  %390 = xor i32 %378, %379
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %45, align 1, !tbaa !2450
  %394 = icmp eq i32 %379, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %46, align 1, !tbaa !2447
  %396 = lshr i32 %379, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %47, align 1, !tbaa !2448
  %398 = lshr i32 %378, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %396
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %48, align 1, !tbaa !2449
  %403 = add i64 %375, 9
  store i64 %403, i64* %PC, align 8
  store i32 %379, i32* %377, align 4
  %404 = load i64, i64* %PC, align 8
  %405 = add i64 %404, -225
  store i64 %405, i64* %49, align 8, !tbaa !2428
  br label %block_400a8d

block_400a8d:                                     ; preds = %block_400a86, %block_400a99
  %406 = phi i64 [ %.pre1, %block_400a86 ], [ %405, %block_400a99 ]
  %407 = load i64, i64* %RBP, align 8
  %408 = add i64 %407, -40
  %409 = add i64 %406, 3
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RAX, align 8, !tbaa !2428
  %413 = add i64 %407, -4
  %414 = add i64 %406, 6
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sub i32 %411, %416
  %418 = icmp ult i32 %411, %416
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %43, align 1, !tbaa !2432
  %420 = and i32 %417, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #8
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %44, align 1, !tbaa !2446
  %425 = xor i32 %416, %411
  %426 = xor i32 %425, %417
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %45, align 1, !tbaa !2450
  %430 = icmp eq i32 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %46, align 1, !tbaa !2447
  %432 = lshr i32 %417, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %47, align 1, !tbaa !2448
  %434 = lshr i32 %411, 31
  %435 = lshr i32 %416, 31
  %436 = xor i32 %435, %434
  %437 = xor i32 %432, %434
  %438 = add nuw nsw i32 %437, %436
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %48, align 1, !tbaa !2449
  %441 = icmp ne i8 %433, 0
  %442 = xor i1 %441, %439
  %.v2 = select i1 %442, i64 12, i64 230
  %443 = add i64 %406, %.v2
  store i64 %443, i64* %49, align 8, !tbaa !2428
  br i1 %442, label %block_400a99, label %block_400b73

block_400a86:                                     ; preds = %block_400a7a
  %444 = add i64 %64, -40
  %445 = add i64 %100, 7
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 0, i32* %446, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400a8d

block_400b86:                                     ; preds = %block_400a7a
  %447 = add i64 %100, 1
  store i64 %447, i64* %PC, align 8
  %448 = load i64, i64* %11, align 8, !tbaa !2428
  %449 = add i64 %448, 8
  %450 = inttoptr i64 %448 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RBP, align 8, !tbaa !2428
  store i64 %449, i64* %11, align 8, !tbaa !2428
  %452 = add i64 %100, 2
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %449 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %49, align 8, !tbaa !2428
  %455 = add i64 %448, 16
  store i64 %455, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400b73:                                     ; preds = %block_400a8d
  %456 = add i64 %407, -36
  %457 = add i64 %443, 8
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, 1
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX, align 8, !tbaa !2428
  %462 = icmp eq i32 %459, -1
  %463 = icmp eq i32 %460, 0
  %464 = or i1 %462, %463
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %43, align 1, !tbaa !2432
  %466 = and i32 %460, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466) #8
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %44, align 1, !tbaa !2446
  %471 = xor i32 %459, %460
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %45, align 1, !tbaa !2450
  %475 = icmp eq i32 %460, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %46, align 1, !tbaa !2447
  %477 = lshr i32 %460, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %47, align 1, !tbaa !2448
  %479 = lshr i32 %459, 31
  %480 = xor i32 %477, %479
  %481 = add nuw nsw i32 %480, %477
  %482 = icmp eq i32 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %48, align 1, !tbaa !2449
  %484 = add i64 %443, 14
  store i64 %484, i64* %PC, align 8
  store i32 %460, i32* %458, align 4
  %485 = load i64, i64* %PC, align 8
  %486 = add i64 %485, -263
  store i64 %486, i64* %49, align 8, !tbaa !2428
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
  %43 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 32) to i64*), align 16
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
  br label %block_401167

block_40117a:                                     ; preds = %block_40122f, %block_401173
  %89 = phi i64 [ %.pre6, %block_401173 ], [ %221, %block_40122f ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_401173 ], [ %387, %block_40122f ]
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -32
  %92 = add i64 %89, 3
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = add i64 %90, -8
  %97 = add i64 %89, 6
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  %101 = icmp ult i32 %94, %99
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %17, align 1, !tbaa !2432
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #8
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %24, align 1, !tbaa !2446
  %108 = xor i32 %99, %94
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %30, align 1, !tbaa !2450
  %113 = icmp eq i32 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %33, align 1, !tbaa !2447
  %115 = lshr i32 %100, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %36, align 1, !tbaa !2448
  %117 = lshr i32 %94, 31
  %118 = lshr i32 %99, 31
  %119 = xor i32 %118, %117
  %120 = xor i32 %115, %117
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %42, align 1, !tbaa !2449
  %124 = icmp ne i8 %116, 0
  %125 = xor i1 %124, %122
  %.v9 = select i1 %125, i64 12, i64 200
  %126 = add i64 %89, %.v9
  store i64 %126, i64* %77, align 8, !tbaa !2428
  br i1 %125, label %block_401186, label %block_401242

block_401255:                                     ; preds = %block_401167
  %127 = add i64 %464, -4
  %128 = add i64 %500, 7
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 1, i32* %129, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40125c

block_401173:                                     ; preds = %block_401167
  %130 = add i64 %464, -32
  %131 = add i64 %500, 7
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i32*
  store i32 0, i32* %132, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40117a

block_4011ea:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 122), i64* %RSI, align 8, !tbaa !2428
  %133 = load i64, i64* @stderr, align 128
  store i64 %133, i64* %RDI, align 8, !tbaa !2428
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -28
  %136 = add i64 %392, 21
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDX, align 8, !tbaa !2428
  %140 = add i64 %134, -32
  %141 = add i64 %392, 24
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RCX, align 8, !tbaa !2428
  %145 = add i64 %134, -48
  %146 = add i64 %392, 29
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %148, i64* %149, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %151 = add i64 %392, 33
  store i64 %151, i64* %PC, align 8
  %152 = load i32, i32* %137, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %150, align 8, !tbaa !2428
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %155 = add i64 %392, 37
  store i64 %155, i64* %PC, align 8
  %156 = load i32, i32* %142, align 4
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %154, align 8, !tbaa !2428
  %158 = add i64 %134, -56
  %159 = add i64 %392, 42
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %161, i64* %162, align 1, !tbaa !2452
  %163 = bitcast i64* %80 to double*
  store double 0.000000e+00, double* %163, align 1, !tbaa !2452
  %164 = add i64 %134, -40
  %165 = add i64 %392, 47
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %167, i64* %168, align 1, !tbaa !2452
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %170 = bitcast i64* %169 to double*
  store double 0.000000e+00, double* %170, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %171 = add i64 %392, -3050
  %172 = add i64 %392, 54
  %173 = load i64, i64* %9, align 8, !tbaa !2428
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %9, align 8, !tbaa !2428
  store i64 %171, i64* %77, align 8, !tbaa !2428
  %176 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %387)
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -4
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181, align 4
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -68
  %184 = load i32, i32* %EAX, align 4
  %185 = load i64, i64* %PC, align 8
  %186 = add i64 %185, 3
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %183 to i32*
  store i32 %184, i32* %187, align 4
  %188 = load i64, i64* %PC, align 8
  %189 = add i64 %188, 50
  store i64 %189, i64* %77, align 8, !tbaa !2428
  br label %block_40125c

block_40122f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %190 = load i64, i64* %RBP, align 8
  %191 = add i64 %190, -32
  %192 = add i64 %392, 8
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = add i32 %194, 1
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = icmp eq i32 %194, -1
  %198 = icmp eq i32 %195, 0
  %199 = or i1 %197, %198
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %17, align 1, !tbaa !2432
  %201 = and i32 %195, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #8
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %24, align 1, !tbaa !2446
  %206 = xor i32 %194, %195
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %30, align 1, !tbaa !2450
  %210 = icmp eq i32 %195, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %33, align 1, !tbaa !2447
  %212 = lshr i32 %195, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %36, align 1, !tbaa !2448
  %214 = lshr i32 %194, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %212
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %42, align 1, !tbaa !2449
  %219 = add i64 %392, 14
  store i64 %219, i64* %PC, align 8
  store i32 %195, i32* %193, align 4
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, -195
  store i64 %221, i64* %77, align 8, !tbaa !2428
  br label %block_40117a

block_401186:                                     ; preds = %block_40117a
  %222 = add i64 %90, -16
  %223 = add i64 %126, 4
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = add i64 %90, -28
  %227 = add i64 %126, 8
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 13
  store i64 %231, i64* %RCX, align 8, !tbaa !2428
  %232 = lshr i64 %230, 50
  %233 = and i64 %232, 1
  %234 = add i64 %231, %225
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = icmp ult i64 %234, %225
  %236 = icmp ult i64 %234, %231
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %17, align 1, !tbaa !2432
  %239 = trunc i64 %234 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #8
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %24, align 1, !tbaa !2446
  %245 = xor i64 %225, %234
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %30, align 1, !tbaa !2450
  %249 = icmp eq i64 %234, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %33, align 1, !tbaa !2447
  %251 = lshr i64 %234, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %36, align 1, !tbaa !2448
  %253 = lshr i64 %225, 63
  %254 = xor i64 %251, %253
  %255 = xor i64 %251, %233
  %256 = add nuw nsw i64 %254, %255
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %42, align 1, !tbaa !2449
  %259 = add i64 %126, 19
  store i64 %259, i64* %PC, align 8
  %260 = load i32, i32* %93, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  %262 = shl nsw i64 %261, 3
  %263 = add i64 %262, %234
  %264 = add i64 %126, 24
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %266, i64* %267, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %268 = add i64 %90, -48
  %269 = add i64 %126, 29
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %270, align 8
  %271 = load i64, i64* %RBP, align 8
  %272 = add i64 %271, -24
  %273 = load i64, i64* %PC, align 8
  %274 = add i64 %273, 4
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %272 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %277 = add i64 %271, -28
  %278 = add i64 %273, 8
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = shl nsw i64 %281, 13
  store i64 %282, i64* %RCX, align 8, !tbaa !2428
  %283 = lshr i64 %281, 50
  %284 = and i64 %283, 1
  %285 = add i64 %282, %276
  store i64 %285, i64* %RAX, align 8, !tbaa !2428
  %286 = icmp ult i64 %285, %276
  %287 = icmp ult i64 %285, %282
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %17, align 1, !tbaa !2432
  %290 = trunc i64 %285 to i32
  %291 = and i32 %290, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #8
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %24, align 1, !tbaa !2446
  %296 = xor i64 %276, %285
  %297 = lshr i64 %296, 4
  %298 = trunc i64 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %30, align 1, !tbaa !2450
  %300 = icmp eq i64 %285, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %33, align 1, !tbaa !2447
  %302 = lshr i64 %285, 63
  %303 = trunc i64 %302 to i8
  store i8 %303, i8* %36, align 1, !tbaa !2448
  %304 = lshr i64 %276, 63
  %305 = xor i64 %302, %304
  %306 = xor i64 %302, %284
  %307 = add nuw nsw i64 %305, %306
  %308 = icmp eq i64 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %42, align 1, !tbaa !2449
  %310 = add i64 %271, -32
  %311 = add i64 %273, 19
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %RCX, align 8, !tbaa !2428
  %315 = shl nsw i64 %314, 3
  %316 = add i64 %315, %285
  %317 = add i64 %273, 24
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %319, i64* %320, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %321 = add i64 %271, -56
  %322 = add i64 %273, 29
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %323, align 8
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -48
  %326 = load i64, i64* %PC, align 8
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %325 to double*
  %329 = load double, double* %328, align 8
  store double %329, double* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %330 = add i64 %324, -56
  %331 = add i64 %326, 10
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to double*
  %333 = load double, double* %332, align 8
  %334 = fsub double %329, %333
  %335 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 48) to i32*), align 16
  %336 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 52) to i32*), align 4
  %337 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 56) to i32*), align 8
  %338 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 60) to i32*), align 4
  %339 = bitcast %union.VectorReg* %6 to i32*
  store i32 %335, i32* %339, align 1, !tbaa !2455
  %340 = bitcast i8* %79 to i32*
  store i32 %336, i32* %340, align 1, !tbaa !2455
  %341 = bitcast i64* %80 to i32*
  store i32 %337, i32* %341, align 1, !tbaa !2455
  %342 = bitcast i8* %81 to i32*
  store i32 %338, i32* %342, align 1, !tbaa !2455
  %343 = bitcast double %334 to i64
  %344 = load i64, i64* %82, align 1
  %345 = and i64 %344, %343
  %346 = trunc i64 %345 to i32
  %347 = lshr i64 %345, 32
  %348 = trunc i64 %347 to i32
  store i32 %346, i32* %83, align 1, !tbaa !2451
  store i32 %348, i32* %85, align 1, !tbaa !2451
  store i32 0, i32* %86, align 1, !tbaa !2451
  store i32 0, i32* %88, align 1, !tbaa !2451
  %349 = add i64 %324, -64
  %350 = add i64 %326, 26
  store i64 %350, i64* %PC, align 8
  %351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %352 = load i64, i64* %351, align 1
  %353 = inttoptr i64 %349 to i64*
  store i64 %352, i64* %353, align 8
  %354 = load i64, i64* %RBP, align 8
  %355 = add i64 %354, -64
  %356 = load i64, i64* %PC, align 8
  %357 = add i64 %356, 5
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %355 to double*
  %359 = load double, double* %358, align 8
  store double %359, double* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %360 = add i64 %354, -40
  %361 = add i64 %356, 10
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to double*
  %363 = load double, double* %362, align 8
  %364 = fcmp uno double %359, %363
  br i1 %364, label %365, label %375

; <label>:365:                                    ; preds = %block_401186
  %366 = fadd double %359, %363
  %367 = bitcast double %366 to i64
  %368 = and i64 %367, 9221120237041090560
  %369 = icmp eq i64 %368, 9218868437227405312
  %370 = and i64 %367, 2251799813685247
  %371 = icmp ne i64 %370, 0
  %372 = and i1 %369, %371
  br i1 %372, label %373, label %381

; <label>:373:                                    ; preds = %365
  %374 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %361, %struct.Memory* %MEMORY.0) #9
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:375:                                    ; preds = %block_401186
  %376 = fcmp ogt double %359, %363
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %375
  %378 = fcmp olt double %359, %363
  br i1 %378, label %381, label %379

; <label>:379:                                    ; preds = %377
  %380 = fcmp oeq double %359, %363
  br i1 %380, label %381, label %385

; <label>:381:                                    ; preds = %379, %377, %375, %365
  %382 = phi i8 [ 0, %375 ], [ 0, %377 ], [ 1, %379 ], [ 1, %365 ]
  %383 = phi i8 [ 0, %375 ], [ 0, %377 ], [ 0, %379 ], [ 1, %365 ]
  %384 = phi i8 [ 0, %375 ], [ 1, %377 ], [ 0, %379 ], [ 1, %365 ]
  store i8 %382, i8* %33, align 1, !tbaa !2454
  store i8 %383, i8* %24, align 1, !tbaa !2454
  store i8 %384, i8* %17, align 1, !tbaa !2454
  br label %385

; <label>:385:                                    ; preds = %381, %379
  store i8 0, i8* %42, align 1, !tbaa !2454
  store i8 0, i8* %36, align 1, !tbaa !2454
  store i8 0, i8* %30, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %385, %373
  %386 = phi i64 [ %.pre7, %373 ], [ %361, %385 ]
  %387 = phi %struct.Memory* [ %374, %373 ], [ %MEMORY.0, %385 ]
  %388 = load i8, i8* %17, align 1, !tbaa !2432
  %389 = load i8, i8* %33, align 1, !tbaa !2447
  %390 = or i8 %389, %388
  %391 = icmp ne i8 %390, 0
  %.v10 = select i1 %391, i64 75, i64 6
  %392 = add i64 %386, %.v10
  store i64 %392, i64* %77, align 8, !tbaa !2428
  br i1 %391, label %block_40122f, label %block_4011ea

block_40125c:                                     ; preds = %block_4011ea, %block_401255
  %393 = phi i64 [ %.pre8, %block_401255 ], [ %189, %block_4011ea ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_401255 ], [ %176, %block_4011ea ]
  %394 = load i64, i64* %RBP, align 8
  %395 = add i64 %394, -4
  %396 = add i64 %393, 3
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = load i64, i64* %RSP, align 8
  %401 = add i64 %400, 80
  store i64 %401, i64* %RSP, align 8, !tbaa !2428
  %402 = icmp ugt i64 %400, -81
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %17, align 1, !tbaa !2432
  %404 = trunc i64 %401 to i32
  %405 = and i32 %404, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405) #8
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %24, align 1, !tbaa !2446
  %410 = xor i64 %400, 16
  %411 = xor i64 %410, %401
  %412 = lshr i64 %411, 4
  %413 = trunc i64 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %30, align 1, !tbaa !2450
  %415 = icmp eq i64 %401, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %33, align 1, !tbaa !2447
  %417 = lshr i64 %401, 63
  %418 = trunc i64 %417 to i8
  store i8 %418, i8* %36, align 1, !tbaa !2448
  %419 = lshr i64 %400, 63
  %420 = xor i64 %417, %419
  %421 = add nuw nsw i64 %420, %417
  %422 = icmp eq i64 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %42, align 1, !tbaa !2449
  %424 = add i64 %393, 8
  store i64 %424, i64* %PC, align 8
  %425 = add i64 %400, 88
  %426 = inttoptr i64 %401 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RBP, align 8, !tbaa !2428
  store i64 %425, i64* %9, align 8, !tbaa !2428
  %428 = add i64 %393, 9
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %425 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %77, align 8, !tbaa !2428
  %431 = add i64 %400, 96
  store i64 %431, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_401242:                                     ; preds = %block_40117a
  %432 = add i64 %90, -28
  %433 = add i64 %126, 8
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = add i32 %435, 1
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX, align 8, !tbaa !2428
  %438 = icmp eq i32 %435, -1
  %439 = icmp eq i32 %436, 0
  %440 = or i1 %438, %439
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %17, align 1, !tbaa !2432
  %442 = and i32 %436, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442) #8
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %24, align 1, !tbaa !2446
  %447 = xor i32 %435, %436
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %30, align 1, !tbaa !2450
  %451 = icmp eq i32 %436, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %33, align 1, !tbaa !2447
  %453 = lshr i32 %436, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %36, align 1, !tbaa !2448
  %455 = lshr i32 %435, 31
  %456 = xor i32 %453, %455
  %457 = add nuw nsw i32 %456, %453
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %42, align 1, !tbaa !2449
  %460 = add i64 %126, 14
  store i64 %460, i64* %PC, align 8
  store i32 %436, i32* %434, align 4
  %461 = load i64, i64* %PC, align 8
  %462 = add i64 %461, -233
  store i64 %462, i64* %77, align 8, !tbaa !2428
  br label %block_401167

block_401167:                                     ; preds = %block_401242, %block_401140
  %463 = phi i64 [ %.pre, %block_401140 ], [ %462, %block_401242 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_401140 ], [ %MEMORY.0, %block_401242 ]
  %464 = load i64, i64* %RBP, align 8
  %465 = add i64 %464, -28
  %466 = add i64 %463, 3
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX, align 8, !tbaa !2428
  %470 = add i64 %464, -8
  %471 = add i64 %463, 6
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sub i32 %468, %473
  %475 = icmp ult i32 %468, %473
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %17, align 1, !tbaa !2432
  %477 = and i32 %474, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477) #8
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %24, align 1, !tbaa !2446
  %482 = xor i32 %473, %468
  %483 = xor i32 %482, %474
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %30, align 1, !tbaa !2450
  %487 = icmp eq i32 %474, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %33, align 1, !tbaa !2447
  %489 = lshr i32 %474, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %36, align 1, !tbaa !2448
  %491 = lshr i32 %468, 31
  %492 = lshr i32 %473, 31
  %493 = xor i32 %492, %491
  %494 = xor i32 %489, %491
  %495 = add nuw nsw i32 %494, %493
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %42, align 1, !tbaa !2449
  %498 = icmp ne i8 %490, 0
  %499 = xor i1 %498, %496
  %.v = select i1 %499, i64 12, i64 238
  %500 = add i64 %463, %.v
  store i64 %500, i64* %77, align 8, !tbaa !2428
  br i1 %499, label %block_401173, label %block_401255
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -56
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 48
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
  %41 = add i64 %8, -12
  %42 = load i32, i32* %EDI, align 4
  %43 = add i64 %11, 10
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI, align 8
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 4
  %58 = lshr i32 %56, 27
  %59 = and i32 %58, 1
  %60 = or i32 %57, 1
  store i8 0, i8* %15, align 1, !tbaa !2432
  %61 = and i32 %60, 241
  %62 = tail call i32 @llvm.ctpop.i32(i32 %61) #8
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %66 = lshr i32 %56, 27
  %67 = and i32 %66, 1
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %34, align 1, !tbaa !2448
  %69 = xor i32 %67, %59
  %70 = add nuw nsw i32 %69, %67
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %40, align 1, !tbaa !2449
  %73 = sext i32 %60 to i64
  store i64 %73, i64* %RDI, align 8, !tbaa !2428
  %74 = add i64 %53, -3183
  %75 = add i64 %53, 17
  %76 = load i64, i64* %7, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %7, align 8, !tbaa !2428
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %74, i64* %79, align 8, !tbaa !2428
  %80 = tail call fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -32
  %83 = load i64, i64* %RAX, align 8
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -32
  %89 = load i64, i64* %PC, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RAX, align 8, !tbaa !2428
  %93 = add i64 %87, -4
  %94 = add i64 %89, 7
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RCX, align 8, !tbaa !2428
  %99 = lshr i32 %96, 28
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %15, align 1, !tbaa !2454
  %102 = and i32 %97, 240
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #8
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %28, align 1, !tbaa !2454
  %107 = icmp eq i32 %97, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %31, align 1, !tbaa !2454
  %109 = lshr i32 %96, 27
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %34, align 1, !tbaa !2454
  store i8 0, i8* %40, align 1, !tbaa !2454
  %112 = sext i32 %97 to i64
  store i64 %112, i64* %RSI, align 8, !tbaa !2428
  %113 = add i64 %112, %92
  %114 = add i64 %89, 17
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i8*
  store i8 0, i8* %115, align 1
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -20
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 7
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %122 = bitcast i64* %121 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012ac

block_4012bf:                                     ; preds = %block_4012cb, %block_4012b8
  %123 = phi i64 [ %.pre2, %block_4012b8 ], [ %351, %block_4012cb ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4012b8 ], [ %318, %block_4012cb ]
  %124 = load i64, i64* %RBP, align 8
  %125 = add i64 %124, -24
  %126 = add i64 %123, 3
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  %130 = add i64 %124, -4
  %131 = add i64 %123, 6
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = sub i32 %128, %133
  %135 = icmp ult i32 %128, %133
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %15, align 1, !tbaa !2432
  %137 = and i32 %134, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #8
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %22, align 1, !tbaa !2446
  %142 = xor i32 %133, %128
  %143 = xor i32 %142, %134
  %144 = lshr i32 %143, 4
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %28, align 1, !tbaa !2450
  %147 = icmp eq i32 %134, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %31, align 1, !tbaa !2447
  %149 = lshr i32 %134, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %34, align 1, !tbaa !2448
  %151 = lshr i32 %128, 31
  %152 = lshr i32 %133, 31
  %153 = xor i32 %152, %151
  %154 = xor i32 %149, %151
  %155 = add nuw nsw i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %40, align 1, !tbaa !2449
  %158 = icmp ne i8 %150, 0
  %159 = xor i1 %158, %156
  %.v3 = select i1 %159, i64 12, i64 67
  %160 = add i64 %123, %.v3
  store i64 %160, i64* %79, align 8, !tbaa !2428
  br i1 %159, label %block_4012cb, label %block_401302

block_4012b8:                                     ; preds = %block_4012ac
  %161 = add i64 %165, -24
  %162 = add i64 %201, 7
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 0, i32* %163, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4012bf

block_4012ac:                                     ; preds = %block_401302, %block_401270
  %164 = phi i64 [ %.pre, %block_401270 ], [ %401, %block_401302 ]
  %MEMORY.1 = phi %struct.Memory* [ %80, %block_401270 ], [ %362, %block_401302 ]
  %165 = load i64, i64* %RBP, align 8
  %166 = add i64 %165, -20
  %167 = add i64 %164, 3
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = add i64 %165, -4
  %172 = add i64 %164, 6
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = sub i32 %169, %174
  %176 = icmp ult i32 %169, %174
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %15, align 1, !tbaa !2432
  %178 = and i32 %175, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178) #8
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %22, align 1, !tbaa !2446
  %183 = xor i32 %174, %169
  %184 = xor i32 %183, %175
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %28, align 1, !tbaa !2450
  %188 = icmp eq i32 %175, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %31, align 1, !tbaa !2447
  %190 = lshr i32 %175, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %34, align 1, !tbaa !2448
  %192 = lshr i32 %169, 31
  %193 = lshr i32 %174, 31
  %194 = xor i32 %193, %192
  %195 = xor i32 %190, %192
  %196 = add nuw nsw i32 %195, %194
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %40, align 1, !tbaa !2449
  %199 = icmp ne i8 %191, 0
  %200 = xor i1 %199, %197
  %.v = select i1 %200, i64 12, i64 120
  %201 = add i64 %164, %.v
  store i64 %201, i64* %79, align 8, !tbaa !2428
  br i1 %200, label %block_4012b8, label %block_401324

block_401324:                                     ; preds = %block_4012ac
  %202 = add i64 %165, -32
  %203 = add i64 %201, 4
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RDI, align 8, !tbaa !2428
  %206 = add i64 %201, -3428
  %207 = add i64 %201, 9
  %208 = load i64, i64* %7, align 8, !tbaa !2428
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %207, i64* %210, align 8
  store i64 %209, i64* %7, align 8, !tbaa !2428
  store i64 %206, i64* %79, align 8, !tbaa !2428
  %211 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %212 = load i64, i64* %RSP, align 8
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %212, 48
  store i64 %214, i64* %RSP, align 8, !tbaa !2428
  %215 = icmp ugt i64 %212, -49
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %15, align 1, !tbaa !2432
  %217 = trunc i64 %214 to i32
  %218 = and i32 %217, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #8
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %22, align 1, !tbaa !2446
  %223 = xor i64 %212, 16
  %224 = xor i64 %223, %214
  %225 = lshr i64 %224, 4
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %28, align 1, !tbaa !2450
  %228 = icmp eq i64 %214, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %31, align 1, !tbaa !2447
  %230 = lshr i64 %214, 63
  %231 = trunc i64 %230 to i8
  store i8 %231, i8* %34, align 1, !tbaa !2448
  %232 = lshr i64 %212, 63
  %233 = xor i64 %230, %232
  %234 = add nuw nsw i64 %233, %230
  %235 = icmp eq i64 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %40, align 1, !tbaa !2449
  %237 = add i64 %213, 5
  store i64 %237, i64* %PC, align 8
  %238 = add i64 %212, 56
  %239 = inttoptr i64 %214 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RBP, align 8, !tbaa !2428
  store i64 %238, i64* %7, align 8, !tbaa !2428
  %241 = add i64 %213, 6
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %238 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %79, align 8, !tbaa !2428
  %244 = add i64 %212, 64
  store i64 %244, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %211

block_4012cb:                                     ; preds = %block_4012bf
  %245 = add i64 %124, -16
  %246 = add i64 %160, 4
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RAX, align 8, !tbaa !2428
  %249 = add i64 %124, -20
  %250 = add i64 %160, 8
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = shl nsw i64 %253, 13
  store i64 %254, i64* %RCX, align 8, !tbaa !2428
  %255 = lshr i64 %253, 50
  %256 = and i64 %255, 1
  %257 = add i64 %254, %248
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = icmp ult i64 %257, %248
  %259 = icmp ult i64 %257, %254
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %15, align 1, !tbaa !2432
  %262 = trunc i64 %257 to i32
  %263 = and i32 %262, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263) #8
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %22, align 1, !tbaa !2446
  %268 = xor i64 %248, %257
  %269 = lshr i64 %268, 4
  %270 = trunc i64 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %28, align 1, !tbaa !2450
  %272 = icmp eq i64 %257, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %31, align 1, !tbaa !2447
  %274 = lshr i64 %257, 63
  %275 = trunc i64 %274 to i8
  store i8 %275, i8* %34, align 1, !tbaa !2448
  %276 = lshr i64 %248, 63
  %277 = xor i64 %274, %276
  %278 = xor i64 %274, %256
  %279 = add nuw nsw i64 %277, %278
  %280 = icmp eq i64 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %40, align 1, !tbaa !2449
  %282 = add i64 %160, 19
  store i64 %282, i64* %PC, align 8
  %283 = load i32, i32* %127, align 4
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %RCX, align 8, !tbaa !2428
  %285 = shl nsw i64 %284, 3
  %286 = add i64 %285, %257
  %287 = add i64 %160, 24
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %289, i64* %290, align 1, !tbaa !2452
  store double 0.000000e+00, double* %122, align 1, !tbaa !2452
  %291 = add i64 %160, 27
  store i64 %291, i64* %PC, align 8
  %292 = load i32, i32* %127, align 4
  %293 = shl i32 %292, 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RDX, align 8, !tbaa !2428
  %295 = lshr i32 %292, 28
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %15, align 1, !tbaa !2454
  %298 = and i32 %293, 240
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298) #8
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %28, align 1, !tbaa !2454
  %303 = icmp eq i32 %293, 0
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %31, align 1, !tbaa !2454
  %305 = lshr i32 %292, 27
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %34, align 1, !tbaa !2454
  store i8 0, i8* %40, align 1, !tbaa !2454
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -32
  %310 = add i64 %160, 34
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RSI, align 8, !tbaa !2428
  store i64 %294, i64* %RDI, align 8, !tbaa !2428
  %313 = add i64 %160, 117
  %314 = add i64 %160, 41
  %315 = load i64, i64* %7, align 8, !tbaa !2428
  %316 = add i64 %315, -8
  %317 = inttoptr i64 %316 to i64*
  store i64 %314, i64* %317, align 8
  store i64 %316, i64* %7, align 8, !tbaa !2428
  store i64 %313, i64* %79, align 8, !tbaa !2428
  %318 = tail call %struct.Memory* @sub_401340_print_element_renamed_(%struct.State* nonnull %0, i64 %313, %struct.Memory* %MEMORY.0)
  %319 = load i64, i64* %RBP, align 8
  %320 = add i64 %319, -24
  %321 = load i64, i64* %PC, align 8
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %324, 1
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = icmp eq i32 %324, -1
  %328 = icmp eq i32 %325, 0
  %329 = or i1 %327, %328
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %15, align 1, !tbaa !2432
  %331 = and i32 %325, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #8
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %22, align 1, !tbaa !2446
  %336 = xor i32 %324, %325
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %28, align 1, !tbaa !2450
  %340 = icmp eq i32 %325, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %31, align 1, !tbaa !2447
  %342 = lshr i32 %325, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %34, align 1, !tbaa !2448
  %344 = lshr i32 %324, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %342
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %40, align 1, !tbaa !2449
  %349 = add i64 %321, 9
  store i64 %349, i64* %PC, align 8
  store i32 %325, i32* %323, align 4
  %350 = load i64, i64* %PC, align 8
  %351 = add i64 %350, -62
  store i64 %351, i64* %79, align 8, !tbaa !2428
  br label %block_4012bf

block_401302:                                     ; preds = %block_4012bf
  %352 = add i64 %124, -32
  %353 = add i64 %160, 4
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %RDI, align 8, !tbaa !2428
  %356 = load i64, i64* @stderr, align 128
  store i64 %356, i64* %RSI, align 8, !tbaa !2428
  %357 = add i64 %160, -3362
  %358 = add i64 %160, 17
  %359 = load i64, i64* %7, align 8, !tbaa !2428
  %360 = add i64 %359, -8
  %361 = inttoptr i64 %360 to i64*
  store i64 %358, i64* %361, align 8
  store i64 %360, i64* %7, align 8, !tbaa !2428
  store i64 %357, i64* %79, align 8, !tbaa !2428
  %362 = tail call fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -36
  %365 = load i32, i32* %EAX, align 4
  %366 = load i64, i64* %PC, align 8
  %367 = add i64 %366, 3
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %364 to i32*
  store i32 %365, i32* %368, align 4
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -20
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
  store i8 %380, i8* %15, align 1, !tbaa !2432
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #8
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %22, align 1, !tbaa !2446
  %386 = xor i32 %374, %375
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %28, align 1, !tbaa !2450
  %390 = icmp eq i32 %375, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %31, align 1, !tbaa !2447
  %392 = lshr i32 %375, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %34, align 1, !tbaa !2448
  %394 = lshr i32 %374, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %392
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %40, align 1, !tbaa !2449
  %399 = add i64 %371, 9
  store i64 %399, i64* %PC, align 8
  store i32 %375, i32* %373, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, -115
  store i64 %401, i64* %79, align 8, !tbaa !2428
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
  %65 = add i64 %40, -3963
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
  br i1 %79, label %block_401546, label %block_401526

block_401546:                                     ; preds = %block_401530, %block_4014f0
  %84 = phi i64 [ %83, %block_4014f0 ], [ %182, %block_401530 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_4014f0 ], [ %152, %block_401530 ]
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

block_401526:                                     ; preds = %block_4014f0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401530

block_401530:                                     ; preds = %block_401530, %block_401526
  %137 = phi i64 [ 0, %block_401526 ], [ %155, %block_401530 ]
  %138 = phi i64 [ %136, %block_401526 ], [ %182, %block_401530 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401526 ], [ %152, %block_401530 ]
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
  br i1 %172, label %block_401546, label %block_401530
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
  store i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 64), i64* %RDI, align 8, !tbaa !2428
  %41 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %42 = bitcast %union.VectorReg* %4 to double*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %45 = fsub double %41, %44
  store double %45, double* %42, align 1, !tbaa !2452
  store i64 0, i64* %43, align 1, !tbaa !2452
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
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
  store i8 %26, i8* %27, align 1, !tbaa !2450
  %28 = icmp eq i64 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = lshr i64 %12, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %9, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2449
  store i64 1048576, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
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
  store i32 1024, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 50, i32* %64, align 4
  %65 = load i64, i64* %RCX, align 8
  %66 = load i64, i64* %PC, align 8
  store i64 %65, i64* %RDI, align 8, !tbaa !2428
  %67 = load i32, i32* %EAX, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  %69 = add i64 %66, -240
  %70 = add i64 %66, 10
  %71 = load i64, i64* %7, align 8, !tbaa !2428
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %7, align 8, !tbaa !2428
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %69, i64* %74, align 8, !tbaa !2428
  %75 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %69, %struct.Memory* %2)
  %76 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -32
  %79 = load i64, i64* %RAX, align 8
  %80 = add i64 %76, 16
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i64*
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, -266
  %84 = add i64 %82, 5
  %85 = load i64, i64* %7, align 8, !tbaa !2428
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %84, i64* %87, align 8
  store i64 %86, i64* %7, align 8, !tbaa !2428
  store i64 %83, i64* %74, align 8, !tbaa !2428
  %88 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %83, %struct.Memory* %75)
  %89 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -40
  %92 = load i64, i64* %RAX, align 8
  %93 = add i64 %89, 16
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, -287
  %97 = add i64 %95, 5
  %98 = load i64, i64* %7, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %7, align 8, !tbaa !2428
  store i64 %96, i64* %74, align 8, !tbaa !2428
  %101 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %88)
  %102 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -48
  %105 = load i64, i64* %RAX, align 8
  %106 = add i64 %102, 16
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, -308
  %110 = add i64 %108, 5
  %111 = load i64, i64* %7, align 8, !tbaa !2428
  %112 = add i64 %111, -8
  %113 = inttoptr i64 %112 to i64*
  store i64 %110, i64* %113, align 8
  store i64 %112, i64* %7, align 8, !tbaa !2428
  store i64 %109, i64* %74, align 8, !tbaa !2428
  %114 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %109, %struct.Memory* %101)
  %115 = load i64, i64* %RBP, align 8
  %116 = add i64 %115, -56
  %117 = load i64, i64* %RAX, align 8
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120, align 8
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -20
  %123 = load i64, i64* %PC, align 8
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RDI, align 8, !tbaa !2428
  %128 = add i64 %121, -32
  %129 = add i64 %123, 7
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RSI, align 8, !tbaa !2428
  %132 = add i64 %121, -48
  %133 = add i64 %123, 11
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RDX, align 8, !tbaa !2428
  %136 = add i64 %121, -56
  %137 = add i64 %123, 15
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RCX, align 8, !tbaa !2428
  %140 = add i64 %123, 211
  %141 = add i64 %123, 20
  %142 = load i64, i64* %7, align 8, !tbaa !2428
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %141, i64* %144, align 8
  store i64 %143, i64* %7, align 8, !tbaa !2428
  store i64 %140, i64* %74, align 8, !tbaa !2428
  %145 = tail call %struct.Memory* @sub_400a60_init_array_renamed_(%struct.State* nonnull %0, i64 %140, %struct.Memory* %114)
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -24
  %148 = load i64, i64* %PC, align 8
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RDI, align 8, !tbaa !2428
  %153 = add i64 %146, -20
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
  %162 = add i64 %146, -48
  %163 = add i64 %148, 14
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = add i64 %146, -56
  %167 = add i64 %148, 18
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %R8, align 8, !tbaa !2428
  %170 = add i64 %148, 495
  %171 = add i64 %148, 23
  %172 = load i64, i64* %7, align 8, !tbaa !2428
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %7, align 8, !tbaa !2428
  store i64 %170, i64* %74, align 8, !tbaa !2428
  %175 = tail call %struct.Memory* @sub_400b90_kernel_adi_renamed_(%struct.State* nonnull %0, i64 %170, %struct.Memory* %145)
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -20
  %178 = load i64, i64* %PC, align 8
  %179 = add i64 %178, 3
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %177 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RDI, align 8, !tbaa !2428
  %183 = add i64 %176, -40
  %184 = add i64 %178, 7
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RSI, align 8, !tbaa !2428
  %187 = add i64 %176, -48
  %188 = add i64 %178, 11
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RDX, align 8, !tbaa !2428
  %191 = add i64 %176, -56
  %192 = add i64 %178, 15
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %RCX, align 8, !tbaa !2428
  %195 = add i64 %178, 168
  %196 = add i64 %178, 20
  %197 = load i64, i64* %7, align 8, !tbaa !2428
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %7, align 8, !tbaa !2428
  store i64 %195, i64* %74, align 8, !tbaa !2428
  %200 = tail call %struct.Memory* @sub_400a60_init_array_renamed_(%struct.State* nonnull %0, i64 %195, %struct.Memory* %175)
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -24
  %203 = load i64, i64* %PC, align 8
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %202 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RDI, align 8, !tbaa !2428
  %208 = add i64 %201, -20
  %209 = add i64 %203, 6
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RSI, align 8, !tbaa !2428
  %213 = add i64 %201, -40
  %214 = add i64 %203, 10
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RDX, align 8, !tbaa !2428
  %217 = add i64 %201, -48
  %218 = add i64 %203, 14
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RCX, align 8, !tbaa !2428
  %221 = add i64 %201, -56
  %222 = add i64 %203, 18
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %R8, align 8, !tbaa !2428
  %225 = add i64 %203, 452
  %226 = add i64 %203, 23
  %227 = load i64, i64* %7, align 8, !tbaa !2428
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %226, i64* %229, align 8
  store i64 %228, i64* %7, align 8, !tbaa !2428
  store i64 %225, i64* %74, align 8, !tbaa !2428
  %230 = tail call %struct.Memory* @sub_400b90_kernel_adi_renamed_(%struct.State* nonnull %0, i64 %225, %struct.Memory* %200)
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -20
  %233 = load i64, i64* %PC, align 8
  %234 = add i64 %233, 3
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RDI, align 8, !tbaa !2428
  %238 = add i64 %231, -32
  %239 = add i64 %233, 7
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RSI, align 8, !tbaa !2428
  %242 = add i64 %231, -40
  %243 = add i64 %233, 11
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RDX, align 8, !tbaa !2428
  %246 = add i64 %233, 1885
  %247 = add i64 %233, 16
  %248 = load i64, i64* %7, align 8, !tbaa !2428
  %249 = add i64 %248, -8
  %250 = inttoptr i64 %249 to i64*
  store i64 %247, i64* %250, align 8
  store i64 %249, i64* %7, align 8, !tbaa !2428
  store i64 %246, i64* %74, align 8, !tbaa !2428
  %251 = tail call %struct.Memory* @sub_401140_check_FP_renamed_(%struct.State* nonnull %0, i64 %246, %struct.Memory* %230)
  %252 = load i32, i32* %EAX, align 4
  %253 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %254 = and i32 %252, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254) #8
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  %259 = icmp eq i32 %252, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %30, align 1, !tbaa !2447
  %261 = lshr i32 %252, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %39, align 1, !tbaa !2449
  %.v = select i1 %259, i64 9, i64 21
  %263 = add i64 %253, %.v
  store i64 %263, i64* %74, align 8, !tbaa !2428
  %264 = load i64, i64* %RBP, align 8
  br i1 %259, label %block_4009fc, label %block_400a08

block_4009fc:                                     ; preds = %block_400910
  %265 = add i64 %264, -4
  %266 = add i64 %263, 7
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  store i32 1, i32* %267, align 4
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 72
  store i64 %269, i64* %74, align 8, !tbaa !2428
  br label %block_400a4b

block_400a08:                                     ; preds = %block_400910
  %270 = add i64 %264, -20
  %271 = add i64 %263, 3
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RDI, align 8, !tbaa !2428
  %275 = add i64 %264, -40
  %276 = add i64 %263, 7
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RSI, align 8, !tbaa !2428
  %279 = add i64 %263, 2152
  %280 = add i64 %263, 12
  %281 = load i64, i64* %7, align 8, !tbaa !2428
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %280, i64* %283, align 8
  store i64 %282, i64* %7, align 8, !tbaa !2428
  store i64 %279, i64* %74, align 8, !tbaa !2428
  %284 = tail call %struct.Memory* @sub_401270_print_array_renamed_(%struct.State* nonnull %0, i64 %279, %struct.Memory* %251)
  %285 = load i64, i64* %RBP, align 8
  %286 = add i64 %285, -32
  %287 = load i64, i64* %PC, align 8
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %286 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %RSI, align 8, !tbaa !2428
  store i64 %290, i64* %RDI, align 8, !tbaa !2428
  %291 = add i64 %287, -1108
  %292 = add i64 %287, 12
  %293 = load i64, i64* %7, align 8, !tbaa !2428
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %292, i64* %295, align 8
  store i64 %294, i64* %7, align 8, !tbaa !2428
  store i64 %291, i64* %74, align 8, !tbaa !2428
  %296 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %284)
  %297 = load i64, i64* %RBP, align 8
  %298 = add i64 %297, -40
  %299 = load i64, i64* %PC, align 8
  %300 = add i64 %299, 4
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %298 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RSI, align 8, !tbaa !2428
  store i64 %302, i64* %RDI, align 8, !tbaa !2428
  %303 = add i64 %299, -1120
  %304 = add i64 %299, 12
  %305 = load i64, i64* %7, align 8, !tbaa !2428
  %306 = add i64 %305, -8
  %307 = inttoptr i64 %306 to i64*
  store i64 %304, i64* %307, align 8
  store i64 %306, i64* %7, align 8, !tbaa !2428
  store i64 %303, i64* %74, align 8, !tbaa !2428
  %308 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %296)
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -48
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %310 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RSI, align 8, !tbaa !2428
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %311, -1132
  %316 = add i64 %311, 12
  %317 = load i64, i64* %7, align 8, !tbaa !2428
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %316, i64* %319, align 8
  store i64 %318, i64* %7, align 8, !tbaa !2428
  store i64 %315, i64* %74, align 8, !tbaa !2428
  %320 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %308)
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -56
  %323 = load i64, i64* %PC, align 8
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %322 to i64*
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %RSI, align 8, !tbaa !2428
  store i64 %326, i64* %RDI, align 8, !tbaa !2428
  %327 = add i64 %323, -1144
  %328 = add i64 %323, 12
  %329 = load i64, i64* %7, align 8, !tbaa !2428
  %330 = add i64 %329, -8
  %331 = inttoptr i64 %330 to i64*
  store i64 %328, i64* %331, align 8
  store i64 %330, i64* %7, align 8, !tbaa !2428
  store i64 %327, i64* %74, align 8, !tbaa !2428
  %332 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %320)
  %333 = load i64, i64* %RBP, align 8
  %334 = add i64 %333, -4
  %335 = load i64, i64* %PC, align 8
  %336 = add i64 %335, 7
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %334 to i32*
  store i32 0, i32* %337, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a4b

block_400a4b:                                     ; preds = %block_400a08, %block_4009fc
  %338 = phi i64 [ %.pre, %block_400a08 ], [ %269, %block_4009fc ]
  %MEMORY.0 = phi %struct.Memory* [ %332, %block_400a08 ], [ %251, %block_4009fc ]
  %339 = load i64, i64* %RBP, align 8
  %340 = add i64 %339, -4
  %341 = add i64 %338, 3
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX, align 8, !tbaa !2428
  %345 = load i64, i64* %RSP, align 8
  %346 = add i64 %345, 64
  store i64 %346, i64* %RSP, align 8, !tbaa !2428
  %347 = icmp ugt i64 %345, -65
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %15, align 1, !tbaa !2432
  %349 = trunc i64 %346 to i32
  %350 = and i32 %349, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350) #8
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %22, align 1, !tbaa !2446
  %355 = xor i64 %345, %346
  %356 = lshr i64 %355, 4
  %357 = trunc i64 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %27, align 1, !tbaa !2450
  %359 = icmp eq i64 %346, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %30, align 1, !tbaa !2447
  %361 = lshr i64 %346, 63
  %362 = trunc i64 %361 to i8
  store i8 %362, i8* %33, align 1, !tbaa !2448
  %363 = lshr i64 %345, 63
  %364 = xor i64 %361, %363
  %365 = add nuw nsw i64 %364, %361
  %366 = icmp eq i64 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %39, align 1, !tbaa !2449
  %368 = add i64 %338, 8
  store i64 %368, i64* %PC, align 8
  %369 = add i64 %345, 72
  %370 = inttoptr i64 %346 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RBP, align 8, !tbaa !2428
  store i64 %369, i64* %7, align 8, !tbaa !2428
  %372 = add i64 %338, 9
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %369 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %74, align 8, !tbaa !2428
  %375 = add i64 %345, 80
  store i64 %375, i64* %7, align 8, !tbaa !2428
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
  %36 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %35, i64* %36, align 1, !tbaa !2452
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %38 = bitcast i64* %37 to double*
  store double 0.000000e+00, double* %38, align 1, !tbaa !2452
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
  store i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 71), i64* %RSI, align 8, !tbaa !2428
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
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %54 = bitcast [32 x %union.VectorReg]* %5 to double*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  %57 = bitcast %union.VectorReg* %6 to double*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %59 = bitcast i64* %58 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400bad

block_40113b:                                     ; preds = %block_400bad
  %60 = add i64 %2731, 1
  store i64 %60, i64* %PC, align 8
  %61 = load i64, i64* %9, align 8, !tbaa !2428
  %62 = add i64 %61, 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RBP, align 8, !tbaa !2428
  store i64 %62, i64* %9, align 8, !tbaa !2428
  %65 = add i64 %2731, 2
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %53, align 8, !tbaa !2428
  %68 = add i64 %61, 16
  store i64 %68, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401057:                                     ; preds = %block_401063, %block_401050
  %69 = phi i64 [ %1071, %block_401063 ], [ %.pre13, %block_401050 ]
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -44
  %72 = add i64 %69, 3
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RAX, align 8, !tbaa !2428
  %76 = add i64 %70, -8
  %77 = add i64 %69, 6
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %74, %79
  %81 = icmp ult i32 %74, %79
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %47, align 1, !tbaa !2432
  %83 = and i32 %80, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #8
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %48, align 1, !tbaa !2446
  %88 = xor i32 %79, %74
  %89 = xor i32 %88, %80
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %49, align 1, !tbaa !2450
  %93 = icmp eq i32 %80, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %50, align 1, !tbaa !2447
  %95 = lshr i32 %80, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %51, align 1, !tbaa !2448
  %97 = lshr i32 %74, 31
  %98 = lshr i32 %79, 31
  %99 = xor i32 %98, %97
  %100 = xor i32 %95, %97
  %101 = add nuw nsw i32 %100, %99
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %52, align 1, !tbaa !2449
  %104 = icmp ne i8 %96, 0
  %105 = xor i1 %104, %102
  %.v23 = select i1 %105, i64 12, i64 190
  %106 = add i64 %69, %.v23
  store i64 %106, i64* %53, align 8, !tbaa !2428
  br i1 %105, label %block_401063, label %block_401115

block_401050:                                     ; preds = %block_40103f
  %107 = add i64 %2886, -44
  %108 = add i64 %2924, 7
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  store i32 0, i32* %109, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_401057

block_400d7f:                                     ; preds = %block_400d0e
  %110 = add i64 %2807, 7
  store i64 %110, i64* %PC, align 8
  store i32 0, i32* %2774, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400d86

block_401038:                                     ; preds = %block_400fc7
  %111 = add i64 %2733, -40
  %112 = add i64 %2769, 7
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  store i32 0, i32* %113, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_40103f

block_400cf4:                                     ; preds = %block_400bd3
  %114 = add i64 %2809, -40
  %115 = add i64 %2845, 8
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = icmp eq i32 %117, -1
  %121 = icmp eq i32 %118, 0
  %122 = or i1 %120, %121
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %47, align 1, !tbaa !2432
  %124 = and i32 %118, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %48, align 1, !tbaa !2446
  %129 = xor i32 %117, %118
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %49, align 1, !tbaa !2450
  %133 = icmp eq i32 %118, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %50, align 1, !tbaa !2447
  %135 = lshr i32 %118, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %51, align 1, !tbaa !2448
  %137 = lshr i32 %117, 31
  %138 = xor i32 %135, %137
  %139 = add nuw nsw i32 %138, %135
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %52, align 1, !tbaa !2449
  %142 = add i64 %2845, 14
  store i64 %142, i64* %PC, align 8
  store i32 %118, i32* %116, align 4
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, -322
  store i64 %144, i64* %53, align 8, !tbaa !2428
  br label %block_400bc0

block_400fad:                                     ; preds = %block_400e8c
  %145 = add i64 %2847, -40
  %146 = add i64 %2883, 8
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
  store i8 %154, i8* %47, align 1, !tbaa !2432
  %155 = and i32 %149, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #8
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %48, align 1, !tbaa !2446
  %160 = xor i32 %148, %149
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %49, align 1, !tbaa !2450
  %164 = icmp eq i32 %149, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %50, align 1, !tbaa !2447
  %166 = lshr i32 %149, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %51, align 1, !tbaa !2448
  %168 = lshr i32 %148, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %52, align 1, !tbaa !2449
  %173 = add i64 %2883, 14
  store i64 %173, i64* %PC, align 8
  store i32 %149, i32* %147, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, -322
  store i64 %175, i64* %53, align 8, !tbaa !2428
  br label %block_400e79

block_400daa:                                     ; preds = %block_400d99
  %176 = add i64 %2655, -16
  %177 = add i64 %2693, 4
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = add i64 %2655, -40
  %181 = add i64 %2693, 8
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = shl nsw i64 %184, 13
  store i64 %185, i64* %RCX, align 8, !tbaa !2428
  %186 = lshr i64 %184, 50
  %187 = and i64 %186, 1
  %188 = add i64 %185, %179
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = icmp ult i64 %188, %179
  %190 = icmp ult i64 %188, %185
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %47, align 1, !tbaa !2432
  %193 = trunc i64 %188 to i32
  %194 = and i32 %193, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #8
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %48, align 1, !tbaa !2446
  %199 = xor i64 %179, %188
  %200 = lshr i64 %199, 4
  %201 = trunc i64 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %49, align 1, !tbaa !2450
  %203 = icmp eq i64 %188, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %50, align 1, !tbaa !2447
  %205 = lshr i64 %188, 63
  %206 = trunc i64 %205 to i8
  store i8 %206, i8* %51, align 1, !tbaa !2448
  %207 = lshr i64 %179, 63
  %208 = xor i64 %205, %207
  %209 = xor i64 %205, %187
  %210 = add nuw nsw i64 %208, %209
  %211 = icmp eq i64 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %52, align 1, !tbaa !2449
  %213 = add i64 %2693, 18
  store i64 %213, i64* %PC, align 8
  %214 = load i32, i32* %2663, align 4
  %215 = add i32 %214, -2
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RDX, align 8, !tbaa !2428
  %217 = icmp ult i32 %214, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %47, align 1, !tbaa !2432
  %219 = and i32 %215, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #8
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %48, align 1, !tbaa !2446
  %224 = xor i32 %214, %215
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %49, align 1, !tbaa !2450
  %228 = icmp eq i32 %215, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %50, align 1, !tbaa !2447
  %230 = lshr i32 %215, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %51, align 1, !tbaa !2448
  %232 = lshr i32 %214, 31
  %233 = xor i32 %230, %232
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %52, align 1, !tbaa !2449
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -44
  %239 = add i64 %2693, 24
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sub i32 %215, %241
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RDX, align 8, !tbaa !2428
  %244 = icmp ult i32 %215, %241
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %47, align 1, !tbaa !2432
  %246 = and i32 %242, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246) #8
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %48, align 1, !tbaa !2446
  %251 = xor i32 %241, %215
  %252 = xor i32 %251, %242
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  store i8 %255, i8* %49, align 1, !tbaa !2450
  %256 = icmp eq i32 %242, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %50, align 1, !tbaa !2447
  %258 = lshr i32 %242, 31
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %51, align 1, !tbaa !2448
  %260 = lshr i32 %241, 31
  %261 = xor i32 %260, %230
  %262 = xor i32 %258, %230
  %263 = add nuw nsw i32 %262, %261
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %52, align 1, !tbaa !2449
  %266 = sext i32 %242 to i64
  store i64 %266, i64* %RCX, align 8, !tbaa !2428
  %267 = load i64, i64* %RAX, align 8
  %268 = shl nsw i64 %266, 3
  %269 = add i64 %268, %267
  %270 = add i64 %2693, 32
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %272, i64* %273, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %274 = add i64 %237, -16
  %275 = add i64 %2693, 36
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RAX, align 8, !tbaa !2428
  %278 = add i64 %237, -40
  %279 = add i64 %2693, 40
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = shl nsw i64 %282, 13
  store i64 %283, i64* %RCX, align 8, !tbaa !2428
  %284 = lshr i64 %282, 50
  %285 = and i64 %284, 1
  %286 = add i64 %283, %277
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  %287 = icmp ult i64 %286, %277
  %288 = icmp ult i64 %286, %283
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %47, align 1, !tbaa !2432
  %291 = trunc i64 %286 to i32
  %292 = and i32 %291, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #8
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %48, align 1, !tbaa !2446
  %297 = xor i64 %277, %286
  %298 = lshr i64 %297, 4
  %299 = trunc i64 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %49, align 1, !tbaa !2450
  %301 = icmp eq i64 %286, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %50, align 1, !tbaa !2447
  %303 = lshr i64 %286, 63
  %304 = trunc i64 %303 to i8
  store i8 %304, i8* %51, align 1, !tbaa !2448
  %305 = lshr i64 %277, 63
  %306 = xor i64 %303, %305
  %307 = xor i64 %303, %285
  %308 = add nuw nsw i64 %306, %307
  %309 = icmp eq i64 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %52, align 1, !tbaa !2449
  %311 = load i64, i64* %RBP, align 8
  %312 = add i64 %311, -8
  %313 = add i64 %2693, 50
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = add i32 %315, -2
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RDX, align 8, !tbaa !2428
  %318 = icmp ult i32 %315, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %47, align 1, !tbaa !2432
  %320 = and i32 %316, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320) #8
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %48, align 1, !tbaa !2446
  %325 = xor i32 %315, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %49, align 1, !tbaa !2450
  %329 = icmp eq i32 %316, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %50, align 1, !tbaa !2447
  %331 = lshr i32 %316, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %51, align 1, !tbaa !2448
  %333 = lshr i32 %315, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %52, align 1, !tbaa !2449
  %338 = add i64 %311, -44
  %339 = add i64 %2693, 56
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sub i32 %316, %341
  %343 = lshr i32 %342, 31
  %344 = add i32 %342, -1
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RDX, align 8, !tbaa !2428
  %346 = icmp eq i32 %342, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %47, align 1, !tbaa !2432
  %348 = and i32 %344, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %48, align 1, !tbaa !2446
  %353 = xor i32 %342, %344
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %49, align 1, !tbaa !2450
  %357 = icmp eq i32 %344, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %50, align 1, !tbaa !2447
  %359 = lshr i32 %344, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %51, align 1, !tbaa !2448
  %361 = xor i32 %359, %343
  %362 = add nuw nsw i32 %361, %343
  %363 = icmp eq i32 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %52, align 1, !tbaa !2449
  %365 = sext i32 %344 to i64
  store i64 %365, i64* %RCX, align 8, !tbaa !2428
  %366 = load i64, i64* %RAX, align 8
  %367 = shl nsw i64 %365, 3
  %368 = add i64 %367, %366
  %369 = add i64 %2693, 67
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i64*
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %371, i64* %372, align 1, !tbaa !2452
  store double 0.000000e+00, double* %59, align 1, !tbaa !2452
  %373 = load i64, i64* %RBP, align 8
  %374 = add i64 %373, -24
  %375 = add i64 %2693, 71
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = add i64 %373, -40
  %379 = add i64 %2693, 75
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = shl nsw i64 %382, 13
  store i64 %383, i64* %RCX, align 8, !tbaa !2428
  %384 = lshr i64 %382, 50
  %385 = and i64 %384, 1
  %386 = add i64 %383, %377
  store i64 %386, i64* %RAX, align 8, !tbaa !2428
  %387 = icmp ult i64 %386, %377
  %388 = icmp ult i64 %386, %383
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %47, align 1, !tbaa !2432
  %391 = trunc i64 %386 to i32
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #8
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %48, align 1, !tbaa !2446
  %397 = xor i64 %377, %386
  %398 = lshr i64 %397, 4
  %399 = trunc i64 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %49, align 1, !tbaa !2450
  %401 = icmp eq i64 %386, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %50, align 1, !tbaa !2447
  %403 = lshr i64 %386, 63
  %404 = trunc i64 %403 to i8
  store i8 %404, i8* %51, align 1, !tbaa !2448
  %405 = lshr i64 %377, 63
  %406 = xor i64 %403, %405
  %407 = xor i64 %403, %385
  %408 = add nuw nsw i64 %406, %407
  %409 = icmp eq i64 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %52, align 1, !tbaa !2449
  %411 = add i64 %373, -8
  %412 = add i64 %2693, 85
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RDX, align 8, !tbaa !2428
  %416 = add i64 %373, -44
  %417 = add i64 %2693, 88
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sub i32 %414, %419
  %421 = lshr i32 %420, 31
  %422 = add i32 %420, -3
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RDX, align 8, !tbaa !2428
  %424 = icmp ult i32 %420, 3
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %47, align 1, !tbaa !2432
  %426 = and i32 %422, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426) #8
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %48, align 1, !tbaa !2446
  %431 = xor i32 %420, %422
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %49, align 1, !tbaa !2450
  %435 = icmp eq i32 %422, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %50, align 1, !tbaa !2447
  %437 = lshr i32 %422, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %51, align 1, !tbaa !2448
  %439 = xor i32 %437, %421
  %440 = add nuw nsw i32 %439, %421
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %52, align 1, !tbaa !2449
  %443 = sext i32 %422 to i64
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = load i64, i64* %RAX, align 8
  %445 = shl nsw i64 %443, 3
  %446 = add i64 %445, %444
  %447 = add i64 %2693, 99
  store i64 %447, i64* %PC, align 8
  %448 = load double, double* %57, align 1
  %449 = inttoptr i64 %446 to double*
  %450 = load double, double* %449, align 8
  %451 = fmul double %448, %450
  store double %451, double* %57, align 1, !tbaa !2452
  %452 = load double, double* %54, align 1
  %453 = fsub double %452, %451
  store double %453, double* %54, align 1, !tbaa !2452
  %454 = load i64, i64* %RBP, align 8
  %455 = add i64 %454, -32
  %456 = add i64 %2693, 107
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RAX, align 8, !tbaa !2428
  %459 = add i64 %454, -40
  %460 = add i64 %2693, 111
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  %464 = shl nsw i64 %463, 13
  store i64 %464, i64* %RCX, align 8, !tbaa !2428
  %465 = lshr i64 %463, 50
  %466 = and i64 %465, 1
  %467 = add i64 %464, %458
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = icmp ult i64 %467, %458
  %469 = icmp ult i64 %467, %464
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %47, align 1, !tbaa !2432
  %472 = trunc i64 %467 to i32
  %473 = and i32 %472, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473) #8
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %48, align 1, !tbaa !2446
  %478 = xor i64 %458, %467
  %479 = lshr i64 %478, 4
  %480 = trunc i64 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %49, align 1, !tbaa !2450
  %482 = icmp eq i64 %467, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %50, align 1, !tbaa !2447
  %484 = lshr i64 %467, 63
  %485 = trunc i64 %484 to i8
  store i8 %485, i8* %51, align 1, !tbaa !2448
  %486 = lshr i64 %458, 63
  %487 = xor i64 %484, %486
  %488 = xor i64 %484, %466
  %489 = add nuw nsw i64 %487, %488
  %490 = icmp eq i64 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %52, align 1, !tbaa !2449
  %492 = add i64 %454, -8
  %493 = add i64 %2693, 121
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, -3
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RDX, align 8, !tbaa !2428
  %498 = icmp ult i32 %495, 3
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %47, align 1, !tbaa !2432
  %500 = and i32 %496, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500) #8
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %48, align 1, !tbaa !2446
  %505 = xor i32 %495, %496
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %49, align 1, !tbaa !2450
  %509 = icmp eq i32 %496, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %50, align 1, !tbaa !2447
  %511 = lshr i32 %496, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %51, align 1, !tbaa !2448
  %513 = lshr i32 %495, 31
  %514 = xor i32 %511, %513
  %515 = add nuw nsw i32 %514, %513
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %52, align 1, !tbaa !2449
  %518 = load i64, i64* %RBP, align 8
  %519 = add i64 %518, -44
  %520 = add i64 %2693, 127
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = sub i32 %496, %522
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RDX, align 8, !tbaa !2428
  %525 = icmp ult i32 %496, %522
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %47, align 1, !tbaa !2432
  %527 = and i32 %523, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527) #8
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %48, align 1, !tbaa !2446
  %532 = xor i32 %522, %496
  %533 = xor i32 %532, %523
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %49, align 1, !tbaa !2450
  %537 = icmp eq i32 %523, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %50, align 1, !tbaa !2447
  %539 = lshr i32 %523, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %51, align 1, !tbaa !2448
  %541 = lshr i32 %522, 31
  %542 = xor i32 %541, %511
  %543 = xor i32 %539, %511
  %544 = add nuw nsw i32 %543, %542
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %52, align 1, !tbaa !2449
  %547 = sext i32 %523 to i64
  store i64 %547, i64* %RCX, align 8, !tbaa !2428
  %548 = load i64, i64* %RAX, align 8
  %549 = shl nsw i64 %547, 3
  %550 = add i64 %549, %548
  %551 = add i64 %2693, 135
  store i64 %551, i64* %PC, align 8
  %552 = load double, double* %54, align 1
  %553 = inttoptr i64 %550 to double*
  %554 = load double, double* %553, align 8
  %555 = fdiv double %552, %554
  store double %555, double* %54, align 1, !tbaa !2452
  %556 = add i64 %518, -16
  %557 = add i64 %2693, 139
  store i64 %557, i64* %PC, align 8
  %558 = inttoptr i64 %556 to i64*
  %559 = load i64, i64* %558, align 8
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = add i64 %518, -40
  %561 = add i64 %2693, 143
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  %565 = shl nsw i64 %564, 13
  store i64 %565, i64* %RCX, align 8, !tbaa !2428
  %566 = lshr i64 %564, 50
  %567 = and i64 %566, 1
  %568 = add i64 %565, %559
  store i64 %568, i64* %RAX, align 8, !tbaa !2428
  %569 = icmp ult i64 %568, %559
  %570 = icmp ult i64 %568, %565
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %47, align 1, !tbaa !2432
  %573 = trunc i64 %568 to i32
  %574 = and i32 %573, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574) #8
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %48, align 1, !tbaa !2446
  %579 = xor i64 %559, %568
  %580 = lshr i64 %579, 4
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %49, align 1, !tbaa !2450
  %583 = icmp eq i64 %568, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %50, align 1, !tbaa !2447
  %585 = lshr i64 %568, 63
  %586 = trunc i64 %585 to i8
  store i8 %586, i8* %51, align 1, !tbaa !2448
  %587 = lshr i64 %559, 63
  %588 = xor i64 %585, %587
  %589 = xor i64 %585, %567
  %590 = add nuw nsw i64 %588, %589
  %591 = icmp eq i64 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %52, align 1, !tbaa !2449
  %593 = load i64, i64* %RBP, align 8
  %594 = add i64 %593, -8
  %595 = add i64 %2693, 153
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RDX, align 8, !tbaa !2428
  %599 = add i64 %593, -44
  %600 = add i64 %2693, 156
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = sub i32 %597, %602
  %604 = lshr i32 %603, 31
  %605 = add i32 %603, -2
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RDX, align 8, !tbaa !2428
  %607 = icmp ult i32 %603, 2
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %47, align 1, !tbaa !2432
  %609 = and i32 %605, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609) #8
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %48, align 1, !tbaa !2446
  %614 = xor i32 %603, %605
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %49, align 1, !tbaa !2450
  %618 = icmp eq i32 %605, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %50, align 1, !tbaa !2447
  %620 = lshr i32 %605, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %51, align 1, !tbaa !2448
  %622 = xor i32 %620, %604
  %623 = add nuw nsw i32 %622, %604
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %52, align 1, !tbaa !2449
  %626 = sext i32 %605 to i64
  store i64 %626, i64* %RCX, align 8, !tbaa !2428
  %627 = load i64, i64* %RAX, align 8
  %628 = shl nsw i64 %626, 3
  %629 = add i64 %628, %627
  %630 = add i64 %2693, 167
  store i64 %630, i64* %PC, align 8
  %631 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %632 = load i64, i64* %631, align 1
  %633 = inttoptr i64 %629 to i64*
  store i64 %632, i64* %633, align 8
  %634 = load i64, i64* %RBP, align 8
  %635 = add i64 %634, -44
  %636 = load i64, i64* %PC, align 8
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, 1
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX, align 8, !tbaa !2428
  %642 = icmp eq i32 %639, -1
  %643 = icmp eq i32 %640, 0
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %47, align 1, !tbaa !2432
  %646 = and i32 %640, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646) #8
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %48, align 1, !tbaa !2446
  %651 = xor i32 %639, %640
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %49, align 1, !tbaa !2450
  %655 = icmp eq i32 %640, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %50, align 1, !tbaa !2447
  %657 = lshr i32 %640, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %51, align 1, !tbaa !2448
  %659 = lshr i32 %639, 31
  %660 = xor i32 %657, %659
  %661 = add nuw nsw i32 %660, %657
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %52, align 1, !tbaa !2449
  %664 = add i64 %636, 9
  store i64 %664, i64* %PC, align 8
  store i32 %640, i32* %638, align 4
  %665 = load i64, i64* %PC, align 8
  %666 = add i64 %665, -193
  store i64 %666, i64* %53, align 8, !tbaa !2428
  br label %block_400d99

block_401063:                                     ; preds = %block_401057
  %667 = add i64 %70, -16
  %668 = add i64 %106, 4
  store i64 %668, i64* %PC, align 8
  %669 = inttoptr i64 %667 to i64*
  %670 = load i64, i64* %669, align 8
  store i64 %670, i64* %RAX, align 8, !tbaa !2428
  %671 = add i64 %106, 7
  store i64 %671, i64* %PC, align 8
  %672 = load i32, i32* %78, align 4
  %673 = add i32 %672, -2
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RCX, align 8, !tbaa !2428
  %675 = icmp ult i32 %672, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %47, align 1, !tbaa !2432
  %677 = and i32 %673, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677) #8
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %48, align 1, !tbaa !2446
  %682 = xor i32 %672, %673
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %49, align 1, !tbaa !2450
  %686 = icmp eq i32 %673, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %50, align 1, !tbaa !2447
  %688 = lshr i32 %673, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %51, align 1, !tbaa !2448
  %690 = lshr i32 %672, 31
  %691 = xor i32 %688, %690
  %692 = add nuw nsw i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %52, align 1, !tbaa !2449
  %695 = add i64 %70, -40
  %696 = add i64 %106, 13
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sub i32 %673, %698
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RCX, align 8, !tbaa !2428
  %701 = sext i32 %699 to i64
  %702 = shl nsw i64 %701, 13
  store i64 %702, i64* %RDX, align 8, !tbaa !2428
  %703 = lshr i64 %701, 50
  %704 = and i64 %703, 1
  %705 = load i64, i64* %RAX, align 8
  %706 = add i64 %702, %705
  store i64 %706, i64* %RAX, align 8, !tbaa !2428
  %707 = icmp ult i64 %706, %705
  %708 = icmp ult i64 %706, %702
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %47, align 1, !tbaa !2432
  %711 = trunc i64 %706 to i32
  %712 = and i32 %711, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712) #8
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %48, align 1, !tbaa !2446
  %717 = xor i64 %705, %706
  %718 = lshr i64 %717, 4
  %719 = trunc i64 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %49, align 1, !tbaa !2450
  %721 = icmp eq i64 %706, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %50, align 1, !tbaa !2447
  %723 = lshr i64 %706, 63
  %724 = trunc i64 %723 to i8
  store i8 %724, i8* %51, align 1, !tbaa !2448
  %725 = lshr i64 %705, 63
  %726 = xor i64 %723, %725
  %727 = xor i64 %723, %704
  %728 = add nuw nsw i64 %726, %727
  %729 = icmp eq i64 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %52, align 1, !tbaa !2449
  %731 = load i64, i64* %RBP, align 8
  %732 = add i64 %731, -44
  %733 = add i64 %106, 27
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %RDX, align 8, !tbaa !2428
  %737 = shl nsw i64 %736, 3
  %738 = add i64 %737, %706
  %739 = add i64 %106, 32
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  %742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %741, i64* %742, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %743 = add i64 %731, -16
  %744 = add i64 %106, 36
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %743 to i64*
  %746 = load i64, i64* %745, align 8
  store i64 %746, i64* %RAX, align 8, !tbaa !2428
  %747 = add i64 %731, -8
  %748 = add i64 %106, 39
  store i64 %748, i64* %PC, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RCX, align 8, !tbaa !2428
  %752 = add i64 %731, -40
  %753 = add i64 %106, 42
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sub i32 %750, %755
  %757 = add i32 %756, -3
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RCX, align 8, !tbaa !2428
  %759 = sext i32 %757 to i64
  %760 = shl nsw i64 %759, 13
  store i64 %760, i64* %RDX, align 8, !tbaa !2428
  %761 = lshr i64 %759, 50
  %762 = and i64 %761, 1
  %763 = load i64, i64* %RAX, align 8
  %764 = add i64 %760, %763
  store i64 %764, i64* %RAX, align 8, !tbaa !2428
  %765 = icmp ult i64 %764, %763
  %766 = icmp ult i64 %764, %760
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %47, align 1, !tbaa !2432
  %769 = trunc i64 %764 to i32
  %770 = and i32 %769, 255
  %771 = tail call i32 @llvm.ctpop.i32(i32 %770) #8
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  store i8 %774, i8* %48, align 1, !tbaa !2446
  %775 = xor i64 %763, %764
  %776 = lshr i64 %775, 4
  %777 = trunc i64 %776 to i8
  %778 = and i8 %777, 1
  store i8 %778, i8* %49, align 1, !tbaa !2450
  %779 = icmp eq i64 %764, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %50, align 1, !tbaa !2447
  %781 = lshr i64 %764, 63
  %782 = trunc i64 %781 to i8
  store i8 %782, i8* %51, align 1, !tbaa !2448
  %783 = lshr i64 %763, 63
  %784 = xor i64 %781, %783
  %785 = xor i64 %781, %762
  %786 = add nuw nsw i64 %784, %785
  %787 = icmp eq i64 %786, 2
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %52, align 1, !tbaa !2449
  %789 = load i64, i64* %RBP, align 8
  %790 = add i64 %789, -44
  %791 = add i64 %106, 59
  store i64 %791, i64* %PC, align 8
  %792 = inttoptr i64 %790 to i32*
  %793 = load i32, i32* %792, align 4
  %794 = sext i32 %793 to i64
  store i64 %794, i64* %RDX, align 8, !tbaa !2428
  %795 = shl nsw i64 %794, 3
  %796 = add i64 %795, %764
  %797 = add i64 %106, 64
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  %800 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %799, i64* %800, align 1, !tbaa !2452
  store double 0.000000e+00, double* %59, align 1, !tbaa !2452
  %801 = add i64 %789, -24
  %802 = add i64 %106, 68
  store i64 %802, i64* %PC, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %RAX, align 8, !tbaa !2428
  %805 = add i64 %789, -8
  %806 = add i64 %106, 71
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %808, -3
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RCX, align 8, !tbaa !2428
  %811 = icmp ult i32 %808, 3
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %47, align 1, !tbaa !2432
  %813 = and i32 %809, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813) #8
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %48, align 1, !tbaa !2446
  %818 = xor i32 %808, %809
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %49, align 1, !tbaa !2450
  %822 = icmp eq i32 %809, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %50, align 1, !tbaa !2447
  %824 = lshr i32 %809, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %51, align 1, !tbaa !2448
  %826 = lshr i32 %808, 31
  %827 = xor i32 %824, %826
  %828 = add nuw nsw i32 %827, %826
  %829 = icmp eq i32 %828, 2
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %52, align 1, !tbaa !2449
  %831 = add i64 %789, -40
  %832 = add i64 %106, 77
  store i64 %832, i64* %PC, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = sub i32 %809, %834
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RCX, align 8, !tbaa !2428
  %837 = sext i32 %835 to i64
  %838 = shl nsw i64 %837, 13
  store i64 %838, i64* %RDX, align 8, !tbaa !2428
  %839 = lshr i64 %837, 50
  %840 = and i64 %839, 1
  %841 = load i64, i64* %RAX, align 8
  %842 = add i64 %838, %841
  store i64 %842, i64* %RAX, align 8, !tbaa !2428
  %843 = icmp ult i64 %842, %841
  %844 = icmp ult i64 %842, %838
  %845 = or i1 %843, %844
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %47, align 1, !tbaa !2432
  %847 = trunc i64 %842 to i32
  %848 = and i32 %847, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848) #8
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %48, align 1, !tbaa !2446
  %853 = xor i64 %841, %842
  %854 = lshr i64 %853, 4
  %855 = trunc i64 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %49, align 1, !tbaa !2450
  %857 = icmp eq i64 %842, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %50, align 1, !tbaa !2447
  %859 = lshr i64 %842, 63
  %860 = trunc i64 %859 to i8
  store i8 %860, i8* %51, align 1, !tbaa !2448
  %861 = lshr i64 %841, 63
  %862 = xor i64 %859, %861
  %863 = xor i64 %859, %840
  %864 = add nuw nsw i64 %862, %863
  %865 = icmp eq i64 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %52, align 1, !tbaa !2449
  %867 = load i64, i64* %RBP, align 8
  %868 = add i64 %867, -44
  %869 = add i64 %106, 91
  store i64 %869, i64* %PC, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = sext i32 %871 to i64
  store i64 %872, i64* %RDX, align 8, !tbaa !2428
  %873 = shl nsw i64 %872, 3
  %874 = add i64 %873, %842
  %875 = add i64 %106, 96
  store i64 %875, i64* %PC, align 8
  %876 = load double, double* %57, align 1
  %877 = inttoptr i64 %874 to double*
  %878 = load double, double* %877, align 8
  %879 = fmul double %876, %878
  store double %879, double* %57, align 1, !tbaa !2452
  %880 = load double, double* %54, align 1
  %881 = fsub double %880, %879
  store double %881, double* %54, align 1, !tbaa !2452
  %882 = add i64 %867, -32
  %883 = add i64 %106, 104
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %RAX, align 8, !tbaa !2428
  %886 = add i64 %867, -8
  %887 = add i64 %106, 107
  store i64 %887, i64* %PC, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  %890 = add i32 %889, -2
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RCX, align 8, !tbaa !2428
  %892 = icmp ult i32 %889, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %47, align 1, !tbaa !2432
  %894 = and i32 %890, 255
  %895 = tail call i32 @llvm.ctpop.i32(i32 %894) #8
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  store i8 %898, i8* %48, align 1, !tbaa !2446
  %899 = xor i32 %889, %890
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %49, align 1, !tbaa !2450
  %903 = icmp eq i32 %890, 0
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %50, align 1, !tbaa !2447
  %905 = lshr i32 %890, 31
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %51, align 1, !tbaa !2448
  %907 = lshr i32 %889, 31
  %908 = xor i32 %905, %907
  %909 = add nuw nsw i32 %908, %907
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %52, align 1, !tbaa !2449
  %912 = add i64 %867, -40
  %913 = add i64 %106, 113
  store i64 %913, i64* %PC, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = sub i32 %890, %915
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX, align 8, !tbaa !2428
  %918 = sext i32 %916 to i64
  %919 = shl nsw i64 %918, 13
  store i64 %919, i64* %RDX, align 8, !tbaa !2428
  %920 = lshr i64 %918, 50
  %921 = and i64 %920, 1
  %922 = load i64, i64* %RAX, align 8
  %923 = add i64 %919, %922
  store i64 %923, i64* %RAX, align 8, !tbaa !2428
  %924 = icmp ult i64 %923, %922
  %925 = icmp ult i64 %923, %919
  %926 = or i1 %924, %925
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %47, align 1, !tbaa !2432
  %928 = trunc i64 %923 to i32
  %929 = and i32 %928, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929) #8
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %48, align 1, !tbaa !2446
  %934 = xor i64 %922, %923
  %935 = lshr i64 %934, 4
  %936 = trunc i64 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %49, align 1, !tbaa !2450
  %938 = icmp eq i64 %923, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %50, align 1, !tbaa !2447
  %940 = lshr i64 %923, 63
  %941 = trunc i64 %940 to i8
  store i8 %941, i8* %51, align 1, !tbaa !2448
  %942 = lshr i64 %922, 63
  %943 = xor i64 %940, %942
  %944 = xor i64 %940, %921
  %945 = add nuw nsw i64 %943, %944
  %946 = icmp eq i64 %945, 2
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %52, align 1, !tbaa !2449
  %948 = load i64, i64* %RBP, align 8
  %949 = add i64 %948, -44
  %950 = add i64 %106, 127
  store i64 %950, i64* %PC, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RDX, align 8, !tbaa !2428
  %954 = shl nsw i64 %953, 3
  %955 = add i64 %954, %923
  %956 = add i64 %106, 132
  store i64 %956, i64* %PC, align 8
  %957 = load double, double* %54, align 1
  %958 = inttoptr i64 %955 to double*
  %959 = load double, double* %958, align 8
  %960 = fdiv double %957, %959
  store double %960, double* %54, align 1, !tbaa !2452
  %961 = add i64 %948, -16
  %962 = add i64 %106, 136
  store i64 %962, i64* %PC, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RAX, align 8, !tbaa !2428
  %965 = add i64 %948, -8
  %966 = add i64 %106, 139
  store i64 %966, i64* %PC, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, -2
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RCX, align 8, !tbaa !2428
  %971 = icmp ult i32 %968, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %47, align 1, !tbaa !2432
  %973 = and i32 %969, 255
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973) #8
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  store i8 %977, i8* %48, align 1, !tbaa !2446
  %978 = xor i32 %968, %969
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  store i8 %981, i8* %49, align 1, !tbaa !2450
  %982 = icmp eq i32 %969, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %50, align 1, !tbaa !2447
  %984 = lshr i32 %969, 31
  %985 = trunc i32 %984 to i8
  store i8 %985, i8* %51, align 1, !tbaa !2448
  %986 = lshr i32 %968, 31
  %987 = xor i32 %984, %986
  %988 = add nuw nsw i32 %987, %986
  %989 = icmp eq i32 %988, 2
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %52, align 1, !tbaa !2449
  %991 = add i64 %948, -40
  %992 = add i64 %106, 145
  store i64 %992, i64* %PC, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = sub i32 %969, %994
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RCX, align 8, !tbaa !2428
  %997 = sext i32 %995 to i64
  %998 = shl nsw i64 %997, 13
  store i64 %998, i64* %RDX, align 8, !tbaa !2428
  %999 = lshr i64 %997, 50
  %1000 = and i64 %999, 1
  %1001 = load i64, i64* %RAX, align 8
  %1002 = add i64 %998, %1001
  store i64 %1002, i64* %RAX, align 8, !tbaa !2428
  %1003 = icmp ult i64 %1002, %1001
  %1004 = icmp ult i64 %1002, %998
  %1005 = or i1 %1003, %1004
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %47, align 1, !tbaa !2432
  %1007 = trunc i64 %1002 to i32
  %1008 = and i32 %1007, 255
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008) #8
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %48, align 1, !tbaa !2446
  %1013 = xor i64 %1001, %1002
  %1014 = lshr i64 %1013, 4
  %1015 = trunc i64 %1014 to i8
  %1016 = and i8 %1015, 1
  store i8 %1016, i8* %49, align 1, !tbaa !2450
  %1017 = icmp eq i64 %1002, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %50, align 1, !tbaa !2447
  %1019 = lshr i64 %1002, 63
  %1020 = trunc i64 %1019 to i8
  store i8 %1020, i8* %51, align 1, !tbaa !2448
  %1021 = lshr i64 %1001, 63
  %1022 = xor i64 %1019, %1021
  %1023 = xor i64 %1019, %1000
  %1024 = add nuw nsw i64 %1022, %1023
  %1025 = icmp eq i64 %1024, 2
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %52, align 1, !tbaa !2449
  %1027 = load i64, i64* %RBP, align 8
  %1028 = add i64 %1027, -44
  %1029 = add i64 %106, 159
  store i64 %1029, i64* %PC, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = sext i32 %1031 to i64
  store i64 %1032, i64* %RDX, align 8, !tbaa !2428
  %1033 = shl nsw i64 %1032, 3
  %1034 = add i64 %1033, %1002
  %1035 = add i64 %106, 164
  store i64 %1035, i64* %PC, align 8
  %1036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1037 = load i64, i64* %1036, align 1
  %1038 = inttoptr i64 %1034 to i64*
  store i64 %1037, i64* %1038, align 8
  %1039 = load i64, i64* %RBP, align 8
  %1040 = add i64 %1039, -44
  %1041 = load i64, i64* %PC, align 8
  %1042 = add i64 %1041, 3
  store i64 %1042, i64* %PC, align 8
  %1043 = inttoptr i64 %1040 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = add i32 %1044, 1
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX, align 8, !tbaa !2428
  %1047 = icmp eq i32 %1044, -1
  %1048 = icmp eq i32 %1045, 0
  %1049 = or i1 %1047, %1048
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %47, align 1, !tbaa !2432
  %1051 = and i32 %1045, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051) #8
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %48, align 1, !tbaa !2446
  %1056 = xor i32 %1044, %1045
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %49, align 1, !tbaa !2450
  %1060 = icmp eq i32 %1045, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %50, align 1, !tbaa !2447
  %1062 = lshr i32 %1045, 31
  %1063 = trunc i32 %1062 to i8
  store i8 %1063, i8* %51, align 1, !tbaa !2448
  %1064 = lshr i32 %1044, 31
  %1065 = xor i32 %1062, %1064
  %1066 = add nuw nsw i32 %1065, %1062
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %52, align 1, !tbaa !2449
  %1069 = add i64 %1041, 9
  store i64 %1069, i64* %PC, align 8
  store i32 %1045, i32* %1043, align 4
  %1070 = load i64, i64* %PC, align 8
  %1071 = add i64 %1070, -185
  store i64 %1071, i64* %53, align 8, !tbaa !2428
  br label %block_401057

block_400fd3:                                     ; preds = %block_400fc7
  %1072 = add i64 %2733, -16
  %1073 = add i64 %2769, 4
  store i64 %1073, i64* %PC, align 8
  %1074 = inttoptr i64 %1072 to i64*
  %1075 = load i64, i64* %1074, align 8
  store i64 %1075, i64* %RAX, align 8, !tbaa !2428
  %1076 = add i64 %2769, 7
  store i64 %1076, i64* %PC, align 8
  %1077 = load i32, i32* %2741, align 4
  %1078 = add i32 %1077, -1
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RCX, align 8, !tbaa !2428
  %1080 = sext i32 %1078 to i64
  %1081 = shl nsw i64 %1080, 13
  store i64 %1081, i64* %RDX, align 8, !tbaa !2428
  %1082 = lshr i64 %1080, 50
  %1083 = and i64 %1082, 1
  %1084 = add i64 %1081, %1075
  store i64 %1084, i64* %RAX, align 8, !tbaa !2428
  %1085 = icmp ult i64 %1084, %1075
  %1086 = icmp ult i64 %1084, %1081
  %1087 = or i1 %1085, %1086
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %47, align 1, !tbaa !2432
  %1089 = trunc i64 %1084 to i32
  %1090 = and i32 %1089, 255
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090) #8
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %48, align 1, !tbaa !2446
  %1095 = xor i64 %1075, %1084
  %1096 = lshr i64 %1095, 4
  %1097 = trunc i64 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %49, align 1, !tbaa !2450
  %1099 = icmp eq i64 %1084, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %50, align 1, !tbaa !2447
  %1101 = lshr i64 %1084, 63
  %1102 = trunc i64 %1101 to i8
  store i8 %1102, i8* %51, align 1, !tbaa !2448
  %1103 = lshr i64 %1075, 63
  %1104 = xor i64 %1101, %1103
  %1105 = xor i64 %1101, %1083
  %1106 = add nuw nsw i64 %1104, %1105
  %1107 = icmp eq i64 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %52, align 1, !tbaa !2449
  %1109 = load i64, i64* %RBP, align 8
  %1110 = add i64 %1109, -44
  %1111 = add i64 %2769, 24
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RDX, align 8, !tbaa !2428
  %1115 = shl nsw i64 %1114, 3
  %1116 = add i64 %1115, %1084
  %1117 = add i64 %2769, 29
  store i64 %1117, i64* %PC, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  %1120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1119, i64* %1120, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1121 = add i64 %1109, -32
  %1122 = add i64 %2769, 33
  store i64 %1122, i64* %PC, align 8
  %1123 = inttoptr i64 %1121 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RAX, align 8, !tbaa !2428
  %1125 = add i64 %1109, -8
  %1126 = add i64 %2769, 36
  store i64 %1126, i64* %PC, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i32 %1128, -1
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RCX, align 8, !tbaa !2428
  %1131 = sext i32 %1129 to i64
  %1132 = shl nsw i64 %1131, 13
  store i64 %1132, i64* %RDX, align 8, !tbaa !2428
  %1133 = lshr i64 %1131, 50
  %1134 = and i64 %1133, 1
  %1135 = add i64 %1132, %1124
  store i64 %1135, i64* %RAX, align 8, !tbaa !2428
  %1136 = icmp ult i64 %1135, %1124
  %1137 = icmp ult i64 %1135, %1132
  %1138 = or i1 %1136, %1137
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %47, align 1, !tbaa !2432
  %1140 = trunc i64 %1135 to i32
  %1141 = and i32 %1140, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141) #8
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %48, align 1, !tbaa !2446
  %1146 = xor i64 %1124, %1135
  %1147 = lshr i64 %1146, 4
  %1148 = trunc i64 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %49, align 1, !tbaa !2450
  %1150 = icmp eq i64 %1135, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %50, align 1, !tbaa !2447
  %1152 = lshr i64 %1135, 63
  %1153 = trunc i64 %1152 to i8
  store i8 %1153, i8* %51, align 1, !tbaa !2448
  %1154 = lshr i64 %1124, 63
  %1155 = xor i64 %1152, %1154
  %1156 = xor i64 %1152, %1134
  %1157 = add nuw nsw i64 %1155, %1156
  %1158 = icmp eq i64 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %52, align 1, !tbaa !2449
  %1160 = load i64, i64* %RBP, align 8
  %1161 = add i64 %1160, -44
  %1162 = add i64 %2769, 53
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = sext i32 %1164 to i64
  store i64 %1165, i64* %RDX, align 8, !tbaa !2428
  %1166 = shl nsw i64 %1165, 3
  %1167 = add i64 %1166, %1135
  %1168 = add i64 %2769, 58
  store i64 %1168, i64* %PC, align 8
  %1169 = load double, double* %54, align 1
  %1170 = inttoptr i64 %1167 to double*
  %1171 = load double, double* %1170, align 8
  %1172 = fdiv double %1169, %1171
  store double %1172, double* %54, align 1, !tbaa !2452
  %1173 = add i64 %1160, -16
  %1174 = add i64 %2769, 62
  store i64 %1174, i64* %PC, align 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RAX, align 8, !tbaa !2428
  %1177 = add i64 %1160, -8
  %1178 = add i64 %2769, 65
  store i64 %1178, i64* %PC, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = add i32 %1180, -1
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RCX, align 8, !tbaa !2428
  %1183 = sext i32 %1181 to i64
  %1184 = shl nsw i64 %1183, 13
  store i64 %1184, i64* %RDX, align 8, !tbaa !2428
  %1185 = lshr i64 %1183, 50
  %1186 = and i64 %1185, 1
  %1187 = add i64 %1184, %1176
  store i64 %1187, i64* %RAX, align 8, !tbaa !2428
  %1188 = icmp ult i64 %1187, %1176
  %1189 = icmp ult i64 %1187, %1184
  %1190 = or i1 %1188, %1189
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %47, align 1, !tbaa !2432
  %1192 = trunc i64 %1187 to i32
  %1193 = and i32 %1192, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193) #8
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %48, align 1, !tbaa !2446
  %1198 = xor i64 %1176, %1187
  %1199 = lshr i64 %1198, 4
  %1200 = trunc i64 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %49, align 1, !tbaa !2450
  %1202 = icmp eq i64 %1187, 0
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %50, align 1, !tbaa !2447
  %1204 = lshr i64 %1187, 63
  %1205 = trunc i64 %1204 to i8
  store i8 %1205, i8* %51, align 1, !tbaa !2448
  %1206 = lshr i64 %1176, 63
  %1207 = xor i64 %1204, %1206
  %1208 = xor i64 %1204, %1186
  %1209 = add nuw nsw i64 %1207, %1208
  %1210 = icmp eq i64 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %52, align 1, !tbaa !2449
  %1212 = load i64, i64* %RBP, align 8
  %1213 = add i64 %1212, -44
  %1214 = add i64 %2769, 82
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  %1217 = sext i32 %1216 to i64
  store i64 %1217, i64* %RDX, align 8, !tbaa !2428
  %1218 = shl nsw i64 %1217, 3
  %1219 = add i64 %1218, %1187
  %1220 = add i64 %2769, 87
  store i64 %1220, i64* %PC, align 8
  %1221 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1222 = load i64, i64* %1221, align 1
  %1223 = inttoptr i64 %1219 to i64*
  store i64 %1222, i64* %1223, align 8
  %1224 = load i64, i64* %RBP, align 8
  %1225 = add i64 %1224, -44
  %1226 = load i64, i64* %PC, align 8
  %1227 = add i64 %1226, 3
  store i64 %1227, i64* %PC, align 8
  %1228 = inttoptr i64 %1225 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = add i32 %1229, 1
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RAX, align 8, !tbaa !2428
  %1232 = icmp eq i32 %1229, -1
  %1233 = icmp eq i32 %1230, 0
  %1234 = or i1 %1232, %1233
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %47, align 1, !tbaa !2432
  %1236 = and i32 %1230, 255
  %1237 = tail call i32 @llvm.ctpop.i32(i32 %1236) #8
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  store i8 %1240, i8* %48, align 1, !tbaa !2446
  %1241 = xor i32 %1229, %1230
  %1242 = lshr i32 %1241, 4
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  store i8 %1244, i8* %49, align 1, !tbaa !2450
  %1245 = icmp eq i32 %1230, 0
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %50, align 1, !tbaa !2447
  %1247 = lshr i32 %1230, 31
  %1248 = trunc i32 %1247 to i8
  store i8 %1248, i8* %51, align 1, !tbaa !2448
  %1249 = lshr i32 %1229, 31
  %1250 = xor i32 %1247, %1249
  %1251 = add nuw nsw i32 %1250, %1247
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %52, align 1, !tbaa !2449
  %1254 = add i64 %1226, 9
  store i64 %1254, i64* %PC, align 8
  store i32 %1230, i32* %1228, align 4
  %1255 = load i64, i64* %PC, align 8
  %1256 = add i64 %1255, -108
  store i64 %1256, i64* %53, align 8, !tbaa !2428
  br label %block_400fc7

block_400d1a:                                     ; preds = %block_400d0e
  %1257 = add i64 %2771, -16
  %1258 = add i64 %2807, 4
  store i64 %1258, i64* %PC, align 8
  %1259 = inttoptr i64 %1257 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RAX, align 8, !tbaa !2428
  %1261 = add i64 %2807, 8
  store i64 %1261, i64* %PC, align 8
  %1262 = load i32, i32* %2774, align 4
  %1263 = sext i32 %1262 to i64
  %1264 = shl nsw i64 %1263, 13
  store i64 %1264, i64* %RCX, align 8, !tbaa !2428
  %1265 = lshr i64 %1263, 50
  %1266 = and i64 %1265, 1
  %1267 = add i64 %1264, %1260
  store i64 %1267, i64* %RAX, align 8, !tbaa !2428
  %1268 = icmp ult i64 %1267, %1260
  %1269 = icmp ult i64 %1267, %1264
  %1270 = or i1 %1268, %1269
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %47, align 1, !tbaa !2432
  %1272 = trunc i64 %1267 to i32
  %1273 = and i32 %1272, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273) #8
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %48, align 1, !tbaa !2446
  %1278 = xor i64 %1260, %1267
  %1279 = lshr i64 %1278, 4
  %1280 = trunc i64 %1279 to i8
  %1281 = and i8 %1280, 1
  store i8 %1281, i8* %49, align 1, !tbaa !2450
  %1282 = icmp eq i64 %1267, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %50, align 1, !tbaa !2447
  %1284 = lshr i64 %1267, 63
  %1285 = trunc i64 %1284 to i8
  store i8 %1285, i8* %51, align 1, !tbaa !2448
  %1286 = lshr i64 %1260, 63
  %1287 = xor i64 %1284, %1286
  %1288 = xor i64 %1284, %1266
  %1289 = add nuw nsw i64 %1287, %1288
  %1290 = icmp eq i64 %1289, 2
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %52, align 1, !tbaa !2449
  %1292 = add i64 %2807, 18
  store i64 %1292, i64* %PC, align 8
  %1293 = load i32, i32* %2779, align 4
  %1294 = add i32 %1293, -1
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %RDX, align 8, !tbaa !2428
  %1296 = icmp eq i32 %1293, 0
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %47, align 1, !tbaa !2432
  %1298 = and i32 %1294, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298) #8
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %48, align 1, !tbaa !2446
  %1303 = xor i32 %1293, %1294
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %49, align 1, !tbaa !2450
  %1307 = icmp eq i32 %1294, 0
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %50, align 1, !tbaa !2447
  %1309 = lshr i32 %1294, 31
  %1310 = trunc i32 %1309 to i8
  store i8 %1310, i8* %51, align 1, !tbaa !2448
  %1311 = lshr i32 %1293, 31
  %1312 = xor i32 %1309, %1311
  %1313 = add nuw nsw i32 %1312, %1311
  %1314 = icmp eq i32 %1313, 2
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %52, align 1, !tbaa !2449
  %1316 = sext i32 %1294 to i64
  store i64 %1316, i64* %RCX, align 8, !tbaa !2428
  %1317 = shl nsw i64 %1316, 3
  %1318 = add i64 %1317, %1267
  %1319 = add i64 %2807, 29
  store i64 %1319, i64* %PC, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  %1322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1321, i64* %1322, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1323 = load i64, i64* %RBP, align 8
  %1324 = add i64 %1323, -32
  %1325 = add i64 %2807, 33
  store i64 %1325, i64* %PC, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RAX, align 8, !tbaa !2428
  %1328 = add i64 %1323, -40
  %1329 = add i64 %2807, 37
  store i64 %1329, i64* %PC, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = sext i32 %1331 to i64
  %1333 = shl nsw i64 %1332, 13
  store i64 %1333, i64* %RCX, align 8, !tbaa !2428
  %1334 = lshr i64 %1332, 50
  %1335 = and i64 %1334, 1
  %1336 = add i64 %1333, %1327
  store i64 %1336, i64* %RAX, align 8, !tbaa !2428
  %1337 = icmp ult i64 %1336, %1327
  %1338 = icmp ult i64 %1336, %1333
  %1339 = or i1 %1337, %1338
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %47, align 1, !tbaa !2432
  %1341 = trunc i64 %1336 to i32
  %1342 = and i32 %1341, 255
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342) #8
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %48, align 1, !tbaa !2446
  %1347 = xor i64 %1327, %1336
  %1348 = lshr i64 %1347, 4
  %1349 = trunc i64 %1348 to i8
  %1350 = and i8 %1349, 1
  store i8 %1350, i8* %49, align 1, !tbaa !2450
  %1351 = icmp eq i64 %1336, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %50, align 1, !tbaa !2447
  %1353 = lshr i64 %1336, 63
  %1354 = trunc i64 %1353 to i8
  store i8 %1354, i8* %51, align 1, !tbaa !2448
  %1355 = lshr i64 %1327, 63
  %1356 = xor i64 %1353, %1355
  %1357 = xor i64 %1353, %1335
  %1358 = add nuw nsw i64 %1356, %1357
  %1359 = icmp eq i64 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %52, align 1, !tbaa !2449
  %1361 = add i64 %1323, -8
  %1362 = add i64 %2807, 47
  store i64 %1362, i64* %PC, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  %1365 = add i32 %1364, -1
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RDX, align 8, !tbaa !2428
  %1367 = icmp eq i32 %1364, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %47, align 1, !tbaa !2432
  %1369 = and i32 %1365, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369) #8
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %48, align 1, !tbaa !2446
  %1374 = xor i32 %1364, %1365
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %49, align 1, !tbaa !2450
  %1378 = icmp eq i32 %1365, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %50, align 1, !tbaa !2447
  %1380 = lshr i32 %1365, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %51, align 1, !tbaa !2448
  %1382 = lshr i32 %1364, 31
  %1383 = xor i32 %1380, %1382
  %1384 = add nuw nsw i32 %1383, %1382
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %52, align 1, !tbaa !2449
  %1387 = sext i32 %1365 to i64
  store i64 %1387, i64* %RCX, align 8, !tbaa !2428
  %1388 = shl nsw i64 %1387, 3
  %1389 = add i64 %1388, %1336
  %1390 = add i64 %2807, 58
  store i64 %1390, i64* %PC, align 8
  %1391 = load double, double* %54, align 1
  %1392 = inttoptr i64 %1389 to double*
  %1393 = load double, double* %1392, align 8
  %1394 = fdiv double %1391, %1393
  store double %1394, double* %54, align 1, !tbaa !2452
  %1395 = load i64, i64* %RBP, align 8
  %1396 = add i64 %1395, -16
  %1397 = add i64 %2807, 62
  store i64 %1397, i64* %PC, align 8
  %1398 = inttoptr i64 %1396 to i64*
  %1399 = load i64, i64* %1398, align 8
  store i64 %1399, i64* %RAX, align 8, !tbaa !2428
  %1400 = add i64 %1395, -40
  %1401 = add i64 %2807, 66
  store i64 %1401, i64* %PC, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = sext i32 %1403 to i64
  %1405 = shl nsw i64 %1404, 13
  store i64 %1405, i64* %RCX, align 8, !tbaa !2428
  %1406 = lshr i64 %1404, 50
  %1407 = and i64 %1406, 1
  %1408 = add i64 %1405, %1399
  store i64 %1408, i64* %RAX, align 8, !tbaa !2428
  %1409 = icmp ult i64 %1408, %1399
  %1410 = icmp ult i64 %1408, %1405
  %1411 = or i1 %1409, %1410
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %47, align 1, !tbaa !2432
  %1413 = trunc i64 %1408 to i32
  %1414 = and i32 %1413, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414) #8
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %48, align 1, !tbaa !2446
  %1419 = xor i64 %1399, %1408
  %1420 = lshr i64 %1419, 4
  %1421 = trunc i64 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %49, align 1, !tbaa !2450
  %1423 = icmp eq i64 %1408, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %50, align 1, !tbaa !2447
  %1425 = lshr i64 %1408, 63
  %1426 = trunc i64 %1425 to i8
  store i8 %1426, i8* %51, align 1, !tbaa !2448
  %1427 = lshr i64 %1399, 63
  %1428 = xor i64 %1425, %1427
  %1429 = xor i64 %1425, %1407
  %1430 = add nuw nsw i64 %1428, %1429
  %1431 = icmp eq i64 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %52, align 1, !tbaa !2449
  %1433 = add i64 %1395, -8
  %1434 = add i64 %2807, 76
  store i64 %1434, i64* %PC, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = add i32 %1436, -1
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RDX, align 8, !tbaa !2428
  %1439 = icmp eq i32 %1436, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %47, align 1, !tbaa !2432
  %1441 = and i32 %1437, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441) #8
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %48, align 1, !tbaa !2446
  %1446 = xor i32 %1436, %1437
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %49, align 1, !tbaa !2450
  %1450 = icmp eq i32 %1437, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %50, align 1, !tbaa !2447
  %1452 = lshr i32 %1437, 31
  %1453 = trunc i32 %1452 to i8
  store i8 %1453, i8* %51, align 1, !tbaa !2448
  %1454 = lshr i32 %1436, 31
  %1455 = xor i32 %1452, %1454
  %1456 = add nuw nsw i32 %1455, %1454
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %52, align 1, !tbaa !2449
  %1459 = sext i32 %1437 to i64
  store i64 %1459, i64* %RCX, align 8, !tbaa !2428
  %1460 = shl nsw i64 %1459, 3
  %1461 = add i64 %1460, %1408
  %1462 = add i64 %2807, 87
  store i64 %1462, i64* %PC, align 8
  %1463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1464 = load i64, i64* %1463, align 1
  %1465 = inttoptr i64 %1461 to i64*
  store i64 %1464, i64* %1465, align 8
  %1466 = load i64, i64* %RBP, align 8
  %1467 = add i64 %1466, -40
  %1468 = load i64, i64* %PC, align 8
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC, align 8
  %1470 = inttoptr i64 %1467 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = add i32 %1471, 1
  %1473 = zext i32 %1472 to i64
  store i64 %1473, i64* %RAX, align 8, !tbaa !2428
  %1474 = icmp eq i32 %1471, -1
  %1475 = icmp eq i32 %1472, 0
  %1476 = or i1 %1474, %1475
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %47, align 1, !tbaa !2432
  %1478 = and i32 %1472, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478) #8
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %48, align 1, !tbaa !2446
  %1483 = xor i32 %1471, %1472
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  store i8 %1486, i8* %49, align 1, !tbaa !2450
  %1487 = icmp eq i32 %1472, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %50, align 1, !tbaa !2447
  %1489 = lshr i32 %1472, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %51, align 1, !tbaa !2448
  %1491 = lshr i32 %1471, 31
  %1492 = xor i32 %1489, %1491
  %1493 = add nuw nsw i32 %1492, %1489
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %52, align 1, !tbaa !2449
  %1496 = add i64 %1468, 9
  store i64 %1496, i64* %PC, align 8
  store i32 %1472, i32* %1470, align 4
  %1497 = load i64, i64* %PC, align 8
  %1498 = add i64 %1497, -108
  store i64 %1498, i64* %53, align 8, !tbaa !2428
  br label %block_400d0e

block_400bdf:                                     ; preds = %block_400bd3
  %1499 = add i64 %2809, -16
  %1500 = add i64 %2845, 4
  store i64 %1500, i64* %PC, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RAX, align 8, !tbaa !2428
  %1503 = add i64 %2809, -40
  %1504 = add i64 %2845, 8
  store i64 %1504, i64* %PC, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  %1508 = shl nsw i64 %1507, 13
  store i64 %1508, i64* %RCX, align 8, !tbaa !2428
  %1509 = lshr i64 %1507, 50
  %1510 = and i64 %1509, 1
  %1511 = add i64 %1508, %1502
  store i64 %1511, i64* %RAX, align 8, !tbaa !2428
  %1512 = icmp ult i64 %1511, %1502
  %1513 = icmp ult i64 %1511, %1508
  %1514 = or i1 %1512, %1513
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %47, align 1, !tbaa !2432
  %1516 = trunc i64 %1511 to i32
  %1517 = and i32 %1516, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517) #8
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %48, align 1, !tbaa !2446
  %1522 = xor i64 %1502, %1511
  %1523 = lshr i64 %1522, 4
  %1524 = trunc i64 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %49, align 1, !tbaa !2450
  %1526 = icmp eq i64 %1511, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %50, align 1, !tbaa !2447
  %1528 = lshr i64 %1511, 63
  %1529 = trunc i64 %1528 to i8
  store i8 %1529, i8* %51, align 1, !tbaa !2448
  %1530 = lshr i64 %1502, 63
  %1531 = xor i64 %1528, %1530
  %1532 = xor i64 %1528, %1510
  %1533 = add nuw nsw i64 %1531, %1532
  %1534 = icmp eq i64 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %52, align 1, !tbaa !2449
  %1536 = add i64 %2845, 19
  store i64 %1536, i64* %PC, align 8
  %1537 = load i32, i32* %2812, align 4
  %1538 = sext i32 %1537 to i64
  store i64 %1538, i64* %RCX, align 8, !tbaa !2428
  %1539 = shl nsw i64 %1538, 3
  %1540 = add i64 %1539, %1511
  %1541 = add i64 %2845, 24
  store i64 %1541, i64* %PC, align 8
  %1542 = inttoptr i64 %1540 to i64*
  %1543 = load i64, i64* %1542, align 8
  %1544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1543, i64* %1544, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1545 = add i64 %2845, 28
  store i64 %1545, i64* %PC, align 8
  %1546 = load i64, i64* %1501, align 8
  store i64 %1546, i64* %RAX, align 8, !tbaa !2428
  %1547 = add i64 %2845, 32
  store i64 %1547, i64* %PC, align 8
  %1548 = load i32, i32* %1505, align 4
  %1549 = sext i32 %1548 to i64
  %1550 = shl nsw i64 %1549, 13
  store i64 %1550, i64* %RCX, align 8, !tbaa !2428
  %1551 = lshr i64 %1549, 50
  %1552 = and i64 %1551, 1
  %1553 = add i64 %1550, %1546
  store i64 %1553, i64* %RAX, align 8, !tbaa !2428
  %1554 = icmp ult i64 %1553, %1546
  %1555 = icmp ult i64 %1553, %1550
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %47, align 1, !tbaa !2432
  %1558 = trunc i64 %1553 to i32
  %1559 = and i32 %1558, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559) #8
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %48, align 1, !tbaa !2446
  %1564 = xor i64 %1546, %1553
  %1565 = lshr i64 %1564, 4
  %1566 = trunc i64 %1565 to i8
  %1567 = and i8 %1566, 1
  store i8 %1567, i8* %49, align 1, !tbaa !2450
  %1568 = icmp eq i64 %1553, 0
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %50, align 1, !tbaa !2447
  %1570 = lshr i64 %1553, 63
  %1571 = trunc i64 %1570 to i8
  store i8 %1571, i8* %51, align 1, !tbaa !2448
  %1572 = lshr i64 %1546, 63
  %1573 = xor i64 %1570, %1572
  %1574 = xor i64 %1570, %1552
  %1575 = add nuw nsw i64 %1573, %1574
  %1576 = icmp eq i64 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %52, align 1, !tbaa !2449
  %1578 = load i64, i64* %RBP, align 8
  %1579 = add i64 %1578, -44
  %1580 = add i64 %2845, 42
  store i64 %1580, i64* %PC, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = add i32 %1582, -1
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RDX, align 8, !tbaa !2428
  %1585 = icmp eq i32 %1582, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %47, align 1, !tbaa !2432
  %1587 = and i32 %1583, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587) #8
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %48, align 1, !tbaa !2446
  %1592 = xor i32 %1582, %1583
  %1593 = lshr i32 %1592, 4
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %49, align 1, !tbaa !2450
  %1596 = icmp eq i32 %1583, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %50, align 1, !tbaa !2447
  %1598 = lshr i32 %1583, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %51, align 1, !tbaa !2448
  %1600 = lshr i32 %1582, 31
  %1601 = xor i32 %1598, %1600
  %1602 = add nuw nsw i32 %1601, %1600
  %1603 = icmp eq i32 %1602, 2
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %52, align 1, !tbaa !2449
  %1605 = sext i32 %1583 to i64
  store i64 %1605, i64* %RCX, align 8, !tbaa !2428
  %1606 = shl nsw i64 %1605, 3
  %1607 = add i64 %1606, %1553
  %1608 = add i64 %2845, 53
  store i64 %1608, i64* %PC, align 8
  %1609 = inttoptr i64 %1607 to double*
  %1610 = load double, double* %1609, align 8
  store double %1610, double* %57, align 1, !tbaa !2452
  store double 0.000000e+00, double* %59, align 1, !tbaa !2452
  %1611 = add i64 %1578, -24
  %1612 = add i64 %2845, 57
  store i64 %1612, i64* %PC, align 8
  %1613 = inttoptr i64 %1611 to i64*
  %1614 = load i64, i64* %1613, align 8
  store i64 %1614, i64* %RAX, align 8, !tbaa !2428
  %1615 = add i64 %1578, -40
  %1616 = add i64 %2845, 61
  store i64 %1616, i64* %PC, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = sext i32 %1618 to i64
  %1620 = shl nsw i64 %1619, 13
  store i64 %1620, i64* %RCX, align 8, !tbaa !2428
  %1621 = lshr i64 %1619, 50
  %1622 = and i64 %1621, 1
  %1623 = add i64 %1620, %1614
  store i64 %1623, i64* %RAX, align 8, !tbaa !2428
  %1624 = icmp ult i64 %1623, %1614
  %1625 = icmp ult i64 %1623, %1620
  %1626 = or i1 %1624, %1625
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %47, align 1, !tbaa !2432
  %1628 = trunc i64 %1623 to i32
  %1629 = and i32 %1628, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629) #8
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %48, align 1, !tbaa !2446
  %1634 = xor i64 %1614, %1623
  %1635 = lshr i64 %1634, 4
  %1636 = trunc i64 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %49, align 1, !tbaa !2450
  %1638 = icmp eq i64 %1623, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %50, align 1, !tbaa !2447
  %1640 = lshr i64 %1623, 63
  %1641 = trunc i64 %1640 to i8
  store i8 %1641, i8* %51, align 1, !tbaa !2448
  %1642 = lshr i64 %1614, 63
  %1643 = xor i64 %1640, %1642
  %1644 = xor i64 %1640, %1622
  %1645 = add nuw nsw i64 %1643, %1644
  %1646 = icmp eq i64 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %52, align 1, !tbaa !2449
  %1648 = load i64, i64* %RBP, align 8
  %1649 = add i64 %1648, -44
  %1650 = add i64 %2845, 72
  store i64 %1650, i64* %PC, align 8
  %1651 = inttoptr i64 %1649 to i32*
  %1652 = load i32, i32* %1651, align 4
  %1653 = sext i32 %1652 to i64
  store i64 %1653, i64* %RCX, align 8, !tbaa !2428
  %1654 = shl nsw i64 %1653, 3
  %1655 = add i64 %1654, %1623
  %1656 = add i64 %2845, 77
  store i64 %1656, i64* %PC, align 8
  %1657 = inttoptr i64 %1655 to double*
  %1658 = load double, double* %1657, align 8
  %1659 = fmul double %1610, %1658
  store double %1659, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %58, align 1, !tbaa !2452
  %1660 = add i64 %1648, -32
  %1661 = add i64 %2845, 81
  store i64 %1661, i64* %PC, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RAX, align 8, !tbaa !2428
  %1664 = add i64 %1648, -40
  %1665 = add i64 %2845, 85
  store i64 %1665, i64* %PC, align 8
  %1666 = inttoptr i64 %1664 to i32*
  %1667 = load i32, i32* %1666, align 4
  %1668 = sext i32 %1667 to i64
  %1669 = shl nsw i64 %1668, 13
  store i64 %1669, i64* %RCX, align 8, !tbaa !2428
  %1670 = lshr i64 %1668, 50
  %1671 = and i64 %1670, 1
  %1672 = add i64 %1669, %1663
  store i64 %1672, i64* %RAX, align 8, !tbaa !2428
  %1673 = icmp ult i64 %1672, %1663
  %1674 = icmp ult i64 %1672, %1669
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %47, align 1, !tbaa !2432
  %1677 = trunc i64 %1672 to i32
  %1678 = and i32 %1677, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678) #8
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %48, align 1, !tbaa !2446
  %1683 = xor i64 %1663, %1672
  %1684 = lshr i64 %1683, 4
  %1685 = trunc i64 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %49, align 1, !tbaa !2450
  %1687 = icmp eq i64 %1672, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %50, align 1, !tbaa !2447
  %1689 = lshr i64 %1672, 63
  %1690 = trunc i64 %1689 to i8
  store i8 %1690, i8* %51, align 1, !tbaa !2448
  %1691 = lshr i64 %1663, 63
  %1692 = xor i64 %1689, %1691
  %1693 = xor i64 %1689, %1671
  %1694 = add nuw nsw i64 %1692, %1693
  %1695 = icmp eq i64 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %52, align 1, !tbaa !2449
  %1697 = add i64 %2845, 95
  store i64 %1697, i64* %PC, align 8
  %1698 = load i32, i32* %1651, align 4
  %1699 = add i32 %1698, -1
  %1700 = zext i32 %1699 to i64
  store i64 %1700, i64* %RDX, align 8, !tbaa !2428
  %1701 = icmp eq i32 %1698, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %47, align 1, !tbaa !2432
  %1703 = and i32 %1699, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703) #8
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %48, align 1, !tbaa !2446
  %1708 = xor i32 %1698, %1699
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %49, align 1, !tbaa !2450
  %1712 = icmp eq i32 %1699, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %50, align 1, !tbaa !2447
  %1714 = lshr i32 %1699, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %51, align 1, !tbaa !2448
  %1716 = lshr i32 %1698, 31
  %1717 = xor i32 %1714, %1716
  %1718 = add nuw nsw i32 %1717, %1716
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %52, align 1, !tbaa !2449
  %1721 = sext i32 %1699 to i64
  store i64 %1721, i64* %RCX, align 8, !tbaa !2428
  %1722 = shl nsw i64 %1721, 3
  %1723 = add i64 %1722, %1672
  %1724 = add i64 %2845, 106
  store i64 %1724, i64* %PC, align 8
  %1725 = load double, double* %57, align 1
  %1726 = inttoptr i64 %1723 to double*
  %1727 = load double, double* %1726, align 8
  %1728 = fdiv double %1725, %1727
  store double %1728, double* %57, align 1, !tbaa !2452
  %1729 = load double, double* %54, align 1
  %1730 = fsub double %1729, %1728
  store double %1730, double* %54, align 1, !tbaa !2452
  %1731 = load i64, i64* %RBP, align 8
  %1732 = add i64 %1731, -16
  %1733 = add i64 %2845, 114
  store i64 %1733, i64* %PC, align 8
  %1734 = inttoptr i64 %1732 to i64*
  %1735 = load i64, i64* %1734, align 8
  store i64 %1735, i64* %RAX, align 8, !tbaa !2428
  %1736 = add i64 %1731, -40
  %1737 = add i64 %2845, 118
  store i64 %1737, i64* %PC, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = sext i32 %1739 to i64
  %1741 = shl nsw i64 %1740, 13
  store i64 %1741, i64* %RCX, align 8, !tbaa !2428
  %1742 = lshr i64 %1740, 50
  %1743 = and i64 %1742, 1
  %1744 = add i64 %1741, %1735
  store i64 %1744, i64* %RAX, align 8, !tbaa !2428
  %1745 = icmp ult i64 %1744, %1735
  %1746 = icmp ult i64 %1744, %1741
  %1747 = or i1 %1745, %1746
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %47, align 1, !tbaa !2432
  %1749 = trunc i64 %1744 to i32
  %1750 = and i32 %1749, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750) #8
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %48, align 1, !tbaa !2446
  %1755 = xor i64 %1735, %1744
  %1756 = lshr i64 %1755, 4
  %1757 = trunc i64 %1756 to i8
  %1758 = and i8 %1757, 1
  store i8 %1758, i8* %49, align 1, !tbaa !2450
  %1759 = icmp eq i64 %1744, 0
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %50, align 1, !tbaa !2447
  %1761 = lshr i64 %1744, 63
  %1762 = trunc i64 %1761 to i8
  store i8 %1762, i8* %51, align 1, !tbaa !2448
  %1763 = lshr i64 %1735, 63
  %1764 = xor i64 %1761, %1763
  %1765 = xor i64 %1761, %1743
  %1766 = add nuw nsw i64 %1764, %1765
  %1767 = icmp eq i64 %1766, 2
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %52, align 1, !tbaa !2449
  %1769 = add i64 %1731, -44
  %1770 = add i64 %2845, 129
  store i64 %1770, i64* %PC, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = sext i32 %1772 to i64
  store i64 %1773, i64* %RCX, align 8, !tbaa !2428
  %1774 = shl nsw i64 %1773, 3
  %1775 = add i64 %1774, %1744
  %1776 = add i64 %2845, 134
  store i64 %1776, i64* %PC, align 8
  %1777 = inttoptr i64 %1775 to double*
  store double %1730, double* %1777, align 8
  %1778 = load i64, i64* %RBP, align 8
  %1779 = add i64 %1778, -32
  %1780 = load i64, i64* %PC, align 8
  %1781 = add i64 %1780, 4
  store i64 %1781, i64* %PC, align 8
  %1782 = inttoptr i64 %1779 to i64*
  %1783 = load i64, i64* %1782, align 8
  store i64 %1783, i64* %RAX, align 8, !tbaa !2428
  %1784 = add i64 %1778, -40
  %1785 = add i64 %1780, 8
  store i64 %1785, i64* %PC, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = sext i32 %1787 to i64
  %1789 = shl nsw i64 %1788, 13
  store i64 %1789, i64* %RCX, align 8, !tbaa !2428
  %1790 = lshr i64 %1788, 50
  %1791 = and i64 %1790, 1
  %1792 = add i64 %1789, %1783
  store i64 %1792, i64* %RAX, align 8, !tbaa !2428
  %1793 = icmp ult i64 %1792, %1783
  %1794 = icmp ult i64 %1792, %1789
  %1795 = or i1 %1793, %1794
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %47, align 1, !tbaa !2432
  %1797 = trunc i64 %1792 to i32
  %1798 = and i32 %1797, 255
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798) #8
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %48, align 1, !tbaa !2446
  %1803 = xor i64 %1783, %1792
  %1804 = lshr i64 %1803, 4
  %1805 = trunc i64 %1804 to i8
  %1806 = and i8 %1805, 1
  store i8 %1806, i8* %49, align 1, !tbaa !2450
  %1807 = icmp eq i64 %1792, 0
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %50, align 1, !tbaa !2447
  %1809 = lshr i64 %1792, 63
  %1810 = trunc i64 %1809 to i8
  store i8 %1810, i8* %51, align 1, !tbaa !2448
  %1811 = lshr i64 %1783, 63
  %1812 = xor i64 %1809, %1811
  %1813 = xor i64 %1809, %1791
  %1814 = add nuw nsw i64 %1812, %1813
  %1815 = icmp eq i64 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %52, align 1, !tbaa !2449
  %1817 = add i64 %1778, -44
  %1818 = add i64 %1780, 19
  store i64 %1818, i64* %PC, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = sext i32 %1820 to i64
  store i64 %1821, i64* %RCX, align 8, !tbaa !2428
  %1822 = shl nsw i64 %1821, 3
  %1823 = add i64 %1822, %1792
  %1824 = add i64 %1780, 24
  store i64 %1824, i64* %PC, align 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  %1827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1826, i64* %1827, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1828 = add i64 %1778, -24
  %1829 = add i64 %1780, 28
  store i64 %1829, i64* %PC, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RAX, align 8, !tbaa !2428
  %1832 = add i64 %1780, 32
  store i64 %1832, i64* %PC, align 8
  %1833 = load i32, i32* %1786, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = shl nsw i64 %1834, 13
  store i64 %1835, i64* %RCX, align 8, !tbaa !2428
  %1836 = lshr i64 %1834, 50
  %1837 = and i64 %1836, 1
  %1838 = add i64 %1835, %1831
  store i64 %1838, i64* %RAX, align 8, !tbaa !2428
  %1839 = icmp ult i64 %1838, %1831
  %1840 = icmp ult i64 %1838, %1835
  %1841 = or i1 %1839, %1840
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %47, align 1, !tbaa !2432
  %1843 = trunc i64 %1838 to i32
  %1844 = and i32 %1843, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844) #8
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %48, align 1, !tbaa !2446
  %1849 = xor i64 %1831, %1838
  %1850 = lshr i64 %1849, 4
  %1851 = trunc i64 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %49, align 1, !tbaa !2450
  %1853 = icmp eq i64 %1838, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %50, align 1, !tbaa !2447
  %1855 = lshr i64 %1838, 63
  %1856 = trunc i64 %1855 to i8
  store i8 %1856, i8* %51, align 1, !tbaa !2448
  %1857 = lshr i64 %1831, 63
  %1858 = xor i64 %1855, %1857
  %1859 = xor i64 %1855, %1837
  %1860 = add nuw nsw i64 %1858, %1859
  %1861 = icmp eq i64 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %52, align 1, !tbaa !2449
  %1863 = load i64, i64* %RBP, align 8
  %1864 = add i64 %1863, -44
  %1865 = add i64 %1780, 43
  store i64 %1865, i64* %PC, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = sext i32 %1867 to i64
  store i64 %1868, i64* %RCX, align 8, !tbaa !2428
  %1869 = shl nsw i64 %1868, 3
  %1870 = add i64 %1869, %1838
  %1871 = add i64 %1780, 48
  store i64 %1871, i64* %PC, align 8
  %1872 = inttoptr i64 %1870 to double*
  %1873 = load double, double* %1872, align 8
  store double %1873, double* %57, align 1, !tbaa !2452
  store double 0.000000e+00, double* %59, align 1, !tbaa !2452
  %1874 = add i64 %1863, -24
  %1875 = add i64 %1780, 52
  store i64 %1875, i64* %PC, align 8
  %1876 = inttoptr i64 %1874 to i64*
  %1877 = load i64, i64* %1876, align 8
  store i64 %1877, i64* %RAX, align 8, !tbaa !2428
  %1878 = add i64 %1863, -40
  %1879 = add i64 %1780, 56
  store i64 %1879, i64* %PC, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = sext i32 %1881 to i64
  %1883 = shl nsw i64 %1882, 13
  store i64 %1883, i64* %RCX, align 8, !tbaa !2428
  %1884 = lshr i64 %1882, 50
  %1885 = and i64 %1884, 1
  %1886 = add i64 %1883, %1877
  store i64 %1886, i64* %RAX, align 8, !tbaa !2428
  %1887 = icmp ult i64 %1886, %1877
  %1888 = icmp ult i64 %1886, %1883
  %1889 = or i1 %1887, %1888
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %47, align 1, !tbaa !2432
  %1891 = trunc i64 %1886 to i32
  %1892 = and i32 %1891, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892) #8
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %48, align 1, !tbaa !2446
  %1897 = xor i64 %1877, %1886
  %1898 = lshr i64 %1897, 4
  %1899 = trunc i64 %1898 to i8
  %1900 = and i8 %1899, 1
  store i8 %1900, i8* %49, align 1, !tbaa !2450
  %1901 = icmp eq i64 %1886, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %50, align 1, !tbaa !2447
  %1903 = lshr i64 %1886, 63
  %1904 = trunc i64 %1903 to i8
  store i8 %1904, i8* %51, align 1, !tbaa !2448
  %1905 = lshr i64 %1877, 63
  %1906 = xor i64 %1903, %1905
  %1907 = xor i64 %1903, %1885
  %1908 = add nuw nsw i64 %1906, %1907
  %1909 = icmp eq i64 %1908, 2
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %52, align 1, !tbaa !2449
  %1911 = add i64 %1780, 67
  store i64 %1911, i64* %PC, align 8
  %1912 = load i32, i32* %1866, align 4
  %1913 = sext i32 %1912 to i64
  store i64 %1913, i64* %RCX, align 8, !tbaa !2428
  %1914 = shl nsw i64 %1913, 3
  %1915 = add i64 %1914, %1886
  %1916 = add i64 %1780, 72
  store i64 %1916, i64* %PC, align 8
  %1917 = inttoptr i64 %1915 to double*
  %1918 = load double, double* %1917, align 8
  %1919 = fmul double %1873, %1918
  store double %1919, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %58, align 1, !tbaa !2452
  %1920 = add i64 %1863, -32
  %1921 = add i64 %1780, 76
  store i64 %1921, i64* %PC, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX, align 8, !tbaa !2428
  %1924 = load i64, i64* %RBP, align 8
  %1925 = add i64 %1924, -40
  %1926 = add i64 %1780, 80
  store i64 %1926, i64* %PC, align 8
  %1927 = inttoptr i64 %1925 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = sext i32 %1928 to i64
  %1930 = shl nsw i64 %1929, 13
  store i64 %1930, i64* %RCX, align 8, !tbaa !2428
  %1931 = lshr i64 %1929, 50
  %1932 = and i64 %1931, 1
  %1933 = add i64 %1930, %1923
  store i64 %1933, i64* %RAX, align 8, !tbaa !2428
  %1934 = icmp ult i64 %1933, %1923
  %1935 = icmp ult i64 %1933, %1930
  %1936 = or i1 %1934, %1935
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %47, align 1, !tbaa !2432
  %1938 = trunc i64 %1933 to i32
  %1939 = and i32 %1938, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939) #8
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %48, align 1, !tbaa !2446
  %1944 = xor i64 %1923, %1933
  %1945 = lshr i64 %1944, 4
  %1946 = trunc i64 %1945 to i8
  %1947 = and i8 %1946, 1
  store i8 %1947, i8* %49, align 1, !tbaa !2450
  %1948 = icmp eq i64 %1933, 0
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %50, align 1, !tbaa !2447
  %1950 = lshr i64 %1933, 63
  %1951 = trunc i64 %1950 to i8
  store i8 %1951, i8* %51, align 1, !tbaa !2448
  %1952 = lshr i64 %1923, 63
  %1953 = xor i64 %1950, %1952
  %1954 = xor i64 %1950, %1932
  %1955 = add nuw nsw i64 %1953, %1954
  %1956 = icmp eq i64 %1955, 2
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %52, align 1, !tbaa !2449
  %1958 = add i64 %1924, -44
  %1959 = add i64 %1780, 90
  store i64 %1959, i64* %PC, align 8
  %1960 = inttoptr i64 %1958 to i32*
  %1961 = load i32, i32* %1960, align 4
  %1962 = add i32 %1961, -1
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RDX, align 8, !tbaa !2428
  %1964 = icmp eq i32 %1961, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %47, align 1, !tbaa !2432
  %1966 = and i32 %1962, 255
  %1967 = tail call i32 @llvm.ctpop.i32(i32 %1966) #8
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %48, align 1, !tbaa !2446
  %1971 = xor i32 %1961, %1962
  %1972 = lshr i32 %1971, 4
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  store i8 %1974, i8* %49, align 1, !tbaa !2450
  %1975 = icmp eq i32 %1962, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %50, align 1, !tbaa !2447
  %1977 = lshr i32 %1962, 31
  %1978 = trunc i32 %1977 to i8
  store i8 %1978, i8* %51, align 1, !tbaa !2448
  %1979 = lshr i32 %1961, 31
  %1980 = xor i32 %1977, %1979
  %1981 = add nuw nsw i32 %1980, %1979
  %1982 = icmp eq i32 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %52, align 1, !tbaa !2449
  %1984 = sext i32 %1962 to i64
  store i64 %1984, i64* %RCX, align 8, !tbaa !2428
  %1985 = shl nsw i64 %1984, 3
  %1986 = add i64 %1985, %1933
  %1987 = add i64 %1780, 101
  store i64 %1987, i64* %PC, align 8
  %1988 = load double, double* %57, align 1
  %1989 = inttoptr i64 %1986 to double*
  %1990 = load double, double* %1989, align 8
  %1991 = fdiv double %1988, %1990
  store double %1991, double* %57, align 1, !tbaa !2452
  %1992 = load double, double* %54, align 1
  %1993 = fsub double %1992, %1991
  store double %1993, double* %54, align 1, !tbaa !2452
  %1994 = load i64, i64* %RBP, align 8
  %1995 = add i64 %1994, -32
  %1996 = add i64 %1780, 109
  store i64 %1996, i64* %PC, align 8
  %1997 = inttoptr i64 %1995 to i64*
  %1998 = load i64, i64* %1997, align 8
  store i64 %1998, i64* %RAX, align 8, !tbaa !2428
  %1999 = add i64 %1994, -40
  %2000 = add i64 %1780, 113
  store i64 %2000, i64* %PC, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = sext i32 %2002 to i64
  %2004 = shl nsw i64 %2003, 13
  store i64 %2004, i64* %RCX, align 8, !tbaa !2428
  %2005 = lshr i64 %2003, 50
  %2006 = and i64 %2005, 1
  %2007 = add i64 %2004, %1998
  store i64 %2007, i64* %RAX, align 8, !tbaa !2428
  %2008 = icmp ult i64 %2007, %1998
  %2009 = icmp ult i64 %2007, %2004
  %2010 = or i1 %2008, %2009
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %47, align 1, !tbaa !2432
  %2012 = trunc i64 %2007 to i32
  %2013 = and i32 %2012, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013) #8
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %48, align 1, !tbaa !2446
  %2018 = xor i64 %1998, %2007
  %2019 = lshr i64 %2018, 4
  %2020 = trunc i64 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %49, align 1, !tbaa !2450
  %2022 = icmp eq i64 %2007, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %50, align 1, !tbaa !2447
  %2024 = lshr i64 %2007, 63
  %2025 = trunc i64 %2024 to i8
  store i8 %2025, i8* %51, align 1, !tbaa !2448
  %2026 = lshr i64 %1998, 63
  %2027 = xor i64 %2024, %2026
  %2028 = xor i64 %2024, %2006
  %2029 = add nuw nsw i64 %2027, %2028
  %2030 = icmp eq i64 %2029, 2
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %52, align 1, !tbaa !2449
  %2032 = add i64 %1994, -44
  %2033 = add i64 %1780, 124
  store i64 %2033, i64* %PC, align 8
  %2034 = inttoptr i64 %2032 to i32*
  %2035 = load i32, i32* %2034, align 4
  %2036 = sext i32 %2035 to i64
  store i64 %2036, i64* %RCX, align 8, !tbaa !2428
  %2037 = shl nsw i64 %2036, 3
  %2038 = add i64 %2037, %2007
  %2039 = add i64 %1780, 129
  store i64 %2039, i64* %PC, align 8
  %2040 = inttoptr i64 %2038 to double*
  store double %1993, double* %2040, align 8
  %2041 = load i64, i64* %RBP, align 8
  %2042 = add i64 %2041, -44
  %2043 = load i64, i64* %PC, align 8
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %PC, align 8
  %2045 = inttoptr i64 %2042 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = add i32 %2046, 1
  %2048 = zext i32 %2047 to i64
  store i64 %2048, i64* %RAX, align 8, !tbaa !2428
  %2049 = icmp eq i32 %2046, -1
  %2050 = icmp eq i32 %2047, 0
  %2051 = or i1 %2049, %2050
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %47, align 1, !tbaa !2432
  %2053 = and i32 %2047, 255
  %2054 = tail call i32 @llvm.ctpop.i32(i32 %2053) #8
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  store i8 %2057, i8* %48, align 1, !tbaa !2446
  %2058 = xor i32 %2046, %2047
  %2059 = lshr i32 %2058, 4
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  store i8 %2061, i8* %49, align 1, !tbaa !2450
  %2062 = icmp eq i32 %2047, 0
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %50, align 1, !tbaa !2447
  %2064 = lshr i32 %2047, 31
  %2065 = trunc i32 %2064 to i8
  store i8 %2065, i8* %51, align 1, !tbaa !2448
  %2066 = lshr i32 %2046, 31
  %2067 = xor i32 %2064, %2066
  %2068 = add nuw nsw i32 %2067, %2064
  %2069 = icmp eq i32 %2068, 2
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %52, align 1, !tbaa !2449
  %2071 = add i64 %2043, 9
  store i64 %2071, i64* %PC, align 8
  store i32 %2047, i32* %2045, align 4
  %2072 = load i64, i64* %PC, align 8
  %2073 = add i64 %2072, -284
  store i64 %2073, i64* %53, align 8, !tbaa !2428
  br label %block_400bd3

block_401128:                                     ; preds = %block_40103f
  %2074 = add i64 %2886, -36
  %2075 = add i64 %2924, 8
  store i64 %2075, i64* %PC, align 8
  %2076 = inttoptr i64 %2074 to i32*
  %2077 = load i32, i32* %2076, align 4
  %2078 = add i32 %2077, 1
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RAX, align 8, !tbaa !2428
  %2080 = icmp eq i32 %2077, -1
  %2081 = icmp eq i32 %2078, 0
  %2082 = or i1 %2080, %2081
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %47, align 1, !tbaa !2432
  %2084 = and i32 %2078, 255
  %2085 = tail call i32 @llvm.ctpop.i32(i32 %2084) #8
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  store i8 %2088, i8* %48, align 1, !tbaa !2446
  %2089 = xor i32 %2077, %2078
  %2090 = lshr i32 %2089, 4
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  store i8 %2092, i8* %49, align 1, !tbaa !2450
  %2093 = icmp eq i32 %2078, 0
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %50, align 1, !tbaa !2447
  %2095 = lshr i32 %2078, 31
  %2096 = trunc i32 %2095 to i8
  store i8 %2096, i8* %51, align 1, !tbaa !2448
  %2097 = lshr i32 %2077, 31
  %2098 = xor i32 %2095, %2097
  %2099 = add nuw nsw i32 %2098, %2095
  %2100 = icmp eq i32 %2099, 2
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %52, align 1, !tbaa !2449
  %2102 = add i64 %2924, 14
  store i64 %2102, i64* %PC, align 8
  store i32 %2078, i32* %2076, align 4
  %2103 = load i64, i64* %PC, align 8
  %2104 = add i64 %2103, -1417
  store i64 %2104, i64* %53, align 8, !tbaa !2428
  br label %block_400bad

block_400e98:                                     ; preds = %block_400e8c
  %2105 = add i64 %2847, -16
  %2106 = add i64 %2883, 4
  store i64 %2106, i64* %PC, align 8
  %2107 = inttoptr i64 %2105 to i64*
  %2108 = load i64, i64* %2107, align 8
  store i64 %2108, i64* %RAX, align 8, !tbaa !2428
  %2109 = add i64 %2847, -40
  %2110 = add i64 %2883, 8
  store i64 %2110, i64* %PC, align 8
  %2111 = inttoptr i64 %2109 to i32*
  %2112 = load i32, i32* %2111, align 4
  %2113 = sext i32 %2112 to i64
  %2114 = shl nsw i64 %2113, 13
  store i64 %2114, i64* %RCX, align 8, !tbaa !2428
  %2115 = lshr i64 %2113, 50
  %2116 = and i64 %2115, 1
  %2117 = add i64 %2114, %2108
  store i64 %2117, i64* %RAX, align 8, !tbaa !2428
  %2118 = icmp ult i64 %2117, %2108
  %2119 = icmp ult i64 %2117, %2114
  %2120 = or i1 %2118, %2119
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %47, align 1, !tbaa !2432
  %2122 = trunc i64 %2117 to i32
  %2123 = and i32 %2122, 255
  %2124 = tail call i32 @llvm.ctpop.i32(i32 %2123) #8
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = xor i8 %2126, 1
  store i8 %2127, i8* %48, align 1, !tbaa !2446
  %2128 = xor i64 %2108, %2117
  %2129 = lshr i64 %2128, 4
  %2130 = trunc i64 %2129 to i8
  %2131 = and i8 %2130, 1
  store i8 %2131, i8* %49, align 1, !tbaa !2450
  %2132 = icmp eq i64 %2117, 0
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %50, align 1, !tbaa !2447
  %2134 = lshr i64 %2117, 63
  %2135 = trunc i64 %2134 to i8
  store i8 %2135, i8* %51, align 1, !tbaa !2448
  %2136 = lshr i64 %2108, 63
  %2137 = xor i64 %2134, %2136
  %2138 = xor i64 %2134, %2116
  %2139 = add nuw nsw i64 %2137, %2138
  %2140 = icmp eq i64 %2139, 2
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %52, align 1, !tbaa !2449
  %2142 = add i64 %2883, 19
  store i64 %2142, i64* %PC, align 8
  %2143 = load i32, i32* %2850, align 4
  %2144 = sext i32 %2143 to i64
  store i64 %2144, i64* %RCX, align 8, !tbaa !2428
  %2145 = shl nsw i64 %2144, 3
  %2146 = add i64 %2145, %2117
  %2147 = add i64 %2883, 24
  store i64 %2147, i64* %PC, align 8
  %2148 = inttoptr i64 %2146 to i64*
  %2149 = load i64, i64* %2148, align 8
  %2150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2149, i64* %2150, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %2151 = add i64 %2883, 28
  store i64 %2151, i64* %PC, align 8
  %2152 = load i64, i64* %2107, align 8
  store i64 %2152, i64* %RAX, align 8, !tbaa !2428
  %2153 = add i64 %2883, 31
  store i64 %2153, i64* %PC, align 8
  %2154 = load i32, i32* %2111, align 4
  %2155 = add i32 %2154, -1
  %2156 = zext i32 %2155 to i64
  store i64 %2156, i64* %RDX, align 8, !tbaa !2428
  %2157 = sext i32 %2155 to i64
  %2158 = shl nsw i64 %2157, 13
  store i64 %2158, i64* %RCX, align 8, !tbaa !2428
  %2159 = lshr i64 %2157, 50
  %2160 = and i64 %2159, 1
  %2161 = add i64 %2158, %2152
  store i64 %2161, i64* %RAX, align 8, !tbaa !2428
  %2162 = icmp ult i64 %2161, %2152
  %2163 = icmp ult i64 %2161, %2158
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %47, align 1, !tbaa !2432
  %2166 = trunc i64 %2161 to i32
  %2167 = and i32 %2166, 255
  %2168 = tail call i32 @llvm.ctpop.i32(i32 %2167) #8
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  store i8 %2171, i8* %48, align 1, !tbaa !2446
  %2172 = xor i64 %2152, %2161
  %2173 = lshr i64 %2172, 4
  %2174 = trunc i64 %2173 to i8
  %2175 = and i8 %2174, 1
  store i8 %2175, i8* %49, align 1, !tbaa !2450
  %2176 = icmp eq i64 %2161, 0
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %50, align 1, !tbaa !2447
  %2178 = lshr i64 %2161, 63
  %2179 = trunc i64 %2178 to i8
  store i8 %2179, i8* %51, align 1, !tbaa !2448
  %2180 = lshr i64 %2152, 63
  %2181 = xor i64 %2178, %2180
  %2182 = xor i64 %2178, %2160
  %2183 = add nuw nsw i64 %2181, %2182
  %2184 = icmp eq i64 %2183, 2
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %52, align 1, !tbaa !2449
  %2186 = load i64, i64* %RBP, align 8
  %2187 = add i64 %2186, -44
  %2188 = add i64 %2883, 48
  store i64 %2188, i64* %PC, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = sext i32 %2190 to i64
  store i64 %2191, i64* %RCX, align 8, !tbaa !2428
  %2192 = shl nsw i64 %2191, 3
  %2193 = add i64 %2192, %2161
  %2194 = add i64 %2883, 53
  store i64 %2194, i64* %PC, align 8
  %2195 = inttoptr i64 %2193 to double*
  %2196 = load double, double* %2195, align 8
  store double %2196, double* %57, align 1, !tbaa !2452
  store double 0.000000e+00, double* %59, align 1, !tbaa !2452
  %2197 = add i64 %2186, -24
  %2198 = add i64 %2883, 57
  store i64 %2198, i64* %PC, align 8
  %2199 = inttoptr i64 %2197 to i64*
  %2200 = load i64, i64* %2199, align 8
  store i64 %2200, i64* %RAX, align 8, !tbaa !2428
  %2201 = add i64 %2186, -40
  %2202 = add i64 %2883, 61
  store i64 %2202, i64* %PC, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sext i32 %2204 to i64
  %2206 = shl nsw i64 %2205, 13
  store i64 %2206, i64* %RCX, align 8, !tbaa !2428
  %2207 = lshr i64 %2205, 50
  %2208 = and i64 %2207, 1
  %2209 = add i64 %2206, %2200
  store i64 %2209, i64* %RAX, align 8, !tbaa !2428
  %2210 = icmp ult i64 %2209, %2200
  %2211 = icmp ult i64 %2209, %2206
  %2212 = or i1 %2210, %2211
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %47, align 1, !tbaa !2432
  %2214 = trunc i64 %2209 to i32
  %2215 = and i32 %2214, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215) #8
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %48, align 1, !tbaa !2446
  %2220 = xor i64 %2200, %2209
  %2221 = lshr i64 %2220, 4
  %2222 = trunc i64 %2221 to i8
  %2223 = and i8 %2222, 1
  store i8 %2223, i8* %49, align 1, !tbaa !2450
  %2224 = icmp eq i64 %2209, 0
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %50, align 1, !tbaa !2447
  %2226 = lshr i64 %2209, 63
  %2227 = trunc i64 %2226 to i8
  store i8 %2227, i8* %51, align 1, !tbaa !2448
  %2228 = lshr i64 %2200, 63
  %2229 = xor i64 %2226, %2228
  %2230 = xor i64 %2226, %2208
  %2231 = add nuw nsw i64 %2229, %2230
  %2232 = icmp eq i64 %2231, 2
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %52, align 1, !tbaa !2449
  %2234 = add i64 %2883, 72
  store i64 %2234, i64* %PC, align 8
  %2235 = load i32, i32* %2189, align 4
  %2236 = sext i32 %2235 to i64
  store i64 %2236, i64* %RCX, align 8, !tbaa !2428
  %2237 = shl nsw i64 %2236, 3
  %2238 = add i64 %2237, %2209
  %2239 = add i64 %2883, 77
  store i64 %2239, i64* %PC, align 8
  %2240 = inttoptr i64 %2238 to double*
  %2241 = load double, double* %2240, align 8
  %2242 = fmul double %2196, %2241
  store double %2242, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %58, align 1, !tbaa !2452
  %2243 = add i64 %2186, -32
  %2244 = add i64 %2883, 81
  store i64 %2244, i64* %PC, align 8
  %2245 = inttoptr i64 %2243 to i64*
  %2246 = load i64, i64* %2245, align 8
  store i64 %2246, i64* %RAX, align 8, !tbaa !2428
  %2247 = load i64, i64* %RBP, align 8
  %2248 = add i64 %2247, -40
  %2249 = add i64 %2883, 84
  store i64 %2249, i64* %PC, align 8
  %2250 = inttoptr i64 %2248 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = add i32 %2251, -1
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RDX, align 8, !tbaa !2428
  %2254 = sext i32 %2252 to i64
  %2255 = shl nsw i64 %2254, 13
  store i64 %2255, i64* %RCX, align 8, !tbaa !2428
  %2256 = lshr i64 %2254, 50
  %2257 = and i64 %2256, 1
  %2258 = add i64 %2255, %2246
  store i64 %2258, i64* %RAX, align 8, !tbaa !2428
  %2259 = icmp ult i64 %2258, %2246
  %2260 = icmp ult i64 %2258, %2255
  %2261 = or i1 %2259, %2260
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %47, align 1, !tbaa !2432
  %2263 = trunc i64 %2258 to i32
  %2264 = and i32 %2263, 255
  %2265 = tail call i32 @llvm.ctpop.i32(i32 %2264) #8
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = xor i8 %2267, 1
  store i8 %2268, i8* %48, align 1, !tbaa !2446
  %2269 = xor i64 %2246, %2258
  %2270 = lshr i64 %2269, 4
  %2271 = trunc i64 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %49, align 1, !tbaa !2450
  %2273 = icmp eq i64 %2258, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %50, align 1, !tbaa !2447
  %2275 = lshr i64 %2258, 63
  %2276 = trunc i64 %2275 to i8
  store i8 %2276, i8* %51, align 1, !tbaa !2448
  %2277 = lshr i64 %2246, 63
  %2278 = xor i64 %2275, %2277
  %2279 = xor i64 %2275, %2257
  %2280 = add nuw nsw i64 %2278, %2279
  %2281 = icmp eq i64 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %52, align 1, !tbaa !2449
  %2283 = load i64, i64* %RBP, align 8
  %2284 = add i64 %2283, -44
  %2285 = add i64 %2883, 101
  store i64 %2285, i64* %PC, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = sext i32 %2287 to i64
  store i64 %2288, i64* %RCX, align 8, !tbaa !2428
  %2289 = shl nsw i64 %2288, 3
  %2290 = add i64 %2289, %2258
  %2291 = add i64 %2883, 106
  store i64 %2291, i64* %PC, align 8
  %2292 = load double, double* %57, align 1
  %2293 = inttoptr i64 %2290 to double*
  %2294 = load double, double* %2293, align 8
  %2295 = fdiv double %2292, %2294
  store double %2295, double* %57, align 1, !tbaa !2452
  %2296 = load double, double* %54, align 1
  %2297 = fsub double %2296, %2295
  store double %2297, double* %54, align 1, !tbaa !2452
  %2298 = add i64 %2283, -16
  %2299 = add i64 %2883, 114
  store i64 %2299, i64* %PC, align 8
  %2300 = inttoptr i64 %2298 to i64*
  %2301 = load i64, i64* %2300, align 8
  store i64 %2301, i64* %RAX, align 8, !tbaa !2428
  %2302 = add i64 %2283, -40
  %2303 = add i64 %2883, 118
  store i64 %2303, i64* %PC, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = sext i32 %2305 to i64
  %2307 = shl nsw i64 %2306, 13
  store i64 %2307, i64* %RCX, align 8, !tbaa !2428
  %2308 = lshr i64 %2306, 50
  %2309 = and i64 %2308, 1
  %2310 = add i64 %2307, %2301
  store i64 %2310, i64* %RAX, align 8, !tbaa !2428
  %2311 = icmp ult i64 %2310, %2301
  %2312 = icmp ult i64 %2310, %2307
  %2313 = or i1 %2311, %2312
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %47, align 1, !tbaa !2432
  %2315 = trunc i64 %2310 to i32
  %2316 = and i32 %2315, 255
  %2317 = tail call i32 @llvm.ctpop.i32(i32 %2316) #8
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  store i8 %2320, i8* %48, align 1, !tbaa !2446
  %2321 = xor i64 %2301, %2310
  %2322 = lshr i64 %2321, 4
  %2323 = trunc i64 %2322 to i8
  %2324 = and i8 %2323, 1
  store i8 %2324, i8* %49, align 1, !tbaa !2450
  %2325 = icmp eq i64 %2310, 0
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %50, align 1, !tbaa !2447
  %2327 = lshr i64 %2310, 63
  %2328 = trunc i64 %2327 to i8
  store i8 %2328, i8* %51, align 1, !tbaa !2448
  %2329 = lshr i64 %2301, 63
  %2330 = xor i64 %2327, %2329
  %2331 = xor i64 %2327, %2309
  %2332 = add nuw nsw i64 %2330, %2331
  %2333 = icmp eq i64 %2332, 2
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %52, align 1, !tbaa !2449
  %2335 = add i64 %2883, 129
  store i64 %2335, i64* %PC, align 8
  %2336 = load i32, i32* %2286, align 4
  %2337 = sext i32 %2336 to i64
  store i64 %2337, i64* %RCX, align 8, !tbaa !2428
  %2338 = shl nsw i64 %2337, 3
  %2339 = add i64 %2338, %2310
  %2340 = add i64 %2883, 134
  store i64 %2340, i64* %PC, align 8
  %2341 = inttoptr i64 %2339 to double*
  store double %2297, double* %2341, align 8
  %2342 = load i64, i64* %RBP, align 8
  %2343 = add i64 %2342, -32
  %2344 = load i64, i64* %PC, align 8
  %2345 = add i64 %2344, 4
  store i64 %2345, i64* %PC, align 8
  %2346 = inttoptr i64 %2343 to i64*
  %2347 = load i64, i64* %2346, align 8
  store i64 %2347, i64* %RAX, align 8, !tbaa !2428
  %2348 = add i64 %2342, -40
  %2349 = add i64 %2344, 8
  store i64 %2349, i64* %PC, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = sext i32 %2351 to i64
  %2353 = shl nsw i64 %2352, 13
  store i64 %2353, i64* %RCX, align 8, !tbaa !2428
  %2354 = lshr i64 %2352, 50
  %2355 = and i64 %2354, 1
  %2356 = add i64 %2353, %2347
  store i64 %2356, i64* %RAX, align 8, !tbaa !2428
  %2357 = icmp ult i64 %2356, %2347
  %2358 = icmp ult i64 %2356, %2353
  %2359 = or i1 %2357, %2358
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %47, align 1, !tbaa !2432
  %2361 = trunc i64 %2356 to i32
  %2362 = and i32 %2361, 255
  %2363 = tail call i32 @llvm.ctpop.i32(i32 %2362) #8
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  %2366 = xor i8 %2365, 1
  store i8 %2366, i8* %48, align 1, !tbaa !2446
  %2367 = xor i64 %2347, %2356
  %2368 = lshr i64 %2367, 4
  %2369 = trunc i64 %2368 to i8
  %2370 = and i8 %2369, 1
  store i8 %2370, i8* %49, align 1, !tbaa !2450
  %2371 = icmp eq i64 %2356, 0
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %50, align 1, !tbaa !2447
  %2373 = lshr i64 %2356, 63
  %2374 = trunc i64 %2373 to i8
  store i8 %2374, i8* %51, align 1, !tbaa !2448
  %2375 = lshr i64 %2347, 63
  %2376 = xor i64 %2373, %2375
  %2377 = xor i64 %2373, %2355
  %2378 = add nuw nsw i64 %2376, %2377
  %2379 = icmp eq i64 %2378, 2
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %52, align 1, !tbaa !2449
  %2381 = add i64 %2342, -44
  %2382 = add i64 %2344, 19
  store i64 %2382, i64* %PC, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = sext i32 %2384 to i64
  store i64 %2385, i64* %RCX, align 8, !tbaa !2428
  %2386 = shl nsw i64 %2385, 3
  %2387 = add i64 %2386, %2356
  %2388 = add i64 %2344, 24
  store i64 %2388, i64* %PC, align 8
  %2389 = inttoptr i64 %2387 to i64*
  %2390 = load i64, i64* %2389, align 8
  %2391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2390, i64* %2391, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %2392 = add i64 %2342, -24
  %2393 = add i64 %2344, 28
  store i64 %2393, i64* %PC, align 8
  %2394 = inttoptr i64 %2392 to i64*
  %2395 = load i64, i64* %2394, align 8
  store i64 %2395, i64* %RAX, align 8, !tbaa !2428
  %2396 = add i64 %2344, 32
  store i64 %2396, i64* %PC, align 8
  %2397 = load i32, i32* %2350, align 4
  %2398 = sext i32 %2397 to i64
  %2399 = shl nsw i64 %2398, 13
  store i64 %2399, i64* %RCX, align 8, !tbaa !2428
  %2400 = lshr i64 %2398, 50
  %2401 = and i64 %2400, 1
  %2402 = add i64 %2399, %2395
  store i64 %2402, i64* %RAX, align 8, !tbaa !2428
  %2403 = icmp ult i64 %2402, %2395
  %2404 = icmp ult i64 %2402, %2399
  %2405 = or i1 %2403, %2404
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %47, align 1, !tbaa !2432
  %2407 = trunc i64 %2402 to i32
  %2408 = and i32 %2407, 255
  %2409 = tail call i32 @llvm.ctpop.i32(i32 %2408) #8
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = xor i8 %2411, 1
  store i8 %2412, i8* %48, align 1, !tbaa !2446
  %2413 = xor i64 %2395, %2402
  %2414 = lshr i64 %2413, 4
  %2415 = trunc i64 %2414 to i8
  %2416 = and i8 %2415, 1
  store i8 %2416, i8* %49, align 1, !tbaa !2450
  %2417 = icmp eq i64 %2402, 0
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %50, align 1, !tbaa !2447
  %2419 = lshr i64 %2402, 63
  %2420 = trunc i64 %2419 to i8
  store i8 %2420, i8* %51, align 1, !tbaa !2448
  %2421 = lshr i64 %2395, 63
  %2422 = xor i64 %2419, %2421
  %2423 = xor i64 %2419, %2401
  %2424 = add nuw nsw i64 %2422, %2423
  %2425 = icmp eq i64 %2424, 2
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %52, align 1, !tbaa !2449
  %2427 = load i64, i64* %RBP, align 8
  %2428 = add i64 %2427, -44
  %2429 = add i64 %2344, 43
  store i64 %2429, i64* %PC, align 8
  %2430 = inttoptr i64 %2428 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = sext i32 %2431 to i64
  store i64 %2432, i64* %RCX, align 8, !tbaa !2428
  %2433 = shl nsw i64 %2432, 3
  %2434 = add i64 %2433, %2402
  %2435 = add i64 %2344, 48
  store i64 %2435, i64* %PC, align 8
  %2436 = inttoptr i64 %2434 to double*
  %2437 = load double, double* %2436, align 8
  store double %2437, double* %57, align 1, !tbaa !2452
  store double 0.000000e+00, double* %59, align 1, !tbaa !2452
  %2438 = add i64 %2427, -24
  %2439 = add i64 %2344, 52
  store i64 %2439, i64* %PC, align 8
  %2440 = inttoptr i64 %2438 to i64*
  %2441 = load i64, i64* %2440, align 8
  store i64 %2441, i64* %RAX, align 8, !tbaa !2428
  %2442 = add i64 %2427, -40
  %2443 = add i64 %2344, 56
  store i64 %2443, i64* %PC, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = sext i32 %2445 to i64
  %2447 = shl nsw i64 %2446, 13
  store i64 %2447, i64* %RCX, align 8, !tbaa !2428
  %2448 = lshr i64 %2446, 50
  %2449 = and i64 %2448, 1
  %2450 = add i64 %2447, %2441
  store i64 %2450, i64* %RAX, align 8, !tbaa !2428
  %2451 = icmp ult i64 %2450, %2441
  %2452 = icmp ult i64 %2450, %2447
  %2453 = or i1 %2451, %2452
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %47, align 1, !tbaa !2432
  %2455 = trunc i64 %2450 to i32
  %2456 = and i32 %2455, 255
  %2457 = tail call i32 @llvm.ctpop.i32(i32 %2456) #8
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  store i8 %2460, i8* %48, align 1, !tbaa !2446
  %2461 = xor i64 %2441, %2450
  %2462 = lshr i64 %2461, 4
  %2463 = trunc i64 %2462 to i8
  %2464 = and i8 %2463, 1
  store i8 %2464, i8* %49, align 1, !tbaa !2450
  %2465 = icmp eq i64 %2450, 0
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %50, align 1, !tbaa !2447
  %2467 = lshr i64 %2450, 63
  %2468 = trunc i64 %2467 to i8
  store i8 %2468, i8* %51, align 1, !tbaa !2448
  %2469 = lshr i64 %2441, 63
  %2470 = xor i64 %2467, %2469
  %2471 = xor i64 %2467, %2449
  %2472 = add nuw nsw i64 %2470, %2471
  %2473 = icmp eq i64 %2472, 2
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %52, align 1, !tbaa !2449
  %2475 = add i64 %2344, 67
  store i64 %2475, i64* %PC, align 8
  %2476 = load i32, i32* %2430, align 4
  %2477 = sext i32 %2476 to i64
  store i64 %2477, i64* %RCX, align 8, !tbaa !2428
  %2478 = shl nsw i64 %2477, 3
  %2479 = add i64 %2478, %2450
  %2480 = add i64 %2344, 72
  store i64 %2480, i64* %PC, align 8
  %2481 = inttoptr i64 %2479 to double*
  %2482 = load double, double* %2481, align 8
  %2483 = fmul double %2437, %2482
  store double %2483, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %58, align 1, !tbaa !2452
  %2484 = add i64 %2427, -32
  %2485 = add i64 %2344, 76
  store i64 %2485, i64* %PC, align 8
  %2486 = inttoptr i64 %2484 to i64*
  %2487 = load i64, i64* %2486, align 8
  store i64 %2487, i64* %RAX, align 8, !tbaa !2428
  %2488 = load i64, i64* %RBP, align 8
  %2489 = add i64 %2488, -40
  %2490 = add i64 %2344, 79
  store i64 %2490, i64* %PC, align 8
  %2491 = inttoptr i64 %2489 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = add i32 %2492, -1
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RDX, align 8, !tbaa !2428
  %2495 = sext i32 %2493 to i64
  %2496 = shl nsw i64 %2495, 13
  store i64 %2496, i64* %RCX, align 8, !tbaa !2428
  %2497 = lshr i64 %2495, 50
  %2498 = and i64 %2497, 1
  %2499 = add i64 %2496, %2487
  store i64 %2499, i64* %RAX, align 8, !tbaa !2428
  %2500 = icmp ult i64 %2499, %2487
  %2501 = icmp ult i64 %2499, %2496
  %2502 = or i1 %2500, %2501
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %47, align 1, !tbaa !2432
  %2504 = trunc i64 %2499 to i32
  %2505 = and i32 %2504, 255
  %2506 = tail call i32 @llvm.ctpop.i32(i32 %2505) #8
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  %2509 = xor i8 %2508, 1
  store i8 %2509, i8* %48, align 1, !tbaa !2446
  %2510 = xor i64 %2487, %2499
  %2511 = lshr i64 %2510, 4
  %2512 = trunc i64 %2511 to i8
  %2513 = and i8 %2512, 1
  store i8 %2513, i8* %49, align 1, !tbaa !2450
  %2514 = icmp eq i64 %2499, 0
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %50, align 1, !tbaa !2447
  %2516 = lshr i64 %2499, 63
  %2517 = trunc i64 %2516 to i8
  store i8 %2517, i8* %51, align 1, !tbaa !2448
  %2518 = lshr i64 %2487, 63
  %2519 = xor i64 %2516, %2518
  %2520 = xor i64 %2516, %2498
  %2521 = add nuw nsw i64 %2519, %2520
  %2522 = icmp eq i64 %2521, 2
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %52, align 1, !tbaa !2449
  %2524 = load i64, i64* %RBP, align 8
  %2525 = add i64 %2524, -44
  %2526 = add i64 %2344, 96
  store i64 %2526, i64* %PC, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = sext i32 %2528 to i64
  store i64 %2529, i64* %RCX, align 8, !tbaa !2428
  %2530 = shl nsw i64 %2529, 3
  %2531 = add i64 %2530, %2499
  %2532 = add i64 %2344, 101
  store i64 %2532, i64* %PC, align 8
  %2533 = load double, double* %57, align 1
  %2534 = inttoptr i64 %2531 to double*
  %2535 = load double, double* %2534, align 8
  %2536 = fdiv double %2533, %2535
  store double %2536, double* %57, align 1, !tbaa !2452
  %2537 = load double, double* %54, align 1
  %2538 = fsub double %2537, %2536
  store double %2538, double* %54, align 1, !tbaa !2452
  %2539 = add i64 %2524, -32
  %2540 = add i64 %2344, 109
  store i64 %2540, i64* %PC, align 8
  %2541 = inttoptr i64 %2539 to i64*
  %2542 = load i64, i64* %2541, align 8
  store i64 %2542, i64* %RAX, align 8, !tbaa !2428
  %2543 = add i64 %2524, -40
  %2544 = add i64 %2344, 113
  store i64 %2544, i64* %PC, align 8
  %2545 = inttoptr i64 %2543 to i32*
  %2546 = load i32, i32* %2545, align 4
  %2547 = sext i32 %2546 to i64
  %2548 = shl nsw i64 %2547, 13
  store i64 %2548, i64* %RCX, align 8, !tbaa !2428
  %2549 = lshr i64 %2547, 50
  %2550 = and i64 %2549, 1
  %2551 = add i64 %2548, %2542
  store i64 %2551, i64* %RAX, align 8, !tbaa !2428
  %2552 = icmp ult i64 %2551, %2542
  %2553 = icmp ult i64 %2551, %2548
  %2554 = or i1 %2552, %2553
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %47, align 1, !tbaa !2432
  %2556 = trunc i64 %2551 to i32
  %2557 = and i32 %2556, 255
  %2558 = tail call i32 @llvm.ctpop.i32(i32 %2557) #8
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  store i8 %2561, i8* %48, align 1, !tbaa !2446
  %2562 = xor i64 %2542, %2551
  %2563 = lshr i64 %2562, 4
  %2564 = trunc i64 %2563 to i8
  %2565 = and i8 %2564, 1
  store i8 %2565, i8* %49, align 1, !tbaa !2450
  %2566 = icmp eq i64 %2551, 0
  %2567 = zext i1 %2566 to i8
  store i8 %2567, i8* %50, align 1, !tbaa !2447
  %2568 = lshr i64 %2551, 63
  %2569 = trunc i64 %2568 to i8
  store i8 %2569, i8* %51, align 1, !tbaa !2448
  %2570 = lshr i64 %2542, 63
  %2571 = xor i64 %2568, %2570
  %2572 = xor i64 %2568, %2550
  %2573 = add nuw nsw i64 %2571, %2572
  %2574 = icmp eq i64 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %52, align 1, !tbaa !2449
  %2576 = add i64 %2344, 124
  store i64 %2576, i64* %PC, align 8
  %2577 = load i32, i32* %2527, align 4
  %2578 = sext i32 %2577 to i64
  store i64 %2578, i64* %RCX, align 8, !tbaa !2428
  %2579 = shl nsw i64 %2578, 3
  %2580 = add i64 %2579, %2551
  %2581 = add i64 %2344, 129
  store i64 %2581, i64* %PC, align 8
  %2582 = inttoptr i64 %2580 to double*
  store double %2538, double* %2582, align 8
  %2583 = load i64, i64* %RBP, align 8
  %2584 = add i64 %2583, -44
  %2585 = load i64, i64* %PC, align 8
  %2586 = add i64 %2585, 3
  store i64 %2586, i64* %PC, align 8
  %2587 = inttoptr i64 %2584 to i32*
  %2588 = load i32, i32* %2587, align 4
  %2589 = add i32 %2588, 1
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RAX, align 8, !tbaa !2428
  %2591 = icmp eq i32 %2588, -1
  %2592 = icmp eq i32 %2589, 0
  %2593 = or i1 %2591, %2592
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %47, align 1, !tbaa !2432
  %2595 = and i32 %2589, 255
  %2596 = tail call i32 @llvm.ctpop.i32(i32 %2595) #8
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  store i8 %2599, i8* %48, align 1, !tbaa !2446
  %2600 = xor i32 %2588, %2589
  %2601 = lshr i32 %2600, 4
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  store i8 %2603, i8* %49, align 1, !tbaa !2450
  %2604 = icmp eq i32 %2589, 0
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %50, align 1, !tbaa !2447
  %2606 = lshr i32 %2589, 31
  %2607 = trunc i32 %2606 to i8
  store i8 %2607, i8* %51, align 1, !tbaa !2448
  %2608 = lshr i32 %2588, 31
  %2609 = xor i32 %2606, %2608
  %2610 = add nuw nsw i32 %2609, %2606
  %2611 = icmp eq i32 %2610, 2
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %52, align 1, !tbaa !2449
  %2613 = add i64 %2585, 9
  store i64 %2613, i64* %PC, align 8
  store i32 %2589, i32* %2587, align 4
  %2614 = load i64, i64* %PC, align 8
  %2615 = add i64 %2614, -284
  store i64 %2615, i64* %53, align 8, !tbaa !2428
  br label %block_400e8c

block_400e5f:                                     ; preds = %block_400d99
  %2616 = add i64 %2655, -40
  %2617 = add i64 %2693, 8
  store i64 %2617, i64* %PC, align 8
  %2618 = inttoptr i64 %2616 to i32*
  %2619 = load i32, i32* %2618, align 4
  %2620 = add i32 %2619, 1
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RAX, align 8, !tbaa !2428
  %2622 = icmp eq i32 %2619, -1
  %2623 = icmp eq i32 %2620, 0
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %47, align 1, !tbaa !2432
  %2626 = and i32 %2620, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626) #8
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %48, align 1, !tbaa !2446
  %2631 = xor i32 %2619, %2620
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %49, align 1, !tbaa !2450
  %2635 = icmp eq i32 %2620, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %50, align 1, !tbaa !2447
  %2637 = lshr i32 %2620, 31
  %2638 = trunc i32 %2637 to i8
  store i8 %2638, i8* %51, align 1, !tbaa !2448
  %2639 = lshr i32 %2619, 31
  %2640 = xor i32 %2637, %2639
  %2641 = add nuw nsw i32 %2640, %2637
  %2642 = icmp eq i32 %2641, 2
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %52, align 1, !tbaa !2449
  %2644 = add i64 %2693, 14
  store i64 %2644, i64* %PC, align 8
  store i32 %2620, i32* %2618, align 4
  %2645 = load i64, i64* %PC, align 8
  %2646 = add i64 %2645, -231
  store i64 %2646, i64* %53, align 8, !tbaa !2428
  br label %block_400d86

block_400d92:                                     ; preds = %block_400d86
  %2647 = add i64 %2926, -44
  %2648 = add i64 %2962, 7
  store i64 %2648, i64* %PC, align 8
  %2649 = inttoptr i64 %2647 to i32*
  store i32 0, i32* %2649, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400d99

block_400e72:                                     ; preds = %block_400d86
  %2650 = add i64 %2962, 7
  store i64 %2650, i64* %PC, align 8
  store i32 1, i32* %2929, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400e79

block_400bb9:                                     ; preds = %block_400bad
  %2651 = add i64 %2695, -40
  %2652 = add i64 %2731, 7
  store i64 %2652, i64* %PC, align 8
  %2653 = inttoptr i64 %2651 to i32*
  store i32 0, i32* %2653, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400bc0

block_400d99:                                     ; preds = %block_400d92, %block_400daa
  %2654 = phi i64 [ %.pre8, %block_400d92 ], [ %666, %block_400daa ]
  %2655 = load i64, i64* %RBP, align 8
  %2656 = add i64 %2655, -44
  %2657 = add i64 %2654, 3
  store i64 %2657, i64* %PC, align 8
  %2658 = inttoptr i64 %2656 to i32*
  %2659 = load i32, i32* %2658, align 4
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RAX, align 8, !tbaa !2428
  %2661 = add i64 %2655, -8
  %2662 = add i64 %2654, 6
  store i64 %2662, i64* %PC, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = add i32 %2664, -2
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RCX, align 8, !tbaa !2428
  %2667 = lshr i32 %2665, 31
  %2668 = sub i32 %2659, %2665
  %2669 = icmp ult i32 %2659, %2665
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %47, align 1, !tbaa !2432
  %2671 = and i32 %2668, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671) #8
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %48, align 1, !tbaa !2446
  %2676 = xor i32 %2665, %2659
  %2677 = xor i32 %2676, %2668
  %2678 = lshr i32 %2677, 4
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  store i8 %2680, i8* %49, align 1, !tbaa !2450
  %2681 = icmp eq i32 %2668, 0
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %50, align 1, !tbaa !2447
  %2683 = lshr i32 %2668, 31
  %2684 = trunc i32 %2683 to i8
  store i8 %2684, i8* %51, align 1, !tbaa !2448
  %2685 = lshr i32 %2659, 31
  %2686 = xor i32 %2667, %2685
  %2687 = xor i32 %2683, %2685
  %2688 = add nuw nsw i32 %2687, %2686
  %2689 = icmp eq i32 %2688, 2
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %52, align 1, !tbaa !2449
  %2691 = icmp ne i8 %2684, 0
  %2692 = xor i1 %2691, %2689
  %.v18 = select i1 %2692, i64 17, i64 198
  %2693 = add i64 %2654, %.v18
  store i64 %2693, i64* %53, align 8, !tbaa !2428
  br i1 %2692, label %block_400daa, label %block_400e5f

block_400bad:                                     ; preds = %block_401128, %block_400b90
  %2694 = phi i64 [ %2104, %block_401128 ], [ %.pre, %block_400b90 ]
  %2695 = load i64, i64* %RBP, align 8
  %2696 = add i64 %2695, -36
  %2697 = add i64 %2694, 3
  store i64 %2697, i64* %PC, align 8
  %2698 = inttoptr i64 %2696 to i32*
  %2699 = load i32, i32* %2698, align 4
  %2700 = zext i32 %2699 to i64
  store i64 %2700, i64* %RAX, align 8, !tbaa !2428
  %2701 = add i64 %2695, -4
  %2702 = add i64 %2694, 6
  store i64 %2702, i64* %PC, align 8
  %2703 = inttoptr i64 %2701 to i32*
  %2704 = load i32, i32* %2703, align 4
  %2705 = sub i32 %2699, %2704
  %2706 = icmp ult i32 %2699, %2704
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %47, align 1, !tbaa !2432
  %2708 = and i32 %2705, 255
  %2709 = tail call i32 @llvm.ctpop.i32(i32 %2708) #8
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  %2712 = xor i8 %2711, 1
  store i8 %2712, i8* %48, align 1, !tbaa !2446
  %2713 = xor i32 %2704, %2699
  %2714 = xor i32 %2713, %2705
  %2715 = lshr i32 %2714, 4
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  store i8 %2717, i8* %49, align 1, !tbaa !2450
  %2718 = icmp eq i32 %2705, 0
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %50, align 1, !tbaa !2447
  %2720 = lshr i32 %2705, 31
  %2721 = trunc i32 %2720 to i8
  store i8 %2721, i8* %51, align 1, !tbaa !2448
  %2722 = lshr i32 %2699, 31
  %2723 = lshr i32 %2704, 31
  %2724 = xor i32 %2723, %2722
  %2725 = xor i32 %2720, %2722
  %2726 = add nuw nsw i32 %2725, %2724
  %2727 = icmp eq i32 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %52, align 1, !tbaa !2449
  %2729 = icmp ne i8 %2721, 0
  %2730 = xor i1 %2729, %2727
  %.v = select i1 %2730, i64 12, i64 1422
  %2731 = add i64 %2694, %.v
  store i64 %2731, i64* %53, align 8, !tbaa !2428
  br i1 %2730, label %block_400bb9, label %block_40113b

block_400fc7:                                     ; preds = %block_400e79, %block_400fd3
  %2732 = phi i64 [ %1256, %block_400fd3 ], [ %.pre11, %block_400e79 ]
  %2733 = load i64, i64* %RBP, align 8
  %2734 = add i64 %2733, -44
  %2735 = add i64 %2732, 3
  store i64 %2735, i64* %PC, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = zext i32 %2737 to i64
  store i64 %2738, i64* %RAX, align 8, !tbaa !2428
  %2739 = add i64 %2733, -8
  %2740 = add i64 %2732, 6
  store i64 %2740, i64* %PC, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = sub i32 %2737, %2742
  %2744 = icmp ult i32 %2737, %2742
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %47, align 1, !tbaa !2432
  %2746 = and i32 %2743, 255
  %2747 = tail call i32 @llvm.ctpop.i32(i32 %2746) #8
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  store i8 %2750, i8* %48, align 1, !tbaa !2446
  %2751 = xor i32 %2742, %2737
  %2752 = xor i32 %2751, %2743
  %2753 = lshr i32 %2752, 4
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  store i8 %2755, i8* %49, align 1, !tbaa !2450
  %2756 = icmp eq i32 %2743, 0
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %50, align 1, !tbaa !2447
  %2758 = lshr i32 %2743, 31
  %2759 = trunc i32 %2758 to i8
  store i8 %2759, i8* %51, align 1, !tbaa !2448
  %2760 = lshr i32 %2737, 31
  %2761 = lshr i32 %2742, 31
  %2762 = xor i32 %2761, %2760
  %2763 = xor i32 %2758, %2760
  %2764 = add nuw nsw i32 %2763, %2762
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %52, align 1, !tbaa !2449
  %2767 = icmp ne i8 %2759, 0
  %2768 = xor i1 %2767, %2765
  %.v21 = select i1 %2768, i64 12, i64 113
  %2769 = add i64 %2732, %.v21
  store i64 %2769, i64* %53, align 8, !tbaa !2428
  br i1 %2768, label %block_400fd3, label %block_401038

block_400d0e:                                     ; preds = %block_400d07, %block_400d1a
  %2770 = phi i64 [ %.pre6, %block_400d07 ], [ %1498, %block_400d1a ]
  %2771 = load i64, i64* %RBP, align 8
  %2772 = add i64 %2771, -40
  %2773 = add i64 %2770, 3
  store i64 %2773, i64* %PC, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %RAX, align 8, !tbaa !2428
  %2777 = add i64 %2771, -8
  %2778 = add i64 %2770, 6
  store i64 %2778, i64* %PC, align 8
  %2779 = inttoptr i64 %2777 to i32*
  %2780 = load i32, i32* %2779, align 4
  %2781 = sub i32 %2775, %2780
  %2782 = icmp ult i32 %2775, %2780
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %47, align 1, !tbaa !2432
  %2784 = and i32 %2781, 255
  %2785 = tail call i32 @llvm.ctpop.i32(i32 %2784) #8
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  store i8 %2788, i8* %48, align 1, !tbaa !2446
  %2789 = xor i32 %2780, %2775
  %2790 = xor i32 %2789, %2781
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  store i8 %2793, i8* %49, align 1, !tbaa !2450
  %2794 = icmp eq i32 %2781, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %50, align 1, !tbaa !2447
  %2796 = lshr i32 %2781, 31
  %2797 = trunc i32 %2796 to i8
  store i8 %2797, i8* %51, align 1, !tbaa !2448
  %2798 = lshr i32 %2775, 31
  %2799 = lshr i32 %2780, 31
  %2800 = xor i32 %2799, %2798
  %2801 = xor i32 %2796, %2798
  %2802 = add nuw nsw i32 %2801, %2800
  %2803 = icmp eq i32 %2802, 2
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %52, align 1, !tbaa !2449
  %2805 = icmp ne i8 %2797, 0
  %2806 = xor i1 %2805, %2803
  %.v16 = select i1 %2806, i64 12, i64 113
  %2807 = add i64 %2770, %.v16
  store i64 %2807, i64* %53, align 8, !tbaa !2428
  br i1 %2806, label %block_400d1a, label %block_400d7f

block_400bd3:                                     ; preds = %block_400bcc, %block_400bdf
  %2808 = phi i64 [ %.pre5, %block_400bcc ], [ %2073, %block_400bdf ]
  %2809 = load i64, i64* %RBP, align 8
  %2810 = add i64 %2809, -44
  %2811 = add i64 %2808, 3
  store i64 %2811, i64* %PC, align 8
  %2812 = inttoptr i64 %2810 to i32*
  %2813 = load i32, i32* %2812, align 4
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RAX, align 8, !tbaa !2428
  %2815 = add i64 %2809, -8
  %2816 = add i64 %2808, 6
  store i64 %2816, i64* %PC, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  %2819 = sub i32 %2813, %2818
  %2820 = icmp ult i32 %2813, %2818
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %47, align 1, !tbaa !2432
  %2822 = and i32 %2819, 255
  %2823 = tail call i32 @llvm.ctpop.i32(i32 %2822) #8
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  %2826 = xor i8 %2825, 1
  store i8 %2826, i8* %48, align 1, !tbaa !2446
  %2827 = xor i32 %2818, %2813
  %2828 = xor i32 %2827, %2819
  %2829 = lshr i32 %2828, 4
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  store i8 %2831, i8* %49, align 1, !tbaa !2450
  %2832 = icmp eq i32 %2819, 0
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %50, align 1, !tbaa !2447
  %2834 = lshr i32 %2819, 31
  %2835 = trunc i32 %2834 to i8
  store i8 %2835, i8* %51, align 1, !tbaa !2448
  %2836 = lshr i32 %2813, 31
  %2837 = lshr i32 %2818, 31
  %2838 = xor i32 %2837, %2836
  %2839 = xor i32 %2834, %2836
  %2840 = add nuw nsw i32 %2839, %2838
  %2841 = icmp eq i32 %2840, 2
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %52, align 1, !tbaa !2449
  %2843 = icmp ne i8 %2835, 0
  %2844 = xor i1 %2843, %2841
  %.v15 = select i1 %2844, i64 12, i64 289
  %2845 = add i64 %2808, %.v15
  store i64 %2845, i64* %53, align 8, !tbaa !2428
  br i1 %2844, label %block_400bdf, label %block_400cf4

block_400e8c:                                     ; preds = %block_400e79, %block_400e98
  %2846 = phi i64 [ %2615, %block_400e98 ], [ %.pre11, %block_400e79 ]
  %2847 = load i64, i64* %RBP, align 8
  %2848 = add i64 %2847, -44
  %2849 = add i64 %2846, 3
  store i64 %2849, i64* %PC, align 8
  %2850 = inttoptr i64 %2848 to i32*
  %2851 = load i32, i32* %2850, align 4
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RAX, align 8, !tbaa !2428
  %2853 = add i64 %2847, -8
  %2854 = add i64 %2846, 6
  store i64 %2854, i64* %PC, align 8
  %2855 = inttoptr i64 %2853 to i32*
  %2856 = load i32, i32* %2855, align 4
  %2857 = sub i32 %2851, %2856
  %2858 = icmp ult i32 %2851, %2856
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %47, align 1, !tbaa !2432
  %2860 = and i32 %2857, 255
  %2861 = tail call i32 @llvm.ctpop.i32(i32 %2860) #8
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  %2864 = xor i8 %2863, 1
  store i8 %2864, i8* %48, align 1, !tbaa !2446
  %2865 = xor i32 %2856, %2851
  %2866 = xor i32 %2865, %2857
  %2867 = lshr i32 %2866, 4
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  store i8 %2869, i8* %49, align 1, !tbaa !2450
  %2870 = icmp eq i32 %2857, 0
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %50, align 1, !tbaa !2447
  %2872 = lshr i32 %2857, 31
  %2873 = trunc i32 %2872 to i8
  store i8 %2873, i8* %51, align 1, !tbaa !2448
  %2874 = lshr i32 %2851, 31
  %2875 = lshr i32 %2856, 31
  %2876 = xor i32 %2875, %2874
  %2877 = xor i32 %2872, %2874
  %2878 = add nuw nsw i32 %2877, %2876
  %2879 = icmp eq i32 %2878, 2
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %52, align 1, !tbaa !2449
  %2881 = icmp ne i8 %2873, 0
  %2882 = xor i1 %2881, %2879
  %.v20 = select i1 %2882, i64 12, i64 289
  %2883 = add i64 %2846, %.v20
  store i64 %2883, i64* %53, align 8, !tbaa !2428
  br i1 %2882, label %block_400e98, label %block_400fad

block_400d07:                                     ; preds = %block_400bc0
  %2884 = add i64 %3075, 7
  store i64 %2884, i64* %PC, align 8
  store i32 0, i32* %3042, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400d0e

block_40103f:                                     ; preds = %block_401115, %block_401038
  %2885 = phi i64 [ %2996, %block_401115 ], [ %.pre12, %block_401038 ]
  %2886 = load i64, i64* %RBP, align 8
  %2887 = add i64 %2886, -40
  %2888 = add i64 %2885, 3
  store i64 %2888, i64* %PC, align 8
  %2889 = inttoptr i64 %2887 to i32*
  %2890 = load i32, i32* %2889, align 4
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RAX, align 8, !tbaa !2428
  %2892 = add i64 %2886, -8
  %2893 = add i64 %2885, 6
  store i64 %2893, i64* %PC, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = add i32 %2895, -2
  %2897 = zext i32 %2896 to i64
  store i64 %2897, i64* %RCX, align 8, !tbaa !2428
  %2898 = lshr i32 %2896, 31
  %2899 = sub i32 %2890, %2896
  %2900 = icmp ult i32 %2890, %2896
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %47, align 1, !tbaa !2432
  %2902 = and i32 %2899, 255
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902) #8
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %48, align 1, !tbaa !2446
  %2907 = xor i32 %2896, %2890
  %2908 = xor i32 %2907, %2899
  %2909 = lshr i32 %2908, 4
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  store i8 %2911, i8* %49, align 1, !tbaa !2450
  %2912 = icmp eq i32 %2899, 0
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %50, align 1, !tbaa !2447
  %2914 = lshr i32 %2899, 31
  %2915 = trunc i32 %2914 to i8
  store i8 %2915, i8* %51, align 1, !tbaa !2448
  %2916 = lshr i32 %2890, 31
  %2917 = xor i32 %2898, %2916
  %2918 = xor i32 %2914, %2916
  %2919 = add nuw nsw i32 %2918, %2917
  %2920 = icmp eq i32 %2919, 2
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %52, align 1, !tbaa !2449
  %2922 = icmp ne i8 %2915, 0
  %2923 = xor i1 %2922, %2920
  %.v22 = select i1 %2923, i64 17, i64 233
  %2924 = add i64 %2885, %.v22
  store i64 %2924, i64* %53, align 8, !tbaa !2428
  br i1 %2923, label %block_401050, label %block_401128

block_400d86:                                     ; preds = %block_400e5f, %block_400d7f
  %2925 = phi i64 [ %2646, %block_400e5f ], [ %.pre7, %block_400d7f ]
  %2926 = load i64, i64* %RBP, align 8
  %2927 = add i64 %2926, -40
  %2928 = add i64 %2925, 3
  store i64 %2928, i64* %PC, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RAX, align 8, !tbaa !2428
  %2932 = add i64 %2926, -8
  %2933 = add i64 %2925, 6
  store i64 %2933, i64* %PC, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = sub i32 %2930, %2935
  %2937 = icmp ult i32 %2930, %2935
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %47, align 1, !tbaa !2432
  %2939 = and i32 %2936, 255
  %2940 = tail call i32 @llvm.ctpop.i32(i32 %2939) #8
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %48, align 1, !tbaa !2446
  %2944 = xor i32 %2935, %2930
  %2945 = xor i32 %2944, %2936
  %2946 = lshr i32 %2945, 4
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  store i8 %2948, i8* %49, align 1, !tbaa !2450
  %2949 = icmp eq i32 %2936, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %50, align 1, !tbaa !2447
  %2951 = lshr i32 %2936, 31
  %2952 = trunc i32 %2951 to i8
  store i8 %2952, i8* %51, align 1, !tbaa !2448
  %2953 = lshr i32 %2930, 31
  %2954 = lshr i32 %2935, 31
  %2955 = xor i32 %2954, %2953
  %2956 = xor i32 %2951, %2953
  %2957 = add nuw nsw i32 %2956, %2955
  %2958 = icmp eq i32 %2957, 2
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %52, align 1, !tbaa !2449
  %2960 = icmp ne i8 %2952, 0
  %2961 = xor i1 %2960, %2958
  %.v17 = select i1 %2961, i64 12, i64 236
  %2962 = add i64 %2925, %.v17
  store i64 %2962, i64* %53, align 8, !tbaa !2428
  br i1 %2961, label %block_400d92, label %block_400e72

block_400bcc:                                     ; preds = %block_400bc0
  %2963 = add i64 %3039, -44
  %2964 = add i64 %3075, 7
  store i64 %2964, i64* %PC, align 8
  %2965 = inttoptr i64 %2963 to i32*
  store i32 1, i32* %2965, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400bd3

block_401115:                                     ; preds = %block_401057
  %2966 = add i64 %70, -40
  %2967 = add i64 %106, 8
  store i64 %2967, i64* %PC, align 8
  %2968 = inttoptr i64 %2966 to i32*
  %2969 = load i32, i32* %2968, align 4
  %2970 = add i32 %2969, 1
  %2971 = zext i32 %2970 to i64
  store i64 %2971, i64* %RAX, align 8, !tbaa !2428
  %2972 = icmp eq i32 %2969, -1
  %2973 = icmp eq i32 %2970, 0
  %2974 = or i1 %2972, %2973
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %47, align 1, !tbaa !2432
  %2976 = and i32 %2970, 255
  %2977 = tail call i32 @llvm.ctpop.i32(i32 %2976) #8
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  store i8 %2980, i8* %48, align 1, !tbaa !2446
  %2981 = xor i32 %2969, %2970
  %2982 = lshr i32 %2981, 4
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  store i8 %2984, i8* %49, align 1, !tbaa !2450
  %2985 = icmp eq i32 %2970, 0
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %50, align 1, !tbaa !2447
  %2987 = lshr i32 %2970, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %51, align 1, !tbaa !2448
  %2989 = lshr i32 %2969, 31
  %2990 = xor i32 %2987, %2989
  %2991 = add nuw nsw i32 %2990, %2987
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %52, align 1, !tbaa !2449
  %2994 = add i64 %106, 14
  store i64 %2994, i64* %PC, align 8
  store i32 %2970, i32* %2968, align 4
  %2995 = load i64, i64* %PC, align 8
  %2996 = add i64 %2995, -228
  store i64 %2996, i64* %53, align 8, !tbaa !2428
  br label %block_40103f

block_400e79:                                     ; preds = %block_400e72, %block_400fad
  %2997 = phi i64 [ %.pre9, %block_400e72 ], [ %175, %block_400fad ]
  %2998 = load i64, i64* %RBP, align 8
  %2999 = add i64 %2998, -40
  %3000 = add i64 %2997, 3
  store i64 %3000, i64* %PC, align 8
  %3001 = inttoptr i64 %2999 to i32*
  %3002 = load i32, i32* %3001, align 4
  %3003 = zext i32 %3002 to i64
  store i64 %3003, i64* %RAX, align 8, !tbaa !2428
  %3004 = add i64 %2998, -8
  %3005 = add i64 %2997, 6
  store i64 %3005, i64* %PC, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = sub i32 %3002, %3007
  %3009 = icmp ult i32 %3002, %3007
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %47, align 1, !tbaa !2432
  %3011 = and i32 %3008, 255
  %3012 = tail call i32 @llvm.ctpop.i32(i32 %3011) #8
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  %3015 = xor i8 %3014, 1
  store i8 %3015, i8* %48, align 1, !tbaa !2446
  %3016 = xor i32 %3007, %3002
  %3017 = xor i32 %3016, %3008
  %3018 = lshr i32 %3017, 4
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  store i8 %3020, i8* %49, align 1, !tbaa !2450
  %3021 = icmp eq i32 %3008, 0
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %50, align 1, !tbaa !2447
  %3023 = lshr i32 %3008, 31
  %3024 = trunc i32 %3023 to i8
  store i8 %3024, i8* %51, align 1, !tbaa !2448
  %3025 = lshr i32 %3002, 31
  %3026 = lshr i32 %3007, 31
  %3027 = xor i32 %3026, %3025
  %3028 = xor i32 %3023, %3025
  %3029 = add nuw nsw i32 %3028, %3027
  %3030 = icmp eq i32 %3029, 2
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %52, align 1, !tbaa !2449
  %3032 = icmp ne i8 %3024, 0
  %3033 = xor i1 %3032, %3030
  %.v19 = select i1 %3033, i64 12, i64 327
  %3034 = add i64 %2997, %.v19
  %3035 = add i64 %2998, -44
  %3036 = add i64 %3034, 7
  store i64 %3036, i64* %PC, align 8
  %3037 = inttoptr i64 %3035 to i32*
  store i32 0, i32* %3037, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br i1 %3033, label %block_400e8c, label %block_400fc7

block_400bc0:                                     ; preds = %block_400bb9, %block_400cf4
  %3038 = phi i64 [ %.pre4, %block_400bb9 ], [ %144, %block_400cf4 ]
  %3039 = load i64, i64* %RBP, align 8
  %3040 = add i64 %3039, -40
  %3041 = add i64 %3038, 3
  store i64 %3041, i64* %PC, align 8
  %3042 = inttoptr i64 %3040 to i32*
  %3043 = load i32, i32* %3042, align 4
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RAX, align 8, !tbaa !2428
  %3045 = add i64 %3039, -8
  %3046 = add i64 %3038, 6
  store i64 %3046, i64* %PC, align 8
  %3047 = inttoptr i64 %3045 to i32*
  %3048 = load i32, i32* %3047, align 4
  %3049 = sub i32 %3043, %3048
  %3050 = icmp ult i32 %3043, %3048
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %47, align 1, !tbaa !2432
  %3052 = and i32 %3049, 255
  %3053 = tail call i32 @llvm.ctpop.i32(i32 %3052) #8
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  store i8 %3056, i8* %48, align 1, !tbaa !2446
  %3057 = xor i32 %3048, %3043
  %3058 = xor i32 %3057, %3049
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  store i8 %3061, i8* %49, align 1, !tbaa !2450
  %3062 = icmp eq i32 %3049, 0
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %50, align 1, !tbaa !2447
  %3064 = lshr i32 %3049, 31
  %3065 = trunc i32 %3064 to i8
  store i8 %3065, i8* %51, align 1, !tbaa !2448
  %3066 = lshr i32 %3043, 31
  %3067 = lshr i32 %3048, 31
  %3068 = xor i32 %3067, %3066
  %3069 = xor i32 %3064, %3066
  %3070 = add nuw nsw i32 %3069, %3068
  %3071 = icmp eq i32 %3070, 2
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %52, align 1, !tbaa !2449
  %3073 = icmp ne i8 %3065, 0
  %3074 = xor i1 %3073, %3071
  %.v14 = select i1 %3074, i64 12, i64 327
  %3075 = add i64 %3038, %.v14
  store i64 %3075, i64* %53, align 8, !tbaa !2428
  br i1 %3074, label %block_400bcc, label %block_400d07
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
