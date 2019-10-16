; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4013b0__rodata_type = type <{ [80 x i8], [29 x i8], [44 x i8], [6 x i8], [9 x i8], [3 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602080__bss_type = type <{ [32 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8] }>
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
@stdin = external local_unnamed_addr global i64, align 128
@seg_4013b0__rodata = internal constant %seg_4013b0__rodata_type <{ [80 x i8] c"\01\00\02\00\00\00\00\00\11\0A@\00\00\00\00\00&\0A@\00\00\00\00\00;\0A@\00\00\00\00\00Q\0A@\00\00\00\00\00\FD\0A@\00\00\00\00\00\16\0B@\00\00\00\00\00/\0B@\00\00\00\00\00H\0B@\00\00\00\00\00a\0B@\00\00\00\00\00", [29 x i8] c"Out of memory for work list\0A\00", [44 x i8] c"Out of memory for combination list\0A\00+\00-\00*\00:\00", [6 x i8] c" d%d \00", [9 x i8] c"%d=%d\00; \00", [3 x i8] c".\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4007b0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400780___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4007b0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400780___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4013a0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401330___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @calculate_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @printSolution_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @initWorkList_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @initCombList_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newCombList_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @printList_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newWorkList_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @saveSolution_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @recSearch_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @search_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @getInput_wrapper
@20 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @doSearch_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

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
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__isoc99_fscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @abs(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @ungetc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @getchar() #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4008d0_initCombList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4008d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %RBP, align 8
  %16 = add i64 %15, -12
  %17 = load i32, i32* %ESI, align 4
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 3
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %20, align 4
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 7
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_4008e2

block_400912:                                     ; preds = %block_4008e2
  %32 = add i64 %78, 1
  store i64 %32, i64* %PC, align 8
  %33 = load i64, i64* %6, align 8, !tbaa !2428
  %34 = add i64 %33, 8
  %35 = inttoptr i64 %33 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %RBP, align 8, !tbaa !2428
  store i64 %34, i64* %6, align 8, !tbaa !2428
  %37 = add i64 %78, 2
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %34 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = add i64 %33, 16
  store i64 %40, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4008e2:                                     ; preds = %block_4008ee, %block_4008d0
  %41 = phi i64 [ %148, %block_4008ee ], [ %.pre, %block_4008d0 ]
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -16
  %44 = add i64 %41, 3
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RAX, align 8, !tbaa !2428
  %48 = add i64 %42, -12
  %49 = add i64 %41, 6
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %46, %51
  %53 = icmp ult i32 %46, %51
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %26, align 1, !tbaa !2432
  %55 = and i32 %52, 255
  %56 = tail call i32 @llvm.ctpop.i32(i32 %55) #9
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  store i8 %59, i8* %27, align 1, !tbaa !2446
  %60 = xor i32 %51, %46
  %61 = xor i32 %60, %52
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %28, align 1, !tbaa !2447
  %65 = icmp eq i32 %52, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %29, align 1, !tbaa !2448
  %67 = lshr i32 %52, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %30, align 1, !tbaa !2449
  %69 = lshr i32 %46, 31
  %70 = lshr i32 %51, 31
  %71 = xor i32 %70, %69
  %72 = xor i32 %67, %69
  %73 = add nuw nsw i32 %72, %71
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %31, align 1, !tbaa !2450
  %76 = icmp ne i8 %68, 0
  %77 = xor i1 %76, %74
  %.v = select i1 %77, i64 12, i64 48
  %78 = add i64 %41, %.v
  store i64 %78, i64* %PC, align 8, !tbaa !2428
  br i1 %77, label %block_4008ee, label %block_400912

block_4008ee:                                     ; preds = %block_4008e2
  %79 = add i64 %42, -8
  %80 = add i64 %78, 4
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RAX, align 8, !tbaa !2428
  %83 = add i64 %78, 8
  store i64 %83, i64* %PC, align 8
  %84 = load i32, i32* %45, align 4
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, 12
  store i64 %86, i64* %RCX, align 8, !tbaa !2428
  %87 = lshr i64 %86, 63
  %88 = add i64 %86, %82
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = icmp ult i64 %88, %82
  %90 = icmp ult i64 %88, %86
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %26, align 1, !tbaa !2432
  %93 = trunc i64 %88 to i32
  %94 = and i32 %93, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #9
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %27, align 1, !tbaa !2446
  %99 = xor i64 %86, %82
  %100 = xor i64 %99, %88
  %101 = lshr i64 %100, 4
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %28, align 1, !tbaa !2447
  %104 = icmp eq i64 %88, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %29, align 1, !tbaa !2448
  %106 = lshr i64 %88, 63
  %107 = trunc i64 %106 to i8
  store i8 %107, i8* %30, align 1, !tbaa !2449
  %108 = lshr i64 %82, 63
  %109 = xor i64 %106, %108
  %110 = xor i64 %106, %87
  %111 = add nuw nsw i64 %109, %110
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %31, align 1, !tbaa !2450
  %114 = add i64 %88, 8
  %115 = add i64 %78, 22
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 0, i32* %116, align 4
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -16
  %119 = load i64, i64* %PC, align 8
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %118 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, 1
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RAX, align 8, !tbaa !2428
  %125 = icmp eq i32 %122, -1
  %126 = icmp eq i32 %123, 0
  %127 = or i1 %125, %126
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %26, align 1, !tbaa !2432
  %129 = and i32 %123, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #9
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %27, align 1, !tbaa !2446
  %134 = xor i32 %123, %122
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %28, align 1, !tbaa !2447
  %138 = zext i1 %126 to i8
  store i8 %138, i8* %29, align 1, !tbaa !2448
  %139 = lshr i32 %123, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %30, align 1, !tbaa !2449
  %141 = lshr i32 %122, 31
  %142 = xor i32 %139, %141
  %143 = add nuw nsw i32 %142, %139
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %31, align 1, !tbaa !2450
  %146 = add i64 %119, 9
  store i64 %146, i64* %PC, align 8
  store i32 %123, i32* %121, align 4
  %147 = load i64, i64* %PC, align 8
  %148 = add i64 %147, -43
  store i64 %148, i64* %PC, align 8, !tbaa !2428
  br label %block_4008e2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4009e0_calculate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4009e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %11 = add i64 %7, -24
  %12 = load i64, i64* %RDI, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %RBP, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %PC, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RDI, align 8, !tbaa !2428
  %21 = add i64 %20, 8
  %22 = add i64 %17, 7
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %21 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %30 = lshr i32 %25, 31
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %26, i64* %RDI, align 8, !tbaa !2428
  %33 = add i32 %24, -4
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %RAX, align 8, !tbaa !2428
  %35 = icmp ult i32 %25, 3
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %36, i8* %37, align 1, !tbaa !2432
  %38 = and i32 %33, 255
  %39 = tail call i32 @llvm.ctpop.i32(i32 %38) #9
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  store i8 %42, i8* %27, align 1, !tbaa !2446
  %43 = xor i32 %33, %25
  %44 = lshr i32 %43, 4
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  store i8 %46, i8* %28, align 1, !tbaa !2447
  %47 = icmp eq i32 %33, 0
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %29, align 1, !tbaa !2448
  %49 = lshr i32 %33, 31
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %31, align 1, !tbaa !2449
  %51 = xor i32 %49, %30
  %52 = add nuw nsw i32 %51, %30
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %32, align 1, !tbaa !2450
  %55 = add i64 %15, -24
  %56 = add i64 %17, 18
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i64*
  store i64 %26, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -28
  %60 = load i32, i32* %EAX, align 4
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %PC, align 8
  %65 = load i8, i8* %37, align 1, !tbaa !2432
  %66 = load i8, i8* %29, align 1, !tbaa !2448
  %67 = or i8 %66, %65
  %68 = icmp eq i8 %67, 0
  %.v = select i1 %68, i64 106, i64 6
  %69 = add i64 %64, %.v
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  %70 = load i64, i64* %RBP, align 8
  br i1 %68, label %block_400a67, label %block_400a03

block_400a11:                                     ; preds = %block_400a03
  %71 = add i64 %70, -16
  store i64 4196885, i64* %PC, align 8
  %72 = inttoptr i64 %71 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RAX, align 8, !tbaa !2428
  store i64 4196887, i64* %PC, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RCX, align 8, !tbaa !2428
  store i64 4196891, i64* %PC, align 8
  %77 = load i64, i64* %72, align 8
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = add i64 %77, 4
  store i64 4196894, i64* %PC, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %75
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RCX, align 8, !tbaa !2428
  %83 = icmp ult i32 %81, %75
  %84 = icmp ult i32 %81, %80
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %37, align 1, !tbaa !2432
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %27, align 1, !tbaa !2446
  %92 = xor i32 %80, %75
  %93 = xor i32 %92, %81
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %28, align 1, !tbaa !2447
  %97 = icmp eq i32 %81, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %29, align 1, !tbaa !2448
  %99 = lshr i32 %81, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %31, align 1, !tbaa !2449
  %101 = lshr i32 %75, 31
  %102 = lshr i32 %80, 31
  %103 = xor i32 %99, %101
  %104 = xor i32 %99, %102
  %105 = add nuw nsw i32 %103, %104
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %32, align 1, !tbaa !2450
  %108 = add i64 %70, -4
  store i64 4196897, i64* %PC, align 8
  %109 = inttoptr i64 %108 to i32*
  store i32 %81, i32* %109, align 4
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 77
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6e

block_400a6e:                                     ; preds = %block_400a26, %block_400a67, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400a3b, %block_400a11
  %112 = phi i64 [ %.pre3, %block_400a67 ], [ %236, %block_400a26 ], [ %194, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %111, %block_400a11 ], [ %158, %block_400a3b ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a67 ], [ %2, %block_400a26 ], [ %190, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %2, %block_400a11 ], [ %2, %block_400a3b ]
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -4
  %115 = add i64 %112, 3
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = add i64 %112, 4
  store i64 %119, i64* %PC, align 8
  %120 = load i64, i64* %6, align 8, !tbaa !2428
  %121 = add i64 %120, 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RBP, align 8, !tbaa !2428
  store i64 %121, i64* %6, align 8, !tbaa !2428
  %124 = add i64 %112, 5
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %121 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  %127 = add i64 %120, 16
  store i64 %127, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a3b:                                     ; preds = %block_400a03
  %128 = add i64 %70, -16
  store i64 4196927, i64* %PC, align 8
  %129 = inttoptr i64 %128 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  store i64 4196929, i64* %PC, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  store i64 4196933, i64* %PC, align 8
  %134 = load i64, i64* %129, align 8
  store i64 %134, i64* %RAX, align 8, !tbaa !2428
  %135 = add i64 %134, 4
  store i64 4196937, i64* %PC, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %132 to i64
  %139 = sext i32 %137 to i64
  %140 = mul nsw i64 %139, %138
  %141 = trunc i64 %140 to i32
  %142 = and i64 %140, 4294967295
  store i64 %142, i64* %RCX, align 8, !tbaa !2428
  %143 = shl i64 %140, 32
  %144 = ashr exact i64 %143, 32
  %145 = icmp ne i64 %144, %140
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %37, align 1, !tbaa !2432
  %147 = and i32 %141, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147) #9
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %27, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  %152 = lshr i32 %141, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %31, align 1, !tbaa !2449
  store i8 %146, i8* %32, align 1, !tbaa !2450
  %154 = add i64 %70, -4
  %155 = trunc i64 %140 to i32
  store i64 4196940, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %156, align 4
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, 34
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6e

block_400a51:                                     ; preds = %block_400a03
  %159 = add i64 %70, -16
  store i64 4196949, i64* %PC, align 8
  %160 = inttoptr i64 %159 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  store i64 4196951, i64* %PC, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  store i64 4196955, i64* %PC, align 8
  %165 = load i64, i64* %160, align 8
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %167 = sext i32 %163 to i64
  %168 = lshr i64 %167, 32
  store i64 %168, i64* %166, align 8, !tbaa !2428
  %169 = add i64 %165, 4
  store i64 4196959, i64* %PC, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = shl nuw i64 %168, 32
  %174 = or i64 %173, %164
  %175 = sdiv i64 %174, %172
  %176 = shl i64 %175, 32
  %177 = ashr exact i64 %176, 32
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %181, label %179

; <label>:179:                                    ; preds = %block_400a51
  %180 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 4196959, %struct.Memory* %2) #12
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i32, i32* %EAX, align 4
  %.pre2 = load i64, i64* %PC, align 8
  %phitmp = add i64 %.pre2, 3
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:181:                                    ; preds = %block_400a51
  %182 = srem i64 %174, %172
  %183 = and i64 %175, 4294967295
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %185 = and i64 %182, 4294967295
  store i64 %185, i64* %184, align 8, !tbaa !2428
  store i8 0, i8* %37, align 1, !tbaa !2432
  store i8 0, i8* %27, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %186 = trunc i64 %175 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %181, %179
  %187 = phi i64 [ %phitmp, %179 ], [ 4196962, %181 ]
  %188 = phi i32 [ %.pre1, %179 ], [ %186, %181 ]
  %189 = phi i64 [ %.pre, %179 ], [ %70, %181 ]
  %190 = phi %struct.Memory* [ %180, %179 ], [ %2, %181 ]
  %191 = add i64 %189, -4
  store i64 %187, i64* %PC, align 8
  %192 = inttoptr i64 %191 to i32*
  store i32 %188, i32* %192, align 4
  %193 = load i64, i64* %PC, align 8
  %194 = add i64 %193, 12
  store i64 %194, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6e

block_400a67:                                     ; preds = %block_4009e0
  %195 = add i64 %70, -4
  %196 = add i64 %69, 7
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 0, i32* %197, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400a6e

block_400a26:                                     ; preds = %block_400a03
  %198 = add i64 %70, -16
  store i64 4196906, i64* %PC, align 8
  %199 = inttoptr i64 %198 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RAX, align 8, !tbaa !2428
  store i64 4196908, i64* %PC, align 8
  %201 = inttoptr i64 %200 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RCX, align 8, !tbaa !2428
  store i64 4196912, i64* %PC, align 8
  %204 = load i64, i64* %199, align 8
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = add i64 %204, 4
  store i64 4196915, i64* %PC, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 %202, %207
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RCX, align 8, !tbaa !2428
  %210 = icmp ult i32 %202, %207
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %37, align 1, !tbaa !2432
  %212 = and i32 %208, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #9
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %27, align 1, !tbaa !2446
  %217 = xor i32 %207, %202
  %218 = xor i32 %217, %208
  %219 = lshr i32 %218, 4
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %28, align 1, !tbaa !2447
  %222 = icmp eq i32 %208, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %29, align 1, !tbaa !2448
  %224 = lshr i32 %208, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %31, align 1, !tbaa !2449
  %226 = lshr i32 %202, 31
  %227 = lshr i32 %207, 31
  %228 = xor i32 %227, %226
  %229 = xor i32 %224, %226
  %230 = add nuw nsw i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %32, align 1, !tbaa !2450
  %233 = add i64 %70, -4
  store i64 4196918, i64* %PC, align 8
  %234 = inttoptr i64 %233 to i32*
  store i32 %208, i32* %234, align 4
  %235 = load i64, i64* %PC, align 8
  %236 = add i64 %235, 56
  store i64 %236, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6e

block_400a03:                                     ; preds = %block_4009e0
  %237 = add i64 %70, -24
  %238 = add i64 %69, 4
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = shl i64 %240, 3
  %242 = add i64 %241, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 8)
  %243 = add i64 %69, 12
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RCX, align 8, !tbaa !2428
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  switch i64 %245, label %246 [
    i64 4196923, label %block_400a3b
    i64 4196881, label %block_400a11
    i64 4196945, label %block_400a51
    i64 4196902, label %block_400a26
  ]

; <label>:246:                                    ; preds = %block_400a03
  %247 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %245, %struct.Memory* %2)
  ret %struct.Memory* %247
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a11(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400a11:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = add i64 %1, 4
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8, !tbaa !2428
  %8 = add i64 %1, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %7 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8, !tbaa !2428
  %12 = add i64 %1, 10
  store i64 %12, i64* %PC, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %RAX, align 8, !tbaa !2428
  %14 = add i64 %13, 4
  %15 = add i64 %1, 13
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, %10
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8, !tbaa !2428
  %20 = icmp ult i32 %18, %10
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1, !tbaa !2432
  %25 = and i32 %18, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1, !tbaa !2446
  %31 = xor i32 %17, %10
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1, !tbaa !2447
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1, !tbaa !2448
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1, !tbaa !2449
  %43 = lshr i32 %10, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add nuw nsw i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1, !tbaa !2450
  %51 = add i64 %3, -4
  %52 = add i64 %1, 16
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i32*
  store i32 %18, i32* %53, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -4
  %57 = add i64 %54, 80
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RAX, align 8, !tbaa !2428
  %61 = add i64 %54, 81
  store i64 %61, i64* %PC, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !2428
  %64 = add i64 %63, 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RBP, align 8, !tbaa !2428
  store i64 %64, i64* %62, align 8, !tbaa !2428
  %67 = add i64 %54, 82
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  %70 = add i64 %63, 16
  store i64 %70, i64* %62, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400820_newCombList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400820:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 32
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
  store i64 12, i64* %RAX, align 8, !tbaa !2428
  store i64 12, i64* %RSI, align 8, !tbaa !2428
  %39 = add i64 %7, -12
  %40 = load i32, i32* %EDI, align 4
  %41 = add i64 %10, 17
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %RDI, align 8, !tbaa !2428
  %50 = add i64 %45, -434
  %51 = add i64 %45, 9
  %52 = load i64, i64* %RSP, align 8, !tbaa !2428
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %51, i64* %54, align 8
  store i64 %53, i64* %RSP, align 8, !tbaa !2428
  store i64 %50, i64* %PC, align 8, !tbaa !2428
  %55 = tail call fastcc %struct.Memory* @ext_602150_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -16
  %58 = load i64, i64* %RAX, align 8
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -16
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 5
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i64*
  %67 = load i64, i64* %66, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #9
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %74 = icmp eq i64 %67, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %29, align 1, !tbaa !2448
  %76 = lshr i64 %67, 63
  %77 = trunc i64 %76 to i8
  store i8 %77, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %74, i64 21, i64 11
  %78 = add i64 %64, %.v
  store i64 %78, i64* %PC, align 8, !tbaa !2428
  br i1 %74, label %block_400854, label %block_40084a

block_400854:                                     ; preds = %block_400820
  %EAX = bitcast %union.anon* %3 to i32*
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 109), i64* %RSI, align 8, !tbaa !2428
  %79 = load i64, i64* @stderr, align 32
  store i64 %79, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %80 = add i64 %78, -436
  %81 = add i64 %78, 25
  %82 = load i64, i64* %RSP, align 8, !tbaa !2428
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  %85 = tail call fastcc %struct.Memory* @ext_602160_fprintf(%struct.State* nonnull %0, %struct.Memory* %55)
  %86 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -20
  %89 = load i32, i32* %EAX, align 4
  %90 = add i64 %86, 8
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, -437
  %94 = add i64 %92, 5
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call fastcc %struct.Memory* @ext_4006c0_exit(%struct.State* nonnull %0, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %PC, align 8
  %101 = tail call %struct.Memory* @sub_400880_initWorkList(%struct.State* nonnull %0, i64 %100, %struct.Memory* %98)
  ret %struct.Memory* %101

block_40084a:                                     ; preds = %block_400820
  %102 = add i64 %78, 4
  store i64 %102, i64* %PC, align 8
  %103 = load i64, i64* %66, align 8
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = load i64, i64* %RSP, align 8
  %105 = add i64 %104, 32
  store i64 %105, i64* %RSP, align 8, !tbaa !2428
  %106 = icmp ugt i64 %104, -33
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1, !tbaa !2432
  %108 = trunc i64 %105 to i32
  %109 = and i32 %108, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #9
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1, !tbaa !2446
  %114 = xor i64 %105, %104
  %115 = lshr i64 %114, 4
  %116 = trunc i64 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1, !tbaa !2447
  %118 = icmp eq i64 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1, !tbaa !2448
  %120 = lshr i64 %105, 63
  %121 = trunc i64 %120 to i8
  store i8 %121, i8* %32, align 1, !tbaa !2449
  %122 = lshr i64 %104, 63
  %123 = xor i64 %120, %122
  %124 = add nuw nsw i64 %123, %120
  %125 = icmp eq i64 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %38, align 1, !tbaa !2450
  %127 = add i64 %78, 9
  store i64 %127, i64* %PC, align 8
  %128 = add i64 %104, 40
  %129 = inttoptr i64 %105 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RBP, align 8, !tbaa !2428
  store i64 %128, i64* %RSP, align 8, !tbaa !2428
  %131 = add i64 %78, 10
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %128 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %PC, align 8, !tbaa !2428
  %134 = add i64 %104, 48
  store i64 %134, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %55
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b48(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b48

block_400c0f:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %16 = add i64 %462, -1439
  %17 = add i64 %462, 17
  %18 = load i64, i64* %RSP, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %RSP, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %414)
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -80
  %24 = load i32, i32* %EAX, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400c23

block_400b7a:                                     ; preds = %block_400aa2
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -8
  %30 = add i64 %296, 14
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %29 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %RAX, align 8, !tbaa !2428
  %33 = add i64 %28, -16
  %34 = add i64 %296, 18
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %33 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 12
  store i64 %38, i64* %RCX, align 8, !tbaa !2428
  %39 = lshr i64 %38, 63
  %40 = add i64 %38, %32
  store i64 %40, i64* %RAX, align 8, !tbaa !2428
  %41 = icmp ult i64 %40, %32
  %42 = icmp ult i64 %40, %38
  %43 = or i1 %41, %42
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %6, align 1, !tbaa !2432
  %45 = trunc i64 %40 to i32
  %46 = and i32 %45, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #9
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  store i8 %50, i8* %7, align 1, !tbaa !2446
  %51 = xor i64 %38, %32
  %52 = xor i64 %51, %40
  %53 = lshr i64 %52, 4
  %54 = trunc i64 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, i8* %8, align 1, !tbaa !2447
  %56 = icmp eq i64 %40, 0
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %9, align 1, !tbaa !2448
  %58 = lshr i64 %40, 63
  %59 = trunc i64 %58 to i8
  store i8 %59, i8* %10, align 1, !tbaa !2449
  %60 = lshr i64 %32, 63
  %61 = xor i64 %58, %60
  %62 = xor i64 %58, %39
  %63 = add nuw nsw i64 %61, %62
  %64 = icmp eq i64 %63, 2
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %11, align 1, !tbaa !2450
  %66 = add i64 %40, 8
  %67 = add i64 %296, 28
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %66 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %71 = add i64 %296, -1290
  %72 = add i64 %296, 35
  %73 = load i64, i64* %RSP, align 8, !tbaa !2428
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %RSP, align 8, !tbaa !2428
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  %76 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %238)
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -64
  %79 = load i32, i32* %EAX, align 4
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %82, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400ba0

block_400c36:                                     ; preds = %block_400c23
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %83 = add i64 %218, -1478
  %84 = add i64 %218, 17
  %85 = load i64, i64* %RSP, align 8, !tbaa !2428
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %84, i64* %87, align 8
  store i64 %86, i64* %RSP, align 8, !tbaa !2428
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  %88 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -84
  %91 = load i32, i32* %EAX, align 4
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %90 to i32*
  store i32 %91, i32* %94, align 4
  %95 = load i64, i64* %RSP, align 8
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %95, 96
  store i64 %97, i64* %RSP, align 8, !tbaa !2428
  %98 = icmp ugt i64 %95, -97
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %6, align 1, !tbaa !2432
  %100 = trunc i64 %97 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #9
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %7, align 1, !tbaa !2446
  %106 = xor i64 %97, %95
  %107 = lshr i64 %106, 4
  %108 = trunc i64 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %8, align 1, !tbaa !2447
  %110 = icmp eq i64 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %9, align 1, !tbaa !2448
  %112 = lshr i64 %97, 63
  %113 = trunc i64 %112 to i8
  store i8 %113, i8* %10, align 1, !tbaa !2449
  %114 = lshr i64 %95, 63
  %115 = xor i64 %112, %114
  %116 = add nuw nsw i64 %115, %112
  %117 = icmp eq i64 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %11, align 1, !tbaa !2450
  %119 = add i64 %96, 5
  store i64 %119, i64* %PC, align 8
  %120 = add i64 %95, 104
  %121 = inttoptr i64 %97 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RBP, align 8, !tbaa !2428
  store i64 %120, i64* %RSP, align 8, !tbaa !2428
  %123 = add i64 %96, 6
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %120 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %PC, align 8, !tbaa !2428
  %126 = add i64 %95, 112
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %88

block_400bf6:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %127 = add i64 %462, -1414
  %128 = add i64 %462, 17
  %129 = load i64, i64* %RSP, align 8, !tbaa !2428
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %128, i64* %131, align 8
  store i64 %130, i64* %RSP, align 8, !tbaa !2428
  store i64 %127, i64* %PC, align 8, !tbaa !2428
  %132 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %414)
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -76
  %135 = load i32, i32* %EAX, align 4
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %134 to i32*
  store i32 %135, i32* %138, align 4
  %139 = load i64, i64* %PC, align 8
  %140 = add i64 %139, 25
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  br label %block_400c23

block_400aef:                                     ; preds = %block_400aa2
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -32
  %143 = add i64 %296, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = shl i64 %145, 3
  %147 = add i64 %146, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 40)
  %148 = add i64 %296, 12
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RCX, align 8, !tbaa !2428
  store i64 %150, i64* %PC, align 8, !tbaa !2428
  switch i64 %150, label %468 [
    i64 4197217, label %block_400b61
    i64 4197192, label %block_400b48
    i64 4197117, label %block_400afd
    i64 4197167, label %block_400b2f
    i64 4197142, label %block_400b16
  ]

block_400c23:                                     ; preds = %block_400bf6, %block_400c0f
  %151 = phi i64 [ %.pre41, %block_400c0f ], [ %140, %block_400bf6 ]
  %MEMORY.0 = phi %struct.Memory* [ %21, %block_400c0f ], [ %132, %block_400bf6 ]
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -16
  %154 = add i64 %151, 8
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, 1
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = icmp eq i32 %156, -1
  %160 = icmp eq i32 %157, 0
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %6, align 1, !tbaa !2432
  %163 = and i32 %157, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #9
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %7, align 1, !tbaa !2446
  %168 = xor i32 %157, %156
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %8, align 1, !tbaa !2447
  %172 = zext i1 %160 to i8
  store i8 %172, i8* %9, align 1, !tbaa !2448
  %173 = lshr i32 %157, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %10, align 1, !tbaa !2449
  %175 = lshr i32 %156, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %173
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %11, align 1, !tbaa !2450
  %180 = add i64 %151, 14
  store i64 %180, i64* %PC, align 8
  store i32 %157, i32* %155, align 4
  %181 = load i64, i64* %PC, align 8
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -16
  %184 = add i64 %181, -408
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX, align 8, !tbaa !2428
  %188 = add i64 %182, -12
  %189 = add i64 %181, -405
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = sub i32 %186, %191
  %193 = icmp ult i32 %186, %191
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %6, align 1, !tbaa !2432
  %195 = and i32 %192, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #9
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %7, align 1, !tbaa !2446
  %200 = xor i32 %191, %186
  %201 = xor i32 %200, %192
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %8, align 1, !tbaa !2447
  %205 = icmp eq i32 %192, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %9, align 1, !tbaa !2448
  %207 = lshr i32 %192, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %10, align 1, !tbaa !2449
  %209 = lshr i32 %186, 31
  %210 = lshr i32 %191, 31
  %211 = xor i32 %210, %209
  %212 = xor i32 %207, %209
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %11, align 1, !tbaa !2450
  %216 = icmp ne i8 %208, 0
  %217 = xor i1 %216, %214
  %.v = select i1 %217, i64 -399, i64 5
  %218 = add i64 %181, %.v
  store i64 %218, i64* %PC, align 8, !tbaa !2428
  br i1 %217, label %block_400aa2, label %block_400c36

block_400aa2:                                     ; preds = %block_400c23
  %219 = add i64 %182, -8
  %220 = add i64 %218, 4
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = add i64 %218, 8
  store i64 %223, i64* %PC, align 8
  %224 = load i32, i32* %185, align 4
  %225 = sext i32 %224 to i64
  %226 = mul nsw i64 %225, 3
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = mul nsw i64 %225, 12
  %228 = add i64 %222, %227
  %229 = add i64 %218, 15
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %233 = add i64 %218, -1074
  %234 = add i64 %218, 35
  %235 = load i64, i64* %RSP, align 8, !tbaa !2428
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %RSP, align 8, !tbaa !2428
  store i64 %233, i64* %PC, align 8, !tbaa !2428
  %238 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %239 = load i64, i64* %RBP, align 8
  %240 = add i64 %239, -8
  %241 = load i64, i64* %PC, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RCX, align 8, !tbaa !2428
  %245 = add i64 %239, -16
  %246 = add i64 %241, 8
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, 3
  store i64 %250, i64* %RDI, align 8, !tbaa !2428
  %251 = mul nsw i64 %249, 12
  %252 = add i64 %251, 8
  %253 = add i64 %252, %244
  %254 = add i64 %241, 16
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RDX, align 8, !tbaa !2428
  store i64 %257, i64* %RCX, align 8, !tbaa !2428
  %258 = add nsw i64 %257, -4
  store i64 %258, i64* %RDI, align 8, !tbaa !2428
  %259 = icmp ult i32 %256, 4
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %6, align 1, !tbaa !2432
  %261 = trunc i64 %258 to i32
  %262 = and i32 %261, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #9
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %7, align 1, !tbaa !2446
  %267 = xor i64 %258, %257
  %268 = lshr i64 %267, 4
  %269 = trunc i64 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %8, align 1, !tbaa !2447
  %271 = icmp eq i64 %258, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %9, align 1, !tbaa !2448
  %273 = lshr i64 %258, 63
  %274 = trunc i64 %273 to i8
  store i8 %274, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %275 = add i64 %239, -20
  %276 = load i32, i32* %EAX, align 4
  %277 = add i64 %241, 28
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %275 to i32*
  store i32 %276, i32* %278, align 4
  %279 = load i64, i64* %RBP, align 8
  %280 = add i64 %279, -32
  %281 = load i64, i64* %RCX, align 8
  %282 = load i64, i64* %PC, align 8
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %280 to i64*
  store i64 %281, i64* %284, align 8
  %285 = load i64, i64* %RBP, align 8
  %286 = add i64 %285, -40
  %287 = load i64, i64* %RDI, align 8
  %288 = load i64, i64* %PC, align 8
  %289 = add i64 %288, 4
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %286 to i64*
  store i64 %287, i64* %290, align 8
  %291 = load i64, i64* %PC, align 8
  %292 = load i8, i8* %6, align 1, !tbaa !2432
  %293 = load i8, i8* %9, align 1, !tbaa !2448
  %294 = or i8 %293, %292
  %295 = icmp eq i8 %294, 0
  %.v56 = select i1 %295, i64 145, i64 6
  %296 = add i64 %291, %.v56
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  br i1 %295, label %block_400b7a, label %block_400aef

block_400b48:                                     ; preds = %block_400aef, %3
  %297 = phi i64 [ %1, %3 ], [ 4197192, %block_400aef ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %3 ], [ %238, %block_400aef ]
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %298 = add i64 %297, -1240
  %299 = add i64 %297, 17
  %300 = load i64, i64* %RSP, align 8, !tbaa !2428
  %301 = add i64 %300, -8
  %302 = inttoptr i64 %301 to i64*
  store i64 %299, i64* %302, align 8
  store i64 %301, i64* %RSP, align 8, !tbaa !2428
  store i64 %298, i64* %PC, align 8, !tbaa !2428
  %303 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %304 = load i64, i64* %RBP, align 8
  %305 = add i64 %304, -56
  %306 = load i32, i32* %EAX, align 4
  %307 = load i64, i64* %PC, align 8
  %308 = add i64 %307, 3
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %305 to i32*
  store i32 %306, i32* %309, align 4
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, 68
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400ba0:                                     ; preds = %block_400b48, %block_400b7a
  %312 = phi i64 [ %311, %block_400b48 ], [ %.pre, %block_400b7a ]
  %MEMORY.2 = phi %struct.Memory* [ %303, %block_400b48 ], [ %76, %block_400b7a ]
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -8
  %315 = add i64 %312, 4
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RAX, align 8, !tbaa !2428
  %318 = add i64 %313, -16
  %319 = add i64 %312, 8
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = mul nsw i64 %322, 12
  store i64 %323, i64* %RCX, align 8, !tbaa !2428
  %324 = lshr i64 %323, 63
  %325 = add i64 %323, %317
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp ult i64 %325, %317
  %327 = icmp ult i64 %325, %323
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %6, align 1, !tbaa !2432
  %330 = trunc i64 %325 to i32
  %331 = and i32 %330, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #9
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %7, align 1, !tbaa !2446
  %336 = xor i64 %323, %317
  %337 = xor i64 %336, %325
  %338 = lshr i64 %337, 4
  %339 = trunc i64 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %8, align 1, !tbaa !2447
  %341 = icmp eq i64 %325, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %9, align 1, !tbaa !2448
  %343 = lshr i64 %325, 63
  %344 = trunc i64 %343 to i8
  store i8 %344, i8* %10, align 1, !tbaa !2449
  %345 = lshr i64 %317, 63
  %346 = xor i64 %343, %345
  %347 = xor i64 %343, %324
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %11, align 1, !tbaa !2450
  %351 = add i64 %325, 4
  %352 = add i64 %312, 18
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RSI, align 8, !tbaa !2428
  %356 = add i64 %312, 22
  store i64 %356, i64* %PC, align 8
  %357 = load i64, i64* %316, align 8
  store i64 %357, i64* %RAX, align 8, !tbaa !2428
  %358 = add i64 %312, 26
  store i64 %358, i64* %PC, align 8
  %359 = load i32, i32* %320, align 4
  %360 = sext i32 %359 to i64
  %361 = mul nsw i64 %360, 12
  store i64 %361, i64* %RCX, align 8, !tbaa !2428
  %362 = lshr i64 %361, 63
  %363 = add i64 %361, %357
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = icmp ult i64 %363, %357
  %365 = icmp ult i64 %363, %361
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %6, align 1, !tbaa !2432
  %368 = trunc i64 %363 to i32
  %369 = and i32 %368, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #9
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %7, align 1, !tbaa !2446
  %374 = xor i64 %361, %357
  %375 = xor i64 %374, %363
  %376 = lshr i64 %375, 4
  %377 = trunc i64 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %8, align 1, !tbaa !2447
  %379 = icmp eq i64 %363, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %9, align 1, !tbaa !2448
  %381 = lshr i64 %363, 63
  %382 = trunc i64 %381 to i8
  store i8 %382, i8* %10, align 1, !tbaa !2449
  %383 = lshr i64 %357, 63
  %384 = xor i64 %381, %383
  %385 = xor i64 %381, %362
  %386 = add nuw nsw i64 %384, %385
  %387 = icmp eq i64 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %11, align 1, !tbaa !2450
  store i64 %363, i64* %RDI, align 8, !tbaa !2428
  %389 = load i64, i64* %RBP, align 8
  %390 = add i64 %389, -68
  %391 = add i64 %312, 39
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %390 to i32*
  store i32 %354, i32* %392, align 4
  %393 = load i64, i64* %PC, align 8
  %394 = add i64 %393, -487
  %395 = add i64 %393, 5
  %396 = load i64, i64* %RSP, align 8, !tbaa !2428
  %397 = add i64 %396, -8
  %398 = inttoptr i64 %397 to i64*
  store i64 %395, i64* %398, align 8
  store i64 %397, i64* %RSP, align 8, !tbaa !2428
  store i64 %394, i64* %PC, align 8, !tbaa !2428
  %399 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %394, %struct.Memory* %MEMORY.2)
  %400 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %401 = load i64, i64* %RBP, align 8
  %402 = add i64 %401, -68
  %403 = add i64 %400, 13
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RSI, align 8, !tbaa !2428
  %407 = load i32, i32* %EAX, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %409 = add i64 %400, -1372
  %410 = add i64 %400, 22
  %411 = load i64, i64* %RSP, align 8, !tbaa !2428
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %410, i64* %413, align 8
  store i64 %412, i64* %RSP, align 8, !tbaa !2428
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  %414 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %399)
  %415 = load i64, i64* %RBP, align 8
  %416 = add i64 %415, -16
  %417 = load i64, i64* %PC, align 8
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %416 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RDX, align 8, !tbaa !2428
  %422 = add i64 %415, -12
  %423 = add i64 %417, 6
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %425, -1
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RSI, align 8, !tbaa !2428
  %428 = lshr i32 %426, 31
  %429 = sub i32 %420, %426
  %430 = icmp ult i32 %420, %426
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %6, align 1, !tbaa !2432
  %432 = and i32 %429, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432) #9
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %7, align 1, !tbaa !2446
  %437 = xor i32 %426, %420
  %438 = xor i32 %437, %429
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %8, align 1, !tbaa !2447
  %442 = icmp eq i32 %429, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %9, align 1, !tbaa !2448
  %444 = lshr i32 %429, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %10, align 1, !tbaa !2449
  %446 = lshr i32 %420, 31
  %447 = xor i32 %428, %446
  %448 = xor i32 %444, %446
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %11, align 1, !tbaa !2450
  %452 = add i64 %415, -72
  %453 = load i32, i32* %EAX, align 4
  %454 = add i64 %417, 14
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i32*
  store i32 %453, i32* %455, align 4
  %456 = load i64, i64* %PC, align 8
  %457 = load i8, i8* %10, align 1, !tbaa !2449
  %458 = icmp ne i8 %457, 0
  %459 = load i8, i8* %11, align 1, !tbaa !2450
  %460 = icmp ne i8 %459, 0
  %461 = xor i1 %458, %460
  %.v55 = select i1 %461, i64 6, i64 31
  %462 = add i64 %456, %.v55
  %463 = add i64 %462, 10
  store i64 %463, i64* %PC, align 8
  br i1 %461, label %block_400bf6, label %block_400c0f

block_400b2f:                                     ; preds = %block_400aef
  %464 = tail call %struct.Memory* @sub_400b2f(%struct.State* nonnull %0, i64 4197167, %struct.Memory* %238)
  ret %struct.Memory* %464

block_400b16:                                     ; preds = %block_400aef
  %465 = tail call %struct.Memory* @sub_400b16(%struct.State* nonnull %0, i64 4197142, %struct.Memory* %238)
  ret %struct.Memory* %465

block_400afd:                                     ; preds = %block_400aef
  %466 = tail call %struct.Memory* @sub_400afd(%struct.State* nonnull %0, i64 4197117, %struct.Memory* %238)
  ret %struct.Memory* %466

block_400b61:                                     ; preds = %block_400aef
  %467 = tail call %struct.Memory* @sub_400b61(%struct.State* nonnull %0, i64 4197217, %struct.Memory* %238)
  ret %struct.Memory* %467

; <label>:468:                                    ; preds = %block_400aef
  %469 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %150, %struct.Memory* %238)
  ret %struct.Memory* %469
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400700__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400700:
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
define %struct.Memory* @sub_400afd(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400afd

block_400afd.loopexit:                            ; preds = %block_400aef
  br label %block_400afd

block_400afd:                                     ; preds = %block_400afd.loopexit, %3
  %16 = phi i64 [ %1, %3 ], [ 4197117, %block_400afd.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %289, %block_400afd.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %17 = add i64 %16, -1165
  %18 = add i64 %16, 17
  %19 = load i64, i64* %RSP, align 8, !tbaa !2428
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  store i64 %20, i64* %RSP, align 8, !tbaa !2428
  store i64 %17, i64* %PC, align 8, !tbaa !2428
  %22 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %23, -44
  %25 = load i32, i32* %EAX, align 4
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 143
  store i64 %30, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400aef:                                     ; preds = %block_400aa2
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -32
  %33 = add i64 %347, 4
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = shl i64 %35, 3
  %37 = add i64 %36, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 40)
  %38 = add i64 %347, 12
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RCX, align 8, !tbaa !2428
  store i64 %40, i64* %PC, align 8, !tbaa !2428
  switch i64 %40, label %512 [
    i64 4197217, label %block_400b61
    i64 4197192, label %block_400b48
    i64 4197117, label %block_400afd.loopexit
    i64 4197167, label %block_400b2f
    i64 4197142, label %block_400b16
  ]

block_400b7a:                                     ; preds = %block_400aa2
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -8
  %43 = add i64 %347, 14
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = add i64 %41, -16
  %47 = add i64 %347, 18
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 12
  store i64 %51, i64* %RCX, align 8, !tbaa !2428
  %52 = lshr i64 %51, 63
  %53 = add i64 %51, %45
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = icmp ult i64 %53, %45
  %55 = icmp ult i64 %53, %51
  %56 = or i1 %54, %55
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %6, align 1, !tbaa !2432
  %58 = trunc i64 %53 to i32
  %59 = and i32 %58, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #9
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %7, align 1, !tbaa !2446
  %64 = xor i64 %51, %45
  %65 = xor i64 %64, %53
  %66 = lshr i64 %65, 4
  %67 = trunc i64 %66 to i8
  %68 = and i8 %67, 1
  store i8 %68, i8* %8, align 1, !tbaa !2447
  %69 = icmp eq i64 %53, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %9, align 1, !tbaa !2448
  %71 = lshr i64 %53, 63
  %72 = trunc i64 %71 to i8
  store i8 %72, i8* %10, align 1, !tbaa !2449
  %73 = lshr i64 %45, 63
  %74 = xor i64 %71, %73
  %75 = xor i64 %71, %52
  %76 = add nuw nsw i64 %74, %75
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %11, align 1, !tbaa !2450
  %79 = add i64 %53, 8
  %80 = add i64 %347, 28
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %84 = add i64 %347, -1290
  %85 = add i64 %347, 35
  %86 = load i64, i64* %RSP, align 8, !tbaa !2428
  %87 = add i64 %86, -8
  %88 = inttoptr i64 %87 to i64*
  store i64 %85, i64* %88, align 8
  store i64 %87, i64* %RSP, align 8, !tbaa !2428
  store i64 %84, i64* %PC, align 8, !tbaa !2428
  %89 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -64
  %92 = load i32, i32* %EAX, align 4
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %95, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400ba0.backedge

block_400ba0.backedge:                            ; preds = %block_400b7a, %block_400b16, %block_400b48, %block_400b2f, %block_400b61
  %.be = phi i64 [ %.pre.pre, %block_400b7a ], [ %107, %block_400b16 ], [ %187, %block_400b2f ], [ %175, %block_400b48 ], [ %359, %block_400b61 ]
  %MEMORY.2.be = phi %struct.Memory* [ %89, %block_400b7a ], [ %99, %block_400b16 ], [ %179, %block_400b2f ], [ %167, %block_400b48 ], [ %351, %block_400b61 ]
  br label %block_400ba0

block_400b16:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %96 = load i64, i64* %RSP, align 8, !tbaa !2428
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 4197159, i64* %98, align 8
  store i64 %97, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %99 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -48
  %102 = load i32, i32* %EAX, align 4
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %105, align 4
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 118
  store i64 %107, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400c0f:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %108 = add i64 %510, -1439
  %109 = add i64 %510, 17
  %110 = load i64, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %113 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %462)
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -80
  %116 = load i32, i32* %EAX, align 4
  %117 = load i64, i64* %PC, align 8
  %118 = add i64 %117, 3
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %115 to i32*
  store i32 %116, i32* %119, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_400c23

block_400c36:                                     ; preds = %block_400c23
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %120 = add i64 %255, -1478
  %121 = add i64 %255, 17
  %122 = load i64, i64* %RSP, align 8, !tbaa !2428
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  %125 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -84
  %128 = load i32, i32* %EAX, align 4
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %131, align 4
  %132 = load i64, i64* %RSP, align 8
  %133 = load i64, i64* %PC, align 8
  %134 = add i64 %132, 96
  store i64 %134, i64* %RSP, align 8, !tbaa !2428
  %135 = icmp ugt i64 %132, -97
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %6, align 1, !tbaa !2432
  %137 = trunc i64 %134 to i32
  %138 = and i32 %137, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #9
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %7, align 1, !tbaa !2446
  %143 = xor i64 %134, %132
  %144 = lshr i64 %143, 4
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %8, align 1, !tbaa !2447
  %147 = icmp eq i64 %134, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %9, align 1, !tbaa !2448
  %149 = lshr i64 %134, 63
  %150 = trunc i64 %149 to i8
  store i8 %150, i8* %10, align 1, !tbaa !2449
  %151 = lshr i64 %132, 63
  %152 = xor i64 %149, %151
  %153 = add nuw nsw i64 %152, %149
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %11, align 1, !tbaa !2450
  %156 = add i64 %133, 5
  store i64 %156, i64* %PC, align 8
  %157 = add i64 %132, 104
  %158 = inttoptr i64 %134 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RBP, align 8, !tbaa !2428
  store i64 %157, i64* %RSP, align 8, !tbaa !2428
  %160 = add i64 %133, 6
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %157 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %PC, align 8, !tbaa !2428
  %163 = add i64 %132, 112
  store i64 %163, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %125

block_400b48:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %164 = load i64, i64* %RSP, align 8, !tbaa !2428
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 4197209, i64* %166, align 8
  store i64 %165, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %167 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -56
  %170 = load i32, i32* %EAX, align 4
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %169 to i32*
  store i32 %170, i32* %173, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, 68
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400b2f:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %176 = load i64, i64* %RSP, align 8, !tbaa !2428
  %177 = add i64 %176, -8
  %178 = inttoptr i64 %177 to i64*
  store i64 4197184, i64* %178, align 8
  store i64 %177, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %179 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %180 = load i64, i64* %RBP, align 8
  %181 = add i64 %180, -52
  %182 = load i32, i32* %EAX, align 4
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %185, align 4
  %186 = load i64, i64* %PC, align 8
  %187 = add i64 %186, 93
  store i64 %187, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400c23:                                     ; preds = %block_400bf6, %block_400c0f
  %188 = phi i64 [ %.pre37, %block_400c0f ], [ %269, %block_400bf6 ]
  %MEMORY.1 = phi %struct.Memory* [ %113, %block_400c0f ], [ %261, %block_400bf6 ]
  %189 = load i64, i64* %RBP, align 8
  %190 = add i64 %189, -16
  %191 = add i64 %188, 8
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, 1
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  %196 = icmp eq i32 %193, -1
  %197 = icmp eq i32 %194, 0
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %6, align 1, !tbaa !2432
  %200 = and i32 %194, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #9
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %7, align 1, !tbaa !2446
  %205 = xor i32 %194, %193
  %206 = lshr i32 %205, 4
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  store i8 %208, i8* %8, align 1, !tbaa !2447
  %209 = zext i1 %197 to i8
  store i8 %209, i8* %9, align 1, !tbaa !2448
  %210 = lshr i32 %194, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %10, align 1, !tbaa !2449
  %212 = lshr i32 %193, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %210
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %11, align 1, !tbaa !2450
  %217 = add i64 %188, 14
  store i64 %217, i64* %PC, align 8
  store i32 %194, i32* %192, align 4
  %218 = load i64, i64* %PC, align 8
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -16
  %221 = add i64 %218, -408
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = add i64 %219, -12
  %226 = add i64 %218, -405
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sub i32 %223, %228
  %230 = icmp ult i32 %223, %228
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %6, align 1, !tbaa !2432
  %232 = and i32 %229, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232) #9
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %7, align 1, !tbaa !2446
  %237 = xor i32 %228, %223
  %238 = xor i32 %237, %229
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %8, align 1, !tbaa !2447
  %242 = icmp eq i32 %229, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %9, align 1, !tbaa !2448
  %244 = lshr i32 %229, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %10, align 1, !tbaa !2449
  %246 = lshr i32 %223, 31
  %247 = lshr i32 %228, 31
  %248 = xor i32 %247, %246
  %249 = xor i32 %244, %246
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %11, align 1, !tbaa !2450
  %253 = icmp ne i8 %245, 0
  %254 = xor i1 %253, %251
  %.v = select i1 %254, i64 -399, i64 5
  %255 = add i64 %218, %.v
  store i64 %255, i64* %PC, align 8, !tbaa !2428
  br i1 %254, label %block_400aa2, label %block_400c36

block_400bf6:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %256 = add i64 %510, -1414
  %257 = add i64 %510, 17
  %258 = load i64, i64* %RSP, align 8, !tbaa !2428
  %259 = add i64 %258, -8
  %260 = inttoptr i64 %259 to i64*
  store i64 %257, i64* %260, align 8
  store i64 %259, i64* %RSP, align 8, !tbaa !2428
  store i64 %256, i64* %PC, align 8, !tbaa !2428
  %261 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %462)
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -76
  %264 = load i32, i32* %EAX, align 4
  %265 = load i64, i64* %PC, align 8
  %266 = add i64 %265, 3
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %267, align 4
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 25
  store i64 %269, i64* %PC, align 8, !tbaa !2428
  br label %block_400c23

block_400aa2:                                     ; preds = %block_400c23
  %270 = add i64 %219, -8
  %271 = add i64 %255, 4
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i64*
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = add i64 %255, 8
  store i64 %274, i64* %PC, align 8
  %275 = load i32, i32* %222, align 4
  %276 = sext i32 %275 to i64
  %277 = mul nsw i64 %276, 3
  store i64 %277, i64* %RCX, align 8, !tbaa !2428
  %278 = mul nsw i64 %276, 12
  %279 = add i64 %273, %278
  %280 = add i64 %255, 15
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %284 = add i64 %255, -1074
  %285 = add i64 %255, 35
  %286 = load i64, i64* %RSP, align 8, !tbaa !2428
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %285, i64* %288, align 8
  store i64 %287, i64* %RSP, align 8, !tbaa !2428
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  %289 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -8
  %292 = load i64, i64* %PC, align 8
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %291 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  %296 = add i64 %290, -16
  %297 = add i64 %292, 8
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = mul nsw i64 %300, 3
  store i64 %301, i64* %RDI, align 8, !tbaa !2428
  %302 = mul nsw i64 %300, 12
  %303 = add i64 %302, 8
  %304 = add i64 %303, %295
  %305 = add i64 %292, 16
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RDX, align 8, !tbaa !2428
  store i64 %308, i64* %RCX, align 8, !tbaa !2428
  %309 = add nsw i64 %308, -4
  store i64 %309, i64* %RDI, align 8, !tbaa !2428
  %310 = icmp ult i32 %307, 4
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %6, align 1, !tbaa !2432
  %312 = trunc i64 %309 to i32
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #9
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %7, align 1, !tbaa !2446
  %318 = xor i64 %309, %308
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %8, align 1, !tbaa !2447
  %322 = icmp eq i64 %309, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %9, align 1, !tbaa !2448
  %324 = lshr i64 %309, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %326 = add i64 %290, -20
  %327 = load i32, i32* %EAX, align 4
  %328 = add i64 %292, 28
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %326 to i32*
  store i32 %327, i32* %329, align 4
  %330 = load i64, i64* %RBP, align 8
  %331 = add i64 %330, -32
  %332 = load i64, i64* %RCX, align 8
  %333 = load i64, i64* %PC, align 8
  %334 = add i64 %333, 4
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %331 to i64*
  store i64 %332, i64* %335, align 8
  %336 = load i64, i64* %RBP, align 8
  %337 = add i64 %336, -40
  %338 = load i64, i64* %RDI, align 8
  %339 = load i64, i64* %PC, align 8
  %340 = add i64 %339, 4
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %337 to i64*
  store i64 %338, i64* %341, align 8
  %342 = load i64, i64* %PC, align 8
  %343 = load i8, i8* %6, align 1, !tbaa !2432
  %344 = load i8, i8* %9, align 1, !tbaa !2448
  %345 = or i8 %344, %343
  %346 = icmp eq i8 %345, 0
  %.v48 = select i1 %346, i64 145, i64 6
  %347 = add i64 %342, %.v48
  store i64 %347, i64* %PC, align 8, !tbaa !2428
  br i1 %346, label %block_400b7a, label %block_400aef

block_400b61:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %348 = load i64, i64* %RSP, align 8, !tbaa !2428
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 4197234, i64* %350, align 8
  store i64 %349, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %351 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -60
  %354 = load i32, i32* %EAX, align 4
  %355 = load i64, i64* %PC, align 8
  %356 = add i64 %355, 3
  store i64 %356, i64* %PC, align 8
  %357 = inttoptr i64 %353 to i32*
  store i32 %354, i32* %357, align 4
  %358 = load i64, i64* %PC, align 8
  %359 = add i64 %358, 43
  store i64 %359, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400ba0:                                     ; preds = %block_400ba0.backedge, %block_400afd
  %360 = phi i64 [ %30, %block_400afd ], [ %.be, %block_400ba0.backedge ]
  %MEMORY.2 = phi %struct.Memory* [ %22, %block_400afd ], [ %MEMORY.2.be, %block_400ba0.backedge ]
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -8
  %363 = add i64 %360, 4
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RAX, align 8, !tbaa !2428
  %366 = add i64 %361, -16
  %367 = add i64 %360, 8
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 12
  store i64 %371, i64* %RCX, align 8, !tbaa !2428
  %372 = lshr i64 %371, 63
  %373 = add i64 %371, %365
  store i64 %373, i64* %RAX, align 8, !tbaa !2428
  %374 = icmp ult i64 %373, %365
  %375 = icmp ult i64 %373, %371
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %6, align 1, !tbaa !2432
  %378 = trunc i64 %373 to i32
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #9
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %7, align 1, !tbaa !2446
  %384 = xor i64 %371, %365
  %385 = xor i64 %384, %373
  %386 = lshr i64 %385, 4
  %387 = trunc i64 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %8, align 1, !tbaa !2447
  %389 = icmp eq i64 %373, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %9, align 1, !tbaa !2448
  %391 = lshr i64 %373, 63
  %392 = trunc i64 %391 to i8
  store i8 %392, i8* %10, align 1, !tbaa !2449
  %393 = lshr i64 %365, 63
  %394 = xor i64 %391, %393
  %395 = xor i64 %391, %372
  %396 = add nuw nsw i64 %394, %395
  %397 = icmp eq i64 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %11, align 1, !tbaa !2450
  %399 = add i64 %373, 4
  %400 = add i64 %360, 18
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RSI, align 8, !tbaa !2428
  %404 = add i64 %360, 22
  store i64 %404, i64* %PC, align 8
  %405 = load i64, i64* %364, align 8
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = add i64 %360, 26
  store i64 %406, i64* %PC, align 8
  %407 = load i32, i32* %368, align 4
  %408 = sext i32 %407 to i64
  %409 = mul nsw i64 %408, 12
  store i64 %409, i64* %RCX, align 8, !tbaa !2428
  %410 = lshr i64 %409, 63
  %411 = add i64 %409, %405
  store i64 %411, i64* %RAX, align 8, !tbaa !2428
  %412 = icmp ult i64 %411, %405
  %413 = icmp ult i64 %411, %409
  %414 = or i1 %412, %413
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %6, align 1, !tbaa !2432
  %416 = trunc i64 %411 to i32
  %417 = and i32 %416, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417) #9
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %7, align 1, !tbaa !2446
  %422 = xor i64 %409, %405
  %423 = xor i64 %422, %411
  %424 = lshr i64 %423, 4
  %425 = trunc i64 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %8, align 1, !tbaa !2447
  %427 = icmp eq i64 %411, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %9, align 1, !tbaa !2448
  %429 = lshr i64 %411, 63
  %430 = trunc i64 %429 to i8
  store i8 %430, i8* %10, align 1, !tbaa !2449
  %431 = lshr i64 %405, 63
  %432 = xor i64 %429, %431
  %433 = xor i64 %429, %410
  %434 = add nuw nsw i64 %432, %433
  %435 = icmp eq i64 %434, 2
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %11, align 1, !tbaa !2450
  store i64 %411, i64* %RDI, align 8, !tbaa !2428
  %437 = load i64, i64* %RBP, align 8
  %438 = add i64 %437, -68
  %439 = add i64 %360, 39
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 %402, i32* %440, align 4
  %441 = load i64, i64* %PC, align 8
  %442 = add i64 %441, -487
  %443 = add i64 %441, 5
  %444 = load i64, i64* %RSP, align 8, !tbaa !2428
  %445 = add i64 %444, -8
  %446 = inttoptr i64 %445 to i64*
  store i64 %443, i64* %446, align 8
  store i64 %445, i64* %RSP, align 8, !tbaa !2428
  store i64 %442, i64* %PC, align 8, !tbaa !2428
  %447 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %442, %struct.Memory* %MEMORY.2)
  %448 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %449 = load i64, i64* %RBP, align 8
  %450 = add i64 %449, -68
  %451 = add i64 %448, 13
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RSI, align 8, !tbaa !2428
  %455 = load i32, i32* %EAX, align 4
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %457 = add i64 %448, -1372
  %458 = add i64 %448, 22
  %459 = load i64, i64* %RSP, align 8, !tbaa !2428
  %460 = add i64 %459, -8
  %461 = inttoptr i64 %460 to i64*
  store i64 %458, i64* %461, align 8
  store i64 %460, i64* %RSP, align 8, !tbaa !2428
  store i64 %457, i64* %PC, align 8, !tbaa !2428
  %462 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %447)
  %463 = load i64, i64* %RBP, align 8
  %464 = add i64 %463, -16
  %465 = load i64, i64* %PC, align 8
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %464 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RDX, align 8, !tbaa !2428
  %470 = add i64 %463, -12
  %471 = add i64 %465, 6
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = add i32 %473, -1
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RSI, align 8, !tbaa !2428
  %476 = lshr i32 %474, 31
  %477 = sub i32 %468, %474
  %478 = icmp ult i32 %468, %474
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %6, align 1, !tbaa !2432
  %480 = and i32 %477, 255
  %481 = tail call i32 @llvm.ctpop.i32(i32 %480) #9
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  store i8 %484, i8* %7, align 1, !tbaa !2446
  %485 = xor i32 %474, %468
  %486 = xor i32 %485, %477
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %8, align 1, !tbaa !2447
  %490 = icmp eq i32 %477, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %9, align 1, !tbaa !2448
  %492 = lshr i32 %477, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %10, align 1, !tbaa !2449
  %494 = lshr i32 %468, 31
  %495 = xor i32 %476, %494
  %496 = xor i32 %492, %494
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %11, align 1, !tbaa !2450
  %500 = add i64 %463, -72
  %501 = load i32, i32* %EAX, align 4
  %502 = add i64 %465, 14
  store i64 %502, i64* %PC, align 8
  %503 = inttoptr i64 %500 to i32*
  store i32 %501, i32* %503, align 4
  %504 = load i64, i64* %PC, align 8
  %505 = load i8, i8* %10, align 1, !tbaa !2449
  %506 = icmp ne i8 %505, 0
  %507 = load i8, i8* %11, align 1, !tbaa !2450
  %508 = icmp ne i8 %507, 0
  %509 = xor i1 %506, %508
  %.v47 = select i1 %509, i64 6, i64 31
  %510 = add i64 %504, %.v47
  %511 = add i64 %510, 10
  store i64 %511, i64* %PC, align 8
  br i1 %509, label %block_400bf6, label %block_400c0f

; <label>:512:                                    ; preds = %block_400aef
  %513 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %40, %struct.Memory* %289)
  ret %struct.Memory* %513
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4013a0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4013a0:
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
define %struct.Memory* @sub_401150_getInput(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401150:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 96
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
  %39 = add i64 %7, -76
  %40 = add i64 %10, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -64
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 13, i32* %46, align 4
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -60
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 7
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 32, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -56
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 14, i32* %56, align 4
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -52
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 1412, i32* %61, align 4
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_40117b

block_40117b:                                     ; preds = %block_4011ad, %block_401150
  %63 = phi i64 [ %.pre, %block_401150 ], [ %386, %block_4011ad ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401150 ], [ %348, %block_4011ad ]
  %64 = add i64 %63, -2795
  %65 = add i64 %63, 5
  %66 = load i64, i64* %RSP, align 8, !tbaa !2428
  %67 = add i64 %66, -8
  %68 = inttoptr i64 %67 to i64*
  store i64 %65, i64* %68, align 8
  store i64 %67, i64* %RSP, align 8, !tbaa !2428
  store i64 %64, i64* %PC, align 8, !tbaa !2428
  %69 = tail call fastcc %struct.Memory* @ext_602158_getchar(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %70 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %DL, align 1, !tbaa !2451
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -72
  %73 = load i32, i32* %EAX, align 4
  %74 = add i64 %70, 7
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %EAX, align 4
  %77 = load i64, i64* %PC, align 8
  %78 = add i32 %76, -10
  %79 = icmp ult i32 %76, 10
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %14, align 1, !tbaa !2432
  %81 = and i32 %78, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #9
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %21, align 1, !tbaa !2446
  %86 = xor i32 %78, %76
  %87 = lshr i32 %86, 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %26, align 1, !tbaa !2447
  %90 = icmp eq i32 %78, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %29, align 1, !tbaa !2448
  %92 = lshr i32 %78, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %32, align 1, !tbaa !2449
  %94 = lshr i32 %76, 31
  %95 = xor i32 %92, %94
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %38, align 1, !tbaa !2450
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -73
  %101 = load i8, i8* %DL, align 1
  %102 = add i64 %77, 6
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %100 to i8*
  store i8 %101, i8* %103, align 1
  %104 = load i64, i64* %PC, align 8
  %105 = load i8, i8* %29, align 1, !tbaa !2448
  %106 = icmp ne i8 %105, 0
  %.v12 = select i1 %106, i64 16, i64 6
  %107 = add i64 %104, %.v12
  store i64 %107, i64* %PC, align 8, !tbaa !2428
  %108 = icmp eq i8 %105, 1
  br i1 %108, label %block_40119d, label %block_401193

block_401193:                                     ; preds = %block_40117b
  %109 = load i64, i64* %RBP, align 8
  %110 = add i64 %109, -72
  %111 = add i64 %107, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = icmp ne i32 %113, -1
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %14, align 1, !tbaa !2432
  %117 = and i32 %114, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117) #9
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %21, align 1, !tbaa !2446
  %122 = xor i32 %113, 16
  %123 = xor i32 %122, %114
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %26, align 1, !tbaa !2447
  %127 = icmp eq i32 %114, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %29, align 1, !tbaa !2448
  %129 = lshr i32 %114, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %32, align 1, !tbaa !2449
  %131 = lshr i32 %113, 31
  %132 = xor i32 %131, 1
  %133 = xor i32 %129, %131
  %134 = add nuw nsw i32 %133, %132
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %38, align 1, !tbaa !2450
  %137 = xor i1 %127, true
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %AL, align 1, !tbaa !2451
  %139 = add i64 %109, -73
  %140 = add i64 %107, 10
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i8*
  store i8 %138, i8* %141, align 1
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40119d

block_401210:                                     ; preds = %block_4011a8, %block_401209
  %142 = phi i64 [ %415, %block_4011a8 ], [ %.pre8, %block_401209 ]
  %143 = phi i64 [ %389, %block_4011a8 ], [ %.pre7, %block_401209 ]
  %144 = add i64 %143, -68
  %145 = add i64 %142, 3
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, -1
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = icmp eq i32 %147, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %14, align 1, !tbaa !2432
  %152 = and i32 %148, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #9
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1, !tbaa !2446
  %157 = xor i32 %148, %147
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %26, align 1, !tbaa !2447
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %29, align 1, !tbaa !2448
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %32, align 1, !tbaa !2449
  %165 = lshr i32 %147, 31
  %166 = xor i32 %163, %165
  %167 = add nuw nsw i32 %166, %165
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %38, align 1, !tbaa !2450
  store i32 %148, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %170 = sext i32 %148 to i64
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = shl nsw i64 %170, 2
  %172 = add nsw i64 %171, -64
  %173 = add i64 %172, %143
  %174 = add i64 %142, 25
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %177 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %178 = shl i32 %177, 1
  %179 = icmp slt i32 %177, 0
  %180 = icmp slt i32 %178, 0
  %181 = xor i1 %179, %180
  %182 = zext i32 %178 to i64
  store i64 %182, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %177, 31
  %183 = trunc i32 %.lobit to i8
  store i8 %183, i8* %14, align 1, !tbaa !2451
  %184 = and i32 %178, 254
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184) #9
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2451
  %189 = icmp eq i32 %178, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %29, align 1, !tbaa !2451
  %191 = lshr i32 %177, 30
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %32, align 1, !tbaa !2451
  %194 = zext i1 %181 to i8
  store i8 %194, i8* %38, align 1, !tbaa !2451
  store i64 %182, i64* %RDI, align 8, !tbaa !2428
  %195 = add i64 %142, -2640
  %196 = add i64 %142, 49
  %197 = load i64, i64* %RSP, align 8, !tbaa !2428
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %RSP, align 8, !tbaa !2428
  store i64 %195, i64* %PC, align 8, !tbaa !2428
  %200 = tail call %struct.Memory* @sub_4007c0_newWorkList(%struct.State* nonnull %0, i64 %195, %struct.Memory* %69)
  %201 = load i64, i64* %RAX, align 8
  %202 = load i64, i64* %PC, align 8
  store i64 %201, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  %203 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RDI, align 8, !tbaa !2428
  %205 = add i64 %202, -2593
  %206 = add i64 %202, 20
  %207 = load i64, i64* %RSP, align 8, !tbaa !2428
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209, align 8
  store i64 %208, i64* %RSP, align 8, !tbaa !2428
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  %210 = tail call %struct.Memory* @sub_400820_newCombList(%struct.State* nonnull %0, i64 %205, %struct.Memory* %200)
  %211 = load i64, i64* %RAX, align 8
  %212 = load i64, i64* %PC, align 8
  store i64 %211, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  %213 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDI, align 8, !tbaa !2428
  %215 = add i64 %212, -2613
  %216 = add i64 %212, 20
  %217 = load i64, i64* %RSP, align 8, !tbaa !2428
  %218 = add i64 %217, -8
  %219 = inttoptr i64 %218 to i64*
  store i64 %216, i64* %219, align 8
  store i64 %218, i64* %RSP, align 8, !tbaa !2428
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  %220 = tail call %struct.Memory* @sub_400820_newCombList(%struct.State* nonnull %0, i64 %215, %struct.Memory* %210)
  %221 = load i64, i64* %RBP, align 8
  %222 = add i64 %221, -64
  %223 = load i64, i64* %PC, align 8
  store i64 %222, i64* %RSI, align 8, !tbaa !2428
  %224 = load i64, i64* %RAX, align 8
  store i64 %224, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  %225 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %225, i64* %RDI, align 8, !tbaa !2428
  %226 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RDX, align 8, !tbaa !2428
  %228 = add i64 %223, -2537
  %229 = add i64 %223, 32
  %230 = load i64, i64* %RSP, align 8, !tbaa !2428
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %229, i64* %232, align 8
  store i64 %231, i64* %RSP, align 8, !tbaa !2428
  store i64 %228, i64* %PC, align 8, !tbaa !2428
  %233 = tail call %struct.Memory* @sub_400880_initWorkList(%struct.State* nonnull %0, i64 %228, %struct.Memory* %220)
  %234 = load i64, i64* %PC, align 8
  %235 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %235, i64* %RDI, align 8, !tbaa !2428
  %236 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RSI, align 8, !tbaa !2428
  %238 = add i64 %234, -2489
  %239 = add i64 %234, 20
  %240 = load i64, i64* %RSP, align 8, !tbaa !2428
  %241 = add i64 %240, -8
  %242 = inttoptr i64 %241 to i64*
  store i64 %239, i64* %242, align 8
  store i64 %241, i64* %RSP, align 8, !tbaa !2428
  store i64 %238, i64* %PC, align 8, !tbaa !2428
  %243 = tail call %struct.Memory* @sub_4008d0_initCombList(%struct.State* nonnull %0, i64 %238, %struct.Memory* %233)
  %244 = load i64, i64* %PC, align 8
  %245 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %245, i64* %RDI, align 8, !tbaa !2428
  %246 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RSI, align 8, !tbaa !2428
  %248 = add i64 %244, -2509
  %249 = add i64 %244, 20
  %250 = load i64, i64* %RSP, align 8, !tbaa !2428
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %249, i64* %252, align 8
  store i64 %251, i64* %RSP, align 8, !tbaa !2428
  store i64 %248, i64* %PC, align 8, !tbaa !2428
  %253 = tail call %struct.Memory* @sub_4008d0_initCombList(%struct.State* nonnull %0, i64 %248, %struct.Memory* %243)
  %254 = load i64, i64* %PC, align 8
  %255 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = load i64, i64* %RSP, align 8
  %258 = add i64 %257, 96
  store i64 %258, i64* %RSP, align 8, !tbaa !2428
  %259 = icmp ugt i64 %257, -97
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %14, align 1, !tbaa !2432
  %261 = trunc i64 %258 to i32
  %262 = and i32 %261, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #9
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1, !tbaa !2446
  %267 = xor i64 %258, %257
  %268 = lshr i64 %267, 4
  %269 = trunc i64 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %26, align 1, !tbaa !2447
  %271 = icmp eq i64 %258, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %29, align 1, !tbaa !2448
  %273 = lshr i64 %258, 63
  %274 = trunc i64 %273 to i8
  store i8 %274, i8* %32, align 1, !tbaa !2449
  %275 = lshr i64 %257, 63
  %276 = xor i64 %273, %275
  %277 = add nuw nsw i64 %276, %273
  %278 = icmp eq i64 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %38, align 1, !tbaa !2450
  %280 = add i64 %254, 12
  store i64 %280, i64* %PC, align 8
  %281 = add i64 %257, 104
  %282 = inttoptr i64 %258 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RBP, align 8, !tbaa !2428
  store i64 %281, i64* %RSP, align 8, !tbaa !2428
  %284 = add i64 %254, 13
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %281 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  %287 = add i64 %257, 112
  store i64 %287, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %253

block_4011ad:                                     ; preds = %block_40119d
  %288 = add i64 %389, -72
  %289 = add i64 %401, 3
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RDI, align 8, !tbaa !2428
  %293 = load i64, i64* @stdin, align 128
  store i64 %293, i64* %RSI, align 8, !tbaa !2428
  %294 = add i64 %401, -2813
  %295 = add i64 %401, 16
  %296 = load i64, i64* %RSP, align 8, !tbaa !2428
  %297 = add i64 %296, -8
  %298 = inttoptr i64 %297 to i64*
  store i64 %295, i64* %298, align 8
  store i64 %297, i64* %RSP, align 8, !tbaa !2428
  store i64 %294, i64* %PC, align 8, !tbaa !2428
  %299 = tail call fastcc %struct.Memory* @ext_602168_ungetc(%struct.State* nonnull %0, %struct.Memory* %69)
  %300 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64* %RSI, align 8, !tbaa !2428
  %301 = load i64, i64* %RBP, align 8
  %302 = add i64 %301, -64
  store i64 %302, i64* %RCX, align 8, !tbaa !2428
  %303 = load i64, i64* @stdin, align 128
  store i64 %303, i64* %RDI, align 8, !tbaa !2428
  %304 = add i64 %301, -68
  %305 = add i64 %300, 26
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = shl nsw i64 %308, 2
  %310 = add i64 %309, %302
  store i64 %310, i64* %RCX, align 8, !tbaa !2428
  %311 = icmp ult i64 %310, %302
  %312 = icmp ult i64 %310, %309
  %313 = or i1 %311, %312
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %14, align 1, !tbaa !2432
  %315 = trunc i64 %310 to i32
  %316 = and i32 %315, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #9
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %21, align 1, !tbaa !2446
  %321 = xor i64 %309, %302
  %322 = xor i64 %321, %310
  %323 = lshr i64 %322, 4
  %324 = trunc i64 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %26, align 1, !tbaa !2447
  %326 = icmp eq i64 %310, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %29, align 1, !tbaa !2448
  %328 = lshr i64 %310, 63
  %329 = trunc i64 %328 to i8
  store i8 %329, i8* %32, align 1, !tbaa !2449
  %330 = lshr i64 %302, 63
  %331 = lshr i64 %308, 61
  %332 = and i64 %331, 1
  %333 = xor i64 %328, %330
  %334 = xor i64 %328, %332
  %335 = add nuw nsw i64 %333, %334
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %38, align 1, !tbaa !2450
  store i64 %310, i64* %RDX, align 8, !tbaa !2428
  %338 = add i64 %301, -80
  %339 = load i32, i32* %EAX, align 4
  %340 = add i64 %300, 39
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %338 to i32*
  store i32 %339, i32* %341, align 4
  %342 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %343 = add i64 %342, -2964
  %344 = add i64 %342, 7
  %345 = load i64, i64* %RSP, align 8, !tbaa !2428
  %346 = add i64 %345, -8
  %347 = inttoptr i64 %346 to i64*
  store i64 %344, i64* %347, align 8
  store i64 %346, i64* %RSP, align 8, !tbaa !2428
  store i64 %343, i64* %PC, align 8, !tbaa !2428
  %348 = tail call fastcc %struct.Memory* @ext_6020e8___isoc99_fscanf(%struct.State* nonnull %0, %struct.Memory* %299)
  %349 = load i64, i64* %RBP, align 8
  %350 = add i64 %349, -68
  %351 = load i64, i64* %PC, align 8
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %350 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = add i32 %354, 1
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %62, align 8, !tbaa !2428
  %357 = icmp eq i32 %354, -1
  %358 = icmp eq i32 %355, 0
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %14, align 1, !tbaa !2432
  %361 = and i32 %355, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361) #9
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %21, align 1, !tbaa !2446
  %366 = xor i32 %355, %354
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %26, align 1, !tbaa !2447
  %370 = zext i1 %358 to i8
  store i8 %370, i8* %29, align 1, !tbaa !2448
  %371 = lshr i32 %355, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %32, align 1, !tbaa !2449
  %373 = lshr i32 %354, 31
  %374 = xor i32 %371, %373
  %375 = add nuw nsw i32 %374, %371
  %376 = icmp eq i32 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %38, align 1, !tbaa !2450
  %378 = add i64 %351, 12
  store i64 %378, i64* %PC, align 8
  store i32 %355, i32* %353, align 4
  %379 = load i64, i64* %RBP, align 8
  %380 = add i64 %379, -84
  %381 = load i32, i32* %EAX, align 4
  %382 = load i64, i64* %PC, align 8
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %384, align 4
  %385 = load i64, i64* %PC, align 8
  %386 = add i64 %385, -127
  store i64 %386, i64* %PC, align 8, !tbaa !2428
  br label %block_40117b

block_401209:                                     ; preds = %block_4011a8
  %387 = add i64 %415, 7
  store i64 %387, i64* %PC, align 8
  store i32 4, i32* %404, align 4
  %.pre7 = load i64, i64* %RBP, align 8
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_401210

block_40119d:                                     ; preds = %block_401193, %block_40117b
  %388 = phi i64 [ %.pre6, %block_401193 ], [ %107, %block_40117b ]
  %389 = load i64, i64* %RBP, align 8
  %390 = add i64 %389, -73
  %391 = add i64 %388, 3
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %390 to i8*
  %393 = load i8, i8* %392, align 1
  store i8 %393, i8* %AL, align 1, !tbaa !2451
  %394 = and i8 %393, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %395 = zext i8 %394 to i32
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #9
  %397 = trunc i32 %396 to i8
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1, !tbaa !2446
  %399 = xor i8 %394, 1
  store i8 %399, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %400 = icmp eq i8 %399, 0
  %.v = select i1 %400, i64 16, i64 11
  %401 = add i64 %388, %.v
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  br i1 %400, label %block_4011ad, label %block_4011a8

block_4011a8:                                     ; preds = %block_40119d
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %402 = add i64 %389, -68
  %403 = add i64 %401, 91
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %406 = and i32 %405, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406) #9
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %411 = icmp eq i32 %405, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %29, align 1, !tbaa !2448
  %413 = lshr i32 %405, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v9 = select i1 %411, i64 97, i64 104
  %415 = add i64 %401, %.v9
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  br i1 %411, label %block_401209, label %block_401210
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400880_initWorkList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400880:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %RBP, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI, align 8
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -20
  %23 = load i32, i32* %EDX, align 4
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %26, align 4
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %27, -24
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 7
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %28 to i32*
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400896

block_4008a2:                                     ; preds = %block_400896
  %38 = add i64 %95, -16
  %39 = add i64 %131, 4
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RAX, align 8, !tbaa !2428
  %42 = add i64 %131, 8
  store i64 %42, i64* %PC, align 8
  %43 = load i32, i32* %98, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %RCX, align 8, !tbaa !2428
  %45 = shl nsw i64 %44, 2
  %46 = add i64 %45, %41
  %47 = add i64 %131, 11
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %RDX, align 8, !tbaa !2428
  %51 = add i64 %95, -8
  %52 = add i64 %131, 15
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = add i64 %131, 19
  store i64 %55, i64* %PC, align 8
  %56 = load i32, i32* %98, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %RCX, align 8, !tbaa !2428
  %58 = shl nsw i64 %57, 2
  %59 = add i64 %58, %54
  %60 = add i64 %131, 22
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i32*
  store i32 %49, i32* %61, align 4
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -24
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 1
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = icmp eq i32 %67, -1
  %71 = icmp eq i32 %68, 0
  %72 = or i1 %70, %71
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %32, align 1, !tbaa !2432
  %74 = and i32 %68, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #9
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %33, align 1, !tbaa !2446
  %79 = xor i32 %68, %67
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %34, align 1, !tbaa !2447
  %83 = zext i1 %71 to i8
  store i8 %83, i8* %35, align 1, !tbaa !2448
  %84 = lshr i32 %68, 31
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %36, align 1, !tbaa !2449
  %86 = lshr i32 %67, 31
  %87 = xor i32 %84, %86
  %88 = add nuw nsw i32 %87, %84
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %37, align 1, !tbaa !2450
  %91 = add i64 %64, 9
  store i64 %91, i64* %PC, align 8
  store i32 %68, i32* %66, align 4
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, -43
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  br label %block_400896

block_400896:                                     ; preds = %block_4008a2, %block_400880
  %94 = phi i64 [ %93, %block_4008a2 ], [ %.pre, %block_400880 ]
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -24
  %97 = add i64 %94, 3
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = add i64 %95, -20
  %102 = add i64 %94, 6
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %99, %104
  %106 = icmp ult i32 %99, %104
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %32, align 1, !tbaa !2432
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #9
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %33, align 1, !tbaa !2446
  %113 = xor i32 %104, %99
  %114 = xor i32 %113, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %34, align 1, !tbaa !2447
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %35, align 1, !tbaa !2448
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %36, align 1, !tbaa !2449
  %122 = lshr i32 %99, 31
  %123 = lshr i32 %104, 31
  %124 = xor i32 %123, %122
  %125 = xor i32 %120, %122
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %37, align 1, !tbaa !2450
  %129 = icmp ne i8 %121, 0
  %130 = xor i1 %129, %127
  %.v = select i1 %130, i64 12, i64 48
  %131 = add i64 %94, %.v
  store i64 %131, i64* %PC, align 8, !tbaa !2428
  br i1 %130, label %block_4008a2, label %block_4008c6

block_4008c6:                                     ; preds = %block_400896
  %132 = add i64 %131, 1
  store i64 %132, i64* %PC, align 8
  %133 = load i64, i64* %6, align 8, !tbaa !2428
  %134 = add i64 %133, 8
  %135 = inttoptr i64 %133 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RBP, align 8, !tbaa !2428
  store i64 %134, i64* %6, align 8, !tbaa !2428
  %137 = add i64 %131, 2
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %134 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  %140 = add i64 %133, 16
  store i64 %140, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c50_printList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400c50:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -40
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 32
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
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
  %40 = add i64 %8, -16
  %41 = load i64, i64* %RDI, align 8
  %42 = add i64 %11, 11
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -12
  %46 = load i32, i32* %ESI, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -16
  %52 = load i32, i32* %EDX, align 4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -20
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c69

block_400cbd:                                     ; preds = %block_400c69
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %61 = add i64 %245, -1613
  %62 = add i64 %245, 17
  %63 = load i64, i64* %RSP, align 8, !tbaa !2428
  %64 = add i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  store i64 %62, i64* %65, align 8
  store i64 %64, i64* %RSP, align 8, !tbaa !2428
  store i64 %61, i64* %PC, align 8, !tbaa !2428
  %66 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -28
  %69 = load i32, i32* %EAX, align 4
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %73 = load i64, i64* %RSP, align 8
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %73, 32
  store i64 %75, i64* %RSP, align 8, !tbaa !2428
  %76 = icmp ugt i64 %73, -33
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %15, align 1, !tbaa !2432
  %78 = trunc i64 %75 to i32
  %79 = and i32 %78, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79) #9
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %22, align 1, !tbaa !2446
  %84 = xor i64 %75, %73
  %85 = lshr i64 %84, 4
  %86 = trunc i64 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %27, align 1, !tbaa !2447
  %88 = icmp eq i64 %75, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %30, align 1, !tbaa !2448
  %90 = lshr i64 %75, 63
  %91 = trunc i64 %90 to i8
  store i8 %91, i8* %33, align 1, !tbaa !2449
  %92 = lshr i64 %73, 63
  %93 = xor i64 %90, %92
  %94 = add nuw nsw i64 %93, %90
  %95 = icmp eq i64 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %39, align 1, !tbaa !2450
  %97 = add i64 %74, 5
  store i64 %97, i64* %PC, align 8
  %98 = add i64 %73, 40
  %99 = inttoptr i64 %75 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RBP, align 8, !tbaa !2428
  store i64 %98, i64* %RSP, align 8, !tbaa !2428
  %101 = add i64 %74, 6
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %98 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %PC, align 8, !tbaa !2428
  %104 = add i64 %73, 48
  store i64 %104, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %66

block_400c90:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 155), i64* %RDI, align 8, !tbaa !2428
  %105 = add i64 %209, -8
  %106 = add i64 %206, 14
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX, align 8, !tbaa !2428
  %109 = add i64 %206, 18
  store i64 %109, i64* %PC, align 8
  %110 = load i32, i32* %212, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %RCX, align 8, !tbaa !2428
  %112 = shl nsw i64 %111, 2
  %113 = add i64 %112, %108
  %114 = add i64 %206, 21
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %118 = add i64 %206, -1568
  %119 = add i64 %206, 28
  %120 = load i64, i64* %RSP, align 8, !tbaa !2428
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %RSP, align 8, !tbaa !2428
  store i64 %118, i64* %PC, align 8, !tbaa !2428
  %123 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %124 = load i64, i64* %RBP, align 8
  %125 = add i64 %124, -24
  %126 = load i32, i32* %EAX, align 4
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %129, align 4
  %.pre2 = load i64, i64* %RBP, align 8
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400caf

block_400caf:                                     ; preds = %block_400c8b, %block_400c90
  %130 = phi i64 [ %.pre3, %block_400c90 ], [ %207, %block_400c8b ]
  %131 = phi i64 [ %.pre2, %block_400c90 ], [ %209, %block_400c8b ]
  %MEMORY.0 = phi %struct.Memory* [ %123, %block_400c90 ], [ %MEMORY.1, %block_400c8b ]
  %132 = add i64 %131, -20
  %133 = add i64 %130, 3
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, 1
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX, align 8, !tbaa !2428
  %138 = icmp eq i32 %135, -1
  %139 = icmp eq i32 %136, 0
  %140 = or i1 %138, %139
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %15, align 1, !tbaa !2432
  %142 = and i32 %136, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142) #9
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %22, align 1, !tbaa !2446
  %147 = xor i32 %136, %135
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %27, align 1, !tbaa !2447
  %151 = zext i1 %139 to i8
  store i8 %151, i8* %30, align 1, !tbaa !2448
  %152 = lshr i32 %136, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %33, align 1, !tbaa !2449
  %154 = lshr i32 %135, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %152
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %39, align 1, !tbaa !2450
  %159 = add i64 %130, 9
  store i64 %159, i64* %PC, align 8
  store i32 %136, i32* %134, align 4
  %160 = load i64, i64* %PC, align 8
  %161 = add i64 %160, -79
  store i64 %161, i64* %PC, align 8, !tbaa !2428
  br label %block_400c69

block_400c75:                                     ; preds = %block_400c69
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %162 = add i64 %245, 8
  store i64 %162, i64* %PC, align 8
  %163 = load i32, i32* %212, align 4
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  %165 = add i64 %245, 10
  store i64 %165, i64* %PC, align 8
  %166 = trunc i32 %163 to i5
  switch i5 %166, label %167 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %176
  ]

; <label>:167:                                    ; preds = %block_400c75
  %168 = and i32 %163, 31
  %169 = zext i32 %168 to i64
  %170 = add nuw nsw i64 %169, 4294967295
  %171 = and i64 %170, 4294967295
  %172 = shl i64 1, %171
  %173 = trunc i64 %172 to i32
  %174 = icmp slt i32 %173, 0
  %175 = shl i32 %173, 1
  br label %176

; <label>:176:                                    ; preds = %block_400c75, %167
  %177 = phi i1 [ %174, %167 ], [ false, %block_400c75 ]
  %178 = phi i32 [ %175, %167 ], [ 2, %block_400c75 ]
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = zext i1 %177 to i8
  store i8 %180, i8* %15, align 1, !tbaa !2451
  %181 = and i32 %178, 254
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181) #9
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %22, align 1, !tbaa !2451
  store i8 0, i8* %27, align 1, !tbaa !2451
  %186 = icmp eq i32 %178, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %30, align 1, !tbaa !2451
  %188 = lshr i32 %178, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %33, align 1, !tbaa !2451
  store i8 0, i8* %39, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %176, %block_400c75
  %190 = phi i32 [ %178, %176 ], [ 1, %block_400c75 ]
  %191 = add i64 %209, -16
  %192 = add i64 %245, 13
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %190
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = and i32 %195, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #9
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  %202 = icmp eq i32 %195, 0
  %203 = zext i1 %202 to i8
  %204 = lshr i32 %195, 31
  %205 = trunc i32 %204 to i8
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 %201, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 %203, i8* %30, align 1, !tbaa !2448
  store i8 %205, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v4 = select i1 %202, i64 27, i64 22
  %206 = add i64 %245, %.v4
  store i64 %206, i64* %PC, align 8, !tbaa !2428
  br i1 %202, label %block_400c90, label %block_400c8b

block_400c8b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %207 = add i64 %206, 36
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br label %block_400caf

block_400c69:                                     ; preds = %block_400caf, %block_400c50
  %208 = phi i64 [ %.pre, %block_400c50 ], [ %161, %block_400caf ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400c50 ], [ %MEMORY.0, %block_400caf ]
  %209 = load i64, i64* %RBP, align 8
  %210 = add i64 %209, -20
  %211 = add i64 %208, 3
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = add i64 %209, -12
  %216 = add i64 %208, 6
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = sub i32 %213, %218
  %220 = icmp ult i32 %213, %218
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %15, align 1, !tbaa !2432
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #9
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %22, align 1, !tbaa !2446
  %227 = xor i32 %218, %213
  %228 = xor i32 %227, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %27, align 1, !tbaa !2447
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %30, align 1, !tbaa !2448
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %33, align 1, !tbaa !2449
  %236 = lshr i32 %213, 31
  %237 = lshr i32 %218, 31
  %238 = xor i32 %237, %236
  %239 = xor i32 %234, %236
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %39, align 1, !tbaa !2450
  %243 = icmp ne i8 %235, 0
  %244 = xor i1 %243, %241
  %.v = select i1 %244, i64 12, i64 84
  %245 = add i64 %208, %.v
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  br i1 %244, label %block_400c75, label %block_400cbd
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007b0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %13 = tail call %struct.Memory* @sub_400740_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ce0_recSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400ce0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %20 = add i64 %9, -12
  %21 = load i32, i32* %EDI, align 4
  %22 = add i64 %12, 10
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -8
  %26 = load i32, i32* %ESI, align 4
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* %PC, align 8
  %31 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  store i8 0, i8* %14, align 1, !tbaa !2432
  %32 = and i32 %31, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #9
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  store i8 %36, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %37 = icmp eq i32 %31, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %17, align 1, !tbaa !2448
  %39 = lshr i32 %31, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v = select i1 %37, i64 19, i64 14
  %41 = add i64 %30, %.v
  store i64 %41, i64* %PC, align 8, !tbaa !2428
  br i1 %37, label %block_400d01, label %block_400cfc

block_400deb:                                     ; preds = %block_400d01
  %42 = add i64 %1369, -12
  %43 = add i64 %1400, 7
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400df2

block_400ffe:                                     ; preds = %block_400df2
  %46 = add i64 %100, 5
  br label %block_401003

block_400ef4:                                     ; preds = %block_400eea
  %47 = add i64 %158, 4
  store i64 %47, i64* %PC, align 8
  %48 = load i32, i32* %135, align 4
  %49 = add i32 %48, -2
  %50 = icmp ult i32 %48, 2
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %14, align 1, !tbaa !2432
  %52 = and i32 %49, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %15, align 1, !tbaa !2446
  %57 = xor i32 %49, %48
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, i8* %16, align 1, !tbaa !2447
  %61 = icmp eq i32 %49, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %17, align 1, !tbaa !2448
  %63 = lshr i32 %49, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %18, align 1, !tbaa !2449
  %65 = lshr i32 %48, 31
  %66 = xor i32 %63, %65
  %67 = add nuw nsw i32 %66, %65
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %19, align 1, !tbaa !2450
  %.v54 = select i1 %61, i64 10, i64 40
  %70 = add i64 %158, %.v54
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  br i1 %61, label %block_400efe, label %block_400f1c

block_400df2:                                     ; preds = %block_400feb, %block_400deb
  %71 = phi i64 [ %.pre, %block_400deb ], [ %130, %block_400feb ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400deb ], [ %MEMORY.14, %block_400feb ]
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -12
  %74 = add i64 %71, 4
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, -4
  %78 = icmp ult i32 %76, 4
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %14, align 1, !tbaa !2432
  %80 = and i32 %77, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80) #9
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %15, align 1, !tbaa !2446
  %85 = xor i32 %77, %76
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %16, align 1, !tbaa !2447
  %89 = icmp eq i32 %77, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %17, align 1, !tbaa !2448
  %91 = lshr i32 %77, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %18, align 1, !tbaa !2449
  %93 = lshr i32 %76, 31
  %94 = xor i32 %91, %93
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %19, align 1, !tbaa !2450
  %98 = icmp ne i8 %92, 0
  %99 = xor i1 %98, %96
  %.demorgan = or i1 %89, %99
  %.v43 = select i1 %.demorgan, i64 10, i64 524
  %100 = add i64 %71, %.v43
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400dfc, label %block_400ffe

block_400feb:                                     ; preds = %block_400e03
  %101 = add i64 %1303, -12
  %102 = add i64 %1343, 8
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RAX, align 8, !tbaa !2428
  %107 = icmp eq i32 %104, -1
  %108 = icmp eq i32 %105, 0
  %109 = or i1 %107, %108
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %14, align 1, !tbaa !2432
  %111 = and i32 %105, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #9
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %15, align 1, !tbaa !2446
  %116 = xor i32 %105, %104
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %16, align 1, !tbaa !2447
  %120 = zext i1 %108 to i8
  store i8 %120, i8* %17, align 1, !tbaa !2448
  %121 = lshr i32 %105, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %18, align 1, !tbaa !2449
  %123 = lshr i32 %104, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %121
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %19, align 1, !tbaa !2450
  %128 = add i64 %1343, 14
  store i64 %128, i64* %PC, align 8
  store i32 %105, i32* %103, align 4
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, -519
  store i64 %130, i64* %PC, align 8, !tbaa !2428
  br label %block_400df2

block_400eea:                                     ; preds = %block_400ecb, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eea_crit_edge
  %131 = phi i64 [ %349, %block_400ecb ], [ %325, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eea_crit_edge ]
  %132 = phi i64 [ %231, %block_400ecb ], [ %.pre35, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eea_crit_edge ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.6, %block_400ecb ], [ %315, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eea_crit_edge ]
  %133 = add i64 %132, -12
  %134 = add i64 %131, 4
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, -4
  %138 = icmp ult i32 %136, 4
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %14, align 1, !tbaa !2432
  %140 = and i32 %137, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #9
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %15, align 1, !tbaa !2446
  %145 = xor i32 %137, %136
  %146 = lshr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %16, align 1, !tbaa !2447
  %149 = icmp eq i32 %137, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %17, align 1, !tbaa !2448
  %151 = lshr i32 %137, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %18, align 1, !tbaa !2449
  %153 = lshr i32 %136, 31
  %154 = xor i32 %151, %153
  %155 = add nuw nsw i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %19, align 1, !tbaa !2450
  %.v53 = select i1 %149, i64 20, i64 10
  %158 = add i64 %131, %.v53
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  br i1 %149, label %block_400efe, label %block_400ef4

block_400efe:                                     ; preds = %block_400ef4, %block_400eea
  %159 = phi i64 [ %158, %block_400eea ], [ %70, %block_400ef4 ]
  %160 = add i64 %132, -28
  %161 = add i64 %159, 3
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  %165 = add i64 %132, -32
  %166 = add i64 %159, 6
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = sub i32 %163, %168
  %170 = icmp ult i32 %163, %168
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %14, align 1, !tbaa !2432
  %172 = and i32 %169, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #9
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %15, align 1, !tbaa !2446
  %177 = xor i32 %168, %163
  %178 = xor i32 %177, %169
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %16, align 1, !tbaa !2447
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %17, align 1, !tbaa !2448
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %18, align 1, !tbaa !2449
  %186 = lshr i32 %163, 31
  %187 = lshr i32 %168, 31
  %188 = xor i32 %187, %186
  %189 = xor i32 %184, %186
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %19, align 1, !tbaa !2450
  %193 = icmp ne i8 %185, 0
  %194 = xor i1 %193, %191
  %.v55 = select i1 %194, i64 12, i64 30
  %195 = add i64 %159, %.v55
  store i64 %195, i64* %PC, align 8, !tbaa !2428
  br i1 %194, label %block_400f0a, label %block_400f1c

block_400dfc:                                     ; preds = %block_400df2
  %196 = add i64 %72, -20
  %197 = add i64 %100, 7
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i32*
  store i32 0, i32* %198, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400e03

block_400de6:                                     ; preds = %block_400d22, %block_400de1
  %199 = phi i64 [ %678, %block_400d22 ], [ %351, %block_400de1 ]
  %MEMORY.3 = phi %struct.Memory* [ %643, %block_400d22 ], [ %MEMORY.5, %block_400de1 ]
  %200 = add i64 %199, 541
  br label %block_401003

block_400e61:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
  %201 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = add i64 %511, 12
  store i64 %202, i64* %PC, align 8
  %203 = load i32, i32* %375, align 4
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %RCX, align 8, !tbaa !2428
  %205 = shl nsw i64 %204, 2
  %206 = add i64 %205, %201
  %207 = add i64 %511, 15
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RDX, align 8, !tbaa !2428
  %211 = add i64 %367, -28
  %212 = add i64 %511, 18
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i32*
  store i32 %209, i32* %213, align 4
  %214 = load i64, i64* %PC, align 8
  %215 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -24
  %218 = add i64 %214, 12
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  store i64 %221, i64* %RCX, align 8, !tbaa !2428
  %222 = shl nsw i64 %221, 2
  %223 = add i64 %222, %215
  %224 = add i64 %214, 15
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RDX, align 8, !tbaa !2428
  %228 = add i64 %216, -32
  %229 = add i64 %214, 18
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 %226, i32* %230, align 4
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -12
  %233 = load i64, i64* %PC, align 8
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = add i32 %236, -3
  %238 = icmp ult i32 %236, 3
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %14, align 1, !tbaa !2432
  %240 = and i32 %237, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #9
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %15, align 1, !tbaa !2446
  %245 = xor i32 %237, %236
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %16, align 1, !tbaa !2447
  %249 = icmp eq i32 %237, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %17, align 1, !tbaa !2448
  %251 = lshr i32 %237, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %18, align 1, !tbaa !2449
  %253 = lshr i32 %236, 31
  %254 = xor i32 %251, %253
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %19, align 1, !tbaa !2450
  %.v48 = select i1 %249, i64 20, i64 10
  %258 = add i64 %233, %.v48
  store i64 %258, i64* %PC, align 8, !tbaa !2428
  br i1 %249, label %block_400e99, label %block_400e8f

block_400fdd.loopexit:                            ; preds = %block_400e3a
  %259 = add i64 %403, 5
  br label %block_400fdd

block_400fdd:                                     ; preds = %block_400fdd.loopexit, %block_400e2e
  %260 = phi i64 [ %1303, %block_400e2e ], [ %367, %block_400fdd.loopexit ]
  %.sink4 = phi i64 [ %1301, %block_400e2e ], [ %259, %block_400fdd.loopexit ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.14, %block_400e2e ], [ %MEMORY.6, %block_400fdd.loopexit ]
  %261 = add i64 %260, -20
  %262 = add i64 %.sink4, 3
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
  store i8 %270, i8* %14, align 1, !tbaa !2432
  %271 = and i32 %265, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #9
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %15, align 1, !tbaa !2446
  %276 = xor i32 %265, %264
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %16, align 1, !tbaa !2447
  %280 = zext i1 %268 to i8
  store i8 %280, i8* %17, align 1, !tbaa !2448
  %281 = lshr i32 %265, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %18, align 1, !tbaa !2449
  %283 = lshr i32 %264, 31
  %284 = xor i32 %281, %283
  %285 = add nuw nsw i32 %284, %281
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %19, align 1, !tbaa !2450
  %288 = add i64 %.sink4, 9
  store i64 %288, i64* %PC, align 8
  store i32 %265, i32* %263, align 4
  %289 = load i64, i64* %PC, align 8
  %290 = add i64 %289, -483
  store i64 %290, i64* %PC, align 8, !tbaa !2428
  br label %block_400e03

block_400cfc:                                     ; preds = %block_400ce0
  %291 = add i64 %41, 775
  br label %block_401003

block_400ed5:                                     ; preds = %block_400ecb
  %292 = add i64 %349, 3
  store i64 %292, i64* %PC, align 8
  %293 = load i32, i32* %.pre-phi41, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = sext i32 %293 to i64
  %296 = lshr i64 %295, 32
  store i64 %296, i64* %45, align 8, !tbaa !2428
  %297 = add i64 %349, 7
  store i64 %297, i64* %PC, align 8
  %298 = load i32, i32* %354, align 4
  %299 = sext i32 %298 to i64
  %300 = shl nuw i64 %296, 32
  %301 = or i64 %300, %294
  %302 = sdiv i64 %301, %299
  %303 = shl i64 %302, 32
  %304 = ashr exact i64 %303, 32
  %305 = icmp eq i64 %302, %304
  br i1 %305, label %308, label %306

; <label>:306:                                    ; preds = %block_400ed5
  %307 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %297, %struct.Memory* %MEMORY.6) #12
  %.pre33 = load i32, i32* %EDX, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:308:                                    ; preds = %block_400ed5
  %309 = srem i64 %301, %299
  %310 = and i64 %302, 4294967295
  store i64 %310, i64* %RAX, align 8, !tbaa !2428
  %311 = and i64 %309, 4294967295
  store i64 %311, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 0, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %312 = trunc i64 %309 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %308, %306
  %313 = phi i64 [ %.pre34, %306 ], [ %297, %308 ]
  %314 = phi i32 [ %.pre33, %306 ], [ %312, %308 ]
  %315 = phi %struct.Memory* [ %307, %306 ], [ %MEMORY.6, %308 ]
  store i8 0, i8* %14, align 1, !tbaa !2432
  %316 = and i32 %314, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #9
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %321 = icmp eq i32 %314, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %17, align 1, !tbaa !2448
  %323 = lshr i32 %314, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v56 = select i1 %321, i64 14, i64 9
  %325 = add i64 %313, %.v56
  store i64 %325, i64* %PC, align 8, !tbaa !2428
  br i1 %321, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eea_crit_edge, label %block_400ee5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eea_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %.pre35 = load i64, i64* %RBP, align 8
  br label %block_400eea

block_400ecb:                                     ; preds = %block_400ebc
  %326 = add i64 %365, 4
  store i64 %326, i64* %PC, align 8
  %327 = load i32, i32* %235, align 4
  %328 = add i32 %327, -4
  %329 = icmp ult i32 %327, 4
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %14, align 1, !tbaa !2432
  %331 = and i32 %328, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #9
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %15, align 1, !tbaa !2446
  %336 = xor i32 %328, %327
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %16, align 1, !tbaa !2447
  %340 = icmp eq i32 %328, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %17, align 1, !tbaa !2448
  %342 = lshr i32 %328, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %18, align 1, !tbaa !2449
  %344 = lshr i32 %327, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %19, align 1, !tbaa !2450
  %.v52 = select i1 %340, i64 10, i64 31
  %349 = add i64 %365, %.v52
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  br i1 %340, label %block_400ed5, label %block_400eea

block_400de1:                                     ; preds = %block_400d6e, %block_400dc6
  %350 = phi i64 [ %761, %block_400d6e ], [ %466, %block_400dc6 ]
  %MEMORY.5 = phi %struct.Memory* [ %732, %block_400d6e ], [ %464, %block_400dc6 ]
  %351 = add i64 %350, 5
  store i64 %351, i64* %PC, align 8, !tbaa !2428
  br label %block_400de6

block_400ebc:                                     ; preds = %block_400eb2
  %352 = add i64 %231, -32
  %353 = add i64 %417, 4
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %356 = and i32 %355, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356) #9
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %361 = icmp eq i32 %355, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %17, align 1, !tbaa !2448
  %363 = lshr i32 %355, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v51 = select i1 %361, i64 10, i64 15
  %365 = add i64 %417, %.v51
  store i64 %365, i64* %PC, align 8, !tbaa !2428
  br i1 %361, label %block_400ec6, label %block_400ecb

block_400e3a:                                     ; preds = %block_400e33, %block_400fca
  %366 = phi i64 [ %.pre32, %block_400e33 ], [ %451, %block_400fca ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.14, %block_400e33 ], [ %MEMORY.9, %block_400fca ]
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -24
  %369 = add i64 %366, 3
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX, align 8, !tbaa !2428
  %373 = add i64 %367, -20
  %374 = add i64 %366, 6
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sub i32 %371, %376
  %378 = icmp ult i32 %371, %376
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1, !tbaa !2432
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380) #9
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %15, align 1, !tbaa !2446
  %385 = xor i32 %376, %371
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %16, align 1, !tbaa !2447
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %17, align 1, !tbaa !2448
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %18, align 1, !tbaa !2449
  %394 = lshr i32 %371, 31
  %395 = lshr i32 %376, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %392, %394
  %398 = add nuw nsw i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %19, align 1, !tbaa !2450
  %401 = icmp ne i8 %393, 0
  %402 = xor i1 %401, %399
  %.v46 = select i1 %402, i64 12, i64 414
  %403 = add i64 %366, %.v46
  store i64 %403, i64* %PC, align 8, !tbaa !2428
  br i1 %402, label %block_400e46, label %block_400fdd.loopexit

block_400e5c:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
  %404 = add i64 %511, 366
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  br label %block_400fca

block_400eb2:                                     ; preds = %block_400ea3, %block_400e8f.block_400eb2_crit_edge
  %.pre-phi41 = phi i32* [ %.pre40, %block_400e8f.block_400eb2_crit_edge ], [ %1146, %block_400ea3 ]
  %405 = phi i64 [ %1239, %block_400e8f.block_400eb2_crit_edge ], [ %537, %block_400ea3 ]
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC, align 8
  %407 = load i32, i32* %.pre-phi41, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %408 = and i32 %407, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408) #9
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %413 = icmp eq i32 %407, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %17, align 1, !tbaa !2448
  %415 = lshr i32 %407, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v50 = select i1 %413, i64 20, i64 10
  %417 = add i64 %405, %.v50
  store i64 %417, i64* %PC, align 8, !tbaa !2428
  br i1 %413, label %block_400ec6, label %block_400ebc

block_400ead:                                     ; preds = %block_400ea3, %block_400e99
  %418 = phi i64 [ %1169, %block_400e99 ], [ %537, %block_400ea3 ]
  %419 = add i64 %418, 285
  store i64 %419, i64* %PC, align 8, !tbaa !2428
  br label %block_400fca

block_400fca:                                     ; preds = %block_400ee5, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1, %block_400ec6, %block_400ead, %block_400e5c
  %420 = phi i64 [ %419, %block_400ead ], [ %763, %block_400ec6 ], [ %.pre38, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %1215, %block_400ee5 ], [ %404, %block_400e5c ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_400ead ], [ %MEMORY.6, %block_400ec6 ], [ %1142, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %315, %block_400ee5 ], [ %MEMORY.6, %block_400e5c ]
  %421 = load i64, i64* %RBP, align 8
  %422 = add i64 %421, -24
  %423 = add i64 %420, 3
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %425, 1
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = icmp eq i32 %425, -1
  %429 = icmp eq i32 %426, 0
  %430 = or i1 %428, %429
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %14, align 1, !tbaa !2432
  %432 = and i32 %426, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432) #9
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %15, align 1, !tbaa !2446
  %437 = xor i32 %426, %425
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %16, align 1, !tbaa !2447
  %441 = zext i1 %429 to i8
  store i8 %441, i8* %17, align 1, !tbaa !2448
  %442 = lshr i32 %426, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %18, align 1, !tbaa !2449
  %444 = lshr i32 %425, 31
  %445 = xor i32 %442, %444
  %446 = add nuw nsw i32 %445, %442
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %19, align 1, !tbaa !2450
  %449 = add i64 %420, 9
  store i64 %449, i64* %PC, align 8
  store i32 %426, i32* %424, align 4
  %450 = load i64, i64* %PC, align 8
  %451 = add i64 %450, -409
  store i64 %451, i64* %PC, align 8, !tbaa !2428
  br label %block_400e3a

block_400dc6:                                     ; preds = %block_400d6e
  %452 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %452, i64* %RDI, align 8, !tbaa !2428
  %453 = load i64, i64* %RBP, align 8
  %454 = add i64 %453, -4
  %455 = add i64 %761, 11
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RSI, align 8, !tbaa !2428
  %459 = add i64 %761, -838
  %460 = add i64 %761, 16
  %461 = load i64, i64* %RSP, align 8, !tbaa !2428
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %460, i64* %463, align 8
  store i64 %462, i64* %RSP, align 8, !tbaa !2428
  store i64 %459, i64* %PC, align 8, !tbaa !2428
  %464 = tail call %struct.Memory* @sub_400a80_printSolution(%struct.State* nonnull %0, i64 %459, %struct.Memory* %732)
  %465 = load i64, i64* %PC, align 8
  %466 = add i64 %465, 11
  store i64 %466, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  br label %block_400de1

block_400e46:                                     ; preds = %block_400e3a
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %467 = add i64 %403, 8
  store i64 %467, i64* %PC, align 8
  %468 = load i32, i32* %370, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = add i64 %403, 10
  store i64 %470, i64* %PC, align 8
  %471 = trunc i32 %468 to i5
  switch i5 %471, label %472 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
    i5 1, label %481
  ]

; <label>:472:                                    ; preds = %block_400e46
  %473 = and i32 %468, 31
  %474 = zext i32 %473 to i64
  %475 = add nuw nsw i64 %474, 4294967295
  %476 = and i64 %475, 4294967295
  %477 = shl i64 1, %476
  %478 = trunc i64 %477 to i32
  %479 = icmp slt i32 %478, 0
  %480 = shl i32 %478, 1
  br label %481

; <label>:481:                                    ; preds = %block_400e46, %472
  %482 = phi i1 [ %479, %472 ], [ false, %block_400e46 ]
  %483 = phi i32 [ %480, %472 ], [ 2, %block_400e46 ]
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RAX, align 8, !tbaa !2428
  %485 = zext i1 %482 to i8
  store i8 %485, i8* %14, align 1, !tbaa !2451
  %486 = and i32 %483, 254
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486) #9
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %491 = icmp eq i32 %483, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %17, align 1, !tbaa !2451
  %493 = lshr i32 %483, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3: ; preds = %481, %block_400e46
  %495 = phi i32 [ %483, %481 ], [ 1, %block_400e46 ]
  %496 = add i64 %367, -8
  %497 = add i64 %403, 13
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = and i32 %499, %495
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX, align 8, !tbaa !2428
  %502 = and i32 %500, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502) #9
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  %507 = icmp eq i32 %500, 0
  %508 = zext i1 %507 to i8
  %509 = lshr i32 %500, 31
  %510 = trunc i32 %509 to i8
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %506, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 %508, i8* %17, align 1, !tbaa !2448
  store i8 %510, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v47 = select i1 %507, i64 27, i64 22
  %511 = add i64 %403, %.v47
  store i64 %511, i64* %PC, align 8, !tbaa !2428
  br i1 %507, label %block_400e61, label %block_400e5c

block_400ea3:                                     ; preds = %block_400e99
  %512 = add i64 %231, -32
  %513 = add i64 %1169, 4
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = add i32 %515, -1
  %517 = icmp eq i32 %515, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %14, align 1, !tbaa !2432
  %519 = and i32 %516, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519) #9
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %15, align 1, !tbaa !2446
  %524 = xor i32 %516, %515
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %16, align 1, !tbaa !2447
  %528 = icmp eq i32 %516, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %17, align 1, !tbaa !2448
  %530 = lshr i32 %516, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %18, align 1, !tbaa !2449
  %532 = lshr i32 %515, 31
  %533 = xor i32 %530, %532
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %19, align 1, !tbaa !2450
  %.v58 = select i1 %528, i64 10, i64 15
  %537 = add i64 %1169, %.v58
  store i64 %537, i64* %PC, align 8, !tbaa !2428
  br i1 %528, label %block_400ead, label %block_400eb2

block_400d22:                                     ; preds = %block_400d01
  %538 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %538, i64* %RAX, align 8, !tbaa !2428
  %539 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RCX, align 8, !tbaa !2428
  %541 = add i64 %1400, 18
  store i64 %541, i64* %PC, align 8
  %542 = load i32, i32* %1372, align 4
  %543 = add i32 %542, %539
  %544 = icmp eq i32 %543, 0
  %545 = zext i1 %544 to i8
  %546 = lshr i32 %543, 31
  %547 = add i32 %543, -1
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  store i8 %545, i8* %14, align 1, !tbaa !2432
  %549 = and i32 %547, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549) #9
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %15, align 1, !tbaa !2446
  %554 = xor i32 %547, %543
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %16, align 1, !tbaa !2447
  %558 = icmp eq i32 %547, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %17, align 1, !tbaa !2448
  %560 = lshr i32 %547, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %18, align 1, !tbaa !2449
  %562 = xor i32 %560, %546
  %563 = add nuw nsw i32 %562, %546
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %19, align 1, !tbaa !2450
  %566 = sext i32 %547 to i64
  store i64 %566, i64* %RDX, align 8, !tbaa !2428
  %567 = shl nsw i64 %566, 2
  %568 = add i64 %538, %567
  %569 = add i64 %1400, 27
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %573 = sub i32 %571, %572
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RCX, align 8, !tbaa !2428
  %575 = icmp ult i32 %571, %572
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %14, align 1, !tbaa !2432
  %577 = and i32 %573, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577) #9
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %15, align 1, !tbaa !2446
  %582 = xor i32 %572, %571
  %583 = xor i32 %582, %573
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %16, align 1, !tbaa !2447
  %587 = icmp eq i32 %573, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %17, align 1, !tbaa !2448
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %18, align 1, !tbaa !2449
  %591 = lshr i32 %571, 31
  %592 = lshr i32 %572, 31
  %593 = xor i32 %592, %591
  %594 = xor i32 %589, %591
  %595 = add nuw nsw i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %19, align 1, !tbaa !2450
  store i64 %574, i64* %RDI, align 8, !tbaa !2428
  %598 = add i64 %1400, -1730
  %599 = add i64 %1400, 41
  %600 = load i64, i64* %RSP, align 8, !tbaa !2428
  %601 = add i64 %600, -8
  %602 = inttoptr i64 %601 to i64*
  store i64 %599, i64* %602, align 8
  store i64 %601, i64* %RSP, align 8, !tbaa !2428
  store i64 %598, i64* %PC, align 8, !tbaa !2428
  %603 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %2)
  %604 = load i64, i64* %PC, align 8
  %605 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %606 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %607 = sub i32 %605, %606
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RCX, align 8, !tbaa !2428
  %609 = icmp ult i32 %605, %606
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %14, align 1, !tbaa !2432
  %611 = and i32 %607, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611) #9
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %15, align 1, !tbaa !2446
  %616 = xor i32 %606, %605
  %617 = xor i32 %616, %607
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %16, align 1, !tbaa !2447
  %621 = icmp eq i32 %607, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %17, align 1, !tbaa !2448
  %623 = lshr i32 %607, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %18, align 1, !tbaa !2449
  %625 = lshr i32 %605, 31
  %626 = lshr i32 %606, 31
  %627 = xor i32 %626, %625
  %628 = xor i32 %623, %625
  %629 = add nuw nsw i32 %628, %627
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %19, align 1, !tbaa !2450
  store i64 %608, i64* %RDI, align 8, !tbaa !2428
  %632 = load i64, i64* %RBP, align 8
  %633 = add i64 %632, -40
  %634 = load i32, i32* %EAX, align 4
  %635 = add i64 %604, 19
  store i64 %635, i64* %PC, align 8
  %636 = inttoptr i64 %633 to i32*
  store i32 %634, i32* %636, align 4
  %637 = load i64, i64* %PC, align 8
  %638 = add i64 %637, -1790
  %639 = add i64 %637, 5
  %640 = load i64, i64* %RSP, align 8, !tbaa !2428
  %641 = add i64 %640, -8
  %642 = inttoptr i64 %641 to i64*
  store i64 %639, i64* %642, align 8
  store i64 %641, i64* %RSP, align 8, !tbaa !2428
  store i64 %638, i64* %PC, align 8, !tbaa !2428
  %643 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %603)
  %644 = load i64, i64* %RBP, align 8
  %645 = add i64 %644, -40
  %646 = load i64, i64* %PC, align 8
  %647 = add i64 %646, 3
  store i64 %647, i64* %PC, align 8
  %648 = inttoptr i64 %645 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RCX, align 8, !tbaa !2428
  %651 = load i32, i32* %EAX, align 4
  %652 = sub i32 %649, %651
  %653 = icmp ult i32 %649, %651
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %14, align 1, !tbaa !2432
  %655 = and i32 %652, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655) #9
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %15, align 1, !tbaa !2446
  %660 = xor i32 %651, %649
  %661 = xor i32 %660, %652
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %16, align 1, !tbaa !2447
  %665 = icmp eq i32 %652, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %17, align 1, !tbaa !2448
  %667 = lshr i32 %652, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %18, align 1, !tbaa !2449
  %669 = lshr i32 %649, 31
  %670 = lshr i32 %651, 31
  %671 = xor i32 %670, %669
  %672 = xor i32 %667, %669
  %673 = add nuw nsw i32 %672, %671
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %19, align 1, !tbaa !2450
  %676 = icmp ne i8 %668, 0
  %677 = xor i1 %676, %674
  %.v59 = select i1 %677, i64 11, i64 131
  %678 = add i64 %646, %.v59
  store i64 %678, i64* %PC, align 8, !tbaa !2428
  br i1 %677, label %block_400d6e, label %block_400de6

block_400d6e:                                     ; preds = %block_400d22
  %679 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %679, i64* %RAX, align 8, !tbaa !2428
  %680 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RCX, align 8, !tbaa !2428
  %682 = add i64 %644, -4
  %683 = add i64 %678, 18
  store i64 %683, i64* %PC, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = add i32 %685, %680
  %687 = icmp eq i32 %686, 0
  %688 = zext i1 %687 to i8
  %689 = lshr i32 %686, 31
  %690 = add i32 %686, -1
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RCX, align 8, !tbaa !2428
  store i8 %688, i8* %14, align 1, !tbaa !2432
  %692 = and i32 %690, 255
  %693 = tail call i32 @llvm.ctpop.i32(i32 %692) #9
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  store i8 %696, i8* %15, align 1, !tbaa !2446
  %697 = xor i32 %690, %686
  %698 = lshr i32 %697, 4
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  store i8 %700, i8* %16, align 1, !tbaa !2447
  %701 = icmp eq i32 %690, 0
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %17, align 1, !tbaa !2448
  %703 = lshr i32 %690, 31
  %704 = trunc i32 %703 to i8
  store i8 %704, i8* %18, align 1, !tbaa !2449
  %705 = xor i32 %703, %689
  %706 = add nuw nsw i32 %705, %689
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %19, align 1, !tbaa !2450
  %709 = sext i32 %690 to i64
  store i64 %709, i64* %RDX, align 8, !tbaa !2428
  %710 = shl nsw i64 %709, 2
  %711 = add i64 %679, %710
  %712 = add i64 %678, 27
  store i64 %712, i64* %PC, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RCX, align 8, !tbaa !2428
  store i32 %714, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %716 = add i64 %678, 37
  store i64 %716, i64* %PC, align 8
  %717 = load i32, i32* %684, align 4
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RCX, align 8, !tbaa !2428
  store i32 %717, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 84) to i32*), align 4
  %719 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %719, i64* %RDI, align 8, !tbaa !2428
  %720 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %720, i64* %RSI, align 8, !tbaa !2428
  %721 = load i64, i64* %RBP, align 8
  %722 = add i64 %721, -4
  %723 = add i64 %678, 63
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RDX, align 8, !tbaa !2428
  %727 = add i64 %678, -1102
  %728 = add i64 %678, 68
  %729 = load i64, i64* %RSP, align 8, !tbaa !2428
  %730 = add i64 %729, -8
  %731 = inttoptr i64 %730 to i64*
  store i64 %728, i64* %731, align 8
  store i64 %730, i64* %RSP, align 8, !tbaa !2428
  store i64 %727, i64* %PC, align 8, !tbaa !2428
  %732 = tail call %struct.Memory* @sub_400920_saveSolution(%struct.State* nonnull %0, i64 %727, %struct.Memory* %643)
  %733 = load i64, i64* %PC, align 8
  %734 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RCX, align 8, !tbaa !2428
  %736 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %737 = sub i32 %734, %736
  %738 = icmp ult i32 %734, %736
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %14, align 1, !tbaa !2432
  %740 = and i32 %737, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740) #9
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %15, align 1, !tbaa !2446
  %745 = xor i32 %736, %734
  %746 = xor i32 %745, %737
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %16, align 1, !tbaa !2447
  %750 = icmp eq i32 %737, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %17, align 1, !tbaa !2448
  %752 = lshr i32 %737, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %18, align 1, !tbaa !2449
  %754 = lshr i32 %734, 31
  %755 = lshr i32 %736, 31
  %756 = xor i32 %755, %754
  %757 = xor i32 %752, %754
  %758 = add nuw nsw i32 %757, %756
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %19, align 1, !tbaa !2450
  %.v60 = select i1 %750, i64 20, i64 47
  %761 = add i64 %733, %.v60
  store i64 %761, i64* %PC, align 8, !tbaa !2428
  br i1 %750, label %block_400dc6, label %block_400de1

block_400ec6:                                     ; preds = %block_400ebc, %block_400eb2
  %762 = phi i64 [ %417, %block_400eb2 ], [ %365, %block_400ebc ]
  %763 = add i64 %762, 260
  store i64 %763, i64* %PC, align 8, !tbaa !2428
  br label %block_400fca

block_400f1c:                                     ; preds = %block_400ef4, %block_400efe, %block_400f0a
  %764 = phi i64 [ %132, %block_400efe ], [ %.pre37, %block_400f0a ], [ %132, %block_400ef4 ]
  %765 = phi i64 [ %195, %block_400efe ], [ %.pre36, %block_400f0a ], [ %70, %block_400ef4 ]
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %766 = add i64 %764, -8
  %767 = add i64 %765, 8
  store i64 %767, i64* %PC, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RCX, align 8, !tbaa !2428
  %771 = add i64 %764, -20
  %772 = add i64 %765, 11
  store i64 %772, i64* %PC, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RDX, align 8, !tbaa !2428
  %776 = add i64 %764, -44
  %777 = add i64 %765, 14
  store i64 %777, i64* %PC, align 8
  %778 = inttoptr i64 %776 to i32*
  store i32 %769, i32* %778, align 4
  %779 = load i32, i32* %EDX, align 4
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %PC, align 8
  store i64 %780, i64* %RCX, align 8, !tbaa !2428
  %782 = load i32, i32* %EAX, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RDX, align 8, !tbaa !2428
  %784 = add i64 %781, 6
  store i64 %784, i64* %PC, align 8
  %785 = trunc i32 %779 to i5
  switch i5 %785, label %791 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %786
  ]

; <label>:786:                                    ; preds = %block_400f1c
  %787 = shl i32 %782, 1
  %788 = icmp slt i32 %782, 0
  %789 = icmp slt i32 %787, 0
  %790 = xor i1 %788, %789
  br label %800

; <label>:791:                                    ; preds = %block_400f1c
  %792 = and i32 %779, 31
  %793 = zext i32 %792 to i64
  %794 = add nuw nsw i64 %793, 4294967295
  %795 = and i64 %794, 4294967295
  %796 = shl i64 %783, %795
  %797 = trunc i64 %796 to i32
  %798 = icmp slt i32 %797, 0
  %799 = shl i32 %797, 1
  br label %800

; <label>:800:                                    ; preds = %791, %786
  %801 = phi i1 [ %788, %786 ], [ %798, %791 ]
  %802 = phi i1 [ %790, %786 ], [ false, %791 ]
  %803 = phi i32 [ %787, %786 ], [ %799, %791 ]
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RDX, align 8, !tbaa !2428
  %805 = zext i1 %801 to i8
  store i8 %805, i8* %14, align 1, !tbaa !2451
  %806 = and i32 %803, 254
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806) #9
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %811 = icmp eq i32 %803, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %17, align 1, !tbaa !2451
  %813 = lshr i32 %803, 31
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %18, align 1, !tbaa !2451
  %815 = zext i1 %802 to i8
  store i8 %815, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %800, %block_400f1c
  %816 = phi i32 [ %803, %800 ], [ %782, %block_400f1c ]
  %817 = load i64, i64* %RBP, align 8
  %818 = add i64 %817, -44
  %819 = add i64 %781, 9
  store i64 %819, i64* %PC, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = or i32 %816, %821
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %824 = and i32 %822, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824) #9
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %15, align 1, !tbaa !2446
  %829 = icmp eq i32 %822, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %17, align 1, !tbaa !2448
  %831 = lshr i32 %822, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %833 = add i64 %817, -24
  %834 = add i64 %781, 14
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RCX, align 8, !tbaa !2428
  %838 = load i64, i64* %RAX, align 8
  %839 = add i64 %781, 16
  store i64 %839, i64* %PC, align 8
  %840 = trunc i32 %836 to i5
  %841 = trunc i64 %838 to i32
  switch i5 %840, label %847 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %842
  ]

; <label>:842:                                    ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %843 = shl i32 %841, 1
  %844 = icmp slt i32 %841, 0
  %845 = icmp slt i32 %843, 0
  %846 = xor i1 %844, %845
  br label %857

; <label>:847:                                    ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %848 = and i32 %836, 31
  %849 = zext i32 %848 to i64
  %850 = add nuw nsw i64 %849, 4294967295
  %851 = and i64 %838, 4294967295
  %852 = and i64 %850, 4294967295
  %853 = shl i64 %851, %852
  %854 = trunc i64 %853 to i32
  %855 = icmp slt i32 %854, 0
  %856 = shl i32 %854, 1
  br label %857

; <label>:857:                                    ; preds = %847, %842
  %858 = phi i1 [ %844, %842 ], [ %855, %847 ]
  %859 = phi i1 [ %846, %842 ], [ false, %847 ]
  %860 = phi i32 [ %843, %842 ], [ %856, %847 ]
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RAX, align 8, !tbaa !2428
  %862 = zext i1 %858 to i8
  store i8 %862, i8* %14, align 1, !tbaa !2451
  %863 = and i32 %860, 254
  %864 = tail call i32 @llvm.ctpop.i32(i32 %863) #9
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  store i8 %867, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %868 = icmp eq i32 %860, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %17, align 1, !tbaa !2451
  %870 = lshr i32 %860, 31
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %18, align 1, !tbaa !2451
  %872 = zext i1 %859 to i8
  store i8 %872, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %857, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %873 = phi i32 [ %860, %857 ], [ %841, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ]
  %874 = or i32 %873, %822
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %876 = and i32 %874, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876) #9
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %15, align 1, !tbaa !2446
  %881 = icmp eq i32 %874, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %17, align 1, !tbaa !2448
  %883 = lshr i32 %874, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %885 = add i64 %817, -16
  %886 = add i64 %781, 21
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to i32*
  store i32 %874, i32* %887, align 4
  %888 = load i64, i64* %RBP, align 8
  %889 = add i64 %888, -28
  %890 = load i64, i64* %PC, align 8
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC, align 8
  %892 = inttoptr i64 %889 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX, align 8, !tbaa !2428
  %895 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %895, i64* %RDI, align 8, !tbaa !2428
  %896 = add i64 %888, -4
  %897 = add i64 %890, 15
  store i64 %897, i64* %PC, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = sext i32 %899 to i64
  %901 = mul nsw i64 %900, 12
  store i64 %901, i64* %R8, align 8, !tbaa !2428
  %902 = lshr i64 %901, 63
  %903 = add i64 %901, %895
  store i64 %903, i64* %RDI, align 8, !tbaa !2428
  %904 = icmp ult i64 %903, %895
  %905 = icmp ult i64 %903, %901
  %906 = or i1 %904, %905
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %14, align 1, !tbaa !2432
  %908 = trunc i64 %903 to i32
  %909 = and i32 %908, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909) #9
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %15, align 1, !tbaa !2446
  %914 = xor i64 %901, %895
  %915 = xor i64 %914, %903
  %916 = lshr i64 %915, 4
  %917 = trunc i64 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %16, align 1, !tbaa !2447
  %919 = icmp eq i64 %903, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %17, align 1, !tbaa !2448
  %921 = lshr i64 %903, 63
  %922 = trunc i64 %921 to i8
  store i8 %922, i8* %18, align 1, !tbaa !2449
  %923 = lshr i64 %895, 63
  %924 = xor i64 %921, %923
  %925 = xor i64 %921, %902
  %926 = add nuw nsw i64 %924, %925
  %927 = icmp eq i64 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %19, align 1, !tbaa !2450
  %929 = inttoptr i64 %903 to i32*
  %930 = add i64 %890, 24
  store i64 %930, i64* %PC, align 8
  store i32 %893, i32* %929, align 4
  %931 = load i64, i64* %RBP, align 8
  %932 = add i64 %931, -32
  %933 = load i64, i64* %PC, align 8
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX, align 8, !tbaa !2428
  %938 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %938, i64* %RDI, align 8, !tbaa !2428
  %939 = add i64 %931, -4
  %940 = add i64 %933, 15
  store i64 %940, i64* %PC, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = sext i32 %942 to i64
  %944 = mul nsw i64 %943, 12
  store i64 %944, i64* %R8, align 8, !tbaa !2428
  %945 = lshr i64 %944, 63
  %946 = add i64 %944, %938
  store i64 %946, i64* %RDI, align 8, !tbaa !2428
  %947 = icmp ult i64 %946, %938
  %948 = icmp ult i64 %946, %944
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %14, align 1, !tbaa !2432
  %951 = trunc i64 %946 to i32
  %952 = and i32 %951, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952) #9
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %15, align 1, !tbaa !2446
  %957 = xor i64 %944, %938
  %958 = xor i64 %957, %946
  %959 = lshr i64 %958, 4
  %960 = trunc i64 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %16, align 1, !tbaa !2447
  %962 = icmp eq i64 %946, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %17, align 1, !tbaa !2448
  %964 = lshr i64 %946, 63
  %965 = trunc i64 %964 to i8
  store i8 %965, i8* %18, align 1, !tbaa !2449
  %966 = lshr i64 %938, 63
  %967 = xor i64 %964, %966
  %968 = xor i64 %964, %945
  %969 = add nuw nsw i64 %967, %968
  %970 = icmp eq i64 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %19, align 1, !tbaa !2450
  %972 = add i64 %946, 4
  %973 = add i64 %933, 25
  store i64 %973, i64* %PC, align 8
  %974 = inttoptr i64 %972 to i32*
  store i32 %936, i32* %974, align 4
  %975 = load i64, i64* %RBP, align 8
  %976 = add i64 %975, -12
  %977 = load i64, i64* %PC, align 8
  %978 = add i64 %977, 3
  store i64 %978, i64* %PC, align 8
  %979 = inttoptr i64 %976 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RAX, align 8, !tbaa !2428
  %982 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %982, i64* %RDI, align 8, !tbaa !2428
  %983 = add i64 %975, -4
  %984 = add i64 %977, 15
  store i64 %984, i64* %PC, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = sext i32 %986 to i64
  %988 = mul nsw i64 %987, 12
  store i64 %988, i64* %R8, align 8, !tbaa !2428
  %989 = lshr i64 %988, 63
  %990 = add i64 %988, %982
  %991 = icmp ult i64 %990, %982
  %992 = icmp ult i64 %990, %988
  %993 = or i1 %991, %992
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %14, align 1, !tbaa !2432
  %995 = trunc i64 %990 to i32
  %996 = and i32 %995, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996) #9
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %15, align 1, !tbaa !2446
  %1001 = xor i64 %988, %982
  %1002 = xor i64 %1001, %990
  %1003 = lshr i64 %1002, 4
  %1004 = trunc i64 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %16, align 1, !tbaa !2447
  %1006 = icmp eq i64 %990, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %17, align 1, !tbaa !2448
  %1008 = lshr i64 %990, 63
  %1009 = trunc i64 %1008 to i8
  store i8 %1009, i8* %18, align 1, !tbaa !2449
  %1010 = lshr i64 %982, 63
  %1011 = xor i64 %1008, %1010
  %1012 = xor i64 %1008, %989
  %1013 = add nuw nsw i64 %1011, %1012
  %1014 = icmp eq i64 %1013, 2
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %19, align 1, !tbaa !2450
  %1016 = add i64 %990, 8
  %1017 = add i64 %977, 25
  store i64 %1017, i64* %PC, align 8
  %1018 = inttoptr i64 %1016 to i32*
  store i32 %980, i32* %1018, align 4
  %1019 = load i64, i64* %PC, align 8
  %1020 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %1020, i64* %RDI, align 8, !tbaa !2428
  %1021 = load i64, i64* %RBP, align 8
  %1022 = add i64 %1021, -4
  %1023 = add i64 %1019, 12
  store i64 %1023, i64* %PC, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = mul nsw i64 %1026, 12
  store i64 %1027, i64* %R8, align 8, !tbaa !2428
  %1028 = lshr i64 %1027, 63
  %1029 = add i64 %1027, %1020
  store i64 %1029, i64* %RDI, align 8, !tbaa !2428
  %1030 = icmp ult i64 %1029, %1020
  %1031 = icmp ult i64 %1029, %1027
  %1032 = or i1 %1030, %1031
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %14, align 1, !tbaa !2432
  %1034 = trunc i64 %1029 to i32
  %1035 = and i32 %1034, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035) #9
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %15, align 1, !tbaa !2446
  %1040 = xor i64 %1027, %1020
  %1041 = xor i64 %1040, %1029
  %1042 = lshr i64 %1041, 4
  %1043 = trunc i64 %1042 to i8
  %1044 = and i8 %1043, 1
  store i8 %1044, i8* %16, align 1, !tbaa !2447
  %1045 = icmp eq i64 %1029, 0
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %17, align 1, !tbaa !2448
  %1047 = lshr i64 %1029, 63
  %1048 = trunc i64 %1047 to i8
  store i8 %1048, i8* %18, align 1, !tbaa !2449
  %1049 = lshr i64 %1020, 63
  %1050 = xor i64 %1047, %1049
  %1051 = xor i64 %1047, %1028
  %1052 = add nuw nsw i64 %1050, %1051
  %1053 = icmp eq i64 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %19, align 1, !tbaa !2450
  %1055 = add i64 %1019, -1449
  %1056 = add i64 %1019, 24
  %1057 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1058 = add i64 %1057, -8
  %1059 = inttoptr i64 %1058 to i64*
  store i64 %1056, i64* %1059, align 8
  store i64 %1058, i64* %RSP, align 8, !tbaa !2428
  store i64 %1055, i64* %PC, align 8, !tbaa !2428
  %1060 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %1055, %struct.Memory* %MEMORY.1)
  %1061 = load i64, i64* %PC, align 8
  %1062 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %1062, i64* %RDI, align 8, !tbaa !2428
  %1063 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RDX, align 8, !tbaa !2428
  %1065 = load i64, i64* %RBP, align 8
  %1066 = add i64 %1065, -4
  %1067 = add i64 %1061, 18
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = add i32 %1069, %1063
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RDX, align 8, !tbaa !2428
  %1072 = icmp ult i32 %1070, %1063
  %1073 = icmp ult i32 %1070, %1069
  %1074 = or i1 %1072, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %14, align 1, !tbaa !2432
  %1076 = and i32 %1070, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076) #9
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %15, align 1, !tbaa !2446
  %1081 = xor i32 %1069, %1063
  %1082 = xor i32 %1081, %1070
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %16, align 1, !tbaa !2447
  %1086 = icmp eq i32 %1070, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %17, align 1, !tbaa !2448
  %1088 = lshr i32 %1070, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %18, align 1, !tbaa !2449
  %1090 = lshr i32 %1063, 31
  %1091 = lshr i32 %1069, 31
  %1092 = xor i32 %1088, %1090
  %1093 = xor i32 %1088, %1091
  %1094 = add nuw nsw i32 %1092, %1093
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %19, align 1, !tbaa !2450
  %1097 = sext i32 %1070 to i64
  store i64 %1097, i64* %R8, align 8, !tbaa !2428
  %1098 = shl nsw i64 %1097, 2
  %1099 = add i64 %1062, %1098
  %1100 = load i32, i32* %EAX, align 4
  %1101 = add i64 %1061, 25
  store i64 %1101, i64* %PC, align 8
  %1102 = inttoptr i64 %1099 to i32*
  store i32 %1100, i32* %1102, align 4
  %1103 = load i64, i64* %RBP, align 8
  %1104 = add i64 %1103, -4
  %1105 = load i64, i64* %PC, align 8
  %1106 = add i64 %1105, 3
  store i64 %1106, i64* %PC, align 8
  %1107 = inttoptr i64 %1104 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = add i32 %1108, 1
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RAX, align 8, !tbaa !2428
  %1111 = icmp eq i32 %1108, -1
  %1112 = icmp eq i32 %1109, 0
  %1113 = or i1 %1111, %1112
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %14, align 1, !tbaa !2432
  %1115 = and i32 %1109, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115) #9
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %15, align 1, !tbaa !2446
  %1120 = xor i32 %1109, %1108
  %1121 = lshr i32 %1120, 4
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  store i8 %1123, i8* %16, align 1, !tbaa !2447
  %1124 = zext i1 %1112 to i8
  store i8 %1124, i8* %17, align 1, !tbaa !2448
  %1125 = lshr i32 %1109, 31
  %1126 = trunc i32 %1125 to i8
  store i8 %1126, i8* %18, align 1, !tbaa !2449
  %1127 = lshr i32 %1108, 31
  %1128 = xor i32 %1125, %1127
  %1129 = add nuw nsw i32 %1128, %1125
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %19, align 1, !tbaa !2450
  %1132 = add i64 %1103, -16
  %1133 = add i64 %1105, 9
  store i64 %1133, i64* %PC, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RSI, align 8, !tbaa !2428
  store i64 %1110, i64* %RDI, align 8, !tbaa !2428
  %1137 = add i64 %1105, -730
  %1138 = add i64 %1105, 16
  %1139 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1140 = add i64 %1139, -8
  %1141 = inttoptr i64 %1140 to i64*
  store i64 %1138, i64* %1141, align 8
  store i64 %1140, i64* %RSP, align 8, !tbaa !2428
  store i64 %1137, i64* %PC, align 8, !tbaa !2428
  %1142 = tail call %struct.Memory* @sub_400ce0_recSearch(%struct.State* nonnull %0, i64 %1137, %struct.Memory* %1060)
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400fca

block_400e99:                                     ; preds = %block_400e8f, %block_400e61
  %1143 = phi i64 [ %1239, %block_400e8f ], [ %258, %block_400e61 ]
  %1144 = add i64 %231, -28
  %1145 = add i64 %1143, 4
  store i64 %1145, i64* %PC, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, -1
  %1149 = icmp eq i32 %1147, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %14, align 1, !tbaa !2432
  %1151 = and i32 %1148, 255
  %1152 = tail call i32 @llvm.ctpop.i32(i32 %1151) #9
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %15, align 1, !tbaa !2446
  %1156 = xor i32 %1148, %1147
  %1157 = lshr i32 %1156, 4
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %16, align 1, !tbaa !2447
  %1160 = icmp eq i32 %1148, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %17, align 1, !tbaa !2448
  %1162 = lshr i32 %1148, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %18, align 1, !tbaa !2449
  %1164 = lshr i32 %1147, 31
  %1165 = xor i32 %1162, %1164
  %1166 = add nuw nsw i32 %1165, %1164
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %19, align 1, !tbaa !2450
  %.v57 = select i1 %1160, i64 20, i64 10
  %1169 = add i64 %1143, %.v57
  store i64 %1169, i64* %PC, align 8, !tbaa !2428
  br i1 %1160, label %block_400ead, label %block_400ea3

block_400e18:                                     ; preds = %block_400e03
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %1170 = add i64 %1343, 8
  store i64 %1170, i64* %PC, align 8
  %1171 = load i32, i32* %1306, align 4
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RCX, align 8, !tbaa !2428
  %1173 = add i64 %1343, 10
  store i64 %1173, i64* %PC, align 8
  %1174 = trunc i32 %1171 to i5
  switch i5 %1174, label %1175 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %1184
  ]

; <label>:1175:                                   ; preds = %block_400e18
  %1176 = and i32 %1171, 31
  %1177 = zext i32 %1176 to i64
  %1178 = add nuw nsw i64 %1177, 4294967295
  %1179 = and i64 %1178, 4294967295
  %1180 = shl i64 1, %1179
  %1181 = trunc i64 %1180 to i32
  %1182 = icmp slt i32 %1181, 0
  %1183 = shl i32 %1181, 1
  br label %1184

; <label>:1184:                                   ; preds = %block_400e18, %1175
  %1185 = phi i1 [ %1182, %1175 ], [ false, %block_400e18 ]
  %1186 = phi i32 [ %1183, %1175 ], [ 2, %block_400e18 ]
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX, align 8, !tbaa !2428
  %1188 = zext i1 %1185 to i8
  store i8 %1188, i8* %14, align 1, !tbaa !2451
  %1189 = and i32 %1186, 254
  %1190 = tail call i32 @llvm.ctpop.i32(i32 %1189) #9
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  store i8 %1193, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %1194 = icmp eq i32 %1186, 0
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %17, align 1, !tbaa !2451
  %1196 = lshr i32 %1186, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %1184, %block_400e18
  %1198 = phi i32 [ %1186, %1184 ], [ 1, %block_400e18 ]
  %1199 = add i64 %1303, -8
  %1200 = add i64 %1343, 13
  store i64 %1200, i64* %PC, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = and i32 %1202, %1198
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RAX, align 8, !tbaa !2428
  %1205 = and i32 %1203, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205) #9
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  %1210 = icmp eq i32 %1203, 0
  %1211 = zext i1 %1210 to i8
  %1212 = lshr i32 %1203, 31
  %1213 = trunc i32 %1212 to i8
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %1209, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 %1211, i8* %17, align 1, !tbaa !2448
  store i8 %1213, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v45 = select i1 %1210, i64 27, i64 22
  %1214 = add i64 %1343, %.v45
  store i64 %1214, i64* %PC, align 8, !tbaa !2428
  br i1 %1210, label %block_400e33, label %block_400e2e

block_400ee5:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %1215 = add i64 %325, 229
  store i64 %1215, i64* %PC, align 8, !tbaa !2428
  br label %block_400fca

block_400e8f:                                     ; preds = %block_400e61
  %1216 = add i64 %258, 4
  store i64 %1216, i64* %PC, align 8
  %1217 = load i32, i32* %235, align 4
  %1218 = add i32 %1217, -4
  %1219 = icmp ult i32 %1217, 4
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %14, align 1, !tbaa !2432
  %1221 = and i32 %1218, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221) #9
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %15, align 1, !tbaa !2446
  %1226 = xor i32 %1218, %1217
  %1227 = lshr i32 %1226, 4
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  store i8 %1229, i8* %16, align 1, !tbaa !2447
  %1230 = icmp eq i32 %1218, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %17, align 1, !tbaa !2448
  %1232 = lshr i32 %1218, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %18, align 1, !tbaa !2449
  %1234 = lshr i32 %1217, 31
  %1235 = xor i32 %1232, %1234
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %19, align 1, !tbaa !2450
  %.v49 = select i1 %1230, i64 10, i64 35
  %1239 = add i64 %258, %.v49
  store i64 %1239, i64* %PC, align 8, !tbaa !2428
  br i1 %1230, label %block_400e99, label %block_400e8f.block_400eb2_crit_edge

block_400e8f.block_400eb2_crit_edge:              ; preds = %block_400e8f
  %.pre39 = add i64 %231, -28
  %.pre40 = inttoptr i64 %.pre39 to i32*
  br label %block_400eb2

block_400e33:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1240 = add i64 %1303, -24
  %1241 = add i64 %1214, 7
  store i64 %1241, i64* %PC, align 8
  %1242 = inttoptr i64 %1240 to i32*
  store i32 0, i32* %1242, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400e3a

block_400f0a:                                     ; preds = %block_400efe
  %1243 = add i64 %195, 3
  store i64 %1243, i64* %PC, align 8
  %1244 = load i32, i32* %162, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RAX, align 8, !tbaa !2428
  %1246 = add i64 %132, -36
  %1247 = add i64 %195, 6
  store i64 %1247, i64* %PC, align 8
  %1248 = inttoptr i64 %1246 to i32*
  store i32 %1244, i32* %1248, align 4
  %1249 = load i64, i64* %RBP, align 8
  %1250 = add i64 %1249, -32
  %1251 = load i64, i64* %PC, align 8
  %1252 = add i64 %1251, 3
  store i64 %1252, i64* %PC, align 8
  %1253 = inttoptr i64 %1250 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RAX, align 8, !tbaa !2428
  %1256 = add i64 %1249, -28
  %1257 = add i64 %1251, 6
  store i64 %1257, i64* %PC, align 8
  %1258 = inttoptr i64 %1256 to i32*
  store i32 %1254, i32* %1258, align 4
  %1259 = load i64, i64* %RBP, align 8
  %1260 = add i64 %1259, -36
  %1261 = load i64, i64* %PC, align 8
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %PC, align 8
  %1263 = inttoptr i64 %1260 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RAX, align 8, !tbaa !2428
  %1266 = add i64 %1259, -32
  %1267 = add i64 %1261, 6
  store i64 %1267, i64* %PC, align 8
  %1268 = inttoptr i64 %1266 to i32*
  store i32 %1264, i32* %1268, align 4
  %.pre36 = load i64, i64* %PC, align 8
  %.pre37 = load i64, i64* %RBP, align 8
  br label %block_400f1c

block_401003:                                     ; preds = %block_400cfc, %block_400de6, %block_400ffe
  %.sink = phi i64 [ %291, %block_400cfc ], [ %200, %block_400de6 ], [ %46, %block_400ffe ]
  %MEMORY.13 = phi %struct.Memory* [ %2, %block_400cfc ], [ %MEMORY.3, %block_400de6 ], [ %MEMORY.0, %block_400ffe ]
  %1269 = load i64, i64* %RSP, align 8
  %1270 = add i64 %1269, 48
  store i64 %1270, i64* %RSP, align 8, !tbaa !2428
  %1271 = icmp ugt i64 %1269, -49
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %14, align 1, !tbaa !2432
  %1273 = trunc i64 %1270 to i32
  %1274 = and i32 %1273, 255
  %1275 = tail call i32 @llvm.ctpop.i32(i32 %1274) #9
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  store i8 %1278, i8* %15, align 1, !tbaa !2446
  %1279 = xor i64 %1269, 16
  %1280 = xor i64 %1279, %1270
  %1281 = lshr i64 %1280, 4
  %1282 = trunc i64 %1281 to i8
  %1283 = and i8 %1282, 1
  store i8 %1283, i8* %16, align 1, !tbaa !2447
  %1284 = icmp eq i64 %1270, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %17, align 1, !tbaa !2448
  %1286 = lshr i64 %1270, 63
  %1287 = trunc i64 %1286 to i8
  store i8 %1287, i8* %18, align 1, !tbaa !2449
  %1288 = lshr i64 %1269, 63
  %1289 = xor i64 %1286, %1288
  %1290 = add nuw nsw i64 %1289, %1286
  %1291 = icmp eq i64 %1290, 2
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %19, align 1, !tbaa !2450
  %1293 = add i64 %.sink, 5
  store i64 %1293, i64* %PC, align 8
  %1294 = add i64 %1269, 56
  %1295 = inttoptr i64 %1270 to i64*
  %1296 = load i64, i64* %1295, align 8
  store i64 %1296, i64* %RBP, align 8, !tbaa !2428
  store i64 %1294, i64* %RSP, align 8, !tbaa !2428
  %1297 = add i64 %.sink, 6
  store i64 %1297, i64* %PC, align 8
  %1298 = inttoptr i64 %1294 to i64*
  %1299 = load i64, i64* %1298, align 8
  store i64 %1299, i64* %PC, align 8, !tbaa !2428
  %1300 = add i64 %1269, 64
  store i64 %1300, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.13

block_400e2e:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1301 = add i64 %1214, 431
  br label %block_400fdd

block_400e03:                                     ; preds = %block_400fdd, %block_400dfc
  %1302 = phi i64 [ %.pre31, %block_400dfc ], [ %290, %block_400fdd ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.0, %block_400dfc ], [ %MEMORY.4, %block_400fdd ]
  %1303 = load i64, i64* %RBP, align 8
  %1304 = add i64 %1303, -20
  %1305 = add i64 %1302, 3
  store i64 %1305, i64* %PC, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RAX, align 8, !tbaa !2428
  %1309 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RCX, align 8, !tbaa !2428
  %1311 = add i64 %1303, -4
  %1312 = add i64 %1302, 13
  store i64 %1312, i64* %PC, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = add i32 %1314, %1309
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RCX, align 8, !tbaa !2428
  %1317 = lshr i32 %1315, 31
  %1318 = sub i32 %1307, %1315
  %1319 = icmp ult i32 %1307, %1315
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %14, align 1, !tbaa !2432
  %1321 = and i32 %1318, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321) #9
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %15, align 1, !tbaa !2446
  %1326 = xor i32 %1315, %1307
  %1327 = xor i32 %1326, %1318
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %16, align 1, !tbaa !2447
  %1331 = icmp eq i32 %1318, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %17, align 1, !tbaa !2448
  %1333 = lshr i32 %1318, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %18, align 1, !tbaa !2449
  %1335 = lshr i32 %1307, 31
  %1336 = xor i32 %1317, %1335
  %1337 = xor i32 %1333, %1335
  %1338 = add nuw nsw i32 %1337, %1336
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %19, align 1, !tbaa !2450
  %1341 = icmp ne i8 %1334, 0
  %1342 = xor i1 %1341, %1339
  %.v44 = select i1 %1342, i64 21, i64 488
  %1343 = add i64 %1302, %.v44
  %1344 = add i64 %1343, 5
  store i64 %1344, i64* %PC, align 8
  br i1 %1342, label %block_400e18, label %block_400feb

block_400d01:                                     ; preds = %block_400ce0
  %1345 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %1346 = add i32 %1345, 1
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RAX, align 8, !tbaa !2428
  %1348 = icmp eq i32 %1345, -1
  %1349 = icmp eq i32 %1346, 0
  %1350 = or i1 %1348, %1349
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %14, align 1, !tbaa !2432
  %1352 = and i32 %1346, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352) #9
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %15, align 1, !tbaa !2446
  %1357 = xor i32 %1346, %1345
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %16, align 1, !tbaa !2447
  %1361 = zext i1 %1349 to i8
  store i8 %1361, i8* %17, align 1, !tbaa !2448
  %1362 = lshr i32 %1346, 31
  %1363 = trunc i32 %1362 to i8
  store i8 %1363, i8* %18, align 1, !tbaa !2449
  %1364 = lshr i32 %1345, 31
  %1365 = xor i32 %1362, %1364
  %1366 = add nuw nsw i32 %1365, %1362
  %1367 = icmp eq i32 %1366, 2
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %19, align 1, !tbaa !2450
  store i32 %1346, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %1369 = load i64, i64* %RBP, align 8
  %1370 = add i64 %1369, -4
  %1371 = add i64 %41, 20
  store i64 %1371, i64* %PC, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RAX, align 8, !tbaa !2428
  %1375 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %1376 = sub i32 %1373, %1375
  %1377 = icmp ult i32 %1373, %1375
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %14, align 1, !tbaa !2432
  %1379 = and i32 %1376, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379) #9
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %15, align 1, !tbaa !2446
  %1384 = xor i32 %1375, %1373
  %1385 = xor i32 %1384, %1376
  %1386 = lshr i32 %1385, 4
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  store i8 %1388, i8* %16, align 1, !tbaa !2447
  %1389 = icmp eq i32 %1376, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %17, align 1, !tbaa !2448
  %1391 = lshr i32 %1376, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %18, align 1, !tbaa !2449
  %1393 = lshr i32 %1373, 31
  %1394 = lshr i32 %1375, 31
  %1395 = xor i32 %1394, %1393
  %1396 = xor i32 %1391, %1393
  %1397 = add nuw nsw i32 %1396, %1395
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %19, align 1, !tbaa !2450
  %.v42 = select i1 %1389, i64 33, i64 234
  %1400 = add i64 %41, %.v42
  store i64 %1400, i64* %PC, align 8, !tbaa !2428
  br i1 %1389, label %block_400d22, label %block_400deb
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400740_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400740:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
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
  %10 = add i64 %8, -6299752
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
  br i1 %29, label %block_400778, label %block_400763

block_400778:                                     ; preds = %block_400763, %block_400740
  %34 = phi i64 [ %44, %block_400763 ], [ %33, %block_400740 ]
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC, align 8
  %36 = load i64, i64* %RSP, align 8, !tbaa !2428
  %37 = add i64 %36, 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %RBP, align 8, !tbaa !2428
  store i64 %37, i64* %RSP, align 8, !tbaa !2428
  %40 = add i64 %34, 2
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %37 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %43 = add i64 %36, 16
  store i64 %43, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400763:                                     ; preds = %block_400740
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400778
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4013a4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4013a4:
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
define %struct.Memory* @sub_400a3b(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400a3b:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = add i64 %1, 4
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8, !tbaa !2428
  %8 = add i64 %1, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %7 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8, !tbaa !2428
  %12 = add i64 %1, 10
  store i64 %12, i64* %PC, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %RAX, align 8, !tbaa !2428
  %14 = add i64 %13, 4
  %15 = add i64 %1, 14
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %10 to i64
  %19 = sext i32 %17 to i64
  %20 = mul nsw i64 %19, %18
  %21 = trunc i64 %20 to i32
  %22 = and i64 %20, 4294967295
  store i64 %22, i64* %RCX, align 8, !tbaa !2428
  %23 = shl i64 %20, 32
  %24 = ashr exact i64 %23, 32
  %25 = icmp ne i64 %24, %20
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1, !tbaa !2432
  %28 = and i32 %21, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #9
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1, !tbaa !2446
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1, !tbaa !2447
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1, !tbaa !2448
  %36 = lshr i32 %21, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1, !tbaa !2449
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %26, i8* %39, align 1, !tbaa !2450
  %40 = add i64 %3, -4
  %41 = trunc i64 %20 to i32
  %42 = add i64 %1, 17
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %PC, align 8
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -4
  %47 = add i64 %44, 37
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %RAX, align 8, !tbaa !2428
  %51 = add i64 %44, 38
  store i64 %51, i64* %PC, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2428
  %54 = add i64 %53, 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RBP, align 8, !tbaa !2428
  store i64 %54, i64* %52, align 8, !tbaa !2428
  %57 = add i64 %44, 39
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %54 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %PC, align 8, !tbaa !2428
  %60 = add i64 %53, 16
  store i64 %60, i64* %52, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b2f(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b2f

block_400aef:                                     ; preds = %block_400aa2
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -32
  %18 = add i64 %323, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = shl i64 %20, 3
  %22 = add i64 %21, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 40)
  %23 = add i64 %323, 12
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  switch i64 %25, label %490 [
    i64 4197217, label %block_400b61
    i64 4197192, label %block_400b48
    i64 4197117, label %block_400afd
    i64 4197167, label %block_400b2f.loopexit
    i64 4197142, label %block_400b16
  ]

block_400bf6:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %26 = add i64 %486, -1414
  %27 = add i64 %486, 17
  %28 = load i64, i64* %RSP, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %31 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %438)
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -76
  %34 = load i32, i32* %EAX, align 4
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %PC, align 8
  %39 = add i64 %38, 25
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  br label %block_400c23

block_400b2f.loopexit:                            ; preds = %block_400aef
  br label %block_400b2f

block_400b2f:                                     ; preds = %block_400b2f.loopexit, %3
  %40 = phi i64 [ %1, %3 ], [ 4197167, %block_400b2f.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %265, %block_400b2f.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %41 = add i64 %40, -1215
  %42 = add i64 %40, 17
  %43 = load i64, i64* %RSP, align 8, !tbaa !2428
  %44 = add i64 %43, -8
  %45 = inttoptr i64 %44 to i64*
  store i64 %42, i64* %45, align 8
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  store i64 %41, i64* %PC, align 8, !tbaa !2428
  %46 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -52
  %49 = load i32, i32* %EAX, align 4
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 93
  store i64 %54, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400b48:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %55 = load i64, i64* %RSP, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 4197209, i64* %57, align 8
  store i64 %56, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %58 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %265)
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -56
  %61 = load i32, i32* %EAX, align 4
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 68
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400ba0.backedge:                            ; preds = %block_400b48, %block_400b7a, %block_400b61
  %.be = phi i64 [ %.pre.pre, %block_400b7a ], [ %66, %block_400b48 ], [ %335, %block_400b61 ]
  %MEMORY.2.be = phi %struct.Memory* [ %171, %block_400b7a ], [ %58, %block_400b48 ], [ %327, %block_400b61 ]
  br label %block_400ba0

block_400c36:                                     ; preds = %block_400c23
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %67 = add i64 %245, -1478
  %68 = add i64 %245, 17
  %69 = load i64, i64* %RSP, align 8, !tbaa !2428
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %RSP, align 8, !tbaa !2428
  store i64 %67, i64* %PC, align 8, !tbaa !2428
  %72 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -84
  %75 = load i32, i32* %EAX, align 4
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %78, align 4
  %79 = load i64, i64* %RSP, align 8
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %79, 96
  store i64 %81, i64* %RSP, align 8, !tbaa !2428
  %82 = icmp ugt i64 %79, -97
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %6, align 1, !tbaa !2432
  %84 = trunc i64 %81 to i32
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #9
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %7, align 1, !tbaa !2446
  %90 = xor i64 %81, %79
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %8, align 1, !tbaa !2447
  %94 = icmp eq i64 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %9, align 1, !tbaa !2448
  %96 = lshr i64 %81, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %10, align 1, !tbaa !2449
  %98 = lshr i64 %79, 63
  %99 = xor i64 %96, %98
  %100 = add nuw nsw i64 %99, %96
  %101 = icmp eq i64 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %11, align 1, !tbaa !2450
  %103 = add i64 %80, 5
  store i64 %103, i64* %PC, align 8
  %104 = add i64 %79, 104
  %105 = inttoptr i64 %81 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RBP, align 8, !tbaa !2428
  store i64 %104, i64* %RSP, align 8, !tbaa !2428
  %107 = add i64 %80, 6
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %104 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %PC, align 8, !tbaa !2428
  %110 = add i64 %79, 112
  store i64 %110, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %72

block_400c0f:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %111 = add i64 %486, -1439
  %112 = add i64 %486, 17
  %113 = load i64, i64* %RSP, align 8, !tbaa !2428
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  %116 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %438)
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -80
  %119 = load i32, i32* %EAX, align 4
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %122, align 4
  %.pre65 = load i64, i64* %PC, align 8
  br label %block_400c23

block_400b7a:                                     ; preds = %block_400aa2
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -8
  %125 = add i64 %323, 14
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = add i64 %123, -16
  %129 = add i64 %323, 18
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, 12
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  %134 = lshr i64 %133, 63
  %135 = add i64 %133, %127
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  %136 = icmp ult i64 %135, %127
  %137 = icmp ult i64 %135, %133
  %138 = or i1 %136, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %6, align 1, !tbaa !2432
  %140 = trunc i64 %135 to i32
  %141 = and i32 %140, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #9
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %7, align 1, !tbaa !2446
  %146 = xor i64 %133, %127
  %147 = xor i64 %146, %135
  %148 = lshr i64 %147, 4
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %8, align 1, !tbaa !2447
  %151 = icmp eq i64 %135, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %9, align 1, !tbaa !2448
  %153 = lshr i64 %135, 63
  %154 = trunc i64 %153 to i8
  store i8 %154, i8* %10, align 1, !tbaa !2449
  %155 = lshr i64 %127, 63
  %156 = xor i64 %153, %155
  %157 = xor i64 %153, %134
  %158 = add nuw nsw i64 %156, %157
  %159 = icmp eq i64 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %11, align 1, !tbaa !2450
  %161 = add i64 %135, 8
  %162 = add i64 %323, 28
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %166 = add i64 %323, -1290
  %167 = add i64 %323, 35
  %168 = load i64, i64* %RSP, align 8, !tbaa !2428
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %RSP, align 8, !tbaa !2428
  store i64 %166, i64* %PC, align 8, !tbaa !2428
  %171 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %265)
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -64
  %174 = load i32, i32* %EAX, align 4
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %177, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400ba0.backedge

block_400c23:                                     ; preds = %block_400c0f, %block_400bf6
  %178 = phi i64 [ %.pre65, %block_400c0f ], [ %39, %block_400bf6 ]
  %MEMORY.1 = phi %struct.Memory* [ %116, %block_400c0f ], [ %31, %block_400bf6 ]
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -16
  %181 = add i64 %178, 8
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, 1
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = icmp eq i32 %183, -1
  %187 = icmp eq i32 %184, 0
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %6, align 1, !tbaa !2432
  %190 = and i32 %184, 255
  %191 = tail call i32 @llvm.ctpop.i32(i32 %190) #9
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %7, align 1, !tbaa !2446
  %195 = xor i32 %184, %183
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %8, align 1, !tbaa !2447
  %199 = zext i1 %187 to i8
  store i8 %199, i8* %9, align 1, !tbaa !2448
  %200 = lshr i32 %184, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %10, align 1, !tbaa !2449
  %202 = lshr i32 %183, 31
  %203 = xor i32 %200, %202
  %204 = add nuw nsw i32 %203, %200
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %11, align 1, !tbaa !2450
  %207 = add i64 %178, 14
  store i64 %207, i64* %PC, align 8
  store i32 %184, i32* %182, align 4
  %208 = load i64, i64* %PC, align 8
  %209 = load i64, i64* %RBP, align 8
  %210 = add i64 %209, -16
  %211 = add i64 %208, -408
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = add i64 %209, -12
  %216 = add i64 %208, -405
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = sub i32 %213, %218
  %220 = icmp ult i32 %213, %218
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %6, align 1, !tbaa !2432
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #9
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %7, align 1, !tbaa !2446
  %227 = xor i32 %218, %213
  %228 = xor i32 %227, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %8, align 1, !tbaa !2447
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %9, align 1, !tbaa !2448
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %10, align 1, !tbaa !2449
  %236 = lshr i32 %213, 31
  %237 = lshr i32 %218, 31
  %238 = xor i32 %237, %236
  %239 = xor i32 %234, %236
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %11, align 1, !tbaa !2450
  %243 = icmp ne i8 %235, 0
  %244 = xor i1 %243, %241
  %.v = select i1 %244, i64 -399, i64 5
  %245 = add i64 %208, %.v
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  br i1 %244, label %block_400aa2, label %block_400c36

block_400aa2:                                     ; preds = %block_400c23
  %246 = add i64 %209, -8
  %247 = add i64 %245, 4
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RAX, align 8, !tbaa !2428
  %250 = add i64 %245, 8
  store i64 %250, i64* %PC, align 8
  %251 = load i32, i32* %212, align 4
  %252 = sext i32 %251 to i64
  %253 = mul nsw i64 %252, 3
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = mul nsw i64 %252, 12
  %255 = add i64 %249, %254
  %256 = add i64 %245, 15
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %260 = add i64 %245, -1074
  %261 = add i64 %245, 35
  %262 = load i64, i64* %RSP, align 8, !tbaa !2428
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %RSP, align 8, !tbaa !2428
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  %265 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -8
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 4
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %267 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RCX, align 8, !tbaa !2428
  %272 = add i64 %266, -16
  %273 = add i64 %268, 8
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = mul nsw i64 %276, 3
  store i64 %277, i64* %RDI, align 8, !tbaa !2428
  %278 = mul nsw i64 %276, 12
  %279 = add i64 %278, 8
  %280 = add i64 %279, %271
  %281 = add i64 %268, 16
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RDX, align 8, !tbaa !2428
  store i64 %284, i64* %RCX, align 8, !tbaa !2428
  %285 = add nsw i64 %284, -4
  store i64 %285, i64* %RDI, align 8, !tbaa !2428
  %286 = icmp ult i32 %283, 4
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %6, align 1, !tbaa !2432
  %288 = trunc i64 %285 to i32
  %289 = and i32 %288, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289) #9
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %7, align 1, !tbaa !2446
  %294 = xor i64 %285, %284
  %295 = lshr i64 %294, 4
  %296 = trunc i64 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %8, align 1, !tbaa !2447
  %298 = icmp eq i64 %285, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %9, align 1, !tbaa !2448
  %300 = lshr i64 %285, 63
  %301 = trunc i64 %300 to i8
  store i8 %301, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %302 = add i64 %266, -20
  %303 = load i32, i32* %EAX, align 4
  %304 = add i64 %268, 28
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %302 to i32*
  store i32 %303, i32* %305, align 4
  %306 = load i64, i64* %RBP, align 8
  %307 = add i64 %306, -32
  %308 = load i64, i64* %RCX, align 8
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, 4
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %307 to i64*
  store i64 %308, i64* %311, align 8
  %312 = load i64, i64* %RBP, align 8
  %313 = add i64 %312, -40
  %314 = load i64, i64* %RDI, align 8
  %315 = load i64, i64* %PC, align 8
  %316 = add i64 %315, 4
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %313 to i64*
  store i64 %314, i64* %317, align 8
  %318 = load i64, i64* %PC, align 8
  %319 = load i8, i8* %6, align 1, !tbaa !2432
  %320 = load i8, i8* %9, align 1, !tbaa !2448
  %321 = or i8 %320, %319
  %322 = icmp eq i8 %321, 0
  %.v84 = select i1 %322, i64 145, i64 6
  %323 = add i64 %318, %.v84
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  br i1 %322, label %block_400b7a, label %block_400aef

block_400b61:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %324 = load i64, i64* %RSP, align 8, !tbaa !2428
  %325 = add i64 %324, -8
  %326 = inttoptr i64 %325 to i64*
  store i64 4197234, i64* %326, align 8
  store i64 %325, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %327 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %265)
  %328 = load i64, i64* %RBP, align 8
  %329 = add i64 %328, -60
  %330 = load i32, i32* %EAX, align 4
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %333, align 4
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 43
  store i64 %335, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400ba0:                                     ; preds = %block_400ba0.backedge, %block_400b2f
  %336 = phi i64 [ %54, %block_400b2f ], [ %.be, %block_400ba0.backedge ]
  %MEMORY.2 = phi %struct.Memory* [ %46, %block_400b2f ], [ %MEMORY.2.be, %block_400ba0.backedge ]
  %337 = load i64, i64* %RBP, align 8
  %338 = add i64 %337, -8
  %339 = add i64 %336, 4
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RAX, align 8, !tbaa !2428
  %342 = add i64 %337, -16
  %343 = add i64 %336, 8
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = mul nsw i64 %346, 12
  store i64 %347, i64* %RCX, align 8, !tbaa !2428
  %348 = lshr i64 %347, 63
  %349 = add i64 %347, %341
  store i64 %349, i64* %RAX, align 8, !tbaa !2428
  %350 = icmp ult i64 %349, %341
  %351 = icmp ult i64 %349, %347
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %6, align 1, !tbaa !2432
  %354 = trunc i64 %349 to i32
  %355 = and i32 %354, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355) #9
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %7, align 1, !tbaa !2446
  %360 = xor i64 %347, %341
  %361 = xor i64 %360, %349
  %362 = lshr i64 %361, 4
  %363 = trunc i64 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %8, align 1, !tbaa !2447
  %365 = icmp eq i64 %349, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %9, align 1, !tbaa !2448
  %367 = lshr i64 %349, 63
  %368 = trunc i64 %367 to i8
  store i8 %368, i8* %10, align 1, !tbaa !2449
  %369 = lshr i64 %341, 63
  %370 = xor i64 %367, %369
  %371 = xor i64 %367, %348
  %372 = add nuw nsw i64 %370, %371
  %373 = icmp eq i64 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %11, align 1, !tbaa !2450
  %375 = add i64 %349, 4
  %376 = add i64 %336, 18
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RSI, align 8, !tbaa !2428
  %380 = add i64 %336, 22
  store i64 %380, i64* %PC, align 8
  %381 = load i64, i64* %340, align 8
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %382 = add i64 %336, 26
  store i64 %382, i64* %PC, align 8
  %383 = load i32, i32* %344, align 4
  %384 = sext i32 %383 to i64
  %385 = mul nsw i64 %384, 12
  store i64 %385, i64* %RCX, align 8, !tbaa !2428
  %386 = lshr i64 %385, 63
  %387 = add i64 %385, %381
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = icmp ult i64 %387, %381
  %389 = icmp ult i64 %387, %385
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %6, align 1, !tbaa !2432
  %392 = trunc i64 %387 to i32
  %393 = and i32 %392, 255
  %394 = tail call i32 @llvm.ctpop.i32(i32 %393) #9
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  store i8 %397, i8* %7, align 1, !tbaa !2446
  %398 = xor i64 %385, %381
  %399 = xor i64 %398, %387
  %400 = lshr i64 %399, 4
  %401 = trunc i64 %400 to i8
  %402 = and i8 %401, 1
  store i8 %402, i8* %8, align 1, !tbaa !2447
  %403 = icmp eq i64 %387, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %9, align 1, !tbaa !2448
  %405 = lshr i64 %387, 63
  %406 = trunc i64 %405 to i8
  store i8 %406, i8* %10, align 1, !tbaa !2449
  %407 = lshr i64 %381, 63
  %408 = xor i64 %405, %407
  %409 = xor i64 %405, %386
  %410 = add nuw nsw i64 %408, %409
  %411 = icmp eq i64 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %11, align 1, !tbaa !2450
  store i64 %387, i64* %RDI, align 8, !tbaa !2428
  %413 = load i64, i64* %RBP, align 8
  %414 = add i64 %413, -68
  %415 = add i64 %336, 39
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i32*
  store i32 %378, i32* %416, align 4
  %417 = load i64, i64* %PC, align 8
  %418 = add i64 %417, -487
  %419 = add i64 %417, 5
  %420 = load i64, i64* %RSP, align 8, !tbaa !2428
  %421 = add i64 %420, -8
  %422 = inttoptr i64 %421 to i64*
  store i64 %419, i64* %422, align 8
  store i64 %421, i64* %RSP, align 8, !tbaa !2428
  store i64 %418, i64* %PC, align 8, !tbaa !2428
  %423 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %418, %struct.Memory* %MEMORY.2)
  %424 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %425 = load i64, i64* %RBP, align 8
  %426 = add i64 %425, -68
  %427 = add i64 %424, 13
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RSI, align 8, !tbaa !2428
  %431 = load i32, i32* %EAX, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %433 = add i64 %424, -1372
  %434 = add i64 %424, 22
  %435 = load i64, i64* %RSP, align 8, !tbaa !2428
  %436 = add i64 %435, -8
  %437 = inttoptr i64 %436 to i64*
  store i64 %434, i64* %437, align 8
  store i64 %436, i64* %RSP, align 8, !tbaa !2428
  store i64 %433, i64* %PC, align 8, !tbaa !2428
  %438 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %423)
  %439 = load i64, i64* %RBP, align 8
  %440 = add i64 %439, -16
  %441 = load i64, i64* %PC, align 8
  %442 = add i64 %441, 3
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RDX, align 8, !tbaa !2428
  %446 = add i64 %439, -12
  %447 = add i64 %441, 6
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = add i32 %449, -1
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RSI, align 8, !tbaa !2428
  %452 = lshr i32 %450, 31
  %453 = sub i32 %444, %450
  %454 = icmp ult i32 %444, %450
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %6, align 1, !tbaa !2432
  %456 = and i32 %453, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456) #9
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %7, align 1, !tbaa !2446
  %461 = xor i32 %450, %444
  %462 = xor i32 %461, %453
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %8, align 1, !tbaa !2447
  %466 = icmp eq i32 %453, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %9, align 1, !tbaa !2448
  %468 = lshr i32 %453, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %10, align 1, !tbaa !2449
  %470 = lshr i32 %444, 31
  %471 = xor i32 %452, %470
  %472 = xor i32 %468, %470
  %473 = add nuw nsw i32 %472, %471
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %11, align 1, !tbaa !2450
  %476 = add i64 %439, -72
  %477 = load i32, i32* %EAX, align 4
  %478 = add i64 %441, 14
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %476 to i32*
  store i32 %477, i32* %479, align 4
  %480 = load i64, i64* %PC, align 8
  %481 = load i8, i8* %10, align 1, !tbaa !2449
  %482 = icmp ne i8 %481, 0
  %483 = load i8, i8* %11, align 1, !tbaa !2450
  %484 = icmp ne i8 %483, 0
  %485 = xor i1 %482, %484
  %.v83 = select i1 %485, i64 6, i64 31
  %486 = add i64 %480, %.v83
  %487 = add i64 %486, 10
  store i64 %487, i64* %PC, align 8
  br i1 %485, label %block_400bf6, label %block_400c0f

block_400b16:                                     ; preds = %block_400aef
  %488 = tail call %struct.Memory* @sub_400b16(%struct.State* nonnull %0, i64 4197142, %struct.Memory* %265)
  ret %struct.Memory* %488

block_400afd:                                     ; preds = %block_400aef
  %489 = tail call %struct.Memory* @sub_400afd(%struct.State* nonnull %0, i64 4197117, %struct.Memory* %265)
  ret %struct.Memory* %489

; <label>:490:                                    ; preds = %block_400aef
  %491 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %25, %struct.Memory* %265)
  ret %struct.Memory* %491
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400620__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400620:
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
  br i1 %18, label %block_400632, label %block_400630

block_400630:                                     ; preds = %block_400620
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400632

block_400632:                                     ; preds = %block_400630, %block_400620
  %27 = phi i64 [ %22, %block_400620 ], [ %.pre1, %block_400630 ]
  %28 = phi i64 [ %4, %block_400620 ], [ %.pre, %block_400630 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400620 ], [ %26, %block_400630 ]
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
define %struct.Memory* @sub_401010_doSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401010:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %10 = add i64 %6, -24
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 16
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
  %21 = xor i64 %7, 16
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2447
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2448
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2449
  %33 = lshr i64 %7, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2450
  %39 = add i64 %6, -12
  %40 = add i64 %9, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40101f

block_40113f:                                     ; preds = %block_40111d, %block_40112b, %block_4010ac
  %42 = phi i64 [ %322, %block_40111d ], [ %.pre13, %block_40112b ], [ %236, %block_4010ac ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.4, %block_40111d ], [ %245, %block_40112b ], [ %228, %block_4010ac ]
  %43 = load i64, i64* %RSP, align 8
  %44 = add i64 %43, 16
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  %45 = icmp ugt i64 %43, -17
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %13, align 1, !tbaa !2432
  %47 = trunc i64 %44 to i32
  %48 = and i32 %47, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #9
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  store i8 %52, i8* %20, align 1, !tbaa !2446
  %53 = xor i64 %43, 16
  %54 = xor i64 %53, %44
  %55 = lshr i64 %54, 4
  %56 = trunc i64 %55 to i8
  %57 = and i8 %56, 1
  store i8 %57, i8* %26, align 1, !tbaa !2447
  %58 = icmp eq i64 %44, 0
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %29, align 1, !tbaa !2448
  %60 = lshr i64 %44, 63
  %61 = trunc i64 %60 to i8
  store i8 %61, i8* %32, align 1, !tbaa !2449
  %62 = lshr i64 %43, 63
  %63 = xor i64 %60, %62
  %64 = add nuw nsw i64 %63, %60
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %38, align 1, !tbaa !2450
  %67 = add i64 %42, 5
  store i64 %67, i64* %PC, align 8
  %68 = add i64 %43, 24
  %69 = inttoptr i64 %44 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %RBP, align 8, !tbaa !2428
  store i64 %68, i64* %RSP, align 8, !tbaa !2428
  %71 = add i64 %42, 6
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %68 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  %74 = add i64 %43, 32
  store i64 %74, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4010fd:                                     ; preds = %block_4010e4
  %75 = add i64 %368, 32
  store i64 %75, i64* %PC, align 8, !tbaa !2428
  br label %block_40111d

block_4010d0:                                     ; preds = %block_401102, %block_4010c5
  %76 = phi i32 [ 1, %block_4010c5 ], [ %370, %block_401102 ]
  %77 = phi i64 [ %281, %block_4010c5 ], [ %393, %block_401102 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_4010c5 ], [ %356, %block_401102 ]
  %78 = zext i32 %76 to i64
  store i64 %78, i64* %RAX, align 8, !tbaa !2428
  %79 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %80 = sub i32 %76, %79
  %81 = icmp ult i32 %76, %79
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %13, align 1, !tbaa !2432
  %83 = and i32 %80, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #9
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %20, align 1, !tbaa !2446
  %88 = xor i32 %79, %76
  %89 = xor i32 %88, %80
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %26, align 1, !tbaa !2447
  %93 = icmp eq i32 %80, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %29, align 1, !tbaa !2448
  %95 = lshr i32 %80, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %32, align 1, !tbaa !2449
  %97 = lshr i32 %76, 31
  %98 = lshr i32 %79, 31
  %99 = xor i32 %98, %97
  %100 = xor i32 %95, %97
  %101 = add nuw nsw i32 %100, %99
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %38, align 1, !tbaa !2450
  %104 = icmp ne i8 %96, 0
  %105 = xor i1 %104, %102
  %.v18 = select i1 %105, i64 20, i64 77
  %106 = add i64 %77, %.v18
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  br i1 %105, label %block_4010e4, label %block_40111d.loopexit

block_40102f:                                     ; preds = %block_40101f
  %107 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %107, i64* %RAX, align 8, !tbaa !2428
  %108 = add i64 %280, 12
  store i64 %108, i64* %PC, align 8
  %109 = load i32, i32* %250, align 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %RCX, align 8, !tbaa !2428
  %111 = shl nsw i64 %110, 2
  %112 = add i64 %111, %107
  %113 = add i64 %280, 15
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %117 = sub i32 %115, %116
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RDX, align 8, !tbaa !2428
  %119 = icmp ult i32 %115, %116
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %13, align 1, !tbaa !2432
  %121 = and i32 %117, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121) #9
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %20, align 1, !tbaa !2446
  %126 = xor i32 %116, %115
  %127 = xor i32 %126, %117
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1, !tbaa !2447
  %131 = icmp eq i32 %117, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %29, align 1, !tbaa !2448
  %133 = lshr i32 %117, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %32, align 1, !tbaa !2449
  %135 = lshr i32 %115, 31
  %136 = lshr i32 %116, 31
  %137 = xor i32 %136, %135
  %138 = xor i32 %133, %135
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %38, align 1, !tbaa !2450
  store i64 %118, i64* %RDI, align 8, !tbaa !2428
  %142 = add i64 %280, -2511
  %143 = add i64 %280, 29
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  %147 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %148 = load i64, i64* %PC, align 8
  %149 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %150 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %151 = sub i32 %149, %150
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RDX, align 8, !tbaa !2428
  %153 = icmp ult i32 %149, %150
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %13, align 1, !tbaa !2432
  %155 = and i32 %151, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #9
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %20, align 1, !tbaa !2446
  %160 = xor i32 %150, %149
  %161 = xor i32 %160, %151
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %26, align 1, !tbaa !2447
  %165 = icmp eq i32 %151, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1, !tbaa !2448
  %167 = lshr i32 %151, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %32, align 1, !tbaa !2449
  %169 = lshr i32 %149, 31
  %170 = lshr i32 %150, 31
  %171 = xor i32 %170, %169
  %172 = xor i32 %167, %169
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %38, align 1, !tbaa !2450
  store i64 %152, i64* %RDI, align 8, !tbaa !2428
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -8
  %178 = load i32, i32* %EAX, align 4
  %179 = add i64 %148, 19
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %180, align 4
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, -2559
  %183 = add i64 %181, 5
  %184 = load i64, i64* %RSP, align 8, !tbaa !2428
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186, align 8
  store i64 %185, i64* %RSP, align 8, !tbaa !2428
  store i64 %182, i64* %PC, align 8, !tbaa !2428
  %187 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %147)
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -8
  %190 = load i64, i64* %PC, align 8
  %191 = add i64 %190, 3
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %189 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RDX, align 8, !tbaa !2428
  %195 = load i32, i32* %EAX, align 4
  %196 = sub i32 %193, %195
  %197 = icmp ult i32 %193, %195
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %13, align 1, !tbaa !2432
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #9
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %20, align 1, !tbaa !2446
  %204 = xor i32 %195, %193
  %205 = xor i32 %204, %196
  %206 = lshr i32 %205, 4
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  store i8 %208, i8* %26, align 1, !tbaa !2447
  %209 = icmp eq i32 %196, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %29, align 1, !tbaa !2448
  %211 = lshr i32 %196, 31
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %32, align 1, !tbaa !2449
  %213 = lshr i32 %193, 31
  %214 = lshr i32 %195, 31
  %215 = xor i32 %214, %213
  %216 = xor i32 %211, %213
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %38, align 1, !tbaa !2450
  %220 = icmp ne i8 %212, 0
  %221 = xor i1 %220, %218
  %.v21 = select i1 %221, i64 11, i64 33
  %222 = add i64 %190, %.v21
  store i64 %222, i64* %PC, align 8, !tbaa !2428
  br i1 %221, label %block_40106f, label %block_40102f.block_401085_crit_edge

block_40102f.block_401085_crit_edge:              ; preds = %block_40102f
  %.pre14 = add i64 %188, -4
  %.pre15 = inttoptr i64 %.pre14 to i32*
  br label %block_401085

block_4010ac:                                     ; preds = %block_401098
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %223 = add i64 %350, -2620
  %224 = add i64 %350, 17
  %225 = load i64, i64* %RSP, align 8, !tbaa !2428
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %224, i64* %227, align 8
  store i64 %226, i64* %RSP, align 8, !tbaa !2428
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  %228 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %229 = load i64, i64* %RBP, align 8
  %230 = add i64 %229, -12
  %231 = load i32, i32* %EAX, align 4
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %234, align 4
  %235 = load i64, i64* %PC, align 8
  %236 = add i64 %235, 127
  store i64 %236, i64* %PC, align 8, !tbaa !2428
  br label %block_40113f

block_40112b:                                     ; preds = %block_40111d
  %237 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %237, i64* %RDI, align 8, !tbaa !2428
  %238 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 84) to i32*), align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RSI, align 8, !tbaa !2428
  %240 = add i64 %322, -1707
  %241 = add i64 %322, 20
  %242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %RSP, align 8, !tbaa !2428
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  %245 = tail call %struct.Memory* @sub_400a80_printSolution(%struct.State* nonnull %0, i64 %240, %struct.Memory* %MEMORY.4)
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_40113f

block_40101f:                                     ; preds = %block_401085, %block_401010
  %246 = phi i64 [ %.pre, %block_401010 ], [ %310, %block_401085 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_401010 ], [ %187, %block_401085 ]
  %247 = load i64, i64* %RBP, align 8
  %248 = add i64 %247, -4
  %249 = add i64 %246, 3
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %254 = sub i32 %251, %253
  %255 = icmp ult i32 %251, %253
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %13, align 1, !tbaa !2432
  %257 = and i32 %254, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257) #9
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %20, align 1, !tbaa !2446
  %262 = xor i32 %253, %251
  %263 = xor i32 %262, %254
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %26, align 1, !tbaa !2447
  %267 = icmp eq i32 %254, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1, !tbaa !2448
  %269 = lshr i32 %254, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %32, align 1, !tbaa !2449
  %271 = lshr i32 %251, 31
  %272 = lshr i32 %253, 31
  %273 = xor i32 %272, %271
  %274 = xor i32 %269, %271
  %275 = add nuw nsw i32 %274, %273
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %38, align 1, !tbaa !2450
  %278 = icmp ne i8 %270, 0
  %279 = xor i1 %278, %276
  %.v = select i1 %279, i64 16, i64 121
  %280 = add i64 %246, %.v
  store i64 %280, i64* %PC, align 8, !tbaa !2428
  br i1 %279, label %block_40102f, label %block_401098

block_4010c5:                                     ; preds = %block_401098
  %281 = add i64 %350, 11
  store i64 %281, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  br label %block_4010d0

block_401085:                                     ; preds = %block_40102f.block_401085_crit_edge, %block_40106f
  %.pre-phi16 = phi i32* [ %.pre15, %block_40102f.block_401085_crit_edge ], [ %397, %block_40106f ]
  %282 = phi i64 [ %222, %block_40102f.block_401085_crit_edge ], [ %406, %block_40106f ]
  %283 = add i64 %282, 8
  store i64 %283, i64* %PC, align 8
  %284 = load i32, i32* %.pre-phi16, align 4
  %285 = add i32 %284, 1
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  %287 = icmp eq i32 %284, -1
  %288 = icmp eq i32 %285, 0
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %13, align 1, !tbaa !2432
  %291 = and i32 %285, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #9
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %20, align 1, !tbaa !2446
  %296 = xor i32 %285, %284
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %26, align 1, !tbaa !2447
  %300 = zext i1 %288 to i8
  store i8 %300, i8* %29, align 1, !tbaa !2448
  %301 = lshr i32 %285, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %32, align 1, !tbaa !2449
  %303 = lshr i32 %284, 31
  %304 = xor i32 %301, %303
  %305 = add nuw nsw i32 %304, %301
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %38, align 1, !tbaa !2450
  %308 = add i64 %282, 14
  store i64 %308, i64* %PC, align 8
  store i32 %285, i32* %.pre-phi16, align 4
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, -116
  store i64 %310, i64* %PC, align 8, !tbaa !2428
  br label %block_40101f

block_40111d.loopexit:                            ; preds = %block_4010d0
  %.pre12 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  br label %block_40111d

block_40111d:                                     ; preds = %block_40111d.loopexit, %block_4010fd
  %311 = phi i32 [ %358, %block_4010fd ], [ %.pre12, %block_40111d.loopexit ]
  %312 = phi i64 [ %75, %block_4010fd ], [ %106, %block_40111d.loopexit ]
  %MEMORY.4 = phi %struct.Memory* [ %356, %block_4010fd ], [ %MEMORY.1, %block_40111d.loopexit ]
  store i8 0, i8* %13, align 1, !tbaa !2432
  %313 = and i32 %311, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #9
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %318 = icmp eq i32 %311, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %29, align 1, !tbaa !2448
  %320 = lshr i32 %311, 31
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v19 = select i1 %318, i64 14, i64 34
  %322 = add i64 %312, %.v19
  store i64 %322, i64* %PC, align 8, !tbaa !2428
  br i1 %318, label %block_40112b, label %block_40113f

block_401098:                                     ; preds = %block_40101f
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %323 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %326 = sub i32 %323, %325
  %327 = icmp ult i32 %323, %325
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %13, align 1, !tbaa !2432
  %329 = and i32 %326, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #9
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %20, align 1, !tbaa !2446
  %334 = xor i32 %325, %323
  %335 = xor i32 %334, %326
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %26, align 1, !tbaa !2447
  %339 = icmp eq i32 %326, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %29, align 1, !tbaa !2448
  %341 = lshr i32 %326, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %32, align 1, !tbaa !2449
  %343 = lshr i32 %323, 31
  %344 = lshr i32 %325, 31
  %345 = xor i32 %344, %343
  %346 = xor i32 %341, %343
  %347 = add nuw nsw i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %38, align 1, !tbaa !2450
  %.v17 = select i1 %339, i64 20, i64 45
  %350 = add i64 %280, %.v17
  store i64 %350, i64* %PC, align 8, !tbaa !2428
  br i1 %339, label %block_4010ac, label %block_4010c5

block_4010e4:                                     ; preds = %block_4010d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %351 = add i64 %106, -1028
  %352 = add i64 %106, 11
  %353 = load i64, i64* %RSP, align 8, !tbaa !2428
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %RSP, align 8, !tbaa !2428
  store i64 %351, i64* %PC, align 8, !tbaa !2428
  %356 = tail call %struct.Memory* @sub_400ce0_recSearch(%struct.State* nonnull %0, i64 %351, %struct.Memory* %MEMORY.1)
  %357 = load i64, i64* %PC, align 8
  %358 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  store i8 0, i8* %13, align 1, !tbaa !2432
  %359 = and i32 %358, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359) #9
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %364 = icmp eq i32 %358, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %29, align 1, !tbaa !2448
  %366 = lshr i32 %358, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v20 = select i1 %364, i64 19, i64 14
  %368 = add i64 %357, %.v20
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  br i1 %364, label %block_401102, label %block_4010fd

block_401102:                                     ; preds = %block_4010e4
  %369 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %370 = add i32 %369, 1
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = icmp eq i32 %369, -1
  %373 = icmp eq i32 %370, 0
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %13, align 1, !tbaa !2432
  %376 = and i32 %370, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376) #9
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %20, align 1, !tbaa !2446
  %381 = xor i32 %370, %369
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %26, align 1, !tbaa !2447
  %385 = zext i1 %373 to i8
  store i8 %385, i8* %29, align 1, !tbaa !2448
  %386 = lshr i32 %370, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %32, align 1, !tbaa !2449
  %388 = lshr i32 %369, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %386
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %38, align 1, !tbaa !2450
  store i32 %370, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %393 = add i64 %368, -50
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  br label %block_4010d0

block_40106f:                                     ; preds = %block_40102f
  %394 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = add i64 %188, -4
  %396 = add i64 %222, 12
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  store i64 %399, i64* %RCX, align 8, !tbaa !2428
  %400 = shl nsw i64 %399, 2
  %401 = add i64 %400, %394
  %402 = add i64 %222, 15
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RDX, align 8, !tbaa !2428
  %406 = add i64 %222, 22
  store i64 %406, i64* %PC, align 8
  store i32 %404, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  br label %block_401085
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a26(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400a26:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = add i64 %1, 4
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8, !tbaa !2428
  %8 = add i64 %1, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %7 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8, !tbaa !2428
  %12 = add i64 %1, 10
  store i64 %12, i64* %PC, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %RAX, align 8, !tbaa !2428
  %14 = add i64 %13, 4
  %15 = add i64 %1, 13
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %10, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8, !tbaa !2428
  %20 = icmp ult i32 %10, %17
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1, !tbaa !2432
  %23 = and i32 %18, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #9
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1, !tbaa !2446
  %29 = xor i32 %17, %10
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1, !tbaa !2447
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1, !tbaa !2448
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1, !tbaa !2449
  %41 = lshr i32 %10, 31
  %42 = lshr i32 %17, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add nuw nsw i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1, !tbaa !2450
  %49 = add i64 %3, -4
  %50 = add i64 %1, 16
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  store i32 %18, i32* %51, align 4
  %52 = load i64, i64* %PC, align 8
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -4
  %55 = add i64 %52, 59
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %59 = add i64 %52, 60
  store i64 %59, i64* %PC, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %61 = load i64, i64* %60, align 8, !tbaa !2428
  %62 = add i64 %61, 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RBP, align 8, !tbaa !2428
  store i64 %62, i64* %60, align 8, !tbaa !2428
  %65 = add i64 %52, 61
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %PC, align 8, !tbaa !2428
  %68 = add i64 %61, 16
  store i64 %68, i64* %60, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006d0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006d0:
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
  store i64 ptrtoint (void ()* @callback_sub_4013a0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401330___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_602148___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a51(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a51:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = add i64 %1, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8, !tbaa !2428
  %9 = add i64 %1, 6
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %8 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8, !tbaa !2428
  %13 = add i64 %1, 10
  store i64 %13, i64* %PC, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %RCX, align 8, !tbaa !2428
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %16 = sext i32 %11 to i64
  %17 = lshr i64 %16, 32
  store i64 %17, i64* %15, align 8, !tbaa !2428
  %18 = add i64 %14, 4
  %19 = add i64 %1, 14
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %18 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = shl nuw i64 %17, 32
  %24 = or i64 %23, %12
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %block_400a51
  %EAX = bitcast %union.anon* %3 to i32*
  %30 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %19, %struct.Memory* %2) #12
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i32, i32* %EAX, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:31:                                     ; preds = %block_400a51
  %32 = srem i64 %24, %22
  %33 = and i64 %25, 4294967295
  store i64 %33, i64* %RAX, align 8, !tbaa !2428
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %35 = and i64 %32, 4294967295
  store i64 %35, i64* %34, align 8, !tbaa !2428
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %36, align 1, !tbaa !2432
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %37, align 1, !tbaa !2446
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1, !tbaa !2447
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %39, align 1, !tbaa !2448
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %40, align 1, !tbaa !2449
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1, !tbaa !2450
  %42 = trunc i64 %25 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %31, %29
  %43 = phi i64 [ %.pre2, %29 ], [ %19, %31 ]
  %44 = phi i32 [ %.pre1, %29 ], [ %42, %31 ]
  %45 = phi i64 [ %.pre, %29 ], [ %4, %31 ]
  %46 = phi %struct.Memory* [ %30, %29 ], [ %2, %31 ]
  %47 = add i64 %45, -4
  %48 = add i64 %43, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i32*
  store i32 %44, i32* %49, align 4
  %50 = load i64, i64* %PC, align 8
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -4
  %53 = add i64 %50, 15
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  %57 = add i64 %50, 16
  store i64 %57, i64* %PC, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8, !tbaa !2428
  %60 = add i64 %59, 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RBP, align 8, !tbaa !2428
  store i64 %60, i64* %58, align 8, !tbaa !2428
  %63 = add i64 %50, 17
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %PC, align 8, !tbaa !2428
  %66 = add i64 %59, 16
  store i64 %66, i64* %58, align 8, !tbaa !2428
  ret %struct.Memory* %46
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400920_saveSolution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400920:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %RBP, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI, align 8
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -20
  %23 = load i32, i32* %EDX, align 4
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %26, align 4
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %27, -24
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 7
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %28 to i32*
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400936

block_400936:                                     ; preds = %block_400942, %block_400920
  %38 = phi i64 [ %395, %block_400942 ], [ %.pre, %block_400920 ]
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -24
  %41 = add i64 %38, 3
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RAX, align 8, !tbaa !2428
  %45 = add i64 %39, -20
  %46 = add i64 %38, 6
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %43, %48
  %50 = icmp ult i32 %43, %48
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %32, align 1, !tbaa !2432
  %52 = and i32 %49, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %33, align 1, !tbaa !2446
  %57 = xor i32 %48, %43
  %58 = xor i32 %57, %49
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %34, align 1, !tbaa !2447
  %62 = icmp eq i32 %49, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %35, align 1, !tbaa !2448
  %64 = lshr i32 %49, 31
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %36, align 1, !tbaa !2449
  %66 = lshr i32 %43, 31
  %67 = lshr i32 %48, 31
  %68 = xor i32 %67, %66
  %69 = xor i32 %64, %66
  %70 = add nuw nsw i32 %69, %68
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %37, align 1, !tbaa !2450
  %73 = icmp ne i8 %65, 0
  %74 = xor i1 %73, %71
  %.v = select i1 %74, i64 12, i64 132
  %75 = add i64 %38, %.v
  store i64 %75, i64* %PC, align 8, !tbaa !2428
  br i1 %74, label %block_400942, label %block_4009ba

block_4009ba:                                     ; preds = %block_400936
  %76 = add i64 %39, -8
  %77 = add i64 %75, 4
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %RAX, align 8, !tbaa !2428
  %80 = add i64 %75, 8
  store i64 %80, i64* %PC, align 8
  %81 = load i32, i32* %47, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 12
  store i64 %83, i64* %RCX, align 8, !tbaa !2428
  %84 = lshr i64 %83, 63
  %85 = add i64 %83, %79
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = icmp ult i64 %85, %79
  %87 = icmp ult i64 %85, %83
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %32, align 1, !tbaa !2432
  %90 = trunc i64 %85 to i32
  %91 = and i32 %90, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91) #9
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %33, align 1, !tbaa !2446
  %96 = xor i64 %83, %79
  %97 = xor i64 %96, %85
  %98 = lshr i64 %97, 4
  %99 = trunc i64 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %34, align 1, !tbaa !2447
  %101 = icmp eq i64 %85, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %35, align 1, !tbaa !2448
  %103 = lshr i64 %85, 63
  %104 = trunc i64 %103 to i8
  store i8 %104, i8* %36, align 1, !tbaa !2449
  %105 = lshr i64 %79, 63
  %106 = xor i64 %103, %105
  %107 = xor i64 %103, %84
  %108 = add nuw nsw i64 %106, %107
  %109 = icmp eq i64 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %37, align 1, !tbaa !2450
  %111 = add i64 %85, 8
  %112 = add i64 %75, 22
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  store i32 0, i32* %113, align 4
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC, align 8
  %116 = load i64, i64* %6, align 8, !tbaa !2428
  %117 = add i64 %116, 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RBP, align 8, !tbaa !2428
  store i64 %117, i64* %6, align 8, !tbaa !2428
  %120 = add i64 %114, 2
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %117 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %PC, align 8, !tbaa !2428
  %123 = add i64 %116, 16
  store i64 %123, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400942:                                     ; preds = %block_400936
  %124 = add i64 %39, -16
  %125 = add i64 %75, 4
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = add i64 %75, 8
  store i64 %128, i64* %PC, align 8
  %129 = load i32, i32* %42, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, 12
  store i64 %131, i64* %RCX, align 8, !tbaa !2428
  %132 = lshr i64 %131, 63
  %133 = add i64 %131, %127
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = icmp ult i64 %133, %127
  %135 = icmp ult i64 %133, %131
  %136 = or i1 %134, %135
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %32, align 1, !tbaa !2432
  %138 = trunc i64 %133 to i32
  %139 = and i32 %138, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #9
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %33, align 1, !tbaa !2446
  %144 = xor i64 %131, %127
  %145 = xor i64 %144, %133
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %34, align 1, !tbaa !2447
  %149 = icmp eq i64 %133, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %35, align 1, !tbaa !2448
  %151 = lshr i64 %133, 63
  %152 = trunc i64 %151 to i8
  store i8 %152, i8* %36, align 1, !tbaa !2449
  %153 = lshr i64 %127, 63
  %154 = xor i64 %151, %153
  %155 = xor i64 %151, %132
  %156 = add nuw nsw i64 %154, %155
  %157 = icmp eq i64 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %37, align 1, !tbaa !2450
  %159 = inttoptr i64 %133 to i32*
  %160 = add i64 %75, 17
  store i64 %160, i64* %PC, align 8
  %161 = load i32, i32* %159, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RDX, align 8, !tbaa !2428
  %163 = add i64 %39, -8
  %164 = add i64 %75, 21
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RAX, align 8, !tbaa !2428
  %167 = add i64 %75, 25
  store i64 %167, i64* %PC, align 8
  %168 = load i32, i32* %42, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, 12
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = lshr i64 %170, 63
  %172 = add i64 %170, %166
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = icmp ult i64 %172, %166
  %174 = icmp ult i64 %172, %170
  %175 = or i1 %173, %174
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %32, align 1, !tbaa !2432
  %177 = trunc i64 %172 to i32
  %178 = and i32 %177, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178) #9
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %33, align 1, !tbaa !2446
  %183 = xor i64 %170, %166
  %184 = xor i64 %183, %172
  %185 = lshr i64 %184, 4
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %34, align 1, !tbaa !2447
  %188 = icmp eq i64 %172, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %35, align 1, !tbaa !2448
  %190 = lshr i64 %172, 63
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %36, align 1, !tbaa !2449
  %192 = lshr i64 %166, 63
  %193 = xor i64 %190, %192
  %194 = xor i64 %190, %171
  %195 = add nuw nsw i64 %193, %194
  %196 = icmp eq i64 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %37, align 1, !tbaa !2450
  %198 = inttoptr i64 %172 to i32*
  %199 = add i64 %75, 34
  store i64 %199, i64* %PC, align 8
  store i32 %161, i32* %198, align 4
  %200 = load i64, i64* %RBP, align 8
  %201 = add i64 %200, -16
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %201 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  %206 = add i64 %200, -24
  %207 = add i64 %202, 8
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = mul nsw i64 %210, 12
  store i64 %211, i64* %RCX, align 8, !tbaa !2428
  %212 = lshr i64 %211, 63
  %213 = add i64 %211, %205
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = icmp ult i64 %213, %205
  %215 = icmp ult i64 %213, %211
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %32, align 1, !tbaa !2432
  %218 = trunc i64 %213 to i32
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #9
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %33, align 1, !tbaa !2446
  %224 = xor i64 %211, %205
  %225 = xor i64 %224, %213
  %226 = lshr i64 %225, 4
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %34, align 1, !tbaa !2447
  %229 = icmp eq i64 %213, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %35, align 1, !tbaa !2448
  %231 = lshr i64 %213, 63
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %36, align 1, !tbaa !2449
  %233 = lshr i64 %205, 63
  %234 = xor i64 %231, %233
  %235 = xor i64 %231, %212
  %236 = add nuw nsw i64 %234, %235
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %37, align 1, !tbaa !2450
  %239 = add i64 %213, 4
  %240 = add i64 %202, 18
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RDX, align 8, !tbaa !2428
  %244 = add i64 %200, -8
  %245 = add i64 %202, 22
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = add i64 %202, 26
  store i64 %248, i64* %PC, align 8
  %249 = load i32, i32* %208, align 4
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %250, 12
  store i64 %251, i64* %RCX, align 8, !tbaa !2428
  %252 = lshr i64 %251, 63
  %253 = add i64 %251, %247
  store i64 %253, i64* %RAX, align 8, !tbaa !2428
  %254 = icmp ult i64 %253, %247
  %255 = icmp ult i64 %253, %251
  %256 = or i1 %254, %255
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %32, align 1, !tbaa !2432
  %258 = trunc i64 %253 to i32
  %259 = and i32 %258, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #9
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %33, align 1, !tbaa !2446
  %264 = xor i64 %251, %247
  %265 = xor i64 %264, %253
  %266 = lshr i64 %265, 4
  %267 = trunc i64 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %34, align 1, !tbaa !2447
  %269 = icmp eq i64 %253, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %35, align 1, !tbaa !2448
  %271 = lshr i64 %253, 63
  %272 = trunc i64 %271 to i8
  store i8 %272, i8* %36, align 1, !tbaa !2449
  %273 = lshr i64 %247, 63
  %274 = xor i64 %271, %273
  %275 = xor i64 %271, %252
  %276 = add nuw nsw i64 %274, %275
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %37, align 1, !tbaa !2450
  %279 = add i64 %253, 4
  %280 = add i64 %202, 36
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  store i32 %242, i32* %281, align 4
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -16
  %284 = load i64, i64* %PC, align 8
  %285 = add i64 %284, 4
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = add i64 %282, -24
  %289 = add i64 %284, 8
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %292, 12
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = lshr i64 %293, 63
  %295 = add i64 %293, %287
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = icmp ult i64 %295, %287
  %297 = icmp ult i64 %295, %293
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %32, align 1, !tbaa !2432
  %300 = trunc i64 %295 to i32
  %301 = and i32 %300, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301) #9
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %33, align 1, !tbaa !2446
  %306 = xor i64 %293, %287
  %307 = xor i64 %306, %295
  %308 = lshr i64 %307, 4
  %309 = trunc i64 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %34, align 1, !tbaa !2447
  %311 = icmp eq i64 %295, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %35, align 1, !tbaa !2448
  %313 = lshr i64 %295, 63
  %314 = trunc i64 %313 to i8
  store i8 %314, i8* %36, align 1, !tbaa !2449
  %315 = lshr i64 %287, 63
  %316 = xor i64 %313, %315
  %317 = xor i64 %313, %294
  %318 = add nuw nsw i64 %316, %317
  %319 = icmp eq i64 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %37, align 1, !tbaa !2450
  %321 = add i64 %295, 8
  %322 = add i64 %284, 18
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RDX, align 8, !tbaa !2428
  %326 = add i64 %282, -8
  %327 = add i64 %284, 22
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = add i64 %284, 26
  store i64 %330, i64* %PC, align 8
  %331 = load i32, i32* %290, align 4
  %332 = sext i32 %331 to i64
  %333 = mul nsw i64 %332, 12
  store i64 %333, i64* %RCX, align 8, !tbaa !2428
  %334 = lshr i64 %333, 63
  %335 = add i64 %333, %329
  store i64 %335, i64* %RAX, align 8, !tbaa !2428
  %336 = icmp ult i64 %335, %329
  %337 = icmp ult i64 %335, %333
  %338 = or i1 %336, %337
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %32, align 1, !tbaa !2432
  %340 = trunc i64 %335 to i32
  %341 = and i32 %340, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341) #9
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %33, align 1, !tbaa !2446
  %346 = xor i64 %333, %329
  %347 = xor i64 %346, %335
  %348 = lshr i64 %347, 4
  %349 = trunc i64 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %34, align 1, !tbaa !2447
  %351 = icmp eq i64 %335, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %35, align 1, !tbaa !2448
  %353 = lshr i64 %335, 63
  %354 = trunc i64 %353 to i8
  store i8 %354, i8* %36, align 1, !tbaa !2449
  %355 = lshr i64 %329, 63
  %356 = xor i64 %353, %355
  %357 = xor i64 %353, %334
  %358 = add nuw nsw i64 %356, %357
  %359 = icmp eq i64 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %37, align 1, !tbaa !2450
  %361 = add i64 %335, 8
  %362 = add i64 %284, 36
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %324, i32* %363, align 4
  %364 = load i64, i64* %RBP, align 8
  %365 = add i64 %364, -24
  %366 = load i64, i64* %PC, align 8
  %367 = add i64 %366, 3
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = add i32 %369, 1
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = icmp eq i32 %369, -1
  %373 = icmp eq i32 %370, 0
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %32, align 1, !tbaa !2432
  %376 = and i32 %370, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376) #9
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %33, align 1, !tbaa !2446
  %381 = xor i32 %370, %369
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %34, align 1, !tbaa !2447
  %385 = zext i1 %373 to i8
  store i8 %385, i8* %35, align 1, !tbaa !2448
  %386 = lshr i32 %370, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %36, align 1, !tbaa !2449
  %388 = lshr i32 %369, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %386
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %37, align 1, !tbaa !2450
  %393 = add i64 %366, 9
  store i64 %393, i64* %PC, align 8
  store i32 %370, i32* %368, align 4
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, -127
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  br label %block_400936
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b16

block_400aef:                                     ; preds = %block_400aa2
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -32
  %18 = add i64 %335, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = shl i64 %20, 3
  %22 = add i64 %21, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 40)
  %23 = add i64 %335, 12
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  switch i64 %25, label %501 [
    i64 4197217, label %block_400b61
    i64 4197192, label %block_400b48
    i64 4197117, label %block_400afd
    i64 4197167, label %block_400b2f
    i64 4197142, label %block_400b16.loopexit
  ]

block_400b7a:                                     ; preds = %block_400aa2
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -8
  %28 = add i64 %335, 14
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %27 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = add i64 %26, -16
  %32 = add i64 %335, 18
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %31 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 12
  store i64 %36, i64* %RCX, align 8, !tbaa !2428
  %37 = lshr i64 %36, 63
  %38 = add i64 %36, %30
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  %39 = icmp ult i64 %38, %30
  %40 = icmp ult i64 %38, %36
  %41 = or i1 %39, %40
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %6, align 1, !tbaa !2432
  %43 = trunc i64 %38 to i32
  %44 = and i32 %43, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #9
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  store i8 %48, i8* %7, align 1, !tbaa !2446
  %49 = xor i64 %36, %30
  %50 = xor i64 %49, %38
  %51 = lshr i64 %50, 4
  %52 = trunc i64 %51 to i8
  %53 = and i8 %52, 1
  store i8 %53, i8* %8, align 1, !tbaa !2447
  %54 = icmp eq i64 %38, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %9, align 1, !tbaa !2448
  %56 = lshr i64 %38, 63
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %10, align 1, !tbaa !2449
  %58 = lshr i64 %30, 63
  %59 = xor i64 %56, %58
  %60 = xor i64 %56, %37
  %61 = add nuw nsw i64 %59, %60
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %11, align 1, !tbaa !2450
  %64 = add i64 %38, 8
  %65 = add i64 %335, 28
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %69 = add i64 %335, -1290
  %70 = add i64 %335, 35
  %71 = load i64, i64* %RSP, align 8, !tbaa !2428
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %RSP, align 8, !tbaa !2428
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  %74 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -64
  %77 = load i32, i32* %EAX, align 4
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 3
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %80, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400ba0.backedge

block_400ba0.backedge:                            ; preds = %block_400b7a, %block_400b2f, %block_400b48, %block_400b61
  %.be = phi i64 [ %.pre.pre, %block_400b7a ], [ %104, %block_400b2f ], [ %160, %block_400b48 ], [ %347, %block_400b61 ]
  %MEMORY.2.be = phi %struct.Memory* [ %74, %block_400b7a ], [ %96, %block_400b2f ], [ %152, %block_400b48 ], [ %339, %block_400b61 ]
  br label %block_400ba0

block_400c0f:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %81 = add i64 %498, -1439
  %82 = add i64 %498, 17
  %83 = load i64, i64* %RSP, align 8, !tbaa !2428
  %84 = add i64 %83, -8
  %85 = inttoptr i64 %84 to i64*
  store i64 %82, i64* %85, align 8
  store i64 %84, i64* %RSP, align 8, !tbaa !2428
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  %86 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %450)
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -80
  %89 = load i32, i32* %EAX, align 4
  %90 = load i64, i64* %PC, align 8
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %92, align 4
  %.pre51 = load i64, i64* %PC, align 8
  br label %block_400c23

block_400b2f:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %93 = load i64, i64* %RSP, align 8, !tbaa !2428
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 4197184, i64* %95, align 8
  store i64 %94, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %96 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -52
  %99 = load i32, i32* %EAX, align 4
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %98 to i32*
  store i32 %99, i32* %102, align 4
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, 93
  store i64 %104, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400c36:                                     ; preds = %block_400c23
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %105 = add i64 %243, -1478
  %106 = add i64 %243, 17
  %107 = load i64, i64* %RSP, align 8, !tbaa !2428
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %RSP, align 8, !tbaa !2428
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  %110 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %111 = load i64, i64* %RBP, align 8
  %112 = add i64 %111, -84
  %113 = load i32, i32* %EAX, align 4
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %112 to i32*
  store i32 %113, i32* %116, align 4
  %117 = load i64, i64* %RSP, align 8
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %117, 96
  store i64 %119, i64* %RSP, align 8, !tbaa !2428
  %120 = icmp ugt i64 %117, -97
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %6, align 1, !tbaa !2432
  %122 = trunc i64 %119 to i32
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #9
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %7, align 1, !tbaa !2446
  %128 = xor i64 %119, %117
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %8, align 1, !tbaa !2447
  %132 = icmp eq i64 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %9, align 1, !tbaa !2448
  %134 = lshr i64 %119, 63
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %10, align 1, !tbaa !2449
  %136 = lshr i64 %117, 63
  %137 = xor i64 %134, %136
  %138 = add nuw nsw i64 %137, %134
  %139 = icmp eq i64 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %11, align 1, !tbaa !2450
  %141 = add i64 %118, 5
  store i64 %141, i64* %PC, align 8
  %142 = add i64 %117, 104
  %143 = inttoptr i64 %119 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RBP, align 8, !tbaa !2428
  store i64 %142, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %118, 6
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %142 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  %148 = add i64 %117, 112
  store i64 %148, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %110

block_400b48:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %149 = load i64, i64* %RSP, align 8, !tbaa !2428
  %150 = add i64 %149, -8
  %151 = inttoptr i64 %150 to i64*
  store i64 4197209, i64* %151, align 8
  store i64 %150, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %152 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -56
  %155 = load i32, i32* %EAX, align 4
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %158, align 4
  %159 = load i64, i64* %PC, align 8
  %160 = add i64 %159, 68
  store i64 %160, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400b16.loopexit:                            ; preds = %block_400aef
  br label %block_400b16

block_400b16:                                     ; preds = %block_400b16.loopexit, %3
  %161 = phi i64 [ %1, %3 ], [ 4197142, %block_400b16.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %277, %block_400b16.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %162 = add i64 %161, -1190
  %163 = add i64 %161, 17
  %164 = load i64, i64* %RSP, align 8, !tbaa !2428
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 %163, i64* %166, align 8
  store i64 %165, i64* %RSP, align 8, !tbaa !2428
  store i64 %162, i64* %PC, align 8, !tbaa !2428
  %167 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -48
  %170 = load i32, i32* %EAX, align 4
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %169 to i32*
  store i32 %170, i32* %173, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, 118
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400c23:                                     ; preds = %block_400bf6, %block_400c0f
  %176 = phi i64 [ %.pre51, %block_400c0f ], [ %257, %block_400bf6 ]
  %MEMORY.1 = phi %struct.Memory* [ %86, %block_400c0f ], [ %249, %block_400bf6 ]
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -16
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
  store i8 %187, i8* %6, align 1, !tbaa !2432
  %188 = and i32 %182, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #9
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %7, align 1, !tbaa !2446
  %193 = xor i32 %182, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %8, align 1, !tbaa !2447
  %197 = zext i1 %185 to i8
  store i8 %197, i8* %9, align 1, !tbaa !2448
  %198 = lshr i32 %182, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %10, align 1, !tbaa !2449
  %200 = lshr i32 %181, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %198
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %11, align 1, !tbaa !2450
  %205 = add i64 %176, 14
  store i64 %205, i64* %PC, align 8
  store i32 %182, i32* %180, align 4
  %206 = load i64, i64* %PC, align 8
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -16
  %209 = add i64 %206, -408
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = add i64 %207, -12
  %214 = add i64 %206, -405
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %211, %216
  %218 = icmp ult i32 %211, %216
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %6, align 1, !tbaa !2432
  %220 = and i32 %217, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #9
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %7, align 1, !tbaa !2446
  %225 = xor i32 %216, %211
  %226 = xor i32 %225, %217
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %8, align 1, !tbaa !2447
  %230 = icmp eq i32 %217, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %9, align 1, !tbaa !2448
  %232 = lshr i32 %217, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %10, align 1, !tbaa !2449
  %234 = lshr i32 %211, 31
  %235 = lshr i32 %216, 31
  %236 = xor i32 %235, %234
  %237 = xor i32 %232, %234
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %11, align 1, !tbaa !2450
  %241 = icmp ne i8 %233, 0
  %242 = xor i1 %241, %239
  %.v = select i1 %242, i64 -399, i64 5
  %243 = add i64 %206, %.v
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  br i1 %242, label %block_400aa2, label %block_400c36

block_400bf6:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %244 = add i64 %498, -1414
  %245 = add i64 %498, 17
  %246 = load i64, i64* %RSP, align 8, !tbaa !2428
  %247 = add i64 %246, -8
  %248 = inttoptr i64 %247 to i64*
  store i64 %245, i64* %248, align 8
  store i64 %247, i64* %RSP, align 8, !tbaa !2428
  store i64 %244, i64* %PC, align 8, !tbaa !2428
  %249 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %450)
  %250 = load i64, i64* %RBP, align 8
  %251 = add i64 %250, -76
  %252 = load i32, i32* %EAX, align 4
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %251 to i32*
  store i32 %252, i32* %255, align 4
  %256 = load i64, i64* %PC, align 8
  %257 = add i64 %256, 25
  store i64 %257, i64* %PC, align 8, !tbaa !2428
  br label %block_400c23

block_400aa2:                                     ; preds = %block_400c23
  %258 = add i64 %207, -8
  %259 = add i64 %243, 4
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = add i64 %243, 8
  store i64 %262, i64* %PC, align 8
  %263 = load i32, i32* %210, align 4
  %264 = sext i32 %263 to i64
  %265 = mul nsw i64 %264, 3
  store i64 %265, i64* %RCX, align 8, !tbaa !2428
  %266 = mul nsw i64 %264, 12
  %267 = add i64 %261, %266
  %268 = add i64 %243, 15
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %272 = add i64 %243, -1074
  %273 = add i64 %243, 35
  %274 = load i64, i64* %RSP, align 8, !tbaa !2428
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %RSP, align 8, !tbaa !2428
  store i64 %272, i64* %PC, align 8, !tbaa !2428
  %277 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %278 = load i64, i64* %RBP, align 8
  %279 = add i64 %278, -8
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %279 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RCX, align 8, !tbaa !2428
  %284 = add i64 %278, -16
  %285 = add i64 %280, 8
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = mul nsw i64 %288, 3
  store i64 %289, i64* %RDI, align 8, !tbaa !2428
  %290 = mul nsw i64 %288, 12
  %291 = add i64 %290, 8
  %292 = add i64 %291, %283
  %293 = add i64 %280, 16
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RDX, align 8, !tbaa !2428
  store i64 %296, i64* %RCX, align 8, !tbaa !2428
  %297 = add nsw i64 %296, -4
  store i64 %297, i64* %RDI, align 8, !tbaa !2428
  %298 = icmp ult i32 %295, 4
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %6, align 1, !tbaa !2432
  %300 = trunc i64 %297 to i32
  %301 = and i32 %300, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301) #9
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %7, align 1, !tbaa !2446
  %306 = xor i64 %297, %296
  %307 = lshr i64 %306, 4
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %8, align 1, !tbaa !2447
  %310 = icmp eq i64 %297, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %9, align 1, !tbaa !2448
  %312 = lshr i64 %297, 63
  %313 = trunc i64 %312 to i8
  store i8 %313, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %314 = add i64 %278, -20
  %315 = load i32, i32* %EAX, align 4
  %316 = add i64 %280, 28
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %314 to i32*
  store i32 %315, i32* %317, align 4
  %318 = load i64, i64* %RBP, align 8
  %319 = add i64 %318, -32
  %320 = load i64, i64* %RCX, align 8
  %321 = load i64, i64* %PC, align 8
  %322 = add i64 %321, 4
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %319 to i64*
  store i64 %320, i64* %323, align 8
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -40
  %326 = load i64, i64* %RDI, align 8
  %327 = load i64, i64* %PC, align 8
  %328 = add i64 %327, 4
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %325 to i64*
  store i64 %326, i64* %329, align 8
  %330 = load i64, i64* %PC, align 8
  %331 = load i8, i8* %6, align 1, !tbaa !2432
  %332 = load i8, i8* %9, align 1, !tbaa !2448
  %333 = or i8 %332, %331
  %334 = icmp eq i8 %333, 0
  %.v66 = select i1 %334, i64 145, i64 6
  %335 = add i64 %330, %.v66
  store i64 %335, i64* %PC, align 8, !tbaa !2428
  br i1 %334, label %block_400b7a, label %block_400aef

block_400b61:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %336 = load i64, i64* %RSP, align 8, !tbaa !2428
  %337 = add i64 %336, -8
  %338 = inttoptr i64 %337 to i64*
  store i64 4197234, i64* %338, align 8
  store i64 %337, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %339 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %340 = load i64, i64* %RBP, align 8
  %341 = add i64 %340, -60
  %342 = load i32, i32* %EAX, align 4
  %343 = load i64, i64* %PC, align 8
  %344 = add i64 %343, 3
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %341 to i32*
  store i32 %342, i32* %345, align 4
  %346 = load i64, i64* %PC, align 8
  %347 = add i64 %346, 43
  store i64 %347, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400ba0:                                     ; preds = %block_400ba0.backedge, %block_400b16
  %348 = phi i64 [ %175, %block_400b16 ], [ %.be, %block_400ba0.backedge ]
  %MEMORY.2 = phi %struct.Memory* [ %167, %block_400b16 ], [ %MEMORY.2.be, %block_400ba0.backedge ]
  %349 = load i64, i64* %RBP, align 8
  %350 = add i64 %349, -8
  %351 = add i64 %348, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %349, -16
  %355 = add i64 %348, 8
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = mul nsw i64 %358, 12
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = lshr i64 %359, 63
  %361 = add i64 %359, %353
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = icmp ult i64 %361, %353
  %363 = icmp ult i64 %361, %359
  %364 = or i1 %362, %363
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %6, align 1, !tbaa !2432
  %366 = trunc i64 %361 to i32
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367) #9
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %7, align 1, !tbaa !2446
  %372 = xor i64 %359, %353
  %373 = xor i64 %372, %361
  %374 = lshr i64 %373, 4
  %375 = trunc i64 %374 to i8
  %376 = and i8 %375, 1
  store i8 %376, i8* %8, align 1, !tbaa !2447
  %377 = icmp eq i64 %361, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %9, align 1, !tbaa !2448
  %379 = lshr i64 %361, 63
  %380 = trunc i64 %379 to i8
  store i8 %380, i8* %10, align 1, !tbaa !2449
  %381 = lshr i64 %353, 63
  %382 = xor i64 %379, %381
  %383 = xor i64 %379, %360
  %384 = add nuw nsw i64 %382, %383
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %11, align 1, !tbaa !2450
  %387 = add i64 %361, 4
  %388 = add i64 %348, 18
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RSI, align 8, !tbaa !2428
  %392 = add i64 %348, 22
  store i64 %392, i64* %PC, align 8
  %393 = load i64, i64* %352, align 8
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = add i64 %348, 26
  store i64 %394, i64* %PC, align 8
  %395 = load i32, i32* %356, align 4
  %396 = sext i32 %395 to i64
  %397 = mul nsw i64 %396, 12
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = lshr i64 %397, 63
  %399 = add i64 %397, %393
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = icmp ult i64 %399, %393
  %401 = icmp ult i64 %399, %397
  %402 = or i1 %400, %401
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %6, align 1, !tbaa !2432
  %404 = trunc i64 %399 to i32
  %405 = and i32 %404, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405) #9
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %7, align 1, !tbaa !2446
  %410 = xor i64 %397, %393
  %411 = xor i64 %410, %399
  %412 = lshr i64 %411, 4
  %413 = trunc i64 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %8, align 1, !tbaa !2447
  %415 = icmp eq i64 %399, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %9, align 1, !tbaa !2448
  %417 = lshr i64 %399, 63
  %418 = trunc i64 %417 to i8
  store i8 %418, i8* %10, align 1, !tbaa !2449
  %419 = lshr i64 %393, 63
  %420 = xor i64 %417, %419
  %421 = xor i64 %417, %398
  %422 = add nuw nsw i64 %420, %421
  %423 = icmp eq i64 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %11, align 1, !tbaa !2450
  store i64 %399, i64* %RDI, align 8, !tbaa !2428
  %425 = load i64, i64* %RBP, align 8
  %426 = add i64 %425, -68
  %427 = add i64 %348, 39
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 %390, i32* %428, align 4
  %429 = load i64, i64* %PC, align 8
  %430 = add i64 %429, -487
  %431 = add i64 %429, 5
  %432 = load i64, i64* %RSP, align 8, !tbaa !2428
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %RSP, align 8, !tbaa !2428
  store i64 %430, i64* %PC, align 8, !tbaa !2428
  %435 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %430, %struct.Memory* %MEMORY.2)
  %436 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %437 = load i64, i64* %RBP, align 8
  %438 = add i64 %437, -68
  %439 = add i64 %436, 13
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RSI, align 8, !tbaa !2428
  %443 = load i32, i32* %EAX, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %445 = add i64 %436, -1372
  %446 = add i64 %436, 22
  %447 = load i64, i64* %RSP, align 8, !tbaa !2428
  %448 = add i64 %447, -8
  %449 = inttoptr i64 %448 to i64*
  store i64 %446, i64* %449, align 8
  store i64 %448, i64* %RSP, align 8, !tbaa !2428
  store i64 %445, i64* %PC, align 8, !tbaa !2428
  %450 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %435)
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -16
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RDX, align 8, !tbaa !2428
  %458 = add i64 %451, -12
  %459 = add i64 %453, 6
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, -1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RSI, align 8, !tbaa !2428
  %464 = lshr i32 %462, 31
  %465 = sub i32 %456, %462
  %466 = icmp ult i32 %456, %462
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %6, align 1, !tbaa !2432
  %468 = and i32 %465, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468) #9
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %7, align 1, !tbaa !2446
  %473 = xor i32 %462, %456
  %474 = xor i32 %473, %465
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %8, align 1, !tbaa !2447
  %478 = icmp eq i32 %465, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %9, align 1, !tbaa !2448
  %480 = lshr i32 %465, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %10, align 1, !tbaa !2449
  %482 = lshr i32 %456, 31
  %483 = xor i32 %464, %482
  %484 = xor i32 %480, %482
  %485 = add nuw nsw i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %11, align 1, !tbaa !2450
  %488 = add i64 %451, -72
  %489 = load i32, i32* %EAX, align 4
  %490 = add i64 %453, 14
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %488 to i32*
  store i32 %489, i32* %491, align 4
  %492 = load i64, i64* %PC, align 8
  %493 = load i8, i8* %10, align 1, !tbaa !2449
  %494 = icmp ne i8 %493, 0
  %495 = load i8, i8* %11, align 1, !tbaa !2450
  %496 = icmp ne i8 %495, 0
  %497 = xor i1 %494, %496
  %.v65 = select i1 %497, i64 6, i64 31
  %498 = add i64 %492, %.v65
  %499 = add i64 %498, 10
  store i64 %499, i64* %PC, align 8
  br i1 %497, label %block_400bf6, label %block_400c0f

block_400afd:                                     ; preds = %block_400aef
  %500 = tail call %struct.Memory* @sub_400afd(%struct.State* nonnull %0, i64 4197117, %struct.Memory* %277)
  ret %struct.Memory* %500

; <label>:501:                                    ; preds = %block_400aef
  %502 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %25, %struct.Memory* %277)
  ret %struct.Memory* %502
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401330___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401330:
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
  %63 = add i64 %38, -3371
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400620__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401386, label %block_401366

block_401386.loopexit:                            ; preds = %block_401370
  br label %block_401386

block_401386:                                     ; preds = %block_401386.loopexit, %block_401330
  %81 = phi i64 [ %80, %block_401330 ], [ %179, %block_401386.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401330 ], [ %149, %block_401386.loopexit ]
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

block_401366:                                     ; preds = %block_401330
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401370

block_401370:                                     ; preds = %block_401370, %block_401366
  %134 = phi i64 [ 0, %block_401366 ], [ %152, %block_401370 ]
  %135 = phi i64 [ %133, %block_401366 ], [ %179, %block_401370 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401366 ], [ %149, %block_401370 ]
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
  br i1 %169, label %block_401386.loopexit, label %block_401370
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007c0_newWorkList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 32
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
  store i64 4, i64* %RAX, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %39 = add i64 %7, -12
  %40 = load i32, i32* %EDI, align 4
  %41 = add i64 %10, 17
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %RDI, align 8, !tbaa !2428
  %50 = add i64 %45, -338
  %51 = add i64 %45, 9
  %52 = load i64, i64* %RSP, align 8, !tbaa !2428
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %51, i64* %54, align 8
  store i64 %53, i64* %RSP, align 8, !tbaa !2428
  store i64 %50, i64* %PC, align 8, !tbaa !2428
  %55 = tail call fastcc %struct.Memory* @ext_602150_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -16
  %58 = load i64, i64* %RAX, align 8
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -16
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 5
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i64*
  %67 = load i64, i64* %66, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #9
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %74 = icmp eq i64 %67, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %29, align 1, !tbaa !2448
  %76 = lshr i64 %67, 63
  %77 = trunc i64 %76 to i8
  store i8 %77, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %74, i64 21, i64 11
  %78 = add i64 %64, %.v
  store i64 %78, i64* %PC, align 8, !tbaa !2428
  br i1 %74, label %block_4007f4, label %block_4007ea

block_4007f4:                                     ; preds = %block_4007c0
  %EAX = bitcast %union.anon* %3 to i32*
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 80), i64* %RSI, align 8, !tbaa !2428
  %79 = load i64, i64* @stderr, align 32
  store i64 %79, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %80 = add i64 %78, -340
  %81 = add i64 %78, 25
  %82 = load i64, i64* %RSP, align 8, !tbaa !2428
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  %85 = tail call fastcc %struct.Memory* @ext_602160_fprintf(%struct.State* nonnull %0, %struct.Memory* %55)
  %86 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -20
  %89 = load i32, i32* %EAX, align 4
  %90 = add i64 %86, 8
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, -341
  %94 = add i64 %92, 5
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call fastcc %struct.Memory* @ext_4006c0_exit(%struct.State* nonnull %0, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %PC, align 8
  %101 = tail call %struct.Memory* @sub_400820_newCombList(%struct.State* nonnull %0, i64 %100, %struct.Memory* %98)
  ret %struct.Memory* %101

block_4007ea:                                     ; preds = %block_4007c0
  %102 = add i64 %78, 4
  store i64 %102, i64* %PC, align 8
  %103 = load i64, i64* %66, align 8
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = load i64, i64* %RSP, align 8
  %105 = add i64 %104, 32
  store i64 %105, i64* %RSP, align 8, !tbaa !2428
  %106 = icmp ugt i64 %104, -33
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1, !tbaa !2432
  %108 = trunc i64 %105 to i32
  %109 = and i32 %108, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #9
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1, !tbaa !2446
  %114 = xor i64 %105, %104
  %115 = lshr i64 %114, 4
  %116 = trunc i64 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1, !tbaa !2447
  %118 = icmp eq i64 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1, !tbaa !2448
  %120 = lshr i64 %105, 63
  %121 = trunc i64 %120 to i8
  store i8 %121, i8* %32, align 1, !tbaa !2449
  %122 = lshr i64 %104, 63
  %123 = xor i64 %120, %122
  %124 = add nuw nsw i64 %123, %120
  %125 = icmp eq i64 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %38, align 1, !tbaa !2450
  %127 = add i64 %78, 9
  store i64 %127, i64* %PC, align 8
  %128 = add i64 %104, 40
  %129 = inttoptr i64 %105 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RBP, align 8, !tbaa !2428
  store i64 %128, i64* %RSP, align 8, !tbaa !2428
  %131 = add i64 %78, 10
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %128 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %PC, align 8, !tbaa !2428
  %134 = add i64 %104, 48
  store i64 %134, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %55
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a80_printSolution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a80:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
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
  %40 = add i64 %8, -16
  %41 = load i64, i64* %RDI, align 8
  %42 = add i64 %11, 11
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -12
  %46 = load i32, i32* %ESI, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %.pre = load i64, i64* %PC, align 8
  %55 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  br label %block_400a96

block_400afd:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %59 = load i64, i64* %RSP, align 8, !tbaa !2428
  %60 = add i64 %59, -8
  %61 = inttoptr i64 %60 to i64*
  store i64 4197134, i64* %61, align 8
  store i64 %60, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %62 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -44
  %65 = load i32, i32* %EAX, align 4
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %68, align 4
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 143
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400aef:                                     ; preds = %block_400aa2
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -32
  %73 = add i64 %553, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RAX, align 8, !tbaa !2428
  %76 = shl i64 %75, 3
  %77 = add i64 %76, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 40)
  %78 = add i64 %553, 12
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RCX, align 8, !tbaa !2428
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  switch i64 %80, label %554 [
    i64 4197217, label %block_400b61
    i64 4197192, label %block_400b48
    i64 4197117, label %block_400afd
    i64 4197167, label %block_400b2f
    i64 4197142, label %block_400b16
  ]

block_400b7a:                                     ; preds = %block_400aa2
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -8
  %83 = add i64 %553, 14
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = add i64 %81, -16
  %87 = add i64 %553, 18
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, 12
  store i64 %91, i64* %RCX, align 8, !tbaa !2428
  %92 = lshr i64 %91, 63
  %93 = add i64 %91, %85
  store i64 %93, i64* %RAX, align 8, !tbaa !2428
  %94 = icmp ult i64 %93, %85
  %95 = icmp ult i64 %93, %91
  %96 = or i1 %94, %95
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %15, align 1, !tbaa !2432
  %98 = trunc i64 %93 to i32
  %99 = and i32 %98, 255
  %100 = tail call i32 @llvm.ctpop.i32(i32 %99) #9
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %22, align 1, !tbaa !2446
  %104 = xor i64 %91, %85
  %105 = xor i64 %104, %93
  %106 = lshr i64 %105, 4
  %107 = trunc i64 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %27, align 1, !tbaa !2447
  %109 = icmp eq i64 %93, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %30, align 1, !tbaa !2448
  %111 = lshr i64 %93, 63
  %112 = trunc i64 %111 to i8
  store i8 %112, i8* %33, align 1, !tbaa !2449
  %113 = lshr i64 %85, 63
  %114 = xor i64 %111, %113
  %115 = xor i64 %111, %92
  %116 = add nuw nsw i64 %114, %115
  %117 = icmp eq i64 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %39, align 1, !tbaa !2450
  %119 = add i64 %93, 8
  %120 = add i64 %553, 28
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %124 = add i64 %553, -1290
  %125 = add i64 %553, 35
  %126 = load i64, i64* %RSP, align 8, !tbaa !2428
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  %129 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -64
  %132 = load i32, i32* %EAX, align 4
  %133 = load i64, i64* %PC, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %135, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400ba0

block_400c23:                                     ; preds = %block_400bf6, %block_400c0f
  %136 = phi i64 [ %.pre12, %block_400c0f ], [ %475, %block_400bf6 ]
  %MEMORY.0 = phi %struct.Memory* [ %185, %block_400c0f ], [ %467, %block_400bf6 ]
  %137 = load i64, i64* %RBP, align 8
  %138 = add i64 %137, -16
  %139 = add i64 %136, 8
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %144 = icmp eq i32 %141, -1
  %145 = icmp eq i32 %142, 0
  %146 = or i1 %144, %145
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %15, align 1, !tbaa !2432
  %148 = and i32 %142, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #9
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %22, align 1, !tbaa !2446
  %153 = xor i32 %142, %141
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %27, align 1, !tbaa !2447
  %157 = zext i1 %145 to i8
  store i8 %157, i8* %30, align 1, !tbaa !2448
  %158 = lshr i32 %142, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %33, align 1, !tbaa !2449
  %160 = lshr i32 %141, 31
  %161 = xor i32 %158, %160
  %162 = add nuw nsw i32 %161, %158
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %39, align 1, !tbaa !2450
  %165 = add i64 %136, 14
  store i64 %165, i64* %PC, align 8
  store i32 %142, i32* %140, align 4
  %166 = load i64, i64* %PC, align 8
  %167 = add i64 %166, -411
  store i64 %167, i64* %PC, align 8, !tbaa !2428
  br label %block_400a96

block_400b16:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %168 = load i64, i64* %RSP, align 8, !tbaa !2428
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 4197159, i64* %170, align 8
  store i64 %169, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %171 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -48
  %174 = load i32, i32* %EAX, align 4
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %177, align 4
  %178 = load i64, i64* %PC, align 8
  %179 = add i64 %178, 118
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400c0f:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %180 = add i64 %448, -1439
  %181 = add i64 %448, 17
  %182 = load i64, i64* %RSP, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %RSP, align 8, !tbaa !2428
  store i64 %180, i64* %PC, align 8, !tbaa !2428
  %185 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %400)
  %186 = load i64, i64* %RBP, align 8
  %187 = add i64 %186, -80
  %188 = load i32, i32* %EAX, align 4
  %189 = load i64, i64* %PC, align 8
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %187 to i32*
  store i32 %188, i32* %191, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400c23

block_400a96:                                     ; preds = %block_400c23, %block_400a80
  %192 = phi i64 [ %.pre, %block_400a80 ], [ %167, %block_400c23 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400a80 ], [ %MEMORY.0, %block_400c23 ]
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -16
  %195 = add i64 %192, 3
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %199 = add i64 %193, -12
  %200 = add i64 %192, 6
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = sub i32 %197, %202
  %204 = icmp ult i32 %197, %202
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %15, align 1, !tbaa !2432
  %206 = and i32 %203, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206) #9
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %22, align 1, !tbaa !2446
  %211 = xor i32 %202, %197
  %212 = xor i32 %211, %203
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %27, align 1, !tbaa !2447
  %216 = icmp eq i32 %203, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %30, align 1, !tbaa !2448
  %218 = lshr i32 %203, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %33, align 1, !tbaa !2449
  %220 = lshr i32 %197, 31
  %221 = lshr i32 %202, 31
  %222 = xor i32 %221, %220
  %223 = xor i32 %218, %220
  %224 = add nuw nsw i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %39, align 1, !tbaa !2450
  %227 = icmp ne i8 %219, 0
  %228 = xor i1 %227, %225
  %.v = select i1 %228, i64 12, i64 416
  %229 = add i64 %192, %.v
  store i64 %229, i64* %PC, align 8, !tbaa !2428
  br i1 %228, label %block_400aa2, label %block_400c36

block_400b2f:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %230 = load i64, i64* %RSP, align 8, !tbaa !2428
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 4197184, i64* %232, align 8
  store i64 %231, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %233 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -52
  %236 = load i32, i32* %EAX, align 4
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %235 to i32*
  store i32 %236, i32* %239, align 4
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 93
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400b48:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 4197209, i64* %244, align 8
  store i64 %243, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %245 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %246 = load i64, i64* %RBP, align 8
  %247 = add i64 %246, -56
  %248 = load i32, i32* %EAX, align 4
  %249 = load i64, i64* %PC, align 8
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %247 to i32*
  store i32 %248, i32* %251, align 4
  %252 = load i64, i64* %PC, align 8
  %253 = add i64 %252, 68
  store i64 %253, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400c36:                                     ; preds = %block_400a96
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %254 = add i64 %229, -1478
  %255 = add i64 %229, 17
  %256 = load i64, i64* %RSP, align 8, !tbaa !2428
  %257 = add i64 %256, -8
  %258 = inttoptr i64 %257 to i64*
  store i64 %255, i64* %258, align 8
  store i64 %257, i64* %RSP, align 8, !tbaa !2428
  store i64 %254, i64* %PC, align 8, !tbaa !2428
  %259 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %260 = load i64, i64* %RBP, align 8
  %261 = add i64 %260, -84
  %262 = load i32, i32* %EAX, align 4
  %263 = load i64, i64* %PC, align 8
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %265, align 4
  %266 = load i64, i64* %RSP, align 8
  %267 = load i64, i64* %PC, align 8
  %268 = add i64 %266, 96
  store i64 %268, i64* %RSP, align 8, !tbaa !2428
  %269 = icmp ugt i64 %266, -97
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %15, align 1, !tbaa !2432
  %271 = trunc i64 %268 to i32
  %272 = and i32 %271, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272) #9
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %22, align 1, !tbaa !2446
  %277 = xor i64 %268, %266
  %278 = lshr i64 %277, 4
  %279 = trunc i64 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %27, align 1, !tbaa !2447
  %281 = icmp eq i64 %268, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %30, align 1, !tbaa !2448
  %283 = lshr i64 %268, 63
  %284 = trunc i64 %283 to i8
  store i8 %284, i8* %33, align 1, !tbaa !2449
  %285 = lshr i64 %266, 63
  %286 = xor i64 %283, %285
  %287 = add nuw nsw i64 %286, %283
  %288 = icmp eq i64 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %39, align 1, !tbaa !2450
  %290 = add i64 %267, 5
  store i64 %290, i64* %PC, align 8
  %291 = add i64 %266, 104
  %292 = inttoptr i64 %268 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RBP, align 8, !tbaa !2428
  store i64 %291, i64* %RSP, align 8, !tbaa !2428
  %294 = add i64 %267, 6
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %291 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  %297 = add i64 %266, 112
  store i64 %297, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %259

block_400ba0:                                     ; preds = %block_400b61, %block_400b48, %block_400b2f, %block_400b16, %block_400b7a, %block_400afd
  %298 = phi i64 [ %.pre11, %block_400b7a ], [ %179, %block_400b16 ], [ %241, %block_400b2f ], [ %70, %block_400afd ], [ %253, %block_400b48 ], [ %461, %block_400b61 ]
  %MEMORY.2 = phi %struct.Memory* [ %129, %block_400b7a ], [ %171, %block_400b16 ], [ %233, %block_400b2f ], [ %62, %block_400afd ], [ %245, %block_400b48 ], [ %453, %block_400b61 ]
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -8
  %301 = add i64 %298, 4
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i64*
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %RAX, align 8, !tbaa !2428
  %304 = add i64 %299, -16
  %305 = add i64 %298, 8
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = mul nsw i64 %308, 12
  store i64 %309, i64* %RCX, align 8, !tbaa !2428
  %310 = lshr i64 %309, 63
  %311 = add i64 %309, %303
  store i64 %311, i64* %RAX, align 8, !tbaa !2428
  %312 = icmp ult i64 %311, %303
  %313 = icmp ult i64 %311, %309
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %15, align 1, !tbaa !2432
  %316 = trunc i64 %311 to i32
  %317 = and i32 %316, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317) #9
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %22, align 1, !tbaa !2446
  %322 = xor i64 %309, %303
  %323 = xor i64 %322, %311
  %324 = lshr i64 %323, 4
  %325 = trunc i64 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %27, align 1, !tbaa !2447
  %327 = icmp eq i64 %311, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %30, align 1, !tbaa !2448
  %329 = lshr i64 %311, 63
  %330 = trunc i64 %329 to i8
  store i8 %330, i8* %33, align 1, !tbaa !2449
  %331 = lshr i64 %303, 63
  %332 = xor i64 %329, %331
  %333 = xor i64 %329, %310
  %334 = add nuw nsw i64 %332, %333
  %335 = icmp eq i64 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %39, align 1, !tbaa !2450
  %337 = add i64 %311, 4
  %338 = add i64 %298, 18
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RSI, align 8, !tbaa !2428
  %342 = add i64 %298, 22
  store i64 %342, i64* %PC, align 8
  %343 = load i64, i64* %302, align 8
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = add i64 %298, 26
  store i64 %344, i64* %PC, align 8
  %345 = load i32, i32* %306, align 4
  %346 = sext i32 %345 to i64
  %347 = mul nsw i64 %346, 12
  store i64 %347, i64* %RCX, align 8, !tbaa !2428
  %348 = lshr i64 %347, 63
  %349 = add i64 %347, %343
  store i64 %349, i64* %RAX, align 8, !tbaa !2428
  %350 = icmp ult i64 %349, %343
  %351 = icmp ult i64 %349, %347
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %15, align 1, !tbaa !2432
  %354 = trunc i64 %349 to i32
  %355 = and i32 %354, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355) #9
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %22, align 1, !tbaa !2446
  %360 = xor i64 %347, %343
  %361 = xor i64 %360, %349
  %362 = lshr i64 %361, 4
  %363 = trunc i64 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %27, align 1, !tbaa !2447
  %365 = icmp eq i64 %349, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %30, align 1, !tbaa !2448
  %367 = lshr i64 %349, 63
  %368 = trunc i64 %367 to i8
  store i8 %368, i8* %33, align 1, !tbaa !2449
  %369 = lshr i64 %343, 63
  %370 = xor i64 %367, %369
  %371 = xor i64 %367, %348
  %372 = add nuw nsw i64 %370, %371
  %373 = icmp eq i64 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %39, align 1, !tbaa !2450
  store i64 %349, i64* %RDI, align 8, !tbaa !2428
  %375 = load i64, i64* %RBP, align 8
  %376 = add i64 %375, -68
  %377 = add i64 %298, 39
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %376 to i32*
  store i32 %340, i32* %378, align 4
  %379 = load i64, i64* %PC, align 8
  %380 = add i64 %379, -487
  %381 = add i64 %379, 5
  %382 = load i64, i64* %RSP, align 8, !tbaa !2428
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %381, i64* %384, align 8
  store i64 %383, i64* %RSP, align 8, !tbaa !2428
  store i64 %380, i64* %PC, align 8, !tbaa !2428
  %385 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %380, %struct.Memory* %MEMORY.2)
  %386 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %387 = load i64, i64* %RBP, align 8
  %388 = add i64 %387, -68
  %389 = add i64 %386, 13
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RSI, align 8, !tbaa !2428
  %393 = load i32, i32* %EAX, align 4
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %395 = add i64 %386, -1372
  %396 = add i64 %386, 22
  %397 = load i64, i64* %RSP, align 8, !tbaa !2428
  %398 = add i64 %397, -8
  %399 = inttoptr i64 %398 to i64*
  store i64 %396, i64* %399, align 8
  store i64 %398, i64* %RSP, align 8, !tbaa !2428
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  %400 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %385)
  %401 = load i64, i64* %RBP, align 8
  %402 = add i64 %401, -16
  %403 = load i64, i64* %PC, align 8
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RDX, align 8, !tbaa !2428
  %408 = add i64 %401, -12
  %409 = add i64 %403, 6
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, -1
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RSI, align 8, !tbaa !2428
  %414 = lshr i32 %412, 31
  %415 = sub i32 %406, %412
  %416 = icmp ult i32 %406, %412
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %15, align 1, !tbaa !2432
  %418 = and i32 %415, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418) #9
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %22, align 1, !tbaa !2446
  %423 = xor i32 %412, %406
  %424 = xor i32 %423, %415
  %425 = lshr i32 %424, 4
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %27, align 1, !tbaa !2447
  %428 = icmp eq i32 %415, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %30, align 1, !tbaa !2448
  %430 = lshr i32 %415, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %33, align 1, !tbaa !2449
  %432 = lshr i32 %406, 31
  %433 = xor i32 %414, %432
  %434 = xor i32 %430, %432
  %435 = add nuw nsw i32 %434, %433
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %39, align 1, !tbaa !2450
  %438 = add i64 %401, -72
  %439 = load i32, i32* %EAX, align 4
  %440 = add i64 %403, 14
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %438 to i32*
  store i32 %439, i32* %441, align 4
  %442 = load i64, i64* %PC, align 8
  %443 = load i8, i8* %33, align 1, !tbaa !2449
  %444 = icmp ne i8 %443, 0
  %445 = load i8, i8* %39, align 1, !tbaa !2450
  %446 = icmp ne i8 %445, 0
  %447 = xor i1 %444, %446
  %.v18 = select i1 %447, i64 6, i64 31
  %448 = add i64 %442, %.v18
  %449 = add i64 %448, 10
  store i64 %449, i64* %PC, align 8
  br i1 %447, label %block_400bf6, label %block_400c0f

block_400b61:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %450 = load i64, i64* %RSP, align 8, !tbaa !2428
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 4197234, i64* %452, align 8
  store i64 %451, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %453 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %454 = load i64, i64* %RBP, align 8
  %455 = add i64 %454, -60
  %456 = load i32, i32* %EAX, align 4
  %457 = load i64, i64* %PC, align 8
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %455 to i32*
  store i32 %456, i32* %459, align 4
  %460 = load i64, i64* %PC, align 8
  %461 = add i64 %460, 43
  store i64 %461, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400bf6:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %462 = add i64 %448, -1414
  %463 = add i64 %448, 17
  %464 = load i64, i64* %RSP, align 8, !tbaa !2428
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %463, i64* %466, align 8
  store i64 %465, i64* %RSP, align 8, !tbaa !2428
  store i64 %462, i64* %PC, align 8, !tbaa !2428
  %467 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %400)
  %468 = load i64, i64* %RBP, align 8
  %469 = add i64 %468, -76
  %470 = load i32, i32* %EAX, align 4
  %471 = load i64, i64* %PC, align 8
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %469 to i32*
  store i32 %470, i32* %473, align 4
  %474 = load i64, i64* %PC, align 8
  %475 = add i64 %474, 25
  store i64 %475, i64* %PC, align 8, !tbaa !2428
  br label %block_400c23

block_400aa2:                                     ; preds = %block_400a96
  %476 = add i64 %193, -8
  %477 = add i64 %229, 4
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %480 = add i64 %229, 8
  store i64 %480, i64* %PC, align 8
  %481 = load i32, i32* %196, align 4
  %482 = sext i32 %481 to i64
  %483 = mul nsw i64 %482, 3
  store i64 %483, i64* %RCX, align 8, !tbaa !2428
  %484 = mul nsw i64 %482, 12
  %485 = add i64 %479, %484
  %486 = add i64 %229, 15
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 %58, i8* %22, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %30, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %490 = add i64 %229, -1074
  %491 = add i64 %229, 35
  %492 = load i64, i64* %RSP, align 8, !tbaa !2428
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %491, i64* %494, align 8
  store i64 %493, i64* %RSP, align 8, !tbaa !2428
  store i64 %490, i64* %PC, align 8, !tbaa !2428
  %495 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %496 = load i64, i64* %RBP, align 8
  %497 = add i64 %496, -8
  %498 = load i64, i64* %PC, align 8
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RCX, align 8, !tbaa !2428
  %502 = add i64 %496, -16
  %503 = add i64 %498, 8
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  %507 = mul nsw i64 %506, 3
  store i64 %507, i64* %RDI, align 8, !tbaa !2428
  %508 = mul nsw i64 %506, 12
  %509 = add i64 %508, 8
  %510 = add i64 %509, %501
  %511 = add i64 %498, 16
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RDX, align 8, !tbaa !2428
  store i64 %514, i64* %RCX, align 8, !tbaa !2428
  %515 = add nsw i64 %514, -4
  store i64 %515, i64* %RDI, align 8, !tbaa !2428
  %516 = icmp ult i32 %513, 4
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %15, align 1, !tbaa !2432
  %518 = trunc i64 %515 to i32
  %519 = and i32 %518, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519) #9
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %22, align 1, !tbaa !2446
  %524 = xor i64 %515, %514
  %525 = lshr i64 %524, 4
  %526 = trunc i64 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %27, align 1, !tbaa !2447
  %528 = icmp eq i64 %515, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %30, align 1, !tbaa !2448
  %530 = lshr i64 %515, 63
  %531 = trunc i64 %530 to i8
  store i8 %531, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %532 = add i64 %496, -20
  %533 = load i32, i32* %EAX, align 4
  %534 = add i64 %498, 28
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %532 to i32*
  store i32 %533, i32* %535, align 4
  %536 = load i64, i64* %RBP, align 8
  %537 = add i64 %536, -32
  %538 = load i64, i64* %RCX, align 8
  %539 = load i64, i64* %PC, align 8
  %540 = add i64 %539, 4
  store i64 %540, i64* %PC, align 8
  %541 = inttoptr i64 %537 to i64*
  store i64 %538, i64* %541, align 8
  %542 = load i64, i64* %RBP, align 8
  %543 = add i64 %542, -40
  %544 = load i64, i64* %RDI, align 8
  %545 = load i64, i64* %PC, align 8
  %546 = add i64 %545, 4
  store i64 %546, i64* %PC, align 8
  %547 = inttoptr i64 %543 to i64*
  store i64 %544, i64* %547, align 8
  %548 = load i64, i64* %PC, align 8
  %549 = load i8, i8* %15, align 1, !tbaa !2432
  %550 = load i8, i8* %30, align 1, !tbaa !2448
  %551 = or i8 %550, %549
  %552 = icmp eq i8 %551, 0
  %.v17 = select i1 %552, i64 145, i64 6
  %553 = add i64 %548, %.v17
  store i64 %553, i64* %PC, align 8, !tbaa !2428
  br i1 %552, label %block_400b7a, label %block_400aef

; <label>:554:                                    ; preds = %block_400aef
  %555 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %80, %struct.Memory* %495)
  ret %struct.Memory* %555
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4012c0_search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012c0:
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
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %10 = add i64 %9, -689
  %11 = add i64 %9, 30
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_401010_doSearch(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_4012f0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
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
  %40 = add i64 %7, -12
  %41 = add i64 %10, 14
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
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, -438
  %57 = add i64 %55, 5
  %58 = load i64, i64* %RSP, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %RSP, align 8, !tbaa !2428
  store i64 %56, i64* %PC, align 8, !tbaa !2428
  %61 = tail call %struct.Memory* @sub_401150_getInput(%struct.State* nonnull %0, i64 %56, %struct.Memory* %2)
  %62 = load i32, i32* %EAX, align 4
  %63 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %64 = and i32 %62, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #9
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %69 = icmp eq i32 %62, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %30, align 1, !tbaa !2448
  %71 = lshr i32 %62, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v = select i1 %69, i64 14, i64 9
  %73 = add i64 %63, %.v
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  br i1 %69, label %block_401319, label %block_401314

block_401314:                                     ; preds = %block_4012f0
  %74 = add i64 %73, -84
  %75 = add i64 %73, 5
  %76 = load i64, i64* %RSP, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %RSP, align 8, !tbaa !2428
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  %79 = tail call %struct.Memory* @sub_4012c0_search(%struct.State* nonnull %0, i64 %74, %struct.Memory* %61)
  %.pre = load i64, i64* %PC, align 8
  br label %block_401319

block_401319:                                     ; preds = %block_401314, %block_4012f0
  %80 = phi i64 [ %73, %block_4012f0 ], [ %.pre, %block_401314 ]
  %MEMORY.0 = phi %struct.Memory* [ %61, %block_4012f0 ], [ %79, %block_401314 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %81 = load i64, i64* %RSP, align 8
  %82 = add i64 %81, 16
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  %83 = icmp ugt i64 %81, -17
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1, !tbaa !2432
  %85 = trunc i64 %82 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #9
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1, !tbaa !2446
  %91 = xor i64 %81, 16
  %92 = xor i64 %91, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %27, align 1, !tbaa !2447
  %96 = icmp eq i64 %82, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %30, align 1, !tbaa !2448
  %98 = lshr i64 %82, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %33, align 1, !tbaa !2449
  %100 = lshr i64 %81, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %39, align 1, !tbaa !2450
  %105 = add i64 %80, 7
  store i64 %105, i64* %PC, align 8
  %106 = add i64 %81, 24
  %107 = inttoptr i64 %82 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RBP, align 8, !tbaa !2428
  store i64 %106, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %80, 8
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %106 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  %112 = add i64 %81, 32
  store i64 %112, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400780___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400780:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
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
  br i1 %12, label %block_400789, label %block_4007a0

block_4007a0:                                     ; preds = %block_400780
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

block_400789:                                     ; preds = %block_400780
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
  %36 = tail call %struct.Memory* @sub_400710_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
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
define %struct.Memory* @sub_400710_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400738:
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
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400b61(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b61

block_400aef:                                     ; preds = %block_400aa2
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -32
  %18 = add i64 %308, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = shl i64 %20, 3
  %22 = add i64 %21, add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 40)
  %23 = add i64 %308, 12
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  switch i64 %25, label %479 [
    i64 4197217, label %block_400b61.loopexit
    i64 4197192, label %block_400b48
    i64 4197117, label %block_400afd
    i64 4197167, label %block_400b2f
    i64 4197142, label %block_400b16
  ]

block_400bf6:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %26 = add i64 %474, -1414
  %27 = add i64 %474, 17
  %28 = load i64, i64* %RSP, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %31 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %426)
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -76
  %34 = load i32, i32* %EAX, align 4
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %PC, align 8
  %39 = add i64 %38, 25
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  br label %block_400c23

block_400b48:                                     ; preds = %block_400aef
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %40 = load i64, i64* %RSP, align 8, !tbaa !2428
  %41 = add i64 %40, -8
  %42 = inttoptr i64 %41 to i64*
  store i64 4197209, i64* %42, align 8
  store i64 %41, i64* %RSP, align 8, !tbaa !2428
  store i64 4195952, i64* %PC, align 8, !tbaa !2428
  %43 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %250)
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -56
  %46 = load i32, i32* %EAX, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 68
  store i64 %51, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0.backedge

block_400ba0.backedge:                            ; preds = %block_400b48, %block_400b7a
  %.be = phi i64 [ %.pre.pre, %block_400b7a ], [ %51, %block_400b48 ]
  %MEMORY.2.be = phi %struct.Memory* [ %156, %block_400b7a ], [ %43, %block_400b48 ]
  br label %block_400ba0

block_400c36:                                     ; preds = %block_400c23
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %52 = add i64 %230, -1478
  %53 = add i64 %230, 17
  %54 = load i64, i64* %RSP, align 8, !tbaa !2428
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %53, i64* %56, align 8
  store i64 %55, i64* %RSP, align 8, !tbaa !2428
  store i64 %52, i64* %PC, align 8, !tbaa !2428
  %57 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -84
  %60 = load i32, i32* %EAX, align 4
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RSP, align 8
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %64, 96
  store i64 %66, i64* %RSP, align 8, !tbaa !2428
  %67 = icmp ugt i64 %64, -97
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %6, align 1, !tbaa !2432
  %69 = trunc i64 %66 to i32
  %70 = and i32 %69, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #9
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %7, align 1, !tbaa !2446
  %75 = xor i64 %66, %64
  %76 = lshr i64 %75, 4
  %77 = trunc i64 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %8, align 1, !tbaa !2447
  %79 = icmp eq i64 %66, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %9, align 1, !tbaa !2448
  %81 = lshr i64 %66, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %10, align 1, !tbaa !2449
  %83 = lshr i64 %64, 63
  %84 = xor i64 %81, %83
  %85 = add nuw nsw i64 %84, %81
  %86 = icmp eq i64 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %11, align 1, !tbaa !2450
  %88 = add i64 %65, 5
  store i64 %88, i64* %PC, align 8
  %89 = add i64 %64, 104
  %90 = inttoptr i64 %66 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RBP, align 8, !tbaa !2428
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  %92 = add i64 %65, 6
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %89 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  %95 = add i64 %64, 112
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %57

block_400c0f:                                     ; preds = %block_400ba0
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %96 = add i64 %474, -1439
  %97 = add i64 %474, 17
  %98 = load i64, i64* %RSP, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %RSP, align 8, !tbaa !2428
  store i64 %96, i64* %PC, align 8, !tbaa !2428
  %101 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %426)
  %102 = load i64, i64* %RBP, align 8
  %103 = add i64 %102, -80
  %104 = load i32, i32* %EAX, align 4
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %103 to i32*
  store i32 %104, i32* %107, align 4
  %.pre79 = load i64, i64* %PC, align 8
  br label %block_400c23

block_400b7a:                                     ; preds = %block_400aa2
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -8
  %110 = add i64 %308, 14
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = add i64 %108, -16
  %114 = add i64 %308, 18
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, 12
  store i64 %118, i64* %RCX, align 8, !tbaa !2428
  %119 = lshr i64 %118, 63
  %120 = add i64 %118, %112
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  %121 = icmp ult i64 %120, %112
  %122 = icmp ult i64 %120, %118
  %123 = or i1 %121, %122
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %6, align 1, !tbaa !2432
  %125 = trunc i64 %120 to i32
  %126 = and i32 %125, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #9
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %7, align 1, !tbaa !2446
  %131 = xor i64 %118, %112
  %132 = xor i64 %131, %120
  %133 = lshr i64 %132, 4
  %134 = trunc i64 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %8, align 1, !tbaa !2447
  %136 = icmp eq i64 %120, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %9, align 1, !tbaa !2448
  %138 = lshr i64 %120, 63
  %139 = trunc i64 %138 to i8
  store i8 %139, i8* %10, align 1, !tbaa !2449
  %140 = lshr i64 %112, 63
  %141 = xor i64 %138, %140
  %142 = xor i64 %138, %119
  %143 = add nuw nsw i64 %141, %142
  %144 = icmp eq i64 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %11, align 1, !tbaa !2450
  %146 = add i64 %120, 8
  %147 = add i64 %308, 28
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %151 = add i64 %308, -1290
  %152 = add i64 %308, 35
  %153 = load i64, i64* %RSP, align 8, !tbaa !2428
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %152, i64* %155, align 8
  store i64 %154, i64* %RSP, align 8, !tbaa !2428
  store i64 %151, i64* %PC, align 8, !tbaa !2428
  %156 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %250)
  %157 = load i64, i64* %RBP, align 8
  %158 = add i64 %157, -64
  %159 = load i32, i32* %EAX, align 4
  %160 = load i64, i64* %PC, align 8
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %158 to i32*
  store i32 %159, i32* %162, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400ba0.backedge

block_400c23:                                     ; preds = %block_400c0f, %block_400bf6
  %163 = phi i64 [ %.pre79, %block_400c0f ], [ %39, %block_400bf6 ]
  %MEMORY.0 = phi %struct.Memory* [ %101, %block_400c0f ], [ %31, %block_400bf6 ]
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -16
  %166 = add i64 %163, 8
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
  store i8 %174, i8* %6, align 1, !tbaa !2432
  %175 = and i32 %169, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #9
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %7, align 1, !tbaa !2446
  %180 = xor i32 %169, %168
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %8, align 1, !tbaa !2447
  %184 = zext i1 %172 to i8
  store i8 %184, i8* %9, align 1, !tbaa !2448
  %185 = lshr i32 %169, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %10, align 1, !tbaa !2449
  %187 = lshr i32 %168, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %185
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %11, align 1, !tbaa !2450
  %192 = add i64 %163, 14
  store i64 %192, i64* %PC, align 8
  store i32 %169, i32* %167, align 4
  %193 = load i64, i64* %PC, align 8
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -16
  %196 = add i64 %193, -408
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = add i64 %194, -12
  %201 = add i64 %193, -405
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sub i32 %198, %203
  %205 = icmp ult i32 %198, %203
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %6, align 1, !tbaa !2432
  %207 = and i32 %204, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207) #9
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %7, align 1, !tbaa !2446
  %212 = xor i32 %203, %198
  %213 = xor i32 %212, %204
  %214 = lshr i32 %213, 4
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  store i8 %216, i8* %8, align 1, !tbaa !2447
  %217 = icmp eq i32 %204, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %9, align 1, !tbaa !2448
  %219 = lshr i32 %204, 31
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %10, align 1, !tbaa !2449
  %221 = lshr i32 %198, 31
  %222 = lshr i32 %203, 31
  %223 = xor i32 %222, %221
  %224 = xor i32 %219, %221
  %225 = add nuw nsw i32 %224, %223
  %226 = icmp eq i32 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %11, align 1, !tbaa !2450
  %228 = icmp ne i8 %220, 0
  %229 = xor i1 %228, %226
  %.v = select i1 %229, i64 -399, i64 5
  %230 = add i64 %193, %.v
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  br i1 %229, label %block_400aa2, label %block_400c36

block_400aa2:                                     ; preds = %block_400c23
  %231 = add i64 %194, -8
  %232 = add i64 %230, 4
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = add i64 %230, 8
  store i64 %235, i64* %PC, align 8
  %236 = load i32, i32* %197, align 4
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %237, 3
  store i64 %238, i64* %RCX, align 8, !tbaa !2428
  %239 = mul nsw i64 %237, 12
  %240 = add i64 %234, %239
  %241 = add i64 %230, 15
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %245 = add i64 %230, -1074
  %246 = add i64 %230, 35
  %247 = load i64, i64* %RSP, align 8, !tbaa !2428
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %RSP, align 8, !tbaa !2428
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  %250 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %251 = load i64, i64* %RBP, align 8
  %252 = add i64 %251, -8
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RCX, align 8, !tbaa !2428
  %257 = add i64 %251, -16
  %258 = add i64 %253, 8
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = mul nsw i64 %261, 3
  store i64 %262, i64* %RDI, align 8, !tbaa !2428
  %263 = mul nsw i64 %261, 12
  %264 = add i64 %263, 8
  %265 = add i64 %264, %256
  %266 = add i64 %253, 16
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RDX, align 8, !tbaa !2428
  store i64 %269, i64* %RCX, align 8, !tbaa !2428
  %270 = add nsw i64 %269, -4
  store i64 %270, i64* %RDI, align 8, !tbaa !2428
  %271 = icmp ult i32 %268, 4
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %6, align 1, !tbaa !2432
  %273 = trunc i64 %270 to i32
  %274 = and i32 %273, 255
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274) #9
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %7, align 1, !tbaa !2446
  %279 = xor i64 %270, %269
  %280 = lshr i64 %279, 4
  %281 = trunc i64 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %8, align 1, !tbaa !2447
  %283 = icmp eq i64 %270, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %9, align 1, !tbaa !2448
  %285 = lshr i64 %270, 63
  %286 = trunc i64 %285 to i8
  store i8 %286, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %287 = add i64 %251, -20
  %288 = load i32, i32* %EAX, align 4
  %289 = add i64 %253, 28
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %287 to i32*
  store i32 %288, i32* %290, align 4
  %291 = load i64, i64* %RBP, align 8
  %292 = add i64 %291, -32
  %293 = load i64, i64* %RCX, align 8
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, 4
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %292 to i64*
  store i64 %293, i64* %296, align 8
  %297 = load i64, i64* %RBP, align 8
  %298 = add i64 %297, -40
  %299 = load i64, i64* %RDI, align 8
  %300 = load i64, i64* %PC, align 8
  %301 = add i64 %300, 4
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %298 to i64*
  store i64 %299, i64* %302, align 8
  %303 = load i64, i64* %PC, align 8
  %304 = load i8, i8* %6, align 1, !tbaa !2432
  %305 = load i8, i8* %9, align 1, !tbaa !2448
  %306 = or i8 %305, %304
  %307 = icmp eq i8 %306, 0
  %.v102 = select i1 %307, i64 145, i64 6
  %308 = add i64 %303, %.v102
  store i64 %308, i64* %PC, align 8, !tbaa !2428
  br i1 %307, label %block_400b7a, label %block_400aef

block_400b61.loopexit:                            ; preds = %block_400aef
  br label %block_400b61

block_400b61:                                     ; preds = %block_400b61.loopexit, %3
  %309 = phi i64 [ %1, %3 ], [ 4197217, %block_400b61.loopexit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %3 ], [ %250, %block_400b61.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %310 = add i64 %309, -1265
  %311 = add i64 %309, 17
  %312 = load i64, i64* %RSP, align 8, !tbaa !2428
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %311, i64* %314, align 8
  store i64 %313, i64* %RSP, align 8, !tbaa !2428
  store i64 %310, i64* %PC, align 8, !tbaa !2428
  %315 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -60
  %318 = load i32, i32* %EAX, align 4
  %319 = load i64, i64* %PC, align 8
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %317 to i32*
  store i32 %318, i32* %321, align 4
  %322 = load i64, i64* %PC, align 8
  %323 = add i64 %322, 43
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  br label %block_400ba0

block_400ba0:                                     ; preds = %block_400ba0.backedge, %block_400b61
  %324 = phi i64 [ %323, %block_400b61 ], [ %.be, %block_400ba0.backedge ]
  %MEMORY.2 = phi %struct.Memory* [ %315, %block_400b61 ], [ %MEMORY.2.be, %block_400ba0.backedge ]
  %325 = load i64, i64* %RBP, align 8
  %326 = add i64 %325, -8
  %327 = add i64 %324, 4
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = add i64 %325, -16
  %331 = add i64 %324, 8
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = mul nsw i64 %334, 12
  store i64 %335, i64* %RCX, align 8, !tbaa !2428
  %336 = lshr i64 %335, 63
  %337 = add i64 %335, %329
  store i64 %337, i64* %RAX, align 8, !tbaa !2428
  %338 = icmp ult i64 %337, %329
  %339 = icmp ult i64 %337, %335
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %6, align 1, !tbaa !2432
  %342 = trunc i64 %337 to i32
  %343 = and i32 %342, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343) #9
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %7, align 1, !tbaa !2446
  %348 = xor i64 %335, %329
  %349 = xor i64 %348, %337
  %350 = lshr i64 %349, 4
  %351 = trunc i64 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %8, align 1, !tbaa !2447
  %353 = icmp eq i64 %337, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %9, align 1, !tbaa !2448
  %355 = lshr i64 %337, 63
  %356 = trunc i64 %355 to i8
  store i8 %356, i8* %10, align 1, !tbaa !2449
  %357 = lshr i64 %329, 63
  %358 = xor i64 %355, %357
  %359 = xor i64 %355, %336
  %360 = add nuw nsw i64 %358, %359
  %361 = icmp eq i64 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %11, align 1, !tbaa !2450
  %363 = add i64 %337, 4
  %364 = add i64 %324, 18
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RSI, align 8, !tbaa !2428
  %368 = add i64 %324, 22
  store i64 %368, i64* %PC, align 8
  %369 = load i64, i64* %328, align 8
  store i64 %369, i64* %RAX, align 8, !tbaa !2428
  %370 = add i64 %324, 26
  store i64 %370, i64* %PC, align 8
  %371 = load i32, i32* %332, align 4
  %372 = sext i32 %371 to i64
  %373 = mul nsw i64 %372, 12
  store i64 %373, i64* %RCX, align 8, !tbaa !2428
  %374 = lshr i64 %373, 63
  %375 = add i64 %373, %369
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = icmp ult i64 %375, %369
  %377 = icmp ult i64 %375, %373
  %378 = or i1 %376, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %6, align 1, !tbaa !2432
  %380 = trunc i64 %375 to i32
  %381 = and i32 %380, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #9
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %7, align 1, !tbaa !2446
  %386 = xor i64 %373, %369
  %387 = xor i64 %386, %375
  %388 = lshr i64 %387, 4
  %389 = trunc i64 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %8, align 1, !tbaa !2447
  %391 = icmp eq i64 %375, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %9, align 1, !tbaa !2448
  %393 = lshr i64 %375, 63
  %394 = trunc i64 %393 to i8
  store i8 %394, i8* %10, align 1, !tbaa !2449
  %395 = lshr i64 %369, 63
  %396 = xor i64 %393, %395
  %397 = xor i64 %393, %374
  %398 = add nuw nsw i64 %396, %397
  %399 = icmp eq i64 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %11, align 1, !tbaa !2450
  store i64 %375, i64* %RDI, align 8, !tbaa !2428
  %401 = load i64, i64* %RBP, align 8
  %402 = add i64 %401, -68
  %403 = add i64 %324, 39
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  store i32 %366, i32* %404, align 4
  %405 = load i64, i64* %PC, align 8
  %406 = add i64 %405, -487
  %407 = add i64 %405, 5
  %408 = load i64, i64* %RSP, align 8, !tbaa !2428
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %RSP, align 8, !tbaa !2428
  store i64 %406, i64* %PC, align 8, !tbaa !2428
  %411 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* nonnull %0, i64 %406, %struct.Memory* %MEMORY.2)
  %412 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013b0__rodata_type* @seg_4013b0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %413 = load i64, i64* %RBP, align 8
  %414 = add i64 %413, -68
  %415 = add i64 %412, 13
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RSI, align 8, !tbaa !2428
  %419 = load i32, i32* %EAX, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %421 = add i64 %412, -1372
  %422 = add i64 %412, 22
  %423 = load i64, i64* %RSP, align 8, !tbaa !2428
  %424 = add i64 %423, -8
  %425 = inttoptr i64 %424 to i64*
  store i64 %422, i64* %425, align 8
  store i64 %424, i64* %RSP, align 8, !tbaa !2428
  store i64 %421, i64* %PC, align 8, !tbaa !2428
  %426 = tail call fastcc %struct.Memory* @ext_602140_printf(%struct.State* nonnull %0, %struct.Memory* %411)
  %427 = load i64, i64* %RBP, align 8
  %428 = add i64 %427, -16
  %429 = load i64, i64* %PC, align 8
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RDX, align 8, !tbaa !2428
  %434 = add i64 %427, -12
  %435 = add i64 %429, 6
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, -1
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RSI, align 8, !tbaa !2428
  %440 = lshr i32 %438, 31
  %441 = sub i32 %432, %438
  %442 = icmp ult i32 %432, %438
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %6, align 1, !tbaa !2432
  %444 = and i32 %441, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444) #9
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %7, align 1, !tbaa !2446
  %449 = xor i32 %438, %432
  %450 = xor i32 %449, %441
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %8, align 1, !tbaa !2447
  %454 = icmp eq i32 %441, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %9, align 1, !tbaa !2448
  %456 = lshr i32 %441, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %10, align 1, !tbaa !2449
  %458 = lshr i32 %432, 31
  %459 = xor i32 %440, %458
  %460 = xor i32 %456, %458
  %461 = add nuw nsw i32 %460, %459
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %11, align 1, !tbaa !2450
  %464 = add i64 %427, -72
  %465 = load i32, i32* %EAX, align 4
  %466 = add i64 %429, 14
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %464 to i32*
  store i32 %465, i32* %467, align 4
  %468 = load i64, i64* %PC, align 8
  %469 = load i8, i8* %10, align 1, !tbaa !2449
  %470 = icmp ne i8 %469, 0
  %471 = load i8, i8* %11, align 1, !tbaa !2450
  %472 = icmp ne i8 %471, 0
  %473 = xor i1 %470, %472
  %.v101 = select i1 %473, i64 6, i64 31
  %474 = add i64 %468, %.v101
  %475 = add i64 %474, 10
  store i64 %475, i64* %PC, align 8
  br i1 %473, label %block_400bf6, label %block_400c0f

block_400b2f:                                     ; preds = %block_400aef
  %476 = tail call %struct.Memory* @sub_400b2f(%struct.State* nonnull %0, i64 4197167, %struct.Memory* %250)
  ret %struct.Memory* %476

block_400b16:                                     ; preds = %block_400aef
  %477 = tail call %struct.Memory* @sub_400b16(%struct.State* nonnull %0, i64 4197142, %struct.Memory* %250)
  ret %struct.Memory* %477

block_400afd:                                     ; preds = %block_400aef
  %478 = tail call %struct.Memory* @sub_400afd(%struct.State* nonnull %0, i64 4197117, %struct.Memory* %250)
  ret %struct.Memory* %478

; <label>:479:                                    ; preds = %block_400aef
  %480 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %25, %struct.Memory* %250)
  ret %struct.Memory* %480
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4007b0_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4007b0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007b0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400780___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400780___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400780___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602160_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4006c0_exit(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602150_calloc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602140_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602158_getchar(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @getchar to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602168_ungetc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @ungetc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8___isoc99_fscanf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_fscanf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0_abs(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4013a0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4013a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4013a0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4013a0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401330___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401330;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401330___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401330___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4012f0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602148___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @calculate() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @calculate_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4009e0_calculate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @printSolution() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @printSolution_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a80_printSolution(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @initWorkList() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400880;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @initWorkList_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400880_initWorkList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4013a4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4013a4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @initCombList() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @initCombList_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008d0_initCombList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @newCombList() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400820;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @newCombList_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400820_newCombList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400620;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400620__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @printList() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c50;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @printList_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c50_printList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @newWorkList() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @newWorkList_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_newWorkList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @saveSolution() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400920;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @saveSolution_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400920_saveSolution(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @recSearch() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ce0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @recSearch_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ce0_recSearch(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @search() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @18, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @search_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012c0_search(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @getInput() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401150;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @19, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @getInput_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401150_getInput(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @doSearch() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401010;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @20, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @doSearch_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401010_doSearch(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_4013a0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #9 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401330___libc_csu_init()
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
