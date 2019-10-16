; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4015a0__rodata_type = type <{ [32 x i8], [7 x i8], [51 x i8], [8 x i8], [76 x i8] }>
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
@seg_4015a0__rodata = internal constant %seg_4015a0__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [8 x i8] c"%0.2lf \00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400720_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006f0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
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
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401590___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401520___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

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

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #6

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400720_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
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
  %14 = tail call %struct.Memory* @sub_4007e0_rtclock(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_401594__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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
define %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %14 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_4007e0_rtclock(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
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
  %53 = tail call fastcc %struct.Memory* @ext_6020f8_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
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
  br label %block_400762

block_40076e:                                     ; preds = %block_400762
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
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #10
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
  br label %block_400762

block_400793:                                     ; preds = %block_400762
  store i64 %203, i64* %RDI, align 8, !tbaa !2428
  %124 = add i64 %199, -451
  %125 = add i64 %199, 12
  %126 = load i64, i64* %RSP, align 8, !tbaa !2428
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  %129 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %130 = load i64, i64* %RSP, align 8
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %130, 32
  store i64 %132, i64* %RSP, align 8, !tbaa !2428
  %133 = icmp ugt i64 %130, -33
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %13, align 1, !tbaa !2432
  %135 = trunc i64 %132 to i32
  %136 = and i32 %135, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #10
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

block_400762:                                     ; preds = %block_40076e, %block_400730
  %162 = phi i64 [ %123, %block_40076e ], [ %.pre, %block_400730 ]
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
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #10
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
  br i1 %198, label %block_40076e, label %block_400793
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %10 = sub i64 %8, ptrtoint (i64* @stderr to i64)
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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
  br i1 %29, label %block_4006e8, label %block_4006d3

block_4006d3:                                     ; preds = %block_4006b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_4006e8

block_4006e8:                                     ; preds = %block_4006d3, %block_4006b0
  %35 = phi i64 [ %34, %block_4006d3 ], [ %33, %block_4006b0 ]
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005a8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4005a8:
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
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4005ba, label %block_4005b8

block_4005b8:                                     ; preds = %block_4005a8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005ba

block_4005ba:                                     ; preds = %block_4005b8, %block_4005a8
  %27 = phi i64 [ %22, %block_4005a8 ], [ %.pre1, %block_4005b8 ]
  %28 = phi i64 [ %4, %block_4005a8 ], [ %.pre, %block_4005b8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005a8 ], [ %26, %block_4005b8 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #10
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401140_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401140:
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
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #10
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
  %43 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 8) to i64*), align 8
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %45, align 1, !tbaa !2452
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %47 = bitcast i64* %46 to double*
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %48 = add i64 %10, -16
  %49 = load i32, i32* %EDI, align 4
  %50 = add i64 %13, 18
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -12
  %54 = load i32, i32* %ESI, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RDX, align 8
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %RCX, align 8
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -48
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 5
  store i64 %73, i64* %PC, align 8
  %74 = load i64, i64* %45, align 1
  %75 = inttoptr i64 %71 to i64*
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -36
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80, align 4
  %81 = bitcast %union.VectorReg* %7 to i8*
  %82 = bitcast %union.VectorReg* %7 to i32*
  %83 = getelementptr inbounds i8, i8* %81, i64 4
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %86 = bitcast i64* %85 to i32*
  %87 = getelementptr inbounds i8, i8* %81, i64 12
  %88 = bitcast i8* %87 to i32*
  %89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %90 = bitcast [32 x %union.VectorReg]* %6 to i32*
  %91 = getelementptr inbounds i8, i8* %43, i64 4
  %92 = bitcast i8* %91 to i32*
  %93 = bitcast i64* %46 to i32*
  %94 = getelementptr inbounds i8, i8* %43, i64 12
  %95 = bitcast i8* %94 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40116a

block_40116a:                                     ; preds = %block_401245, %block_401140
  %96 = phi i64 [ %.pre, %block_401140 ], [ %498, %block_401245 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401140 ], [ %MEMORY.1, %block_401245 ]
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
  store i8 %109, i8* %17, align 1, !tbaa !2432
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #10
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
  %.v27 = select i1 %132, i64 12, i64 238
  %133 = add i64 %96, %.v27
  store i64 %133, i64* %PC, align 8, !tbaa !2428
  br i1 %132, label %block_401176, label %block_401258

block_401258:                                     ; preds = %block_40116a
  %134 = add i64 %97, -4
  %135 = add i64 %133, 7
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 1, i32* %136, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_40125f

block_401176:                                     ; preds = %block_40116a
  %137 = add i64 %97, -40
  %138 = add i64 %133, 7
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 0, i32* %139, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_40117d

block_40117d:                                     ; preds = %block_401232, %block_401176
  %140 = phi i64 [ %.pre24, %block_401176 ], [ %263, %block_401232 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_401176 ], [ %424, %block_401232 ]
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
  store i8 %153, i8* %17, align 1, !tbaa !2432
  %154 = and i32 %151, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #10
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %24, align 1, !tbaa !2446
  %159 = xor i32 %150, %145
  %160 = xor i32 %159, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %30, align 1, !tbaa !2447
  %164 = icmp eq i32 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %33, align 1, !tbaa !2448
  %166 = lshr i32 %151, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %36, align 1, !tbaa !2449
  %168 = lshr i32 %145, 31
  %169 = lshr i32 %150, 31
  %170 = xor i32 %169, %168
  %171 = xor i32 %166, %168
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %42, align 1, !tbaa !2450
  %175 = icmp ne i8 %167, 0
  %176 = xor i1 %175, %173
  %.v = select i1 %176, i64 12, i64 200
  %177 = add i64 %140, %.v
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  br i1 %176, label %block_401189, label %block_401245

block_4011ed:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 98), i64* %RSI, align 8, !tbaa !2428
  %178 = load i64, i64* @stderr, align 32
  store i64 %178, i64* %RDI, align 8, !tbaa !2428
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -36
  %181 = add i64 %429, 21
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RDX, align 8, !tbaa !2428
  %185 = add i64 %179, -40
  %186 = add i64 %429, 24
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RCX, align 8, !tbaa !2428
  %190 = add i64 %179, -56
  %191 = add i64 %429, 29
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %195 = add i64 %429, 33
  store i64 %195, i64* %PC, align 8
  %196 = load i32, i32* %182, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %194, align 8, !tbaa !2428
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %199 = add i64 %429, 37
  store i64 %199, i64* %PC, align 8
  %200 = load i32, i32* %187, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %198, align 8, !tbaa !2428
  %202 = add i64 %179, -64
  %203 = add i64 %429, 42
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %89, align 1, !tbaa !2452
  %206 = bitcast i64* %85 to double*
  store double 0.000000e+00, double* %206, align 1, !tbaa !2452
  %207 = add i64 %179, -48
  %208 = add i64 %429, 47
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %210, i64* %211, align 1, !tbaa !2452
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %213 = bitcast i64* %212 to double*
  store double 0.000000e+00, double* %213, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %214 = add i64 %429, -3053
  %215 = add i64 %429, 54
  %216 = load i64, i64* %RSP, align 8, !tbaa !2428
  %217 = add i64 %216, -8
  %218 = inttoptr i64 %217 to i64*
  store i64 %215, i64* %218, align 8
  store i64 %217, i64* %RSP, align 8, !tbaa !2428
  store i64 %214, i64* %PC, align 8, !tbaa !2428
  %219 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %424)
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -4
  %222 = load i64, i64* %PC, align 8
  %223 = add i64 %222, 7
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %221 to i32*
  store i32 0, i32* %224, align 4
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -76
  %227 = load i32, i32* %EAX, align 4
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %230, align 4
  %231 = load i64, i64* %PC, align 8
  %232 = add i64 %231, 50
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br label %block_40125f

block_401232:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %233 = load i64, i64* %RBP, align 8
  %234 = add i64 %233, -40
  %235 = add i64 %429, 8
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = add i32 %237, 1
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX, align 8, !tbaa !2428
  %240 = icmp eq i32 %237, -1
  %241 = icmp eq i32 %238, 0
  %242 = or i1 %240, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %17, align 1, !tbaa !2432
  %244 = and i32 %238, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #10
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %24, align 1, !tbaa !2446
  %249 = xor i32 %238, %237
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %30, align 1, !tbaa !2447
  %253 = zext i1 %241 to i8
  store i8 %253, i8* %33, align 1, !tbaa !2448
  %254 = lshr i32 %238, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %36, align 1, !tbaa !2449
  %256 = lshr i32 %237, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %254
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %42, align 1, !tbaa !2450
  %261 = add i64 %429, 14
  store i64 %261, i64* %PC, align 8
  store i32 %238, i32* %236, align 4
  %262 = load i64, i64* %PC, align 8
  %263 = add i64 %262, -195
  store i64 %263, i64* %PC, align 8, !tbaa !2428
  br label %block_40117d

block_401189:                                     ; preds = %block_40117d
  %264 = add i64 %141, -24
  %265 = add i64 %177, 4
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = add i64 %141, -36
  %269 = add i64 %177, 8
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = shl nsw i64 %272, 12
  store i64 %273, i64* %RCX, align 8, !tbaa !2428
  %274 = add i64 %273, %267
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = icmp ult i64 %274, %267
  %276 = icmp ult i64 %274, %273
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
  store i8 %288, i8* %30, align 1, !tbaa !2447
  %289 = icmp eq i64 %274, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %33, align 1, !tbaa !2448
  %291 = lshr i64 %274, 63
  %292 = trunc i64 %291 to i8
  store i8 %292, i8* %36, align 1, !tbaa !2449
  %293 = lshr i64 %267, 63
  %294 = lshr i64 %272, 51
  %295 = and i64 %294, 1
  %296 = xor i64 %291, %293
  %297 = xor i64 %291, %295
  %298 = add nuw nsw i64 %296, %297
  %299 = icmp eq i64 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %42, align 1, !tbaa !2450
  %301 = add i64 %177, 19
  store i64 %301, i64* %PC, align 8
  %302 = load i32, i32* %144, align 4
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %RCX, align 8, !tbaa !2428
  %304 = shl nsw i64 %303, 3
  %305 = add i64 %304, %274
  %306 = add i64 %177, 24
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %309 = add i64 %141, -56
  %310 = add i64 %177, 29
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i64*
  store i64 %308, i64* %311, align 8
  %312 = load i64, i64* %RBP, align 8
  %313 = add i64 %312, -32
  %314 = load i64, i64* %PC, align 8
  %315 = add i64 %314, 4
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %313 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RAX, align 8, !tbaa !2428
  %318 = add i64 %312, -36
  %319 = add i64 %314, 8
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 12
  store i64 %323, i64* %RCX, align 8, !tbaa !2428
  %324 = add i64 %323, %317
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = icmp ult i64 %324, %317
  %326 = icmp ult i64 %324, %323
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %17, align 1, !tbaa !2432
  %329 = trunc i64 %324 to i32
  %330 = and i32 %329, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #10
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %24, align 1, !tbaa !2446
  %335 = xor i64 %317, %324
  %336 = lshr i64 %335, 4
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %30, align 1, !tbaa !2447
  %339 = icmp eq i64 %324, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %33, align 1, !tbaa !2448
  %341 = lshr i64 %324, 63
  %342 = trunc i64 %341 to i8
  store i8 %342, i8* %36, align 1, !tbaa !2449
  %343 = lshr i64 %317, 63
  %344 = lshr i64 %322, 51
  %345 = and i64 %344, 1
  %346 = xor i64 %341, %343
  %347 = xor i64 %341, %345
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %42, align 1, !tbaa !2450
  %351 = add i64 %312, -40
  %352 = add i64 %314, 19
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RCX, align 8, !tbaa !2428
  %356 = shl nsw i64 %355, 3
  %357 = add i64 %356, %324
  %358 = add i64 %314, 24
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %361 = add i64 %312, -64
  %362 = add i64 %314, 29
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i64*
  store i64 %360, i64* %363, align 8
  %364 = load i64, i64* %RBP, align 8
  %365 = add i64 %364, -56
  %366 = load i64, i64* %PC, align 8
  %367 = add i64 %366, 5
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %370 = add i64 %364, -64
  %371 = add i64 %366, 10
  store i64 %371, i64* %PC, align 8
  %372 = bitcast i64 %369 to double
  %373 = inttoptr i64 %370 to double*
  %374 = load double, double* %373, align 8
  %375 = fsub double %372, %374
  %376 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 16) to i32*), align 16
  %377 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 20) to i32*), align 4
  %378 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 24) to i32*), align 8
  %379 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 28) to i32*), align 4
  store i32 %376, i32* %82, align 1, !tbaa !2455
  store i32 %377, i32* %84, align 1, !tbaa !2455
  store i32 %378, i32* %86, align 1, !tbaa !2455
  store i32 %379, i32* %88, align 1, !tbaa !2455
  %380 = bitcast double %375 to i64
  %381 = load i64, i64* %89, align 1
  %382 = and i64 %381, %380
  %383 = trunc i64 %382 to i32
  %384 = lshr i64 %382, 32
  %385 = trunc i64 %384 to i32
  store i32 %383, i32* %90, align 1, !tbaa !2451
  store i32 %385, i32* %92, align 1, !tbaa !2451
  store i32 0, i32* %93, align 1, !tbaa !2451
  store i32 0, i32* %95, align 1, !tbaa !2451
  %386 = add i64 %364, -72
  %387 = add i64 %366, 26
  store i64 %387, i64* %PC, align 8
  %388 = load i64, i64* %45, align 1
  %389 = inttoptr i64 %386 to i64*
  store i64 %388, i64* %389, align 8
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -72
  %392 = load i64, i64* %PC, align 8
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %396 = add i64 %390, -48
  %397 = add i64 %392, 10
  store i64 %397, i64* %PC, align 8
  %398 = bitcast i64 %395 to double
  %399 = inttoptr i64 %396 to double*
  %400 = load double, double* %399, align 8
  %401 = fcmp uno double %398, %400
  br i1 %401, label %402, label %412

; <label>:402:                                    ; preds = %block_401189
  %403 = fadd double %398, %400
  %404 = bitcast double %403 to i64
  %405 = and i64 %404, 9221120237041090560
  %406 = icmp eq i64 %405, 9218868437227405312
  %407 = and i64 %404, 2251799813685247
  %408 = icmp ne i64 %407, 0
  %409 = and i1 %406, %408
  br i1 %409, label %410, label %418

; <label>:410:                                    ; preds = %402
  %411 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %397, %struct.Memory* %MEMORY.1) #15
  %.pre25 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:412:                                    ; preds = %block_401189
  %413 = fcmp ogt double %398, %400
  br i1 %413, label %418, label %414

; <label>:414:                                    ; preds = %412
  %415 = fcmp olt double %398, %400
  br i1 %415, label %418, label %416

; <label>:416:                                    ; preds = %414
  %417 = fcmp oeq double %398, %400
  br i1 %417, label %418, label %422

; <label>:418:                                    ; preds = %416, %414, %412, %402
  %419 = phi i8 [ 0, %412 ], [ 0, %414 ], [ 1, %416 ], [ 1, %402 ]
  %420 = phi i8 [ 0, %412 ], [ 0, %414 ], [ 0, %416 ], [ 1, %402 ]
  %421 = phi i8 [ 0, %412 ], [ 1, %414 ], [ 0, %416 ], [ 1, %402 ]
  store i8 %419, i8* %33, align 1, !tbaa !2454
  store i8 %420, i8* %24, align 1, !tbaa !2454
  store i8 %421, i8* %17, align 1, !tbaa !2454
  br label %422

; <label>:422:                                    ; preds = %418, %416
  store i8 0, i8* %42, align 1, !tbaa !2454
  store i8 0, i8* %36, align 1, !tbaa !2454
  store i8 0, i8* %30, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %422, %410
  %423 = phi i64 [ %.pre25, %410 ], [ %397, %422 ]
  %424 = phi %struct.Memory* [ %411, %410 ], [ %MEMORY.1, %422 ]
  %425 = load i8, i8* %17, align 1, !tbaa !2432
  %426 = load i8, i8* %33, align 1, !tbaa !2448
  %427 = or i8 %426, %425
  %428 = icmp ne i8 %427, 0
  %.v39 = select i1 %428, i64 75, i64 6
  %429 = add i64 %423, %.v39
  store i64 %429, i64* %PC, align 8, !tbaa !2428
  br i1 %428, label %block_401232, label %block_4011ed

block_40125f:                                     ; preds = %block_4011ed, %block_401258
  %430 = phi i64 [ %.pre26, %block_401258 ], [ %232, %block_4011ed ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401258 ], [ %219, %block_4011ed ]
  %431 = load i64, i64* %RBP, align 8
  %432 = add i64 %431, -4
  %433 = add i64 %430, 3
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %437 = load i64, i64* %RSP, align 8
  %438 = add i64 %437, 80
  store i64 %438, i64* %RSP, align 8, !tbaa !2428
  %439 = icmp ugt i64 %437, -81
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %17, align 1, !tbaa !2432
  %441 = trunc i64 %438 to i32
  %442 = and i32 %441, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442) #10
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %24, align 1, !tbaa !2446
  %447 = xor i64 %437, 16
  %448 = xor i64 %447, %438
  %449 = lshr i64 %448, 4
  %450 = trunc i64 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %30, align 1, !tbaa !2447
  %452 = icmp eq i64 %438, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %33, align 1, !tbaa !2448
  %454 = lshr i64 %438, 63
  %455 = trunc i64 %454 to i8
  store i8 %455, i8* %36, align 1, !tbaa !2449
  %456 = lshr i64 %437, 63
  %457 = xor i64 %454, %456
  %458 = add nuw nsw i64 %457, %454
  %459 = icmp eq i64 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %42, align 1, !tbaa !2450
  %461 = add i64 %430, 8
  store i64 %461, i64* %PC, align 8
  %462 = add i64 %437, 88
  %463 = inttoptr i64 %438 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RBP, align 8, !tbaa !2428
  store i64 %462, i64* %RSP, align 8, !tbaa !2428
  %465 = add i64 %430, 9
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %462 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %PC, align 8, !tbaa !2428
  %468 = add i64 %437, 96
  store i64 %468, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_401245:                                     ; preds = %block_40117d
  %469 = add i64 %141, -36
  %470 = add i64 %177, 8
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = add i32 %472, 1
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RAX, align 8, !tbaa !2428
  %475 = icmp eq i32 %472, -1
  %476 = icmp eq i32 %473, 0
  %477 = or i1 %475, %476
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %17, align 1, !tbaa !2432
  %479 = and i32 %473, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479) #10
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %24, align 1, !tbaa !2446
  %484 = xor i32 %473, %472
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %30, align 1, !tbaa !2447
  %488 = zext i1 %476 to i8
  store i8 %488, i8* %33, align 1, !tbaa !2448
  %489 = lshr i32 %473, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %36, align 1, !tbaa !2449
  %491 = lshr i32 %472, 31
  %492 = xor i32 %489, %491
  %493 = add nuw nsw i32 %492, %489
  %494 = icmp eq i32 %493, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %42, align 1, !tbaa !2450
  %496 = add i64 %177, 14
  store i64 %496, i64* %PC, align 8
  store i32 %473, i32* %471, align 4
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, -233
  store i64 %498, i64* %PC, align 8, !tbaa !2428
  br label %block_40116a
}

; Function Attrs: noinline nounwind
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #10
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
  %63 = add i64 %38, -3987
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4005a8__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #10
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
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #10
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #10
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
define %struct.Memory* @sub_4007e0_rtclock(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
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
define %struct.Memory* @sub_401270_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401270:
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
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -104
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 96
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
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2449
  %36 = lshr i64 %11, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2450
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
  %71 = add i64 %70, -36
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401291

block_4013f8:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4013dc
  %79 = phi i64 [ %938, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre30, %block_4013dc ]
  %MEMORY.0 = phi %struct.Memory* [ %928, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %195, %block_4013dc ]
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -40
  %82 = add i64 %79, 8
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = icmp eq i32 %84, -1
  %88 = icmp eq i32 %85, 0
  %89 = or i1 %87, %88
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %17, align 1, !tbaa !2432
  %91 = and i32 %85, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91) #10
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %24, align 1, !tbaa !2446
  %96 = xor i32 %85, %84
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %29, align 1, !tbaa !2447
  %100 = zext i1 %88 to i8
  store i8 %100, i8* %32, align 1, !tbaa !2448
  %101 = lshr i32 %85, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %35, align 1, !tbaa !2449
  %103 = lshr i32 %84, 31
  %104 = xor i32 %101, %103
  %105 = add nuw nsw i32 %104, %101
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %41, align 1, !tbaa !2450
  %108 = add i64 %79, 14
  store i64 %108, i64* %PC, align 8
  store i32 %85, i32* %83, align 4
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, -138
  store i64 %110, i64* %PC, align 8, !tbaa !2428
  br label %block_40137c

block_4014f6:                                     ; preds = %block_401441
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %111 = load i64, i64* @stderr, align 32
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %112 = add i64 %828, -3830
  %113 = add i64 %828, 25
  %114 = load i64, i64* %RSP, align 8, !tbaa !2428
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  store i64 %115, i64* %RSP, align 8, !tbaa !2428
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  %117 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.8)
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -88
  %120 = load i32, i32* %EAX, align 4
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %119 to i32*
  store i32 %120, i32* %123, align 4
  %124 = load i64, i64* %RSP, align 8
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %124, 96
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  %127 = icmp ugt i64 %124, -97
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %17, align 1, !tbaa !2432
  %129 = trunc i64 %126 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #10
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %24, align 1, !tbaa !2446
  %135 = xor i64 %126, %124
  %136 = lshr i64 %135, 4
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %29, align 1, !tbaa !2447
  %139 = icmp eq i64 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %32, align 1, !tbaa !2448
  %141 = lshr i64 %126, 63
  %142 = trunc i64 %141 to i8
  store i8 %142, i8* %35, align 1, !tbaa !2449
  %143 = lshr i64 %124, 63
  %144 = xor i64 %141, %143
  %145 = add nuw nsw i64 %144, %141
  %146 = icmp eq i64 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %41, align 1, !tbaa !2450
  %148 = add i64 %125, 5
  store i64 %148, i64* %PC, align 8
  %149 = add i64 %124, 104
  %150 = inttoptr i64 %126 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RBP, align 8, !tbaa !2428
  store i64 %149, i64* %RSP, align 8, !tbaa !2428
  %152 = add i64 %125, 6
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %149 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %PC, align 8, !tbaa !2428
  %155 = add i64 %124, 112
  store i64 %155, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %117

block_401375:                                     ; preds = %block_401369
  %156 = add i64 %334, -40
  %157 = add i64 %370, 7
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i32*
  store i32 0, i32* %158, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_40137c

block_4014e3:                                     ; preds = %block_401454
  %159 = add i64 %203, -36
  %160 = add i64 %239, 8
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, 1
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  %165 = icmp eq i32 %162, -1
  %166 = icmp eq i32 %163, 0
  %167 = or i1 %165, %166
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %17, align 1, !tbaa !2432
  %169 = and i32 %163, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169) #10
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %24, align 1, !tbaa !2446
  %174 = xor i32 %163, %162
  %175 = lshr i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %29, align 1, !tbaa !2447
  %178 = zext i1 %166 to i8
  store i8 %178, i8* %32, align 1, !tbaa !2448
  %179 = lshr i32 %163, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %35, align 1, !tbaa !2449
  %181 = lshr i32 %162, 31
  %182 = xor i32 %179, %181
  %183 = add nuw nsw i32 %182, %179
  %184 = icmp eq i32 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %41, align 1, !tbaa !2450
  %186 = add i64 %239, 14
  store i64 %186, i64* %PC, align 8
  store i32 %163, i32* %161, align 4
  %187 = load i64, i64* %PC, align 8
  %188 = add i64 %187, -176
  store i64 %188, i64* %PC, align 8, !tbaa !2428
  br label %block_401441

block_4013dc:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %189 = load i64, i64* @stderr, align 32
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %190 = add i64 %938, -3548
  %191 = add i64 %938, 25
  %192 = load i64, i64* %RSP, align 8, !tbaa !2428
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %RSP, align 8, !tbaa !2428
  store i64 %190, i64* %PC, align 8, !tbaa !2428
  %195 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %928)
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -68
  %198 = load i32, i32* %EAX, align 4
  %199 = load i64, i64* %PC, align 8
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %197 to i32*
  store i32 %198, i32* %201, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_4013f8

block_401454:                                     ; preds = %block_40144d, %block_4014d0
  %202 = phi i64 [ %.pre23, %block_40144d ], [ %271, %block_4014d0 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.8, %block_40144d ], [ %MEMORY.2, %block_4014d0 ]
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -40
  %205 = add i64 %202, 3
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  %209 = add i64 %203, -8
  %210 = add i64 %202, 6
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sub i32 %207, %212
  %214 = icmp ult i32 %207, %212
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %17, align 1, !tbaa !2432
  %216 = and i32 %213, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #10
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %24, align 1, !tbaa !2446
  %221 = xor i32 %212, %207
  %222 = xor i32 %221, %213
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %29, align 1, !tbaa !2447
  %226 = icmp eq i32 %213, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %32, align 1, !tbaa !2448
  %228 = lshr i32 %213, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %35, align 1, !tbaa !2449
  %230 = lshr i32 %207, 31
  %231 = lshr i32 %212, 31
  %232 = xor i32 %231, %230
  %233 = xor i32 %228, %230
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %41, align 1, !tbaa !2450
  %237 = icmp ne i8 %229, 0
  %238 = xor i1 %237, %235
  %.v = select i1 %238, i64 12, i64 143
  %239 = add i64 %202, %.v
  store i64 %239, i64* %PC, align 8, !tbaa !2428
  br i1 %238, label %block_401460, label %block_4014e3

block_4014d0:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1, %block_4014b4
  %240 = phi i64 [ %590, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %.pre26, %block_4014b4 ]
  %MEMORY.2 = phi %struct.Memory* [ %580, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %296, %block_4014b4 ]
  %241 = load i64, i64* %RBP, align 8
  %242 = add i64 %241, -40
  %243 = add i64 %240, 8
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = add i32 %245, 1
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = icmp eq i32 %245, -1
  %249 = icmp eq i32 %246, 0
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %17, align 1, !tbaa !2432
  %252 = and i32 %246, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #10
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %24, align 1, !tbaa !2446
  %257 = xor i32 %246, %245
  %258 = lshr i32 %257, 4
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %29, align 1, !tbaa !2447
  %261 = zext i1 %249 to i8
  store i8 %261, i8* %32, align 1, !tbaa !2448
  %262 = lshr i32 %246, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %35, align 1, !tbaa !2449
  %264 = lshr i32 %245, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %262
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %41, align 1, !tbaa !2450
  %269 = add i64 %240, 14
  store i64 %269, i64* %PC, align 8
  store i32 %246, i32* %244, align 4
  %270 = load i64, i64* %PC, align 8
  %271 = add i64 %270, -138
  store i64 %271, i64* %PC, align 8, !tbaa !2428
  br label %block_401454

block_401346:                                     ; preds = %block_401291
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %272 = load i64, i64* @stderr, align 32
  store i64 %272, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %273 = add i64 %722, -3398
  %274 = add i64 %722, 25
  %275 = load i64, i64* %RSP, align 8, !tbaa !2428
  %276 = add i64 %275, -8
  %277 = inttoptr i64 %276 to i64*
  store i64 %274, i64* %277, align 8
  store i64 %276, i64* %RSP, align 8, !tbaa !2428
  store i64 %273, i64* %PC, align 8, !tbaa !2428
  %278 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %279 = load i64, i64* %RBP, align 8
  %280 = add i64 %279, -36
  %281 = load i64, i64* %PC, align 8
  %282 = add i64 %281, 7
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %280 to i32*
  store i32 0, i32* %283, align 4
  %284 = load i64, i64* %RBP, align 8
  %285 = add i64 %284, -56
  %286 = load i32, i32* %EAX, align 4
  %287 = load i64, i64* %PC, align 8
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %285 to i32*
  store i32 %286, i32* %289, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_401369

block_4014b4:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %290 = load i64, i64* @stderr, align 32
  store i64 %290, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %291 = add i64 %590, -3764
  %292 = add i64 %590, 25
  %293 = load i64, i64* %RSP, align 8, !tbaa !2428
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %292, i64* %295, align 8
  store i64 %294, i64* %RSP, align 8, !tbaa !2428
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  %296 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %580)
  %297 = load i64, i64* %RBP, align 8
  %298 = add i64 %297, -84
  %299 = load i32, i32* %EAX, align 4
  %300 = load i64, i64* %PC, align 8
  %301 = add i64 %300, 3
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %298 to i32*
  store i32 %299, i32* %302, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_4014d0

block_401333:                                     ; preds = %block_4012a4
  %303 = add i64 %592, -36
  %304 = add i64 %628, 8
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = add i32 %306, 1
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = icmp eq i32 %306, -1
  %310 = icmp eq i32 %307, 0
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %17, align 1, !tbaa !2432
  %313 = and i32 %307, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #10
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %24, align 1, !tbaa !2446
  %318 = xor i32 %307, %306
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %29, align 1, !tbaa !2447
  %322 = zext i1 %310 to i8
  store i8 %322, i8* %32, align 1, !tbaa !2448
  %323 = lshr i32 %307, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %35, align 1, !tbaa !2449
  %325 = lshr i32 %306, 31
  %326 = xor i32 %323, %325
  %327 = add nuw nsw i32 %326, %323
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %41, align 1, !tbaa !2450
  %330 = add i64 %628, 14
  store i64 %330, i64* %PC, align 8
  store i32 %307, i32* %305, align 4
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, -176
  store i64 %332, i64* %PC, align 8, !tbaa !2428
  br label %block_401291

block_401369:                                     ; preds = %block_40140b, %block_401346
  %333 = phi i64 [ %.pre21, %block_401346 ], [ %790, %block_40140b ]
  %MEMORY.3 = phi %struct.Memory* [ %278, %block_401346 ], [ %MEMORY.7, %block_40140b ]
  %334 = load i64, i64* %RBP, align 8
  %335 = add i64 %334, -36
  %336 = add i64 %333, 3
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX, align 8, !tbaa !2428
  %340 = add i64 %334, -8
  %341 = add i64 %333, 6
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = sub i32 %338, %343
  %345 = icmp ult i32 %338, %343
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %17, align 1, !tbaa !2432
  %347 = and i32 %344, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347) #10
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %24, align 1, !tbaa !2446
  %352 = xor i32 %343, %338
  %353 = xor i32 %352, %344
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %29, align 1, !tbaa !2447
  %357 = icmp eq i32 %344, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %32, align 1, !tbaa !2448
  %359 = lshr i32 %344, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %35, align 1, !tbaa !2449
  %361 = lshr i32 %338, 31
  %362 = lshr i32 %343, 31
  %363 = xor i32 %362, %361
  %364 = xor i32 %359, %361
  %365 = add nuw nsw i32 %364, %363
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %41, align 1, !tbaa !2450
  %368 = icmp ne i8 %360, 0
  %369 = xor i1 %368, %366
  %.v38 = select i1 %369, i64 12, i64 181
  %370 = add i64 %333, %.v38
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  br i1 %369, label %block_401375, label %block_40141e

block_4012b0:                                     ; preds = %block_4012a4
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %371 = load i64, i64* @stderr, align 32
  store i64 %371, i64* %RDI, align 8, !tbaa !2428
  %372 = add i64 %592, -16
  %373 = add i64 %628, 22
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = add i64 %592, -36
  %377 = add i64 %628, 26
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = shl nsw i64 %380, 12
  store i64 %381, i64* %RCX, align 8, !tbaa !2428
  %382 = add i64 %381, %375
  store i64 %382, i64* %RAX, align 8, !tbaa !2428
  %383 = icmp ult i64 %382, %375
  %384 = icmp ult i64 %382, %381
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %17, align 1, !tbaa !2432
  %387 = trunc i64 %382 to i32
  %388 = and i32 %387, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388) #10
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %24, align 1, !tbaa !2446
  %393 = xor i64 %375, %382
  %394 = lshr i64 %393, 4
  %395 = trunc i64 %394 to i8
  %396 = and i8 %395, 1
  store i8 %396, i8* %29, align 1, !tbaa !2447
  %397 = icmp eq i64 %382, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %32, align 1, !tbaa !2448
  %399 = lshr i64 %382, 63
  %400 = trunc i64 %399 to i8
  store i8 %400, i8* %35, align 1, !tbaa !2449
  %401 = lshr i64 %375, 63
  %402 = lshr i64 %380, 51
  %403 = and i64 %402, 1
  %404 = xor i64 %399, %401
  %405 = xor i64 %399, %403
  %406 = add nuw nsw i64 %404, %405
  %407 = icmp eq i64 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %41, align 1, !tbaa !2450
  %409 = add i64 %628, 37
  store i64 %409, i64* %PC, align 8
  %410 = load i32, i32* %595, align 4
  %411 = sext i32 %410 to i64
  store i64 %411, i64* %RCX, align 8, !tbaa !2428
  %412 = shl nsw i64 %411, 3
  %413 = add i64 %412, %382
  %414 = add i64 %628, 42
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %417 = add i64 %628, -3248
  %418 = add i64 %628, 49
  %419 = load i64, i64* %RSP, align 8, !tbaa !2428
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %418, i64* %421, align 8
  store i64 %420, i64* %RSP, align 8, !tbaa !2428
  store i64 %417, i64* %PC, align 8, !tbaa !2428
  %422 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %423 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -36
  %426 = add i64 %423, 9
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %R8, align 8, !tbaa !2428
  %430 = add i64 %424, -44
  %431 = load i32, i32* %EAX, align 4
  %432 = add i64 %423, 12
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %430 to i32*
  store i32 %431, i32* %433, align 4
  %434 = load i32, i32* %R8D, align 4
  %435 = zext i32 %434 to i64
  %436 = load i64, i64* %PC, align 8
  store i64 %435, i64* %RAX, align 8, !tbaa !2428
  %437 = load i64, i64* %RBP, align 8
  %438 = add i64 %437, -48
  %439 = load i32, i32* %EDX, align 4
  %440 = add i64 %436, 6
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %438 to i32*
  store i32 %439, i32* %441, align 4
  %442 = load i64, i64* %PC, align 8
  %443 = load i32, i32* %EAX, align 8, !tbaa !2451
  %444 = sext i32 %443 to i64
  %445 = lshr i64 %444, 32
  store i64 %445, i64* %78, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP, align 8
  %447 = add i64 %446, -48
  %448 = add i64 %442, 5
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i32*
  %450 = load i32, i32* %449, align 4
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %R8, align 8, !tbaa !2428
  %452 = add i64 %442, 8
  store i64 %452, i64* %PC, align 8
  %453 = zext i32 %443 to i64
  %454 = sext i32 %450 to i64
  %455 = shl nuw i64 %445, 32
  %456 = or i64 %455, %453
  %457 = sdiv i64 %456, %454
  %458 = shl i64 %457, 32
  %459 = ashr exact i64 %458, 32
  %460 = icmp eq i64 %457, %459
  br i1 %460, label %463, label %461

; <label>:461:                                    ; preds = %block_4012b0
  %462 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %452, %struct.Memory* %422) #15
  %.pre32 = load i32, i32* %EDX, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:463:                                    ; preds = %block_4012b0
  %464 = srem i64 %456, %454
  %465 = and i64 %457, 4294967295
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = and i64 %464, 4294967295
  store i64 %466, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %467 = trunc i64 %464 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %463, %461
  %468 = phi i64 [ %.pre33, %461 ], [ %452, %463 ]
  %469 = phi i32 [ %.pre32, %461 ], [ %467, %463 ]
  %470 = phi %struct.Memory* [ %462, %461 ], [ %422, %463 ]
  store i8 0, i8* %17, align 1, !tbaa !2432
  %471 = and i32 %469, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #10
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %476 = icmp eq i32 %469, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %32, align 1, !tbaa !2448
  %478 = lshr i32 %469, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v42 = select i1 %476, i64 9, i64 37
  %480 = add i64 %468, %.v42
  store i64 %480, i64* %PC, align 8, !tbaa !2428
  br i1 %476, label %block_401304, label %block_401320

block_401460:                                     ; preds = %block_401454
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %481 = load i64, i64* @stderr, align 32
  store i64 %481, i64* %RDI, align 8, !tbaa !2428
  %482 = add i64 %203, -32
  %483 = add i64 %239, 22
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RAX, align 8, !tbaa !2428
  %486 = add i64 %203, -36
  %487 = add i64 %239, 26
  store i64 %487, i64* %PC, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = shl nsw i64 %490, 12
  store i64 %491, i64* %RCX, align 8, !tbaa !2428
  %492 = add i64 %491, %485
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = icmp ult i64 %492, %485
  %494 = icmp ult i64 %492, %491
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %17, align 1, !tbaa !2432
  %497 = trunc i64 %492 to i32
  %498 = and i32 %497, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498) #10
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %24, align 1, !tbaa !2446
  %503 = xor i64 %485, %492
  %504 = lshr i64 %503, 4
  %505 = trunc i64 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %29, align 1, !tbaa !2447
  %507 = icmp eq i64 %492, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %32, align 1, !tbaa !2448
  %509 = lshr i64 %492, 63
  %510 = trunc i64 %509 to i8
  store i8 %510, i8* %35, align 1, !tbaa !2449
  %511 = lshr i64 %485, 63
  %512 = lshr i64 %490, 51
  %513 = and i64 %512, 1
  %514 = xor i64 %509, %511
  %515 = xor i64 %509, %513
  %516 = add nuw nsw i64 %514, %515
  %517 = icmp eq i64 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %41, align 1, !tbaa !2450
  %519 = add i64 %239, 37
  store i64 %519, i64* %PC, align 8
  %520 = load i32, i32* %206, align 4
  %521 = sext i32 %520 to i64
  store i64 %521, i64* %RCX, align 8, !tbaa !2428
  %522 = shl nsw i64 %521, 3
  %523 = add i64 %522, %492
  %524 = add i64 %239, 42
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %523 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %527 = add i64 %239, -3680
  %528 = add i64 %239, 49
  %529 = load i64, i64* %RSP, align 8, !tbaa !2428
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %528, i64* %531, align 8
  store i64 %530, i64* %RSP, align 8, !tbaa !2428
  store i64 %527, i64* %PC, align 8, !tbaa !2428
  %532 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %533 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %534 = load i64, i64* %RBP, align 8
  %535 = add i64 %534, -36
  %536 = add i64 %533, 9
  store i64 %536, i64* %PC, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %R8, align 8, !tbaa !2428
  %540 = add i64 %534, -76
  %541 = load i32, i32* %EAX, align 4
  %542 = add i64 %533, 12
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %540 to i32*
  store i32 %541, i32* %543, align 4
  %544 = load i32, i32* %R8D, align 4
  %545 = zext i32 %544 to i64
  %546 = load i64, i64* %PC, align 8
  store i64 %545, i64* %RAX, align 8, !tbaa !2428
  %547 = load i64, i64* %RBP, align 8
  %548 = add i64 %547, -80
  %549 = load i32, i32* %EDX, align 4
  %550 = add i64 %546, 6
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %548 to i32*
  store i32 %549, i32* %551, align 4
  %552 = load i64, i64* %PC, align 8
  %553 = load i32, i32* %EAX, align 8, !tbaa !2451
  %554 = sext i32 %553 to i64
  %555 = lshr i64 %554, 32
  store i64 %555, i64* %78, align 8, !tbaa !2428
  %556 = load i64, i64* %RBP, align 8
  %557 = add i64 %556, -80
  %558 = add i64 %552, 5
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %R8, align 8, !tbaa !2428
  %562 = add i64 %552, 8
  store i64 %562, i64* %PC, align 8
  %563 = zext i32 %553 to i64
  %564 = sext i32 %560 to i64
  %565 = shl nuw i64 %555, 32
  %566 = or i64 %565, %563
  %567 = sdiv i64 %566, %564
  %568 = shl i64 %567, 32
  %569 = ashr exact i64 %568, 32
  %570 = icmp eq i64 %567, %569
  br i1 %570, label %573, label %571

; <label>:571:                                    ; preds = %block_401460
  %572 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %562, %struct.Memory* %532) #15
  %.pre24 = load i32, i32* %EDX, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:573:                                    ; preds = %block_401460
  %574 = srem i64 %566, %564
  %575 = and i64 %567, 4294967295
  store i64 %575, i64* %RAX, align 8, !tbaa !2428
  %576 = and i64 %574, 4294967295
  store i64 %576, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %577 = trunc i64 %574 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %573, %571
  %578 = phi i64 [ %.pre25, %571 ], [ %562, %573 ]
  %579 = phi i32 [ %.pre24, %571 ], [ %577, %573 ]
  %580 = phi %struct.Memory* [ %572, %571 ], [ %532, %573 ]
  store i8 0, i8* %17, align 1, !tbaa !2432
  %581 = and i32 %579, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581) #10
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %586 = icmp eq i32 %579, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %32, align 1, !tbaa !2448
  %588 = lshr i32 %579, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v40 = select i1 %586, i64 9, i64 37
  %590 = add i64 %578, %.v40
  store i64 %590, i64* %PC, align 8, !tbaa !2428
  br i1 %586, label %block_4014b4, label %block_4014d0

block_4012a4:                                     ; preds = %block_40129d, %block_401320
  %591 = phi i64 [ %.pre31, %block_40129d ], [ %660, %block_401320 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.6, %block_40129d ], [ %MEMORY.5, %block_401320 ]
  %592 = load i64, i64* %RBP, align 8
  %593 = add i64 %592, -40
  %594 = add i64 %591, 3
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RAX, align 8, !tbaa !2428
  %598 = add i64 %592, -8
  %599 = add i64 %591, 6
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sub i32 %596, %601
  %603 = icmp ult i32 %596, %601
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %17, align 1, !tbaa !2432
  %605 = and i32 %602, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605) #10
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %24, align 1, !tbaa !2446
  %610 = xor i32 %601, %596
  %611 = xor i32 %610, %602
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %29, align 1, !tbaa !2447
  %615 = icmp eq i32 %602, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %32, align 1, !tbaa !2448
  %617 = lshr i32 %602, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %35, align 1, !tbaa !2449
  %619 = lshr i32 %596, 31
  %620 = lshr i32 %601, 31
  %621 = xor i32 %620, %619
  %622 = xor i32 %617, %619
  %623 = add nuw nsw i32 %622, %621
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %41, align 1, !tbaa !2450
  %626 = icmp ne i8 %618, 0
  %627 = xor i1 %626, %624
  %.v36 = select i1 %627, i64 12, i64 143
  %628 = add i64 %591, %.v36
  store i64 %628, i64* %PC, align 8, !tbaa !2428
  br i1 %627, label %block_4012b0, label %block_401333

block_401320:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2, %block_401304
  %629 = phi i64 [ %480, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %.pre34, %block_401304 ]
  %MEMORY.5 = phi %struct.Memory* [ %470, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %945, %block_401304 ]
  %630 = load i64, i64* %RBP, align 8
  %631 = add i64 %630, -40
  %632 = add i64 %629, 8
  store i64 %632, i64* %PC, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = add i32 %634, 1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX, align 8, !tbaa !2428
  %637 = icmp eq i32 %634, -1
  %638 = icmp eq i32 %635, 0
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %17, align 1, !tbaa !2432
  %641 = and i32 %635, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641) #10
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %24, align 1, !tbaa !2446
  %646 = xor i32 %635, %634
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %29, align 1, !tbaa !2447
  %650 = zext i1 %638 to i8
  store i8 %650, i8* %32, align 1, !tbaa !2448
  %651 = lshr i32 %635, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %35, align 1, !tbaa !2449
  %653 = lshr i32 %634, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %651
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %41, align 1, !tbaa !2450
  %658 = add i64 %629, 14
  store i64 %658, i64* %PC, align 8
  store i32 %635, i32* %633, align 4
  %659 = load i64, i64* %PC, align 8
  %660 = add i64 %659, -138
  store i64 %660, i64* %PC, align 8, !tbaa !2428
  br label %block_4012a4

block_40141e:                                     ; preds = %block_401369
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %661 = load i64, i64* @stderr, align 32
  store i64 %661, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %662 = add i64 %370, -3614
  %663 = add i64 %370, 25
  %664 = load i64, i64* %RSP, align 8, !tbaa !2428
  %665 = add i64 %664, -8
  %666 = inttoptr i64 %665 to i64*
  store i64 %663, i64* %666, align 8
  store i64 %665, i64* %RSP, align 8, !tbaa !2428
  store i64 %662, i64* %PC, align 8, !tbaa !2428
  %667 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %668 = load i64, i64* %RBP, align 8
  %669 = add i64 %668, -36
  %670 = load i64, i64* %PC, align 8
  %671 = add i64 %670, 7
  store i64 %671, i64* %PC, align 8
  %672 = inttoptr i64 %669 to i32*
  store i32 0, i32* %672, align 4
  %673 = load i64, i64* %RBP, align 8
  %674 = add i64 %673, -72
  %675 = load i32, i32* %EAX, align 4
  %676 = load i64, i64* %PC, align 8
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %674 to i32*
  store i32 %675, i32* %678, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_401441

block_40129d:                                     ; preds = %block_401291
  %679 = add i64 %686, -40
  %680 = add i64 %722, 7
  store i64 %680, i64* %PC, align 8
  %681 = inttoptr i64 %679 to i32*
  store i32 0, i32* %681, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_4012a4

block_40144d:                                     ; preds = %block_401441
  %682 = add i64 %792, -40
  %683 = add i64 %828, 7
  store i64 %683, i64* %PC, align 8
  %684 = inttoptr i64 %682 to i32*
  store i32 0, i32* %684, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_401454

block_401291:                                     ; preds = %block_401333, %block_401270
  %685 = phi i64 [ %.pre, %block_401270 ], [ %332, %block_401333 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_401270 ], [ %MEMORY.4, %block_401333 ]
  %686 = load i64, i64* %RBP, align 8
  %687 = add i64 %686, -36
  %688 = add i64 %685, 3
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX, align 8, !tbaa !2428
  %692 = add i64 %686, -4
  %693 = add i64 %685, 6
  store i64 %693, i64* %PC, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sub i32 %690, %695
  %697 = icmp ult i32 %690, %695
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %17, align 1, !tbaa !2432
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699) #10
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %24, align 1, !tbaa !2446
  %704 = xor i32 %695, %690
  %705 = xor i32 %704, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %29, align 1, !tbaa !2447
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %32, align 1, !tbaa !2448
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %35, align 1, !tbaa !2449
  %713 = lshr i32 %690, 31
  %714 = lshr i32 %695, 31
  %715 = xor i32 %714, %713
  %716 = xor i32 %711, %713
  %717 = add nuw nsw i32 %716, %715
  %718 = icmp eq i32 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %41, align 1, !tbaa !2450
  %720 = icmp ne i8 %712, 0
  %721 = xor i1 %720, %718
  %.v37 = select i1 %721, i64 12, i64 181
  %722 = add i64 %685, %.v37
  store i64 %722, i64* %PC, align 8, !tbaa !2428
  br i1 %721, label %block_40129d, label %block_401346

block_40137c:                                     ; preds = %block_401375, %block_4013f8
  %723 = phi i64 [ %.pre27, %block_401375 ], [ %110, %block_4013f8 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.3, %block_401375 ], [ %MEMORY.0, %block_4013f8 ]
  %724 = load i64, i64* %RBP, align 8
  %725 = add i64 %724, -40
  %726 = add i64 %723, 3
  store i64 %726, i64* %PC, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX, align 8, !tbaa !2428
  %730 = add i64 %724, -8
  %731 = add i64 %723, 6
  store i64 %731, i64* %PC, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sub i32 %728, %733
  %735 = icmp ult i32 %728, %733
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %17, align 1, !tbaa !2432
  %737 = and i32 %734, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737) #10
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %24, align 1, !tbaa !2446
  %742 = xor i32 %733, %728
  %743 = xor i32 %742, %734
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %29, align 1, !tbaa !2447
  %747 = icmp eq i32 %734, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %32, align 1, !tbaa !2448
  %749 = lshr i32 %734, 31
  %750 = trunc i32 %749 to i8
  store i8 %750, i8* %35, align 1, !tbaa !2449
  %751 = lshr i32 %728, 31
  %752 = lshr i32 %733, 31
  %753 = xor i32 %752, %751
  %754 = xor i32 %749, %751
  %755 = add nuw nsw i32 %754, %753
  %756 = icmp eq i32 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %41, align 1, !tbaa !2450
  %758 = icmp ne i8 %750, 0
  %759 = xor i1 %758, %756
  %.v35 = select i1 %759, i64 12, i64 143
  %760 = add i64 %723, %.v35
  store i64 %760, i64* %PC, align 8, !tbaa !2428
  br i1 %759, label %block_401388, label %block_40140b

block_40140b:                                     ; preds = %block_40137c
  %761 = add i64 %724, -36
  %762 = add i64 %760, 8
  store i64 %762, i64* %PC, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = add i32 %764, 1
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RAX, align 8, !tbaa !2428
  %767 = icmp eq i32 %764, -1
  %768 = icmp eq i32 %765, 0
  %769 = or i1 %767, %768
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %17, align 1, !tbaa !2432
  %771 = and i32 %765, 255
  %772 = tail call i32 @llvm.ctpop.i32(i32 %771) #10
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %24, align 1, !tbaa !2446
  %776 = xor i32 %765, %764
  %777 = lshr i32 %776, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %29, align 1, !tbaa !2447
  %780 = zext i1 %768 to i8
  store i8 %780, i8* %32, align 1, !tbaa !2448
  %781 = lshr i32 %765, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %35, align 1, !tbaa !2449
  %783 = lshr i32 %764, 31
  %784 = xor i32 %781, %783
  %785 = add nuw nsw i32 %784, %781
  %786 = icmp eq i32 %785, 2
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %41, align 1, !tbaa !2450
  %788 = add i64 %760, 14
  store i64 %788, i64* %PC, align 8
  store i32 %765, i32* %763, align 4
  %789 = load i64, i64* %PC, align 8
  %790 = add i64 %789, -176
  store i64 %790, i64* %PC, align 8, !tbaa !2428
  br label %block_401369

block_401441:                                     ; preds = %block_40141e, %block_4014e3
  %791 = phi i64 [ %.pre22, %block_40141e ], [ %188, %block_4014e3 ]
  %MEMORY.8 = phi %struct.Memory* [ %667, %block_40141e ], [ %MEMORY.1, %block_4014e3 ]
  %792 = load i64, i64* %RBP, align 8
  %793 = add i64 %792, -36
  %794 = add i64 %791, 3
  store i64 %794, i64* %PC, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RAX, align 8, !tbaa !2428
  %798 = add i64 %792, -4
  %799 = add i64 %791, 6
  store i64 %799, i64* %PC, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = sub i32 %796, %801
  %803 = icmp ult i32 %796, %801
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %17, align 1, !tbaa !2432
  %805 = and i32 %802, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805) #10
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %24, align 1, !tbaa !2446
  %810 = xor i32 %801, %796
  %811 = xor i32 %810, %802
  %812 = lshr i32 %811, 4
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %29, align 1, !tbaa !2447
  %815 = icmp eq i32 %802, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %32, align 1, !tbaa !2448
  %817 = lshr i32 %802, 31
  %818 = trunc i32 %817 to i8
  store i8 %818, i8* %35, align 1, !tbaa !2449
  %819 = lshr i32 %796, 31
  %820 = lshr i32 %801, 31
  %821 = xor i32 %820, %819
  %822 = xor i32 %817, %819
  %823 = add nuw nsw i32 %822, %821
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %41, align 1, !tbaa !2450
  %826 = icmp ne i8 %818, 0
  %827 = xor i1 %826, %824
  %.v39 = select i1 %827, i64 12, i64 181
  %828 = add i64 %791, %.v39
  store i64 %828, i64* %PC, align 8, !tbaa !2428
  br i1 %827, label %block_40144d, label %block_4014f6

block_401388:                                     ; preds = %block_40137c
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %829 = load i64, i64* @stderr, align 32
  store i64 %829, i64* %RDI, align 8, !tbaa !2428
  %830 = add i64 %724, -24
  %831 = add i64 %760, 22
  store i64 %831, i64* %PC, align 8
  %832 = inttoptr i64 %830 to i64*
  %833 = load i64, i64* %832, align 8
  store i64 %833, i64* %RAX, align 8, !tbaa !2428
  %834 = add i64 %724, -36
  %835 = add i64 %760, 26
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = sext i32 %837 to i64
  %839 = shl nsw i64 %838, 12
  store i64 %839, i64* %RCX, align 8, !tbaa !2428
  %840 = add i64 %839, %833
  store i64 %840, i64* %RAX, align 8, !tbaa !2428
  %841 = icmp ult i64 %840, %833
  %842 = icmp ult i64 %840, %839
  %843 = or i1 %841, %842
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %17, align 1, !tbaa !2432
  %845 = trunc i64 %840 to i32
  %846 = and i32 %845, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846) #10
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %24, align 1, !tbaa !2446
  %851 = xor i64 %833, %840
  %852 = lshr i64 %851, 4
  %853 = trunc i64 %852 to i8
  %854 = and i8 %853, 1
  store i8 %854, i8* %29, align 1, !tbaa !2447
  %855 = icmp eq i64 %840, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %32, align 1, !tbaa !2448
  %857 = lshr i64 %840, 63
  %858 = trunc i64 %857 to i8
  store i8 %858, i8* %35, align 1, !tbaa !2449
  %859 = lshr i64 %833, 63
  %860 = lshr i64 %838, 51
  %861 = and i64 %860, 1
  %862 = xor i64 %857, %859
  %863 = xor i64 %857, %861
  %864 = add nuw nsw i64 %862, %863
  %865 = icmp eq i64 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %41, align 1, !tbaa !2450
  %867 = add i64 %760, 37
  store i64 %867, i64* %PC, align 8
  %868 = load i32, i32* %727, align 4
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %RCX, align 8, !tbaa !2428
  %870 = shl nsw i64 %869, 3
  %871 = add i64 %870, %840
  %872 = add i64 %760, 42
  store i64 %872, i64* %PC, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %875 = add i64 %760, -3464
  %876 = add i64 %760, 49
  %877 = load i64, i64* %RSP, align 8, !tbaa !2428
  %878 = add i64 %877, -8
  %879 = inttoptr i64 %878 to i64*
  store i64 %876, i64* %879, align 8
  store i64 %878, i64* %RSP, align 8, !tbaa !2428
  store i64 %875, i64* %PC, align 8, !tbaa !2428
  %880 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.7)
  %881 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %882 = load i64, i64* %RBP, align 8
  %883 = add i64 %882, -36
  %884 = add i64 %881, 9
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %R8, align 8, !tbaa !2428
  %888 = add i64 %882, -60
  %889 = load i32, i32* %EAX, align 4
  %890 = add i64 %881, 12
  store i64 %890, i64* %PC, align 8
  %891 = inttoptr i64 %888 to i32*
  store i32 %889, i32* %891, align 4
  %892 = load i32, i32* %R8D, align 4
  %893 = zext i32 %892 to i64
  %894 = load i64, i64* %PC, align 8
  store i64 %893, i64* %RAX, align 8, !tbaa !2428
  %895 = load i64, i64* %RBP, align 8
  %896 = add i64 %895, -64
  %897 = load i32, i32* %EDX, align 4
  %898 = add i64 %894, 6
  store i64 %898, i64* %PC, align 8
  %899 = inttoptr i64 %896 to i32*
  store i32 %897, i32* %899, align 4
  %900 = load i64, i64* %PC, align 8
  %901 = load i32, i32* %EAX, align 8, !tbaa !2451
  %902 = sext i32 %901 to i64
  %903 = lshr i64 %902, 32
  store i64 %903, i64* %78, align 8, !tbaa !2428
  %904 = load i64, i64* %RBP, align 8
  %905 = add i64 %904, -64
  %906 = add i64 %900, 5
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %R8, align 8, !tbaa !2428
  %910 = add i64 %900, 8
  store i64 %910, i64* %PC, align 8
  %911 = zext i32 %901 to i64
  %912 = sext i32 %908 to i64
  %913 = shl nuw i64 %903, 32
  %914 = or i64 %913, %911
  %915 = sdiv i64 %914, %912
  %916 = shl i64 %915, 32
  %917 = ashr exact i64 %916, 32
  %918 = icmp eq i64 %915, %917
  br i1 %918, label %921, label %919

; <label>:919:                                    ; preds = %block_401388
  %920 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %910, %struct.Memory* %880) #15
  %.pre28 = load i32, i32* %EDX, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:921:                                    ; preds = %block_401388
  %922 = srem i64 %914, %912
  %923 = and i64 %915, 4294967295
  store i64 %923, i64* %RAX, align 8, !tbaa !2428
  %924 = and i64 %922, 4294967295
  store i64 %924, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %925 = trunc i64 %922 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %921, %919
  %926 = phi i64 [ %.pre29, %919 ], [ %910, %921 ]
  %927 = phi i32 [ %.pre28, %919 ], [ %925, %921 ]
  %928 = phi %struct.Memory* [ %920, %919 ], [ %880, %921 ]
  store i8 0, i8* %17, align 1, !tbaa !2432
  %929 = and i32 %927, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929) #10
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %934 = icmp eq i32 %927, 0
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %32, align 1, !tbaa !2448
  %936 = lshr i32 %927, 31
  %937 = trunc i32 %936 to i8
  store i8 %937, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v41 = select i1 %934, i64 9, i64 37
  %938 = add i64 %926, %.v41
  store i64 %938, i64* %PC, align 8, !tbaa !2428
  br i1 %934, label %block_4013dc, label %block_4013f8

block_401304:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %939 = load i64, i64* @stderr, align 32
  store i64 %939, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %940 = add i64 %480, -3332
  %941 = add i64 %480, 25
  %942 = load i64, i64* %RSP, align 8, !tbaa !2428
  %943 = add i64 %942, -8
  %944 = inttoptr i64 %943 to i64*
  store i64 %941, i64* %944, align 8
  store i64 %943, i64* %RSP, align 8, !tbaa !2428
  store i64 %940, i64* %PC, align 8, !tbaa !2428
  %945 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %470)
  %946 = load i64, i64* %RBP, align 8
  %947 = add i64 %946, -52
  %948 = load i32, i32* %EAX, align 4
  %949 = load i64, i64* %PC, align 8
  %950 = add i64 %949, 3
  store i64 %950, i64* %PC, align 8
  %951 = inttoptr i64 %947 to i32*
  store i32 %948, i32* %951, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_401320
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b00_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400b00:
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
  br label %block_400b1d

block_400b1d:                                     ; preds = %block_400bbf, %block_400b00
  %55 = phi i64 [ %284, %block_400bbf ], [ %.pre, %block_400b00 ]
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -36
  %58 = add i64 %55, 3
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RAX, align 8, !tbaa !2428
  %62 = add i64 %56, -4
  %63 = add i64 %55, 6
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %60, %65
  %67 = icmp ult i32 %60, %65
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %47, align 1, !tbaa !2432
  %69 = and i32 %66, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #10
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %48, align 1, !tbaa !2446
  %74 = xor i32 %65, %60
  %75 = xor i32 %74, %66
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %49, align 1, !tbaa !2447
  %79 = icmp eq i32 %66, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %50, align 1, !tbaa !2448
  %81 = lshr i32 %66, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %51, align 1, !tbaa !2449
  %83 = lshr i32 %60, 31
  %84 = lshr i32 %65, 31
  %85 = xor i32 %84, %83
  %86 = xor i32 %81, %83
  %87 = add nuw nsw i32 %86, %85
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %52, align 1, !tbaa !2450
  %90 = icmp ne i8 %82, 0
  %91 = xor i1 %90, %88
  %.v24 = select i1 %91, i64 12, i64 181
  %92 = add i64 %55, %.v24
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  br i1 %91, label %block_400b29, label %block_400bd2

block_400bd9:                                     ; preds = %block_400c43, %block_400bd2
  %93 = phi i64 [ %583, %block_400c43 ], [ %.pre20, %block_400bd2 ]
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
  store i8 %106, i8* %47, align 1, !tbaa !2432
  %107 = and i32 %104, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #10
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %48, align 1, !tbaa !2446
  %112 = xor i32 %103, %98
  %113 = xor i32 %112, %104
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %49, align 1, !tbaa !2447
  %117 = icmp eq i32 %104, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %50, align 1, !tbaa !2448
  %119 = lshr i32 %104, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %51, align 1, !tbaa !2449
  %121 = lshr i32 %98, 31
  %122 = lshr i32 %103, 31
  %123 = xor i32 %122, %121
  %124 = xor i32 %119, %121
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %52, align 1, !tbaa !2450
  %128 = icmp ne i8 %120, 0
  %129 = xor i1 %128, %126
  %.v25 = select i1 %129, i64 12, i64 125
  %130 = add i64 %93, %.v25
  store i64 %130, i64* %PC, align 8, !tbaa !2428
  br i1 %129, label %block_400be5, label %block_400c56

block_400bf8:                                     ; preds = %block_400bec
  %131 = add i64 %361, 5
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %362 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = sitofp i32 %133 to double
  store double %134, double* %53, align 1, !tbaa !2452
  %135 = add i64 %361, 8
  store i64 %135, i64* %PC, align 8
  %136 = load i32, i32* %328, align 4
  %137 = add i32 %136, 2
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = icmp ugt i32 %136, -3
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %47, align 1, !tbaa !2432
  %141 = and i32 %137, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #10
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %48, align 1, !tbaa !2446
  %146 = xor i32 %137, %136
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %49, align 1, !tbaa !2447
  %150 = icmp eq i32 %137, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %50, align 1, !tbaa !2448
  %152 = lshr i32 %137, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %51, align 1, !tbaa !2449
  %154 = lshr i32 %136, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %152
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %52, align 1, !tbaa !2450
  %159 = sitofp i32 %137 to double
  store double %159, double* %54, align 1, !tbaa !2452
  %160 = fmul double %159, %134
  store double %160, double* %53, align 1, !tbaa !2452
  %161 = add i64 %361, 24
  store i64 %161, i64* %PC, align 8
  %162 = load i32, i32* %333, align 4
  %163 = sitofp i32 %162 to double
  store double %163, double* %54, align 1, !tbaa !2452
  %164 = fadd double %163, %160
  store double %164, double* %53, align 1, !tbaa !2452
  %165 = add i64 %361, 33
  store i64 %165, i64* %PC, align 8
  %166 = load i32, i32* %333, align 4
  %167 = sitofp i32 %166 to double
  store double %167, double* %54, align 1, !tbaa !2452
  %168 = fdiv double %164, %167
  store double %168, double* %53, align 1, !tbaa !2452
  %169 = add i64 %325, -24
  %170 = add i64 %361, 41
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RCX, align 8, !tbaa !2428
  %173 = add i64 %361, 45
  store i64 %173, i64* %PC, align 8
  %174 = load i32, i32* %132, align 4
  %175 = sext i32 %174 to i64
  %176 = shl nsw i64 %175, 12
  store i64 %176, i64* %RDX, align 8, !tbaa !2428
  %177 = add i64 %176, %172
  store i64 %177, i64* %RCX, align 8, !tbaa !2428
  %178 = icmp ult i64 %177, %172
  %179 = icmp ult i64 %177, %176
  %180 = or i1 %178, %179
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %47, align 1, !tbaa !2432
  %182 = trunc i64 %177 to i32
  %183 = and i32 %182, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #10
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %48, align 1, !tbaa !2446
  %188 = xor i64 %172, %177
  %189 = lshr i64 %188, 4
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %49, align 1, !tbaa !2447
  %192 = icmp eq i64 %177, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %50, align 1, !tbaa !2448
  %194 = lshr i64 %177, 63
  %195 = trunc i64 %194 to i8
  store i8 %195, i8* %51, align 1, !tbaa !2449
  %196 = lshr i64 %172, 63
  %197 = lshr i64 %175, 51
  %198 = and i64 %197, 1
  %199 = xor i64 %194, %196
  %200 = xor i64 %194, %198
  %201 = add nuw nsw i64 %199, %200
  %202 = icmp eq i64 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %52, align 1, !tbaa !2450
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -40
  %206 = add i64 %361, 56
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RDX, align 8, !tbaa !2428
  %210 = shl nsw i64 %209, 3
  %211 = add i64 %210, %177
  %212 = add i64 %361, 61
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to double*
  store double %168, double* %213, align 8
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -40
  %216 = load i64, i64* %PC, align 8
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = add i32 %219, 1
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX, align 8, !tbaa !2428
  %222 = icmp eq i32 %219, -1
  %223 = icmp eq i32 %220, 0
  %224 = or i1 %222, %223
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %47, align 1, !tbaa !2432
  %226 = and i32 %220, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226) #10
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %48, align 1, !tbaa !2446
  %231 = xor i32 %220, %219
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %49, align 1, !tbaa !2447
  %235 = zext i1 %223 to i8
  store i8 %235, i8* %50, align 1, !tbaa !2448
  %236 = lshr i32 %220, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %51, align 1, !tbaa !2449
  %238 = lshr i32 %219, 31
  %239 = xor i32 %236, %238
  %240 = add nuw nsw i32 %239, %236
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %52, align 1, !tbaa !2450
  %243 = add i64 %216, 9
  store i64 %243, i64* %PC, align 8
  store i32 %220, i32* %218, align 4
  %244 = load i64, i64* %PC, align 8
  %245 = add i64 %244, -82
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  br label %block_400bec

block_400c56:                                     ; preds = %block_400bd9
  %246 = add i64 %130, 1
  store i64 %246, i64* %PC, align 8
  %247 = load i64, i64* %9, align 8, !tbaa !2428
  %248 = add i64 %247, 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RBP, align 8, !tbaa !2428
  store i64 %248, i64* %9, align 8, !tbaa !2428
  %251 = add i64 %130, 2
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %248 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %PC, align 8, !tbaa !2428
  %254 = add i64 %247, 16
  store i64 %254, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400bd2:                                     ; preds = %block_400b1d
  %255 = add i64 %92, 7
  store i64 %255, i64* %PC, align 8
  store i32 0, i32* %59, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400bd9

block_400bbf:                                     ; preds = %block_400b30
  %256 = add i64 %322, 8
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %323 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, 1
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RAX, align 8, !tbaa !2428
  %261 = icmp eq i32 %258, -1
  %262 = icmp eq i32 %259, 0
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %47, align 1, !tbaa !2432
  %265 = and i32 %259, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265) #10
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %48, align 1, !tbaa !2446
  %270 = xor i32 %259, %258
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %49, align 1, !tbaa !2447
  %274 = zext i1 %262 to i8
  store i8 %274, i8* %50, align 1, !tbaa !2448
  %275 = lshr i32 %259, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %51, align 1, !tbaa !2449
  %277 = lshr i32 %258, 31
  %278 = xor i32 %275, %277
  %279 = add nuw nsw i32 %278, %275
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %52, align 1, !tbaa !2450
  %282 = add i64 %322, 14
  store i64 %282, i64* %PC, align 8
  store i32 %259, i32* %257, align 4
  %283 = load i64, i64* %PC, align 8
  %284 = add i64 %283, -176
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  br label %block_400b1d

block_400b30:                                     ; preds = %block_400b3c, %block_400b29
  %285 = phi i64 [ %554, %block_400b3c ], [ %.pre22, %block_400b29 ]
  %286 = load i64, i64* %RBP, align 8
  %287 = add i64 %286, -40
  %288 = add i64 %285, 3
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX, align 8, !tbaa !2428
  %292 = add i64 %286, -8
  %293 = add i64 %285, 6
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sub i32 %290, %295
  %297 = icmp ult i32 %290, %295
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %47, align 1, !tbaa !2432
  %299 = and i32 %296, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #10
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %48, align 1, !tbaa !2446
  %304 = xor i32 %295, %290
  %305 = xor i32 %304, %296
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %49, align 1, !tbaa !2447
  %309 = icmp eq i32 %296, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %50, align 1, !tbaa !2448
  %311 = lshr i32 %296, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %51, align 1, !tbaa !2449
  %313 = lshr i32 %290, 31
  %314 = lshr i32 %295, 31
  %315 = xor i32 %314, %313
  %316 = xor i32 %311, %313
  %317 = add nuw nsw i32 %316, %315
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %52, align 1, !tbaa !2450
  %320 = icmp ne i8 %312, 0
  %321 = xor i1 %320, %318
  %.v23 = select i1 %321, i64 12, i64 143
  %322 = add i64 %285, %.v23
  store i64 %322, i64* %PC, align 8, !tbaa !2428
  %323 = add i64 %286, -36
  br i1 %321, label %block_400b3c, label %block_400bbf

block_400bec:                                     ; preds = %block_400be5, %block_400bf8
  %324 = phi i64 [ %.pre21, %block_400be5 ], [ %245, %block_400bf8 ]
  %325 = load i64, i64* %RBP, align 8
  %326 = add i64 %325, -40
  %327 = add i64 %324, 3
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = add i64 %325, -8
  %332 = add i64 %324, 6
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sub i32 %329, %334
  %336 = icmp ult i32 %329, %334
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %47, align 1, !tbaa !2432
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338) #10
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %48, align 1, !tbaa !2446
  %343 = xor i32 %334, %329
  %344 = xor i32 %343, %335
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %49, align 1, !tbaa !2447
  %348 = icmp eq i32 %335, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %50, align 1, !tbaa !2448
  %350 = lshr i32 %335, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %51, align 1, !tbaa !2449
  %352 = lshr i32 %329, 31
  %353 = lshr i32 %334, 31
  %354 = xor i32 %353, %352
  %355 = xor i32 %350, %352
  %356 = add nuw nsw i32 %355, %354
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %52, align 1, !tbaa !2450
  %359 = icmp ne i8 %351, 0
  %360 = xor i1 %359, %357
  %.v = select i1 %360, i64 12, i64 87
  %361 = add i64 %324, %.v
  store i64 %361, i64* %PC, align 8, !tbaa !2428
  %362 = add i64 %325, -36
  br i1 %360, label %block_400bf8, label %block_400c43

block_400b29:                                     ; preds = %block_400b1d
  %363 = add i64 %56, -40
  %364 = add i64 %92, 7
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 0, i32* %365, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400b30

block_400be5:                                     ; preds = %block_400bd9
  %366 = add i64 %94, -40
  %367 = add i64 %130, 7
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 0, i32* %368, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400bec

block_400b3c:                                     ; preds = %block_400b30
  %369 = add i64 %322, 5
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %323 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = sitofp i32 %371 to double
  store double %372, double* %53, align 1, !tbaa !2452
  %373 = add i64 %322, 10
  store i64 %373, i64* %PC, align 8
  %374 = load i32, i32* %289, align 4
  %375 = sitofp i32 %374 to double
  store double %375, double* %54, align 1, !tbaa !2452
  %376 = fmul double %375, %372
  store double %376, double* %53, align 1, !tbaa !2452
  %377 = add i64 %286, -4
  %378 = add i64 %322, 19
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = sitofp i32 %380 to double
  store double %381, double* %54, align 1, !tbaa !2452
  %382 = fadd double %381, %376
  store double %382, double* %53, align 1, !tbaa !2452
  %383 = add i64 %322, 28
  store i64 %383, i64* %PC, align 8
  %384 = load i32, i32* %379, align 4
  %385 = sitofp i32 %384 to double
  store double %385, double* %54, align 1, !tbaa !2452
  %386 = fdiv double %382, %385
  store double %386, double* %53, align 1, !tbaa !2452
  %387 = add i64 %286, -16
  %388 = add i64 %322, 36
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %387 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = add i64 %322, 40
  store i64 %391, i64* %PC, align 8
  %392 = load i32, i32* %370, align 4
  %393 = sext i32 %392 to i64
  %394 = shl nsw i64 %393, 12
  store i64 %394, i64* %RCX, align 8, !tbaa !2428
  %395 = add i64 %394, %390
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = icmp ult i64 %395, %390
  %397 = icmp ult i64 %395, %394
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %47, align 1, !tbaa !2432
  %400 = trunc i64 %395 to i32
  %401 = and i32 %400, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401) #10
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %48, align 1, !tbaa !2446
  %406 = xor i64 %390, %395
  %407 = lshr i64 %406, 4
  %408 = trunc i64 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %49, align 1, !tbaa !2447
  %410 = icmp eq i64 %395, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %50, align 1, !tbaa !2448
  %412 = lshr i64 %395, 63
  %413 = trunc i64 %412 to i8
  store i8 %413, i8* %51, align 1, !tbaa !2449
  %414 = lshr i64 %390, 63
  %415 = lshr i64 %393, 51
  %416 = and i64 %415, 1
  %417 = xor i64 %412, %414
  %418 = xor i64 %412, %416
  %419 = add nuw nsw i64 %417, %418
  %420 = icmp eq i64 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %52, align 1, !tbaa !2450
  %422 = load i64, i64* %RBP, align 8
  %423 = add i64 %422, -40
  %424 = add i64 %322, 51
  store i64 %424, i64* %PC, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %RCX, align 8, !tbaa !2428
  %428 = shl nsw i64 %427, 3
  %429 = add i64 %428, %395
  %430 = add i64 %322, 56
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to double*
  store double %386, double* %431, align 8
  %432 = load i64, i64* %RBP, align 8
  %433 = add i64 %432, -36
  %434 = load i64, i64* %PC, align 8
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %433 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sitofp i32 %437 to double
  store double %438, double* %53, align 1, !tbaa !2452
  %439 = add i64 %432, -40
  %440 = add i64 %434, 8
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = add i32 %442, 1
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDX, align 8, !tbaa !2428
  %445 = icmp eq i32 %442, -1
  %446 = icmp eq i32 %443, 0
  %447 = or i1 %445, %446
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %47, align 1, !tbaa !2432
  %449 = and i32 %443, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449) #10
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %48, align 1, !tbaa !2446
  %454 = xor i32 %443, %442
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %49, align 1, !tbaa !2447
  %458 = zext i1 %446 to i8
  store i8 %458, i8* %50, align 1, !tbaa !2448
  %459 = lshr i32 %443, 31
  %460 = trunc i32 %459 to i8
  store i8 %460, i8* %51, align 1, !tbaa !2449
  %461 = lshr i32 %442, 31
  %462 = xor i32 %459, %461
  %463 = add nuw nsw i32 %462, %459
  %464 = icmp eq i32 %463, 2
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %52, align 1, !tbaa !2450
  %466 = sitofp i32 %443 to double
  store double %466, double* %54, align 1, !tbaa !2452
  %467 = fmul double %466, %438
  store double %467, double* %53, align 1, !tbaa !2452
  %468 = add i64 %432, -8
  %469 = add i64 %434, 24
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = sitofp i32 %471 to double
  store double %472, double* %54, align 1, !tbaa !2452
  %473 = fadd double %472, %467
  store double %473, double* %53, align 1, !tbaa !2452
  %474 = add i64 %434, 33
  store i64 %474, i64* %PC, align 8
  %475 = load i32, i32* %470, align 4
  %476 = sitofp i32 %475 to double
  store double %476, double* %54, align 1, !tbaa !2452
  %477 = fdiv double %473, %476
  store double %477, double* %53, align 1, !tbaa !2452
  %478 = add i64 %432, -32
  %479 = add i64 %434, 41
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %RAX, align 8, !tbaa !2428
  %482 = add i64 %434, 45
  store i64 %482, i64* %PC, align 8
  %483 = load i32, i32* %436, align 4
  %484 = sext i32 %483 to i64
  %485 = shl nsw i64 %484, 12
  store i64 %485, i64* %RCX, align 8, !tbaa !2428
  %486 = add i64 %485, %481
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = icmp ult i64 %486, %481
  %488 = icmp ult i64 %486, %485
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %47, align 1, !tbaa !2432
  %491 = trunc i64 %486 to i32
  %492 = and i32 %491, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492) #10
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %48, align 1, !tbaa !2446
  %497 = xor i64 %481, %486
  %498 = lshr i64 %497, 4
  %499 = trunc i64 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %49, align 1, !tbaa !2447
  %501 = icmp eq i64 %486, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %50, align 1, !tbaa !2448
  %503 = lshr i64 %486, 63
  %504 = trunc i64 %503 to i8
  store i8 %504, i8* %51, align 1, !tbaa !2449
  %505 = lshr i64 %481, 63
  %506 = lshr i64 %484, 51
  %507 = and i64 %506, 1
  %508 = xor i64 %503, %505
  %509 = xor i64 %503, %507
  %510 = add nuw nsw i64 %508, %509
  %511 = icmp eq i64 %510, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %52, align 1, !tbaa !2450
  %513 = load i64, i64* %RBP, align 8
  %514 = add i64 %513, -40
  %515 = add i64 %434, 56
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  store i64 %518, i64* %RCX, align 8, !tbaa !2428
  %519 = shl nsw i64 %518, 3
  %520 = add i64 %519, %486
  %521 = add i64 %434, 61
  store i64 %521, i64* %PC, align 8
  %522 = inttoptr i64 %520 to double*
  store double %477, double* %522, align 8
  %523 = load i64, i64* %RBP, align 8
  %524 = add i64 %523, -40
  %525 = load i64, i64* %PC, align 8
  %526 = add i64 %525, 3
  store i64 %526, i64* %PC, align 8
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %528, 1
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RAX, align 8, !tbaa !2428
  %531 = icmp eq i32 %528, -1
  %532 = icmp eq i32 %529, 0
  %533 = or i1 %531, %532
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %47, align 1, !tbaa !2432
  %535 = and i32 %529, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535) #10
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %48, align 1, !tbaa !2446
  %540 = xor i32 %529, %528
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %49, align 1, !tbaa !2447
  %544 = zext i1 %532 to i8
  store i8 %544, i8* %50, align 1, !tbaa !2448
  %545 = lshr i32 %529, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %51, align 1, !tbaa !2449
  %547 = lshr i32 %528, 31
  %548 = xor i32 %545, %547
  %549 = add nuw nsw i32 %548, %545
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %52, align 1, !tbaa !2450
  %552 = add i64 %525, 9
  store i64 %552, i64* %PC, align 8
  store i32 %529, i32* %527, align 4
  %553 = load i64, i64* %PC, align 8
  %554 = add i64 %553, -138
  store i64 %554, i64* %PC, align 8, !tbaa !2428
  br label %block_400b30

block_400c43:                                     ; preds = %block_400bec
  %555 = add i64 %361, 8
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %362 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, 1
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = icmp eq i32 %557, -1
  %561 = icmp eq i32 %558, 0
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %47, align 1, !tbaa !2432
  %564 = and i32 %558, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564) #10
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %48, align 1, !tbaa !2446
  %569 = xor i32 %558, %557
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %49, align 1, !tbaa !2447
  %573 = zext i1 %561 to i8
  store i8 %573, i8* %50, align 1, !tbaa !2448
  %574 = lshr i32 %558, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %51, align 1, !tbaa !2449
  %576 = lshr i32 %557, 31
  %577 = xor i32 %574, %576
  %578 = add nuw nsw i32 %577, %574
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %52, align 1, !tbaa !2450
  %581 = add i64 %361, 14
  store i64 %581, i64* %PC, align 8
  store i32 %558, i32* %556, align 4
  %582 = load i64, i64* %PC, align 8
  %583 = add i64 %582, -120
  store i64 %583, i64* %PC, align 8, !tbaa !2428
  br label %block_400bd9
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %14 = tail call %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400680:
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
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i8), i8* %9, align 1, !tbaa !2432
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i32), i32 255)) #10
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2446
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64* @stderr to i64), i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2447
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2449
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), label %block_4006a8, label %block_400691

block_400691:                                     ; preds = %block_400680
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br label %block_4006a8

block_4006a8:                                     ; preds = %block_400691, %block_400680
  %21 = phi i64 [ %20, %block_400691 ], [ %19, %block_400680 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %5 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %27 = add i64 %5, 8
  store i64 %27, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400890_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
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
  %55 = add i64 %50, -655
  %56 = add i64 %50, 12
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_400620_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #10
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
  br i1 %79, label %block_4008d3, label %block_4008c9

block_4008d3:                                     ; preds = %block_4008c9, %block_400890
  %84 = phi i64 [ %120, %block_4008c9 ], [ %83, %block_400890 ]
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 32
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
  %99 = add i64 %98, -740
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

block_4008c9:                                     ; preds = %block_400890
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #10
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
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #10
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
define %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006f0:
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
  %36 = tail call %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_400910_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 80
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
  %74 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* nonnull %0, i64 %69, %struct.Memory* %2)
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
  %87 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* nonnull %0, i64 %82, %struct.Memory* %74)
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
  %100 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* nonnull %0, i64 %95, %struct.Memory* %87)
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
  %113 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* nonnull %0, i64 %108, %struct.Memory* %100)
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
  %126 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* nonnull %0, i64 %121, %struct.Memory* %113)
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
  %139 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* nonnull %0, i64 %134, %struct.Memory* %126)
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
  %175 = tail call %struct.Memory* @sub_400b00_init_array(%struct.State* nonnull %0, i64 %170, %struct.Memory* %139)
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
  %200 = add i64 %178, 658
  %201 = add i64 %178, 23
  %202 = load i64, i64* %RSP, align 8, !tbaa !2428
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %RSP, align 8, !tbaa !2428
  store i64 %200, i64* %PC, align 8, !tbaa !2428
  %205 = tail call %struct.Memory* @sub_400c60_kernel_gramschmidt(%struct.State* nonnull %0, i64 %200, %struct.Memory* %175)
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
  %235 = tail call %struct.Memory* @sub_400b00_init_array(%struct.State* nonnull %0, i64 %230, %struct.Memory* %205)
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
  %260 = add i64 %238, 1236
  %261 = add i64 %238, 23
  %262 = load i64, i64* %RSP, align 8, !tbaa !2428
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %RSP, align 8, !tbaa !2428
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  %265 = tail call %struct.Memory* @sub_400ed0_kernel_gramschmidt_StrictFP(%struct.State* nonnull %0, i64 %260, %struct.Memory* %235)
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
  %286 = add i64 %268, 1837
  %287 = add i64 %268, 19
  %288 = load i64, i64* %RSP, align 8, !tbaa !2428
  %289 = add i64 %288, -8
  %290 = inttoptr i64 %289 to i64*
  store i64 %287, i64* %290, align 8
  store i64 %289, i64* %RSP, align 8, !tbaa !2428
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  %291 = tail call %struct.Memory* @sub_401140_check_FP(%struct.State* nonnull %0, i64 %286, %struct.Memory* %265)
  %292 = load i32, i32* %EAX, align 4
  %293 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %294 = and i32 %292, 255
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294) #10
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %299 = icmp eq i32 %292, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %30, align 1, !tbaa !2448
  %301 = lshr i32 %292, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v = select i1 %299, i64 9, i64 21
  %303 = add i64 %293, %.v
  store i64 %303, i64* %PC, align 8, !tbaa !2428
  %304 = load i64, i64* %RBP, align 8
  br i1 %299, label %block_400a2f, label %block_400a3b

block_400a7f:                                     ; preds = %block_400a63
  %305 = add i64 %537, -4
  %306 = add i64 %536, 7
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  store i32 1, i32* %307, align 4
  %308 = load i64, i64* %PC, align 8
  %309 = add i64 %308, 107
  store i64 %309, i64* %PC, align 8, !tbaa !2428
  br label %block_400af1

block_400a3b:                                     ; preds = %block_400910
  %310 = add i64 %304, -20
  %311 = add i64 %303, 3
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %304, -24
  %316 = add i64 %303, 6
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RSI, align 8, !tbaa !2428
  %320 = add i64 %304, -40
  %321 = add i64 %303, 10
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RDX, align 8, !tbaa !2428
  %324 = add i64 %304, -64
  %325 = add i64 %303, 14
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RCX, align 8, !tbaa !2428
  %328 = add i64 %303, 1797
  %329 = add i64 %303, 19
  %330 = load i64, i64* %RSP, align 8, !tbaa !2428
  %331 = add i64 %330, -8
  %332 = inttoptr i64 %331 to i64*
  store i64 %329, i64* %332, align 8
  store i64 %331, i64* %RSP, align 8, !tbaa !2428
  store i64 %328, i64* %PC, align 8, !tbaa !2428
  %333 = tail call %struct.Memory* @sub_401140_check_FP(%struct.State* nonnull %0, i64 %328, %struct.Memory* %291)
  %334 = load i32, i32* %EAX, align 4
  %335 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %336 = and i32 %334, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336) #10
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %341 = icmp eq i32 %334, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %30, align 1, !tbaa !2448
  %343 = lshr i32 %334, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v3 = select i1 %341, i64 9, i64 21
  %345 = add i64 %335, %.v3
  store i64 %345, i64* %PC, align 8, !tbaa !2428
  %346 = load i64, i64* %RBP, align 8
  br i1 %341, label %block_400a57, label %block_400a63

block_400a57:                                     ; preds = %block_400a3b
  %347 = add i64 %346, -4
  %348 = add i64 %345, 7
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %347 to i32*
  store i32 1, i32* %349, align 4
  %350 = load i64, i64* %PC, align 8
  %351 = add i64 %350, 147
  store i64 %351, i64* %PC, align 8, !tbaa !2428
  br label %block_400af1

block_400af1:                                     ; preds = %block_400a8b, %block_400a2f, %block_400a57, %block_400a7f
  %352 = phi i64 [ %.pre, %block_400a8b ], [ %309, %block_400a7f ], [ %351, %block_400a57 ], [ %395, %block_400a2f ]
  %MEMORY.0 = phi %struct.Memory* [ %495, %block_400a8b ], [ %524, %block_400a7f ], [ %333, %block_400a57 ], [ %291, %block_400a2f ]
  %353 = load i64, i64* %RBP, align 8
  %354 = add i64 %353, -4
  %355 = add i64 %352, 3
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RAX, align 8, !tbaa !2428
  %359 = load i64, i64* %RSP, align 8
  %360 = add i64 %359, 80
  store i64 %360, i64* %RSP, align 8, !tbaa !2428
  %361 = icmp ugt i64 %359, -81
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1, !tbaa !2432
  %363 = trunc i64 %360 to i32
  %364 = and i32 %363, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364) #10
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %21, align 1, !tbaa !2446
  %369 = xor i64 %359, 16
  %370 = xor i64 %369, %360
  %371 = lshr i64 %370, 4
  %372 = trunc i64 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %27, align 1, !tbaa !2447
  %374 = icmp eq i64 %360, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %30, align 1, !tbaa !2448
  %376 = lshr i64 %360, 63
  %377 = trunc i64 %376 to i8
  store i8 %377, i8* %33, align 1, !tbaa !2449
  %378 = lshr i64 %359, 63
  %379 = xor i64 %376, %378
  %380 = add nuw nsw i64 %379, %376
  %381 = icmp eq i64 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %39, align 1, !tbaa !2450
  %383 = add i64 %352, 8
  store i64 %383, i64* %PC, align 8
  %384 = add i64 %359, 88
  %385 = inttoptr i64 %360 to i64*
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %RBP, align 8, !tbaa !2428
  store i64 %384, i64* %RSP, align 8, !tbaa !2428
  %387 = add i64 %352, 9
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %384 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %PC, align 8, !tbaa !2428
  %390 = add i64 %359, 96
  store i64 %390, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a2f:                                     ; preds = %block_400910
  %391 = add i64 %304, -4
  %392 = add i64 %303, 7
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 1, i32* %393, align 4
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, 187
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  br label %block_400af1

block_400a8b:                                     ; preds = %block_400a63
  %396 = add i64 %537, -20
  %397 = add i64 %536, 3
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RDI, align 8, !tbaa !2428
  %401 = add i64 %537, -24
  %402 = add i64 %536, 6
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RSI, align 8, !tbaa !2428
  %406 = add i64 %537, -56
  %407 = add i64 %536, 10
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RDX, align 8, !tbaa !2428
  %410 = add i64 %537, -64
  %411 = add i64 %536, 14
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RCX, align 8, !tbaa !2428
  %414 = add i64 %537, -72
  %415 = add i64 %536, 18
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %R8, align 8, !tbaa !2428
  %418 = add i64 %536, 2021
  %419 = add i64 %536, 23
  %420 = load i64, i64* %RSP, align 8, !tbaa !2428
  %421 = add i64 %420, -8
  %422 = inttoptr i64 %421 to i64*
  store i64 %419, i64* %422, align 8
  store i64 %421, i64* %RSP, align 8, !tbaa !2428
  store i64 %418, i64* %PC, align 8, !tbaa !2428
  %423 = tail call %struct.Memory* @sub_401270_print_array(%struct.State* nonnull %0, i64 %418, %struct.Memory* %524)
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -32
  %426 = load i64, i64* %PC, align 8
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %RCX, align 8, !tbaa !2428
  store i64 %429, i64* %RDI, align 8, !tbaa !2428
  %430 = add i64 %426, -1234
  %431 = add i64 %426, 12
  %432 = load i64, i64* %RSP, align 8, !tbaa !2428
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %RSP, align 8, !tbaa !2428
  store i64 %430, i64* %PC, align 8, !tbaa !2428
  %435 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %423)
  %436 = load i64, i64* %RBP, align 8
  %437 = add i64 %436, -40
  %438 = load i64, i64* %PC, align 8
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RCX, align 8, !tbaa !2428
  store i64 %441, i64* %RDI, align 8, !tbaa !2428
  %442 = add i64 %438, -1246
  %443 = add i64 %438, 12
  %444 = load i64, i64* %RSP, align 8, !tbaa !2428
  %445 = add i64 %444, -8
  %446 = inttoptr i64 %445 to i64*
  store i64 %443, i64* %446, align 8
  store i64 %445, i64* %RSP, align 8, !tbaa !2428
  store i64 %442, i64* %PC, align 8, !tbaa !2428
  %447 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %435)
  %448 = load i64, i64* %RBP, align 8
  %449 = add i64 %448, -48
  %450 = load i64, i64* %PC, align 8
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RCX, align 8, !tbaa !2428
  store i64 %453, i64* %RDI, align 8, !tbaa !2428
  %454 = add i64 %450, -1258
  %455 = add i64 %450, 12
  %456 = load i64, i64* %RSP, align 8, !tbaa !2428
  %457 = add i64 %456, -8
  %458 = inttoptr i64 %457 to i64*
  store i64 %455, i64* %458, align 8
  store i64 %457, i64* %RSP, align 8, !tbaa !2428
  store i64 %454, i64* %PC, align 8, !tbaa !2428
  %459 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %447)
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -56
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %461 to i64*
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* %RCX, align 8, !tbaa !2428
  store i64 %465, i64* %RDI, align 8, !tbaa !2428
  %466 = add i64 %462, -1270
  %467 = add i64 %462, 12
  %468 = load i64, i64* %RSP, align 8, !tbaa !2428
  %469 = add i64 %468, -8
  %470 = inttoptr i64 %469 to i64*
  store i64 %467, i64* %470, align 8
  store i64 %469, i64* %RSP, align 8, !tbaa !2428
  store i64 %466, i64* %PC, align 8, !tbaa !2428
  %471 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %459)
  %472 = load i64, i64* %RBP, align 8
  %473 = add i64 %472, -64
  %474 = load i64, i64* %PC, align 8
  %475 = add i64 %474, 4
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %473 to i64*
  %477 = load i64, i64* %476, align 8
  store i64 %477, i64* %RCX, align 8, !tbaa !2428
  store i64 %477, i64* %RDI, align 8, !tbaa !2428
  %478 = add i64 %474, -1282
  %479 = add i64 %474, 12
  %480 = load i64, i64* %RSP, align 8, !tbaa !2428
  %481 = add i64 %480, -8
  %482 = inttoptr i64 %481 to i64*
  store i64 %479, i64* %482, align 8
  store i64 %481, i64* %RSP, align 8, !tbaa !2428
  store i64 %478, i64* %PC, align 8, !tbaa !2428
  %483 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %471)
  %484 = load i64, i64* %RBP, align 8
  %485 = add i64 %484, -72
  %486 = load i64, i64* %PC, align 8
  %487 = add i64 %486, 4
  store i64 %487, i64* %PC, align 8
  %488 = inttoptr i64 %485 to i64*
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %RCX, align 8, !tbaa !2428
  store i64 %489, i64* %RDI, align 8, !tbaa !2428
  %490 = add i64 %486, -1294
  %491 = add i64 %486, 12
  %492 = load i64, i64* %RSP, align 8, !tbaa !2428
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %491, i64* %494, align 8
  store i64 %493, i64* %RSP, align 8, !tbaa !2428
  store i64 %490, i64* %PC, align 8, !tbaa !2428
  %495 = tail call fastcc %struct.Memory* @ext_4005d0_free(%struct.State* nonnull %0, %struct.Memory* %483)
  %496 = load i64, i64* %RBP, align 8
  %497 = add i64 %496, -4
  %498 = load i64, i64* %PC, align 8
  %499 = add i64 %498, 7
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %497 to i32*
  store i32 0, i32* %500, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400af1

block_400a63:                                     ; preds = %block_400a3b
  %501 = add i64 %346, -20
  %502 = add i64 %345, 3
  store i64 %502, i64* %PC, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDI, align 8, !tbaa !2428
  %506 = add i64 %346, -24
  %507 = add i64 %345, 6
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %RSI, align 8, !tbaa !2428
  %511 = add i64 %346, -48
  %512 = add i64 %345, 10
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %RDX, align 8, !tbaa !2428
  %515 = add i64 %346, -72
  %516 = add i64 %345, 14
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %RCX, align 8, !tbaa !2428
  %519 = add i64 %345, 1757
  %520 = add i64 %345, 19
  %521 = load i64, i64* %RSP, align 8, !tbaa !2428
  %522 = add i64 %521, -8
  %523 = inttoptr i64 %522 to i64*
  store i64 %520, i64* %523, align 8
  store i64 %522, i64* %RSP, align 8, !tbaa !2428
  store i64 %519, i64* %PC, align 8, !tbaa !2428
  %524 = tail call %struct.Memory* @sub_401140_check_FP(%struct.State* nonnull %0, i64 %519, %struct.Memory* %333)
  %525 = load i32, i32* %EAX, align 4
  %526 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %527 = and i32 %525, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527) #10
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %532 = icmp eq i32 %525, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %30, align 1, !tbaa !2448
  %534 = lshr i32 %525, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v4 = select i1 %532, i64 9, i64 21
  %536 = add i64 %526, %.v4
  store i64 %536, i64* %PC, align 8, !tbaa !2428
  %537 = load i64, i64* %RBP, align 8
  br i1 %532, label %block_400a7f, label %block_400a8b
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c60_kernel_gramschmidt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400c60:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10
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
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
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
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %76 = bitcast [32 x %union.VectorReg]* %5 to double*
  %77 = bitcast i64* %74 to double*
  %78 = bitcast %union.VectorReg* %6 to double*
  %79 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %81 = bitcast i64* %80 to double*
  %.pre = load i64, i64* %PC, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to i8*
  %84 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  %85 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  br label %block_400c81

block_400d7b:                                     ; preds = %block_400d19
  %86 = add i64 %834, -44
  %87 = add i64 %870, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX, align 8, !tbaa !2428
  %92 = icmp eq i32 %89, -1
  %93 = icmp eq i32 %90, 0
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %16, align 1, !tbaa !2432
  %96 = and i32 %90, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #10
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %23, align 1, !tbaa !2446
  %101 = xor i32 %90, %89
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %28, align 1, !tbaa !2447
  %105 = zext i1 %93 to i8
  store i8 %105, i8* %31, align 1, !tbaa !2448
  %106 = lshr i32 %90, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %34, align 1, !tbaa !2449
  %108 = lshr i32 %89, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %106
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %40, align 1, !tbaa !2450
  %113 = add i64 %834, -40
  %114 = add i64 %870, 9
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  store i32 %90, i32* %115, align 4
  %.pre64 = load i64, i64* %PC, align 8
  br label %block_400d84

block_400cf0:                                     ; preds = %block_400c9c
  %116 = add i64 %796, -56
  %117 = add i64 %832, 5
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %120 = add i64 %832, -1728
  %121 = add i64 %832, 10
  %122 = load i64, i64* %RSP, align 8, !tbaa !2428
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  %125 = load double, double* %76, align 8, !alias.scope !2457, !noalias !2460
  %126 = load i64, i64* %124, align 8
  store i64 %122, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
  %127 = tail call double @sqrt(double %125)
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 24, i32 8, i1 false)
  store double %127, double* %76, align 8, !alias.scope !2457, !noalias !2460
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -24
  %130 = add i64 %126, 4
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = add i64 %128, -44
  %134 = add i64 %126, 8
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = shl nsw i64 %137, 12
  store i64 %138, i64* %RCX, align 8, !tbaa !2428
  %139 = add i64 %138, %132
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = icmp ult i64 %139, %132
  %141 = icmp ult i64 %139, %138
  %142 = or i1 %140, %141
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %16, align 1, !tbaa !2432
  %144 = trunc i64 %139 to i32
  %145 = and i32 %144, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #10
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %23, align 1, !tbaa !2446
  %150 = xor i64 %132, %139
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %28, align 1, !tbaa !2447
  %154 = icmp eq i64 %139, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %31, align 1, !tbaa !2448
  %156 = lshr i64 %139, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %34, align 1, !tbaa !2449
  %158 = lshr i64 %132, 63
  %159 = lshr i64 %137, 51
  %160 = and i64 %159, 1
  %161 = xor i64 %156, %158
  %162 = xor i64 %156, %160
  %163 = add nuw nsw i64 %161, %162
  %164 = icmp eq i64 %163, 2
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %40, align 1, !tbaa !2450
  %166 = add i64 %126, 19
  store i64 %166, i64* %PC, align 8
  %167 = load i32, i32* %135, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX, align 8, !tbaa !2428
  %169 = shl nsw i64 %168, 3
  %170 = add i64 %169, %139
  %171 = add i64 %126, 24
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to double*
  store double %127, double* %172, align 8
  %173 = load i64, i64* %RBP, align 8
  %174 = add i64 %173, -36
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, 7
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 0, i32* %177, align 4
  %.pre63 = load i64, i64* %PC, align 8
  br label %block_400d19

block_400eb1:                                     ; preds = %block_400d84
  %178 = add i64 %1173, -44
  %179 = add i64 %1209, 8
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
  store i8 %187, i8* %16, align 1, !tbaa !2432
  %188 = and i32 %182, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #10
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %23, align 1, !tbaa !2446
  %193 = xor i32 %182, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %28, align 1, !tbaa !2447
  %197 = zext i1 %185 to i8
  store i8 %197, i8* %31, align 1, !tbaa !2448
  %198 = lshr i32 %182, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %34, align 1, !tbaa !2449
  %200 = lshr i32 %181, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %198
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %40, align 1, !tbaa !2450
  %205 = add i64 %1209, 14
  store i64 %205, i64* %PC, align 8
  store i32 %182, i32* %180, align 4
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, -574
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br label %block_400c81

block_400e2c:                                     ; preds = %block_400e20
  %208 = add i64 %727, -16
  %209 = add i64 %763, 4
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = add i64 %763, 8
  store i64 %212, i64* %PC, align 8
  %213 = load i32, i32* %730, align 4
  %214 = sext i32 %213 to i64
  %215 = shl nsw i64 %214, 12
  store i64 %215, i64* %RCX, align 8, !tbaa !2428
  %216 = add i64 %215, %211
  store i64 %216, i64* %RAX, align 8, !tbaa !2428
  %217 = icmp ult i64 %216, %211
  %218 = icmp ult i64 %216, %215
  %219 = or i1 %217, %218
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %16, align 1, !tbaa !2432
  %221 = trunc i64 %216 to i32
  %222 = and i32 %221, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #10
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %23, align 1, !tbaa !2446
  %227 = xor i64 %211, %216
  %228 = lshr i64 %227, 4
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %28, align 1, !tbaa !2447
  %231 = icmp eq i64 %216, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %31, align 1, !tbaa !2448
  %233 = lshr i64 %216, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %34, align 1, !tbaa !2449
  %235 = lshr i64 %211, 63
  %236 = lshr i64 %214, 51
  %237 = and i64 %236, 1
  %238 = xor i64 %233, %235
  %239 = xor i64 %233, %237
  %240 = add nuw nsw i64 %238, %239
  %241 = icmp eq i64 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %40, align 1, !tbaa !2450
  %243 = add i64 %727, -40
  %244 = add i64 %763, 19
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RCX, align 8, !tbaa !2428
  %248 = shl nsw i64 %247, 3
  %249 = add i64 %248, %216
  %250 = add i64 %763, 24
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %253 = add i64 %727, -32
  %254 = add i64 %763, 28
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = add i64 %763, 32
  store i64 %257, i64* %PC, align 8
  %258 = load i32, i32* %730, align 4
  %259 = sext i32 %258 to i64
  %260 = shl nsw i64 %259, 12
  store i64 %260, i64* %RCX, align 8, !tbaa !2428
  %261 = add i64 %260, %256
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = icmp ult i64 %261, %256
  %263 = icmp ult i64 %261, %260
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %16, align 1, !tbaa !2432
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #10
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %23, align 1, !tbaa !2446
  %272 = xor i64 %256, %261
  %273 = lshr i64 %272, 4
  %274 = trunc i64 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %28, align 1, !tbaa !2447
  %276 = icmp eq i64 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %31, align 1, !tbaa !2448
  %278 = lshr i64 %261, 63
  %279 = trunc i64 %278 to i8
  store i8 %279, i8* %34, align 1, !tbaa !2449
  %280 = lshr i64 %256, 63
  %281 = lshr i64 %259, 51
  %282 = and i64 %281, 1
  %283 = xor i64 %278, %280
  %284 = xor i64 %278, %282
  %285 = add nuw nsw i64 %283, %284
  %286 = icmp eq i64 %285, 2
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %40, align 1, !tbaa !2450
  %288 = load i64, i64* %RBP, align 8
  %289 = add i64 %288, -44
  %290 = add i64 %763, 43
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = shl nsw i64 %293, 3
  %295 = add i64 %294, %261
  %296 = add i64 %763, 48
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %79, align 1, !tbaa !2452
  store double 0.000000e+00, double* %81, align 1, !tbaa !2452
  %299 = add i64 %288, -24
  %300 = add i64 %763, 52
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RAX, align 8, !tbaa !2428
  %303 = add i64 %763, 56
  store i64 %303, i64* %PC, align 8
  %304 = load i32, i32* %291, align 4
  %305 = sext i32 %304 to i64
  %306 = shl nsw i64 %305, 12
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = add i64 %306, %302
  store i64 %307, i64* %RAX, align 8, !tbaa !2428
  %308 = icmp ult i64 %307, %302
  %309 = icmp ult i64 %307, %306
  %310 = or i1 %308, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %16, align 1, !tbaa !2432
  %312 = trunc i64 %307 to i32
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #10
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %23, align 1, !tbaa !2446
  %318 = xor i64 %302, %307
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %28, align 1, !tbaa !2447
  %322 = icmp eq i64 %307, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %31, align 1, !tbaa !2448
  %324 = lshr i64 %307, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %34, align 1, !tbaa !2449
  %326 = lshr i64 %302, 63
  %327 = lshr i64 %305, 51
  %328 = and i64 %327, 1
  %329 = xor i64 %324, %326
  %330 = xor i64 %324, %328
  %331 = add nuw nsw i64 %329, %330
  %332 = icmp eq i64 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %40, align 1, !tbaa !2450
  %334 = add i64 %288, -40
  %335 = add i64 %763, 67
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = shl nsw i64 %338, 3
  %340 = add i64 %339, %307
  %341 = add i64 %763, 72
  store i64 %341, i64* %PC, align 8
  %342 = bitcast i64 %298 to double
  %343 = inttoptr i64 %340 to double*
  %344 = load double, double* %343, align 8
  %345 = fmul double %342, %344
  store double %345, double* %78, align 1, !tbaa !2452
  store i64 0, i64* %80, align 1, !tbaa !2452
  %346 = load double, double* %76, align 1
  %347 = fsub double %346, %345
  store double %347, double* %76, align 1, !tbaa !2452
  %348 = load i64, i64* %RBP, align 8
  %349 = add i64 %348, -16
  %350 = add i64 %763, 80
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = add i64 %348, -36
  %354 = add i64 %763, 84
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = shl nsw i64 %357, 12
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = add i64 %358, %352
  store i64 %359, i64* %RAX, align 8, !tbaa !2428
  %360 = icmp ult i64 %359, %352
  %361 = icmp ult i64 %359, %358
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %16, align 1, !tbaa !2432
  %364 = trunc i64 %359 to i32
  %365 = and i32 %364, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365) #10
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %23, align 1, !tbaa !2446
  %370 = xor i64 %352, %359
  %371 = lshr i64 %370, 4
  %372 = trunc i64 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %28, align 1, !tbaa !2447
  %374 = icmp eq i64 %359, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %31, align 1, !tbaa !2448
  %376 = lshr i64 %359, 63
  %377 = trunc i64 %376 to i8
  store i8 %377, i8* %34, align 1, !tbaa !2449
  %378 = lshr i64 %352, 63
  %379 = lshr i64 %357, 51
  %380 = and i64 %379, 1
  %381 = xor i64 %376, %378
  %382 = xor i64 %376, %380
  %383 = add nuw nsw i64 %381, %382
  %384 = icmp eq i64 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %40, align 1, !tbaa !2450
  %386 = add i64 %348, -40
  %387 = add i64 %763, 95
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  store i64 %390, i64* %RCX, align 8, !tbaa !2428
  %391 = shl nsw i64 %390, 3
  %392 = add i64 %391, %359
  %393 = add i64 %763, 100
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to double*
  store double %347, double* %394, align 8
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -36
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, 1
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RAX, align 8, !tbaa !2428
  %403 = icmp eq i32 %400, -1
  %404 = icmp eq i32 %401, 0
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %16, align 1, !tbaa !2432
  %407 = and i32 %401, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407) #10
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %23, align 1, !tbaa !2446
  %412 = xor i32 %401, %400
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %28, align 1, !tbaa !2447
  %416 = zext i1 %404 to i8
  store i8 %416, i8* %31, align 1, !tbaa !2448
  %417 = lshr i32 %401, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %34, align 1, !tbaa !2449
  %419 = lshr i32 %400, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %417
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %40, align 1, !tbaa !2450
  %424 = add i64 %397, 9
  store i64 %424, i64* %PC, align 8
  store i32 %401, i32* %399, align 4
  %425 = load i64, i64* %PC, align 8
  %426 = add i64 %425, -121
  store i64 %426, i64* %PC, align 8, !tbaa !2428
  br label %block_400e20

block_400ca8:                                     ; preds = %block_400c9c
  %427 = add i64 %796, -16
  %428 = add i64 %832, 4
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = add i64 %832, 8
  store i64 %431, i64* %PC, align 8
  %432 = load i32, i32* %799, align 4
  %433 = sext i32 %432 to i64
  %434 = shl nsw i64 %433, 12
  store i64 %434, i64* %RCX, align 8, !tbaa !2428
  %435 = add i64 %434, %430
  store i64 %435, i64* %RAX, align 8, !tbaa !2428
  %436 = icmp ult i64 %435, %430
  %437 = icmp ult i64 %435, %434
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %16, align 1, !tbaa !2432
  %440 = trunc i64 %435 to i32
  %441 = and i32 %440, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #10
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %23, align 1, !tbaa !2446
  %446 = xor i64 %430, %435
  %447 = lshr i64 %446, 4
  %448 = trunc i64 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %28, align 1, !tbaa !2447
  %450 = icmp eq i64 %435, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %31, align 1, !tbaa !2448
  %452 = lshr i64 %435, 63
  %453 = trunc i64 %452 to i8
  store i8 %453, i8* %34, align 1, !tbaa !2449
  %454 = lshr i64 %430, 63
  %455 = lshr i64 %433, 51
  %456 = and i64 %455, 1
  %457 = xor i64 %452, %454
  %458 = xor i64 %452, %456
  %459 = add nuw nsw i64 %457, %458
  %460 = icmp eq i64 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %40, align 1, !tbaa !2450
  %462 = add i64 %796, -44
  %463 = add i64 %832, 19
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  store i64 %466, i64* %RCX, align 8, !tbaa !2428
  %467 = shl nsw i64 %466, 3
  %468 = add i64 %467, %435
  %469 = add i64 %832, 24
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i64*
  %471 = load i64, i64* %470, align 8
  store i64 %471, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %472 = add i64 %832, 28
  store i64 %472, i64* %PC, align 8
  %473 = load i64, i64* %429, align 8
  store i64 %473, i64* %RAX, align 8, !tbaa !2428
  %474 = add i64 %832, 32
  store i64 %474, i64* %PC, align 8
  %475 = load i32, i32* %799, align 4
  %476 = sext i32 %475 to i64
  %477 = shl nsw i64 %476, 12
  store i64 %477, i64* %RCX, align 8, !tbaa !2428
  %478 = add i64 %477, %473
  store i64 %478, i64* %RAX, align 8, !tbaa !2428
  %479 = icmp ult i64 %478, %473
  %480 = icmp ult i64 %478, %477
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %16, align 1, !tbaa !2432
  %483 = trunc i64 %478 to i32
  %484 = and i32 %483, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484) #10
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %23, align 1, !tbaa !2446
  %489 = xor i64 %473, %478
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %28, align 1, !tbaa !2447
  %493 = icmp eq i64 %478, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %31, align 1, !tbaa !2448
  %495 = lshr i64 %478, 63
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %34, align 1, !tbaa !2449
  %497 = lshr i64 %473, 63
  %498 = lshr i64 %476, 51
  %499 = and i64 %498, 1
  %500 = xor i64 %495, %497
  %501 = xor i64 %495, %499
  %502 = add nuw nsw i64 %500, %501
  %503 = icmp eq i64 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %40, align 1, !tbaa !2450
  %505 = load i64, i64* %RBP, align 8
  %506 = add i64 %505, -44
  %507 = add i64 %832, 43
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  %511 = shl nsw i64 %510, 3
  %512 = add i64 %511, %478
  %513 = add i64 %832, 48
  store i64 %513, i64* %PC, align 8
  %514 = bitcast i64 %471 to double
  %515 = inttoptr i64 %512 to double*
  %516 = load double, double* %515, align 8
  %517 = fmul double %514, %516
  store double %517, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %518 = add i64 %505, -56
  %519 = add i64 %832, 53
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to double*
  %521 = load double, double* %520, align 8
  %522 = fadd double %517, %521
  store double %522, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %523 = add i64 %832, 58
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %518 to double*
  store double %522, double* %524, align 8
  %525 = load i64, i64* %RBP, align 8
  %526 = add i64 %525, -36
  %527 = load i64, i64* %PC, align 8
  %528 = add i64 %527, 3
  store i64 %528, i64* %PC, align 8
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = add i32 %530, 1
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RAX, align 8, !tbaa !2428
  %533 = icmp eq i32 %530, -1
  %534 = icmp eq i32 %531, 0
  %535 = or i1 %533, %534
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %16, align 1, !tbaa !2432
  %537 = and i32 %531, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537) #10
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %23, align 1, !tbaa !2446
  %542 = xor i32 %531, %530
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %28, align 1, !tbaa !2447
  %546 = zext i1 %534 to i8
  store i8 %546, i8* %31, align 1, !tbaa !2448
  %547 = lshr i32 %531, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %34, align 1, !tbaa !2449
  %549 = lshr i32 %530, 31
  %550 = xor i32 %547, %549
  %551 = add nuw nsw i32 %550, %547
  %552 = icmp eq i32 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %40, align 1, !tbaa !2450
  %554 = add i64 %527, 9
  store i64 %554, i64* %PC, align 8
  store i32 %531, i32* %529, align 4
  %555 = load i64, i64* %PC, align 8
  %556 = add i64 %555, -79
  store i64 %556, i64* %PC, align 8, !tbaa !2428
  br label %block_400c9c

block_400d25:                                     ; preds = %block_400d19
  %557 = add i64 %834, -16
  %558 = add i64 %870, 4
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = add i64 %870, 8
  store i64 %561, i64* %PC, align 8
  %562 = load i32, i32* %837, align 4
  %563 = sext i32 %562 to i64
  %564 = shl nsw i64 %563, 12
  store i64 %564, i64* %RCX, align 8, !tbaa !2428
  %565 = add i64 %564, %560
  store i64 %565, i64* %RAX, align 8, !tbaa !2428
  %566 = icmp ult i64 %565, %560
  %567 = icmp ult i64 %565, %564
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %16, align 1, !tbaa !2432
  %570 = trunc i64 %565 to i32
  %571 = and i32 %570, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571) #10
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %23, align 1, !tbaa !2446
  %576 = xor i64 %560, %565
  %577 = lshr i64 %576, 4
  %578 = trunc i64 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %28, align 1, !tbaa !2447
  %580 = icmp eq i64 %565, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %31, align 1, !tbaa !2448
  %582 = lshr i64 %565, 63
  %583 = trunc i64 %582 to i8
  store i8 %583, i8* %34, align 1, !tbaa !2449
  %584 = lshr i64 %560, 63
  %585 = lshr i64 %563, 51
  %586 = and i64 %585, 1
  %587 = xor i64 %582, %584
  %588 = xor i64 %582, %586
  %589 = add nuw nsw i64 %587, %588
  %590 = icmp eq i64 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %40, align 1, !tbaa !2450
  %592 = add i64 %834, -44
  %593 = add i64 %870, 19
  store i64 %593, i64* %PC, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  store i64 %596, i64* %RCX, align 8, !tbaa !2428
  %597 = shl nsw i64 %596, 3
  %598 = add i64 %597, %565
  %599 = add i64 %870, 24
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %602 = add i64 %834, -24
  %603 = add i64 %870, 28
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %RAX, align 8, !tbaa !2428
  %606 = add i64 %870, 32
  store i64 %606, i64* %PC, align 8
  %607 = load i32, i32* %594, align 4
  %608 = sext i32 %607 to i64
  %609 = shl nsw i64 %608, 12
  store i64 %609, i64* %RCX, align 8, !tbaa !2428
  %610 = add i64 %609, %605
  store i64 %610, i64* %RAX, align 8, !tbaa !2428
  %611 = icmp ult i64 %610, %605
  %612 = icmp ult i64 %610, %609
  %613 = or i1 %611, %612
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %16, align 1, !tbaa !2432
  %615 = trunc i64 %610 to i32
  %616 = and i32 %615, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616) #10
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %23, align 1, !tbaa !2446
  %621 = xor i64 %605, %610
  %622 = lshr i64 %621, 4
  %623 = trunc i64 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %28, align 1, !tbaa !2447
  %625 = icmp eq i64 %610, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %31, align 1, !tbaa !2448
  %627 = lshr i64 %610, 63
  %628 = trunc i64 %627 to i8
  store i8 %628, i8* %34, align 1, !tbaa !2449
  %629 = lshr i64 %605, 63
  %630 = lshr i64 %608, 51
  %631 = and i64 %630, 1
  %632 = xor i64 %627, %629
  %633 = xor i64 %627, %631
  %634 = add nuw nsw i64 %632, %633
  %635 = icmp eq i64 %634, 2
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %40, align 1, !tbaa !2450
  %637 = load i64, i64* %RBP, align 8
  %638 = add i64 %637, -44
  %639 = add i64 %870, 43
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RCX, align 8, !tbaa !2428
  %643 = shl nsw i64 %642, 3
  %644 = add i64 %643, %610
  %645 = add i64 %870, 48
  store i64 %645, i64* %PC, align 8
  %646 = bitcast i64 %601 to double
  %647 = inttoptr i64 %644 to double*
  %648 = load double, double* %647, align 8
  %649 = fdiv double %646, %648
  store double %649, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %650 = add i64 %637, -32
  %651 = add i64 %870, 52
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %650 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RAX, align 8, !tbaa !2428
  %654 = add i64 %637, -36
  %655 = add i64 %870, 56
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = sext i32 %657 to i64
  %659 = shl nsw i64 %658, 12
  store i64 %659, i64* %RCX, align 8, !tbaa !2428
  %660 = add i64 %659, %653
  store i64 %660, i64* %RAX, align 8, !tbaa !2428
  %661 = icmp ult i64 %660, %653
  %662 = icmp ult i64 %660, %659
  %663 = or i1 %661, %662
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %16, align 1, !tbaa !2432
  %665 = trunc i64 %660 to i32
  %666 = and i32 %665, 255
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666) #10
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  store i8 %670, i8* %23, align 1, !tbaa !2446
  %671 = xor i64 %653, %660
  %672 = lshr i64 %671, 4
  %673 = trunc i64 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %28, align 1, !tbaa !2447
  %675 = icmp eq i64 %660, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %31, align 1, !tbaa !2448
  %677 = lshr i64 %660, 63
  %678 = trunc i64 %677 to i8
  store i8 %678, i8* %34, align 1, !tbaa !2449
  %679 = lshr i64 %653, 63
  %680 = lshr i64 %658, 51
  %681 = and i64 %680, 1
  %682 = xor i64 %677, %679
  %683 = xor i64 %677, %681
  %684 = add nuw nsw i64 %682, %683
  %685 = icmp eq i64 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %40, align 1, !tbaa !2450
  %687 = add i64 %870, 67
  store i64 %687, i64* %PC, align 8
  %688 = load i32, i32* %640, align 4
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RCX, align 8, !tbaa !2428
  %690 = shl nsw i64 %689, 3
  %691 = add i64 %690, %660
  %692 = add i64 %870, 72
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to double*
  store double %649, double* %693, align 8
  %694 = load i64, i64* %RBP, align 8
  %695 = add i64 %694, -36
  %696 = load i64, i64* %PC, align 8
  %697 = add i64 %696, 3
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = add i32 %699, 1
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RAX, align 8, !tbaa !2428
  %702 = icmp eq i32 %699, -1
  %703 = icmp eq i32 %700, 0
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %16, align 1, !tbaa !2432
  %706 = and i32 %700, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706) #10
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %23, align 1, !tbaa !2446
  %711 = xor i32 %700, %699
  %712 = lshr i32 %711, 4
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %28, align 1, !tbaa !2447
  %715 = zext i1 %703 to i8
  store i8 %715, i8* %31, align 1, !tbaa !2448
  %716 = lshr i32 %700, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %34, align 1, !tbaa !2449
  %718 = lshr i32 %699, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %716
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %40, align 1, !tbaa !2450
  %723 = add i64 %696, 9
  store i64 %723, i64* %PC, align 8
  store i32 %700, i32* %698, align 4
  %724 = load i64, i64* %PC, align 8
  %725 = add i64 %724, -93
  store i64 %725, i64* %PC, align 8, !tbaa !2428
  br label %block_400d19

block_400e20:                                     ; preds = %block_400e19, %block_400e2c
  %726 = phi i64 [ %.pre66, %block_400e19 ], [ %426, %block_400e2c ]
  %727 = load i64, i64* %RBP, align 8
  %728 = add i64 %727, -36
  %729 = add i64 %726, 3
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RAX, align 8, !tbaa !2428
  %733 = add i64 %727, -4
  %734 = add i64 %726, 6
  store i64 %734, i64* %PC, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = sub i32 %731, %736
  %738 = icmp ult i32 %731, %736
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %16, align 1, !tbaa !2432
  %740 = and i32 %737, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740) #10
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %23, align 1, !tbaa !2446
  %745 = xor i32 %736, %731
  %746 = xor i32 %745, %737
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %28, align 1, !tbaa !2447
  %750 = icmp eq i32 %737, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %31, align 1, !tbaa !2448
  %752 = lshr i32 %737, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %34, align 1, !tbaa !2449
  %754 = lshr i32 %731, 31
  %755 = lshr i32 %736, 31
  %756 = xor i32 %755, %754
  %757 = xor i32 %752, %754
  %758 = add nuw nsw i32 %757, %756
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %40, align 1, !tbaa !2450
  %761 = icmp ne i8 %753, 0
  %762 = xor i1 %761, %759
  %.v67 = select i1 %762, i64 12, i64 126
  %763 = add i64 %726, %.v67
  store i64 %763, i64* %PC, align 8, !tbaa !2428
  br i1 %762, label %block_400e2c, label %block_400e9e

block_400ec4:                                     ; preds = %block_400c81
  %764 = load i64, i64* %RSP, align 8
  %765 = add i64 %764, 64
  store i64 %765, i64* %RSP, align 8, !tbaa !2428
  %766 = icmp ugt i64 %764, -65
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %16, align 1, !tbaa !2432
  %768 = trunc i64 %765 to i32
  %769 = and i32 %768, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769) #10
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %23, align 1, !tbaa !2446
  %774 = xor i64 %765, %764
  %775 = lshr i64 %774, 4
  %776 = trunc i64 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %28, align 1, !tbaa !2447
  %778 = icmp eq i64 %765, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %31, align 1, !tbaa !2448
  %780 = lshr i64 %765, 63
  %781 = trunc i64 %780 to i8
  store i8 %781, i8* %34, align 1, !tbaa !2449
  %782 = lshr i64 %764, 63
  %783 = xor i64 %780, %782
  %784 = add nuw nsw i64 %783, %780
  %785 = icmp eq i64 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %40, align 1, !tbaa !2450
  %787 = add i64 %1247, 5
  store i64 %787, i64* %PC, align 8
  %788 = add i64 %764, 72
  %789 = inttoptr i64 %765 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RBP, align 8, !tbaa !2428
  store i64 %788, i64* %RSP, align 8, !tbaa !2428
  %791 = add i64 %1247, 6
  store i64 %791, i64* %PC, align 8
  %792 = inttoptr i64 %788 to i64*
  %793 = load i64, i64* %792, align 8
  store i64 %793, i64* %PC, align 8, !tbaa !2428
  %794 = add i64 %764, 80
  store i64 %794, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400c9c:                                     ; preds = %block_400c8d, %block_400ca8
  %795 = phi i64 [ %.pre62, %block_400c8d ], [ %556, %block_400ca8 ]
  %796 = load i64, i64* %RBP, align 8
  %797 = add i64 %796, -36
  %798 = add i64 %795, 3
  store i64 %798, i64* %PC, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RAX, align 8, !tbaa !2428
  %802 = add i64 %796, -4
  %803 = add i64 %795, 6
  store i64 %803, i64* %PC, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = sub i32 %800, %805
  %807 = icmp ult i32 %800, %805
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %16, align 1, !tbaa !2432
  %809 = and i32 %806, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809) #10
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %23, align 1, !tbaa !2446
  %814 = xor i32 %805, %800
  %815 = xor i32 %814, %806
  %816 = lshr i32 %815, 4
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %28, align 1, !tbaa !2447
  %819 = icmp eq i32 %806, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %31, align 1, !tbaa !2448
  %821 = lshr i32 %806, 31
  %822 = trunc i32 %821 to i8
  store i8 %822, i8* %34, align 1, !tbaa !2449
  %823 = lshr i32 %800, 31
  %824 = lshr i32 %805, 31
  %825 = xor i32 %824, %823
  %826 = xor i32 %821, %823
  %827 = add nuw nsw i32 %826, %825
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %40, align 1, !tbaa !2450
  %830 = icmp ne i8 %822, 0
  %831 = xor i1 %830, %828
  %.v69 = select i1 %831, i64 12, i64 84
  %832 = add i64 %795, %.v69
  store i64 %832, i64* %PC, align 8, !tbaa !2428
  br i1 %831, label %block_400ca8, label %block_400cf0

block_400d19:                                     ; preds = %block_400d25, %block_400cf0
  %833 = phi i64 [ %725, %block_400d25 ], [ %.pre63, %block_400cf0 ]
  %834 = load i64, i64* %RBP, align 8
  %835 = add i64 %834, -36
  %836 = add i64 %833, 3
  store i64 %836, i64* %PC, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX, align 8, !tbaa !2428
  %840 = add i64 %834, -4
  %841 = add i64 %833, 6
  store i64 %841, i64* %PC, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = sub i32 %838, %843
  %845 = icmp ult i32 %838, %843
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %16, align 1, !tbaa !2432
  %847 = and i32 %844, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847) #10
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %23, align 1, !tbaa !2446
  %852 = xor i32 %843, %838
  %853 = xor i32 %852, %844
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %28, align 1, !tbaa !2447
  %857 = icmp eq i32 %844, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %31, align 1, !tbaa !2448
  %859 = lshr i32 %844, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %34, align 1, !tbaa !2449
  %861 = lshr i32 %838, 31
  %862 = lshr i32 %843, 31
  %863 = xor i32 %862, %861
  %864 = xor i32 %859, %861
  %865 = add nuw nsw i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %40, align 1, !tbaa !2450
  %868 = icmp ne i8 %860, 0
  %869 = xor i1 %868, %866
  %.v70 = select i1 %869, i64 12, i64 98
  %870 = add i64 %833, %.v70
  store i64 %870, i64* %PC, align 8, !tbaa !2428
  br i1 %869, label %block_400d25, label %block_400d7b

block_400e19:                                     ; preds = %block_400db2
  %871 = add i64 %1171, 7
  store i64 %871, i64* %PC, align 8
  store i32 0, i32* %1138, align 4
  %.pre66 = load i64, i64* %PC, align 8
  br label %block_400e20

block_400dbe:                                     ; preds = %block_400db2
  %872 = add i64 %1135, -32
  %873 = add i64 %1171, 4
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %RAX, align 8, !tbaa !2428
  %876 = add i64 %1171, 8
  store i64 %876, i64* %PC, align 8
  %877 = load i32, i32* %1138, align 4
  %878 = sext i32 %877 to i64
  %879 = shl nsw i64 %878, 12
  store i64 %879, i64* %RCX, align 8, !tbaa !2428
  %880 = add i64 %879, %875
  store i64 %880, i64* %RAX, align 8, !tbaa !2428
  %881 = icmp ult i64 %880, %875
  %882 = icmp ult i64 %880, %879
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %16, align 1, !tbaa !2432
  %885 = trunc i64 %880 to i32
  %886 = and i32 %885, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886) #10
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %23, align 1, !tbaa !2446
  %891 = xor i64 %875, %880
  %892 = lshr i64 %891, 4
  %893 = trunc i64 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %28, align 1, !tbaa !2447
  %895 = icmp eq i64 %880, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %31, align 1, !tbaa !2448
  %897 = lshr i64 %880, 63
  %898 = trunc i64 %897 to i8
  store i8 %898, i8* %34, align 1, !tbaa !2449
  %899 = lshr i64 %875, 63
  %900 = lshr i64 %878, 51
  %901 = and i64 %900, 1
  %902 = xor i64 %897, %899
  %903 = xor i64 %897, %901
  %904 = add nuw nsw i64 %902, %903
  %905 = icmp eq i64 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %40, align 1, !tbaa !2450
  %907 = add i64 %1135, -44
  %908 = add i64 %1171, 19
  store i64 %908, i64* %PC, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = sext i32 %910 to i64
  store i64 %911, i64* %RCX, align 8, !tbaa !2428
  %912 = shl nsw i64 %911, 3
  %913 = add i64 %912, %880
  %914 = add i64 %1171, 24
  store i64 %914, i64* %PC, align 8
  %915 = inttoptr i64 %913 to i64*
  %916 = load i64, i64* %915, align 8
  store i64 %916, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %917 = add i64 %1135, -16
  %918 = add i64 %1171, 28
  store i64 %918, i64* %PC, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RAX, align 8, !tbaa !2428
  %921 = add i64 %1171, 32
  store i64 %921, i64* %PC, align 8
  %922 = load i32, i32* %1138, align 4
  %923 = sext i32 %922 to i64
  %924 = shl nsw i64 %923, 12
  store i64 %924, i64* %RCX, align 8, !tbaa !2428
  %925 = add i64 %924, %920
  store i64 %925, i64* %RAX, align 8, !tbaa !2428
  %926 = icmp ult i64 %925, %920
  %927 = icmp ult i64 %925, %924
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %16, align 1, !tbaa !2432
  %930 = trunc i64 %925 to i32
  %931 = and i32 %930, 255
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931) #10
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %23, align 1, !tbaa !2446
  %936 = xor i64 %920, %925
  %937 = lshr i64 %936, 4
  %938 = trunc i64 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %28, align 1, !tbaa !2447
  %940 = icmp eq i64 %925, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %31, align 1, !tbaa !2448
  %942 = lshr i64 %925, 63
  %943 = trunc i64 %942 to i8
  store i8 %943, i8* %34, align 1, !tbaa !2449
  %944 = lshr i64 %920, 63
  %945 = lshr i64 %923, 51
  %946 = and i64 %945, 1
  %947 = xor i64 %942, %944
  %948 = xor i64 %942, %946
  %949 = add nuw nsw i64 %947, %948
  %950 = icmp eq i64 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %40, align 1, !tbaa !2450
  %952 = load i64, i64* %RBP, align 8
  %953 = add i64 %952, -40
  %954 = add i64 %1171, 43
  store i64 %954, i64* %PC, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  store i64 %957, i64* %RCX, align 8, !tbaa !2428
  %958 = shl nsw i64 %957, 3
  %959 = add i64 %958, %925
  %960 = add i64 %1171, 48
  store i64 %960, i64* %PC, align 8
  %961 = bitcast i64 %916 to double
  %962 = inttoptr i64 %959 to double*
  %963 = load double, double* %962, align 8
  %964 = fmul double %961, %963
  store double %964, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %965 = add i64 %952, -24
  %966 = add i64 %1171, 52
  store i64 %966, i64* %PC, align 8
  %967 = inttoptr i64 %965 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RAX, align 8, !tbaa !2428
  %969 = add i64 %952, -44
  %970 = add i64 %1171, 56
  store i64 %970, i64* %PC, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  %974 = shl nsw i64 %973, 12
  store i64 %974, i64* %RCX, align 8, !tbaa !2428
  %975 = add i64 %974, %968
  store i64 %975, i64* %RAX, align 8, !tbaa !2428
  %976 = icmp ult i64 %975, %968
  %977 = icmp ult i64 %975, %974
  %978 = or i1 %976, %977
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %16, align 1, !tbaa !2432
  %980 = trunc i64 %975 to i32
  %981 = and i32 %980, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981) #10
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %23, align 1, !tbaa !2446
  %986 = xor i64 %968, %975
  %987 = lshr i64 %986, 4
  %988 = trunc i64 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %28, align 1, !tbaa !2447
  %990 = icmp eq i64 %975, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %31, align 1, !tbaa !2448
  %992 = lshr i64 %975, 63
  %993 = trunc i64 %992 to i8
  store i8 %993, i8* %34, align 1, !tbaa !2449
  %994 = lshr i64 %968, 63
  %995 = lshr i64 %973, 51
  %996 = and i64 %995, 1
  %997 = xor i64 %992, %994
  %998 = xor i64 %992, %996
  %999 = add nuw nsw i64 %997, %998
  %1000 = icmp eq i64 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %40, align 1, !tbaa !2450
  %1002 = add i64 %1171, 67
  store i64 %1002, i64* %PC, align 8
  %1003 = load i32, i32* %955, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RCX, align 8, !tbaa !2428
  %1005 = shl nsw i64 %1004, 3
  %1006 = add i64 %1005, %975
  %1007 = add i64 %1171, 72
  store i64 %1007, i64* %PC, align 8
  %1008 = inttoptr i64 %1006 to double*
  %1009 = load double, double* %1008, align 8
  %1010 = fadd double %964, %1009
  store double %1010, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %1011 = add i64 %1171, 77
  store i64 %1011, i64* %PC, align 8
  %1012 = inttoptr i64 %1006 to double*
  store double %1010, double* %1012, align 8
  %1013 = load i64, i64* %RBP, align 8
  %1014 = add i64 %1013, -36
  %1015 = load i64, i64* %PC, align 8
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %PC, align 8
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX, align 8, !tbaa !2428
  %1021 = icmp eq i32 %1018, -1
  %1022 = icmp eq i32 %1019, 0
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %16, align 1, !tbaa !2432
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025) #10
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %23, align 1, !tbaa !2446
  %1030 = xor i32 %1019, %1018
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %28, align 1, !tbaa !2447
  %1034 = zext i1 %1022 to i8
  store i8 %1034, i8* %31, align 1, !tbaa !2448
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %34, align 1, !tbaa !2449
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1035
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %40, align 1, !tbaa !2450
  %1042 = add i64 %1015, 9
  store i64 %1042, i64* %PC, align 8
  store i32 %1019, i32* %1017, align 4
  %1043 = load i64, i64* %PC, align 8
  %1044 = add i64 %1043, -98
  store i64 %1044, i64* %PC, align 8, !tbaa !2428
  br label %block_400db2

block_400d90:                                     ; preds = %block_400d84
  store <4 x i32> zeroinitializer, <4 x i32>* %85, align 1, !tbaa !2451
  %1045 = add i64 %1173, -24
  %1046 = add i64 %1209, 7
  store i64 %1046, i64* %PC, align 8
  %1047 = inttoptr i64 %1045 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %RAX, align 8, !tbaa !2428
  %1049 = add i64 %1173, -44
  %1050 = add i64 %1209, 11
  store i64 %1050, i64* %PC, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = shl nsw i64 %1053, 12
  store i64 %1054, i64* %RCX, align 8, !tbaa !2428
  %1055 = add i64 %1054, %1048
  store i64 %1055, i64* %RAX, align 8, !tbaa !2428
  %1056 = icmp ult i64 %1055, %1048
  %1057 = icmp ult i64 %1055, %1054
  %1058 = or i1 %1056, %1057
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %16, align 1, !tbaa !2432
  %1060 = trunc i64 %1055 to i32
  %1061 = and i32 %1060, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061) #10
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %23, align 1, !tbaa !2446
  %1066 = xor i64 %1048, %1055
  %1067 = lshr i64 %1066, 4
  %1068 = trunc i64 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %28, align 1, !tbaa !2447
  %1070 = icmp eq i64 %1055, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %31, align 1, !tbaa !2448
  %1072 = lshr i64 %1055, 63
  %1073 = trunc i64 %1072 to i8
  store i8 %1073, i8* %34, align 1, !tbaa !2449
  %1074 = lshr i64 %1048, 63
  %1075 = lshr i64 %1053, 51
  %1076 = and i64 %1075, 1
  %1077 = xor i64 %1072, %1074
  %1078 = xor i64 %1072, %1076
  %1079 = add nuw nsw i64 %1077, %1078
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %40, align 1, !tbaa !2450
  %1082 = add i64 %1209, 22
  store i64 %1082, i64* %PC, align 8
  %1083 = load i32, i32* %1176, align 4
  %1084 = sext i32 %1083 to i64
  store i64 %1084, i64* %RCX, align 8, !tbaa !2428
  %1085 = shl nsw i64 %1084, 3
  %1086 = add i64 %1085, %1055
  %1087 = add i64 %1209, 27
  store i64 %1087, i64* %PC, align 8
  %1088 = load i64, i64* %75, align 1
  %1089 = inttoptr i64 %1086 to i64*
  store i64 %1088, i64* %1089, align 8
  %1090 = load i64, i64* %RBP, align 8
  %1091 = add i64 %1090, -36
  %1092 = load i64, i64* %PC, align 8
  %1093 = add i64 %1092, 7
  store i64 %1093, i64* %PC, align 8
  %1094 = inttoptr i64 %1091 to i32*
  store i32 0, i32* %1094, align 4
  %.pre65 = load i64, i64* %PC, align 8
  br label %block_400db2

block_400e9e:                                     ; preds = %block_400e20
  %1095 = add i64 %727, -40
  %1096 = add i64 %763, 8
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
  store i8 %1104, i8* %16, align 1, !tbaa !2432
  %1105 = and i32 %1099, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105) #10
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %23, align 1, !tbaa !2446
  %1110 = xor i32 %1099, %1098
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %28, align 1, !tbaa !2447
  %1114 = zext i1 %1102 to i8
  store i8 %1114, i8* %31, align 1, !tbaa !2448
  %1115 = lshr i32 %1099, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %34, align 1, !tbaa !2449
  %1117 = lshr i32 %1098, 31
  %1118 = xor i32 %1115, %1117
  %1119 = add nuw nsw i32 %1118, %1115
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %40, align 1, !tbaa !2450
  %1122 = add i64 %763, 14
  store i64 %1122, i64* %PC, align 8
  store i32 %1099, i32* %1097, align 4
  %1123 = load i64, i64* %PC, align 8
  %1124 = add i64 %1123, -296
  store i64 %1124, i64* %PC, align 8, !tbaa !2428
  br label %block_400d84

block_400c8d:                                     ; preds = %block_400c81
  store <4 x i32> zeroinitializer, <4 x i32>* %84, align 1, !tbaa !2451
  %1125 = add i64 %1211, -56
  %1126 = add i64 %1247, 8
  store i64 %1126, i64* %PC, align 8
  %1127 = load i64, i64* %75, align 1
  %1128 = inttoptr i64 %1125 to i64*
  store i64 %1127, i64* %1128, align 8
  %1129 = load i64, i64* %RBP, align 8
  %1130 = add i64 %1129, -36
  %1131 = load i64, i64* %PC, align 8
  %1132 = add i64 %1131, 7
  store i64 %1132, i64* %PC, align 8
  %1133 = inttoptr i64 %1130 to i32*
  store i32 0, i32* %1133, align 4
  %.pre62 = load i64, i64* %PC, align 8
  br label %block_400c9c

block_400db2:                                     ; preds = %block_400d90, %block_400dbe
  %1134 = phi i64 [ %.pre65, %block_400d90 ], [ %1044, %block_400dbe ]
  %1135 = load i64, i64* %RBP, align 8
  %1136 = add i64 %1135, -36
  %1137 = add i64 %1134, 3
  store i64 %1137, i64* %PC, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX, align 8, !tbaa !2428
  %1141 = add i64 %1135, -4
  %1142 = add i64 %1134, 6
  store i64 %1142, i64* %PC, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sub i32 %1139, %1144
  %1146 = icmp ult i32 %1139, %1144
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %16, align 1, !tbaa !2432
  %1148 = and i32 %1145, 255
  %1149 = tail call i32 @llvm.ctpop.i32(i32 %1148) #10
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  store i8 %1152, i8* %23, align 1, !tbaa !2446
  %1153 = xor i32 %1144, %1139
  %1154 = xor i32 %1153, %1145
  %1155 = lshr i32 %1154, 4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %28, align 1, !tbaa !2447
  %1158 = icmp eq i32 %1145, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %31, align 1, !tbaa !2448
  %1160 = lshr i32 %1145, 31
  %1161 = trunc i32 %1160 to i8
  store i8 %1161, i8* %34, align 1, !tbaa !2449
  %1162 = lshr i32 %1139, 31
  %1163 = lshr i32 %1144, 31
  %1164 = xor i32 %1163, %1162
  %1165 = xor i32 %1160, %1162
  %1166 = add nuw nsw i32 %1165, %1164
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %40, align 1, !tbaa !2450
  %1169 = icmp ne i8 %1161, 0
  %1170 = xor i1 %1169, %1167
  %.v71 = select i1 %1170, i64 12, i64 103
  %1171 = add i64 %1134, %.v71
  store i64 %1171, i64* %PC, align 8, !tbaa !2428
  br i1 %1170, label %block_400dbe, label %block_400e19

block_400d84:                                     ; preds = %block_400e9e, %block_400d7b
  %1172 = phi i64 [ %1124, %block_400e9e ], [ %.pre64, %block_400d7b ]
  %1173 = load i64, i64* %RBP, align 8
  %1174 = add i64 %1173, -40
  %1175 = add i64 %1172, 3
  store i64 %1175, i64* %PC, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RAX, align 8, !tbaa !2428
  %1179 = add i64 %1173, -8
  %1180 = add i64 %1172, 6
  store i64 %1180, i64* %PC, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = sub i32 %1177, %1182
  %1184 = icmp ult i32 %1177, %1182
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %16, align 1, !tbaa !2432
  %1186 = and i32 %1183, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186) #10
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %23, align 1, !tbaa !2446
  %1191 = xor i32 %1182, %1177
  %1192 = xor i32 %1191, %1183
  %1193 = lshr i32 %1192, 4
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %28, align 1, !tbaa !2447
  %1196 = icmp eq i32 %1183, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %31, align 1, !tbaa !2448
  %1198 = lshr i32 %1183, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %34, align 1, !tbaa !2449
  %1200 = lshr i32 %1177, 31
  %1201 = lshr i32 %1182, 31
  %1202 = xor i32 %1201, %1200
  %1203 = xor i32 %1198, %1200
  %1204 = add nuw nsw i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %40, align 1, !tbaa !2450
  %1207 = icmp ne i8 %1199, 0
  %1208 = xor i1 %1207, %1205
  %.v = select i1 %1208, i64 12, i64 301
  %1209 = add i64 %1172, %.v
  store i64 %1209, i64* %PC, align 8, !tbaa !2428
  br i1 %1208, label %block_400d90, label %block_400eb1

block_400c81:                                     ; preds = %block_400eb1, %block_400c60
  %1210 = phi i64 [ %207, %block_400eb1 ], [ %.pre, %block_400c60 ]
  %1211 = load i64, i64* %RBP, align 8
  %1212 = add i64 %1211, -44
  %1213 = add i64 %1210, 3
  store i64 %1213, i64* %PC, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RAX, align 8, !tbaa !2428
  %1217 = add i64 %1211, -8
  %1218 = add i64 %1210, 6
  store i64 %1218, i64* %PC, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sub i32 %1215, %1220
  %1222 = icmp ult i32 %1215, %1220
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %16, align 1, !tbaa !2432
  %1224 = and i32 %1221, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224) #10
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %23, align 1, !tbaa !2446
  %1229 = xor i32 %1220, %1215
  %1230 = xor i32 %1229, %1221
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %28, align 1, !tbaa !2447
  %1234 = icmp eq i32 %1221, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %31, align 1, !tbaa !2448
  %1236 = lshr i32 %1221, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %34, align 1, !tbaa !2449
  %1238 = lshr i32 %1215, 31
  %1239 = lshr i32 %1220, 31
  %1240 = xor i32 %1239, %1238
  %1241 = xor i32 %1236, %1238
  %1242 = add nuw nsw i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %40, align 1, !tbaa !2450
  %1245 = icmp ne i8 %1237, 0
  %1246 = xor i1 %1245, %1243
  %.v68 = select i1 %1246, i64 12, i64 579
  %1247 = add i64 %1210, %.v68
  store i64 %1247, i64* %PC, align 8, !tbaa !2428
  br i1 %1246, label %block_400c8d, label %block_400ec4
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
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
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #10
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
  %101 = tail call %struct.Memory* @sub_400890_xmalloc(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
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
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #10
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
define %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10
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
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2452
  store i64 0, i64* %42, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
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
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #10
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
define %struct.Memory* @sub_400640__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400640:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
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
  %39 = tail call fastcc %struct.Memory* @ext_6020f0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ed0_kernel_gramschmidt_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400ed0:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10
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
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
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
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %76 = bitcast [32 x %union.VectorReg]* %5 to double*
  %77 = bitcast i64* %74 to double*
  %78 = bitcast %union.VectorReg* %6 to double*
  %79 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %81 = bitcast i64* %80 to double*
  %.pre = load i64, i64* %PC, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to i8*
  %84 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  %85 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  br label %block_400ef1

block_400ef1:                                     ; preds = %block_401121, %block_400ed0
  %86 = phi i64 [ %321, %block_401121 ], [ %.pre, %block_400ed0 ]
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -44
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
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #10
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %23, align 1, !tbaa !2446
  %105 = xor i32 %96, %91
  %106 = xor i32 %105, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %28, align 1, !tbaa !2447
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %31, align 1, !tbaa !2448
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %34, align 1, !tbaa !2449
  %114 = lshr i32 %91, 31
  %115 = lshr i32 %96, 31
  %116 = xor i32 %115, %114
  %117 = xor i32 %112, %114
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %40, align 1, !tbaa !2450
  %121 = icmp ne i8 %113, 0
  %122 = xor i1 %121, %119
  %.v68 = select i1 %122, i64 12, i64 579
  %123 = add i64 %86, %.v68
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br i1 %122, label %block_400efd, label %block_401134

block_400feb:                                     ; preds = %block_400f89
  %124 = add i64 %988, -44
  %125 = add i64 %1024, 3
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  %130 = icmp eq i32 %127, -1
  %131 = icmp eq i32 %128, 0
  %132 = or i1 %130, %131
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %16, align 1, !tbaa !2432
  %134 = and i32 %128, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134) #10
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %23, align 1, !tbaa !2446
  %139 = xor i32 %128, %127
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, i8* %28, align 1, !tbaa !2447
  %143 = zext i1 %131 to i8
  store i8 %143, i8* %31, align 1, !tbaa !2448
  %144 = lshr i32 %128, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %34, align 1, !tbaa !2449
  %146 = lshr i32 %127, 31
  %147 = xor i32 %144, %146
  %148 = add nuw nsw i32 %147, %144
  %149 = icmp eq i32 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %40, align 1, !tbaa !2450
  %151 = add i64 %988, -40
  %152 = add i64 %1024, 9
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  store i32 %128, i32* %153, align 4
  %.pre64 = load i64, i64* %PC, align 8
  br label %block_400ff4

block_400f60:                                     ; preds = %block_400f0c
  %154 = add i64 %950, -56
  %155 = add i64 %986, 5
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %158 = add i64 %986, -2352
  %159 = add i64 %986, 10
  %160 = load i64, i64* %RSP, align 8, !tbaa !2428
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %RSP, align 8, !tbaa !2428
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  %163 = load double, double* %76, align 8, !alias.scope !2462, !noalias !2465
  %164 = load i64, i64* %162, align 8
  store i64 %160, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
  %165 = tail call double @sqrt(double %163)
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 24, i32 8, i1 false)
  store double %165, double* %76, align 8, !alias.scope !2462, !noalias !2465
  %166 = load i64, i64* %RBP, align 8
  %167 = add i64 %166, -24
  %168 = add i64 %164, 4
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = add i64 %166, -44
  %172 = add i64 %164, 8
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = shl nsw i64 %175, 12
  store i64 %176, i64* %RCX, align 8, !tbaa !2428
  %177 = add i64 %176, %170
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = icmp ult i64 %177, %170
  %179 = icmp ult i64 %177, %176
  %180 = or i1 %178, %179
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %16, align 1, !tbaa !2432
  %182 = trunc i64 %177 to i32
  %183 = and i32 %182, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #10
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %23, align 1, !tbaa !2446
  %188 = xor i64 %170, %177
  %189 = lshr i64 %188, 4
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %28, align 1, !tbaa !2447
  %192 = icmp eq i64 %177, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %31, align 1, !tbaa !2448
  %194 = lshr i64 %177, 63
  %195 = trunc i64 %194 to i8
  store i8 %195, i8* %34, align 1, !tbaa !2449
  %196 = lshr i64 %170, 63
  %197 = lshr i64 %175, 51
  %198 = and i64 %197, 1
  %199 = xor i64 %194, %196
  %200 = xor i64 %194, %198
  %201 = add nuw nsw i64 %199, %200
  %202 = icmp eq i64 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %40, align 1, !tbaa !2450
  %204 = add i64 %164, 19
  store i64 %204, i64* %PC, align 8
  %205 = load i32, i32* %173, align 4
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %RCX, align 8, !tbaa !2428
  %207 = shl nsw i64 %206, 3
  %208 = add i64 %207, %177
  %209 = add i64 %164, 24
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to double*
  store double %165, double* %210, align 8
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -36
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, 7
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %212 to i32*
  store i32 0, i32* %215, align 4
  %.pre63 = load i64, i64* %PC, align 8
  br label %block_400f89

block_400ff4:                                     ; preds = %block_40110e, %block_400feb
  %216 = phi i64 [ %917, %block_40110e ], [ %.pre64, %block_400feb ]
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -40
  %219 = add i64 %216, 3
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = add i64 %217, -8
  %224 = add i64 %216, 6
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = sub i32 %221, %226
  %228 = icmp ult i32 %221, %226
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %16, align 1, !tbaa !2432
  %230 = and i32 %227, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #10
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %23, align 1, !tbaa !2446
  %235 = xor i32 %226, %221
  %236 = xor i32 %235, %227
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %28, align 1, !tbaa !2447
  %240 = icmp eq i32 %227, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %31, align 1, !tbaa !2448
  %242 = lshr i32 %227, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %34, align 1, !tbaa !2449
  %244 = lshr i32 %221, 31
  %245 = lshr i32 %226, 31
  %246 = xor i32 %245, %244
  %247 = xor i32 %242, %244
  %248 = add nuw nsw i32 %247, %246
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %40, align 1, !tbaa !2450
  %251 = icmp ne i8 %243, 0
  %252 = xor i1 %251, %249
  %.v = select i1 %252, i64 12, i64 301
  %253 = add i64 %216, %.v
  store i64 %253, i64* %PC, align 8, !tbaa !2428
  br i1 %252, label %block_401000, label %block_401121

block_401022:                                     ; preds = %block_401000, %block_40102e
  %254 = phi i64 [ %.pre65, %block_401000 ], [ %1197, %block_40102e ]
  %255 = load i64, i64* %RBP, align 8
  %256 = add i64 %255, -36
  %257 = add i64 %254, 3
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RAX, align 8, !tbaa !2428
  %261 = add i64 %255, -4
  %262 = add i64 %254, 6
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = sub i32 %259, %264
  %266 = icmp ult i32 %259, %264
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %16, align 1, !tbaa !2432
  %268 = and i32 %265, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268) #10
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %23, align 1, !tbaa !2446
  %273 = xor i32 %264, %259
  %274 = xor i32 %273, %265
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %28, align 1, !tbaa !2447
  %278 = icmp eq i32 %265, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %31, align 1, !tbaa !2448
  %280 = lshr i32 %265, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %34, align 1, !tbaa !2449
  %282 = lshr i32 %259, 31
  %283 = lshr i32 %264, 31
  %284 = xor i32 %283, %282
  %285 = xor i32 %280, %282
  %286 = add nuw nsw i32 %285, %284
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %40, align 1, !tbaa !2450
  %289 = icmp ne i8 %281, 0
  %290 = xor i1 %289, %287
  %.v71 = select i1 %290, i64 12, i64 103
  %291 = add i64 %254, %.v71
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  br i1 %290, label %block_40102e, label %block_401089

block_401121:                                     ; preds = %block_400ff4
  %292 = add i64 %217, -44
  %293 = add i64 %253, 8
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, 1
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = icmp eq i32 %295, -1
  %299 = icmp eq i32 %296, 0
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %16, align 1, !tbaa !2432
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #10
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %23, align 1, !tbaa !2446
  %307 = xor i32 %296, %295
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %28, align 1, !tbaa !2447
  %311 = zext i1 %299 to i8
  store i8 %311, i8* %31, align 1, !tbaa !2448
  %312 = lshr i32 %296, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %34, align 1, !tbaa !2449
  %314 = lshr i32 %295, 31
  %315 = xor i32 %312, %314
  %316 = add nuw nsw i32 %315, %312
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %40, align 1, !tbaa !2450
  %319 = add i64 %253, 14
  store i64 %319, i64* %PC, align 8
  store i32 %296, i32* %294, align 4
  %320 = load i64, i64* %PC, align 8
  %321 = add i64 %320, -574
  store i64 %321, i64* %PC, align 8, !tbaa !2428
  br label %block_400ef1

block_40109c:                                     ; preds = %block_401090
  %322 = add i64 %842, -16
  %323 = add i64 %878, 4
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = add i64 %878, 8
  store i64 %326, i64* %PC, align 8
  %327 = load i32, i32* %845, align 4
  %328 = sext i32 %327 to i64
  %329 = shl nsw i64 %328, 12
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  %330 = add i64 %329, %325
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp ult i64 %330, %325
  %332 = icmp ult i64 %330, %329
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %16, align 1, !tbaa !2432
  %335 = trunc i64 %330 to i32
  %336 = and i32 %335, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336) #10
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %23, align 1, !tbaa !2446
  %341 = xor i64 %325, %330
  %342 = lshr i64 %341, 4
  %343 = trunc i64 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %28, align 1, !tbaa !2447
  %345 = icmp eq i64 %330, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %31, align 1, !tbaa !2448
  %347 = lshr i64 %330, 63
  %348 = trunc i64 %347 to i8
  store i8 %348, i8* %34, align 1, !tbaa !2449
  %349 = lshr i64 %325, 63
  %350 = lshr i64 %328, 51
  %351 = and i64 %350, 1
  %352 = xor i64 %347, %349
  %353 = xor i64 %347, %351
  %354 = add nuw nsw i64 %352, %353
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %40, align 1, !tbaa !2450
  %357 = add i64 %842, -40
  %358 = add i64 %878, 19
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %RCX, align 8, !tbaa !2428
  %362 = shl nsw i64 %361, 3
  %363 = add i64 %362, %330
  %364 = add i64 %878, 24
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %367 = add i64 %842, -32
  %368 = add i64 %878, 28
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = add i64 %878, 32
  store i64 %371, i64* %PC, align 8
  %372 = load i32, i32* %845, align 4
  %373 = sext i32 %372 to i64
  %374 = shl nsw i64 %373, 12
  store i64 %374, i64* %RCX, align 8, !tbaa !2428
  %375 = add i64 %374, %370
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = icmp ult i64 %375, %370
  %377 = icmp ult i64 %375, %374
  %378 = or i1 %376, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %16, align 1, !tbaa !2432
  %380 = trunc i64 %375 to i32
  %381 = and i32 %380, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #10
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %23, align 1, !tbaa !2446
  %386 = xor i64 %370, %375
  %387 = lshr i64 %386, 4
  %388 = trunc i64 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %28, align 1, !tbaa !2447
  %390 = icmp eq i64 %375, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %31, align 1, !tbaa !2448
  %392 = lshr i64 %375, 63
  %393 = trunc i64 %392 to i8
  store i8 %393, i8* %34, align 1, !tbaa !2449
  %394 = lshr i64 %370, 63
  %395 = lshr i64 %373, 51
  %396 = and i64 %395, 1
  %397 = xor i64 %392, %394
  %398 = xor i64 %392, %396
  %399 = add nuw nsw i64 %397, %398
  %400 = icmp eq i64 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %40, align 1, !tbaa !2450
  %402 = load i64, i64* %RBP, align 8
  %403 = add i64 %402, -44
  %404 = add i64 %878, 43
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = shl nsw i64 %407, 3
  %409 = add i64 %408, %375
  %410 = add i64 %878, 48
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %79, align 1, !tbaa !2452
  store double 0.000000e+00, double* %81, align 1, !tbaa !2452
  %413 = add i64 %402, -24
  %414 = add i64 %878, 52
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RAX, align 8, !tbaa !2428
  %417 = add i64 %878, 56
  store i64 %417, i64* %PC, align 8
  %418 = load i32, i32* %405, align 4
  %419 = sext i32 %418 to i64
  %420 = shl nsw i64 %419, 12
  store i64 %420, i64* %RCX, align 8, !tbaa !2428
  %421 = add i64 %420, %416
  store i64 %421, i64* %RAX, align 8, !tbaa !2428
  %422 = icmp ult i64 %421, %416
  %423 = icmp ult i64 %421, %420
  %424 = or i1 %422, %423
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %16, align 1, !tbaa !2432
  %426 = trunc i64 %421 to i32
  %427 = and i32 %426, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427) #10
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %23, align 1, !tbaa !2446
  %432 = xor i64 %416, %421
  %433 = lshr i64 %432, 4
  %434 = trunc i64 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %28, align 1, !tbaa !2447
  %436 = icmp eq i64 %421, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %31, align 1, !tbaa !2448
  %438 = lshr i64 %421, 63
  %439 = trunc i64 %438 to i8
  store i8 %439, i8* %34, align 1, !tbaa !2449
  %440 = lshr i64 %416, 63
  %441 = lshr i64 %419, 51
  %442 = and i64 %441, 1
  %443 = xor i64 %438, %440
  %444 = xor i64 %438, %442
  %445 = add nuw nsw i64 %443, %444
  %446 = icmp eq i64 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %40, align 1, !tbaa !2450
  %448 = add i64 %402, -40
  %449 = add i64 %878, 67
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %RCX, align 8, !tbaa !2428
  %453 = shl nsw i64 %452, 3
  %454 = add i64 %453, %421
  %455 = add i64 %878, 72
  store i64 %455, i64* %PC, align 8
  %456 = bitcast i64 %412 to double
  %457 = inttoptr i64 %454 to double*
  %458 = load double, double* %457, align 8
  %459 = fmul double %456, %458
  store double %459, double* %78, align 1, !tbaa !2452
  store i64 0, i64* %80, align 1, !tbaa !2452
  %460 = load double, double* %76, align 1
  %461 = fsub double %460, %459
  store double %461, double* %76, align 1, !tbaa !2452
  %462 = load i64, i64* %RBP, align 8
  %463 = add i64 %462, -16
  %464 = add i64 %878, 80
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %RAX, align 8, !tbaa !2428
  %467 = add i64 %462, -36
  %468 = add i64 %878, 84
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = shl nsw i64 %471, 12
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  %473 = add i64 %472, %466
  store i64 %473, i64* %RAX, align 8, !tbaa !2428
  %474 = icmp ult i64 %473, %466
  %475 = icmp ult i64 %473, %472
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %16, align 1, !tbaa !2432
  %478 = trunc i64 %473 to i32
  %479 = and i32 %478, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479) #10
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %23, align 1, !tbaa !2446
  %484 = xor i64 %466, %473
  %485 = lshr i64 %484, 4
  %486 = trunc i64 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %28, align 1, !tbaa !2447
  %488 = icmp eq i64 %473, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %31, align 1, !tbaa !2448
  %490 = lshr i64 %473, 63
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %34, align 1, !tbaa !2449
  %492 = lshr i64 %466, 63
  %493 = lshr i64 %471, 51
  %494 = and i64 %493, 1
  %495 = xor i64 %490, %492
  %496 = xor i64 %490, %494
  %497 = add nuw nsw i64 %495, %496
  %498 = icmp eq i64 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %40, align 1, !tbaa !2450
  %500 = add i64 %462, -40
  %501 = add i64 %878, 95
  store i64 %501, i64* %PC, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %RCX, align 8, !tbaa !2428
  %505 = shl nsw i64 %504, 3
  %506 = add i64 %505, %473
  %507 = add i64 %878, 100
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to double*
  store double %461, double* %508, align 8
  %509 = load i64, i64* %RBP, align 8
  %510 = add i64 %509, -36
  %511 = load i64, i64* %PC, align 8
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = add i32 %514, 1
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX, align 8, !tbaa !2428
  %517 = icmp eq i32 %514, -1
  %518 = icmp eq i32 %515, 0
  %519 = or i1 %517, %518
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %16, align 1, !tbaa !2432
  %521 = and i32 %515, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521) #10
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %23, align 1, !tbaa !2446
  %526 = xor i32 %515, %514
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %28, align 1, !tbaa !2447
  %530 = zext i1 %518 to i8
  store i8 %530, i8* %31, align 1, !tbaa !2448
  %531 = lshr i32 %515, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %34, align 1, !tbaa !2449
  %533 = lshr i32 %514, 31
  %534 = xor i32 %531, %533
  %535 = add nuw nsw i32 %534, %531
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %40, align 1, !tbaa !2450
  %538 = add i64 %511, 9
  store i64 %538, i64* %PC, align 8
  store i32 %515, i32* %513, align 4
  %539 = load i64, i64* %PC, align 8
  %540 = add i64 %539, -121
  store i64 %540, i64* %PC, align 8, !tbaa !2428
  br label %block_401090

block_400f18:                                     ; preds = %block_400f0c
  %541 = add i64 %950, -16
  %542 = add i64 %986, 4
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RAX, align 8, !tbaa !2428
  %545 = add i64 %986, 8
  store i64 %545, i64* %PC, align 8
  %546 = load i32, i32* %953, align 4
  %547 = sext i32 %546 to i64
  %548 = shl nsw i64 %547, 12
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  %549 = add i64 %548, %544
  store i64 %549, i64* %RAX, align 8, !tbaa !2428
  %550 = icmp ult i64 %549, %544
  %551 = icmp ult i64 %549, %548
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %16, align 1, !tbaa !2432
  %554 = trunc i64 %549 to i32
  %555 = and i32 %554, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555) #10
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %23, align 1, !tbaa !2446
  %560 = xor i64 %544, %549
  %561 = lshr i64 %560, 4
  %562 = trunc i64 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %28, align 1, !tbaa !2447
  %564 = icmp eq i64 %549, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %31, align 1, !tbaa !2448
  %566 = lshr i64 %549, 63
  %567 = trunc i64 %566 to i8
  store i8 %567, i8* %34, align 1, !tbaa !2449
  %568 = lshr i64 %544, 63
  %569 = lshr i64 %547, 51
  %570 = and i64 %569, 1
  %571 = xor i64 %566, %568
  %572 = xor i64 %566, %570
  %573 = add nuw nsw i64 %571, %572
  %574 = icmp eq i64 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %40, align 1, !tbaa !2450
  %576 = add i64 %950, -44
  %577 = add i64 %986, 19
  store i64 %577, i64* %PC, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RCX, align 8, !tbaa !2428
  %581 = shl nsw i64 %580, 3
  %582 = add i64 %581, %549
  %583 = add i64 %986, 24
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %586 = add i64 %986, 28
  store i64 %586, i64* %PC, align 8
  %587 = load i64, i64* %543, align 8
  store i64 %587, i64* %RAX, align 8, !tbaa !2428
  %588 = add i64 %986, 32
  store i64 %588, i64* %PC, align 8
  %589 = load i32, i32* %953, align 4
  %590 = sext i32 %589 to i64
  %591 = shl nsw i64 %590, 12
  store i64 %591, i64* %RCX, align 8, !tbaa !2428
  %592 = add i64 %591, %587
  store i64 %592, i64* %RAX, align 8, !tbaa !2428
  %593 = icmp ult i64 %592, %587
  %594 = icmp ult i64 %592, %591
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %16, align 1, !tbaa !2432
  %597 = trunc i64 %592 to i32
  %598 = and i32 %597, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598) #10
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %23, align 1, !tbaa !2446
  %603 = xor i64 %587, %592
  %604 = lshr i64 %603, 4
  %605 = trunc i64 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %28, align 1, !tbaa !2447
  %607 = icmp eq i64 %592, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %31, align 1, !tbaa !2448
  %609 = lshr i64 %592, 63
  %610 = trunc i64 %609 to i8
  store i8 %610, i8* %34, align 1, !tbaa !2449
  %611 = lshr i64 %587, 63
  %612 = lshr i64 %590, 51
  %613 = and i64 %612, 1
  %614 = xor i64 %609, %611
  %615 = xor i64 %609, %613
  %616 = add nuw nsw i64 %614, %615
  %617 = icmp eq i64 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %40, align 1, !tbaa !2450
  %619 = load i64, i64* %RBP, align 8
  %620 = add i64 %619, -44
  %621 = add i64 %986, 43
  store i64 %621, i64* %PC, align 8
  %622 = inttoptr i64 %620 to i32*
  %623 = load i32, i32* %622, align 4
  %624 = sext i32 %623 to i64
  store i64 %624, i64* %RCX, align 8, !tbaa !2428
  %625 = shl nsw i64 %624, 3
  %626 = add i64 %625, %592
  %627 = add i64 %986, 48
  store i64 %627, i64* %PC, align 8
  %628 = bitcast i64 %585 to double
  %629 = inttoptr i64 %626 to double*
  %630 = load double, double* %629, align 8
  %631 = fmul double %628, %630
  store double %631, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %632 = add i64 %619, -56
  %633 = add i64 %986, 53
  store i64 %633, i64* %PC, align 8
  %634 = inttoptr i64 %632 to double*
  %635 = load double, double* %634, align 8
  %636 = fadd double %631, %635
  store double %636, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %637 = add i64 %986, 58
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %632 to double*
  store double %636, double* %638, align 8
  %639 = load i64, i64* %RBP, align 8
  %640 = add i64 %639, -36
  %641 = load i64, i64* %PC, align 8
  %642 = add i64 %641, 3
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, 1
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = icmp eq i32 %644, -1
  %648 = icmp eq i32 %645, 0
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %16, align 1, !tbaa !2432
  %651 = and i32 %645, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651) #10
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %23, align 1, !tbaa !2446
  %656 = xor i32 %645, %644
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %28, align 1, !tbaa !2447
  %660 = zext i1 %648 to i8
  store i8 %660, i8* %31, align 1, !tbaa !2448
  %661 = lshr i32 %645, 31
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* %34, align 1, !tbaa !2449
  %663 = lshr i32 %644, 31
  %664 = xor i32 %661, %663
  %665 = add nuw nsw i32 %664, %661
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %40, align 1, !tbaa !2450
  %668 = add i64 %641, 9
  store i64 %668, i64* %PC, align 8
  store i32 %645, i32* %643, align 4
  %669 = load i64, i64* %PC, align 8
  %670 = add i64 %669, -79
  store i64 %670, i64* %PC, align 8, !tbaa !2428
  br label %block_400f0c

block_400f95:                                     ; preds = %block_400f89
  %671 = add i64 %988, -16
  %672 = add i64 %1024, 4
  store i64 %672, i64* %PC, align 8
  %673 = inttoptr i64 %671 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX, align 8, !tbaa !2428
  %675 = add i64 %1024, 8
  store i64 %675, i64* %PC, align 8
  %676 = load i32, i32* %991, align 4
  %677 = sext i32 %676 to i64
  %678 = shl nsw i64 %677, 12
  store i64 %678, i64* %RCX, align 8, !tbaa !2428
  %679 = add i64 %678, %674
  store i64 %679, i64* %RAX, align 8, !tbaa !2428
  %680 = icmp ult i64 %679, %674
  %681 = icmp ult i64 %679, %678
  %682 = or i1 %680, %681
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %16, align 1, !tbaa !2432
  %684 = trunc i64 %679 to i32
  %685 = and i32 %684, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685) #10
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %23, align 1, !tbaa !2446
  %690 = xor i64 %674, %679
  %691 = lshr i64 %690, 4
  %692 = trunc i64 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %28, align 1, !tbaa !2447
  %694 = icmp eq i64 %679, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %31, align 1, !tbaa !2448
  %696 = lshr i64 %679, 63
  %697 = trunc i64 %696 to i8
  store i8 %697, i8* %34, align 1, !tbaa !2449
  %698 = lshr i64 %674, 63
  %699 = lshr i64 %677, 51
  %700 = and i64 %699, 1
  %701 = xor i64 %696, %698
  %702 = xor i64 %696, %700
  %703 = add nuw nsw i64 %701, %702
  %704 = icmp eq i64 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %40, align 1, !tbaa !2450
  %706 = add i64 %988, -44
  %707 = add i64 %1024, 19
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = sext i32 %709 to i64
  store i64 %710, i64* %RCX, align 8, !tbaa !2428
  %711 = shl nsw i64 %710, 3
  %712 = add i64 %711, %679
  %713 = add i64 %1024, 24
  store i64 %713, i64* %PC, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %716 = add i64 %988, -24
  %717 = add i64 %1024, 28
  store i64 %717, i64* %PC, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RAX, align 8, !tbaa !2428
  %720 = add i64 %1024, 32
  store i64 %720, i64* %PC, align 8
  %721 = load i32, i32* %708, align 4
  %722 = sext i32 %721 to i64
  %723 = shl nsw i64 %722, 12
  store i64 %723, i64* %RCX, align 8, !tbaa !2428
  %724 = add i64 %723, %719
  store i64 %724, i64* %RAX, align 8, !tbaa !2428
  %725 = icmp ult i64 %724, %719
  %726 = icmp ult i64 %724, %723
  %727 = or i1 %725, %726
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %16, align 1, !tbaa !2432
  %729 = trunc i64 %724 to i32
  %730 = and i32 %729, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730) #10
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %23, align 1, !tbaa !2446
  %735 = xor i64 %719, %724
  %736 = lshr i64 %735, 4
  %737 = trunc i64 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %28, align 1, !tbaa !2447
  %739 = icmp eq i64 %724, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %31, align 1, !tbaa !2448
  %741 = lshr i64 %724, 63
  %742 = trunc i64 %741 to i8
  store i8 %742, i8* %34, align 1, !tbaa !2449
  %743 = lshr i64 %719, 63
  %744 = lshr i64 %722, 51
  %745 = and i64 %744, 1
  %746 = xor i64 %741, %743
  %747 = xor i64 %741, %745
  %748 = add nuw nsw i64 %746, %747
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %40, align 1, !tbaa !2450
  %751 = load i64, i64* %RBP, align 8
  %752 = add i64 %751, -44
  %753 = add i64 %1024, 43
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  store i64 %756, i64* %RCX, align 8, !tbaa !2428
  %757 = shl nsw i64 %756, 3
  %758 = add i64 %757, %724
  %759 = add i64 %1024, 48
  store i64 %759, i64* %PC, align 8
  %760 = bitcast i64 %715 to double
  %761 = inttoptr i64 %758 to double*
  %762 = load double, double* %761, align 8
  %763 = fdiv double %760, %762
  store double %763, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %764 = add i64 %751, -32
  %765 = add i64 %1024, 52
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RAX, align 8, !tbaa !2428
  %768 = add i64 %751, -36
  %769 = add i64 %1024, 56
  store i64 %769, i64* %PC, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = sext i32 %771 to i64
  %773 = shl nsw i64 %772, 12
  store i64 %773, i64* %RCX, align 8, !tbaa !2428
  %774 = add i64 %773, %767
  store i64 %774, i64* %RAX, align 8, !tbaa !2428
  %775 = icmp ult i64 %774, %767
  %776 = icmp ult i64 %774, %773
  %777 = or i1 %775, %776
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %16, align 1, !tbaa !2432
  %779 = trunc i64 %774 to i32
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780) #10
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %23, align 1, !tbaa !2446
  %785 = xor i64 %767, %774
  %786 = lshr i64 %785, 4
  %787 = trunc i64 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %28, align 1, !tbaa !2447
  %789 = icmp eq i64 %774, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %31, align 1, !tbaa !2448
  %791 = lshr i64 %774, 63
  %792 = trunc i64 %791 to i8
  store i8 %792, i8* %34, align 1, !tbaa !2449
  %793 = lshr i64 %767, 63
  %794 = lshr i64 %772, 51
  %795 = and i64 %794, 1
  %796 = xor i64 %791, %793
  %797 = xor i64 %791, %795
  %798 = add nuw nsw i64 %796, %797
  %799 = icmp eq i64 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %40, align 1, !tbaa !2450
  %801 = add i64 %1024, 67
  store i64 %801, i64* %PC, align 8
  %802 = load i32, i32* %754, align 4
  %803 = sext i32 %802 to i64
  store i64 %803, i64* %RCX, align 8, !tbaa !2428
  %804 = shl nsw i64 %803, 3
  %805 = add i64 %804, %774
  %806 = add i64 %1024, 72
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to double*
  store double %763, double* %807, align 8
  %808 = load i64, i64* %RBP, align 8
  %809 = add i64 %808, -36
  %810 = load i64, i64* %PC, align 8
  %811 = add i64 %810, 3
  store i64 %811, i64* %PC, align 8
  %812 = inttoptr i64 %809 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %813, 1
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RAX, align 8, !tbaa !2428
  %816 = icmp eq i32 %813, -1
  %817 = icmp eq i32 %814, 0
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %16, align 1, !tbaa !2432
  %820 = and i32 %814, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820) #10
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %23, align 1, !tbaa !2446
  %825 = xor i32 %814, %813
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %28, align 1, !tbaa !2447
  %829 = zext i1 %817 to i8
  store i8 %829, i8* %31, align 1, !tbaa !2448
  %830 = lshr i32 %814, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %34, align 1, !tbaa !2449
  %832 = lshr i32 %813, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %830
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %40, align 1, !tbaa !2450
  %837 = add i64 %810, 9
  store i64 %837, i64* %PC, align 8
  store i32 %814, i32* %812, align 4
  %838 = load i64, i64* %PC, align 8
  %839 = add i64 %838, -93
  store i64 %839, i64* %PC, align 8, !tbaa !2428
  br label %block_400f89

block_401089:                                     ; preds = %block_401022
  %840 = add i64 %291, 7
  store i64 %840, i64* %PC, align 8
  store i32 0, i32* %258, align 4
  %.pre66 = load i64, i64* %PC, align 8
  br label %block_401090

block_401090:                                     ; preds = %block_401089, %block_40109c
  %841 = phi i64 [ %.pre66, %block_401089 ], [ %540, %block_40109c ]
  %842 = load i64, i64* %RBP, align 8
  %843 = add i64 %842, -36
  %844 = add i64 %841, 3
  store i64 %844, i64* %PC, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = add i64 %842, -4
  %849 = add i64 %841, 6
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = sub i32 %846, %851
  %853 = icmp ult i32 %846, %851
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %16, align 1, !tbaa !2432
  %855 = and i32 %852, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855) #10
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %23, align 1, !tbaa !2446
  %860 = xor i32 %851, %846
  %861 = xor i32 %860, %852
  %862 = lshr i32 %861, 4
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  store i8 %864, i8* %28, align 1, !tbaa !2447
  %865 = icmp eq i32 %852, 0
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %31, align 1, !tbaa !2448
  %867 = lshr i32 %852, 31
  %868 = trunc i32 %867 to i8
  store i8 %868, i8* %34, align 1, !tbaa !2449
  %869 = lshr i32 %846, 31
  %870 = lshr i32 %851, 31
  %871 = xor i32 %870, %869
  %872 = xor i32 %867, %869
  %873 = add nuw nsw i32 %872, %871
  %874 = icmp eq i32 %873, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %40, align 1, !tbaa !2450
  %876 = icmp ne i8 %868, 0
  %877 = xor i1 %876, %874
  %.v67 = select i1 %877, i64 12, i64 126
  %878 = add i64 %841, %.v67
  store i64 %878, i64* %PC, align 8, !tbaa !2428
  br i1 %877, label %block_40109c, label %block_40110e

block_400efd:                                     ; preds = %block_400ef1
  store <4 x i32> zeroinitializer, <4 x i32>* %84, align 1, !tbaa !2451
  %879 = add i64 %87, -56
  %880 = add i64 %123, 8
  store i64 %880, i64* %PC, align 8
  %881 = load i64, i64* %75, align 1
  %882 = inttoptr i64 %879 to i64*
  store i64 %881, i64* %882, align 8
  %883 = load i64, i64* %RBP, align 8
  %884 = add i64 %883, -36
  %885 = load i64, i64* %PC, align 8
  %886 = add i64 %885, 7
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %884 to i32*
  store i32 0, i32* %887, align 4
  %.pre62 = load i64, i64* %PC, align 8
  br label %block_400f0c

block_40110e:                                     ; preds = %block_401090
  %888 = add i64 %842, -40
  %889 = add i64 %878, 8
  store i64 %889, i64* %PC, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = add i32 %891, 1
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RAX, align 8, !tbaa !2428
  %894 = icmp eq i32 %891, -1
  %895 = icmp eq i32 %892, 0
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %16, align 1, !tbaa !2432
  %898 = and i32 %892, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898) #10
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %23, align 1, !tbaa !2446
  %903 = xor i32 %892, %891
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %28, align 1, !tbaa !2447
  %907 = zext i1 %895 to i8
  store i8 %907, i8* %31, align 1, !tbaa !2448
  %908 = lshr i32 %892, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %34, align 1, !tbaa !2449
  %910 = lshr i32 %891, 31
  %911 = xor i32 %908, %910
  %912 = add nuw nsw i32 %911, %908
  %913 = icmp eq i32 %912, 2
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %40, align 1, !tbaa !2450
  %915 = add i64 %878, 14
  store i64 %915, i64* %PC, align 8
  store i32 %892, i32* %890, align 4
  %916 = load i64, i64* %PC, align 8
  %917 = add i64 %916, -296
  store i64 %917, i64* %PC, align 8, !tbaa !2428
  br label %block_400ff4

block_401134:                                     ; preds = %block_400ef1
  %918 = load i64, i64* %RSP, align 8
  %919 = add i64 %918, 64
  store i64 %919, i64* %RSP, align 8, !tbaa !2428
  %920 = icmp ugt i64 %918, -65
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %16, align 1, !tbaa !2432
  %922 = trunc i64 %919 to i32
  %923 = and i32 %922, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923) #10
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %23, align 1, !tbaa !2446
  %928 = xor i64 %919, %918
  %929 = lshr i64 %928, 4
  %930 = trunc i64 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %28, align 1, !tbaa !2447
  %932 = icmp eq i64 %919, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %31, align 1, !tbaa !2448
  %934 = lshr i64 %919, 63
  %935 = trunc i64 %934 to i8
  store i8 %935, i8* %34, align 1, !tbaa !2449
  %936 = lshr i64 %918, 63
  %937 = xor i64 %934, %936
  %938 = add nuw nsw i64 %937, %934
  %939 = icmp eq i64 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %40, align 1, !tbaa !2450
  %941 = add i64 %123, 5
  store i64 %941, i64* %PC, align 8
  %942 = add i64 %918, 72
  %943 = inttoptr i64 %919 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %RBP, align 8, !tbaa !2428
  store i64 %942, i64* %RSP, align 8, !tbaa !2428
  %945 = add i64 %123, 6
  store i64 %945, i64* %PC, align 8
  %946 = inttoptr i64 %942 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %PC, align 8, !tbaa !2428
  %948 = add i64 %918, 80
  store i64 %948, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400f0c:                                     ; preds = %block_400efd, %block_400f18
  %949 = phi i64 [ %.pre62, %block_400efd ], [ %670, %block_400f18 ]
  %950 = load i64, i64* %RBP, align 8
  %951 = add i64 %950, -36
  %952 = add i64 %949, 3
  store i64 %952, i64* %PC, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RAX, align 8, !tbaa !2428
  %956 = add i64 %950, -4
  %957 = add i64 %949, 6
  store i64 %957, i64* %PC, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sub i32 %954, %959
  %961 = icmp ult i32 %954, %959
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %16, align 1, !tbaa !2432
  %963 = and i32 %960, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963) #10
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %23, align 1, !tbaa !2446
  %968 = xor i32 %959, %954
  %969 = xor i32 %968, %960
  %970 = lshr i32 %969, 4
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  store i8 %972, i8* %28, align 1, !tbaa !2447
  %973 = icmp eq i32 %960, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %31, align 1, !tbaa !2448
  %975 = lshr i32 %960, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %34, align 1, !tbaa !2449
  %977 = lshr i32 %954, 31
  %978 = lshr i32 %959, 31
  %979 = xor i32 %978, %977
  %980 = xor i32 %975, %977
  %981 = add nuw nsw i32 %980, %979
  %982 = icmp eq i32 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %40, align 1, !tbaa !2450
  %984 = icmp ne i8 %976, 0
  %985 = xor i1 %984, %982
  %.v69 = select i1 %985, i64 12, i64 84
  %986 = add i64 %949, %.v69
  store i64 %986, i64* %PC, align 8, !tbaa !2428
  br i1 %985, label %block_400f18, label %block_400f60

block_400f89:                                     ; preds = %block_400f95, %block_400f60
  %987 = phi i64 [ %839, %block_400f95 ], [ %.pre63, %block_400f60 ]
  %988 = load i64, i64* %RBP, align 8
  %989 = add i64 %988, -36
  %990 = add i64 %987, 3
  store i64 %990, i64* %PC, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX, align 8, !tbaa !2428
  %994 = add i64 %988, -4
  %995 = add i64 %987, 6
  store i64 %995, i64* %PC, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sub i32 %992, %997
  %999 = icmp ult i32 %992, %997
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %16, align 1, !tbaa !2432
  %1001 = and i32 %998, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001) #10
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %23, align 1, !tbaa !2446
  %1006 = xor i32 %997, %992
  %1007 = xor i32 %1006, %998
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %28, align 1, !tbaa !2447
  %1011 = icmp eq i32 %998, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %31, align 1, !tbaa !2448
  %1013 = lshr i32 %998, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %34, align 1, !tbaa !2449
  %1015 = lshr i32 %992, 31
  %1016 = lshr i32 %997, 31
  %1017 = xor i32 %1016, %1015
  %1018 = xor i32 %1013, %1015
  %1019 = add nuw nsw i32 %1018, %1017
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %40, align 1, !tbaa !2450
  %1022 = icmp ne i8 %1014, 0
  %1023 = xor i1 %1022, %1020
  %.v70 = select i1 %1023, i64 12, i64 98
  %1024 = add i64 %987, %.v70
  store i64 %1024, i64* %PC, align 8, !tbaa !2428
  br i1 %1023, label %block_400f95, label %block_400feb

block_40102e:                                     ; preds = %block_401022
  %1025 = add i64 %255, -32
  %1026 = add i64 %291, 4
  store i64 %1026, i64* %PC, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RAX, align 8, !tbaa !2428
  %1029 = add i64 %291, 8
  store i64 %1029, i64* %PC, align 8
  %1030 = load i32, i32* %258, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = shl nsw i64 %1031, 12
  store i64 %1032, i64* %RCX, align 8, !tbaa !2428
  %1033 = add i64 %1032, %1028
  store i64 %1033, i64* %RAX, align 8, !tbaa !2428
  %1034 = icmp ult i64 %1033, %1028
  %1035 = icmp ult i64 %1033, %1032
  %1036 = or i1 %1034, %1035
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %16, align 1, !tbaa !2432
  %1038 = trunc i64 %1033 to i32
  %1039 = and i32 %1038, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039) #10
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %23, align 1, !tbaa !2446
  %1044 = xor i64 %1028, %1033
  %1045 = lshr i64 %1044, 4
  %1046 = trunc i64 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %28, align 1, !tbaa !2447
  %1048 = icmp eq i64 %1033, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %31, align 1, !tbaa !2448
  %1050 = lshr i64 %1033, 63
  %1051 = trunc i64 %1050 to i8
  store i8 %1051, i8* %34, align 1, !tbaa !2449
  %1052 = lshr i64 %1028, 63
  %1053 = lshr i64 %1031, 51
  %1054 = and i64 %1053, 1
  %1055 = xor i64 %1050, %1052
  %1056 = xor i64 %1050, %1054
  %1057 = add nuw nsw i64 %1055, %1056
  %1058 = icmp eq i64 %1057, 2
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %40, align 1, !tbaa !2450
  %1060 = add i64 %255, -44
  %1061 = add i64 %291, 19
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RCX, align 8, !tbaa !2428
  %1065 = shl nsw i64 %1064, 3
  %1066 = add i64 %1065, %1033
  %1067 = add i64 %291, 24
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1070 = add i64 %255, -16
  %1071 = add i64 %291, 28
  store i64 %1071, i64* %PC, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %RAX, align 8, !tbaa !2428
  %1074 = add i64 %291, 32
  store i64 %1074, i64* %PC, align 8
  %1075 = load i32, i32* %258, align 4
  %1076 = sext i32 %1075 to i64
  %1077 = shl nsw i64 %1076, 12
  store i64 %1077, i64* %RCX, align 8, !tbaa !2428
  %1078 = add i64 %1077, %1073
  store i64 %1078, i64* %RAX, align 8, !tbaa !2428
  %1079 = icmp ult i64 %1078, %1073
  %1080 = icmp ult i64 %1078, %1077
  %1081 = or i1 %1079, %1080
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %16, align 1, !tbaa !2432
  %1083 = trunc i64 %1078 to i32
  %1084 = and i32 %1083, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084) #10
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %23, align 1, !tbaa !2446
  %1089 = xor i64 %1073, %1078
  %1090 = lshr i64 %1089, 4
  %1091 = trunc i64 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %28, align 1, !tbaa !2447
  %1093 = icmp eq i64 %1078, 0
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %31, align 1, !tbaa !2448
  %1095 = lshr i64 %1078, 63
  %1096 = trunc i64 %1095 to i8
  store i8 %1096, i8* %34, align 1, !tbaa !2449
  %1097 = lshr i64 %1073, 63
  %1098 = lshr i64 %1076, 51
  %1099 = and i64 %1098, 1
  %1100 = xor i64 %1095, %1097
  %1101 = xor i64 %1095, %1099
  %1102 = add nuw nsw i64 %1100, %1101
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %40, align 1, !tbaa !2450
  %1105 = load i64, i64* %RBP, align 8
  %1106 = add i64 %1105, -40
  %1107 = add i64 %291, 43
  store i64 %1107, i64* %PC, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = sext i32 %1109 to i64
  store i64 %1110, i64* %RCX, align 8, !tbaa !2428
  %1111 = shl nsw i64 %1110, 3
  %1112 = add i64 %1111, %1078
  %1113 = add i64 %291, 48
  store i64 %1113, i64* %PC, align 8
  %1114 = bitcast i64 %1069 to double
  %1115 = inttoptr i64 %1112 to double*
  %1116 = load double, double* %1115, align 8
  %1117 = fmul double %1114, %1116
  store double %1117, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %1118 = add i64 %1105, -24
  %1119 = add i64 %291, 52
  store i64 %1119, i64* %PC, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX, align 8, !tbaa !2428
  %1122 = add i64 %1105, -44
  %1123 = add i64 %291, 56
  store i64 %1123, i64* %PC, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = shl nsw i64 %1126, 12
  store i64 %1127, i64* %RCX, align 8, !tbaa !2428
  %1128 = add i64 %1127, %1121
  store i64 %1128, i64* %RAX, align 8, !tbaa !2428
  %1129 = icmp ult i64 %1128, %1121
  %1130 = icmp ult i64 %1128, %1127
  %1131 = or i1 %1129, %1130
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %16, align 1, !tbaa !2432
  %1133 = trunc i64 %1128 to i32
  %1134 = and i32 %1133, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134) #10
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %23, align 1, !tbaa !2446
  %1139 = xor i64 %1121, %1128
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %28, align 1, !tbaa !2447
  %1143 = icmp eq i64 %1128, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %31, align 1, !tbaa !2448
  %1145 = lshr i64 %1128, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %34, align 1, !tbaa !2449
  %1147 = lshr i64 %1121, 63
  %1148 = lshr i64 %1126, 51
  %1149 = and i64 %1148, 1
  %1150 = xor i64 %1145, %1147
  %1151 = xor i64 %1145, %1149
  %1152 = add nuw nsw i64 %1150, %1151
  %1153 = icmp eq i64 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %40, align 1, !tbaa !2450
  %1155 = add i64 %291, 67
  store i64 %1155, i64* %PC, align 8
  %1156 = load i32, i32* %1108, align 4
  %1157 = sext i32 %1156 to i64
  store i64 %1157, i64* %RCX, align 8, !tbaa !2428
  %1158 = shl nsw i64 %1157, 3
  %1159 = add i64 %1158, %1128
  %1160 = add i64 %291, 72
  store i64 %1160, i64* %PC, align 8
  %1161 = inttoptr i64 %1159 to double*
  %1162 = load double, double* %1161, align 8
  %1163 = fadd double %1117, %1162
  store double %1163, double* %76, align 1, !tbaa !2452
  store i64 0, i64* %74, align 1, !tbaa !2452
  %1164 = add i64 %291, 77
  store i64 %1164, i64* %PC, align 8
  %1165 = inttoptr i64 %1159 to double*
  store double %1163, double* %1165, align 8
  %1166 = load i64, i64* %RBP, align 8
  %1167 = add i64 %1166, -36
  %1168 = load i64, i64* %PC, align 8
  %1169 = add i64 %1168, 3
  store i64 %1169, i64* %PC, align 8
  %1170 = inttoptr i64 %1167 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = add i32 %1171, 1
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX, align 8, !tbaa !2428
  %1174 = icmp eq i32 %1171, -1
  %1175 = icmp eq i32 %1172, 0
  %1176 = or i1 %1174, %1175
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %16, align 1, !tbaa !2432
  %1178 = and i32 %1172, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178) #10
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %23, align 1, !tbaa !2446
  %1183 = xor i32 %1172, %1171
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %28, align 1, !tbaa !2447
  %1187 = zext i1 %1175 to i8
  store i8 %1187, i8* %31, align 1, !tbaa !2448
  %1188 = lshr i32 %1172, 31
  %1189 = trunc i32 %1188 to i8
  store i8 %1189, i8* %34, align 1, !tbaa !2449
  %1190 = lshr i32 %1171, 31
  %1191 = xor i32 %1188, %1190
  %1192 = add nuw nsw i32 %1191, %1188
  %1193 = icmp eq i32 %1192, 2
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %40, align 1, !tbaa !2450
  %1195 = add i64 %1168, 9
  store i64 %1195, i64* %PC, align 8
  store i32 %1172, i32* %1170, align 4
  %1196 = load i64, i64* %PC, align 8
  %1197 = add i64 %1196, -98
  store i64 %1197, i64* %PC, align 8, !tbaa !2428
  br label %block_401022

block_401000:                                     ; preds = %block_400ff4
  store <4 x i32> zeroinitializer, <4 x i32>* %85, align 1, !tbaa !2451
  %1198 = add i64 %217, -24
  %1199 = add i64 %253, 7
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1198 to i64*
  %1201 = load i64, i64* %1200, align 8
  store i64 %1201, i64* %RAX, align 8, !tbaa !2428
  %1202 = add i64 %217, -44
  %1203 = add i64 %253, 11
  store i64 %1203, i64* %PC, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = shl nsw i64 %1206, 12
  store i64 %1207, i64* %RCX, align 8, !tbaa !2428
  %1208 = add i64 %1207, %1201
  store i64 %1208, i64* %RAX, align 8, !tbaa !2428
  %1209 = icmp ult i64 %1208, %1201
  %1210 = icmp ult i64 %1208, %1207
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %16, align 1, !tbaa !2432
  %1213 = trunc i64 %1208 to i32
  %1214 = and i32 %1213, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214) #10
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %23, align 1, !tbaa !2446
  %1219 = xor i64 %1201, %1208
  %1220 = lshr i64 %1219, 4
  %1221 = trunc i64 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %28, align 1, !tbaa !2447
  %1223 = icmp eq i64 %1208, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %31, align 1, !tbaa !2448
  %1225 = lshr i64 %1208, 63
  %1226 = trunc i64 %1225 to i8
  store i8 %1226, i8* %34, align 1, !tbaa !2449
  %1227 = lshr i64 %1201, 63
  %1228 = lshr i64 %1206, 51
  %1229 = and i64 %1228, 1
  %1230 = xor i64 %1225, %1227
  %1231 = xor i64 %1225, %1229
  %1232 = add nuw nsw i64 %1230, %1231
  %1233 = icmp eq i64 %1232, 2
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %40, align 1, !tbaa !2450
  %1235 = add i64 %253, 22
  store i64 %1235, i64* %PC, align 8
  %1236 = load i32, i32* %220, align 4
  %1237 = sext i32 %1236 to i64
  store i64 %1237, i64* %RCX, align 8, !tbaa !2428
  %1238 = shl nsw i64 %1237, 3
  %1239 = add i64 %1238, %1208
  %1240 = add i64 %253, 27
  store i64 %1240, i64* %PC, align 8
  %1241 = load i64, i64* %75, align 1
  %1242 = inttoptr i64 %1239 to i64*
  store i64 %1241, i64* %1242, align 8
  %1243 = load i64, i64* %RBP, align 8
  %1244 = add i64 %1243, -36
  %1245 = load i64, i64* %PC, align 8
  %1246 = add i64 %1245, 7
  store i64 %1246, i64* %PC, align 8
  %1247 = inttoptr i64 %1244 to i32*
  store i32 0, i32* %1247, align 4
  %.pre65 = load i64, i64* %PC, align 8
  br label %block_401022
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400720_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400720_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4006f0___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4006f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4005d0_free(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f8_calloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400620_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_6020d8_sqrt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #12 {
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
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401590___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401590___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #13 {
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
  tail call void asm sideeffect "pushq $0;pushq $$0x401520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401520___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400910;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400910_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401594;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
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
define dllexport void @polybench_timer_stop() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #13 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_flush_cache() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_print() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005a8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005a8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_alloc_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_start() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #10 {
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
define internal void @__mcsema_destructor() #10 {
  tail call void @callback_sub_401590___libc_csu_fini()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #14

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind }
attributes #14 = { argmemonly nounwind }
attributes #15 = { alwaysinline nobuiltin nounwind }

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
