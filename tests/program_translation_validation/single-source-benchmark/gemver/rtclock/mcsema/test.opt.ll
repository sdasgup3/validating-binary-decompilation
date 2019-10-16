; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4014d0__rodata_type = type <{ [96 x i8], [7 x i8], [51 x i8], [8 x i8], [68 x i8] }>
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
@seg_4014d0__rodata = internal constant %seg_4014d0__rodata_type <{ [96 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\80\0C\C8@\00\00\00\00\80A\E5@\00\00\00\00\00\00\22@\00\00\00\00\00\00 @\00\00\00\00\00\00\18@\00\00\00\00\00\00\10@\00\00\00\00\00\00\00@\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [8 x i8] c"%0.2lf \00", [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4006c0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400690___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006c0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400690___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4014c0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401450___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

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
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400648:
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400550__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400550:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #9
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
  br i1 %18, label %block_400562, label %block_400560

block_400560:                                     ; preds = %block_400550
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400562

block_400562:                                     ; preds = %block_400560, %block_400550
  %27 = phi i64 [ %22, %block_400550 ], [ %.pre1, %block_400560 ]
  %28 = phi i64 [ %4, %block_400550 ], [ %.pre, %block_400560 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400550 ], [ %26, %block_400560 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9
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
define %struct.Memory* @sub_400750_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400750:
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
  %14 = tail call %struct.Memory* @sub_4006d0_polybench_flush_cache(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007f0:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
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
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #9
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
  %101 = tail call %struct.Memory* @sub_400830_xmalloc(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
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
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #9
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
define %struct.Memory* @sub_4013b0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4013b0:
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
  %13 = add i64 %9, -40
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 32
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
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
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI, align 8
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -20
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %58 = bitcast i64* %57 to double*
  %59 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4013c6

block_40141b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 101), i64* %RSI, align 8, !tbaa !2428
  %61 = load i64, i64* @stderr, align 32
  store i64 %61, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %62 = add i64 %182, -3691
  %63 = add i64 %182, 25
  %64 = load i64, i64* %RSP, align 8, !tbaa !2428
  %65 = add i64 %64, -8
  %66 = inttoptr i64 %65 to i64*
  store i64 %63, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %62, i64* %PC, align 8, !tbaa !2428
  %67 = tail call fastcc %struct.Memory* @ext_4005b0_fprintf(%struct.State* nonnull %0, %struct.Memory* %172)
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -32
  %70 = load i32, i32* %EAX, align 4
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %73, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_401437

block_401437:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_40141b
  %74 = phi i64 [ %182, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre4, %block_40141b ]
  %MEMORY.0 = phi %struct.Memory* [ %172, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %67, %block_40141b ]
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -20
  %77 = add i64 %74, 8
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = icmp eq i32 %79, -1
  %83 = icmp eq i32 %80, 0
  %84 = or i1 %82, %83
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %16, align 1, !tbaa !2432
  %86 = and i32 %80, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #9
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %23, align 1, !tbaa !2446
  %91 = xor i32 %80, %79
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %28, align 1, !tbaa !2447
  %95 = zext i1 %83 to i8
  store i8 %95, i8* %31, align 1, !tbaa !2448
  %96 = lshr i32 %80, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %34, align 1, !tbaa !2449
  %98 = lshr i32 %79, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %96
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %40, align 1, !tbaa !2450
  %103 = add i64 %74, 14
  store i64 %103, i64* %PC, align 8
  store i32 %80, i32* %78, align 4
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, -127
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  br label %block_4013c6

block_4013d2:                                     ; preds = %block_4013c6
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 154), i64* %RSI, align 8, !tbaa !2428
  %106 = load i64, i64* @stderr, align 32
  store i64 %106, i64* %RDI, align 8, !tbaa !2428
  %107 = add i64 %215, -16
  %108 = add i64 %251, 22
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RAX, align 8, !tbaa !2428
  %111 = add i64 %251, 26
  store i64 %111, i64* %PC, align 8
  %112 = load i32, i32* %218, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %RCX, align 8, !tbaa !2428
  %114 = shl nsw i64 %113, 3
  %115 = add i64 %114, %110
  %116 = add i64 %251, 31
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %56, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %119 = add i64 %251, -3618
  %120 = add i64 %251, 38
  %121 = load i64, i64* %RSP, align 8, !tbaa !2428
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %RSP, align 8, !tbaa !2428
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  %124 = tail call fastcc %struct.Memory* @ext_4005b0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %125 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -20
  %128 = add i64 %125, 9
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %59, align 8, !tbaa !2428
  %132 = add i64 %126, -24
  %133 = load i32, i32* %EAX, align 4
  %134 = add i64 %125, 12
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %R8D, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %PC, align 8
  store i64 %137, i64* %RAX, align 8, !tbaa !2428
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -28
  %141 = load i32, i32* %EDX, align 4
  %142 = add i64 %138, 6
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* %PC, align 8
  %145 = load i32, i32* %EAX, align 8, !tbaa !2454
  %146 = sext i32 %145 to i64
  %147 = lshr i64 %146, 32
  store i64 %147, i64* %60, align 8, !tbaa !2428
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -28
  %150 = add i64 %144, 5
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %59, align 8, !tbaa !2428
  %154 = add i64 %144, 8
  store i64 %154, i64* %PC, align 8
  %155 = zext i32 %145 to i64
  %156 = sext i32 %152 to i64
  %157 = shl nuw i64 %147, 32
  %158 = or i64 %157, %155
  %159 = sdiv i64 %158, %156
  %160 = shl i64 %159, 32
  %161 = ashr exact i64 %160, 32
  %162 = icmp eq i64 %159, %161
  br i1 %162, label %165, label %163

; <label>:163:                                    ; preds = %block_4013d2
  %164 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %154, %struct.Memory* %124) #12
  %.pre2 = load i32, i32* %EDX, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:165:                                    ; preds = %block_4013d2
  %166 = srem i64 %158, %156
  %167 = and i64 %159, 4294967295
  store i64 %167, i64* %RAX, align 8, !tbaa !2428
  %168 = and i64 %166, 4294967295
  store i64 %168, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %169 = trunc i64 %166 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %165, %163
  %170 = phi i64 [ %.pre3, %163 ], [ %154, %165 ]
  %171 = phi i32 [ %.pre2, %163 ], [ %169, %165 ]
  %172 = phi %struct.Memory* [ %164, %163 ], [ %124, %165 ]
  store i8 0, i8* %16, align 1, !tbaa !2432
  %173 = and i32 %171, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #9
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  %178 = icmp eq i32 %171, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %31, align 1, !tbaa !2448
  %180 = lshr i32 %171, 31
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v5 = select i1 %178, i64 9, i64 37
  %182 = add i64 %170, %.v5
  store i64 %182, i64* %PC, align 8, !tbaa !2428
  br i1 %178, label %block_40141b, label %block_401437

block_40144a:                                     ; preds = %block_4013c6
  %183 = load i64, i64* %RSP, align 8
  %184 = add i64 %183, 32
  store i64 %184, i64* %RSP, align 8, !tbaa !2428
  %185 = icmp ugt i64 %183, -33
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %16, align 1, !tbaa !2432
  %187 = trunc i64 %184 to i32
  %188 = and i32 %187, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #9
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %23, align 1, !tbaa !2446
  %193 = xor i64 %184, %183
  %194 = lshr i64 %193, 4
  %195 = trunc i64 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %28, align 1, !tbaa !2447
  %197 = icmp eq i64 %184, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %31, align 1, !tbaa !2448
  %199 = lshr i64 %184, 63
  %200 = trunc i64 %199 to i8
  store i8 %200, i8* %34, align 1, !tbaa !2449
  %201 = lshr i64 %183, 63
  %202 = xor i64 %199, %201
  %203 = add nuw nsw i64 %202, %199
  %204 = icmp eq i64 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %40, align 1, !tbaa !2450
  %206 = add i64 %251, 5
  store i64 %206, i64* %PC, align 8
  %207 = add i64 %183, 40
  %208 = inttoptr i64 %184 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RBP, align 8, !tbaa !2428
  store i64 %207, i64* %RSP, align 8, !tbaa !2428
  %210 = add i64 %251, 6
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %207 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  %213 = add i64 %183, 48
  store i64 %213, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_4013c6:                                     ; preds = %block_401437, %block_4013b0
  %214 = phi i64 [ %.pre, %block_4013b0 ], [ %105, %block_401437 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4013b0 ], [ %MEMORY.0, %block_401437 ]
  %215 = load i64, i64* %RBP, align 8
  %216 = add i64 %215, -20
  %217 = add i64 %214, 3
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = add i64 %215, -4
  %222 = add i64 %214, 6
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sub i32 %219, %224
  %226 = icmp ult i32 %219, %224
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %16, align 1, !tbaa !2432
  %228 = and i32 %225, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #9
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %23, align 1, !tbaa !2446
  %233 = xor i32 %224, %219
  %234 = xor i32 %233, %225
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %28, align 1, !tbaa !2447
  %238 = icmp eq i32 %225, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %31, align 1, !tbaa !2448
  %240 = lshr i32 %225, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %34, align 1, !tbaa !2449
  %242 = lshr i32 %219, 31
  %243 = lshr i32 %224, 31
  %244 = xor i32 %243, %242
  %245 = xor i32 %240, %242
  %246 = add nuw nsw i32 %245, %244
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %40, align 1, !tbaa !2450
  %249 = icmp ne i8 %241, 0
  %250 = xor i1 %249, %247
  %.v = select i1 %250, i64 12, i64 132
  %251 = add i64 %214, %.v
  store i64 %251, i64* %PC, align 8, !tbaa !2428
  br i1 %250, label %block_4013d2, label %block_40144a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006c0:
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
  %13 = tail call %struct.Memory* @sub_400650_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400830_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400830:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
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
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #9
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
  br i1 %79, label %block_400873, label %block_400869

block_400873:                                     ; preds = %block_400869, %block_400830
  %84 = phi i64 [ %120, %block_400869 ], [ %83, %block_400830 ]
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 103), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 32
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %86 = add i64 %84, -707
  %87 = add i64 %84, 25
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call fastcc %struct.Memory* @ext_4005b0_fprintf(%struct.State* nonnull %0, %struct.Memory* %60)
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
  %104 = tail call fastcc %struct.Memory* @ext_4005c0_exit(%struct.State* nonnull %0, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  %106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %105, %struct.Memory* %104)
  ret %struct.Memory* %106

block_400869:                                     ; preds = %block_400830
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #9
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
  br i1 %116, label %block_400899, label %block_400873

block_400899:                                     ; preds = %block_400869
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
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #9
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
define %struct.Memory* @sub_400da0_kernel_gemver(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400da0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %13 = load i64, i64* %R14, align 8
  %14 = add i64 %12, 5
  store i64 %14, i64* %PC, align 8
  %15 = add i64 %9, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16, align 8
  %17 = load i64, i64* %RBX, align 8
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %9, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  store i64 %20, i64* %8, align 8, !tbaa !2428
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, 48
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %23 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %RAX, align 8, !tbaa !2428
  %28 = add i64 %22, 40
  %29 = add i64 %24, 8
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %R10, align 8, !tbaa !2428
  %32 = add i64 %22, 32
  %33 = add i64 %24, 12
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %R11, align 8, !tbaa !2428
  %36 = add i64 %22, 24
  %37 = add i64 %24, 16
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %RBX, align 8, !tbaa !2428
  %40 = add i64 %22, 16
  %41 = add i64 %24, 20
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %R14, align 8, !tbaa !2428
  %44 = add i64 %22, -20
  %45 = load i32, i32* %EDI, align 4
  %46 = add i64 %24, 23
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -32
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %PC, align 8
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %53 = load i64, i64* %52, align 1
  %54 = inttoptr i64 %49 to i64*
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -40
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 5
  store i64 %58, i64* %PC, align 8
  %59 = bitcast %union.VectorReg* %5 to double*
  %60 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %61 = load i64, i64* %60, align 1
  %62 = inttoptr i64 %56 to i64*
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -48
  %65 = load i64, i64* %RSI, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -56
  %71 = load i64, i64* %RDX, align 8
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -64
  %77 = load i64, i64* %RCX, align 8
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %80, align 8
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -72
  %83 = load i64, i64* %R8, align 8
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -80
  %89 = load i64, i64* %R9, align 8
  %90 = load i64, i64* %PC, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -88
  %95 = load i64, i64* %R14, align 8
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -96
  %101 = load i64, i64* %RBX, align 8
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %RBP, align 8
  %106 = add i64 %105, -104
  %107 = load i64, i64* %R11, align 8
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %110, align 8
  %111 = load i64, i64* %RBP, align 8
  %112 = add i64 %111, -112
  %113 = load i64, i64* %R10, align 8
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -120
  %119 = load i64, i64* %RAX, align 8
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -124
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %124 to i32*
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %134 = bitcast [32 x %union.VectorReg]* %4 to double*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %136 = bitcast i64* %135 to double*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %138 = bitcast i64* %137 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400df7

block_400f52:                                     ; preds = %block_400f5e, %block_400f4b
  %139 = phi i64 [ %386, %block_400f5e ], [ %.pre30, %block_400f4b ]
  %140 = load i64, i64* %RBP, align 8
  %141 = add i64 %140, -124
  %142 = add i64 %139, 3
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = add i64 %140, -20
  %147 = add i64 %139, 6
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %144, %149
  %151 = icmp ult i32 %144, %149
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %128, align 1, !tbaa !2432
  %153 = and i32 %150, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #9
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %129, align 1, !tbaa !2446
  %158 = xor i32 %149, %144
  %159 = xor i32 %158, %150
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %130, align 1, !tbaa !2447
  %163 = icmp eq i32 %150, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %131, align 1, !tbaa !2448
  %165 = lshr i32 %150, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %132, align 1, !tbaa !2449
  %167 = lshr i32 %144, 31
  %168 = lshr i32 %149, 31
  %169 = xor i32 %168, %167
  %170 = xor i32 %165, %167
  %171 = add nuw nsw i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %133, align 1, !tbaa !2450
  %174 = icmp ne i8 %166, 0
  %175 = xor i1 %174, %172
  %.v39 = select i1 %175, i64 12, i64 65
  %176 = add i64 %139, %.v39
  store i64 %176, i64* %PC, align 8, !tbaa !2428
  br i1 %175, label %block_400f5e, label %block_400f93

block_400f4b:                                     ; preds = %block_400eb0
  %177 = add i64 %424, 7
  store i64 %177, i64* %PC, align 8
  store i32 0, i32* %391, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400f52

block_400ebc:                                     ; preds = %block_400eb0
  store <4 x i32> zeroinitializer, <4 x i32>* %464, align 1, !tbaa !2454
  %178 = add i64 %388, -104
  %179 = add i64 %424, 7
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = add i64 %424, 11
  store i64 %182, i64* %PC, align 8
  %183 = load i32, i32* %391, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RCX, align 8, !tbaa !2428
  %185 = shl nsw i64 %184, 3
  %186 = add i64 %185, %181
  %187 = add i64 %424, 16
  store i64 %187, i64* %PC, align 8
  %188 = load i64, i64* %52, align 1
  %189 = inttoptr i64 %186 to i64*
  store i64 %188, i64* %189, align 8
  %190 = load i64, i64* %RBP, align 8
  %191 = add i64 %190, -128
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, 7
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %191 to i32*
  store i32 0, i32* %194, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400ed3

block_400fb9:                                     ; preds = %block_400fad
  %195 = add i64 %426, -96
  %196 = add i64 %462, 4
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %199 = add i64 %426, -124
  %200 = add i64 %462, 8
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %RCX, align 8, !tbaa !2428
  %204 = shl nsw i64 %203, 3
  %205 = add i64 %204, %198
  %206 = add i64 %462, 13
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %209 = add i64 %426, -32
  %210 = add i64 %462, 18
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %213 = add i64 %426, -56
  %214 = add i64 %462, 22
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RAX, align 8, !tbaa !2428
  %217 = add i64 %462, 26
  store i64 %217, i64* %PC, align 8
  %218 = load i32, i32* %201, align 4
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %219, 32000
  store i64 %220, i64* %RCX, align 8, !tbaa !2428
  %221 = lshr i64 %220, 63
  %222 = add i64 %220, %216
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = icmp ult i64 %222, %216
  %224 = icmp ult i64 %222, %220
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %128, align 1, !tbaa !2432
  %227 = trunc i64 %222 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #9
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %129, align 1, !tbaa !2446
  %233 = xor i64 %216, %222
  %234 = lshr i64 %233, 4
  %235 = trunc i64 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %130, align 1, !tbaa !2447
  %237 = icmp eq i64 %222, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %131, align 1, !tbaa !2448
  %239 = lshr i64 %222, 63
  %240 = trunc i64 %239 to i8
  store i8 %240, i8* %132, align 1, !tbaa !2449
  %241 = lshr i64 %216, 63
  %242 = xor i64 %239, %241
  %243 = xor i64 %239, %221
  %244 = add nuw nsw i64 %242, %243
  %245 = icmp eq i64 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %133, align 1, !tbaa !2450
  %247 = add i64 %462, 40
  store i64 %247, i64* %PC, align 8
  %248 = load i32, i32* %429, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RCX, align 8, !tbaa !2428
  %250 = shl nsw i64 %249, 3
  %251 = add i64 %250, %222
  %252 = add i64 %462, 45
  store i64 %252, i64* %PC, align 8
  %253 = bitcast i64 %212 to double
  %254 = inttoptr i64 %251 to double*
  %255 = load double, double* %254, align 8
  %256 = fmul double %253, %255
  store double %256, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %257 = load i64, i64* %RBP, align 8
  %258 = add i64 %257, -104
  %259 = add i64 %462, 49
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = add i64 %257, -128
  %263 = add i64 %462, 53
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX, align 8, !tbaa !2428
  %267 = shl nsw i64 %266, 3
  %268 = add i64 %267, %261
  %269 = add i64 %462, 58
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to double*
  %271 = load double, double* %270, align 8
  %272 = fmul double %256, %271
  store double %272, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %273 = load double, double* %134, align 1
  %274 = fadd double %273, %272
  store double %274, double* %134, align 1, !tbaa !2452
  %275 = add i64 %257, -96
  %276 = add i64 %462, 66
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = add i64 %257, -124
  %280 = add i64 %462, 70
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RCX, align 8, !tbaa !2428
  %284 = shl nsw i64 %283, 3
  %285 = add i64 %284, %278
  %286 = add i64 %462, 75
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to double*
  store double %274, double* %287, align 8
  %288 = load i64, i64* %RBP, align 8
  %289 = add i64 %288, -128
  %290 = load i64, i64* %PC, align 8
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, 1
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = icmp eq i32 %293, -1
  %297 = icmp eq i32 %294, 0
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %128, align 1, !tbaa !2432
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #9
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %129, align 1, !tbaa !2446
  %305 = xor i32 %294, %293
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %130, align 1, !tbaa !2447
  %309 = zext i1 %297 to i8
  store i8 %309, i8* %131, align 1, !tbaa !2448
  %310 = lshr i32 %294, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %132, align 1, !tbaa !2449
  %312 = lshr i32 %293, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %310
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %133, align 1, !tbaa !2450
  %317 = add i64 %290, 9
  store i64 %317, i64* %PC, align 8
  store i32 %294, i32* %292, align 4
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, -96
  store i64 %319, i64* %PC, align 8, !tbaa !2428
  br label %block_400fad

block_400f5e:                                     ; preds = %block_400f52
  %320 = add i64 %140, -104
  %321 = add i64 %176, 4
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = add i64 %176, 8
  store i64 %324, i64* %PC, align 8
  %325 = load i32, i32* %143, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RCX, align 8, !tbaa !2428
  %327 = shl nsw i64 %326, 3
  %328 = add i64 %327, %323
  %329 = add i64 %176, 13
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %332 = add i64 %140, -120
  %333 = add i64 %176, 17
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %RAX, align 8, !tbaa !2428
  %336 = add i64 %176, 21
  store i64 %336, i64* %PC, align 8
  %337 = load i32, i32* %143, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = shl nsw i64 %338, 3
  %340 = add i64 %339, %335
  %341 = add i64 %176, 26
  store i64 %341, i64* %PC, align 8
  %342 = bitcast i64 %331 to double
  %343 = inttoptr i64 %340 to double*
  %344 = load double, double* %343, align 8
  %345 = fadd double %342, %344
  store double %345, double* %134, align 1, !tbaa !2452
  store i64 0, i64* %135, align 1, !tbaa !2452
  %346 = add i64 %176, 30
  store i64 %346, i64* %PC, align 8
  %347 = load i64, i64* %322, align 8
  store i64 %347, i64* %RAX, align 8, !tbaa !2428
  %348 = add i64 %176, 34
  store i64 %348, i64* %PC, align 8
  %349 = load i32, i32* %143, align 4
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %RCX, align 8, !tbaa !2428
  %351 = shl nsw i64 %350, 3
  %352 = add i64 %351, %347
  %353 = add i64 %176, 39
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to double*
  store double %345, double* %354, align 8
  %355 = load i64, i64* %RBP, align 8
  %356 = add i64 %355, -124
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
  store i8 %366, i8* %128, align 1, !tbaa !2432
  %367 = and i32 %361, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367) #9
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %129, align 1, !tbaa !2446
  %372 = xor i32 %361, %360
  %373 = lshr i32 %372, 4
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %130, align 1, !tbaa !2447
  %376 = zext i1 %364 to i8
  store i8 %376, i8* %131, align 1, !tbaa !2448
  %377 = lshr i32 %361, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %132, align 1, !tbaa !2449
  %379 = lshr i32 %360, 31
  %380 = xor i32 %377, %379
  %381 = add nuw nsw i32 %380, %377
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %133, align 1, !tbaa !2450
  %384 = add i64 %357, 9
  store i64 %384, i64* %PC, align 8
  store i32 %361, i32* %359, align 4
  %385 = load i64, i64* %PC, align 8
  %386 = add i64 %385, -60
  store i64 %386, i64* %PC, align 8, !tbaa !2428
  br label %block_400f52

block_400eb0:                                     ; preds = %block_400f38, %block_400ea9
  %387 = phi i64 [ %715, %block_400f38 ], [ %.pre29, %block_400ea9 ]
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -124
  %390 = add i64 %387, 3
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = add i64 %388, -20
  %395 = add i64 %387, 6
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = sub i32 %392, %397
  %399 = icmp ult i32 %392, %397
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %128, align 1, !tbaa !2432
  %401 = and i32 %398, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401) #9
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %129, align 1, !tbaa !2446
  %406 = xor i32 %397, %392
  %407 = xor i32 %406, %398
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %130, align 1, !tbaa !2447
  %411 = icmp eq i32 %398, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %131, align 1, !tbaa !2448
  %413 = lshr i32 %398, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %132, align 1, !tbaa !2449
  %415 = lshr i32 %392, 31
  %416 = lshr i32 %397, 31
  %417 = xor i32 %416, %415
  %418 = xor i32 %413, %415
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %133, align 1, !tbaa !2450
  %422 = icmp ne i8 %414, 0
  %423 = xor i1 %422, %420
  %.v38 = select i1 %423, i64 12, i64 155
  %424 = add i64 %387, %.v38
  store i64 %424, i64* %PC, align 8, !tbaa !2428
  br i1 %423, label %block_400ebc, label %block_400f4b

block_400fad:                                     ; preds = %block_400fa6, %block_400fb9
  %425 = phi i64 [ %.pre32, %block_400fa6 ], [ %319, %block_400fb9 ]
  %426 = load i64, i64* %RBP, align 8
  %427 = add i64 %426, -128
  %428 = add i64 %425, 3
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RAX, align 8, !tbaa !2428
  %432 = add i64 %426, -20
  %433 = add i64 %425, 6
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sub i32 %430, %435
  %437 = icmp ult i32 %430, %435
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %128, align 1, !tbaa !2432
  %439 = and i32 %436, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439) #9
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %129, align 1, !tbaa !2446
  %444 = xor i32 %435, %430
  %445 = xor i32 %444, %436
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %130, align 1, !tbaa !2447
  %449 = icmp eq i32 %436, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %131, align 1, !tbaa !2448
  %451 = lshr i32 %436, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %132, align 1, !tbaa !2449
  %453 = lshr i32 %430, 31
  %454 = lshr i32 %435, 31
  %455 = xor i32 %454, %453
  %456 = xor i32 %451, %453
  %457 = add nuw nsw i32 %456, %455
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %133, align 1, !tbaa !2450
  %460 = icmp ne i8 %452, 0
  %461 = xor i1 %460, %458
  %.v = select i1 %461, i64 12, i64 101
  %462 = add i64 %425, %.v
  store i64 %462, i64* %PC, align 8, !tbaa !2428
  br i1 %461, label %block_400fb9, label %block_401012

block_400ea9:                                     ; preds = %block_400df7
  %463 = add i64 %522, 7
  store i64 %463, i64* %PC, align 8
  store i32 0, i32* %489, align 4
  %.pre29 = load i64, i64* %PC, align 8
  %464 = bitcast [32 x %union.VectorReg]* %4 to <4 x i32>*
  br label %block_400eb0

block_400fa6:                                     ; preds = %block_400f9a
  %465 = add i64 %649, -128
  %466 = add i64 %685, 7
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i32*
  store i32 0, i32* %467, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400fad

block_401025:                                     ; preds = %block_400f9a
  %468 = add i64 %685, 1
  store i64 %468, i64* %PC, align 8
  %469 = load i64, i64* %8, align 8, !tbaa !2428
  %470 = add i64 %469, 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RBX, align 8, !tbaa !2428
  store i64 %470, i64* %8, align 8, !tbaa !2428
  %473 = add i64 %685, 3
  store i64 %473, i64* %PC, align 8
  %474 = add i64 %469, 16
  %475 = inttoptr i64 %470 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %R14, align 8, !tbaa !2428
  store i64 %474, i64* %8, align 8, !tbaa !2428
  %477 = add i64 %685, 4
  store i64 %477, i64* %PC, align 8
  %478 = add i64 %469, 24
  %479 = inttoptr i64 %474 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RBP, align 8, !tbaa !2428
  store i64 %478, i64* %8, align 8, !tbaa !2428
  %481 = add i64 %685, 5
  store i64 %481, i64* %PC, align 8
  %482 = inttoptr i64 %478 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %PC, align 8, !tbaa !2428
  %484 = add i64 %469, 32
  store i64 %484, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400df7:                                     ; preds = %block_400e96, %block_400da0
  %485 = phi i64 [ %1032, %block_400e96 ], [ %.pre, %block_400da0 ]
  %486 = load i64, i64* %RBP, align 8
  %487 = add i64 %486, -124
  %488 = add i64 %485, 3
  store i64 %488, i64* %PC, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX, align 8, !tbaa !2428
  %492 = add i64 %486, -20
  %493 = add i64 %485, 6
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sub i32 %490, %495
  %497 = icmp ult i32 %490, %495
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %128, align 1, !tbaa !2432
  %499 = and i32 %496, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499) #9
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %129, align 1, !tbaa !2446
  %504 = xor i32 %495, %490
  %505 = xor i32 %504, %496
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %130, align 1, !tbaa !2447
  %509 = icmp eq i32 %496, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %131, align 1, !tbaa !2448
  %511 = lshr i32 %496, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %132, align 1, !tbaa !2449
  %513 = lshr i32 %490, 31
  %514 = lshr i32 %495, 31
  %515 = xor i32 %514, %513
  %516 = xor i32 %511, %513
  %517 = add nuw nsw i32 %516, %515
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %133, align 1, !tbaa !2450
  %520 = icmp ne i8 %512, 0
  %521 = xor i1 %520, %518
  %.v37 = select i1 %521, i64 12, i64 178
  %522 = add i64 %485, %.v37
  store i64 %522, i64* %PC, align 8, !tbaa !2428
  br i1 %521, label %block_400e03, label %block_400ea9

block_400edf:                                     ; preds = %block_400ed3
  %523 = add i64 %898, -104
  %524 = add i64 %934, 4
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %523 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = add i64 %898, -124
  %528 = add i64 %934, 8
  store i64 %528, i64* %PC, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RCX, align 8, !tbaa !2428
  %532 = shl nsw i64 %531, 3
  %533 = add i64 %532, %526
  %534 = add i64 %934, 13
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %537 = add i64 %898, -40
  %538 = add i64 %934, 18
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %541 = add i64 %898, -56
  %542 = add i64 %934, 22
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RAX, align 8, !tbaa !2428
  %545 = add i64 %934, 26
  store i64 %545, i64* %PC, align 8
  %546 = load i32, i32* %901, align 4
  %547 = sext i32 %546 to i64
  %548 = mul nsw i64 %547, 32000
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  %549 = lshr i64 %548, 63
  %550 = add i64 %548, %544
  store i64 %550, i64* %RAX, align 8, !tbaa !2428
  %551 = icmp ult i64 %550, %544
  %552 = icmp ult i64 %550, %548
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %128, align 1, !tbaa !2432
  %555 = trunc i64 %550 to i32
  %556 = and i32 %555, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556) #9
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %129, align 1, !tbaa !2446
  %561 = xor i64 %544, %550
  %562 = lshr i64 %561, 4
  %563 = trunc i64 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %130, align 1, !tbaa !2447
  %565 = icmp eq i64 %550, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %131, align 1, !tbaa !2448
  %567 = lshr i64 %550, 63
  %568 = trunc i64 %567 to i8
  store i8 %568, i8* %132, align 1, !tbaa !2449
  %569 = lshr i64 %544, 63
  %570 = xor i64 %567, %569
  %571 = xor i64 %567, %549
  %572 = add nuw nsw i64 %570, %571
  %573 = icmp eq i64 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %133, align 1, !tbaa !2450
  %575 = add i64 %934, 40
  store i64 %575, i64* %PC, align 8
  %576 = load i32, i32* %529, align 4
  %577 = sext i32 %576 to i64
  store i64 %577, i64* %RCX, align 8, !tbaa !2428
  %578 = shl nsw i64 %577, 3
  %579 = add i64 %578, %550
  %580 = add i64 %934, 45
  store i64 %580, i64* %PC, align 8
  %581 = bitcast i64 %540 to double
  %582 = inttoptr i64 %579 to double*
  %583 = load double, double* %582, align 8
  %584 = fmul double %581, %583
  store double %584, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -112
  %587 = add i64 %934, 49
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX, align 8, !tbaa !2428
  %590 = add i64 %585, -128
  %591 = add i64 %934, 53
  store i64 %591, i64* %PC, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = sext i32 %593 to i64
  store i64 %594, i64* %RCX, align 8, !tbaa !2428
  %595 = shl nsw i64 %594, 3
  %596 = add i64 %595, %589
  %597 = add i64 %934, 58
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %596 to double*
  %599 = load double, double* %598, align 8
  %600 = fmul double %584, %599
  store double %600, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %601 = load double, double* %134, align 1
  %602 = fadd double %601, %600
  store double %602, double* %134, align 1, !tbaa !2452
  %603 = add i64 %585, -104
  %604 = add i64 %934, 66
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RAX, align 8, !tbaa !2428
  %607 = add i64 %585, -124
  %608 = add i64 %934, 70
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = sext i32 %610 to i64
  store i64 %611, i64* %RCX, align 8, !tbaa !2428
  %612 = shl nsw i64 %611, 3
  %613 = add i64 %612, %606
  %614 = add i64 %934, 75
  store i64 %614, i64* %PC, align 8
  %615 = inttoptr i64 %613 to double*
  store double %602, double* %615, align 8
  %616 = load i64, i64* %RBP, align 8
  %617 = add i64 %616, -128
  %618 = load i64, i64* %PC, align 8
  %619 = add i64 %618, 3
  store i64 %619, i64* %PC, align 8
  %620 = inttoptr i64 %617 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = add i32 %621, 1
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = icmp eq i32 %621, -1
  %625 = icmp eq i32 %622, 0
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %128, align 1, !tbaa !2432
  %628 = and i32 %622, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628) #9
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %129, align 1, !tbaa !2446
  %633 = xor i32 %622, %621
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %130, align 1, !tbaa !2447
  %637 = zext i1 %625 to i8
  store i8 %637, i8* %131, align 1, !tbaa !2448
  %638 = lshr i32 %622, 31
  %639 = trunc i32 %638 to i8
  store i8 %639, i8* %132, align 1, !tbaa !2449
  %640 = lshr i32 %621, 31
  %641 = xor i32 %638, %640
  %642 = add nuw nsw i32 %641, %638
  %643 = icmp eq i32 %642, 2
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %133, align 1, !tbaa !2450
  %645 = add i64 %618, 9
  store i64 %645, i64* %PC, align 8
  store i32 %622, i32* %620, align 4
  %646 = load i64, i64* %PC, align 8
  %647 = add i64 %646, -96
  store i64 %647, i64* %PC, align 8, !tbaa !2428
  br label %block_400ed3

block_400f9a:                                     ; preds = %block_401012, %block_400f93
  %648 = phi i64 [ %964, %block_401012 ], [ %.pre31, %block_400f93 ]
  %649 = load i64, i64* %RBP, align 8
  %650 = add i64 %649, -124
  %651 = add i64 %648, 3
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RAX, align 8, !tbaa !2428
  %655 = add i64 %649, -20
  %656 = add i64 %648, 6
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = sub i32 %653, %658
  %660 = icmp ult i32 %653, %658
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %128, align 1, !tbaa !2432
  %662 = and i32 %659, 255
  %663 = tail call i32 @llvm.ctpop.i32(i32 %662) #9
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  store i8 %666, i8* %129, align 1, !tbaa !2446
  %667 = xor i32 %658, %653
  %668 = xor i32 %667, %659
  %669 = lshr i32 %668, 4
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  store i8 %671, i8* %130, align 1, !tbaa !2447
  %672 = icmp eq i32 %659, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %131, align 1, !tbaa !2448
  %674 = lshr i32 %659, 31
  %675 = trunc i32 %674 to i8
  store i8 %675, i8* %132, align 1, !tbaa !2449
  %676 = lshr i32 %653, 31
  %677 = lshr i32 %658, 31
  %678 = xor i32 %677, %676
  %679 = xor i32 %674, %676
  %680 = add nuw nsw i32 %679, %678
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %133, align 1, !tbaa !2450
  %683 = icmp ne i8 %675, 0
  %684 = xor i1 %683, %681
  %.v40 = select i1 %684, i64 12, i64 139
  %685 = add i64 %648, %.v40
  store i64 %685, i64* %PC, align 8, !tbaa !2428
  br i1 %684, label %block_400fa6, label %block_401025

block_400f38:                                     ; preds = %block_400ed3
  %686 = add i64 %898, -124
  %687 = add i64 %934, 8
  store i64 %687, i64* %PC, align 8
  %688 = inttoptr i64 %686 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = add i32 %689, 1
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX, align 8, !tbaa !2428
  %692 = icmp eq i32 %689, -1
  %693 = icmp eq i32 %690, 0
  %694 = or i1 %692, %693
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %128, align 1, !tbaa !2432
  %696 = and i32 %690, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696) #9
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %129, align 1, !tbaa !2446
  %701 = xor i32 %690, %689
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %130, align 1, !tbaa !2447
  %705 = zext i1 %693 to i8
  store i8 %705, i8* %131, align 1, !tbaa !2448
  %706 = lshr i32 %690, 31
  %707 = trunc i32 %706 to i8
  store i8 %707, i8* %132, align 1, !tbaa !2449
  %708 = lshr i32 %689, 31
  %709 = xor i32 %706, %708
  %710 = add nuw nsw i32 %709, %706
  %711 = icmp eq i32 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %133, align 1, !tbaa !2450
  %713 = add i64 %934, 14
  store i64 %713, i64* %PC, align 8
  store i32 %690, i32* %688, align 4
  %714 = load i64, i64* %PC, align 8
  %715 = add i64 %714, -150
  store i64 %715, i64* %PC, align 8, !tbaa !2428
  br label %block_400eb0

block_400e16:                                     ; preds = %block_400e0a
  %716 = add i64 %966, -48
  %717 = add i64 %1002, 4
  store i64 %717, i64* %PC, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RAX, align 8, !tbaa !2428
  %720 = add i64 %966, -124
  %721 = add i64 %1002, 8
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = sext i32 %723 to i64
  %725 = mul nsw i64 %724, 32000
  store i64 %725, i64* %RCX, align 8, !tbaa !2428
  %726 = lshr i64 %725, 63
  %727 = add i64 %725, %719
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = icmp ult i64 %727, %719
  %729 = icmp ult i64 %727, %725
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %128, align 1, !tbaa !2432
  %732 = trunc i64 %727 to i32
  %733 = and i32 %732, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733) #9
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %129, align 1, !tbaa !2446
  %738 = xor i64 %719, %727
  %739 = lshr i64 %738, 4
  %740 = trunc i64 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %130, align 1, !tbaa !2447
  %742 = icmp eq i64 %727, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %131, align 1, !tbaa !2448
  %744 = lshr i64 %727, 63
  %745 = trunc i64 %744 to i8
  store i8 %745, i8* %132, align 1, !tbaa !2449
  %746 = lshr i64 %719, 63
  %747 = xor i64 %744, %746
  %748 = xor i64 %744, %726
  %749 = add nuw nsw i64 %747, %748
  %750 = icmp eq i64 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %133, align 1, !tbaa !2450
  %752 = add i64 %1002, 22
  store i64 %752, i64* %PC, align 8
  %753 = load i32, i32* %969, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX, align 8, !tbaa !2428
  %755 = shl nsw i64 %754, 3
  %756 = add i64 %755, %727
  %757 = add i64 %1002, 27
  store i64 %757, i64* %PC, align 8
  %758 = inttoptr i64 %756 to i64*
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %760 = add i64 %966, -64
  %761 = add i64 %1002, 31
  store i64 %761, i64* %PC, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RAX, align 8, !tbaa !2428
  %764 = add i64 %1002, 35
  store i64 %764, i64* %PC, align 8
  %765 = load i32, i32* %722, align 4
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RCX, align 8, !tbaa !2428
  %767 = shl nsw i64 %766, 3
  %768 = add i64 %767, %763
  %769 = add i64 %1002, 40
  store i64 %769, i64* %PC, align 8
  %770 = inttoptr i64 %768 to i64*
  %771 = load i64, i64* %770, align 8
  store i64 %771, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %772 = load i64, i64* %RBP, align 8
  %773 = add i64 %772, -72
  %774 = add i64 %1002, 44
  store i64 %774, i64* %PC, align 8
  %775 = inttoptr i64 %773 to i64*
  %776 = load i64, i64* %775, align 8
  store i64 %776, i64* %RAX, align 8, !tbaa !2428
  %777 = add i64 %772, -128
  %778 = add i64 %1002, 48
  store i64 %778, i64* %PC, align 8
  %779 = inttoptr i64 %777 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = sext i32 %780 to i64
  store i64 %781, i64* %RCX, align 8, !tbaa !2428
  %782 = shl nsw i64 %781, 3
  %783 = add i64 %782, %776
  %784 = add i64 %1002, 53
  store i64 %784, i64* %PC, align 8
  %785 = bitcast i64 %771 to double
  %786 = inttoptr i64 %783 to double*
  %787 = load double, double* %786, align 8
  %788 = fmul double %785, %787
  store double %788, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %789 = bitcast i64 %759 to double
  %790 = fadd double %789, %788
  store double %790, double* %134, align 1, !tbaa !2452
  store i64 0, i64* %135, align 1, !tbaa !2452
  %791 = add i64 %772, -80
  %792 = add i64 %1002, 61
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %791 to i64*
  %794 = load i64, i64* %793, align 8
  store i64 %794, i64* %RAX, align 8, !tbaa !2428
  %795 = add i64 %772, -124
  %796 = add i64 %1002, 65
  store i64 %796, i64* %PC, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = sext i32 %798 to i64
  store i64 %799, i64* %RCX, align 8, !tbaa !2428
  %800 = shl nsw i64 %799, 3
  %801 = add i64 %800, %794
  %802 = add i64 %1002, 70
  store i64 %802, i64* %PC, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %805 = add i64 %772, -88
  %806 = add i64 %1002, 74
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RAX, align 8, !tbaa !2428
  %809 = add i64 %1002, 78
  store i64 %809, i64* %PC, align 8
  %810 = load i32, i32* %779, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX, align 8, !tbaa !2428
  %812 = shl nsw i64 %811, 3
  %813 = add i64 %812, %808
  %814 = add i64 %1002, 83
  store i64 %814, i64* %PC, align 8
  %815 = bitcast i64 %804 to double
  %816 = inttoptr i64 %813 to double*
  %817 = load double, double* %816, align 8
  %818 = fmul double %815, %817
  store double %818, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %819 = fadd double %790, %818
  store double %819, double* %134, align 1, !tbaa !2452
  store i64 0, i64* %135, align 1, !tbaa !2452
  %820 = add i64 %772, -56
  %821 = add i64 %1002, 91
  store i64 %821, i64* %PC, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %RAX, align 8, !tbaa !2428
  %824 = add i64 %1002, 95
  store i64 %824, i64* %PC, align 8
  %825 = load i32, i32* %797, align 4
  %826 = sext i32 %825 to i64
  %827 = mul nsw i64 %826, 32000
  store i64 %827, i64* %RCX, align 8, !tbaa !2428
  %828 = lshr i64 %827, 63
  %829 = add i64 %827, %823
  store i64 %829, i64* %RAX, align 8, !tbaa !2428
  %830 = icmp ult i64 %829, %823
  %831 = icmp ult i64 %829, %827
  %832 = or i1 %830, %831
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %128, align 1, !tbaa !2432
  %834 = trunc i64 %829 to i32
  %835 = and i32 %834, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835) #9
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %129, align 1, !tbaa !2446
  %840 = xor i64 %823, %829
  %841 = lshr i64 %840, 4
  %842 = trunc i64 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %130, align 1, !tbaa !2447
  %844 = icmp eq i64 %829, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %131, align 1, !tbaa !2448
  %846 = lshr i64 %829, 63
  %847 = trunc i64 %846 to i8
  store i8 %847, i8* %132, align 1, !tbaa !2449
  %848 = lshr i64 %823, 63
  %849 = xor i64 %846, %848
  %850 = xor i64 %846, %828
  %851 = add nuw nsw i64 %849, %850
  %852 = icmp eq i64 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %133, align 1, !tbaa !2450
  %854 = load i64, i64* %RBP, align 8
  %855 = add i64 %854, -128
  %856 = add i64 %1002, 109
  store i64 %856, i64* %PC, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RCX, align 8, !tbaa !2428
  %860 = shl nsw i64 %859, 3
  %861 = add i64 %860, %829
  %862 = add i64 %1002, 114
  store i64 %862, i64* %PC, align 8
  %863 = inttoptr i64 %861 to double*
  store double %819, double* %863, align 8
  %864 = load i64, i64* %RBP, align 8
  %865 = add i64 %864, -128
  %866 = load i64, i64* %PC, align 8
  %867 = add i64 %866, 3
  store i64 %867, i64* %PC, align 8
  %868 = inttoptr i64 %865 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = add i32 %869, 1
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX, align 8, !tbaa !2428
  %872 = icmp eq i32 %869, -1
  %873 = icmp eq i32 %870, 0
  %874 = or i1 %872, %873
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %128, align 1, !tbaa !2432
  %876 = and i32 %870, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876) #9
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %129, align 1, !tbaa !2446
  %881 = xor i32 %870, %869
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %130, align 1, !tbaa !2447
  %885 = zext i1 %873 to i8
  store i8 %885, i8* %131, align 1, !tbaa !2448
  %886 = lshr i32 %870, 31
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %132, align 1, !tbaa !2449
  %888 = lshr i32 %869, 31
  %889 = xor i32 %886, %888
  %890 = add nuw nsw i32 %889, %886
  %891 = icmp eq i32 %890, 2
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %133, align 1, !tbaa !2450
  %893 = add i64 %866, 9
  store i64 %893, i64* %PC, align 8
  store i32 %870, i32* %868, align 4
  %894 = load i64, i64* %PC, align 8
  %895 = add i64 %894, -135
  store i64 %895, i64* %PC, align 8, !tbaa !2428
  br label %block_400e0a

block_400f93:                                     ; preds = %block_400f52
  %896 = add i64 %176, 7
  store i64 %896, i64* %PC, align 8
  store i32 0, i32* %143, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400f9a

block_400ed3:                                     ; preds = %block_400edf, %block_400ebc
  %897 = phi i64 [ %647, %block_400edf ], [ %.pre33, %block_400ebc ]
  %898 = load i64, i64* %RBP, align 8
  %899 = add i64 %898, -128
  %900 = add i64 %897, 3
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX, align 8, !tbaa !2428
  %904 = add i64 %898, -20
  %905 = add i64 %897, 6
  store i64 %905, i64* %PC, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = sub i32 %902, %907
  %909 = icmp ult i32 %902, %907
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %128, align 1, !tbaa !2432
  %911 = and i32 %908, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911) #9
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %129, align 1, !tbaa !2446
  %916 = xor i32 %907, %902
  %917 = xor i32 %916, %908
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %130, align 1, !tbaa !2447
  %921 = icmp eq i32 %908, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %131, align 1, !tbaa !2448
  %923 = lshr i32 %908, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %132, align 1, !tbaa !2449
  %925 = lshr i32 %902, 31
  %926 = lshr i32 %907, 31
  %927 = xor i32 %926, %925
  %928 = xor i32 %923, %925
  %929 = add nuw nsw i32 %928, %927
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %133, align 1, !tbaa !2450
  %932 = icmp ne i8 %924, 0
  %933 = xor i1 %932, %930
  %.v35 = select i1 %933, i64 12, i64 101
  %934 = add i64 %897, %.v35
  store i64 %934, i64* %PC, align 8, !tbaa !2428
  br i1 %933, label %block_400edf, label %block_400f38

block_401012:                                     ; preds = %block_400fad
  %935 = add i64 %426, -124
  %936 = add i64 %462, 8
  store i64 %936, i64* %PC, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = add i32 %938, 1
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX, align 8, !tbaa !2428
  %941 = icmp eq i32 %938, -1
  %942 = icmp eq i32 %939, 0
  %943 = or i1 %941, %942
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %128, align 1, !tbaa !2432
  %945 = and i32 %939, 255
  %946 = tail call i32 @llvm.ctpop.i32(i32 %945) #9
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  store i8 %949, i8* %129, align 1, !tbaa !2446
  %950 = xor i32 %939, %938
  %951 = lshr i32 %950, 4
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  store i8 %953, i8* %130, align 1, !tbaa !2447
  %954 = zext i1 %942 to i8
  store i8 %954, i8* %131, align 1, !tbaa !2448
  %955 = lshr i32 %939, 31
  %956 = trunc i32 %955 to i8
  store i8 %956, i8* %132, align 1, !tbaa !2449
  %957 = lshr i32 %938, 31
  %958 = xor i32 %955, %957
  %959 = add nuw nsw i32 %958, %955
  %960 = icmp eq i32 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %133, align 1, !tbaa !2450
  %962 = add i64 %462, 14
  store i64 %962, i64* %PC, align 8
  store i32 %939, i32* %937, align 4
  %963 = load i64, i64* %PC, align 8
  %964 = add i64 %963, -134
  store i64 %964, i64* %PC, align 8, !tbaa !2428
  br label %block_400f9a

block_400e0a:                                     ; preds = %block_400e03, %block_400e16
  %965 = phi i64 [ %.pre34, %block_400e03 ], [ %895, %block_400e16 ]
  %966 = load i64, i64* %RBP, align 8
  %967 = add i64 %966, -128
  %968 = add i64 %965, 3
  store i64 %968, i64* %PC, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = zext i32 %970 to i64
  store i64 %971, i64* %RAX, align 8, !tbaa !2428
  %972 = add i64 %966, -20
  %973 = add i64 %965, 6
  store i64 %973, i64* %PC, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = sub i32 %970, %975
  %977 = icmp ult i32 %970, %975
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %128, align 1, !tbaa !2432
  %979 = and i32 %976, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979) #9
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %129, align 1, !tbaa !2446
  %984 = xor i32 %975, %970
  %985 = xor i32 %984, %976
  %986 = lshr i32 %985, 4
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %130, align 1, !tbaa !2447
  %989 = icmp eq i32 %976, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %131, align 1, !tbaa !2448
  %991 = lshr i32 %976, 31
  %992 = trunc i32 %991 to i8
  store i8 %992, i8* %132, align 1, !tbaa !2449
  %993 = lshr i32 %970, 31
  %994 = lshr i32 %975, 31
  %995 = xor i32 %994, %993
  %996 = xor i32 %991, %993
  %997 = add nuw nsw i32 %996, %995
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %133, align 1, !tbaa !2450
  %1000 = icmp ne i8 %992, 0
  %1001 = xor i1 %1000, %998
  %.v36 = select i1 %1001, i64 12, i64 140
  %1002 = add i64 %965, %.v36
  store i64 %1002, i64* %PC, align 8, !tbaa !2428
  br i1 %1001, label %block_400e16, label %block_400e96

block_400e96:                                     ; preds = %block_400e0a
  %1003 = add i64 %966, -124
  %1004 = add i64 %1002, 8
  store i64 %1004, i64* %PC, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = add i32 %1006, 1
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX, align 8, !tbaa !2428
  %1009 = icmp eq i32 %1006, -1
  %1010 = icmp eq i32 %1007, 0
  %1011 = or i1 %1009, %1010
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %128, align 1, !tbaa !2432
  %1013 = and i32 %1007, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013) #9
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %129, align 1, !tbaa !2446
  %1018 = xor i32 %1007, %1006
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %130, align 1, !tbaa !2447
  %1022 = zext i1 %1010 to i8
  store i8 %1022, i8* %131, align 1, !tbaa !2448
  %1023 = lshr i32 %1007, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %132, align 1, !tbaa !2449
  %1025 = lshr i32 %1006, 31
  %1026 = xor i32 %1023, %1025
  %1027 = add nuw nsw i32 %1026, %1023
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %133, align 1, !tbaa !2450
  %1030 = add i64 %1002, 14
  store i64 %1030, i64* %PC, align 8
  store i32 %1007, i32* %1005, align 4
  %1031 = load i64, i64* %PC, align 8
  %1032 = add i64 %1031, -173
  store i64 %1032, i64* %PC, align 8, !tbaa !2428
  br label %block_400df7

block_400e03:                                     ; preds = %block_400df7
  %1033 = add i64 %486, -128
  %1034 = add i64 %522, 7
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 0, i32* %1035, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400e0a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007b0_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007b0:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9
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
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 96), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2452
  store i64 0, i64* %42, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %45 = add i64 %10, -545
  %46 = add i64 %10, 42
  %47 = add i64 %7, -32
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_400590_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #9
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400790_polybench_timer_stop(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
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
  %14 = tail call %struct.Memory* @sub_400780_rtclock(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400690:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #9
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
  br i1 %12, label %block_400699, label %block_4006b0

block_4006b0:                                     ; preds = %block_400690
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

block_400699:                                     ; preds = %block_400690
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
  %36 = tail call %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_400650_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400650:
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
  store i8 %21, i8* %11, align 1, !tbaa !2451
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2451
  store i8 0, i8* %13, align 1, !tbaa !2451
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2451
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400688, label %block_400673

block_400673:                                     ; preds = %block_400650
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400688

block_400688:                                     ; preds = %block_400673, %block_400650
  %35 = phi i64 [ %34, %block_400673 ], [ %33, %block_400650 ]
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
define %struct.Memory* @sub_4006d0_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006d0:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
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
  %54 = load i64, i64* %PC, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %56, align 1, !tbaa !2454
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
  br label %block_400702

block_40070e:                                     ; preds = %block_400702
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
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #9
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
  br label %block_400702

block_400733:                                     ; preds = %block_400702
  store i64 %203, i64* %RDI, align 8, !tbaa !2428
  %124 = add i64 %199, -435
  %125 = add i64 %199, 12
  %126 = load i64, i64* %RSP, align 8, !tbaa !2428
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  %129 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %130 = load i64, i64* %RSP, align 8
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %130, 32
  store i64 %132, i64* %RSP, align 8, !tbaa !2428
  %133 = icmp ugt i64 %130, -33
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %13, align 1, !tbaa !2432
  %135 = trunc i64 %132 to i32
  %136 = and i32 %135, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #9
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

block_400702:                                     ; preds = %block_40070e, %block_4006d0
  %162 = phi i64 [ %123, %block_40070e ], [ %.pre, %block_4006d0 ]
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
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #9
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
  br i1 %198, label %block_40070e, label %block_400733
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4014c4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4014c4:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
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
define %struct.Memory* @sub_401450___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401450:
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
  store i8 %51, i8* %43, align 1, !tbaa !2451
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2451
  store i8 0, i8* %45, align 1, !tbaa !2451
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2451
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %48, align 1, !tbaa !2451
  %63 = add i64 %38, -3867
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400550__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
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
  br i1 %76, label %block_4014a6, label %block_401486

block_4014a6.loopexit:                            ; preds = %block_401490
  br label %block_4014a6

block_4014a6:                                     ; preds = %block_4014a6.loopexit, %block_401450
  %81 = phi i64 [ %80, %block_401450 ], [ %179, %block_4014a6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401450 ], [ %149, %block_4014a6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
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

block_401486:                                     ; preds = %block_401450
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401490

block_401490:                                     ; preds = %block_401490, %block_401486
  %134 = phi i64 [ 0, %block_401486 ], [ %152, %block_401490 ]
  %135 = phi i64 [ %133, %block_401486 ], [ %179, %block_401490 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401486 ], [ %149, %block_401490 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #9
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
  br i1 %169, label %block_4014a6.loopexit, label %block_401490
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005e0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e0:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
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
  store i64 ptrtoint (void ()* @callback_sub_4014c0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401450___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400610__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400610:
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4014c0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4014c0:
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
define %struct.Memory* @sub_400bb0_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400bb0:
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
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %12 = load i64, i64* %RBP, align 8
  %13 = add i64 %1, 1
  store i64 %13, i64* %PC, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !2428
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %12, i64* %17, align 8
  %18 = load i64, i64* %PC, align 8
  store i64 %16, i64* %RBP, align 8, !tbaa !2428
  %19 = load i64, i64* %R15, align 8
  %20 = add i64 %18, 5
  store i64 %20, i64* %PC, align 8
  %21 = add i64 %15, -16
  %22 = inttoptr i64 %21 to i64*
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %R14, align 8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 2
  store i64 %25, i64* %PC, align 8
  %26 = add i64 %15, -24
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %RBX, align 8
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %PC, align 8
  %31 = add i64 %15, -32
  %32 = inttoptr i64 %31 to i64*
  store i64 %28, i64* %32, align 8
  store i64 %31, i64* %14, align 8, !tbaa !2428
  %33 = load i64, i64* %RBP, align 8
  %34 = add i64 %33, 56
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %34 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %33, 48
  %40 = add i64 %35, 8
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %R10, align 8, !tbaa !2428
  %43 = add i64 %33, 40
  %44 = add i64 %35, 12
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %R11, align 8, !tbaa !2428
  %47 = add i64 %33, 32
  %48 = add i64 %35, 16
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %RBX, align 8, !tbaa !2428
  %51 = add i64 %33, 24
  %52 = add i64 %35, 20
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %R14, align 8, !tbaa !2428
  %55 = add i64 %33, 16
  %56 = add i64 %35, 24
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %R15, align 8, !tbaa !2428
  %59 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 8) to i64*), align 8
  %60 = bitcast [32 x %union.VectorReg]* %5 to double*
  %61 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %59, i64* %61, align 1, !tbaa !2452
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %63 = bitcast i64* %62 to double*
  store double 0.000000e+00, double* %63, align 1, !tbaa !2452
  %64 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 16) to i64*), align 16
  %65 = bitcast %union.VectorReg* %6 to double*
  %66 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %64, i64* %66, align 1, !tbaa !2452
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %68 = bitcast i64* %67 to double*
  store double 0.000000e+00, double* %68, align 1, !tbaa !2452
  %69 = add i64 %33, -28
  %70 = load i32, i32* %EDI, align 4
  %71 = add i64 %35, 43
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %72, align 4
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -40
  %75 = load i64, i64* %RSI, align 8
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78, align 8
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -48
  %81 = load i64, i64* %RDX, align 8
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -56
  %87 = load i64, i64* %RCX, align 8
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -64
  %93 = load i64, i64* %R8, align 8
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -72
  %99 = load i64, i64* %R9, align 8
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102, align 8
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -80
  %105 = load i64, i64* %R15, align 8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %RBP, align 8
  %110 = add i64 %109, -88
  %111 = load i64, i64* %R14, align 8
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %114, align 8
  %115 = load i64, i64* %RBP, align 8
  %116 = add i64 %115, -96
  %117 = load i64, i64* %RBX, align 8
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120, align 8
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -104
  %123 = load i64, i64* %R11, align 8
  %124 = load i64, i64* %PC, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %122 to i64*
  store i64 %123, i64* %126, align 8
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -112
  %129 = load i64, i64* %R10, align 8
  %130 = load i64, i64* %PC, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %128 to i64*
  store i64 %129, i64* %132, align 8
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -120
  %135 = load i64, i64* %RAX, align 8
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %134 to i64*
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -40
  %141 = load i64, i64* %PC, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = add i64 %141, 8
  store i64 %145, i64* %PC, align 8
  %146 = load i64, i64* %66, align 1
  %147 = inttoptr i64 %144 to i64*
  store i64 %146, i64* %147, align 8
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -48
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = add i64 %150, 8
  store i64 %154, i64* %PC, align 8
  %155 = load i64, i64* %61, align 1
  %156 = inttoptr i64 %153 to i64*
  store i64 %155, i64* %156, align 8
  %157 = load i64, i64* %RBP, align 8
  %158 = add i64 %157, -124
  %159 = load i64, i64* %PC, align 8
  %160 = add i64 %159, 7
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 0, i32* %161, align 4
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %168 = bitcast %union.VectorReg* %7 to double*
  %169 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %171 = bitcast i64* %170 to double*
  %172 = bitcast %union.VectorReg* %8 to double*
  %173 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %175 = bitcast i64* %174 to double*
  %176 = bitcast %union.VectorReg* %9 to double*
  %177 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %179 = bitcast i64* %178 to double*
  %180 = bitcast %union.VectorReg* %10 to double*
  %181 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %183 = bitcast i64* %182 to double*
  %184 = bitcast %union.VectorReg* %11 to double*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  %186 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  br label %block_400c27

block_400d7a:                                     ; preds = %block_400d2e
  %187 = add i64 %654, 8
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %655 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, 1
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX, align 8, !tbaa !2428
  %192 = icmp eq i32 %189, -1
  %193 = icmp eq i32 %190, 0
  %194 = or i1 %192, %193
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %162, align 1, !tbaa !2432
  %196 = and i32 %190, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #9
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %163, align 1, !tbaa !2446
  %201 = xor i32 %190, %189
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %164, align 1, !tbaa !2447
  %205 = zext i1 %193 to i8
  store i8 %205, i8* %165, align 1, !tbaa !2448
  %206 = lshr i32 %190, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %166, align 1, !tbaa !2449
  %208 = lshr i32 %189, 31
  %209 = xor i32 %206, %208
  %210 = add nuw nsw i32 %209, %206
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %167, align 1, !tbaa !2450
  %213 = add i64 %654, 14
  store i64 %213, i64* %PC, align 8
  store i32 %190, i32* %188, align 4
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, -353
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  br label %block_400c27

block_400c33:                                     ; preds = %block_400c27
  store <4 x i32> zeroinitializer, <4 x i32>* %186, align 1, !tbaa !2454
  %216 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 24) to i64*), align 8
  store i64 %216, i64* %66, align 1, !tbaa !2452
  store double 0.000000e+00, double* %68, align 1, !tbaa !2452
  %217 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 32) to i64*), align 16
  store i64 %217, i64* %169, align 1, !tbaa !2452
  store double 0.000000e+00, double* %171, align 1, !tbaa !2452
  %218 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 40) to i64*), align 8
  store i64 %218, i64* %173, align 1, !tbaa !2452
  store double 0.000000e+00, double* %175, align 1, !tbaa !2452
  %219 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 48) to i64*), align 16
  store i64 %219, i64* %177, align 1, !tbaa !2452
  store double 0.000000e+00, double* %179, align 1, !tbaa !2452
  %220 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 56) to i64*), align 8
  store i64 %220, i64* %181, align 1, !tbaa !2452
  store double 0.000000e+00, double* %183, align 1, !tbaa !2452
  %221 = add i64 %799, 48
  store i64 %221, i64* %PC, align 8
  %222 = load i32, i32* %766, align 4
  %223 = sitofp i32 %222 to double
  store double %223, double* %184, align 1, !tbaa !2452
  %224 = add i64 %763, -64
  %225 = add i64 %799, 52
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RAX, align 8, !tbaa !2428
  %228 = add i64 %799, 56
  store i64 %228, i64* %PC, align 8
  %229 = load i32, i32* %766, align 4
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %RCX, align 8, !tbaa !2428
  %231 = shl nsw i64 %230, 3
  %232 = add i64 %231, %227
  %233 = add i64 %799, 61
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to double*
  store double %223, double* %234, align 8
  %235 = load i64, i64* %RBP, align 8
  %236 = add i64 %235, -124
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, 1
  %242 = zext i32 %241 to i64
  %243 = icmp eq i32 %240, -1
  %244 = icmp eq i32 %241, 0
  %245 = or i1 %243, %244
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %162, align 1, !tbaa !2432
  %247 = and i32 %241, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247) #9
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %163, align 1, !tbaa !2446
  %252 = xor i32 %241, %240
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  store i8 %255, i8* %164, align 1, !tbaa !2447
  %256 = zext i1 %244 to i8
  store i8 %256, i8* %165, align 1, !tbaa !2448
  %257 = lshr i32 %241, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %166, align 1, !tbaa !2449
  %259 = lshr i32 %240, 31
  %260 = xor i32 %257, %259
  %261 = add nuw nsw i32 %260, %257
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %167, align 1, !tbaa !2450
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %264 = sext i32 %241 to i64
  %265 = lshr i64 %264, 32
  store i64 %265, i64* %185, align 8, !tbaa !2428
  %266 = add i64 %235, -28
  %267 = add i64 %237, 12
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = shl nuw i64 %265, 32
  %272 = or i64 %271, %242
  %273 = sdiv i64 %272, %270
  %274 = shl i64 %273, 32
  %275 = ashr exact i64 %274, 32
  %276 = icmp eq i64 %273, %275
  br i1 %276, label %279, label %277

; <label>:277:                                    ; preds = %block_400c33
  %278 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %267, %struct.Memory* %MEMORY.1) #12
  %.pre4 = load i32, i32* %EAX, align 4
  %.pre5 = load i64, i64* %PC, align 8
  %.pre6 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:279:                                    ; preds = %block_400c33
  %280 = srem i64 %272, %270
  %281 = and i64 %273, 4294967295
  store i64 %281, i64* %RAX, align 8, !tbaa !2428
  %282 = and i64 %280, 4294967295
  store i64 %282, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %162, align 1, !tbaa !2432
  store i8 0, i8* %163, align 1, !tbaa !2446
  store i8 0, i8* %164, align 1, !tbaa !2447
  store i8 0, i8* %165, align 1, !tbaa !2448
  store i8 0, i8* %166, align 1, !tbaa !2449
  store i8 0, i8* %167, align 1, !tbaa !2450
  %283 = trunc i64 %273 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %279, %277
  %284 = phi i64 [ %.pre6, %277 ], [ %235, %279 ]
  %285 = phi i64 [ %.pre5, %277 ], [ %267, %279 ]
  %286 = phi i32 [ %.pre4, %277 ], [ %283, %279 ]
  %287 = phi %struct.Memory* [ %278, %277 ], [ %MEMORY.1, %279 ]
  %288 = sitofp i32 %286 to double
  %289 = load double, double* %180, align 1
  %290 = fdiv double %288, %289
  store double %290, double* %184, align 1, !tbaa !2452
  %291 = add i64 %284, -80
  %292 = add i64 %285, 12
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RCX, align 8, !tbaa !2428
  %295 = add i64 %284, -124
  %296 = add i64 %285, 16
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %RSI, align 8, !tbaa !2428
  %300 = shl nsw i64 %299, 3
  %301 = add i64 %300, %294
  %302 = add i64 %285, 21
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to double*
  store double %290, double* %303, align 8
  %304 = load i64, i64* %RBP, align 8
  %305 = add i64 %304, -124
  %306 = load i64, i64* %PC, align 8
  %307 = add i64 %306, 3
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %309, 1
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RAX, align 8, !tbaa !2428
  %312 = icmp eq i32 %309, -1
  %313 = icmp eq i32 %310, 0
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %162, align 1, !tbaa !2432
  %316 = and i32 %310, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #9
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %163, align 1, !tbaa !2446
  %321 = xor i32 %310, %309
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %164, align 1, !tbaa !2447
  %325 = zext i1 %313 to i8
  store i8 %325, i8* %165, align 1, !tbaa !2448
  %326 = lshr i32 %310, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %166, align 1, !tbaa !2449
  %328 = lshr i32 %309, 31
  %329 = xor i32 %326, %328
  %330 = add nuw nsw i32 %329, %326
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %167, align 1, !tbaa !2450
  %333 = sext i32 %310 to i64
  %334 = lshr i64 %333, 32
  store i64 %334, i64* %185, align 8, !tbaa !2428
  %335 = add i64 %304, -28
  %336 = add i64 %306, 10
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = shl nuw i64 %334, 32
  %341 = or i64 %340, %311
  %342 = sdiv i64 %341, %339
  %343 = shl i64 %342, 32
  %344 = ashr exact i64 %343, 32
  %345 = icmp eq i64 %342, %344
  br i1 %345, label %348, label %346

; <label>:346:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4
  %347 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %336, %struct.Memory* %287) #12
  %.pre7 = load i32, i32* %EAX, align 4
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:348:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4
  %349 = srem i64 %341, %339
  %350 = and i64 %342, 4294967295
  store i64 %350, i64* %RAX, align 8, !tbaa !2428
  %351 = and i64 %349, 4294967295
  store i64 %351, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %162, align 1, !tbaa !2432
  store i8 0, i8* %163, align 1, !tbaa !2446
  store i8 0, i8* %164, align 1, !tbaa !2447
  store i8 0, i8* %165, align 1, !tbaa !2448
  store i8 0, i8* %166, align 1, !tbaa !2449
  store i8 0, i8* %167, align 1, !tbaa !2450
  %352 = trunc i64 %342 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %348, %346
  %353 = phi i64 [ %.pre9, %346 ], [ %304, %348 ]
  %354 = phi i64 [ %.pre8, %346 ], [ %336, %348 ]
  %355 = phi i32 [ %.pre7, %346 ], [ %352, %348 ]
  %356 = phi %struct.Memory* [ %347, %346 ], [ %287, %348 ]
  %357 = sitofp i32 %355 to double
  %358 = load double, double* %176, align 1
  %359 = fdiv double %357, %358
  store double %359, double* %180, align 1, !tbaa !2452
  %360 = add i64 %353, -72
  %361 = add i64 %354, 12
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RCX, align 8, !tbaa !2428
  %364 = add i64 %353, -124
  %365 = add i64 %354, 16
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RSI, align 8, !tbaa !2428
  %369 = shl nsw i64 %368, 3
  %370 = add i64 %369, %363
  %371 = add i64 %354, 21
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to double*
  store double %359, double* %372, align 8
  %373 = load i64, i64* %RBP, align 8
  %374 = add i64 %373, -124
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
  store i8 %384, i8* %162, align 1, !tbaa !2432
  %385 = and i32 %379, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #9
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %163, align 1, !tbaa !2446
  %390 = xor i32 %379, %378
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %164, align 1, !tbaa !2447
  %394 = zext i1 %382 to i8
  store i8 %394, i8* %165, align 1, !tbaa !2448
  %395 = lshr i32 %379, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %166, align 1, !tbaa !2449
  %397 = lshr i32 %378, 31
  %398 = xor i32 %395, %397
  %399 = add nuw nsw i32 %398, %395
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %167, align 1, !tbaa !2450
  %402 = sext i32 %379 to i64
  %403 = lshr i64 %402, 32
  store i64 %403, i64* %185, align 8, !tbaa !2428
  %404 = add i64 %373, -28
  %405 = add i64 %375, 10
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = shl nuw i64 %403, 32
  %410 = or i64 %409, %380
  %411 = sdiv i64 %410, %408
  %412 = shl i64 %411, 32
  %413 = ashr exact i64 %412, 32
  %414 = icmp eq i64 %411, %413
  br i1 %414, label %417, label %415

; <label>:415:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3
  %416 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %405, %struct.Memory* %356) #12
  %.pre10 = load i32, i32* %EAX, align 4
  %.pre11 = load i64, i64* %PC, align 8
  %.pre12 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:417:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3
  %418 = srem i64 %410, %408
  %419 = and i64 %411, 4294967295
  store i64 %419, i64* %RAX, align 8, !tbaa !2428
  %420 = and i64 %418, 4294967295
  store i64 %420, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %162, align 1, !tbaa !2432
  store i8 0, i8* %163, align 1, !tbaa !2446
  store i8 0, i8* %164, align 1, !tbaa !2447
  store i8 0, i8* %165, align 1, !tbaa !2448
  store i8 0, i8* %166, align 1, !tbaa !2449
  store i8 0, i8* %167, align 1, !tbaa !2450
  %421 = trunc i64 %411 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %417, %415
  %422 = phi i64 [ %.pre12, %415 ], [ %373, %417 ]
  %423 = phi i64 [ %.pre11, %415 ], [ %405, %417 ]
  %424 = phi i32 [ %.pre10, %415 ], [ %421, %417 ]
  %425 = phi %struct.Memory* [ %416, %415 ], [ %356, %417 ]
  %426 = sitofp i32 %424 to double
  %427 = load double, double* %172, align 1
  %428 = fdiv double %426, %427
  store double %428, double* %176, align 1, !tbaa !2452
  %429 = add i64 %422, -88
  %430 = add i64 %423, 12
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %RCX, align 8, !tbaa !2428
  %433 = add i64 %422, -124
  %434 = add i64 %423, 16
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  store i64 %437, i64* %RSI, align 8, !tbaa !2428
  %438 = shl nsw i64 %437, 3
  %439 = add i64 %438, %432
  %440 = add i64 %423, 21
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to double*
  store double %428, double* %441, align 8
  %442 = load i64, i64* %RBP, align 8
  %443 = add i64 %442, -124
  %444 = load i64, i64* %PC, align 8
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, 1
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX, align 8, !tbaa !2428
  %450 = icmp eq i32 %447, -1
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %162, align 1, !tbaa !2432
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454) #9
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %163, align 1, !tbaa !2446
  %459 = xor i32 %448, %447
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %164, align 1, !tbaa !2447
  %463 = zext i1 %451 to i8
  store i8 %463, i8* %165, align 1, !tbaa !2448
  %464 = lshr i32 %448, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %166, align 1, !tbaa !2449
  %466 = lshr i32 %447, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %464
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %167, align 1, !tbaa !2450
  %471 = sext i32 %448 to i64
  %472 = lshr i64 %471, 32
  store i64 %472, i64* %185, align 8, !tbaa !2428
  %473 = add i64 %442, -28
  %474 = add i64 %444, 10
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  %478 = shl nuw i64 %472, 32
  %479 = or i64 %478, %449
  %480 = sdiv i64 %479, %477
  %481 = shl i64 %480, 32
  %482 = ashr exact i64 %481, 32
  %483 = icmp eq i64 %480, %482
  br i1 %483, label %486, label %484

; <label>:484:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2
  %485 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %474, %struct.Memory* %425) #12
  %.pre13 = load i32, i32* %EAX, align 4
  %.pre14 = load i64, i64* %PC, align 8
  %.pre15 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:486:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2
  %487 = srem i64 %479, %477
  %488 = and i64 %480, 4294967295
  store i64 %488, i64* %RAX, align 8, !tbaa !2428
  %489 = and i64 %487, 4294967295
  store i64 %489, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %162, align 1, !tbaa !2432
  store i8 0, i8* %163, align 1, !tbaa !2446
  store i8 0, i8* %164, align 1, !tbaa !2447
  store i8 0, i8* %165, align 1, !tbaa !2448
  store i8 0, i8* %166, align 1, !tbaa !2449
  store i8 0, i8* %167, align 1, !tbaa !2450
  %490 = trunc i64 %480 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %486, %484
  %491 = phi i64 [ %.pre15, %484 ], [ %442, %486 ]
  %492 = phi i64 [ %.pre14, %484 ], [ %474, %486 ]
  %493 = phi i32 [ %.pre13, %484 ], [ %490, %486 ]
  %494 = phi %struct.Memory* [ %485, %484 ], [ %425, %486 ]
  %495 = sitofp i32 %493 to double
  %496 = load double, double* %168, align 1
  %497 = fdiv double %495, %496
  store double %497, double* %172, align 1, !tbaa !2452
  %498 = add i64 %491, -112
  %499 = add i64 %492, 12
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RCX, align 8, !tbaa !2428
  %502 = add i64 %491, -124
  %503 = add i64 %492, 16
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  store i64 %506, i64* %RSI, align 8, !tbaa !2428
  %507 = shl nsw i64 %506, 3
  %508 = add i64 %507, %501
  %509 = add i64 %492, 21
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %508 to double*
  store double %497, double* %510, align 8
  %511 = load i64, i64* %RBP, align 8
  %512 = add i64 %511, -124
  %513 = load i64, i64* %PC, align 8
  %514 = add i64 %513, 3
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %512 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = add i32 %516, 1
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX, align 8, !tbaa !2428
  %519 = icmp eq i32 %516, -1
  %520 = icmp eq i32 %517, 0
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %162, align 1, !tbaa !2432
  %523 = and i32 %517, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523) #9
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %163, align 1, !tbaa !2446
  %528 = xor i32 %517, %516
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %164, align 1, !tbaa !2447
  %532 = zext i1 %520 to i8
  store i8 %532, i8* %165, align 1, !tbaa !2448
  %533 = lshr i32 %517, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %166, align 1, !tbaa !2449
  %535 = lshr i32 %516, 31
  %536 = xor i32 %533, %535
  %537 = add nuw nsw i32 %536, %533
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %167, align 1, !tbaa !2450
  %540 = sext i32 %517 to i64
  %541 = lshr i64 %540, 32
  store i64 %541, i64* %185, align 8, !tbaa !2428
  %542 = add i64 %511, -28
  %543 = add i64 %513, 10
  store i64 %543, i64* %PC, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = sext i32 %545 to i64
  %547 = shl nuw i64 %541, 32
  %548 = or i64 %547, %518
  %549 = sdiv i64 %548, %546
  %550 = shl i64 %549, 32
  %551 = ashr exact i64 %550, 32
  %552 = icmp eq i64 %549, %551
  br i1 %552, label %555, label %553

; <label>:553:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %554 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %543, %struct.Memory* %494) #12
  %.pre16 = load i32, i32* %EAX, align 4
  %.pre17 = load i64, i64* %PC, align 8
  %.pre18 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:555:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %556 = srem i64 %548, %546
  %557 = and i64 %549, 4294967295
  store i64 %557, i64* %RAX, align 8, !tbaa !2428
  %558 = and i64 %556, 4294967295
  store i64 %558, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %162, align 1, !tbaa !2432
  store i8 0, i8* %163, align 1, !tbaa !2446
  store i8 0, i8* %164, align 1, !tbaa !2447
  store i8 0, i8* %165, align 1, !tbaa !2448
  store i8 0, i8* %166, align 1, !tbaa !2449
  store i8 0, i8* %167, align 1, !tbaa !2450
  %559 = trunc i64 %549 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %555, %553
  %560 = phi i64 [ %.pre18, %553 ], [ %511, %555 ]
  %561 = phi i64 [ %.pre17, %553 ], [ %543, %555 ]
  %562 = phi i32 [ %.pre16, %553 ], [ %559, %555 ]
  %563 = phi %struct.Memory* [ %554, %553 ], [ %494, %555 ]
  %564 = sitofp i32 %562 to double
  %565 = load double, double* %65, align 1
  %566 = fdiv double %564, %565
  store double %566, double* %168, align 1, !tbaa !2452
  %567 = add i64 %560, -120
  %568 = add i64 %561, 12
  store i64 %568, i64* %PC, align 8
  %569 = inttoptr i64 %567 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RCX, align 8, !tbaa !2428
  %571 = add i64 %560, -124
  %572 = add i64 %561, 16
  store i64 %572, i64* %PC, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  store i64 %575, i64* %RSI, align 8, !tbaa !2428
  %576 = shl nsw i64 %575, 3
  %577 = add i64 %576, %570
  %578 = add i64 %561, 21
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %577 to double*
  store double %566, double* %579, align 8
  %580 = load i64, i64* %RBP, align 8
  %581 = add i64 %580, -96
  %582 = load i64, i64* %PC, align 8
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %581 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %RCX, align 8, !tbaa !2428
  %586 = add i64 %580, -124
  %587 = add i64 %582, 8
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = sext i32 %589 to i64
  store i64 %590, i64* %RSI, align 8, !tbaa !2428
  %591 = shl nsw i64 %590, 3
  %592 = add i64 %591, %585
  %593 = add i64 %582, 13
  store i64 %593, i64* %PC, align 8
  %594 = load i64, i64* %61, align 1
  %595 = inttoptr i64 %592 to i64*
  store i64 %594, i64* %595, align 8
  %596 = load i64, i64* %RBP, align 8
  %597 = add i64 %596, -104
  %598 = load i64, i64* %PC, align 8
  %599 = add i64 %598, 4
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %597 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %RCX, align 8, !tbaa !2428
  %602 = add i64 %596, -124
  %603 = add i64 %598, 8
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = sext i32 %605 to i64
  store i64 %606, i64* %RSI, align 8, !tbaa !2428
  %607 = shl nsw i64 %606, 3
  %608 = add i64 %607, %601
  %609 = add i64 %598, 13
  store i64 %609, i64* %PC, align 8
  %610 = load i64, i64* %61, align 1
  %611 = inttoptr i64 %608 to i64*
  store i64 %610, i64* %611, align 8
  %612 = load i64, i64* %RBP, align 8
  %613 = add i64 %612, -128
  %614 = load i64, i64* %PC, align 8
  %615 = add i64 %614, 7
  store i64 %615, i64* %PC, align 8
  %616 = inttoptr i64 %613 to i32*
  store i32 0, i32* %616, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400d2e

block_400d2e:                                     ; preds = %block_400d3a, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %617 = phi i64 [ %761, %block_400d3a ], [ %.pre19, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %618 = load i64, i64* %RBP, align 8
  %619 = add i64 %618, -128
  %620 = add i64 %617, 3
  store i64 %620, i64* %PC, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = add i64 %618, -28
  %625 = add i64 %617, 6
  store i64 %625, i64* %PC, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = sub i32 %622, %627
  %629 = icmp ult i32 %622, %627
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %162, align 1, !tbaa !2432
  %631 = and i32 %628, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631) #9
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %163, align 1, !tbaa !2446
  %636 = xor i32 %627, %622
  %637 = xor i32 %636, %628
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  store i8 %640, i8* %164, align 1, !tbaa !2447
  %641 = icmp eq i32 %628, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %165, align 1, !tbaa !2448
  %643 = lshr i32 %628, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %166, align 1, !tbaa !2449
  %645 = lshr i32 %622, 31
  %646 = lshr i32 %627, 31
  %647 = xor i32 %646, %645
  %648 = xor i32 %643, %645
  %649 = add nuw nsw i32 %648, %647
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %167, align 1, !tbaa !2450
  %652 = icmp ne i8 %644, 0
  %653 = xor i1 %652, %650
  %.v = select i1 %653, i64 12, i64 76
  %654 = add i64 %617, %.v
  store i64 %654, i64* %PC, align 8, !tbaa !2428
  %655 = add i64 %618, -124
  br i1 %653, label %block_400d3a, label %block_400d7a

block_400d8d:                                     ; preds = %block_400c27
  %656 = add i64 %799, 1
  store i64 %656, i64* %PC, align 8
  %657 = load i64, i64* %14, align 8, !tbaa !2428
  %658 = add i64 %657, 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RBX, align 8, !tbaa !2428
  store i64 %658, i64* %14, align 8, !tbaa !2428
  %661 = add i64 %799, 3
  store i64 %661, i64* %PC, align 8
  %662 = add i64 %657, 16
  %663 = inttoptr i64 %658 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %R14, align 8, !tbaa !2428
  store i64 %662, i64* %14, align 8, !tbaa !2428
  %665 = add i64 %799, 5
  store i64 %665, i64* %PC, align 8
  %666 = add i64 %657, 24
  %667 = inttoptr i64 %662 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %R15, align 8, !tbaa !2428
  store i64 %666, i64* %14, align 8, !tbaa !2428
  %669 = add i64 %799, 6
  store i64 %669, i64* %PC, align 8
  %670 = add i64 %657, 32
  %671 = inttoptr i64 %666 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RBP, align 8, !tbaa !2428
  store i64 %670, i64* %14, align 8, !tbaa !2428
  %673 = add i64 %799, 7
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %670 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %PC, align 8, !tbaa !2428
  %676 = add i64 %657, 40
  store i64 %676, i64* %14, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400d3a:                                     ; preds = %block_400d2e
  %677 = add i64 %654, 5
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %655 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = sitofp i32 %679 to double
  store double %680, double* %60, align 1, !tbaa !2452
  %681 = add i64 %654, 10
  store i64 %681, i64* %PC, align 8
  %682 = load i32, i32* %621, align 4
  %683 = sitofp i32 %682 to double
  store double %683, double* %65, align 1, !tbaa !2452
  %684 = fmul double %683, %680
  store double %684, double* %60, align 1, !tbaa !2452
  %685 = add i64 %654, 19
  store i64 %685, i64* %PC, align 8
  %686 = load i32, i32* %626, align 4
  %687 = sitofp i32 %686 to double
  store double %687, double* %65, align 1, !tbaa !2452
  %688 = fdiv double %684, %687
  store double %688, double* %60, align 1, !tbaa !2452
  %689 = add i64 %618, -56
  %690 = add i64 %654, 27
  store i64 %690, i64* %PC, align 8
  %691 = inttoptr i64 %689 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %RAX, align 8, !tbaa !2428
  %693 = add i64 %654, 31
  store i64 %693, i64* %PC, align 8
  %694 = load i32, i32* %678, align 4
  %695 = sext i32 %694 to i64
  %696 = mul nsw i64 %695, 32000
  store i64 %696, i64* %RCX, align 8, !tbaa !2428
  %697 = lshr i64 %696, 63
  %698 = add i64 %696, %692
  store i64 %698, i64* %RAX, align 8, !tbaa !2428
  %699 = icmp ult i64 %698, %692
  %700 = icmp ult i64 %698, %696
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %162, align 1, !tbaa !2432
  %703 = trunc i64 %698 to i32
  %704 = and i32 %703, 255
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704) #9
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %163, align 1, !tbaa !2446
  %709 = xor i64 %692, %698
  %710 = lshr i64 %709, 4
  %711 = trunc i64 %710 to i8
  %712 = and i8 %711, 1
  store i8 %712, i8* %164, align 1, !tbaa !2447
  %713 = icmp eq i64 %698, 0
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %165, align 1, !tbaa !2448
  %715 = lshr i64 %698, 63
  %716 = trunc i64 %715 to i8
  store i8 %716, i8* %166, align 1, !tbaa !2449
  %717 = lshr i64 %692, 63
  %718 = xor i64 %715, %717
  %719 = xor i64 %715, %697
  %720 = add nuw nsw i64 %718, %719
  %721 = icmp eq i64 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %167, align 1, !tbaa !2450
  %723 = add i64 %654, 45
  store i64 %723, i64* %PC, align 8
  %724 = load i32, i32* %621, align 4
  %725 = sext i32 %724 to i64
  store i64 %725, i64* %RCX, align 8, !tbaa !2428
  %726 = shl nsw i64 %725, 3
  %727 = add i64 %726, %698
  %728 = add i64 %654, 50
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to double*
  store double %688, double* %729, align 8
  %730 = load i64, i64* %RBP, align 8
  %731 = add i64 %730, -128
  %732 = load i64, i64* %PC, align 8
  %733 = add i64 %732, 3
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %731 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = add i32 %735, 1
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RAX, align 8, !tbaa !2428
  %738 = icmp eq i32 %735, -1
  %739 = icmp eq i32 %736, 0
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %162, align 1, !tbaa !2432
  %742 = and i32 %736, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742) #9
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %163, align 1, !tbaa !2446
  %747 = xor i32 %736, %735
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %164, align 1, !tbaa !2447
  %751 = zext i1 %739 to i8
  store i8 %751, i8* %165, align 1, !tbaa !2448
  %752 = lshr i32 %736, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %166, align 1, !tbaa !2449
  %754 = lshr i32 %735, 31
  %755 = xor i32 %752, %754
  %756 = add nuw nsw i32 %755, %752
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %167, align 1, !tbaa !2450
  %759 = add i64 %732, 9
  store i64 %759, i64* %PC, align 8
  store i32 %736, i32* %734, align 4
  %760 = load i64, i64* %PC, align 8
  %761 = add i64 %760, -71
  store i64 %761, i64* %PC, align 8, !tbaa !2428
  br label %block_400d2e

block_400c27:                                     ; preds = %block_400d7a, %block_400bb0
  %762 = phi i64 [ %.pre, %block_400bb0 ], [ %215, %block_400d7a ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400bb0 ], [ %563, %block_400d7a ]
  %763 = load i64, i64* %RBP, align 8
  %764 = add i64 %763, -124
  %765 = add i64 %762, 3
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RAX, align 8, !tbaa !2428
  %769 = add i64 %763, -28
  %770 = add i64 %762, 6
  store i64 %770, i64* %PC, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sub i32 %767, %772
  %774 = icmp ult i32 %767, %772
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %162, align 1, !tbaa !2432
  %776 = and i32 %773, 255
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776) #9
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %163, align 1, !tbaa !2446
  %781 = xor i32 %772, %767
  %782 = xor i32 %781, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %164, align 1, !tbaa !2447
  %786 = icmp eq i32 %773, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %165, align 1, !tbaa !2448
  %788 = lshr i32 %773, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %166, align 1, !tbaa !2449
  %790 = lshr i32 %767, 31
  %791 = lshr i32 %772, 31
  %792 = xor i32 %791, %790
  %793 = xor i32 %788, %790
  %794 = add nuw nsw i32 %793, %792
  %795 = icmp eq i32 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %167, align 1, !tbaa !2450
  %797 = icmp ne i8 %789, 0
  %798 = xor i1 %797, %795
  %.v20 = select i1 %798, i64 12, i64 358
  %799 = add i64 %762, %.v20
  store i64 %799, i64* %PC, align 8, !tbaa !2428
  br i1 %798, label %block_400c33, label %block_400d8d
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400780_rtclock(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400780:
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
  store <4 x i32> zeroinitializer, <4 x i32>* %11, align 1, !tbaa !2454
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
define %struct.Memory* @sub_4012c0_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012c0:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
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
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 64) to i64*), align 16
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
  br label %block_4012e7

block_40137e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -28
  %91 = add i64 %258, 8
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
  store i8 %99, i8* %16, align 1, !tbaa !2432
  %100 = and i32 %94, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #9
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %23, align 1, !tbaa !2446
  %105 = xor i32 %94, %93
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %29, align 1, !tbaa !2447
  %109 = zext i1 %97 to i8
  store i8 %109, i8* %32, align 1, !tbaa !2448
  %110 = lshr i32 %94, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %35, align 1, !tbaa !2449
  %112 = lshr i32 %93, 31
  %113 = xor i32 %110, %112
  %114 = add nuw nsw i32 %113, %110
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %41, align 1, !tbaa !2450
  %117 = add i64 %258, 14
  store i64 %117, i64* %PC, align 8
  store i32 %94, i32* %92, align 4
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, -165
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  br label %block_4012e7

block_401398:                                     ; preds = %block_401391, %block_401341
  %120 = phi i64 [ %.pre17, %block_401391 ], [ %341, %block_401341 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_401391 ], [ %328, %block_401341 ]
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -4
  %123 = add i64 %120, 3
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RAX, align 8, !tbaa !2428
  %127 = load i64, i64* %RSP, align 8
  %128 = add i64 %127, 80
  store i64 %128, i64* %RSP, align 8, !tbaa !2428
  %129 = icmp ugt i64 %127, -81
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %16, align 1, !tbaa !2432
  %131 = trunc i64 %128 to i32
  %132 = and i32 %131, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132) #9
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %23, align 1, !tbaa !2446
  %137 = xor i64 %127, 16
  %138 = xor i64 %137, %128
  %139 = lshr i64 %138, 4
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %29, align 1, !tbaa !2447
  %142 = icmp eq i64 %128, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %32, align 1, !tbaa !2448
  %144 = lshr i64 %128, 63
  %145 = trunc i64 %144 to i8
  store i8 %145, i8* %35, align 1, !tbaa !2449
  %146 = lshr i64 %127, 63
  %147 = xor i64 %144, %146
  %148 = add nuw nsw i64 %147, %144
  %149 = icmp eq i64 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %41, align 1, !tbaa !2450
  %151 = add i64 %120, 8
  store i64 %151, i64* %PC, align 8
  %152 = add i64 %127, 88
  %153 = inttoptr i64 %128 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %RBP, align 8, !tbaa !2428
  store i64 %152, i64* %RSP, align 8, !tbaa !2428
  %155 = add i64 %120, 9
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %152 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %PC, align 8, !tbaa !2428
  %158 = add i64 %127, 96
  store i64 %158, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4012f3:                                     ; preds = %block_4012e7
  %159 = add i64 %260, -16
  %160 = add i64 %296, 4
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = add i64 %296, 8
  store i64 %163, i64* %PC, align 8
  %164 = load i32, i32* %263, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = shl nsw i64 %165, 3
  %167 = add i64 %166, %162
  %168 = add i64 %296, 13
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %171 = add i64 %260, -48
  %172 = add i64 %296, 18
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i64*
  store i64 %170, i64* %173, align 8
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -24
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = add i64 %174, -28
  %181 = add i64 %176, 8
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RCX, align 8, !tbaa !2428
  %185 = shl nsw i64 %184, 3
  %186 = add i64 %185, %179
  %187 = add i64 %176, 13
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %190 = add i64 %174, -56
  %191 = add i64 %176, 18
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i64*
  store i64 %189, i64* %192, align 8
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -48
  %195 = load i64, i64* %PC, align 8
  %196 = add i64 %195, 5
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %194 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %199 = add i64 %193, -56
  %200 = add i64 %195, 10
  store i64 %200, i64* %PC, align 8
  %201 = bitcast i64 %198 to double
  %202 = inttoptr i64 %199 to double*
  %203 = load double, double* %202, align 8
  %204 = fsub double %201, %203
  %205 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 80) to i32*), align 16
  %206 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 84) to i32*), align 4
  %207 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 88) to i32*), align 8
  %208 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 92) to i32*), align 4
  store i32 %205, i32* %75, align 1, !tbaa !2455
  store i32 %206, i32* %77, align 1, !tbaa !2455
  store i32 %207, i32* %79, align 1, !tbaa !2455
  store i32 %208, i32* %81, align 1, !tbaa !2455
  %209 = bitcast double %204 to i64
  %210 = load i64, i64* %82, align 1
  %211 = and i64 %210, %209
  %212 = trunc i64 %211 to i32
  %213 = lshr i64 %211, 32
  %214 = trunc i64 %213 to i32
  store i32 %212, i32* %83, align 1, !tbaa !2454
  store i32 %214, i32* %85, align 1, !tbaa !2454
  store i32 0, i32* %86, align 1, !tbaa !2454
  store i32 0, i32* %88, align 1, !tbaa !2454
  %215 = add i64 %193, -64
  %216 = add i64 %195, 26
  store i64 %216, i64* %PC, align 8
  %217 = load i64, i64* %44, align 1
  %218 = inttoptr i64 %215 to i64*
  store i64 %217, i64* %218, align 8
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -64
  %221 = load i64, i64* %PC, align 8
  %222 = add i64 %221, 5
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %225 = add i64 %219, -40
  %226 = add i64 %221, 10
  store i64 %226, i64* %PC, align 8
  %227 = bitcast i64 %224 to double
  %228 = inttoptr i64 %225 to double*
  %229 = load double, double* %228, align 8
  %230 = fcmp uno double %227, %229
  br i1 %230, label %231, label %241

; <label>:231:                                    ; preds = %block_4012f3
  %232 = fadd double %227, %229
  %233 = bitcast double %232 to i64
  %234 = and i64 %233, 9221120237041090560
  %235 = icmp eq i64 %234, 9218868437227405312
  %236 = and i64 %233, 2251799813685247
  %237 = icmp ne i64 %236, 0
  %238 = and i1 %235, %237
  br i1 %238, label %239, label %247

; <label>:239:                                    ; preds = %231
  %240 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %226, %struct.Memory* %MEMORY.1) #12
  %.pre16 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:241:                                    ; preds = %block_4012f3
  %242 = fcmp ogt double %227, %229
  br i1 %242, label %247, label %243

; <label>:243:                                    ; preds = %241
  %244 = fcmp olt double %227, %229
  br i1 %244, label %247, label %245

; <label>:245:                                    ; preds = %243
  %246 = fcmp oeq double %227, %229
  br i1 %246, label %247, label %251

; <label>:247:                                    ; preds = %245, %243, %241, %231
  %248 = phi i8 [ 0, %241 ], [ 0, %243 ], [ 1, %245 ], [ 1, %231 ]
  %249 = phi i8 [ 0, %241 ], [ 0, %243 ], [ 0, %245 ], [ 1, %231 ]
  %250 = phi i8 [ 0, %241 ], [ 1, %243 ], [ 0, %245 ], [ 1, %231 ]
  store i8 %248, i8* %32, align 1, !tbaa !2451
  store i8 %249, i8* %23, align 1, !tbaa !2451
  store i8 %250, i8* %16, align 1, !tbaa !2451
  br label %251

; <label>:251:                                    ; preds = %247, %245
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  store i8 0, i8* %29, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %251, %239
  %252 = phi i64 [ %.pre16, %239 ], [ %226, %251 ]
  %253 = phi %struct.Memory* [ %240, %239 ], [ %MEMORY.1, %251 ]
  %254 = load i8, i8* %16, align 1, !tbaa !2432
  %255 = load i8, i8* %32, align 1, !tbaa !2448
  %256 = or i8 %255, %254
  %257 = icmp ne i8 %256, 0
  %.v24 = select i1 %257, i64 67, i64 6
  %258 = add i64 %252, %.v24
  store i64 %258, i64* %PC, align 8, !tbaa !2428
  br i1 %257, label %block_40137e, label %block_401341

block_4012e7:                                     ; preds = %block_40137e, %block_4012c0
  %259 = phi i64 [ %.pre, %block_4012c0 ], [ %119, %block_40137e ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4012c0 ], [ %253, %block_40137e ]
  %260 = load i64, i64* %RBP, align 8
  %261 = add i64 %260, -28
  %262 = add i64 %259, 3
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX, align 8, !tbaa !2428
  %266 = add i64 %260, -8
  %267 = add i64 %259, 6
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sub i32 %264, %269
  %271 = icmp ult i32 %264, %269
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %16, align 1, !tbaa !2432
  %273 = and i32 %270, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273) #9
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %23, align 1, !tbaa !2446
  %278 = xor i32 %269, %264
  %279 = xor i32 %278, %270
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %29, align 1, !tbaa !2447
  %283 = icmp eq i32 %270, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %32, align 1, !tbaa !2448
  %285 = lshr i32 %270, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %35, align 1, !tbaa !2449
  %287 = lshr i32 %264, 31
  %288 = lshr i32 %269, 31
  %289 = xor i32 %288, %287
  %290 = xor i32 %285, %287
  %291 = add nuw nsw i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %41, align 1, !tbaa !2450
  %294 = icmp ne i8 %286, 0
  %295 = xor i1 %294, %292
  %.v = select i1 %295, i64 12, i64 170
  %296 = add i64 %259, %.v
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  br i1 %295, label %block_4012f3, label %block_401391

block_401341:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 162), i64* %RSI, align 8, !tbaa !2428
  %297 = load i64, i64* @stderr, align 32
  store i64 %297, i64* %RDI, align 8, !tbaa !2428
  %298 = load i64, i64* %RBP, align 8
  %299 = add i64 %298, -28
  %300 = add i64 %258, 21
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RDX, align 8, !tbaa !2428
  %304 = add i64 %298, -48
  %305 = add i64 %258, 26
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %308 = add i64 %258, 29
  store i64 %308, i64* %PC, align 8
  %309 = load i32, i32* %301, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RCX, align 8, !tbaa !2428
  %311 = add i64 %298, -56
  %312 = add i64 %258, 34
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %82, align 1, !tbaa !2452
  %315 = bitcast i64* %78 to double*
  store double 0.000000e+00, double* %315, align 1, !tbaa !2452
  %316 = add i64 %298, -40
  %317 = add i64 %258, 39
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %319, i64* %320, align 1, !tbaa !2452
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %322 = bitcast i64* %321 to double*
  store double 0.000000e+00, double* %322, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %323 = add i64 %258, -3473
  %324 = add i64 %258, 46
  %325 = load i64, i64* %RSP, align 8, !tbaa !2428
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %RSP, align 8, !tbaa !2428
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  %328 = tail call fastcc %struct.Memory* @ext_4005b0_fprintf(%struct.State* nonnull %0, %struct.Memory* %253)
  %329 = load i64, i64* %RBP, align 8
  %330 = add i64 %329, -4
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, 7
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %330 to i32*
  store i32 0, i32* %333, align 4
  %334 = load i64, i64* %RBP, align 8
  %335 = add i64 %334, -68
  %336 = load i32, i32* %EAX, align 4
  %337 = load i64, i64* %PC, align 8
  %338 = add i64 %337, 3
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %335 to i32*
  store i32 %336, i32* %339, align 4
  %340 = load i64, i64* %PC, align 8
  %341 = add i64 %340, 31
  store i64 %341, i64* %PC, align 8, !tbaa !2428
  br label %block_401398

block_401391:                                     ; preds = %block_4012e7
  %342 = add i64 %260, -4
  %343 = add i64 %296, 7
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i32*
  store i32 1, i32* %344, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_401398
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4008b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4008b0:
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
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = load i64, i64* %R15, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %PC, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %R14, align 8
  %16 = load i64, i64* %PC, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %RBX, align 8
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %7, -216
  store i64 %26, i64* %RSP, align 8, !tbaa !2428
  %27 = icmp ult i64 %23, 184
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1, !tbaa !2432
  %30 = trunc i64 %26 to i32
  %31 = and i32 %30, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #9
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %36, align 1, !tbaa !2446
  %37 = xor i64 %23, 16
  %38 = xor i64 %37, %26
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %41, i8* %42, align 1, !tbaa !2447
  %43 = icmp eq i64 %26, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %44, i8* %45, align 1, !tbaa !2448
  %46 = lshr i64 %26, 63
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %47, i8* %48, align 1, !tbaa !2449
  %49 = lshr i64 %23, 63
  %50 = xor i64 %46, %49
  %51 = add nuw nsw i64 %50, %49
  %52 = icmp eq i64 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1, !tbaa !2450
  store i64 16000000, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -28
  %57 = add i64 %25, 26
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to i32*
  store i32 0, i32* %58, align 4
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -32
  %61 = load i32, i32* %EDI, align 4
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -40
  %67 = load i64, i64* %RSI, align 8
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -44
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 4000, i32* %75, align 4
  %76 = load i64, i64* %RCX, align 8
  %77 = load i64, i64* %PC, align 8
  store i64 %76, i64* %RDI, align 8, !tbaa !2428
  %78 = load i32, i32* %EAX, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RSI, align 8, !tbaa !2428
  %80 = add i64 %77, -241
  %81 = add i64 %77, 10
  %82 = load i64, i64* %RSP, align 8, !tbaa !2428
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  %85 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %80, %struct.Memory* %2)
  %86 = load i64, i64* %PC, align 8
  store i64 16000000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -72
  %89 = load i64, i64* %RAX, align 8
  %90 = add i64 %86, 16
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, -267
  %94 = add i64 %92, 5
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %93, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -80
  %102 = load i64, i64* %RAX, align 8
  %103 = add i64 %99, 16
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, -288
  %107 = add i64 %105, 5
  %108 = load i64, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %108, -8
  %110 = inttoptr i64 %109 to i64*
  store i64 %107, i64* %110, align 8
  store i64 %109, i64* %RSP, align 8, !tbaa !2428
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  %111 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %106, %struct.Memory* %98)
  %112 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -88
  %115 = load i64, i64* %RAX, align 8
  %116 = add i64 %112, 16
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, -309
  %120 = add i64 %118, 5
  %121 = load i64, i64* %RSP, align 8, !tbaa !2428
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %RSP, align 8, !tbaa !2428
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  %124 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %119, %struct.Memory* %111)
  %125 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -96
  %128 = load i64, i64* %RAX, align 8
  %129 = add i64 %125, 16
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i64*
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %131, -330
  %133 = add i64 %131, 5
  %134 = load i64, i64* %RSP, align 8, !tbaa !2428
  %135 = add i64 %134, -8
  %136 = inttoptr i64 %135 to i64*
  store i64 %133, i64* %136, align 8
  store i64 %135, i64* %RSP, align 8, !tbaa !2428
  store i64 %132, i64* %PC, align 8, !tbaa !2428
  %137 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %132, %struct.Memory* %124)
  %138 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -104
  %141 = load i64, i64* %RAX, align 8
  %142 = add i64 %138, 16
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i64*
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %PC, align 8
  %145 = add i64 %144, -351
  %146 = add i64 %144, 5
  %147 = load i64, i64* %RSP, align 8, !tbaa !2428
  %148 = add i64 %147, -8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  store i64 %148, i64* %RSP, align 8, !tbaa !2428
  store i64 %145, i64* %PC, align 8, !tbaa !2428
  %150 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %145, %struct.Memory* %137)
  %151 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -112
  %154 = load i64, i64* %RAX, align 8
  %155 = add i64 %151, 16
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %153 to i64*
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, -372
  %159 = add i64 %157, 5
  %160 = load i64, i64* %RSP, align 8, !tbaa !2428
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %RSP, align 8, !tbaa !2428
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  %163 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %158, %struct.Memory* %150)
  %164 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %165 = load i64, i64* %RBP, align 8
  %166 = add i64 %165, -120
  %167 = load i64, i64* %RAX, align 8
  %168 = add i64 %164, 16
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, -393
  %172 = add i64 %170, 5
  %173 = load i64, i64* %RSP, align 8, !tbaa !2428
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %RSP, align 8, !tbaa !2428
  store i64 %171, i64* %PC, align 8, !tbaa !2428
  %176 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %171, %struct.Memory* %163)
  %177 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %178 = load i64, i64* %RBP, align 8
  %179 = add i64 %178, -128
  %180 = load i64, i64* %RAX, align 8
  %181 = add i64 %177, 16
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %179 to i64*
  store i64 %180, i64* %182, align 8
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, -414
  %185 = add i64 %183, 5
  %186 = load i64, i64* %RSP, align 8, !tbaa !2428
  %187 = add i64 %186, -8
  %188 = inttoptr i64 %187 to i64*
  store i64 %185, i64* %188, align 8
  store i64 %187, i64* %RSP, align 8, !tbaa !2428
  store i64 %184, i64* %PC, align 8, !tbaa !2428
  %189 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %184, %struct.Memory* %176)
  %190 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %191 = load i64, i64* %RBP, align 8
  %192 = add i64 %191, -136
  %193 = load i64, i64* %RAX, align 8
  %194 = add i64 %190, 19
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %192 to i64*
  store i64 %193, i64* %195, align 8
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, -438
  %198 = add i64 %196, 5
  %199 = load i64, i64* %RSP, align 8, !tbaa !2428
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %RSP, align 8, !tbaa !2428
  store i64 %197, i64* %PC, align 8, !tbaa !2428
  %202 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %197, %struct.Memory* %189)
  %203 = load i64, i64* %PC, align 8
  store i64 4000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -144
  %206 = load i64, i64* %RAX, align 8
  %207 = add i64 %203, 19
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %205 to i64*
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, -462
  %211 = add i64 %209, 5
  %212 = load i64, i64* %RSP, align 8, !tbaa !2428
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %RSP, align 8, !tbaa !2428
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  %215 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* nonnull %0, i64 %210, %struct.Memory* %202)
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -56
  %218 = load i64, i64* %PC, align 8
  store i64 %217, i64* %RSI, align 8, !tbaa !2428
  %219 = add i64 %216, -64
  store i64 %219, i64* %RDX, align 8, !tbaa !2428
  %220 = add i64 %216, -152
  %221 = load i64, i64* %RAX, align 8
  %222 = add i64 %218, 15
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %220 to i64*
  store i64 %221, i64* %223, align 8
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -44
  %226 = load i64, i64* %PC, align 8
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RDI, align 8, !tbaa !2428
  %231 = add i64 %224, -72
  %232 = add i64 %226, 7
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = add i64 %224, -88
  %236 = add i64 %226, 11
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %R8, align 8, !tbaa !2428
  %239 = add i64 %224, -96
  %240 = add i64 %226, 15
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %R9, align 8, !tbaa !2428
  %243 = add i64 %224, -104
  %244 = add i64 %226, 19
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RAX, align 8, !tbaa !2428
  %247 = add i64 %224, -112
  %248 = add i64 %226, 23
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %R10, align 8, !tbaa !2428
  %251 = add i64 %224, -120
  %252 = add i64 %226, 27
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %R11, align 8, !tbaa !2428
  %255 = add i64 %224, -128
  %256 = add i64 %226, 31
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RBX, align 8, !tbaa !2428
  %259 = add i64 %224, -144
  %260 = add i64 %226, 38
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %R14, align 8, !tbaa !2428
  %263 = add i64 %224, -152
  %264 = add i64 %226, 45
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %R15, align 8, !tbaa !2428
  %267 = bitcast i64* %RSP to i64**
  %268 = load i64*, i64** %267, align 8
  %269 = add i64 %226, 49
  store i64 %269, i64* %PC, align 8
  store i64 %246, i64* %268, align 8
  %270 = load i64, i64* %RSP, align 8
  %271 = add i64 %270, 8
  %272 = load i64, i64* %R10, align 8
  %273 = load i64, i64* %PC, align 8
  %274 = add i64 %273, 5
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %271 to i64*
  store i64 %272, i64* %275, align 8
  %276 = load i64, i64* %RSP, align 8
  %277 = add i64 %276, 16
  %278 = load i64, i64* %R11, align 8
  %279 = load i64, i64* %PC, align 8
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %277 to i64*
  store i64 %278, i64* %281, align 8
  %282 = load i64, i64* %RSP, align 8
  %283 = add i64 %282, 24
  %284 = load i64, i64* %RBX, align 8
  %285 = load i64, i64* %PC, align 8
  %286 = add i64 %285, 5
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %283 to i64*
  store i64 %284, i64* %287, align 8
  %288 = load i64, i64* %RSP, align 8
  %289 = add i64 %288, 32
  %290 = load i64, i64* %R14, align 8
  %291 = load i64, i64* %PC, align 8
  %292 = add i64 %291, 5
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %289 to i64*
  store i64 %290, i64* %293, align 8
  %294 = load i64, i64* %RSP, align 8
  %295 = add i64 %294, 40
  %296 = load i64, i64* %R15, align 8
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %297, 5
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %295 to i64*
  store i64 %296, i64* %299, align 8
  %300 = load i64, i64* %PC, align 8
  %301 = add i64 %300, 404
  %302 = add i64 %300, 5
  %303 = load i64, i64* %RSP, align 8, !tbaa !2428
  %304 = add i64 %303, -8
  %305 = inttoptr i64 %304 to i64*
  store i64 %302, i64* %305, align 8
  store i64 %304, i64* %RSP, align 8, !tbaa !2428
  store i64 %301, i64* %PC, align 8, !tbaa !2428
  %306 = tail call %struct.Memory* @sub_400bb0_init_array(%struct.State* nonnull %0, i64 %301, %struct.Memory* %215)
  %307 = load i64, i64* %RBP, align 8
  %308 = add i64 %307, -44
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %308 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RDI, align 8, !tbaa !2428
  %314 = add i64 %307, -56
  %315 = add i64 %309, 8
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %317, i64* %318, align 1, !tbaa !2452
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %320 = bitcast i64* %319 to double*
  store double 0.000000e+00, double* %320, align 1, !tbaa !2452
  %321 = add i64 %307, -64
  %322 = add i64 %309, 13
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %324, i64* %325, align 1, !tbaa !2452
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %327 = bitcast i64* %326 to double*
  store double 0.000000e+00, double* %327, align 1, !tbaa !2452
  %328 = add i64 %307, -72
  %329 = add i64 %309, 17
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RSI, align 8, !tbaa !2428
  %332 = add i64 %307, -80
  %333 = add i64 %309, 21
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %RDX, align 8, !tbaa !2428
  %336 = add i64 %307, -88
  %337 = add i64 %309, 25
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RCX, align 8, !tbaa !2428
  %340 = add i64 %307, -96
  %341 = add i64 %309, 29
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %R8, align 8, !tbaa !2428
  %344 = add i64 %307, -104
  %345 = add i64 %309, 33
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %R9, align 8, !tbaa !2428
  %348 = add i64 %307, -112
  %349 = add i64 %309, 37
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RAX, align 8, !tbaa !2428
  %352 = add i64 %307, -120
  %353 = add i64 %309, 41
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %R10, align 8, !tbaa !2428
  %356 = add i64 %307, -136
  %357 = add i64 %309, 48
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %R11, align 8, !tbaa !2428
  %360 = add i64 %307, -144
  %361 = add i64 %309, 55
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RBX, align 8, !tbaa !2428
  %364 = add i64 %307, -152
  %365 = add i64 %309, 62
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %R14, align 8, !tbaa !2428
  %368 = load i64*, i64** %267, align 8
  %369 = add i64 %309, 66
  store i64 %369, i64* %PC, align 8
  store i64 %351, i64* %368, align 8
  %370 = load i64, i64* %RSP, align 8
  %371 = add i64 %370, 8
  %372 = load i64, i64* %R10, align 8
  %373 = load i64, i64* %PC, align 8
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %371 to i64*
  store i64 %372, i64* %375, align 8
  %376 = load i64, i64* %RSP, align 8
  %377 = add i64 %376, 16
  %378 = load i64, i64* %R11, align 8
  %379 = load i64, i64* %PC, align 8
  %380 = add i64 %379, 5
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %377 to i64*
  store i64 %378, i64* %381, align 8
  %382 = load i64, i64* %RSP, align 8
  %383 = add i64 %382, 24
  %384 = load i64, i64* %RBX, align 8
  %385 = load i64, i64* %PC, align 8
  %386 = add i64 %385, 5
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %383 to i64*
  store i64 %384, i64* %387, align 8
  %388 = load i64, i64* %RSP, align 8
  %389 = add i64 %388, 32
  %390 = load i64, i64* %R14, align 8
  %391 = load i64, i64* %PC, align 8
  %392 = add i64 %391, 5
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %389 to i64*
  store i64 %390, i64* %393, align 8
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, 809
  %396 = add i64 %394, 5
  %397 = load i64, i64* %RSP, align 8, !tbaa !2428
  %398 = add i64 %397, -8
  %399 = inttoptr i64 %398 to i64*
  store i64 %396, i64* %399, align 8
  store i64 %398, i64* %RSP, align 8, !tbaa !2428
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  %400 = tail call %struct.Memory* @sub_400da0_kernel_gemver(%struct.State* nonnull %0, i64 %395, %struct.Memory* %306)
  %401 = load i64, i64* %RBP, align 8
  %402 = add i64 %401, -44
  %403 = load i64, i64* %PC, align 8
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RDI, align 8, !tbaa !2428
  %408 = add i64 %401, -56
  %409 = add i64 %403, 8
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %318, align 1, !tbaa !2452
  store double 0.000000e+00, double* %320, align 1, !tbaa !2452
  %412 = add i64 %401, -64
  %413 = add i64 %403, 13
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %325, align 1, !tbaa !2452
  store double 0.000000e+00, double* %327, align 1, !tbaa !2452
  %416 = add i64 %401, -72
  %417 = add i64 %403, 17
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RSI, align 8, !tbaa !2428
  %420 = add i64 %401, -80
  %421 = add i64 %403, 21
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RDX, align 8, !tbaa !2428
  %424 = add i64 %401, -88
  %425 = add i64 %403, 25
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RCX, align 8, !tbaa !2428
  %428 = add i64 %401, -96
  %429 = add i64 %403, 29
  store i64 %429, i64* %PC, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %R8, align 8, !tbaa !2428
  %432 = add i64 %401, -104
  %433 = add i64 %403, 33
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %R9, align 8, !tbaa !2428
  %436 = add i64 %401, -112
  %437 = add i64 %403, 37
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RAX, align 8, !tbaa !2428
  %440 = add i64 %401, -128
  %441 = add i64 %403, 41
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %R10, align 8, !tbaa !2428
  %444 = add i64 %401, -136
  %445 = add i64 %403, 48
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %R11, align 8, !tbaa !2428
  %448 = add i64 %401, -144
  %449 = add i64 %403, 55
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RBX, align 8, !tbaa !2428
  %452 = add i64 %401, -152
  %453 = add i64 %403, 62
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %R14, align 8, !tbaa !2428
  %456 = load i64*, i64** %267, align 8
  %457 = add i64 %403, 66
  store i64 %457, i64* %PC, align 8
  store i64 %439, i64* %456, align 8
  %458 = load i64, i64* %RSP, align 8
  %459 = add i64 %458, 8
  %460 = load i64, i64* %R10, align 8
  %461 = load i64, i64* %PC, align 8
  %462 = add i64 %461, 5
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %459 to i64*
  store i64 %460, i64* %463, align 8
  %464 = load i64, i64* %RSP, align 8
  %465 = add i64 %464, 16
  %466 = load i64, i64* %R11, align 8
  %467 = load i64, i64* %PC, align 8
  %468 = add i64 %467, 5
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %465 to i64*
  store i64 %466, i64* %469, align 8
  %470 = load i64, i64* %RSP, align 8
  %471 = add i64 %470, 24
  %472 = load i64, i64* %RBX, align 8
  %473 = load i64, i64* %PC, align 8
  %474 = add i64 %473, 5
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %471 to i64*
  store i64 %472, i64* %475, align 8
  %476 = load i64, i64* %RSP, align 8
  %477 = add i64 %476, 32
  %478 = load i64, i64* %R14, align 8
  %479 = load i64, i64* %PC, align 8
  %480 = add i64 %479, 5
  store i64 %480, i64* %PC, align 8
  %481 = inttoptr i64 %477 to i64*
  store i64 %478, i64* %481, align 8
  %482 = load i64, i64* %PC, align 8
  %483 = add i64 %482, 1374
  %484 = add i64 %482, 5
  %485 = load i64, i64* %RSP, align 8, !tbaa !2428
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %RSP, align 8, !tbaa !2428
  store i64 %483, i64* %PC, align 8, !tbaa !2428
  %488 = tail call %struct.Memory* @sub_401030_kernel_gemver_StrictFP(%struct.State* nonnull %0, i64 %483, %struct.Memory* %400)
  %489 = load i64, i64* %RBP, align 8
  %490 = add i64 %489, -44
  %491 = load i64, i64* %PC, align 8
  %492 = add i64 %491, 3
  store i64 %492, i64* %PC, align 8
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RDI, align 8, !tbaa !2428
  %496 = add i64 %489, -120
  %497 = add i64 %491, 7
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %496 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %RSI, align 8, !tbaa !2428
  %500 = add i64 %489, -128
  %501 = add i64 %491, 11
  store i64 %501, i64* %PC, align 8
  %502 = inttoptr i64 %500 to i64*
  %503 = load i64, i64* %502, align 8
  store i64 %503, i64* %RDX, align 8, !tbaa !2428
  %504 = add i64 %491, 2025
  %505 = add i64 %491, 16
  %506 = load i64, i64* %RSP, align 8, !tbaa !2428
  %507 = add i64 %506, -8
  %508 = inttoptr i64 %507 to i64*
  store i64 %505, i64* %508, align 8
  store i64 %507, i64* %RSP, align 8, !tbaa !2428
  store i64 %504, i64* %PC, align 8, !tbaa !2428
  %509 = tail call %struct.Memory* @sub_4012c0_check_FP(%struct.State* nonnull %0, i64 %504, %struct.Memory* %488)
  %510 = load i32, i32* %EAX, align 4
  %511 = load i64, i64* %PC, align 8
  store i8 0, i8* %29, align 1, !tbaa !2432
  %512 = and i32 %510, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512) #9
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %42, align 1, !tbaa !2447
  %517 = icmp eq i32 %510, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %45, align 1, !tbaa !2448
  %519 = lshr i32 %510, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %54, align 1, !tbaa !2450
  %.v = select i1 %517, i64 9, i64 21
  %521 = add i64 %511, %.v
  store i64 %521, i64* %PC, align 8, !tbaa !2428
  %522 = load i64, i64* %RBP, align 8
  br i1 %517, label %block_400af0, label %block_400afc

block_400afc:                                     ; preds = %block_4008b0
  %523 = add i64 %522, -44
  %524 = add i64 %521, 3
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RDI, align 8, !tbaa !2428
  %528 = add i64 %522, -128
  %529 = add i64 %521, 7
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RSI, align 8, !tbaa !2428
  %532 = add i64 %521, 2228
  %533 = add i64 %521, 12
  %534 = load i64, i64* %RSP, align 8, !tbaa !2428
  %535 = add i64 %534, -8
  %536 = inttoptr i64 %535 to i64*
  store i64 %533, i64* %536, align 8
  store i64 %535, i64* %RSP, align 8, !tbaa !2428
  store i64 %532, i64* %PC, align 8, !tbaa !2428
  %537 = tail call %struct.Memory* @sub_4013b0_print_array(%struct.State* nonnull %0, i64 %532, %struct.Memory* %509)
  %538 = load i64, i64* %RBP, align 8
  %539 = add i64 %538, -72
  %540 = load i64, i64* %PC, align 8
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC, align 8
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RSI, align 8, !tbaa !2428
  store i64 %543, i64* %RDI, align 8, !tbaa !2428
  %544 = add i64 %540, -1416
  %545 = add i64 %540, 12
  %546 = load i64, i64* %RSP, align 8, !tbaa !2428
  %547 = add i64 %546, -8
  %548 = inttoptr i64 %547 to i64*
  store i64 %545, i64* %548, align 8
  store i64 %547, i64* %RSP, align 8, !tbaa !2428
  store i64 %544, i64* %PC, align 8, !tbaa !2428
  %549 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %537)
  %550 = load i64, i64* %RBP, align 8
  %551 = add i64 %550, -80
  %552 = load i64, i64* %PC, align 8
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RSI, align 8, !tbaa !2428
  store i64 %555, i64* %RDI, align 8, !tbaa !2428
  %556 = add i64 %552, -1428
  %557 = add i64 %552, 12
  %558 = load i64, i64* %RSP, align 8, !tbaa !2428
  %559 = add i64 %558, -8
  %560 = inttoptr i64 %559 to i64*
  store i64 %557, i64* %560, align 8
  store i64 %559, i64* %RSP, align 8, !tbaa !2428
  store i64 %556, i64* %PC, align 8, !tbaa !2428
  %561 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %549)
  %562 = load i64, i64* %RBP, align 8
  %563 = add i64 %562, -88
  %564 = load i64, i64* %PC, align 8
  %565 = add i64 %564, 4
  store i64 %565, i64* %PC, align 8
  %566 = inttoptr i64 %563 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RSI, align 8, !tbaa !2428
  store i64 %567, i64* %RDI, align 8, !tbaa !2428
  %568 = add i64 %564, -1440
  %569 = add i64 %564, 12
  %570 = load i64, i64* %RSP, align 8, !tbaa !2428
  %571 = add i64 %570, -8
  %572 = inttoptr i64 %571 to i64*
  store i64 %569, i64* %572, align 8
  store i64 %571, i64* %RSP, align 8, !tbaa !2428
  store i64 %568, i64* %PC, align 8, !tbaa !2428
  %573 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %561)
  %574 = load i64, i64* %RBP, align 8
  %575 = add i64 %574, -96
  %576 = load i64, i64* %PC, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %PC, align 8
  %578 = inttoptr i64 %575 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RSI, align 8, !tbaa !2428
  store i64 %579, i64* %RDI, align 8, !tbaa !2428
  %580 = add i64 %576, -1452
  %581 = add i64 %576, 12
  %582 = load i64, i64* %RSP, align 8, !tbaa !2428
  %583 = add i64 %582, -8
  %584 = inttoptr i64 %583 to i64*
  store i64 %581, i64* %584, align 8
  store i64 %583, i64* %RSP, align 8, !tbaa !2428
  store i64 %580, i64* %PC, align 8, !tbaa !2428
  %585 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %573)
  %586 = load i64, i64* %RBP, align 8
  %587 = add i64 %586, -104
  %588 = load i64, i64* %PC, align 8
  %589 = add i64 %588, 4
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %587 to i64*
  %591 = load i64, i64* %590, align 8
  store i64 %591, i64* %RSI, align 8, !tbaa !2428
  store i64 %591, i64* %RDI, align 8, !tbaa !2428
  %592 = add i64 %588, -1464
  %593 = add i64 %588, 12
  %594 = load i64, i64* %RSP, align 8, !tbaa !2428
  %595 = add i64 %594, -8
  %596 = inttoptr i64 %595 to i64*
  store i64 %593, i64* %596, align 8
  store i64 %595, i64* %RSP, align 8, !tbaa !2428
  store i64 %592, i64* %PC, align 8, !tbaa !2428
  %597 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %585)
  %598 = load i64, i64* %RBP, align 8
  %599 = add i64 %598, -112
  %600 = load i64, i64* %PC, align 8
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %599 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RSI, align 8, !tbaa !2428
  store i64 %603, i64* %RDI, align 8, !tbaa !2428
  %604 = add i64 %600, -1476
  %605 = add i64 %600, 12
  %606 = load i64, i64* %RSP, align 8, !tbaa !2428
  %607 = add i64 %606, -8
  %608 = inttoptr i64 %607 to i64*
  store i64 %605, i64* %608, align 8
  store i64 %607, i64* %RSP, align 8, !tbaa !2428
  store i64 %604, i64* %PC, align 8, !tbaa !2428
  %609 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %597)
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -120
  %612 = load i64, i64* %PC, align 8
  %613 = add i64 %612, 4
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %611 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RSI, align 8, !tbaa !2428
  store i64 %615, i64* %RDI, align 8, !tbaa !2428
  %616 = add i64 %612, -1488
  %617 = add i64 %612, 12
  %618 = load i64, i64* %RSP, align 8, !tbaa !2428
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %RSP, align 8, !tbaa !2428
  store i64 %616, i64* %PC, align 8, !tbaa !2428
  %621 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %609)
  %622 = load i64, i64* %RBP, align 8
  %623 = add i64 %622, -128
  %624 = load i64, i64* %PC, align 8
  %625 = add i64 %624, 4
  store i64 %625, i64* %PC, align 8
  %626 = inttoptr i64 %623 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RSI, align 8, !tbaa !2428
  store i64 %627, i64* %RDI, align 8, !tbaa !2428
  %628 = add i64 %624, -1500
  %629 = add i64 %624, 12
  %630 = load i64, i64* %RSP, align 8, !tbaa !2428
  %631 = add i64 %630, -8
  %632 = inttoptr i64 %631 to i64*
  store i64 %629, i64* %632, align 8
  store i64 %631, i64* %RSP, align 8, !tbaa !2428
  store i64 %628, i64* %PC, align 8, !tbaa !2428
  %633 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %621)
  %634 = load i64, i64* %RBP, align 8
  %635 = add i64 %634, -136
  %636 = load i64, i64* %PC, align 8
  %637 = add i64 %636, 7
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %635 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RSI, align 8, !tbaa !2428
  store i64 %639, i64* %RDI, align 8, !tbaa !2428
  %640 = add i64 %636, -1512
  %641 = add i64 %636, 15
  %642 = load i64, i64* %RSP, align 8, !tbaa !2428
  %643 = add i64 %642, -8
  %644 = inttoptr i64 %643 to i64*
  store i64 %641, i64* %644, align 8
  store i64 %643, i64* %RSP, align 8, !tbaa !2428
  store i64 %640, i64* %PC, align 8, !tbaa !2428
  %645 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %633)
  %646 = load i64, i64* %RBP, align 8
  %647 = add i64 %646, -144
  %648 = load i64, i64* %PC, align 8
  %649 = add i64 %648, 7
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RSI, align 8, !tbaa !2428
  store i64 %651, i64* %RDI, align 8, !tbaa !2428
  %652 = add i64 %648, -1527
  %653 = add i64 %648, 15
  %654 = load i64, i64* %RSP, align 8, !tbaa !2428
  %655 = add i64 %654, -8
  %656 = inttoptr i64 %655 to i64*
  store i64 %653, i64* %656, align 8
  store i64 %655, i64* %RSP, align 8, !tbaa !2428
  store i64 %652, i64* %PC, align 8, !tbaa !2428
  %657 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %645)
  %658 = load i64, i64* %RBP, align 8
  %659 = add i64 %658, -152
  %660 = load i64, i64* %PC, align 8
  %661 = add i64 %660, 7
  store i64 %661, i64* %PC, align 8
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RSI, align 8, !tbaa !2428
  store i64 %663, i64* %RDI, align 8, !tbaa !2428
  %664 = add i64 %660, -1542
  %665 = add i64 %660, 15
  %666 = load i64, i64* %RSP, align 8, !tbaa !2428
  %667 = add i64 %666, -8
  %668 = inttoptr i64 %667 to i64*
  store i64 %665, i64* %668, align 8
  store i64 %667, i64* %RSP, align 8, !tbaa !2428
  store i64 %664, i64* %PC, align 8, !tbaa !2428
  %669 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %657)
  %670 = load i64, i64* %RBP, align 8
  %671 = add i64 %670, -28
  %672 = load i64, i64* %PC, align 8
  %673 = add i64 %672, 7
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %671 to i32*
  store i32 0, i32* %674, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b9c

block_400b9c:                                     ; preds = %block_400af0, %block_400afc
  %675 = phi i64 [ %.pre, %block_400afc ], [ %730, %block_400af0 ]
  %MEMORY.0 = phi %struct.Memory* [ %669, %block_400afc ], [ %509, %block_400af0 ]
  %676 = load i64, i64* %RBP, align 8
  %677 = add i64 %676, -28
  %678 = add i64 %675, 3
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX, align 8, !tbaa !2428
  %682 = load i64, i64* %RSP, align 8
  %683 = add i64 %682, 184
  store i64 %683, i64* %RSP, align 8, !tbaa !2428
  %684 = icmp ugt i64 %682, -185
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %29, align 1, !tbaa !2432
  %686 = trunc i64 %683 to i32
  %687 = and i32 %686, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687) #9
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %36, align 1, !tbaa !2446
  %692 = xor i64 %682, 16
  %693 = xor i64 %692, %683
  %694 = lshr i64 %693, 4
  %695 = trunc i64 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %42, align 1, !tbaa !2447
  %697 = icmp eq i64 %683, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %45, align 1, !tbaa !2448
  %699 = lshr i64 %683, 63
  %700 = trunc i64 %699 to i8
  store i8 %700, i8* %48, align 1, !tbaa !2449
  %701 = lshr i64 %682, 63
  %702 = xor i64 %699, %701
  %703 = add nuw nsw i64 %702, %699
  %704 = icmp eq i64 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %54, align 1, !tbaa !2450
  %706 = add i64 %675, 11
  store i64 %706, i64* %PC, align 8
  %707 = add i64 %682, 192
  %708 = inttoptr i64 %683 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %RBX, align 8, !tbaa !2428
  store i64 %707, i64* %RSP, align 8, !tbaa !2428
  %710 = add i64 %675, 13
  store i64 %710, i64* %PC, align 8
  %711 = add i64 %682, 200
  %712 = inttoptr i64 %707 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %R14, align 8, !tbaa !2428
  store i64 %711, i64* %RSP, align 8, !tbaa !2428
  %714 = add i64 %675, 15
  store i64 %714, i64* %PC, align 8
  %715 = add i64 %682, 208
  %716 = inttoptr i64 %711 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %717, i64* %R15, align 8, !tbaa !2428
  store i64 %715, i64* %RSP, align 8, !tbaa !2428
  %718 = add i64 %675, 16
  store i64 %718, i64* %PC, align 8
  %719 = add i64 %682, 216
  %720 = inttoptr i64 %715 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RBP, align 8, !tbaa !2428
  store i64 %719, i64* %RSP, align 8, !tbaa !2428
  %722 = add i64 %675, 17
  store i64 %722, i64* %PC, align 8
  %723 = inttoptr i64 %719 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %PC, align 8, !tbaa !2428
  %725 = add i64 %682, 224
  store i64 %725, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400af0:                                     ; preds = %block_4008b0
  %726 = add i64 %522, -28
  %727 = add i64 %521, 7
  store i64 %727, i64* %PC, align 8
  %728 = inttoptr i64 %726 to i32*
  store i32 1, i32* %728, align 4
  %729 = load i64, i64* %PC, align 8
  %730 = add i64 %729, 165
  store i64 %730, i64* %PC, align 8, !tbaa !2428
  br label %block_400b9c
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400760_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %14 = tail call %struct.Memory* @sub_400750_polybench_prepare_instruments(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_400780_rtclock(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
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
define %struct.Memory* @sub_401030_kernel_gemver_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401030:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %13 = load i64, i64* %R14, align 8
  %14 = add i64 %12, 5
  store i64 %14, i64* %PC, align 8
  %15 = add i64 %9, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16, align 8
  %17 = load i64, i64* %RBX, align 8
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %9, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  store i64 %20, i64* %8, align 8, !tbaa !2428
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, 48
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %23 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %RAX, align 8, !tbaa !2428
  %28 = add i64 %22, 40
  %29 = add i64 %24, 8
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %R10, align 8, !tbaa !2428
  %32 = add i64 %22, 32
  %33 = add i64 %24, 12
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %R11, align 8, !tbaa !2428
  %36 = add i64 %22, 24
  %37 = add i64 %24, 16
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %RBX, align 8, !tbaa !2428
  %40 = add i64 %22, 16
  %41 = add i64 %24, 20
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %R14, align 8, !tbaa !2428
  %44 = add i64 %22, -20
  %45 = load i32, i32* %EDI, align 4
  %46 = add i64 %24, 23
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -32
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %PC, align 8
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %53 = load i64, i64* %52, align 1
  %54 = inttoptr i64 %49 to i64*
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -40
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 5
  store i64 %58, i64* %PC, align 8
  %59 = bitcast %union.VectorReg* %5 to double*
  %60 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %61 = load i64, i64* %60, align 1
  %62 = inttoptr i64 %56 to i64*
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -48
  %65 = load i64, i64* %RSI, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -56
  %71 = load i64, i64* %RDX, align 8
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -64
  %77 = load i64, i64* %RCX, align 8
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %80, align 8
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -72
  %83 = load i64, i64* %R8, align 8
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -80
  %89 = load i64, i64* %R9, align 8
  %90 = load i64, i64* %PC, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -88
  %95 = load i64, i64* %R14, align 8
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -96
  %101 = load i64, i64* %RBX, align 8
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %RBP, align 8
  %106 = add i64 %105, -104
  %107 = load i64, i64* %R11, align 8
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %110, align 8
  %111 = load i64, i64* %RBP, align 8
  %112 = add i64 %111, -112
  %113 = load i64, i64* %R10, align 8
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -120
  %119 = load i64, i64* %RAX, align 8
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -124
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %124 to i32*
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %134 = bitcast [32 x %union.VectorReg]* %4 to double*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %136 = bitcast i64* %135 to double*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %138 = bitcast i64* %137 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_401087

block_401126:                                     ; preds = %block_40109a
  %139 = add i64 %833, -124
  %140 = add i64 %869, 8
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = icmp eq i32 %142, -1
  %146 = icmp eq i32 %143, 0
  %147 = or i1 %145, %146
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %128, align 1, !tbaa !2432
  %149 = and i32 %143, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #9
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %129, align 1, !tbaa !2446
  %154 = xor i32 %143, %142
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %130, align 1, !tbaa !2447
  %158 = zext i1 %146 to i8
  store i8 %158, i8* %131, align 1, !tbaa !2448
  %159 = lshr i32 %143, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %132, align 1, !tbaa !2449
  %161 = lshr i32 %142, 31
  %162 = xor i32 %159, %161
  %163 = add nuw nsw i32 %162, %159
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %133, align 1, !tbaa !2450
  %166 = add i64 %869, 14
  store i64 %166, i64* %PC, align 8
  store i32 %143, i32* %141, align 4
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, -173
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  br label %block_401087

block_4011e2:                                     ; preds = %block_4011ee, %block_4011db
  %169 = phi i64 [ %416, %block_4011ee ], [ %.pre30, %block_4011db ]
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -124
  %172 = add i64 %169, 3
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8, !tbaa !2428
  %176 = add i64 %170, -20
  %177 = add i64 %169, 6
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = sub i32 %174, %179
  %181 = icmp ult i32 %174, %179
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %128, align 1, !tbaa !2432
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #9
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %129, align 1, !tbaa !2446
  %188 = xor i32 %179, %174
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %130, align 1, !tbaa !2447
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %131, align 1, !tbaa !2448
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %132, align 1, !tbaa !2449
  %197 = lshr i32 %174, 31
  %198 = lshr i32 %179, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %133, align 1, !tbaa !2450
  %204 = icmp ne i8 %196, 0
  %205 = xor i1 %204, %202
  %.v39 = select i1 %205, i64 12, i64 65
  %206 = add i64 %169, %.v39
  store i64 %206, i64* %PC, align 8, !tbaa !2428
  br i1 %205, label %block_4011ee, label %block_401223

block_4011db:                                     ; preds = %block_401140
  %207 = add i64 %454, 7
  store i64 %207, i64* %PC, align 8
  store i32 0, i32* %421, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_4011e2

block_40114c:                                     ; preds = %block_401140
  store <4 x i32> zeroinitializer, <4 x i32>* %494, align 1, !tbaa !2454
  %208 = add i64 %418, -104
  %209 = add i64 %454, 7
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = add i64 %454, 11
  store i64 %212, i64* %PC, align 8
  %213 = load i32, i32* %421, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RCX, align 8, !tbaa !2428
  %215 = shl nsw i64 %214, 3
  %216 = add i64 %215, %211
  %217 = add i64 %454, 16
  store i64 %217, i64* %PC, align 8
  %218 = load i64, i64* %52, align 1
  %219 = inttoptr i64 %216 to i64*
  store i64 %218, i64* %219, align 8
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -128
  %222 = load i64, i64* %PC, align 8
  %223 = add i64 %222, 7
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %221 to i32*
  store i32 0, i32* %224, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_401163

block_401249:                                     ; preds = %block_40123d
  %225 = add i64 %456, -96
  %226 = add i64 %492, 4
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX, align 8, !tbaa !2428
  %229 = add i64 %456, -124
  %230 = add i64 %492, 8
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX, align 8, !tbaa !2428
  %234 = shl nsw i64 %233, 3
  %235 = add i64 %234, %228
  %236 = add i64 %492, 13
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %239 = add i64 %456, -32
  %240 = add i64 %492, 18
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %243 = add i64 %456, -56
  %244 = add i64 %492, 22
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RAX, align 8, !tbaa !2428
  %247 = add i64 %492, 26
  store i64 %247, i64* %PC, align 8
  %248 = load i32, i32* %231, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, 32000
  store i64 %250, i64* %RCX, align 8, !tbaa !2428
  %251 = lshr i64 %250, 63
  %252 = add i64 %250, %246
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = icmp ult i64 %252, %246
  %254 = icmp ult i64 %252, %250
  %255 = or i1 %253, %254
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %128, align 1, !tbaa !2432
  %257 = trunc i64 %252 to i32
  %258 = and i32 %257, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258) #9
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %129, align 1, !tbaa !2446
  %263 = xor i64 %246, %252
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %130, align 1, !tbaa !2447
  %267 = icmp eq i64 %252, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %131, align 1, !tbaa !2448
  %269 = lshr i64 %252, 63
  %270 = trunc i64 %269 to i8
  store i8 %270, i8* %132, align 1, !tbaa !2449
  %271 = lshr i64 %246, 63
  %272 = xor i64 %269, %271
  %273 = xor i64 %269, %251
  %274 = add nuw nsw i64 %272, %273
  %275 = icmp eq i64 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %133, align 1, !tbaa !2450
  %277 = add i64 %492, 40
  store i64 %277, i64* %PC, align 8
  %278 = load i32, i32* %459, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RCX, align 8, !tbaa !2428
  %280 = shl nsw i64 %279, 3
  %281 = add i64 %280, %252
  %282 = add i64 %492, 45
  store i64 %282, i64* %PC, align 8
  %283 = bitcast i64 %242 to double
  %284 = inttoptr i64 %281 to double*
  %285 = load double, double* %284, align 8
  %286 = fmul double %283, %285
  store double %286, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %287 = load i64, i64* %RBP, align 8
  %288 = add i64 %287, -104
  %289 = add i64 %492, 49
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RAX, align 8, !tbaa !2428
  %292 = add i64 %287, -128
  %293 = add i64 %492, 53
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX, align 8, !tbaa !2428
  %297 = shl nsw i64 %296, 3
  %298 = add i64 %297, %291
  %299 = add i64 %492, 58
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to double*
  %301 = load double, double* %300, align 8
  %302 = fmul double %286, %301
  store double %302, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %303 = load double, double* %134, align 1
  %304 = fadd double %303, %302
  store double %304, double* %134, align 1, !tbaa !2452
  %305 = add i64 %287, -96
  %306 = add i64 %492, 66
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = add i64 %287, -124
  %310 = add i64 %492, 70
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %RCX, align 8, !tbaa !2428
  %314 = shl nsw i64 %313, 3
  %315 = add i64 %314, %308
  %316 = add i64 %492, 75
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to double*
  store double %304, double* %317, align 8
  %318 = load i64, i64* %RBP, align 8
  %319 = add i64 %318, -128
  %320 = load i64, i64* %PC, align 8
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = add i32 %323, 1
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp eq i32 %323, -1
  %327 = icmp eq i32 %324, 0
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %128, align 1, !tbaa !2432
  %330 = and i32 %324, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #9
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %129, align 1, !tbaa !2446
  %335 = xor i32 %324, %323
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %130, align 1, !tbaa !2447
  %339 = zext i1 %327 to i8
  store i8 %339, i8* %131, align 1, !tbaa !2448
  %340 = lshr i32 %324, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %132, align 1, !tbaa !2449
  %342 = lshr i32 %323, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %340
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %133, align 1, !tbaa !2450
  %347 = add i64 %320, 9
  store i64 %347, i64* %PC, align 8
  store i32 %324, i32* %322, align 4
  %348 = load i64, i64* %PC, align 8
  %349 = add i64 %348, -96
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  br label %block_40123d

block_4011ee:                                     ; preds = %block_4011e2
  %350 = add i64 %170, -104
  %351 = add i64 %206, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %206, 8
  store i64 %354, i64* %PC, align 8
  %355 = load i32, i32* %173, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RCX, align 8, !tbaa !2428
  %357 = shl nsw i64 %356, 3
  %358 = add i64 %357, %353
  %359 = add i64 %206, 13
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %362 = add i64 %170, -120
  %363 = add i64 %206, 17
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RAX, align 8, !tbaa !2428
  %366 = add i64 %206, 21
  store i64 %366, i64* %PC, align 8
  %367 = load i32, i32* %173, align 4
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RCX, align 8, !tbaa !2428
  %369 = shl nsw i64 %368, 3
  %370 = add i64 %369, %365
  %371 = add i64 %206, 26
  store i64 %371, i64* %PC, align 8
  %372 = bitcast i64 %361 to double
  %373 = inttoptr i64 %370 to double*
  %374 = load double, double* %373, align 8
  %375 = fadd double %372, %374
  store double %375, double* %134, align 1, !tbaa !2452
  store i64 0, i64* %135, align 1, !tbaa !2452
  %376 = add i64 %206, 30
  store i64 %376, i64* %PC, align 8
  %377 = load i64, i64* %352, align 8
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = add i64 %206, 34
  store i64 %378, i64* %PC, align 8
  %379 = load i32, i32* %173, align 4
  %380 = sext i32 %379 to i64
  store i64 %380, i64* %RCX, align 8, !tbaa !2428
  %381 = shl nsw i64 %380, 3
  %382 = add i64 %381, %377
  %383 = add i64 %206, 39
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to double*
  store double %375, double* %384, align 8
  %385 = load i64, i64* %RBP, align 8
  %386 = add i64 %385, -124
  %387 = load i64, i64* %PC, align 8
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %386 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = add i32 %390, 1
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RAX, align 8, !tbaa !2428
  %393 = icmp eq i32 %390, -1
  %394 = icmp eq i32 %391, 0
  %395 = or i1 %393, %394
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %128, align 1, !tbaa !2432
  %397 = and i32 %391, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397) #9
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %129, align 1, !tbaa !2446
  %402 = xor i32 %391, %390
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %130, align 1, !tbaa !2447
  %406 = zext i1 %394 to i8
  store i8 %406, i8* %131, align 1, !tbaa !2448
  %407 = lshr i32 %391, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %132, align 1, !tbaa !2449
  %409 = lshr i32 %390, 31
  %410 = xor i32 %407, %409
  %411 = add nuw nsw i32 %410, %407
  %412 = icmp eq i32 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %133, align 1, !tbaa !2450
  %414 = add i64 %387, 9
  store i64 %414, i64* %PC, align 8
  store i32 %391, i32* %389, align 4
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, -60
  store i64 %416, i64* %PC, align 8, !tbaa !2428
  br label %block_4011e2

block_401140:                                     ; preds = %block_4011c8, %block_401139
  %417 = phi i64 [ %582, %block_4011c8 ], [ %.pre29, %block_401139 ]
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -124
  %420 = add i64 %417, 3
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX, align 8, !tbaa !2428
  %424 = add i64 %418, -20
  %425 = add i64 %417, 6
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sub i32 %422, %427
  %429 = icmp ult i32 %422, %427
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %128, align 1, !tbaa !2432
  %431 = and i32 %428, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431) #9
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %129, align 1, !tbaa !2446
  %436 = xor i32 %427, %422
  %437 = xor i32 %436, %428
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %130, align 1, !tbaa !2447
  %441 = icmp eq i32 %428, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %131, align 1, !tbaa !2448
  %443 = lshr i32 %428, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %132, align 1, !tbaa !2449
  %445 = lshr i32 %422, 31
  %446 = lshr i32 %427, 31
  %447 = xor i32 %446, %445
  %448 = xor i32 %443, %445
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %133, align 1, !tbaa !2450
  %452 = icmp ne i8 %444, 0
  %453 = xor i1 %452, %450
  %.v38 = select i1 %453, i64 12, i64 155
  %454 = add i64 %417, %.v38
  store i64 %454, i64* %PC, align 8, !tbaa !2428
  br i1 %453, label %block_40114c, label %block_4011db

block_40123d:                                     ; preds = %block_401236, %block_401249
  %455 = phi i64 [ %.pre32, %block_401236 ], [ %349, %block_401249 ]
  %456 = load i64, i64* %RBP, align 8
  %457 = add i64 %456, -128
  %458 = add i64 %455, 3
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX, align 8, !tbaa !2428
  %462 = add i64 %456, -20
  %463 = add i64 %455, 6
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sub i32 %460, %465
  %467 = icmp ult i32 %460, %465
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %128, align 1, !tbaa !2432
  %469 = and i32 %466, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469) #9
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %129, align 1, !tbaa !2446
  %474 = xor i32 %465, %460
  %475 = xor i32 %474, %466
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %130, align 1, !tbaa !2447
  %479 = icmp eq i32 %466, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %131, align 1, !tbaa !2448
  %481 = lshr i32 %466, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %132, align 1, !tbaa !2449
  %483 = lshr i32 %460, 31
  %484 = lshr i32 %465, 31
  %485 = xor i32 %484, %483
  %486 = xor i32 %481, %483
  %487 = add nuw nsw i32 %486, %485
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %133, align 1, !tbaa !2450
  %490 = icmp ne i8 %482, 0
  %491 = xor i1 %490, %488
  %.v = select i1 %491, i64 12, i64 101
  %492 = add i64 %455, %.v
  store i64 %492, i64* %PC, align 8, !tbaa !2428
  br i1 %491, label %block_401249, label %block_4012a2

block_401139:                                     ; preds = %block_401087
  %493 = add i64 %1035, 7
  store i64 %493, i64* %PC, align 8
  store i32 0, i32* %1002, align 4
  %.pre29 = load i64, i64* %PC, align 8
  %494 = bitcast [32 x %union.VectorReg]* %4 to <4 x i32>*
  br label %block_401140

block_401236:                                     ; preds = %block_40122a
  %495 = add i64 %516, -128
  %496 = add i64 %552, 7
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 0, i32* %497, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_40123d

block_4012b5:                                     ; preds = %block_40122a
  %498 = add i64 %552, 1
  store i64 %498, i64* %PC, align 8
  %499 = load i64, i64* %8, align 8, !tbaa !2428
  %500 = add i64 %499, 8
  %501 = inttoptr i64 %499 to i64*
  %502 = load i64, i64* %501, align 8
  store i64 %502, i64* %RBX, align 8, !tbaa !2428
  store i64 %500, i64* %8, align 8, !tbaa !2428
  %503 = add i64 %552, 3
  store i64 %503, i64* %PC, align 8
  %504 = add i64 %499, 16
  %505 = inttoptr i64 %500 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %R14, align 8, !tbaa !2428
  store i64 %504, i64* %8, align 8, !tbaa !2428
  %507 = add i64 %552, 4
  store i64 %507, i64* %PC, align 8
  %508 = add i64 %499, 24
  %509 = inttoptr i64 %504 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RBP, align 8, !tbaa !2428
  store i64 %508, i64* %8, align 8, !tbaa !2428
  %511 = add i64 %552, 5
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %508 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %PC, align 8, !tbaa !2428
  %514 = add i64 %499, 32
  store i64 %514, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_40122a:                                     ; preds = %block_4012a2, %block_401223
  %515 = phi i64 [ %831, %block_4012a2 ], [ %.pre31, %block_401223 ]
  %516 = load i64, i64* %RBP, align 8
  %517 = add i64 %516, -124
  %518 = add i64 %515, 3
  store i64 %518, i64* %PC, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RAX, align 8, !tbaa !2428
  %522 = add i64 %516, -20
  %523 = add i64 %515, 6
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = sub i32 %520, %525
  %527 = icmp ult i32 %520, %525
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %128, align 1, !tbaa !2432
  %529 = and i32 %526, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529) #9
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %129, align 1, !tbaa !2446
  %534 = xor i32 %525, %520
  %535 = xor i32 %534, %526
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %130, align 1, !tbaa !2447
  %539 = icmp eq i32 %526, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %131, align 1, !tbaa !2448
  %541 = lshr i32 %526, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %132, align 1, !tbaa !2449
  %543 = lshr i32 %520, 31
  %544 = lshr i32 %525, 31
  %545 = xor i32 %544, %543
  %546 = xor i32 %541, %543
  %547 = add nuw nsw i32 %546, %545
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %133, align 1, !tbaa !2450
  %550 = icmp ne i8 %542, 0
  %551 = xor i1 %550, %548
  %.v40 = select i1 %551, i64 12, i64 139
  %552 = add i64 %515, %.v40
  store i64 %552, i64* %PC, align 8, !tbaa !2428
  br i1 %551, label %block_401236, label %block_4012b5

block_4011c8:                                     ; preds = %block_401163
  %553 = add i64 %765, -124
  %554 = add i64 %801, 8
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, 1
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX, align 8, !tbaa !2428
  %559 = icmp eq i32 %556, -1
  %560 = icmp eq i32 %557, 0
  %561 = or i1 %559, %560
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %128, align 1, !tbaa !2432
  %563 = and i32 %557, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #9
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %129, align 1, !tbaa !2446
  %568 = xor i32 %557, %556
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %130, align 1, !tbaa !2447
  %572 = zext i1 %560 to i8
  store i8 %572, i8* %131, align 1, !tbaa !2448
  %573 = lshr i32 %557, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %132, align 1, !tbaa !2449
  %575 = lshr i32 %556, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %133, align 1, !tbaa !2450
  %580 = add i64 %801, 14
  store i64 %580, i64* %PC, align 8
  store i32 %557, i32* %555, align 4
  %581 = load i64, i64* %PC, align 8
  %582 = add i64 %581, -150
  store i64 %582, i64* %PC, align 8, !tbaa !2428
  br label %block_401140

block_4010a6:                                     ; preds = %block_40109a
  %583 = add i64 %833, -48
  %584 = add i64 %869, 4
  store i64 %584, i64* %PC, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RAX, align 8, !tbaa !2428
  %587 = add i64 %833, -124
  %588 = add i64 %869, 8
  store i64 %588, i64* %PC, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  %592 = mul nsw i64 %591, 32000
  store i64 %592, i64* %RCX, align 8, !tbaa !2428
  %593 = lshr i64 %592, 63
  %594 = add i64 %592, %586
  store i64 %594, i64* %RAX, align 8, !tbaa !2428
  %595 = icmp ult i64 %594, %586
  %596 = icmp ult i64 %594, %592
  %597 = or i1 %595, %596
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %128, align 1, !tbaa !2432
  %599 = trunc i64 %594 to i32
  %600 = and i32 %599, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600) #9
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %129, align 1, !tbaa !2446
  %605 = xor i64 %586, %594
  %606 = lshr i64 %605, 4
  %607 = trunc i64 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %130, align 1, !tbaa !2447
  %609 = icmp eq i64 %594, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %131, align 1, !tbaa !2448
  %611 = lshr i64 %594, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %132, align 1, !tbaa !2449
  %613 = lshr i64 %586, 63
  %614 = xor i64 %611, %613
  %615 = xor i64 %611, %593
  %616 = add nuw nsw i64 %614, %615
  %617 = icmp eq i64 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %133, align 1, !tbaa !2450
  %619 = add i64 %869, 22
  store i64 %619, i64* %PC, align 8
  %620 = load i32, i32* %836, align 4
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RCX, align 8, !tbaa !2428
  %622 = shl nsw i64 %621, 3
  %623 = add i64 %622, %594
  %624 = add i64 %869, 27
  store i64 %624, i64* %PC, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %627 = add i64 %833, -64
  %628 = add i64 %869, 31
  store i64 %628, i64* %PC, align 8
  %629 = inttoptr i64 %627 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX, align 8, !tbaa !2428
  %631 = add i64 %869, 35
  store i64 %631, i64* %PC, align 8
  %632 = load i32, i32* %589, align 4
  %633 = sext i32 %632 to i64
  store i64 %633, i64* %RCX, align 8, !tbaa !2428
  %634 = shl nsw i64 %633, 3
  %635 = add i64 %634, %630
  %636 = add i64 %869, 40
  store i64 %636, i64* %PC, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %639 = load i64, i64* %RBP, align 8
  %640 = add i64 %639, -72
  %641 = add i64 %869, 44
  store i64 %641, i64* %PC, align 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RAX, align 8, !tbaa !2428
  %644 = add i64 %639, -128
  %645 = add i64 %869, 48
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sext i32 %647 to i64
  store i64 %648, i64* %RCX, align 8, !tbaa !2428
  %649 = shl nsw i64 %648, 3
  %650 = add i64 %649, %643
  %651 = add i64 %869, 53
  store i64 %651, i64* %PC, align 8
  %652 = bitcast i64 %638 to double
  %653 = inttoptr i64 %650 to double*
  %654 = load double, double* %653, align 8
  %655 = fmul double %652, %654
  store double %655, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %656 = bitcast i64 %626 to double
  %657 = fadd double %656, %655
  store double %657, double* %134, align 1, !tbaa !2452
  store i64 0, i64* %135, align 1, !tbaa !2452
  %658 = add i64 %639, -80
  %659 = add i64 %869, 61
  store i64 %659, i64* %PC, align 8
  %660 = inttoptr i64 %658 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RAX, align 8, !tbaa !2428
  %662 = add i64 %639, -124
  %663 = add i64 %869, 65
  store i64 %663, i64* %PC, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RCX, align 8, !tbaa !2428
  %667 = shl nsw i64 %666, 3
  %668 = add i64 %667, %661
  %669 = add i64 %869, 70
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %672 = add i64 %639, -88
  %673 = add i64 %869, 74
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RAX, align 8, !tbaa !2428
  %676 = add i64 %869, 78
  store i64 %676, i64* %PC, align 8
  %677 = load i32, i32* %646, align 4
  %678 = sext i32 %677 to i64
  store i64 %678, i64* %RCX, align 8, !tbaa !2428
  %679 = shl nsw i64 %678, 3
  %680 = add i64 %679, %675
  %681 = add i64 %869, 83
  store i64 %681, i64* %PC, align 8
  %682 = bitcast i64 %671 to double
  %683 = inttoptr i64 %680 to double*
  %684 = load double, double* %683, align 8
  %685 = fmul double %682, %684
  store double %685, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %686 = fadd double %657, %685
  store double %686, double* %134, align 1, !tbaa !2452
  store i64 0, i64* %135, align 1, !tbaa !2452
  %687 = add i64 %639, -56
  %688 = add i64 %869, 91
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX, align 8, !tbaa !2428
  %691 = add i64 %869, 95
  store i64 %691, i64* %PC, align 8
  %692 = load i32, i32* %664, align 4
  %693 = sext i32 %692 to i64
  %694 = mul nsw i64 %693, 32000
  store i64 %694, i64* %RCX, align 8, !tbaa !2428
  %695 = lshr i64 %694, 63
  %696 = add i64 %694, %690
  store i64 %696, i64* %RAX, align 8, !tbaa !2428
  %697 = icmp ult i64 %696, %690
  %698 = icmp ult i64 %696, %694
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %128, align 1, !tbaa !2432
  %701 = trunc i64 %696 to i32
  %702 = and i32 %701, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702) #9
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %129, align 1, !tbaa !2446
  %707 = xor i64 %690, %696
  %708 = lshr i64 %707, 4
  %709 = trunc i64 %708 to i8
  %710 = and i8 %709, 1
  store i8 %710, i8* %130, align 1, !tbaa !2447
  %711 = icmp eq i64 %696, 0
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %131, align 1, !tbaa !2448
  %713 = lshr i64 %696, 63
  %714 = trunc i64 %713 to i8
  store i8 %714, i8* %132, align 1, !tbaa !2449
  %715 = lshr i64 %690, 63
  %716 = xor i64 %713, %715
  %717 = xor i64 %713, %695
  %718 = add nuw nsw i64 %716, %717
  %719 = icmp eq i64 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %133, align 1, !tbaa !2450
  %721 = load i64, i64* %RBP, align 8
  %722 = add i64 %721, -128
  %723 = add i64 %869, 109
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RCX, align 8, !tbaa !2428
  %727 = shl nsw i64 %726, 3
  %728 = add i64 %727, %696
  %729 = add i64 %869, 114
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %728 to double*
  store double %686, double* %730, align 8
  %731 = load i64, i64* %RBP, align 8
  %732 = add i64 %731, -128
  %733 = load i64, i64* %PC, align 8
  %734 = add i64 %733, 3
  store i64 %734, i64* %PC, align 8
  %735 = inttoptr i64 %732 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = add i32 %736, 1
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX, align 8, !tbaa !2428
  %739 = icmp eq i32 %736, -1
  %740 = icmp eq i32 %737, 0
  %741 = or i1 %739, %740
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %128, align 1, !tbaa !2432
  %743 = and i32 %737, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743) #9
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %129, align 1, !tbaa !2446
  %748 = xor i32 %737, %736
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %130, align 1, !tbaa !2447
  %752 = zext i1 %740 to i8
  store i8 %752, i8* %131, align 1, !tbaa !2448
  %753 = lshr i32 %737, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %132, align 1, !tbaa !2449
  %755 = lshr i32 %736, 31
  %756 = xor i32 %753, %755
  %757 = add nuw nsw i32 %756, %753
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %133, align 1, !tbaa !2450
  %760 = add i64 %733, 9
  store i64 %760, i64* %PC, align 8
  store i32 %737, i32* %735, align 4
  %761 = load i64, i64* %PC, align 8
  %762 = add i64 %761, -135
  store i64 %762, i64* %PC, align 8, !tbaa !2428
  br label %block_40109a

block_401223:                                     ; preds = %block_4011e2
  %763 = add i64 %206, 7
  store i64 %763, i64* %PC, align 8
  store i32 0, i32* %173, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_40122a

block_401163:                                     ; preds = %block_40116f, %block_40114c
  %764 = phi i64 [ %997, %block_40116f ], [ %.pre33, %block_40114c ]
  %765 = load i64, i64* %RBP, align 8
  %766 = add i64 %765, -128
  %767 = add i64 %764, 3
  store i64 %767, i64* %PC, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RAX, align 8, !tbaa !2428
  %771 = add i64 %765, -20
  %772 = add i64 %764, 6
  store i64 %772, i64* %PC, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = sub i32 %769, %774
  %776 = icmp ult i32 %769, %774
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %128, align 1, !tbaa !2432
  %778 = and i32 %775, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778) #9
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %129, align 1, !tbaa !2446
  %783 = xor i32 %774, %769
  %784 = xor i32 %783, %775
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  store i8 %787, i8* %130, align 1, !tbaa !2447
  %788 = icmp eq i32 %775, 0
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %131, align 1, !tbaa !2448
  %790 = lshr i32 %775, 31
  %791 = trunc i32 %790 to i8
  store i8 %791, i8* %132, align 1, !tbaa !2449
  %792 = lshr i32 %769, 31
  %793 = lshr i32 %774, 31
  %794 = xor i32 %793, %792
  %795 = xor i32 %790, %792
  %796 = add nuw nsw i32 %795, %794
  %797 = icmp eq i32 %796, 2
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %133, align 1, !tbaa !2450
  %799 = icmp ne i8 %791, 0
  %800 = xor i1 %799, %797
  %.v35 = select i1 %800, i64 12, i64 101
  %801 = add i64 %764, %.v35
  store i64 %801, i64* %PC, align 8, !tbaa !2428
  br i1 %800, label %block_40116f, label %block_4011c8

block_4012a2:                                     ; preds = %block_40123d
  %802 = add i64 %456, -124
  %803 = add i64 %492, 8
  store i64 %803, i64* %PC, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = add i32 %805, 1
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RAX, align 8, !tbaa !2428
  %808 = icmp eq i32 %805, -1
  %809 = icmp eq i32 %806, 0
  %810 = or i1 %808, %809
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %128, align 1, !tbaa !2432
  %812 = and i32 %806, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812) #9
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %129, align 1, !tbaa !2446
  %817 = xor i32 %806, %805
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  store i8 %820, i8* %130, align 1, !tbaa !2447
  %821 = zext i1 %809 to i8
  store i8 %821, i8* %131, align 1, !tbaa !2448
  %822 = lshr i32 %806, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %132, align 1, !tbaa !2449
  %824 = lshr i32 %805, 31
  %825 = xor i32 %822, %824
  %826 = add nuw nsw i32 %825, %822
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %133, align 1, !tbaa !2450
  %829 = add i64 %492, 14
  store i64 %829, i64* %PC, align 8
  store i32 %806, i32* %804, align 4
  %830 = load i64, i64* %PC, align 8
  %831 = add i64 %830, -134
  store i64 %831, i64* %PC, align 8, !tbaa !2428
  br label %block_40122a

block_40109a:                                     ; preds = %block_401093, %block_4010a6
  %832 = phi i64 [ %.pre34, %block_401093 ], [ %762, %block_4010a6 ]
  %833 = load i64, i64* %RBP, align 8
  %834 = add i64 %833, -128
  %835 = add i64 %832, 3
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX, align 8, !tbaa !2428
  %839 = add i64 %833, -20
  %840 = add i64 %832, 6
  store i64 %840, i64* %PC, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = sub i32 %837, %842
  %844 = icmp ult i32 %837, %842
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %128, align 1, !tbaa !2432
  %846 = and i32 %843, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846) #9
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %129, align 1, !tbaa !2446
  %851 = xor i32 %842, %837
  %852 = xor i32 %851, %843
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %130, align 1, !tbaa !2447
  %856 = icmp eq i32 %843, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %131, align 1, !tbaa !2448
  %858 = lshr i32 %843, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %132, align 1, !tbaa !2449
  %860 = lshr i32 %837, 31
  %861 = lshr i32 %842, 31
  %862 = xor i32 %861, %860
  %863 = xor i32 %858, %860
  %864 = add nuw nsw i32 %863, %862
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %133, align 1, !tbaa !2450
  %867 = icmp ne i8 %859, 0
  %868 = xor i1 %867, %865
  %.v36 = select i1 %868, i64 12, i64 140
  %869 = add i64 %832, %.v36
  store i64 %869, i64* %PC, align 8, !tbaa !2428
  br i1 %868, label %block_4010a6, label %block_401126

block_401093:                                     ; preds = %block_401087
  %870 = add i64 %999, -128
  %871 = add i64 %1035, 7
  store i64 %871, i64* %PC, align 8
  %872 = inttoptr i64 %870 to i32*
  store i32 0, i32* %872, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_40109a

block_40116f:                                     ; preds = %block_401163
  %873 = add i64 %765, -104
  %874 = add i64 %801, 4
  store i64 %874, i64* %PC, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX, align 8, !tbaa !2428
  %877 = add i64 %765, -124
  %878 = add i64 %801, 8
  store i64 %878, i64* %PC, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  store i64 %881, i64* %RCX, align 8, !tbaa !2428
  %882 = shl nsw i64 %881, 3
  %883 = add i64 %882, %876
  %884 = add i64 %801, 13
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %52, align 1, !tbaa !2452
  store double 0.000000e+00, double* %136, align 1, !tbaa !2452
  %887 = add i64 %765, -40
  %888 = add i64 %801, 18
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  store i64 %890, i64* %60, align 1, !tbaa !2452
  store double 0.000000e+00, double* %138, align 1, !tbaa !2452
  %891 = add i64 %765, -56
  %892 = add i64 %801, 22
  store i64 %892, i64* %PC, align 8
  %893 = inttoptr i64 %891 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %RAX, align 8, !tbaa !2428
  %895 = add i64 %801, 26
  store i64 %895, i64* %PC, align 8
  %896 = load i32, i32* %768, align 4
  %897 = sext i32 %896 to i64
  %898 = mul nsw i64 %897, 32000
  store i64 %898, i64* %RCX, align 8, !tbaa !2428
  %899 = lshr i64 %898, 63
  %900 = add i64 %898, %894
  store i64 %900, i64* %RAX, align 8, !tbaa !2428
  %901 = icmp ult i64 %900, %894
  %902 = icmp ult i64 %900, %898
  %903 = or i1 %901, %902
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %128, align 1, !tbaa !2432
  %905 = trunc i64 %900 to i32
  %906 = and i32 %905, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906) #9
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %129, align 1, !tbaa !2446
  %911 = xor i64 %894, %900
  %912 = lshr i64 %911, 4
  %913 = trunc i64 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %130, align 1, !tbaa !2447
  %915 = icmp eq i64 %900, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %131, align 1, !tbaa !2448
  %917 = lshr i64 %900, 63
  %918 = trunc i64 %917 to i8
  store i8 %918, i8* %132, align 1, !tbaa !2449
  %919 = lshr i64 %894, 63
  %920 = xor i64 %917, %919
  %921 = xor i64 %917, %899
  %922 = add nuw nsw i64 %920, %921
  %923 = icmp eq i64 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %133, align 1, !tbaa !2450
  %925 = add i64 %801, 40
  store i64 %925, i64* %PC, align 8
  %926 = load i32, i32* %879, align 4
  %927 = sext i32 %926 to i64
  store i64 %927, i64* %RCX, align 8, !tbaa !2428
  %928 = shl nsw i64 %927, 3
  %929 = add i64 %928, %900
  %930 = add i64 %801, 45
  store i64 %930, i64* %PC, align 8
  %931 = bitcast i64 %890 to double
  %932 = inttoptr i64 %929 to double*
  %933 = load double, double* %932, align 8
  %934 = fmul double %931, %933
  store double %934, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %935 = load i64, i64* %RBP, align 8
  %936 = add i64 %935, -112
  %937 = add i64 %801, 49
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RAX, align 8, !tbaa !2428
  %940 = add i64 %935, -128
  %941 = add i64 %801, 53
  store i64 %941, i64* %PC, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = sext i32 %943 to i64
  store i64 %944, i64* %RCX, align 8, !tbaa !2428
  %945 = shl nsw i64 %944, 3
  %946 = add i64 %945, %939
  %947 = add i64 %801, 58
  store i64 %947, i64* %PC, align 8
  %948 = inttoptr i64 %946 to double*
  %949 = load double, double* %948, align 8
  %950 = fmul double %934, %949
  store double %950, double* %59, align 1, !tbaa !2452
  store i64 0, i64* %137, align 1, !tbaa !2452
  %951 = load double, double* %134, align 1
  %952 = fadd double %951, %950
  store double %952, double* %134, align 1, !tbaa !2452
  %953 = add i64 %935, -104
  %954 = add i64 %801, 66
  store i64 %954, i64* %PC, align 8
  %955 = inttoptr i64 %953 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RAX, align 8, !tbaa !2428
  %957 = add i64 %935, -124
  %958 = add i64 %801, 70
  store i64 %958, i64* %PC, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sext i32 %960 to i64
  store i64 %961, i64* %RCX, align 8, !tbaa !2428
  %962 = shl nsw i64 %961, 3
  %963 = add i64 %962, %956
  %964 = add i64 %801, 75
  store i64 %964, i64* %PC, align 8
  %965 = inttoptr i64 %963 to double*
  store double %952, double* %965, align 8
  %966 = load i64, i64* %RBP, align 8
  %967 = add i64 %966, -128
  %968 = load i64, i64* %PC, align 8
  %969 = add i64 %968, 3
  store i64 %969, i64* %PC, align 8
  %970 = inttoptr i64 %967 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = add i32 %971, 1
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RAX, align 8, !tbaa !2428
  %974 = icmp eq i32 %971, -1
  %975 = icmp eq i32 %972, 0
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %128, align 1, !tbaa !2432
  %978 = and i32 %972, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978) #9
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %129, align 1, !tbaa !2446
  %983 = xor i32 %972, %971
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %130, align 1, !tbaa !2447
  %987 = zext i1 %975 to i8
  store i8 %987, i8* %131, align 1, !tbaa !2448
  %988 = lshr i32 %972, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %132, align 1, !tbaa !2449
  %990 = lshr i32 %971, 31
  %991 = xor i32 %988, %990
  %992 = add nuw nsw i32 %991, %988
  %993 = icmp eq i32 %992, 2
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %133, align 1, !tbaa !2450
  %995 = add i64 %968, 9
  store i64 %995, i64* %PC, align 8
  store i32 %972, i32* %970, align 4
  %996 = load i64, i64* %PC, align 8
  %997 = add i64 %996, -96
  store i64 %997, i64* %PC, align 8, !tbaa !2428
  br label %block_401163

block_401087:                                     ; preds = %block_401126, %block_401030
  %998 = phi i64 [ %168, %block_401126 ], [ %.pre, %block_401030 ]
  %999 = load i64, i64* %RBP, align 8
  %1000 = add i64 %999, -124
  %1001 = add i64 %998, 3
  store i64 %1001, i64* %PC, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RAX, align 8, !tbaa !2428
  %1005 = add i64 %999, -20
  %1006 = add i64 %998, 6
  store i64 %1006, i64* %PC, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = sub i32 %1003, %1008
  %1010 = icmp ult i32 %1003, %1008
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %128, align 1, !tbaa !2432
  %1012 = and i32 %1009, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012) #9
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %129, align 1, !tbaa !2446
  %1017 = xor i32 %1008, %1003
  %1018 = xor i32 %1017, %1009
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %130, align 1, !tbaa !2447
  %1022 = icmp eq i32 %1009, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %131, align 1, !tbaa !2448
  %1024 = lshr i32 %1009, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %132, align 1, !tbaa !2449
  %1026 = lshr i32 %1003, 31
  %1027 = lshr i32 %1008, 31
  %1028 = xor i32 %1027, %1026
  %1029 = xor i32 %1024, %1026
  %1030 = add nuw nsw i32 %1029, %1028
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %133, align 1, !tbaa !2450
  %1033 = icmp ne i8 %1025, 0
  %1034 = xor i1 %1033, %1031
  %.v37 = select i1 %1034, i64 12, i64 178
  %1035 = add i64 %998, %.v37
  store i64 %1035, i64* %PC, align 8, !tbaa !2428
  br i1 %1034, label %block_401093, label %block_401139
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4006c0_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4006c0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400690___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400690___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4005b0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4005c0_exit(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602108_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400590_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d8_free(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b8_calloc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4014c0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4014c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4014c0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4014c0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401450___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401450;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401450___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401450___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_alloc_data() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_flush_cache() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006d0_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_print() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007b0_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_stop() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400790_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4014c4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4014c4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400750_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_start() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400760_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400550__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #9 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401450___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_4014c0___libc_csu_fini()
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
attributes #8 = { naked nobuiltin noinline nounwind }
attributes #9 = { nounwind }
attributes #10 = { noinline nounwind }
attributes #11 = { norecurse nounwind }
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
!2447 = !{!2433, !2430, i64 2069}
!2448 = !{!2433, !2430, i64 2071}
!2449 = !{!2433, !2430, i64 2073}
!2450 = !{!2433, !2430, i64 2077}
!2451 = !{!2430, !2430, i64 0}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
