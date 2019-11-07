; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4013c0__rodata_type = type <{ [80 x i8], [29 x i8], [44 x i8], [6 x i8], [9 x i8], [3 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
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
@seg_4013c0__rodata = internal constant %seg_4013c0__rodata_type <{ [80 x i8] c"\01\00\02\00\00\00\00\00!\0A@\00\00\00\00\006\0A@\00\00\00\00\00K\0A@\00\00\00\00\00a\0A@\00\00\00\00\00\0D\0B@\00\00\00\00\00&\0B@\00\00\00\00\00?\0B@\00\00\00\00\00X\0B@\00\00\00\00\00q\0B@\00\00\00\00\00", [29 x i8] c"Out of memory for work list\0A\00", [44 x i8] c"Out of memory for combination list\0A\00+\00-\00*\00:\00", [6 x i8] c" d%d \00", [9 x i8] c"%d=%d\00; \00", [3 x i8] c".\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4007c0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400790___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4007c0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400790___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4013b0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401340___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @calculate_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @saveSolution_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @printList_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newWorkList_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @printSolution_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @recSearch_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newCombList_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @initWorkList_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @initCombList_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @doSearch_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @search_wrapper
@20 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @getInput_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_401160_getInput_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400830_newCombList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a90_printSolution_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401020_doSearch_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007d0_newWorkList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4012d0_search_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_initWorkList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4008e0_initCombList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400630__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400930_saveSolution_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400720_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400cf0_recSearch_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @ungetc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @getchar() #5

; Function Attrs: noinline
define %struct.Memory* @sub_400720_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400748:
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
define %struct.Memory* @sub_4009f0_calculate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4009f0:
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
  %39 = tail call i32 @llvm.ctpop.i32(i32 %38) #12
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
  br i1 %68, label %block_400a77, label %block_400a13

block_400a7e:                                     ; preds = %block_400a21, %block_400a36, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400a4b, %block_400a77
  %71 = phi i64 [ %.pre3, %block_400a77 ], [ %204, %block_400a36 ], [ %165, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %245, %block_400a21 ], [ %129, %block_400a4b ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a77 ], [ %2, %block_400a36 ], [ %161, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %2, %block_400a21 ], [ %2, %block_400a4b ]
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -4
  %74 = add i64 %71, 3
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = add i64 %71, 4
  store i64 %78, i64* %PC, align 8
  %79 = load i64, i64* %6, align 8, !tbaa !2428
  %80 = add i64 %79, 8
  %81 = inttoptr i64 %79 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RBP, align 8, !tbaa !2428
  store i64 %80, i64* %6, align 8, !tbaa !2428
  %83 = add i64 %71, 5
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %80 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %PC, align 8, !tbaa !2428
  %86 = add i64 %79, 16
  store i64 %86, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a13:                                     ; preds = %block_4009f0
  %87 = add i64 %70, -24
  %88 = add i64 %69, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = shl i64 %90, 3
  %92 = add i64 %91, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 8)
  %93 = add i64 %69, 12
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RCX, align 8, !tbaa !2428
  store i64 %95, i64* %PC, align 8, !tbaa !2428
  switch i64 %95, label %246 [
    i64 4196939, label %block_400a4b
    i64 4196897, label %block_400a21
    i64 4196961, label %block_400a61
    i64 4196918, label %block_400a36
  ]

block_400a77:                                     ; preds = %block_4009f0
  %96 = add i64 %70, -4
  %97 = add i64 %69, 7
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 0, i32* %98, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400a7e

block_400a4b:                                     ; preds = %block_400a13
  %99 = add i64 %70, -16
  store i64 4196943, i64* %PC, align 8
  %100 = inttoptr i64 %99 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RAX, align 8, !tbaa !2428
  store i64 4196945, i64* %PC, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  store i64 4196949, i64* %PC, align 8
  %105 = load i64, i64* %100, align 8
  store i64 %105, i64* %RAX, align 8, !tbaa !2428
  %106 = add i64 %105, 4
  store i64 4196953, i64* %PC, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %103 to i64
  %110 = sext i32 %108 to i64
  %111 = mul nsw i64 %110, %109
  %112 = trunc i64 %111 to i32
  %113 = and i64 %111, 4294967295
  store i64 %113, i64* %RCX, align 8, !tbaa !2428
  %114 = shl i64 %111, 32
  %115 = ashr exact i64 %114, 32
  %116 = icmp ne i64 %115, %111
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %37, align 1, !tbaa !2432
  %118 = and i32 %112, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118) #12
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %27, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  %123 = lshr i32 %112, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %31, align 1, !tbaa !2449
  store i8 %117, i8* %32, align 1, !tbaa !2450
  %125 = add i64 %70, -4
  %126 = trunc i64 %111 to i32
  store i64 4196956, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %127, align 4
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 34
  store i64 %129, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7e

block_400a61:                                     ; preds = %block_400a13
  %130 = add i64 %70, -16
  store i64 4196965, i64* %PC, align 8
  %131 = inttoptr i64 %130 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  store i64 4196967, i64* %PC, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  store i64 4196971, i64* %PC, align 8
  %136 = load i64, i64* %131, align 8
  store i64 %136, i64* %RCX, align 8, !tbaa !2428
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %138 = sext i32 %134 to i64
  %139 = lshr i64 %138, 32
  store i64 %139, i64* %137, align 8, !tbaa !2428
  %140 = add i64 %136, 4
  store i64 4196975, i64* %PC, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = shl nuw i64 %139, 32
  %145 = or i64 %144, %135
  %146 = sdiv i64 %145, %143
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %152, label %150

; <label>:150:                                    ; preds = %block_400a61
  %151 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 4196975, %struct.Memory* %2) #13
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i32, i32* %EAX, align 4
  %.pre2 = load i64, i64* %PC, align 8
  %phitmp = add i64 %.pre2, 3
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:152:                                    ; preds = %block_400a61
  %153 = srem i64 %145, %143
  %154 = and i64 %146, 4294967295
  store i64 %154, i64* %RAX, align 8, !tbaa !2428
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %156 = and i64 %153, 4294967295
  store i64 %156, i64* %155, align 8, !tbaa !2428
  store i8 0, i8* %37, align 1, !tbaa !2432
  store i8 0, i8* %27, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %157 = trunc i64 %146 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %152, %150
  %158 = phi i64 [ %phitmp, %150 ], [ 4196978, %152 ]
  %159 = phi i32 [ %.pre1, %150 ], [ %157, %152 ]
  %160 = phi i64 [ %.pre, %150 ], [ %70, %152 ]
  %161 = phi %struct.Memory* [ %151, %150 ], [ %2, %152 ]
  %162 = add i64 %160, -4
  store i64 %158, i64* %PC, align 8
  %163 = inttoptr i64 %162 to i32*
  store i32 %159, i32* %163, align 4
  %164 = load i64, i64* %PC, align 8
  %165 = add i64 %164, 12
  store i64 %165, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7e

block_400a36:                                     ; preds = %block_400a13
  %166 = add i64 %70, -16
  store i64 4196922, i64* %PC, align 8
  %167 = inttoptr i64 %166 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  store i64 4196924, i64* %PC, align 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX, align 8, !tbaa !2428
  store i64 4196928, i64* %PC, align 8
  %172 = load i64, i64* %167, align 8
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %172, 4
  store i64 4196931, i64* %PC, align 8
  %174 = inttoptr i64 %173 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sub i32 %170, %175
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RCX, align 8, !tbaa !2428
  %178 = icmp ult i32 %170, %175
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %37, align 1, !tbaa !2432
  %180 = and i32 %176, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #12
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %27, align 1, !tbaa !2446
  %185 = xor i32 %175, %170
  %186 = xor i32 %185, %176
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %28, align 1, !tbaa !2447
  %190 = icmp eq i32 %176, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %29, align 1, !tbaa !2448
  %192 = lshr i32 %176, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %31, align 1, !tbaa !2449
  %194 = lshr i32 %170, 31
  %195 = lshr i32 %175, 31
  %196 = xor i32 %195, %194
  %197 = xor i32 %192, %194
  %198 = add nuw nsw i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %32, align 1, !tbaa !2450
  %201 = add i64 %70, -4
  store i64 4196934, i64* %PC, align 8
  %202 = inttoptr i64 %201 to i32*
  store i32 %176, i32* %202, align 4
  %203 = load i64, i64* %PC, align 8
  %204 = add i64 %203, 56
  store i64 %204, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7e

block_400a21:                                     ; preds = %block_400a13
  %205 = add i64 %70, -16
  store i64 4196901, i64* %PC, align 8
  %206 = inttoptr i64 %205 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX, align 8, !tbaa !2428
  store i64 4196903, i64* %PC, align 8
  %208 = inttoptr i64 %207 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RCX, align 8, !tbaa !2428
  store i64 4196907, i64* %PC, align 8
  %211 = load i64, i64* %206, align 8
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = add i64 %211, 4
  store i64 4196910, i64* %PC, align 8
  %213 = inttoptr i64 %212 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %214, %209
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RCX, align 8, !tbaa !2428
  %217 = icmp ult i32 %215, %209
  %218 = icmp ult i32 %215, %214
  %219 = or i1 %217, %218
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %37, align 1, !tbaa !2432
  %221 = and i32 %215, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221) #12
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %27, align 1, !tbaa !2446
  %226 = xor i32 %214, %209
  %227 = xor i32 %226, %215
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %28, align 1, !tbaa !2447
  %231 = icmp eq i32 %215, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %29, align 1, !tbaa !2448
  %233 = lshr i32 %215, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %31, align 1, !tbaa !2449
  %235 = lshr i32 %209, 31
  %236 = lshr i32 %214, 31
  %237 = xor i32 %233, %235
  %238 = xor i32 %233, %236
  %239 = add nuw nsw i32 %237, %238
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %32, align 1, !tbaa !2450
  %242 = add i64 %70, -4
  store i64 4196913, i64* %PC, align 8
  %243 = inttoptr i64 %242 to i32*
  store i32 %215, i32* %243, align 4
  %244 = load i64, i64* %PC, align 8
  %245 = add i64 %244, 77
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7e

; <label>:246:                                    ; preds = %block_400a13
  %247 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %95, %struct.Memory* %2)
  ret %struct.Memory* %247
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4008e0_initCombList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4008e0:
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
  br label %block_4008f2

block_400922:                                     ; preds = %block_4008f2
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

block_4008f2:                                     ; preds = %block_4008fe, %block_4008e0
  %41 = phi i64 [ %148, %block_4008fe ], [ %.pre, %block_4008e0 ]
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
  %56 = tail call i32 @llvm.ctpop.i32(i32 %55) #12
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
  br i1 %77, label %block_4008fe, label %block_400922

block_4008fe:                                     ; preds = %block_4008f2
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
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #12
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
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #12
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
  br label %block_4008f2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a36(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400a36:
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
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #12
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
define %struct.Memory* @sub_4006e0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006e0:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
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
  store i64 ptrtoint (void ()* @callback_sub_4013b0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401340___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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

; Function Attrs: noinline
define %struct.Memory* @sub_401020_doSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401020:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #12
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
  br label %block_40102f

block_4010bc:                                     ; preds = %block_4010a8
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %42 = add i64 %362, -2620
  %43 = add i64 %362, 17
  %44 = load i64, i64* %RSP, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %46, align 8
  store i64 %45, i64* %RSP, align 8, !tbaa !2428
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %47 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -12
  %50 = load i32, i32* %EAX, align 4
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 127
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  br label %block_40114f

block_40113b:                                     ; preds = %block_40112d
  %56 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %56, i64* %RDI, align 8, !tbaa !2428
  %57 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 84) to i32*), align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RSI, align 8, !tbaa !2428
  %59 = add i64 %334, -1707
  %60 = add i64 %334, 20
  %61 = load i64, i64* %RSP, align 8, !tbaa !2428
  %62 = add i64 %61, -8
  %63 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %63, align 8
  store i64 %62, i64* %RSP, align 8, !tbaa !2428
  store i64 %59, i64* %PC, align 8, !tbaa !2428
  %64 = tail call %struct.Memory* @sub_400a90_printSolution_renamed_(%struct.State* nonnull %0, i64 %59, %struct.Memory* %MEMORY.1)
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_40114f

block_4010d5:                                     ; preds = %block_4010a8
  %65 = add i64 %362, 11
  store i64 %65, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  br label %block_4010e0

block_40114f:                                     ; preds = %block_40112d, %block_40113b, %block_4010bc
  %66 = phi i64 [ %334, %block_40112d ], [ %.pre13, %block_40113b ], [ %55, %block_4010bc ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_40112d ], [ %64, %block_40113b ], [ %47, %block_4010bc ]
  %67 = load i64, i64* %RSP, align 8
  %68 = add i64 %67, 16
  store i64 %68, i64* %RSP, align 8, !tbaa !2428
  %69 = icmp ugt i64 %67, -17
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %13, align 1, !tbaa !2432
  %71 = trunc i64 %68 to i32
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #12
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %20, align 1, !tbaa !2446
  %77 = xor i64 %67, 16
  %78 = xor i64 %77, %68
  %79 = lshr i64 %78, 4
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 1
  store i8 %81, i8* %26, align 1, !tbaa !2447
  %82 = icmp eq i64 %68, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %29, align 1, !tbaa !2448
  %84 = lshr i64 %68, 63
  %85 = trunc i64 %84 to i8
  store i8 %85, i8* %32, align 1, !tbaa !2449
  %86 = lshr i64 %67, 63
  %87 = xor i64 %84, %86
  %88 = add nuw nsw i64 %87, %84
  %89 = icmp eq i64 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %38, align 1, !tbaa !2450
  %91 = add i64 %66, 5
  store i64 %91, i64* %PC, align 8
  %92 = add i64 %67, 24
  %93 = inttoptr i64 %68 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RBP, align 8, !tbaa !2428
  store i64 %92, i64* %RSP, align 8, !tbaa !2428
  %95 = add i64 %66, 6
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %92 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %PC, align 8, !tbaa !2428
  %98 = add i64 %67, 32
  store i64 %98, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40110d:                                     ; preds = %block_4010f4
  %99 = add i64 %322, 32
  store i64 %99, i64* %PC, align 8, !tbaa !2428
  br label %block_40112d

block_40103f:                                     ; preds = %block_40102f
  %100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = add i64 %275, 12
  store i64 %101, i64* %PC, align 8
  %102 = load i32, i32* %245, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %RCX, align 8, !tbaa !2428
  %104 = shl nsw i64 %103, 2
  %105 = add i64 %104, %100
  %106 = add i64 %275, 15
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %110 = sub i32 %108, %109
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RDX, align 8, !tbaa !2428
  %112 = icmp ult i32 %108, %109
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %13, align 1, !tbaa !2432
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #12
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %20, align 1, !tbaa !2446
  %119 = xor i32 %109, %108
  %120 = xor i32 %119, %110
  %121 = lshr i32 %120, 4
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %26, align 1, !tbaa !2447
  %124 = icmp eq i32 %110, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %29, align 1, !tbaa !2448
  %126 = lshr i32 %110, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %32, align 1, !tbaa !2449
  %128 = lshr i32 %108, 31
  %129 = lshr i32 %109, 31
  %130 = xor i32 %129, %128
  %131 = xor i32 %126, %128
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %38, align 1, !tbaa !2450
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %135 = add i64 %275, -2511
  %136 = add i64 %275, 29
  %137 = load i64, i64* %RSP, align 8, !tbaa !2428
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %RSP, align 8, !tbaa !2428
  store i64 %135, i64* %PC, align 8, !tbaa !2428
  %140 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %141 = load i64, i64* %PC, align 8
  %142 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %143 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %144 = sub i32 %142, %143
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RDX, align 8, !tbaa !2428
  %146 = icmp ult i32 %142, %143
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %13, align 1, !tbaa !2432
  %148 = and i32 %144, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #12
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %20, align 1, !tbaa !2446
  %153 = xor i32 %143, %142
  %154 = xor i32 %153, %144
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %26, align 1, !tbaa !2447
  %158 = icmp eq i32 %144, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %29, align 1, !tbaa !2448
  %160 = lshr i32 %144, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %32, align 1, !tbaa !2449
  %162 = lshr i32 %142, 31
  %163 = lshr i32 %143, 31
  %164 = xor i32 %163, %162
  %165 = xor i32 %160, %162
  %166 = add nuw nsw i32 %165, %164
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %38, align 1, !tbaa !2450
  store i64 %145, i64* %RDI, align 8, !tbaa !2428
  %169 = load i64, i64* %RBP, align 8
  %170 = add i64 %169, -8
  %171 = load i32, i32* %EAX, align 4
  %172 = add i64 %141, 19
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %170 to i32*
  store i32 %171, i32* %173, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, -2559
  %176 = add i64 %174, 5
  %177 = load i64, i64* %RSP, align 8, !tbaa !2428
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %176, i64* %179, align 8
  store i64 %178, i64* %RSP, align 8, !tbaa !2428
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  %180 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %140)
  %181 = load i64, i64* %RBP, align 8
  %182 = add i64 %181, -8
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %182 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDX, align 8, !tbaa !2428
  %188 = load i32, i32* %EAX, align 4
  %189 = sub i32 %186, %188
  %190 = icmp ult i32 %186, %188
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %13, align 1, !tbaa !2432
  %192 = and i32 %189, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192) #12
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %20, align 1, !tbaa !2446
  %197 = xor i32 %188, %186
  %198 = xor i32 %197, %189
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %26, align 1, !tbaa !2447
  %202 = icmp eq i32 %189, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %29, align 1, !tbaa !2448
  %204 = lshr i32 %189, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %32, align 1, !tbaa !2449
  %206 = lshr i32 %186, 31
  %207 = lshr i32 %188, 31
  %208 = xor i32 %207, %206
  %209 = xor i32 %204, %206
  %210 = add nuw nsw i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %38, align 1, !tbaa !2450
  %213 = icmp ne i8 %205, 0
  %214 = xor i1 %213, %211
  %.v21 = select i1 %214, i64 11, i64 33
  %215 = add i64 %183, %.v21
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  br i1 %214, label %block_40107f, label %block_40103f.block_401095_crit_edge

block_40103f.block_401095_crit_edge:              ; preds = %block_40103f
  %.pre14 = add i64 %181, -4
  %.pre15 = inttoptr i64 %.pre14 to i32*
  br label %block_401095

block_401112:                                     ; preds = %block_4010f4
  %216 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %217 = add i32 %216, 1
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = icmp eq i32 %216, -1
  %220 = icmp eq i32 %217, 0
  %221 = or i1 %219, %220
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %13, align 1, !tbaa !2432
  %223 = and i32 %217, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223) #12
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %20, align 1, !tbaa !2446
  %228 = xor i32 %217, %216
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %26, align 1, !tbaa !2447
  %232 = zext i1 %220 to i8
  store i8 %232, i8* %29, align 1, !tbaa !2448
  %233 = lshr i32 %217, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %32, align 1, !tbaa !2449
  %235 = lshr i32 %216, 31
  %236 = xor i32 %233, %235
  %237 = add nuw nsw i32 %236, %233
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %38, align 1, !tbaa !2450
  store i32 %217, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %240 = add i64 %322, -50
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  br label %block_4010e0

block_40102f:                                     ; preds = %block_401095, %block_401020
  %241 = phi i64 [ %.pre, %block_401020 ], [ %304, %block_401095 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401020 ], [ %180, %block_401095 ]
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -4
  %244 = add i64 %241, 3
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %249 = sub i32 %246, %248
  %250 = icmp ult i32 %246, %248
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %13, align 1, !tbaa !2432
  %252 = and i32 %249, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #12
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %20, align 1, !tbaa !2446
  %257 = xor i32 %248, %246
  %258 = xor i32 %257, %249
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %26, align 1, !tbaa !2447
  %262 = icmp eq i32 %249, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %29, align 1, !tbaa !2448
  %264 = lshr i32 %249, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %32, align 1, !tbaa !2449
  %266 = lshr i32 %246, 31
  %267 = lshr i32 %248, 31
  %268 = xor i32 %267, %266
  %269 = xor i32 %264, %266
  %270 = add nuw nsw i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %38, align 1, !tbaa !2450
  %273 = icmp ne i8 %265, 0
  %274 = xor i1 %273, %271
  %.v = select i1 %274, i64 16, i64 121
  %275 = add i64 %241, %.v
  store i64 %275, i64* %PC, align 8, !tbaa !2428
  br i1 %274, label %block_40103f, label %block_4010a8

block_401095:                                     ; preds = %block_40103f.block_401095_crit_edge, %block_40107f
  %.pre-phi16 = phi i32* [ %.pre15, %block_40103f.block_401095_crit_edge ], [ %397, %block_40107f ]
  %276 = phi i64 [ %215, %block_40103f.block_401095_crit_edge ], [ %406, %block_40107f ]
  %277 = add i64 %276, 8
  store i64 %277, i64* %PC, align 8
  %278 = load i32, i32* %.pre-phi16, align 4
  %279 = add i32 %278, 1
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = icmp eq i32 %278, -1
  %282 = icmp eq i32 %279, 0
  %283 = or i1 %281, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %13, align 1, !tbaa !2432
  %285 = and i32 %279, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285) #12
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %20, align 1, !tbaa !2446
  %290 = xor i32 %279, %278
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %26, align 1, !tbaa !2447
  %294 = zext i1 %282 to i8
  store i8 %294, i8* %29, align 1, !tbaa !2448
  %295 = lshr i32 %279, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %32, align 1, !tbaa !2449
  %297 = lshr i32 %278, 31
  %298 = xor i32 %295, %297
  %299 = add nuw nsw i32 %298, %295
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %38, align 1, !tbaa !2450
  %302 = add i64 %276, 14
  store i64 %302, i64* %PC, align 8
  store i32 %279, i32* %.pre-phi16, align 4
  %303 = load i64, i64* %PC, align 8
  %304 = add i64 %303, -116
  store i64 %304, i64* %PC, align 8, !tbaa !2428
  br label %block_40102f

block_4010f4:                                     ; preds = %block_4010e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %305 = add i64 %393, -1028
  %306 = add i64 %393, 11
  %307 = load i64, i64* %RSP, align 8, !tbaa !2428
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %RSP, align 8, !tbaa !2428
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  %310 = tail call %struct.Memory* @sub_400cf0_recSearch_renamed_(%struct.State* nonnull %0, i64 %305, %struct.Memory* %MEMORY.1)
  %311 = load i64, i64* %PC, align 8
  %312 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  store i8 0, i8* %13, align 1, !tbaa !2432
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #12
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %318 = icmp eq i32 %312, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %29, align 1, !tbaa !2448
  %320 = lshr i32 %312, 31
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v20 = select i1 %318, i64 19, i64 14
  %322 = add i64 %311, %.v20
  store i64 %322, i64* %PC, align 8, !tbaa !2428
  br i1 %318, label %block_401112, label %block_40110d

block_40112d.loopexit:                            ; preds = %block_4010e0
  %.pre12 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  br label %block_40112d

block_40112d:                                     ; preds = %block_40112d.loopexit, %block_40110d
  %323 = phi i32 [ %.pre12, %block_40112d.loopexit ], [ %312, %block_40110d ]
  %324 = phi i64 [ %393, %block_40112d.loopexit ], [ %99, %block_40110d ]
  store i8 0, i8* %13, align 1, !tbaa !2432
  %325 = and i32 %323, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #12
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %330 = icmp eq i32 %323, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %29, align 1, !tbaa !2448
  %332 = lshr i32 %323, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v19 = select i1 %330, i64 14, i64 34
  %334 = add i64 %324, %.v19
  store i64 %334, i64* %PC, align 8, !tbaa !2428
  br i1 %330, label %block_40113b, label %block_40114f

block_4010a8:                                     ; preds = %block_40102f
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %335 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX, align 8, !tbaa !2428
  %337 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %338 = sub i32 %335, %337
  %339 = icmp ult i32 %335, %337
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %13, align 1, !tbaa !2432
  %341 = and i32 %338, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341) #12
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %20, align 1, !tbaa !2446
  %346 = xor i32 %337, %335
  %347 = xor i32 %346, %338
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %26, align 1, !tbaa !2447
  %351 = icmp eq i32 %338, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %29, align 1, !tbaa !2448
  %353 = lshr i32 %338, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %32, align 1, !tbaa !2449
  %355 = lshr i32 %335, 31
  %356 = lshr i32 %337, 31
  %357 = xor i32 %356, %355
  %358 = xor i32 %353, %355
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %38, align 1, !tbaa !2450
  %.v17 = select i1 %351, i64 20, i64 45
  %362 = add i64 %275, %.v17
  store i64 %362, i64* %PC, align 8, !tbaa !2428
  br i1 %351, label %block_4010bc, label %block_4010d5

block_4010e0:                                     ; preds = %block_401112, %block_4010d5
  %363 = phi i32 [ %217, %block_401112 ], [ 1, %block_4010d5 ]
  %364 = phi i64 [ %240, %block_401112 ], [ %65, %block_4010d5 ]
  %365 = zext i32 %363 to i64
  store i64 %365, i64* %RAX, align 8, !tbaa !2428
  %366 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %367 = sub i32 %363, %366
  %368 = icmp ult i32 %363, %366
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %13, align 1, !tbaa !2432
  %370 = and i32 %367, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370) #12
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %20, align 1, !tbaa !2446
  %375 = xor i32 %366, %363
  %376 = xor i32 %375, %367
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %26, align 1, !tbaa !2447
  %380 = icmp eq i32 %367, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %29, align 1, !tbaa !2448
  %382 = lshr i32 %367, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %32, align 1, !tbaa !2449
  %384 = lshr i32 %363, 31
  %385 = lshr i32 %366, 31
  %386 = xor i32 %385, %384
  %387 = xor i32 %382, %384
  %388 = add nuw nsw i32 %387, %386
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %38, align 1, !tbaa !2450
  %391 = icmp ne i8 %383, 0
  %392 = xor i1 %391, %389
  %.v18 = select i1 %392, i64 20, i64 77
  %393 = add i64 %364, %.v18
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  br i1 %392, label %block_4010f4, label %block_40112d.loopexit

block_40107f:                                     ; preds = %block_40103f
  %394 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = add i64 %181, -4
  %396 = add i64 %215, 12
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  store i64 %399, i64* %RCX, align 8, !tbaa !2428
  %400 = shl nsw i64 %399, 2
  %401 = add i64 %400, %394
  %402 = add i64 %215, 15
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RDX, align 8, !tbaa !2428
  %406 = add i64 %215, 22
  store i64 %406, i64* %PC, align 8
  store i32 %404, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  br label %block_401095
}

; Function Attrs: noinline
define %struct.Memory* @sub_401160_getInput(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401160:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12
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
  br label %block_40118b

block_401219:                                     ; preds = %block_4011b8
  %63 = add i64 %401, 7
  store i64 %63, i64* %PC, align 8
  store i32 4, i32* %390, align 4
  %.pre7 = load i64, i64* %RBP, align 8
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_401220

block_40118b:                                     ; preds = %block_4011bd, %block_401160
  %64 = phi i64 [ %.pre, %block_401160 ], [ %241, %block_4011bd ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401160 ], [ %203, %block_4011bd ]
  %65 = add i64 %64, -2795
  %66 = add i64 %64, 5
  %67 = load i64, i64* %RSP, align 8, !tbaa !2428
  %68 = add i64 %67, -8
  %69 = inttoptr i64 %68 to i64*
  store i64 %66, i64* %69, align 8
  store i64 %68, i64* %RSP, align 8, !tbaa !2428
  store i64 %65, i64* %PC, align 8, !tbaa !2428
  %70 = tail call fastcc %struct.Memory* @ext_602158_getchar(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %71 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %DL, align 1, !tbaa !2451
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -72
  %74 = load i32, i32* %EAX, align 4
  %75 = add i64 %71, 7
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %EAX, align 4
  %78 = load i64, i64* %PC, align 8
  %79 = add i32 %77, -10
  %80 = icmp ult i32 %77, 10
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %14, align 1, !tbaa !2432
  %82 = and i32 %79, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #12
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %21, align 1, !tbaa !2446
  %87 = xor i32 %79, %77
  %88 = lshr i32 %87, 4
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  store i8 %90, i8* %26, align 1, !tbaa !2447
  %91 = icmp eq i32 %79, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %29, align 1, !tbaa !2448
  %93 = lshr i32 %79, 31
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %32, align 1, !tbaa !2449
  %95 = lshr i32 %77, 31
  %96 = xor i32 %93, %95
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %38, align 1, !tbaa !2450
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -73
  %102 = load i8, i8* %DL, align 1
  %103 = add i64 %78, 6
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %101 to i8*
  store i8 %102, i8* %104, align 1
  %105 = load i64, i64* %PC, align 8
  %106 = load i8, i8* %29, align 1, !tbaa !2448
  %107 = icmp ne i8 %106, 0
  %.v12 = select i1 %107, i64 16, i64 6
  %108 = add i64 %105, %.v12
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %109 = icmp eq i8 %106, 1
  br i1 %109, label %block_4011ad, label %block_4011a3

block_4011a3:                                     ; preds = %block_40118b
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -72
  %112 = add i64 %108, 4
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, 1
  %116 = icmp ne i32 %114, -1
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %14, align 1, !tbaa !2432
  %118 = and i32 %115, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118) #12
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %21, align 1, !tbaa !2446
  %123 = xor i32 %114, 16
  %124 = xor i32 %123, %115
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %26, align 1, !tbaa !2447
  %128 = icmp eq i32 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %29, align 1, !tbaa !2448
  %130 = lshr i32 %115, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %32, align 1, !tbaa !2449
  %132 = lshr i32 %114, 31
  %133 = xor i32 %132, 1
  %134 = xor i32 %130, %132
  %135 = add nuw nsw i32 %134, %133
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %38, align 1, !tbaa !2450
  %138 = xor i1 %128, true
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %AL, align 1, !tbaa !2451
  %140 = add i64 %110, -73
  %141 = add i64 %108, 10
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i8*
  store i8 %139, i8* %142, align 1
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4011ad

block_4011bd:                                     ; preds = %block_4011ad
  %143 = add i64 %403, -72
  %144 = add i64 %415, 3
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RDI, align 8, !tbaa !2428
  %148 = load i64, i64* @stdin, align 128
  store i64 %148, i64* %RSI, align 8, !tbaa !2428
  %149 = add i64 %415, -2813
  %150 = add i64 %415, 16
  %151 = load i64, i64* %RSP, align 8, !tbaa !2428
  %152 = add i64 %151, -8
  %153 = inttoptr i64 %152 to i64*
  store i64 %150, i64* %153, align 8
  store i64 %152, i64* %RSP, align 8, !tbaa !2428
  store i64 %149, i64* %PC, align 8, !tbaa !2428
  %154 = tail call fastcc %struct.Memory* @ext_602168_ungetc(%struct.State* nonnull %0, %struct.Memory* %70)
  %155 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64* %RSI, align 8, !tbaa !2428
  %156 = load i64, i64* %RBP, align 8
  %157 = add i64 %156, -64
  store i64 %157, i64* %RCX, align 8, !tbaa !2428
  %158 = load i64, i64* @stdin, align 128
  store i64 %158, i64* %RDI, align 8, !tbaa !2428
  %159 = add i64 %156, -68
  %160 = add i64 %155, 26
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = shl nsw i64 %163, 2
  %165 = add i64 %164, %157
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = icmp ult i64 %165, %157
  %167 = icmp ult i64 %165, %164
  %168 = or i1 %166, %167
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %14, align 1, !tbaa !2432
  %170 = trunc i64 %165 to i32
  %171 = and i32 %170, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #12
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %21, align 1, !tbaa !2446
  %176 = xor i64 %164, %157
  %177 = xor i64 %176, %165
  %178 = lshr i64 %177, 4
  %179 = trunc i64 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %26, align 1, !tbaa !2447
  %181 = icmp eq i64 %165, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %29, align 1, !tbaa !2448
  %183 = lshr i64 %165, 63
  %184 = trunc i64 %183 to i8
  store i8 %184, i8* %32, align 1, !tbaa !2449
  %185 = lshr i64 %157, 63
  %186 = lshr i64 %163, 61
  %187 = and i64 %186, 1
  %188 = xor i64 %183, %185
  %189 = xor i64 %183, %187
  %190 = add nuw nsw i64 %188, %189
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %38, align 1, !tbaa !2450
  store i64 %165, i64* %RDX, align 8, !tbaa !2428
  %193 = add i64 %156, -80
  %194 = load i32, i32* %EAX, align 4
  %195 = add i64 %155, 39
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %193 to i32*
  store i32 %194, i32* %196, align 4
  %197 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %198 = add i64 %197, -2964
  %199 = add i64 %197, 7
  %200 = load i64, i64* %RSP, align 8, !tbaa !2428
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*
  store i64 %199, i64* %202, align 8
  store i64 %201, i64* %RSP, align 8, !tbaa !2428
  store i64 %198, i64* %PC, align 8, !tbaa !2428
  %203 = tail call fastcc %struct.Memory* @ext_6020e8___isoc99_fscanf(%struct.State* nonnull %0, %struct.Memory* %154)
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -68
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, 4
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %205 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, 1
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %62, align 8, !tbaa !2428
  %212 = icmp eq i32 %209, -1
  %213 = icmp eq i32 %210, 0
  %214 = or i1 %212, %213
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %14, align 1, !tbaa !2432
  %216 = and i32 %210, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #12
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %21, align 1, !tbaa !2446
  %221 = xor i32 %210, %209
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %26, align 1, !tbaa !2447
  %225 = zext i1 %213 to i8
  store i8 %225, i8* %29, align 1, !tbaa !2448
  %226 = lshr i32 %210, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %32, align 1, !tbaa !2449
  %228 = lshr i32 %209, 31
  %229 = xor i32 %226, %228
  %230 = add nuw nsw i32 %229, %226
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %38, align 1, !tbaa !2450
  %233 = add i64 %206, 12
  store i64 %233, i64* %PC, align 8
  store i32 %210, i32* %208, align 4
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -84
  %236 = load i32, i32* %EAX, align 4
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %235 to i32*
  store i32 %236, i32* %239, align 4
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, -127
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  br label %block_40118b

block_401220:                                     ; preds = %block_4011b8, %block_401219
  %242 = phi i64 [ %401, %block_4011b8 ], [ %.pre8, %block_401219 ]
  %243 = phi i64 [ %403, %block_4011b8 ], [ %.pre7, %block_401219 ]
  %244 = add i64 %243, -68
  %245 = add i64 %242, 3
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = add i32 %247, -1
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX, align 8, !tbaa !2428
  %250 = icmp eq i32 %247, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %14, align 1, !tbaa !2432
  %252 = and i32 %248, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #12
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1, !tbaa !2446
  %257 = xor i32 %248, %247
  %258 = lshr i32 %257, 4
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %26, align 1, !tbaa !2447
  %261 = icmp eq i32 %248, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %29, align 1, !tbaa !2448
  %263 = lshr i32 %248, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %32, align 1, !tbaa !2449
  %265 = lshr i32 %247, 31
  %266 = xor i32 %263, %265
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %38, align 1, !tbaa !2450
  store i32 %248, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %270 = sext i32 %248 to i64
  store i64 %270, i64* %RCX, align 8, !tbaa !2428
  %271 = shl nsw i64 %270, 2
  %272 = add nsw i64 %271, -64
  %273 = add i64 %272, %243
  %274 = add i64 %242, 25
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %277 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %278 = shl i32 %277, 1
  %279 = icmp slt i32 %277, 0
  %280 = icmp slt i32 %278, 0
  %281 = xor i1 %279, %280
  %282 = zext i32 %278 to i64
  store i64 %282, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %277, 31
  %283 = trunc i32 %.lobit to i8
  store i8 %283, i8* %14, align 1, !tbaa !2451
  %284 = and i32 %278, 254
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284) #12
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %21, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2451
  %289 = icmp eq i32 %278, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %29, align 1, !tbaa !2451
  %291 = lshr i32 %277, 30
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %32, align 1, !tbaa !2451
  %294 = zext i1 %281 to i8
  store i8 %294, i8* %38, align 1, !tbaa !2451
  store i64 %282, i64* %RDI, align 8, !tbaa !2428
  %295 = add i64 %242, -2640
  %296 = add i64 %242, 49
  %297 = load i64, i64* %RSP, align 8, !tbaa !2428
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %RSP, align 8, !tbaa !2428
  store i64 %295, i64* %PC, align 8, !tbaa !2428
  %300 = tail call %struct.Memory* @sub_4007d0_newWorkList_renamed_(%struct.State* nonnull %0, i64 %295, %struct.Memory* %70)
  %301 = load i64, i64* %RAX, align 8
  %302 = load i64, i64* %PC, align 8
  store i64 %301, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  %303 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RDI, align 8, !tbaa !2428
  %305 = add i64 %302, -2593
  %306 = add i64 %302, 20
  %307 = load i64, i64* %RSP, align 8, !tbaa !2428
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %RSP, align 8, !tbaa !2428
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  %310 = tail call %struct.Memory* @sub_400830_newCombList_renamed_(%struct.State* nonnull %0, i64 %305, %struct.Memory* %300)
  %311 = load i64, i64* %RAX, align 8
  %312 = load i64, i64* %PC, align 8
  store i64 %311, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  %313 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %312, -2613
  %316 = add i64 %312, 20
  %317 = load i64, i64* %RSP, align 8, !tbaa !2428
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %316, i64* %319, align 8
  store i64 %318, i64* %RSP, align 8, !tbaa !2428
  store i64 %315, i64* %PC, align 8, !tbaa !2428
  %320 = tail call %struct.Memory* @sub_400830_newCombList_renamed_(%struct.State* nonnull %0, i64 %315, %struct.Memory* %310)
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -64
  %323 = load i64, i64* %PC, align 8
  store i64 %322, i64* %RSI, align 8, !tbaa !2428
  %324 = load i64, i64* %RAX, align 8
  store i64 %324, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  %325 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %325, i64* %RDI, align 8, !tbaa !2428
  %326 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RDX, align 8, !tbaa !2428
  %328 = add i64 %323, -2537
  %329 = add i64 %323, 32
  %330 = load i64, i64* %RSP, align 8, !tbaa !2428
  %331 = add i64 %330, -8
  %332 = inttoptr i64 %331 to i64*
  store i64 %329, i64* %332, align 8
  store i64 %331, i64* %RSP, align 8, !tbaa !2428
  store i64 %328, i64* %PC, align 8, !tbaa !2428
  %333 = tail call %struct.Memory* @sub_400890_initWorkList_renamed_(%struct.State* nonnull %0, i64 %328, %struct.Memory* %320)
  %334 = load i64, i64* %PC, align 8
  %335 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %335, i64* %RDI, align 8, !tbaa !2428
  %336 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RSI, align 8, !tbaa !2428
  %338 = add i64 %334, -2489
  %339 = add i64 %334, 20
  %340 = load i64, i64* %RSP, align 8, !tbaa !2428
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %339, i64* %342, align 8
  store i64 %341, i64* %RSP, align 8, !tbaa !2428
  store i64 %338, i64* %PC, align 8, !tbaa !2428
  %343 = tail call %struct.Memory* @sub_4008e0_initCombList_renamed_(%struct.State* nonnull %0, i64 %338, %struct.Memory* %333)
  %344 = load i64, i64* %PC, align 8
  %345 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %345, i64* %RDI, align 8, !tbaa !2428
  %346 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RSI, align 8, !tbaa !2428
  %348 = add i64 %344, -2509
  %349 = add i64 %344, 20
  %350 = load i64, i64* %RSP, align 8, !tbaa !2428
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %349, i64* %352, align 8
  store i64 %351, i64* %RSP, align 8, !tbaa !2428
  store i64 %348, i64* %PC, align 8, !tbaa !2428
  %353 = tail call %struct.Memory* @sub_4008e0_initCombList_renamed_(%struct.State* nonnull %0, i64 %348, %struct.Memory* %343)
  %354 = load i64, i64* %PC, align 8
  %355 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RAX, align 8, !tbaa !2428
  %357 = load i64, i64* %RSP, align 8
  %358 = add i64 %357, 96
  store i64 %358, i64* %RSP, align 8, !tbaa !2428
  %359 = icmp ugt i64 %357, -97
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %14, align 1, !tbaa !2432
  %361 = trunc i64 %358 to i32
  %362 = and i32 %361, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362) #12
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1, !tbaa !2446
  %367 = xor i64 %358, %357
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %26, align 1, !tbaa !2447
  %371 = icmp eq i64 %358, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %29, align 1, !tbaa !2448
  %373 = lshr i64 %358, 63
  %374 = trunc i64 %373 to i8
  store i8 %374, i8* %32, align 1, !tbaa !2449
  %375 = lshr i64 %357, 63
  %376 = xor i64 %373, %375
  %377 = add nuw nsw i64 %376, %373
  %378 = icmp eq i64 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %38, align 1, !tbaa !2450
  %380 = add i64 %354, 12
  store i64 %380, i64* %PC, align 8
  %381 = add i64 %357, 104
  %382 = inttoptr i64 %358 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %RBP, align 8, !tbaa !2428
  store i64 %381, i64* %RSP, align 8, !tbaa !2428
  %384 = add i64 %354, 13
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %381 to i64*
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %PC, align 8, !tbaa !2428
  %387 = add i64 %357, 112
  store i64 %387, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %353

block_4011b8:                                     ; preds = %block_4011ad
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %388 = add i64 %403, -68
  %389 = add i64 %415, 91
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #12
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %397 = icmp eq i32 %391, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %29, align 1, !tbaa !2448
  %399 = lshr i32 %391, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v9 = select i1 %397, i64 97, i64 104
  %401 = add i64 %415, %.v9
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  br i1 %397, label %block_401219, label %block_401220

block_4011ad:                                     ; preds = %block_4011a3, %block_40118b
  %402 = phi i64 [ %.pre6, %block_4011a3 ], [ %108, %block_40118b ]
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -73
  %405 = add i64 %402, 3
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i8*
  %407 = load i8, i8* %406, align 1
  store i8 %407, i8* %AL, align 1, !tbaa !2451
  %408 = and i8 %407, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %409 = zext i8 %408 to i32
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409) #12
  %411 = trunc i32 %410 to i8
  %412 = xor i8 %411, 1
  store i8 %412, i8* %21, align 1, !tbaa !2446
  %413 = xor i8 %408, 1
  store i8 %413, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %414 = icmp eq i8 %413, 0
  %.v = select i1 %414, i64 16, i64 11
  %415 = add i64 %402, %.v
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  br i1 %414, label %block_4011bd, label %block_4011b8
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4013b0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4013b0:
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
define %struct.Memory* @sub_400630__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400630:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #12
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
  br i1 %18, label %block_400642, label %block_400640

block_400640:                                     ; preds = %block_400630
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400642

block_400642:                                     ; preds = %block_400640, %block_400630
  %27 = phi i64 [ %22, %block_400630 ], [ %.pre1, %block_400640 ]
  %28 = phi i64 [ %4, %block_400630 ], [ %.pre, %block_400640 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400630 ], [ %26, %block_400640 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #12
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
define %struct.Memory* @sub_400a4b(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400a4b:
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
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_400b3f(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b3f

block_400c1f:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %16 = add i64 %268, -1439
  %17 = add i64 %268, 17
  %18 = load i64, i64* %RSP, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %RSP, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %220)
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -80
  %24 = load i32, i32* %EAX, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %.pre51 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400aff:                                     ; preds = %block_400ab2
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -32
  %30 = add i64 %429, 4
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %29 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %RAX, align 8, !tbaa !2428
  %33 = shl i64 %32, 3
  %34 = add i64 %33, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 40)
  %35 = add i64 %429, 12
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %34 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RCX, align 8, !tbaa !2428
  store i64 %37, i64* %PC, align 8, !tbaa !2428
  switch i64 %37, label %501 [
    i64 4197233, label %block_400b71
    i64 4197208, label %block_400b58
    i64 4197133, label %block_400b0d
    i64 4197183, label %block_400b3f.loopexit
    i64 4197158, label %block_400b26
  ]

block_400c33:                                     ; preds = %block_400c06, %block_400c1f
  %38 = phi i64 [ %.pre51, %block_400c1f ], [ %443, %block_400c06 ]
  %MEMORY.0 = phi %struct.Memory* [ %21, %block_400c1f ], [ %435, %block_400c06 ]
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -16
  %41 = add i64 %38, 8
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = icmp eq i32 %43, -1
  %47 = icmp eq i32 %44, 0
  %48 = or i1 %46, %47
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %6, align 1, !tbaa !2432
  %50 = and i32 %44, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #12
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %7, align 1, !tbaa !2446
  %55 = xor i32 %44, %43
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %8, align 1, !tbaa !2447
  %59 = zext i1 %47 to i8
  store i8 %59, i8* %9, align 1, !tbaa !2448
  %60 = lshr i32 %44, 31
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %10, align 1, !tbaa !2449
  %62 = lshr i32 %43, 31
  %63 = xor i32 %60, %62
  %64 = add nuw nsw i32 %63, %60
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %11, align 1, !tbaa !2450
  %67 = add i64 %38, 14
  store i64 %67, i64* %PC, align 8
  store i32 %44, i32* %42, align 4
  %68 = load i64, i64* %PC, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -16
  %71 = add i64 %68, -408
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %69, -12
  %76 = add i64 %68, -405
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %73, %78
  %80 = icmp ult i32 %73, %78
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %6, align 1, !tbaa !2432
  %82 = and i32 %79, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #12
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %7, align 1, !tbaa !2446
  %87 = xor i32 %78, %73
  %88 = xor i32 %87, %79
  %89 = lshr i32 %88, 4
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %8, align 1, !tbaa !2447
  %92 = icmp eq i32 %79, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %9, align 1, !tbaa !2448
  %94 = lshr i32 %79, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %10, align 1, !tbaa !2449
  %96 = lshr i32 %73, 31
  %97 = lshr i32 %78, 31
  %98 = xor i32 %97, %96
  %99 = xor i32 %94, %96
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %11, align 1, !tbaa !2450
  %103 = icmp ne i8 %95, 0
  %104 = xor i1 %103, %101
  %.v = select i1 %104, i64 -399, i64 5
  %105 = add i64 %68, %.v
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  br i1 %104, label %block_400ab2, label %block_400c46

block_400b71:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %106 = load i64, i64* %RSP, align 8, !tbaa !2428
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 4197250, i64* %108, align 8
  store i64 %107, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %109 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %371)
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -60
  %112 = load i32, i32* %EAX, align 4
  %113 = load i64, i64* %PC, align 8
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %115, align 4
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 43
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400bb0.backedge:                            ; preds = %block_400b71, %block_400b0d, %block_400b8a, %block_400b58
  %.be = phi i64 [ %.pre.pre, %block_400b8a ], [ %281, %block_400b0d ], [ %499, %block_400b58 ], [ %117, %block_400b71 ]
  %MEMORY.1.be = phi %struct.Memory* [ %330, %block_400b8a ], [ %273, %block_400b0d ], [ %491, %block_400b58 ], [ %109, %block_400b71 ]
  br label %block_400bb0

block_400bb0:                                     ; preds = %block_400bb0.backedge, %block_400b3f
  %118 = phi i64 [ %351, %block_400b3f ], [ %.be, %block_400bb0.backedge ]
  %MEMORY.1 = phi %struct.Memory* [ %343, %block_400b3f ], [ %MEMORY.1.be, %block_400bb0.backedge ]
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -8
  %121 = add i64 %118, 4
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = add i64 %119, -16
  %125 = add i64 %118, 8
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, 12
  store i64 %129, i64* %RCX, align 8, !tbaa !2428
  %130 = lshr i64 %129, 63
  %131 = add i64 %129, %123
  store i64 %131, i64* %RAX, align 8, !tbaa !2428
  %132 = icmp ult i64 %131, %123
  %133 = icmp ult i64 %131, %129
  %134 = or i1 %132, %133
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %6, align 1, !tbaa !2432
  %136 = trunc i64 %131 to i32
  %137 = and i32 %136, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #12
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %7, align 1, !tbaa !2446
  %142 = xor i64 %129, %123
  %143 = xor i64 %142, %131
  %144 = lshr i64 %143, 4
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %8, align 1, !tbaa !2447
  %147 = icmp eq i64 %131, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %9, align 1, !tbaa !2448
  %149 = lshr i64 %131, 63
  %150 = trunc i64 %149 to i8
  store i8 %150, i8* %10, align 1, !tbaa !2449
  %151 = lshr i64 %123, 63
  %152 = xor i64 %149, %151
  %153 = xor i64 %149, %130
  %154 = add nuw nsw i64 %152, %153
  %155 = icmp eq i64 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %11, align 1, !tbaa !2450
  %157 = add i64 %131, 4
  %158 = add i64 %118, 18
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  %162 = add i64 %118, 22
  store i64 %162, i64* %PC, align 8
  %163 = load i64, i64* %122, align 8
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = add i64 %118, 26
  store i64 %164, i64* %PC, align 8
  %165 = load i32, i32* %126, align 4
  %166 = sext i32 %165 to i64
  %167 = mul nsw i64 %166, 12
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = lshr i64 %167, 63
  %169 = add i64 %167, %163
  store i64 %169, i64* %RAX, align 8, !tbaa !2428
  %170 = icmp ult i64 %169, %163
  %171 = icmp ult i64 %169, %167
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %6, align 1, !tbaa !2432
  %174 = trunc i64 %169 to i32
  %175 = and i32 %174, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #12
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %7, align 1, !tbaa !2446
  %180 = xor i64 %167, %163
  %181 = xor i64 %180, %169
  %182 = lshr i64 %181, 4
  %183 = trunc i64 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %8, align 1, !tbaa !2447
  %185 = icmp eq i64 %169, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %9, align 1, !tbaa !2448
  %187 = lshr i64 %169, 63
  %188 = trunc i64 %187 to i8
  store i8 %188, i8* %10, align 1, !tbaa !2449
  %189 = lshr i64 %163, 63
  %190 = xor i64 %187, %189
  %191 = xor i64 %187, %168
  %192 = add nuw nsw i64 %190, %191
  %193 = icmp eq i64 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %11, align 1, !tbaa !2450
  store i64 %169, i64* %RDI, align 8, !tbaa !2428
  %195 = load i64, i64* %RBP, align 8
  %196 = add i64 %195, -68
  %197 = add i64 %118, 39
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i32*
  store i32 %160, i32* %198, align 4
  %199 = load i64, i64* %PC, align 8
  %200 = add i64 %199, -487
  %201 = add i64 %199, 5
  %202 = load i64, i64* %RSP, align 8, !tbaa !2428
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %RSP, align 8, !tbaa !2428
  store i64 %200, i64* %PC, align 8, !tbaa !2428
  %205 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %200, %struct.Memory* %MEMORY.1)
  %206 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -68
  %209 = add i64 %206, 13
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RSI, align 8, !tbaa !2428
  %213 = load i32, i32* %EAX, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %215 = add i64 %206, -1372
  %216 = add i64 %206, 22
  %217 = load i64, i64* %RSP, align 8, !tbaa !2428
  %218 = add i64 %217, -8
  %219 = inttoptr i64 %218 to i64*
  store i64 %216, i64* %219, align 8
  store i64 %218, i64* %RSP, align 8, !tbaa !2428
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  %220 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %221 = load i64, i64* %RBP, align 8
  %222 = add i64 %221, -16
  %223 = load i64, i64* %PC, align 8
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RDX, align 8, !tbaa !2428
  %228 = add i64 %221, -12
  %229 = add i64 %223, 6
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %231, -1
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RSI, align 8, !tbaa !2428
  %234 = lshr i32 %232, 31
  %235 = sub i32 %226, %232
  %236 = icmp ult i32 %226, %232
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %6, align 1, !tbaa !2432
  %238 = and i32 %235, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238) #12
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %7, align 1, !tbaa !2446
  %243 = xor i32 %232, %226
  %244 = xor i32 %243, %235
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %8, align 1, !tbaa !2447
  %248 = icmp eq i32 %235, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %9, align 1, !tbaa !2448
  %250 = lshr i32 %235, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %10, align 1, !tbaa !2449
  %252 = lshr i32 %226, 31
  %253 = xor i32 %234, %252
  %254 = xor i32 %250, %252
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %11, align 1, !tbaa !2450
  %258 = add i64 %221, -72
  %259 = load i32, i32* %EAX, align 4
  %260 = add i64 %223, 14
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %258 to i32*
  store i32 %259, i32* %261, align 4
  %262 = load i64, i64* %PC, align 8
  %263 = load i8, i8* %10, align 1, !tbaa !2449
  %264 = icmp ne i8 %263, 0
  %265 = load i8, i8* %11, align 1, !tbaa !2450
  %266 = icmp ne i8 %265, 0
  %267 = xor i1 %264, %266
  %.v65 = select i1 %267, i64 6, i64 31
  %268 = add i64 %262, %.v65
  %269 = add i64 %268, 10
  store i64 %269, i64* %PC, align 8
  br i1 %267, label %block_400c06, label %block_400c1f

block_400b0d:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %270 = load i64, i64* %RSP, align 8, !tbaa !2428
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 4197150, i64* %272, align 8
  store i64 %271, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %273 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %371)
  %274 = load i64, i64* %RBP, align 8
  %275 = add i64 %274, -44
  %276 = load i32, i32* %EAX, align 4
  %277 = load i64, i64* %PC, align 8
  %278 = add i64 %277, 3
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %275 to i32*
  store i32 %276, i32* %279, align 4
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, 143
  store i64 %281, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400b8a:                                     ; preds = %block_400ab2
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -8
  %284 = add i64 %429, 14
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  %287 = add i64 %282, -16
  %288 = add i64 %429, 18
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = mul nsw i64 %291, 12
  store i64 %292, i64* %RCX, align 8, !tbaa !2428
  %293 = lshr i64 %292, 63
  %294 = add i64 %292, %286
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = icmp ult i64 %294, %286
  %296 = icmp ult i64 %294, %292
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %6, align 1, !tbaa !2432
  %299 = trunc i64 %294 to i32
  %300 = and i32 %299, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #12
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %7, align 1, !tbaa !2446
  %305 = xor i64 %292, %286
  %306 = xor i64 %305, %294
  %307 = lshr i64 %306, 4
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %8, align 1, !tbaa !2447
  %310 = icmp eq i64 %294, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %9, align 1, !tbaa !2448
  %312 = lshr i64 %294, 63
  %313 = trunc i64 %312 to i8
  store i8 %313, i8* %10, align 1, !tbaa !2449
  %314 = lshr i64 %286, 63
  %315 = xor i64 %312, %314
  %316 = xor i64 %312, %293
  %317 = add nuw nsw i64 %315, %316
  %318 = icmp eq i64 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %11, align 1, !tbaa !2450
  %320 = add i64 %294, 8
  %321 = add i64 %429, 28
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %325 = add i64 %429, -1290
  %326 = add i64 %429, 35
  %327 = load i64, i64* %RSP, align 8, !tbaa !2428
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %326, i64* %329, align 8
  store i64 %328, i64* %RSP, align 8, !tbaa !2428
  store i64 %325, i64* %PC, align 8, !tbaa !2428
  %330 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %371)
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -64
  %333 = load i32, i32* %EAX, align 4
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %332 to i32*
  store i32 %333, i32* %336, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400bb0.backedge

block_400b3f.loopexit:                            ; preds = %block_400aff
  br label %block_400b3f

block_400b3f:                                     ; preds = %block_400b3f.loopexit, %3
  %337 = phi i64 [ %1, %3 ], [ 4197183, %block_400b3f.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %371, %block_400b3f.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %338 = add i64 %337, -1215
  %339 = add i64 %337, 17
  %340 = load i64, i64* %RSP, align 8, !tbaa !2428
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %339, i64* %342, align 8
  store i64 %341, i64* %RSP, align 8, !tbaa !2428
  store i64 %338, i64* %PC, align 8, !tbaa !2428
  %343 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %344 = load i64, i64* %RBP, align 8
  %345 = add i64 %344, -52
  %346 = load i32, i32* %EAX, align 4
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %345 to i32*
  store i32 %346, i32* %349, align 4
  %350 = load i64, i64* %PC, align 8
  %351 = add i64 %350, 93
  store i64 %351, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400ab2:                                     ; preds = %block_400c33
  %352 = add i64 %69, -8
  %353 = add i64 %105, 4
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %RAX, align 8, !tbaa !2428
  %356 = add i64 %105, 8
  store i64 %356, i64* %PC, align 8
  %357 = load i32, i32* %72, align 4
  %358 = sext i32 %357 to i64
  %359 = mul nsw i64 %358, 3
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = mul nsw i64 %358, 12
  %361 = add i64 %355, %360
  %362 = add i64 %105, 15
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %366 = add i64 %105, -1074
  %367 = add i64 %105, 35
  %368 = load i64, i64* %RSP, align 8, !tbaa !2428
  %369 = add i64 %368, -8
  %370 = inttoptr i64 %369 to i64*
  store i64 %367, i64* %370, align 8
  store i64 %369, i64* %RSP, align 8, !tbaa !2428
  store i64 %366, i64* %PC, align 8, !tbaa !2428
  %371 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %372 = load i64, i64* %RBP, align 8
  %373 = add i64 %372, -8
  %374 = load i64, i64* %PC, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %373 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RCX, align 8, !tbaa !2428
  %378 = add i64 %372, -16
  %379 = add i64 %374, 8
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = mul nsw i64 %382, 3
  store i64 %383, i64* %RDI, align 8, !tbaa !2428
  %384 = mul nsw i64 %382, 12
  %385 = add i64 %384, 8
  %386 = add i64 %385, %377
  %387 = add i64 %374, 16
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RDX, align 8, !tbaa !2428
  store i64 %390, i64* %RCX, align 8, !tbaa !2428
  %391 = add nsw i64 %390, -4
  store i64 %391, i64* %RDI, align 8, !tbaa !2428
  %392 = icmp ult i32 %389, 4
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %6, align 1, !tbaa !2432
  %394 = trunc i64 %391 to i32
  %395 = and i32 %394, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #12
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %7, align 1, !tbaa !2446
  %400 = xor i64 %391, %390
  %401 = lshr i64 %400, 4
  %402 = trunc i64 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %8, align 1, !tbaa !2447
  %404 = icmp eq i64 %391, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %9, align 1, !tbaa !2448
  %406 = lshr i64 %391, 63
  %407 = trunc i64 %406 to i8
  store i8 %407, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %408 = add i64 %372, -20
  %409 = load i32, i32* %EAX, align 4
  %410 = add i64 %374, 28
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %408 to i32*
  store i32 %409, i32* %411, align 4
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -32
  %414 = load i64, i64* %RCX, align 8
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %413 to i64*
  store i64 %414, i64* %417, align 8
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -40
  %420 = load i64, i64* %RDI, align 8
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %419 to i64*
  store i64 %420, i64* %423, align 8
  %424 = load i64, i64* %PC, align 8
  %425 = load i8, i8* %6, align 1, !tbaa !2432
  %426 = load i8, i8* %9, align 1, !tbaa !2448
  %427 = or i8 %426, %425
  %428 = icmp eq i8 %427, 0
  %.v66 = select i1 %428, i64 145, i64 6
  %429 = add i64 %424, %.v66
  store i64 %429, i64* %PC, align 8, !tbaa !2428
  br i1 %428, label %block_400b8a, label %block_400aff

block_400c06:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %430 = add i64 %268, -1414
  %431 = add i64 %268, 17
  %432 = load i64, i64* %RSP, align 8, !tbaa !2428
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %RSP, align 8, !tbaa !2428
  store i64 %430, i64* %PC, align 8, !tbaa !2428
  %435 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %220)
  %436 = load i64, i64* %RBP, align 8
  %437 = add i64 %436, -76
  %438 = load i32, i32* %EAX, align 4
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %437 to i32*
  store i32 %438, i32* %441, align 4
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 25
  store i64 %443, i64* %PC, align 8, !tbaa !2428
  br label %block_400c33

block_400c46:                                     ; preds = %block_400c33
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %444 = add i64 %105, -1478
  %445 = add i64 %105, 17
  %446 = load i64, i64* %RSP, align 8, !tbaa !2428
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 %445, i64* %448, align 8
  store i64 %447, i64* %RSP, align 8, !tbaa !2428
  store i64 %444, i64* %PC, align 8, !tbaa !2428
  %449 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -84
  %452 = load i32, i32* %EAX, align 4
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %451 to i32*
  store i32 %452, i32* %455, align 4
  %456 = load i64, i64* %RSP, align 8
  %457 = load i64, i64* %PC, align 8
  %458 = add i64 %456, 96
  store i64 %458, i64* %RSP, align 8, !tbaa !2428
  %459 = icmp ugt i64 %456, -97
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %6, align 1, !tbaa !2432
  %461 = trunc i64 %458 to i32
  %462 = and i32 %461, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #12
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %7, align 1, !tbaa !2446
  %467 = xor i64 %458, %456
  %468 = lshr i64 %467, 4
  %469 = trunc i64 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %8, align 1, !tbaa !2447
  %471 = icmp eq i64 %458, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %9, align 1, !tbaa !2448
  %473 = lshr i64 %458, 63
  %474 = trunc i64 %473 to i8
  store i8 %474, i8* %10, align 1, !tbaa !2449
  %475 = lshr i64 %456, 63
  %476 = xor i64 %473, %475
  %477 = add nuw nsw i64 %476, %473
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %11, align 1, !tbaa !2450
  %480 = add i64 %457, 5
  store i64 %480, i64* %PC, align 8
  %481 = add i64 %456, 104
  %482 = inttoptr i64 %458 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RBP, align 8, !tbaa !2428
  store i64 %481, i64* %RSP, align 8, !tbaa !2428
  %484 = add i64 %457, 6
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %481 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %PC, align 8, !tbaa !2428
  %487 = add i64 %456, 112
  store i64 %487, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %449

block_400b58:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %488 = load i64, i64* %RSP, align 8, !tbaa !2428
  %489 = add i64 %488, -8
  %490 = inttoptr i64 %489 to i64*
  store i64 4197225, i64* %490, align 8
  store i64 %489, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %491 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %371)
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -56
  %494 = load i32, i32* %EAX, align 4
  %495 = load i64, i64* %PC, align 8
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %497, align 4
  %498 = load i64, i64* %PC, align 8
  %499 = add i64 %498, 68
  store i64 %499, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400b26:                                     ; preds = %block_400aff
  %500 = tail call %struct.Memory* @sub_400b26(%struct.State* nonnull %0, i64 4197158, %struct.Memory* %371)
  ret %struct.Memory* %500

; <label>:501:                                    ; preds = %block_400aff
  %502 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %37, %struct.Memory* %371)
  ret %struct.Memory* %502
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400830_newCombList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400830:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12
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
  %55 = tail call fastcc %struct.Memory* @ext_400690_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #12
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
  br i1 %74, label %block_400864, label %block_40085a

block_400864:                                     ; preds = %block_400830
  %EAX = bitcast %union.anon* %3 to i32*
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 109), i64* %RSI, align 8, !tbaa !2428
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
  %98 = tail call fastcc %struct.Memory* @ext_4006d0_exit(%struct.State* nonnull %0, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %PC, align 8
  %101 = tail call %struct.Memory* @sub_400890_initWorkList(%struct.State* nonnull %0, i64 %100, %struct.Memory* %98)
  ret %struct.Memory* %101

block_40085a:                                     ; preds = %block_400830
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
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_4007c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %13 = tail call %struct.Memory* @sub_400750_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400890_initWorkList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400890:
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
  br label %block_4008a6

block_4008b2:                                     ; preds = %block_4008a6
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
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #12
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
  br label %block_4008a6

block_4008a6:                                     ; preds = %block_4008b2, %block_400890
  %94 = phi i64 [ %93, %block_4008b2 ], [ %.pre, %block_400890 ]
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
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #12
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
  br i1 %130, label %block_4008b2, label %block_4008d6

block_4008d6:                                     ; preds = %block_4008a6
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
define %struct.Memory* @sub_400c60_printList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400c60:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
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
  br label %block_400c79

block_400cbf:                                     ; preds = %block_400ca0, %block_400c9b
  %61 = phi i64 [ %.pre3, %block_400ca0 ], [ %175, %block_400c9b ]
  %62 = phi i64 [ %.pre2, %block_400ca0 ], [ %138, %block_400c9b ]
  %MEMORY.0 = phi %struct.Memory* [ %239, %block_400ca0 ], [ %MEMORY.1, %block_400c9b ]
  %63 = add i64 %62, -20
  %64 = add i64 %61, 3
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = icmp eq i32 %66, -1
  %70 = icmp eq i32 %67, 0
  %71 = or i1 %69, %70
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %15, align 1, !tbaa !2432
  %73 = and i32 %67, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73) #12
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %22, align 1, !tbaa !2446
  %78 = xor i32 %67, %66
  %79 = lshr i32 %78, 4
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  store i8 %81, i8* %27, align 1, !tbaa !2447
  %82 = zext i1 %70 to i8
  store i8 %82, i8* %30, align 1, !tbaa !2448
  %83 = lshr i32 %67, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %33, align 1, !tbaa !2449
  %85 = lshr i32 %66, 31
  %86 = xor i32 %83, %85
  %87 = add nuw nsw i32 %86, %83
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %39, align 1, !tbaa !2450
  %90 = add i64 %61, 9
  store i64 %90, i64* %PC, align 8
  store i32 %67, i32* %65, align 4
  %91 = load i64, i64* %PC, align 8
  %92 = add i64 %91, -79
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  br label %block_400c79

block_400ccd:                                     ; preds = %block_400c79
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %93 = add i64 %174, -1613
  %94 = add i64 %174, 17
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -28
  %101 = load i32, i32* %EAX, align 4
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 3
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %104, align 4
  %105 = load i64, i64* %RSP, align 8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %105, 32
  store i64 %107, i64* %RSP, align 8, !tbaa !2428
  %108 = icmp ugt i64 %105, -33
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %15, align 1, !tbaa !2432
  %110 = trunc i64 %107 to i32
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #12
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %22, align 1, !tbaa !2446
  %116 = xor i64 %107, %105
  %117 = lshr i64 %116, 4
  %118 = trunc i64 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %27, align 1, !tbaa !2447
  %120 = icmp eq i64 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %30, align 1, !tbaa !2448
  %122 = lshr i64 %107, 63
  %123 = trunc i64 %122 to i8
  store i8 %123, i8* %33, align 1, !tbaa !2449
  %124 = lshr i64 %105, 63
  %125 = xor i64 %122, %124
  %126 = add nuw nsw i64 %125, %122
  %127 = icmp eq i64 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %39, align 1, !tbaa !2450
  %129 = add i64 %106, 5
  store i64 %129, i64* %PC, align 8
  %130 = add i64 %105, 40
  %131 = inttoptr i64 %107 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RBP, align 8, !tbaa !2428
  store i64 %130, i64* %RSP, align 8, !tbaa !2428
  %133 = add i64 %106, 6
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %130 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %PC, align 8, !tbaa !2428
  %136 = add i64 %105, 48
  store i64 %136, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %98

block_400c79:                                     ; preds = %block_400cbf, %block_400c60
  %137 = phi i64 [ %.pre, %block_400c60 ], [ %92, %block_400cbf ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400c60 ], [ %MEMORY.0, %block_400cbf ]
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -20
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
  store i8 %150, i8* %15, align 1, !tbaa !2432
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #12
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %22, align 1, !tbaa !2446
  %156 = xor i32 %147, %142
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %27, align 1, !tbaa !2447
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %30, align 1, !tbaa !2448
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %33, align 1, !tbaa !2449
  %165 = lshr i32 %142, 31
  %166 = lshr i32 %147, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %163, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %39, align 1, !tbaa !2450
  %172 = icmp ne i8 %164, 0
  %173 = xor i1 %172, %170
  %.v = select i1 %173, i64 12, i64 84
  %174 = add i64 %137, %.v
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br i1 %173, label %block_400c85, label %block_400ccd

block_400c9b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %175 = add i64 %220, 36
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  br label %block_400cbf

block_400c85:                                     ; preds = %block_400c79
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %176 = add i64 %174, 8
  store i64 %176, i64* %PC, align 8
  %177 = load i32, i32* %141, align 4
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RCX, align 8, !tbaa !2428
  %179 = add i64 %174, 10
  store i64 %179, i64* %PC, align 8
  %180 = trunc i32 %177 to i5
  switch i5 %180, label %181 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %190
  ]

; <label>:181:                                    ; preds = %block_400c85
  %182 = and i32 %177, 31
  %183 = zext i32 %182 to i64
  %184 = add nuw nsw i64 %183, 4294967295
  %185 = and i64 %184, 4294967295
  %186 = shl i64 1, %185
  %187 = trunc i64 %186 to i32
  %188 = icmp slt i32 %187, 0
  %189 = shl i32 %187, 1
  br label %190

; <label>:190:                                    ; preds = %block_400c85, %181
  %191 = phi i1 [ %188, %181 ], [ false, %block_400c85 ]
  %192 = phi i32 [ %189, %181 ], [ 2, %block_400c85 ]
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = zext i1 %191 to i8
  store i8 %194, i8* %15, align 1, !tbaa !2451
  %195 = and i32 %192, 254
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #12
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %22, align 1, !tbaa !2451
  store i8 0, i8* %27, align 1, !tbaa !2451
  %200 = icmp eq i32 %192, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1, !tbaa !2451
  %202 = lshr i32 %192, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %33, align 1, !tbaa !2451
  store i8 0, i8* %39, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %190, %block_400c85
  %204 = phi i32 [ %192, %190 ], [ 1, %block_400c85 ]
  %205 = add i64 %138, -16
  %206 = add i64 %174, 13
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %204
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = and i32 %209, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211) #12
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  %216 = icmp eq i32 %209, 0
  %217 = zext i1 %216 to i8
  %218 = lshr i32 %209, 31
  %219 = trunc i32 %218 to i8
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 %215, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 %217, i8* %30, align 1, !tbaa !2448
  store i8 %219, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v4 = select i1 %216, i64 27, i64 22
  %220 = add i64 %174, %.v4
  store i64 %220, i64* %PC, align 8, !tbaa !2428
  br i1 %216, label %block_400ca0, label %block_400c9b

block_400ca0:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 155), i64* %RDI, align 8, !tbaa !2428
  %221 = add i64 %138, -8
  %222 = add i64 %220, 14
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = add i64 %220, 18
  store i64 %225, i64* %PC, align 8
  %226 = load i32, i32* %141, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RCX, align 8, !tbaa !2428
  %228 = shl nsw i64 %227, 2
  %229 = add i64 %228, %224
  %230 = add i64 %220, 21
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %234 = add i64 %220, -1568
  %235 = add i64 %220, 28
  %236 = load i64, i64* %RSP, align 8, !tbaa !2428
  %237 = add i64 %236, -8
  %238 = inttoptr i64 %237 to i64*
  store i64 %235, i64* %238, align 8
  store i64 %237, i64* %RSP, align 8, !tbaa !2428
  store i64 %234, i64* %PC, align 8, !tbaa !2428
  %239 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %240 = load i64, i64* %RBP, align 8
  %241 = add i64 %240, -24
  %242 = load i32, i32* %EAX, align 4
  %243 = load i64, i64* %PC, align 8
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %241 to i32*
  store i32 %242, i32* %245, align 4
  %.pre2 = load i64, i64* %RBP, align 8
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400cbf
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b58(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b58

block_400aff:                                     ; preds = %block_400ab2
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -32
  %18 = add i64 %267, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = shl i64 %20, 3
  %22 = add i64 %21, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 40)
  %23 = add i64 %267, 12
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  switch i64 %25, label %490 [
    i64 4197233, label %block_400b71
    i64 4197208, label %block_400b58.loopexit
    i64 4197133, label %block_400b0d
    i64 4197183, label %block_400b3f
    i64 4197158, label %block_400b26
  ]

block_400b71:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %26 = load i64, i64* %RSP, align 8, !tbaa !2428
  %27 = add i64 %26, -8
  %28 = inttoptr i64 %27 to i64*
  store i64 4197250, i64* %28, align 8
  store i64 %27, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %29 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %209)
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -60
  %32 = load i32, i32* %EAX, align 4
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 43
  store i64 %37, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400bb0.backedge:                            ; preds = %block_400b71, %block_400b0d, %block_400b8a
  %.be = phi i64 [ %.pre.pre, %block_400b8a ], [ %279, %block_400b0d ], [ %37, %block_400b71 ]
  %MEMORY.0.be = phi %struct.Memory* [ %396, %block_400b8a ], [ %271, %block_400b0d ], [ %29, %block_400b71 ]
  br label %block_400bb0

block_400bb0:                                     ; preds = %block_400bb0.backedge, %block_400b58
  %38 = phi i64 [ %487, %block_400b58 ], [ %.be, %block_400bb0.backedge ]
  %MEMORY.0 = phi %struct.Memory* [ %479, %block_400b58 ], [ %MEMORY.0.be, %block_400bb0.backedge ]
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -8
  %41 = add i64 %38, 4
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %RAX, align 8, !tbaa !2428
  %44 = add i64 %39, -16
  %45 = add i64 %38, 8
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 12
  store i64 %49, i64* %RCX, align 8, !tbaa !2428
  %50 = lshr i64 %49, 63
  %51 = add i64 %49, %43
  store i64 %51, i64* %RAX, align 8, !tbaa !2428
  %52 = icmp ult i64 %51, %43
  %53 = icmp ult i64 %51, %49
  %54 = or i1 %52, %53
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %6, align 1, !tbaa !2432
  %56 = trunc i64 %51 to i32
  %57 = and i32 %56, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57) #12
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %7, align 1, !tbaa !2446
  %62 = xor i64 %49, %43
  %63 = xor i64 %62, %51
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  store i8 %66, i8* %8, align 1, !tbaa !2447
  %67 = icmp eq i64 %51, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %9, align 1, !tbaa !2448
  %69 = lshr i64 %51, 63
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %10, align 1, !tbaa !2449
  %71 = lshr i64 %43, 63
  %72 = xor i64 %69, %71
  %73 = xor i64 %69, %50
  %74 = add nuw nsw i64 %72, %73
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %11, align 1, !tbaa !2450
  %77 = add i64 %51, 4
  %78 = add i64 %38, 18
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RSI, align 8, !tbaa !2428
  %82 = add i64 %38, 22
  store i64 %82, i64* %PC, align 8
  %83 = load i64, i64* %42, align 8
  store i64 %83, i64* %RAX, align 8, !tbaa !2428
  %84 = add i64 %38, 26
  store i64 %84, i64* %PC, align 8
  %85 = load i32, i32* %46, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, 12
  store i64 %87, i64* %RCX, align 8, !tbaa !2428
  %88 = lshr i64 %87, 63
  %89 = add i64 %87, %83
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = icmp ult i64 %89, %83
  %91 = icmp ult i64 %89, %87
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %6, align 1, !tbaa !2432
  %94 = trunc i64 %89 to i32
  %95 = and i32 %94, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #12
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %7, align 1, !tbaa !2446
  %100 = xor i64 %87, %83
  %101 = xor i64 %100, %89
  %102 = lshr i64 %101, 4
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %8, align 1, !tbaa !2447
  %105 = icmp eq i64 %89, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %9, align 1, !tbaa !2448
  %107 = lshr i64 %89, 63
  %108 = trunc i64 %107 to i8
  store i8 %108, i8* %10, align 1, !tbaa !2449
  %109 = lshr i64 %83, 63
  %110 = xor i64 %107, %109
  %111 = xor i64 %107, %88
  %112 = add nuw nsw i64 %110, %111
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %11, align 1, !tbaa !2450
  store i64 %89, i64* %RDI, align 8, !tbaa !2428
  %115 = load i64, i64* %RBP, align 8
  %116 = add i64 %115, -68
  %117 = add i64 %38, 39
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %80, i32* %118, align 4
  %119 = load i64, i64* %PC, align 8
  %120 = add i64 %119, -487
  %121 = add i64 %119, 5
  %122 = load i64, i64* %RSP, align 8, !tbaa !2428
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  %125 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %120, %struct.Memory* %MEMORY.0)
  %126 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -68
  %129 = add i64 %126, 13
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RSI, align 8, !tbaa !2428
  %133 = load i32, i32* %EAX, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %135 = add i64 %126, -1372
  %136 = add i64 %126, 22
  %137 = load i64, i64* %RSP, align 8, !tbaa !2428
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %RSP, align 8, !tbaa !2428
  store i64 %135, i64* %PC, align 8, !tbaa !2428
  %140 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -16
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, 3
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RDX, align 8, !tbaa !2428
  %148 = add i64 %141, -12
  %149 = add i64 %143, 6
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, -1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RSI, align 8, !tbaa !2428
  %154 = lshr i32 %152, 31
  %155 = sub i32 %146, %152
  %156 = icmp ult i32 %146, %152
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %6, align 1, !tbaa !2432
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #12
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %7, align 1, !tbaa !2446
  %163 = xor i32 %152, %146
  %164 = xor i32 %163, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %8, align 1, !tbaa !2447
  %168 = icmp eq i32 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %9, align 1, !tbaa !2448
  %170 = lshr i32 %155, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %10, align 1, !tbaa !2449
  %172 = lshr i32 %146, 31
  %173 = xor i32 %154, %172
  %174 = xor i32 %170, %172
  %175 = add nuw nsw i32 %174, %173
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %11, align 1, !tbaa !2450
  %178 = add i64 %141, -72
  %179 = load i32, i32* %EAX, align 4
  %180 = add i64 %143, 14
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %181, align 4
  %182 = load i64, i64* %PC, align 8
  %183 = load i8, i8* %10, align 1, !tbaa !2449
  %184 = icmp ne i8 %183, 0
  %185 = load i8, i8* %11, align 1, !tbaa !2450
  %186 = icmp ne i8 %185, 0
  %187 = xor i1 %184, %186
  %.v83 = select i1 %187, i64 6, i64 31
  %188 = add i64 %182, %.v83
  %189 = add i64 %188, 10
  store i64 %189, i64* %PC, align 8
  br i1 %187, label %block_400c06, label %block_400c1f

block_400ab2:                                     ; preds = %block_400c33
  %190 = add i64 %311, -8
  %191 = add i64 %347, 4
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = add i64 %347, 8
  store i64 %194, i64* %PC, align 8
  %195 = load i32, i32* %314, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, 3
  store i64 %197, i64* %RCX, align 8, !tbaa !2428
  %198 = mul nsw i64 %196, 12
  %199 = add i64 %193, %198
  %200 = add i64 %347, 15
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %204 = add i64 %347, -1074
  %205 = add i64 %347, 35
  %206 = load i64, i64* %RSP, align 8, !tbaa !2428
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208, align 8
  store i64 %207, i64* %RSP, align 8, !tbaa !2428
  store i64 %204, i64* %PC, align 8, !tbaa !2428
  %209 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %210 = load i64, i64* %RBP, align 8
  %211 = add i64 %210, -8
  %212 = load i64, i64* %PC, align 8
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %211 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RCX, align 8, !tbaa !2428
  %216 = add i64 %210, -16
  %217 = add i64 %212, 8
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %220, 3
  store i64 %221, i64* %RDI, align 8, !tbaa !2428
  %222 = mul nsw i64 %220, 12
  %223 = add i64 %222, 8
  %224 = add i64 %223, %215
  %225 = add i64 %212, 16
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RDX, align 8, !tbaa !2428
  store i64 %228, i64* %RCX, align 8, !tbaa !2428
  %229 = add nsw i64 %228, -4
  store i64 %229, i64* %RDI, align 8, !tbaa !2428
  %230 = icmp ult i32 %227, 4
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %6, align 1, !tbaa !2432
  %232 = trunc i64 %229 to i32
  %233 = and i32 %232, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233) #12
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %7, align 1, !tbaa !2446
  %238 = xor i64 %229, %228
  %239 = lshr i64 %238, 4
  %240 = trunc i64 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %8, align 1, !tbaa !2447
  %242 = icmp eq i64 %229, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %9, align 1, !tbaa !2448
  %244 = lshr i64 %229, 63
  %245 = trunc i64 %244 to i8
  store i8 %245, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %246 = add i64 %210, -20
  %247 = load i32, i32* %EAX, align 4
  %248 = add i64 %212, 28
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %246 to i32*
  store i32 %247, i32* %249, align 4
  %250 = load i64, i64* %RBP, align 8
  %251 = add i64 %250, -32
  %252 = load i64, i64* %RCX, align 8
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %251 to i64*
  store i64 %252, i64* %255, align 8
  %256 = load i64, i64* %RBP, align 8
  %257 = add i64 %256, -40
  %258 = load i64, i64* %RDI, align 8
  %259 = load i64, i64* %PC, align 8
  %260 = add i64 %259, 4
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %257 to i64*
  store i64 %258, i64* %261, align 8
  %262 = load i64, i64* %PC, align 8
  %263 = load i8, i8* %6, align 1, !tbaa !2432
  %264 = load i8, i8* %9, align 1, !tbaa !2448
  %265 = or i8 %264, %263
  %266 = icmp eq i8 %265, 0
  %.v84 = select i1 %266, i64 145, i64 6
  %267 = add i64 %262, %.v84
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br i1 %266, label %block_400b8a, label %block_400aff

block_400b0d:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %268 = load i64, i64* %RSP, align 8, !tbaa !2428
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 4197150, i64* %270, align 8
  store i64 %269, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %271 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %209)
  %272 = load i64, i64* %RBP, align 8
  %273 = add i64 %272, -44
  %274 = load i32, i32* %EAX, align 4
  %275 = load i64, i64* %PC, align 8
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %273 to i32*
  store i32 %274, i32* %277, align 4
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, 143
  store i64 %279, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400c33:                                     ; preds = %block_400c06, %block_400c1f
  %280 = phi i64 [ %.pre65, %block_400c1f ], [ %472, %block_400c06 ]
  %MEMORY.1 = phi %struct.Memory* [ %408, %block_400c1f ], [ %464, %block_400c06 ]
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -16
  %283 = add i64 %280, 8
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = add i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = icmp eq i32 %285, -1
  %289 = icmp eq i32 %286, 0
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %6, align 1, !tbaa !2432
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #12
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %7, align 1, !tbaa !2446
  %297 = xor i32 %286, %285
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %8, align 1, !tbaa !2447
  %301 = zext i1 %289 to i8
  store i8 %301, i8* %9, align 1, !tbaa !2448
  %302 = lshr i32 %286, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %10, align 1, !tbaa !2449
  %304 = lshr i32 %285, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %302
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %11, align 1, !tbaa !2450
  %309 = add i64 %280, 14
  store i64 %309, i64* %PC, align 8
  store i32 %286, i32* %284, align 4
  %310 = load i64, i64* %PC, align 8
  %311 = load i64, i64* %RBP, align 8
  %312 = add i64 %311, -16
  %313 = add i64 %310, -408
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX, align 8, !tbaa !2428
  %317 = add i64 %311, -12
  %318 = add i64 %310, -405
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = sub i32 %315, %320
  %322 = icmp ult i32 %315, %320
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %6, align 1, !tbaa !2432
  %324 = and i32 %321, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #12
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %7, align 1, !tbaa !2446
  %329 = xor i32 %320, %315
  %330 = xor i32 %329, %321
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %8, align 1, !tbaa !2447
  %334 = icmp eq i32 %321, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %9, align 1, !tbaa !2448
  %336 = lshr i32 %321, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %10, align 1, !tbaa !2449
  %338 = lshr i32 %315, 31
  %339 = lshr i32 %320, 31
  %340 = xor i32 %339, %338
  %341 = xor i32 %336, %338
  %342 = add nuw nsw i32 %341, %340
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %11, align 1, !tbaa !2450
  %345 = icmp ne i8 %337, 0
  %346 = xor i1 %345, %343
  %.v = select i1 %346, i64 -399, i64 5
  %347 = add i64 %310, %.v
  store i64 %347, i64* %PC, align 8, !tbaa !2428
  br i1 %346, label %block_400ab2, label %block_400c46

block_400b8a:                                     ; preds = %block_400ab2
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %348 = load i64, i64* %RBP, align 8
  %349 = add i64 %348, -8
  %350 = add i64 %267, 14
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = add i64 %348, -16
  %354 = add i64 %267, 18
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = mul nsw i64 %357, 12
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = lshr i64 %358, 63
  %360 = add i64 %358, %352
  store i64 %360, i64* %RAX, align 8, !tbaa !2428
  %361 = icmp ult i64 %360, %352
  %362 = icmp ult i64 %360, %358
  %363 = or i1 %361, %362
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %6, align 1, !tbaa !2432
  %365 = trunc i64 %360 to i32
  %366 = and i32 %365, 255
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366) #12
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %7, align 1, !tbaa !2446
  %371 = xor i64 %358, %352
  %372 = xor i64 %371, %360
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %8, align 1, !tbaa !2447
  %376 = icmp eq i64 %360, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %9, align 1, !tbaa !2448
  %378 = lshr i64 %360, 63
  %379 = trunc i64 %378 to i8
  store i8 %379, i8* %10, align 1, !tbaa !2449
  %380 = lshr i64 %352, 63
  %381 = xor i64 %378, %380
  %382 = xor i64 %378, %359
  %383 = add nuw nsw i64 %381, %382
  %384 = icmp eq i64 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %11, align 1, !tbaa !2450
  %386 = add i64 %360, 8
  %387 = add i64 %267, 28
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %391 = add i64 %267, -1290
  %392 = add i64 %267, 35
  %393 = load i64, i64* %RSP, align 8, !tbaa !2428
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %392, i64* %395, align 8
  store i64 %394, i64* %RSP, align 8, !tbaa !2428
  store i64 %391, i64* %PC, align 8, !tbaa !2428
  %396 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %209)
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -64
  %399 = load i32, i32* %EAX, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 3
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %398 to i32*
  store i32 %399, i32* %402, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400bb0.backedge

block_400c1f:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %403 = add i64 %188, -1439
  %404 = add i64 %188, 17
  %405 = load i64, i64* %RSP, align 8, !tbaa !2428
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407, align 8
  store i64 %406, i64* %RSP, align 8, !tbaa !2428
  store i64 %403, i64* %PC, align 8, !tbaa !2428
  %408 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %140)
  %409 = load i64, i64* %RBP, align 8
  %410 = add i64 %409, -80
  %411 = load i32, i32* %EAX, align 4
  %412 = load i64, i64* %PC, align 8
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %410 to i32*
  store i32 %411, i32* %414, align 4
  %.pre65 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400c46:                                     ; preds = %block_400c33
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %415 = add i64 %347, -1478
  %416 = add i64 %347, 17
  %417 = load i64, i64* %RSP, align 8, !tbaa !2428
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %RSP, align 8, !tbaa !2428
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  %420 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %421 = load i64, i64* %RBP, align 8
  %422 = add i64 %421, -84
  %423 = load i32, i32* %EAX, align 4
  %424 = load i64, i64* %PC, align 8
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %422 to i32*
  store i32 %423, i32* %426, align 4
  %427 = load i64, i64* %RSP, align 8
  %428 = load i64, i64* %PC, align 8
  %429 = add i64 %427, 96
  store i64 %429, i64* %RSP, align 8, !tbaa !2428
  %430 = icmp ugt i64 %427, -97
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %6, align 1, !tbaa !2432
  %432 = trunc i64 %429 to i32
  %433 = and i32 %432, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #12
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %7, align 1, !tbaa !2446
  %438 = xor i64 %429, %427
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %8, align 1, !tbaa !2447
  %442 = icmp eq i64 %429, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %9, align 1, !tbaa !2448
  %444 = lshr i64 %429, 63
  %445 = trunc i64 %444 to i8
  store i8 %445, i8* %10, align 1, !tbaa !2449
  %446 = lshr i64 %427, 63
  %447 = xor i64 %444, %446
  %448 = add nuw nsw i64 %447, %444
  %449 = icmp eq i64 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %11, align 1, !tbaa !2450
  %451 = add i64 %428, 5
  store i64 %451, i64* %PC, align 8
  %452 = add i64 %427, 104
  %453 = inttoptr i64 %429 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RBP, align 8, !tbaa !2428
  store i64 %452, i64* %RSP, align 8, !tbaa !2428
  %455 = add i64 %428, 6
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %452 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %PC, align 8, !tbaa !2428
  %458 = add i64 %427, 112
  store i64 %458, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %420

block_400c06:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %459 = add i64 %188, -1414
  %460 = add i64 %188, 17
  %461 = load i64, i64* %RSP, align 8, !tbaa !2428
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %460, i64* %463, align 8
  store i64 %462, i64* %RSP, align 8, !tbaa !2428
  store i64 %459, i64* %PC, align 8, !tbaa !2428
  %464 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %140)
  %465 = load i64, i64* %RBP, align 8
  %466 = add i64 %465, -76
  %467 = load i32, i32* %EAX, align 4
  %468 = load i64, i64* %PC, align 8
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %466 to i32*
  store i32 %467, i32* %470, align 4
  %471 = load i64, i64* %PC, align 8
  %472 = add i64 %471, 25
  store i64 %472, i64* %PC, align 8, !tbaa !2428
  br label %block_400c33

block_400b58.loopexit:                            ; preds = %block_400aff
  br label %block_400b58

block_400b58:                                     ; preds = %block_400b58.loopexit, %3
  %473 = phi i64 [ %1, %3 ], [ 4197208, %block_400b58.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %209, %block_400b58.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %474 = add i64 %473, -1240
  %475 = add i64 %473, 17
  %476 = load i64, i64* %RSP, align 8, !tbaa !2428
  %477 = add i64 %476, -8
  %478 = inttoptr i64 %477 to i64*
  store i64 %475, i64* %478, align 8
  store i64 %477, i64* %RSP, align 8, !tbaa !2428
  store i64 %474, i64* %PC, align 8, !tbaa !2428
  %479 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %480 = load i64, i64* %RBP, align 8
  %481 = add i64 %480, -56
  %482 = load i32, i32* %EAX, align 4
  %483 = load i64, i64* %PC, align 8
  %484 = add i64 %483, 3
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %481 to i32*
  store i32 %482, i32* %485, align 4
  %486 = load i64, i64* %PC, align 8
  %487 = add i64 %486, 68
  store i64 %487, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400b3f:                                     ; preds = %block_400aff
  %488 = tail call %struct.Memory* @sub_400b3f(%struct.State* nonnull %0, i64 4197183, %struct.Memory* %209)
  ret %struct.Memory* %488

block_400b26:                                     ; preds = %block_400aff
  %489 = tail call %struct.Memory* @sub_400b26(%struct.State* nonnull %0, i64 4197158, %struct.Memory* %209)
  ret %struct.Memory* %489

; <label>:490:                                    ; preds = %block_400aff
  %491 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %25, %struct.Memory* %209)
  ret %struct.Memory* %491
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b26(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b26

block_400c1f:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %16 = add i64 %360, -1439
  %17 = add i64 %360, 17
  %18 = load i64, i64* %RSP, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %RSP, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %312)
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -80
  %24 = load i32, i32* %EAX, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400aff:                                     ; preds = %block_400ab2
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -32
  %30 = add i64 %197, 4
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %29 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %RAX, align 8, !tbaa !2428
  %33 = shl i64 %32, 3
  %34 = add i64 %33, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 40)
  %35 = add i64 %197, 12
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %34 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RCX, align 8, !tbaa !2428
  store i64 %37, i64* %PC, align 8, !tbaa !2428
  switch i64 %37, label %512 [
    i64 4197233, label %block_400b71
    i64 4197208, label %block_400b58
    i64 4197133, label %block_400b0d
    i64 4197183, label %block_400b3f
    i64 4197158, label %block_400b26.loopexit
  ]

block_400c33:                                     ; preds = %block_400c06, %block_400c1f
  %38 = phi i64 [ %.pre37, %block_400c1f ], [ %119, %block_400c06 ]
  %MEMORY.0 = phi %struct.Memory* [ %21, %block_400c1f ], [ %111, %block_400c06 ]
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -16
  %41 = add i64 %38, 8
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = icmp eq i32 %43, -1
  %47 = icmp eq i32 %44, 0
  %48 = or i1 %46, %47
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %6, align 1, !tbaa !2432
  %50 = and i32 %44, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #12
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %7, align 1, !tbaa !2446
  %55 = xor i32 %44, %43
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %8, align 1, !tbaa !2447
  %59 = zext i1 %47 to i8
  store i8 %59, i8* %9, align 1, !tbaa !2448
  %60 = lshr i32 %44, 31
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %10, align 1, !tbaa !2449
  %62 = lshr i32 %43, 31
  %63 = xor i32 %60, %62
  %64 = add nuw nsw i32 %63, %60
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %11, align 1, !tbaa !2450
  %67 = add i64 %38, 14
  store i64 %67, i64* %PC, align 8
  store i32 %44, i32* %42, align 4
  %68 = load i64, i64* %PC, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -16
  %71 = add i64 %68, -408
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %69, -12
  %76 = add i64 %68, -405
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %73, %78
  %80 = icmp ult i32 %73, %78
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %6, align 1, !tbaa !2432
  %82 = and i32 %79, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #12
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %7, align 1, !tbaa !2446
  %87 = xor i32 %78, %73
  %88 = xor i32 %87, %79
  %89 = lshr i32 %88, 4
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %8, align 1, !tbaa !2447
  %92 = icmp eq i32 %79, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %9, align 1, !tbaa !2448
  %94 = lshr i32 %79, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %10, align 1, !tbaa !2449
  %96 = lshr i32 %73, 31
  %97 = lshr i32 %78, 31
  %98 = xor i32 %97, %96
  %99 = xor i32 %94, %96
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %11, align 1, !tbaa !2450
  %103 = icmp ne i8 %95, 0
  %104 = xor i1 %103, %101
  %.v = select i1 %104, i64 -399, i64 5
  %105 = add i64 %68, %.v
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  br i1 %104, label %block_400ab2, label %block_400c46

block_400c06:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %106 = add i64 %360, -1414
  %107 = add i64 %360, 17
  %108 = load i64, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %108, -8
  %110 = inttoptr i64 %109 to i64*
  store i64 %107, i64* %110, align 8
  store i64 %109, i64* %RSP, align 8, !tbaa !2428
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  %111 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %312)
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -76
  %114 = load i32, i32* %EAX, align 4
  %115 = load i64, i64* %PC, align 8
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %117, align 4
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 25
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  br label %block_400c33

block_400ab2:                                     ; preds = %block_400c33
  %120 = add i64 %69, -8
  %121 = add i64 %105, 4
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = add i64 %105, 8
  store i64 %124, i64* %PC, align 8
  %125 = load i32, i32* %72, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, 3
  store i64 %127, i64* %RCX, align 8, !tbaa !2428
  %128 = mul nsw i64 %126, 12
  %129 = add i64 %123, %128
  %130 = add i64 %105, 15
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %134 = add i64 %105, -1074
  %135 = add i64 %105, 35
  %136 = load i64, i64* %RSP, align 8, !tbaa !2428
  %137 = add i64 %136, -8
  %138 = inttoptr i64 %137 to i64*
  store i64 %135, i64* %138, align 8
  store i64 %137, i64* %RSP, align 8, !tbaa !2428
  store i64 %134, i64* %PC, align 8, !tbaa !2428
  %139 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %140 = load i64, i64* %RBP, align 8
  %141 = add i64 %140, -8
  %142 = load i64, i64* %PC, align 8
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %141 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  %146 = add i64 %140, -16
  %147 = add i64 %142, 8
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, 3
  store i64 %151, i64* %RDI, align 8, !tbaa !2428
  %152 = mul nsw i64 %150, 12
  %153 = add i64 %152, 8
  %154 = add i64 %153, %145
  %155 = add i64 %142, 16
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RDX, align 8, !tbaa !2428
  store i64 %158, i64* %RCX, align 8, !tbaa !2428
  %159 = add nsw i64 %158, -4
  store i64 %159, i64* %RDI, align 8, !tbaa !2428
  %160 = icmp ult i32 %157, 4
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %6, align 1, !tbaa !2432
  %162 = trunc i64 %159 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #12
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %7, align 1, !tbaa !2446
  %168 = xor i64 %159, %158
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %8, align 1, !tbaa !2447
  %172 = icmp eq i64 %159, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %9, align 1, !tbaa !2448
  %174 = lshr i64 %159, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %176 = add i64 %140, -20
  %177 = load i32, i32* %EAX, align 4
  %178 = add i64 %142, 28
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %176 to i32*
  store i32 %177, i32* %179, align 4
  %180 = load i64, i64* %RBP, align 8
  %181 = add i64 %180, -32
  %182 = load i64, i64* %RCX, align 8
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %181 to i64*
  store i64 %182, i64* %185, align 8
  %186 = load i64, i64* %RBP, align 8
  %187 = add i64 %186, -40
  %188 = load i64, i64* %RDI, align 8
  %189 = load i64, i64* %PC, align 8
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191, align 8
  %192 = load i64, i64* %PC, align 8
  %193 = load i8, i8* %6, align 1, !tbaa !2432
  %194 = load i8, i8* %9, align 1, !tbaa !2448
  %195 = or i8 %194, %193
  %196 = icmp eq i8 %195, 0
  %.v48 = select i1 %196, i64 145, i64 6
  %197 = add i64 %192, %.v48
  store i64 %197, i64* %PC, align 8, !tbaa !2428
  br i1 %196, label %block_400b8a, label %block_400aff

block_400b71:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %198 = load i64, i64* %RSP, align 8, !tbaa !2428
  %199 = add i64 %198, -8
  %200 = inttoptr i64 %199 to i64*
  store i64 4197250, i64* %200, align 8
  store i64 %199, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %201 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %139)
  %202 = load i64, i64* %RBP, align 8
  %203 = add i64 %202, -60
  %204 = load i32, i32* %EAX, align 4
  %205 = load i64, i64* %PC, align 8
  %206 = add i64 %205, 3
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %203 to i32*
  store i32 %204, i32* %207, align 4
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 43
  store i64 %209, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400bb0.backedge:                            ; preds = %block_400b71, %block_400b0d, %block_400b8a, %block_400b3f, %block_400b58
  %.be = phi i64 [ %.pre.pre, %block_400b8a ], [ %440, %block_400b3f ], [ %373, %block_400b0d ], [ %511, %block_400b58 ], [ %209, %block_400b71 ]
  %MEMORY.1.be = phi %struct.Memory* [ %422, %block_400b8a ], [ %432, %block_400b3f ], [ %365, %block_400b0d ], [ %503, %block_400b58 ], [ %201, %block_400b71 ]
  br label %block_400bb0

block_400bb0:                                     ; preds = %block_400bb0.backedge, %block_400b26
  %210 = phi i64 [ %455, %block_400b26 ], [ %.be, %block_400bb0.backedge ]
  %MEMORY.1 = phi %struct.Memory* [ %447, %block_400b26 ], [ %MEMORY.1.be, %block_400bb0.backedge ]
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -8
  %213 = add i64 %210, 4
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = add i64 %211, -16
  %217 = add i64 %210, 8
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %220, 12
  store i64 %221, i64* %RCX, align 8, !tbaa !2428
  %222 = lshr i64 %221, 63
  %223 = add i64 %221, %215
  store i64 %223, i64* %RAX, align 8, !tbaa !2428
  %224 = icmp ult i64 %223, %215
  %225 = icmp ult i64 %223, %221
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %6, align 1, !tbaa !2432
  %228 = trunc i64 %223 to i32
  %229 = and i32 %228, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229) #12
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %7, align 1, !tbaa !2446
  %234 = xor i64 %221, %215
  %235 = xor i64 %234, %223
  %236 = lshr i64 %235, 4
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %8, align 1, !tbaa !2447
  %239 = icmp eq i64 %223, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %9, align 1, !tbaa !2448
  %241 = lshr i64 %223, 63
  %242 = trunc i64 %241 to i8
  store i8 %242, i8* %10, align 1, !tbaa !2449
  %243 = lshr i64 %215, 63
  %244 = xor i64 %241, %243
  %245 = xor i64 %241, %222
  %246 = add nuw nsw i64 %244, %245
  %247 = icmp eq i64 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %11, align 1, !tbaa !2450
  %249 = add i64 %223, 4
  %250 = add i64 %210, 18
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RSI, align 8, !tbaa !2428
  %254 = add i64 %210, 22
  store i64 %254, i64* %PC, align 8
  %255 = load i64, i64* %214, align 8
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = add i64 %210, 26
  store i64 %256, i64* %PC, align 8
  %257 = load i32, i32* %218, align 4
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, 12
  store i64 %259, i64* %RCX, align 8, !tbaa !2428
  %260 = lshr i64 %259, 63
  %261 = add i64 %259, %255
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = icmp ult i64 %261, %255
  %263 = icmp ult i64 %261, %259
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %6, align 1, !tbaa !2432
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #12
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %7, align 1, !tbaa !2446
  %272 = xor i64 %259, %255
  %273 = xor i64 %272, %261
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %8, align 1, !tbaa !2447
  %277 = icmp eq i64 %261, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %9, align 1, !tbaa !2448
  %279 = lshr i64 %261, 63
  %280 = trunc i64 %279 to i8
  store i8 %280, i8* %10, align 1, !tbaa !2449
  %281 = lshr i64 %255, 63
  %282 = xor i64 %279, %281
  %283 = xor i64 %279, %260
  %284 = add nuw nsw i64 %282, %283
  %285 = icmp eq i64 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %11, align 1, !tbaa !2450
  store i64 %261, i64* %RDI, align 8, !tbaa !2428
  %287 = load i64, i64* %RBP, align 8
  %288 = add i64 %287, -68
  %289 = add i64 %210, 39
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 %252, i32* %290, align 4
  %291 = load i64, i64* %PC, align 8
  %292 = add i64 %291, -487
  %293 = add i64 %291, 5
  %294 = load i64, i64* %RSP, align 8, !tbaa !2428
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %RSP, align 8, !tbaa !2428
  store i64 %292, i64* %PC, align 8, !tbaa !2428
  %297 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %292, %struct.Memory* %MEMORY.1)
  %298 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -68
  %301 = add i64 %298, 13
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RSI, align 8, !tbaa !2428
  %305 = load i32, i32* %EAX, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %307 = add i64 %298, -1372
  %308 = add i64 %298, 22
  %309 = load i64, i64* %RSP, align 8, !tbaa !2428
  %310 = add i64 %309, -8
  %311 = inttoptr i64 %310 to i64*
  store i64 %308, i64* %311, align 8
  store i64 %310, i64* %RSP, align 8, !tbaa !2428
  store i64 %307, i64* %PC, align 8, !tbaa !2428
  %312 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -16
  %315 = load i64, i64* %PC, align 8
  %316 = add i64 %315, 3
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RDX, align 8, !tbaa !2428
  %320 = add i64 %313, -12
  %321 = add i64 %315, 6
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = add i32 %323, -1
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RSI, align 8, !tbaa !2428
  %326 = lshr i32 %324, 31
  %327 = sub i32 %318, %324
  %328 = icmp ult i32 %318, %324
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %6, align 1, !tbaa !2432
  %330 = and i32 %327, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #12
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %7, align 1, !tbaa !2446
  %335 = xor i32 %324, %318
  %336 = xor i32 %335, %327
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %8, align 1, !tbaa !2447
  %340 = icmp eq i32 %327, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %9, align 1, !tbaa !2448
  %342 = lshr i32 %327, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %10, align 1, !tbaa !2449
  %344 = lshr i32 %318, 31
  %345 = xor i32 %326, %344
  %346 = xor i32 %342, %344
  %347 = add nuw nsw i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %11, align 1, !tbaa !2450
  %350 = add i64 %313, -72
  %351 = load i32, i32* %EAX, align 4
  %352 = add i64 %315, 14
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %350 to i32*
  store i32 %351, i32* %353, align 4
  %354 = load i64, i64* %PC, align 8
  %355 = load i8, i8* %10, align 1, !tbaa !2449
  %356 = icmp ne i8 %355, 0
  %357 = load i8, i8* %11, align 1, !tbaa !2450
  %358 = icmp ne i8 %357, 0
  %359 = xor i1 %356, %358
  %.v47 = select i1 %359, i64 6, i64 31
  %360 = add i64 %354, %.v47
  %361 = add i64 %360, 10
  store i64 %361, i64* %PC, align 8
  br i1 %359, label %block_400c06, label %block_400c1f

block_400b0d:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %362 = load i64, i64* %RSP, align 8, !tbaa !2428
  %363 = add i64 %362, -8
  %364 = inttoptr i64 %363 to i64*
  store i64 4197150, i64* %364, align 8
  store i64 %363, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %365 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %139)
  %366 = load i64, i64* %RBP, align 8
  %367 = add i64 %366, -44
  %368 = load i32, i32* %EAX, align 4
  %369 = load i64, i64* %PC, align 8
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %367 to i32*
  store i32 %368, i32* %371, align 4
  %372 = load i64, i64* %PC, align 8
  %373 = add i64 %372, 143
  store i64 %373, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400b8a:                                     ; preds = %block_400ab2
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -8
  %376 = add i64 %197, 14
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RAX, align 8, !tbaa !2428
  %379 = add i64 %374, -16
  %380 = add i64 %197, 18
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = mul nsw i64 %383, 12
  store i64 %384, i64* %RCX, align 8, !tbaa !2428
  %385 = lshr i64 %384, 63
  %386 = add i64 %384, %378
  store i64 %386, i64* %RAX, align 8, !tbaa !2428
  %387 = icmp ult i64 %386, %378
  %388 = icmp ult i64 %386, %384
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %6, align 1, !tbaa !2432
  %391 = trunc i64 %386 to i32
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #12
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %7, align 1, !tbaa !2446
  %397 = xor i64 %384, %378
  %398 = xor i64 %397, %386
  %399 = lshr i64 %398, 4
  %400 = trunc i64 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %8, align 1, !tbaa !2447
  %402 = icmp eq i64 %386, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %9, align 1, !tbaa !2448
  %404 = lshr i64 %386, 63
  %405 = trunc i64 %404 to i8
  store i8 %405, i8* %10, align 1, !tbaa !2449
  %406 = lshr i64 %378, 63
  %407 = xor i64 %404, %406
  %408 = xor i64 %404, %385
  %409 = add nuw nsw i64 %407, %408
  %410 = icmp eq i64 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %11, align 1, !tbaa !2450
  %412 = add i64 %386, 8
  %413 = add i64 %197, 28
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %417 = add i64 %197, -1290
  %418 = add i64 %197, 35
  %419 = load i64, i64* %RSP, align 8, !tbaa !2428
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %418, i64* %421, align 8
  store i64 %420, i64* %RSP, align 8, !tbaa !2428
  store i64 %417, i64* %PC, align 8, !tbaa !2428
  %422 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %139)
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -64
  %425 = load i32, i32* %EAX, align 4
  %426 = load i64, i64* %PC, align 8
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %424 to i32*
  store i32 %425, i32* %428, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400bb0.backedge

block_400b3f:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %429 = load i64, i64* %RSP, align 8, !tbaa !2428
  %430 = add i64 %429, -8
  %431 = inttoptr i64 %430 to i64*
  store i64 4197200, i64* %431, align 8
  store i64 %430, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %432 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %139)
  %433 = load i64, i64* %RBP, align 8
  %434 = add i64 %433, -52
  %435 = load i32, i32* %EAX, align 4
  %436 = load i64, i64* %PC, align 8
  %437 = add i64 %436, 3
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %434 to i32*
  store i32 %435, i32* %438, align 4
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 93
  store i64 %440, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400b26.loopexit:                            ; preds = %block_400aff
  br label %block_400b26

block_400b26:                                     ; preds = %block_400b26.loopexit, %3
  %441 = phi i64 [ %1, %3 ], [ 4197158, %block_400b26.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %139, %block_400b26.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %442 = add i64 %441, -1190
  %443 = add i64 %441, 17
  %444 = load i64, i64* %RSP, align 8, !tbaa !2428
  %445 = add i64 %444, -8
  %446 = inttoptr i64 %445 to i64*
  store i64 %443, i64* %446, align 8
  store i64 %445, i64* %RSP, align 8, !tbaa !2428
  store i64 %442, i64* %PC, align 8, !tbaa !2428
  %447 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %448 = load i64, i64* %RBP, align 8
  %449 = add i64 %448, -48
  %450 = load i32, i32* %EAX, align 4
  %451 = load i64, i64* %PC, align 8
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %449 to i32*
  store i32 %450, i32* %453, align 4
  %454 = load i64, i64* %PC, align 8
  %455 = add i64 %454, 118
  store i64 %455, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400c46:                                     ; preds = %block_400c33
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %456 = add i64 %105, -1478
  %457 = add i64 %105, 17
  %458 = load i64, i64* %RSP, align 8, !tbaa !2428
  %459 = add i64 %458, -8
  %460 = inttoptr i64 %459 to i64*
  store i64 %457, i64* %460, align 8
  store i64 %459, i64* %RSP, align 8, !tbaa !2428
  store i64 %456, i64* %PC, align 8, !tbaa !2428
  %461 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %462 = load i64, i64* %RBP, align 8
  %463 = add i64 %462, -84
  %464 = load i32, i32* %EAX, align 4
  %465 = load i64, i64* %PC, align 8
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %467, align 4
  %468 = load i64, i64* %RSP, align 8
  %469 = load i64, i64* %PC, align 8
  %470 = add i64 %468, 96
  store i64 %470, i64* %RSP, align 8, !tbaa !2428
  %471 = icmp ugt i64 %468, -97
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %6, align 1, !tbaa !2432
  %473 = trunc i64 %470 to i32
  %474 = and i32 %473, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474) #12
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %7, align 1, !tbaa !2446
  %479 = xor i64 %470, %468
  %480 = lshr i64 %479, 4
  %481 = trunc i64 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %8, align 1, !tbaa !2447
  %483 = icmp eq i64 %470, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %9, align 1, !tbaa !2448
  %485 = lshr i64 %470, 63
  %486 = trunc i64 %485 to i8
  store i8 %486, i8* %10, align 1, !tbaa !2449
  %487 = lshr i64 %468, 63
  %488 = xor i64 %485, %487
  %489 = add nuw nsw i64 %488, %485
  %490 = icmp eq i64 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %11, align 1, !tbaa !2450
  %492 = add i64 %469, 5
  store i64 %492, i64* %PC, align 8
  %493 = add i64 %468, 104
  %494 = inttoptr i64 %470 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %RBP, align 8, !tbaa !2428
  store i64 %493, i64* %RSP, align 8, !tbaa !2428
  %496 = add i64 %469, 6
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %493 to i64*
  %498 = load i64, i64* %497, align 8
  store i64 %498, i64* %PC, align 8, !tbaa !2428
  %499 = add i64 %468, 112
  store i64 %499, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %461

block_400b58:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %500 = load i64, i64* %RSP, align 8, !tbaa !2428
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 4197225, i64* %502, align 8
  store i64 %501, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %503 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %139)
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -56
  %506 = load i32, i32* %EAX, align 4
  %507 = load i64, i64* %PC, align 8
  %508 = add i64 %507, 3
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %509, align 4
  %510 = load i64, i64* %PC, align 8
  %511 = add i64 %510, 68
  store i64 %511, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

; <label>:512:                                    ; preds = %block_400aff
  %513 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %37, %struct.Memory* %139)
  ret %struct.Memory* %513
}

; Function Attrs: noinline
define %struct.Memory* @sub_401340___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401340:
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
  store i64 ptrtoint (%seg_601de0__init_array_type* @seg_601de0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_601de0__init_array_type* @seg_601de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
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
  %67 = tail call %struct.Memory* @sub_400630__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #12
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
  br i1 %76, label %block_401396, label %block_401376

block_401396.loopexit:                            ; preds = %block_401380
  br label %block_401396

block_401396:                                     ; preds = %block_401396.loopexit, %block_401340
  %81 = phi i64 [ %80, %block_401340 ], [ %179, %block_401396.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401340 ], [ %149, %block_401396.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #12
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

block_401376:                                     ; preds = %block_401340
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401380

block_401380:                                     ; preds = %block_401380, %block_401376
  %134 = phi i64 [ 0, %block_401376 ], [ %152, %block_401380 ]
  %135 = phi i64 [ %133, %block_401376 ], [ %179, %block_401380 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401376 ], [ %149, %block_401380 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #12
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
  br i1 %169, label %block_401396.loopexit, label %block_401380
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007d0_newWorkList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4007d0:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12
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
  %55 = tail call fastcc %struct.Memory* @ext_400690_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #12
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
  br i1 %74, label %block_400804, label %block_4007fa

block_400804:                                     ; preds = %block_4007d0
  %EAX = bitcast %union.anon* %3 to i32*
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 80), i64* %RSI, align 8, !tbaa !2428
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
  %98 = tail call fastcc %struct.Memory* @ext_4006d0_exit(%struct.State* nonnull %0, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %PC, align 8
  %101 = tail call %struct.Memory* @sub_400830_newCombList(%struct.State* nonnull %0, i64 %100, %struct.Memory* %98)
  ret %struct.Memory* %101

block_4007fa:                                     ; preds = %block_4007d0
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
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_400b0d(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b0d

block_400c1f:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %16 = add i64 %378, -1439
  %17 = add i64 %378, 17
  %18 = load i64, i64* %RSP, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %RSP, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %330)
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -80
  %24 = load i32, i32* %EAX, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400c46:                                     ; preds = %block_400c33
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %28 = add i64 %149, -1478
  %29 = add i64 %149, 17
  %30 = load i64, i64* %RSP, align 8, !tbaa !2428
  %31 = add i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  store i64 %29, i64* %32, align 8
  store i64 %31, i64* %RSP, align 8, !tbaa !2428
  store i64 %28, i64* %PC, align 8, !tbaa !2428
  %33 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -84
  %36 = load i32, i32* %EAX, align 4
  %37 = load i64, i64* %PC, align 8
  %38 = add i64 %37, 3
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %35 to i32*
  store i32 %36, i32* %39, align 4
  %40 = load i64, i64* %RSP, align 8
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %40, 96
  store i64 %42, i64* %RSP, align 8, !tbaa !2428
  %43 = icmp ugt i64 %40, -97
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %6, align 1, !tbaa !2432
  %45 = trunc i64 %42 to i32
  %46 = and i32 %45, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #12
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  store i8 %50, i8* %7, align 1, !tbaa !2446
  %51 = xor i64 %42, %40
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, i8* %8, align 1, !tbaa !2447
  %55 = icmp eq i64 %42, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %9, align 1, !tbaa !2448
  %57 = lshr i64 %42, 63
  %58 = trunc i64 %57 to i8
  store i8 %58, i8* %10, align 1, !tbaa !2449
  %59 = lshr i64 %40, 63
  %60 = xor i64 %57, %59
  %61 = add nuw nsw i64 %60, %57
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %11, align 1, !tbaa !2450
  %64 = add i64 %41, 5
  store i64 %64, i64* %PC, align 8
  %65 = add i64 %40, 104
  %66 = inttoptr i64 %42 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %RBP, align 8, !tbaa !2428
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  %68 = add i64 %41, 6
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %65 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  %71 = add i64 %40, 112
  store i64 %71, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %33

block_400aff:                                     ; preds = %block_400ab2
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -32
  %74 = add i64 %227, 4
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RAX, align 8, !tbaa !2428
  %77 = shl i64 %76, 3
  %78 = add i64 %77, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 40)
  %79 = add i64 %227, 12
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RCX, align 8, !tbaa !2428
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  switch i64 %81, label %468 [
    i64 4197233, label %block_400b71
    i64 4197208, label %block_400b58
    i64 4197133, label %block_400b0d
    i64 4197183, label %block_400b3f
    i64 4197158, label %block_400b26
  ]

block_400c33:                                     ; preds = %block_400c06, %block_400c1f
  %82 = phi i64 [ %.pre41, %block_400c1f ], [ %463, %block_400c06 ]
  %MEMORY.0 = phi %struct.Memory* [ %21, %block_400c1f ], [ %455, %block_400c06 ]
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -16
  %85 = add i64 %82, 8
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = icmp eq i32 %87, -1
  %91 = icmp eq i32 %88, 0
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %6, align 1, !tbaa !2432
  %94 = and i32 %88, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #12
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %7, align 1, !tbaa !2446
  %99 = xor i32 %88, %87
  %100 = lshr i32 %99, 4
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %8, align 1, !tbaa !2447
  %103 = zext i1 %91 to i8
  store i8 %103, i8* %9, align 1, !tbaa !2448
  %104 = lshr i32 %88, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %10, align 1, !tbaa !2449
  %106 = lshr i32 %87, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %104
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %11, align 1, !tbaa !2450
  %111 = add i64 %82, 14
  store i64 %111, i64* %PC, align 8
  store i32 %88, i32* %86, align 4
  %112 = load i64, i64* %PC, align 8
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -16
  %115 = add i64 %112, -408
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = add i64 %113, -12
  %120 = add i64 %112, -405
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %117, %122
  %124 = icmp ult i32 %117, %122
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %6, align 1, !tbaa !2432
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #12
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %7, align 1, !tbaa !2446
  %131 = xor i32 %122, %117
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %8, align 1, !tbaa !2447
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %9, align 1, !tbaa !2448
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %10, align 1, !tbaa !2449
  %140 = lshr i32 %117, 31
  %141 = lshr i32 %122, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %138, %140
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %11, align 1, !tbaa !2450
  %147 = icmp ne i8 %139, 0
  %148 = xor i1 %147, %145
  %.v = select i1 %148, i64 -399, i64 5
  %149 = add i64 %112, %.v
  store i64 %149, i64* %PC, align 8, !tbaa !2428
  br i1 %148, label %block_400ab2, label %block_400c46

block_400ab2:                                     ; preds = %block_400c33
  %150 = add i64 %113, -8
  %151 = add i64 %149, 4
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = add i64 %149, 8
  store i64 %154, i64* %PC, align 8
  %155 = load i32, i32* %116, align 4
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %156, 3
  store i64 %157, i64* %RCX, align 8, !tbaa !2428
  %158 = mul nsw i64 %156, 12
  %159 = add i64 %153, %158
  %160 = add i64 %149, 15
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %164 = add i64 %149, -1074
  %165 = add i64 %149, 35
  %166 = load i64, i64* %RSP, align 8, !tbaa !2428
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %165, i64* %168, align 8
  store i64 %167, i64* %RSP, align 8, !tbaa !2428
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  %169 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -8
  %172 = load i64, i64* %PC, align 8
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %171 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RCX, align 8, !tbaa !2428
  %176 = add i64 %170, -16
  %177 = add i64 %172, 8
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = mul nsw i64 %180, 3
  store i64 %181, i64* %RDI, align 8, !tbaa !2428
  %182 = mul nsw i64 %180, 12
  %183 = add i64 %182, 8
  %184 = add i64 %183, %175
  %185 = add i64 %172, 16
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RDX, align 8, !tbaa !2428
  store i64 %188, i64* %RCX, align 8, !tbaa !2428
  %189 = add nsw i64 %188, -4
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  %190 = icmp ult i32 %187, 4
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %6, align 1, !tbaa !2432
  %192 = trunc i64 %189 to i32
  %193 = and i32 %192, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193) #12
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %7, align 1, !tbaa !2446
  %198 = xor i64 %189, %188
  %199 = lshr i64 %198, 4
  %200 = trunc i64 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %8, align 1, !tbaa !2447
  %202 = icmp eq i64 %189, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %9, align 1, !tbaa !2448
  %204 = lshr i64 %189, 63
  %205 = trunc i64 %204 to i8
  store i8 %205, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %206 = add i64 %170, -20
  %207 = load i32, i32* %EAX, align 4
  %208 = add i64 %172, 28
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %209, align 4
  %210 = load i64, i64* %RBP, align 8
  %211 = add i64 %210, -32
  %212 = load i64, i64* %RCX, align 8
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %211 to i64*
  store i64 %212, i64* %215, align 8
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -40
  %218 = load i64, i64* %RDI, align 8
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, 4
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %217 to i64*
  store i64 %218, i64* %221, align 8
  %222 = load i64, i64* %PC, align 8
  %223 = load i8, i8* %6, align 1, !tbaa !2432
  %224 = load i8, i8* %9, align 1, !tbaa !2448
  %225 = or i8 %224, %223
  %226 = icmp eq i8 %225, 0
  %.v56 = select i1 %226, i64 145, i64 6
  %227 = add i64 %222, %.v56
  store i64 %227, i64* %PC, align 8, !tbaa !2428
  br i1 %226, label %block_400b8a, label %block_400aff

block_400bb0:                                     ; preds = %block_400b8a, %block_400b0d
  %228 = phi i64 [ %394, %block_400b0d ], [ %.pre, %block_400b8a ]
  %MEMORY.1 = phi %struct.Memory* [ %386, %block_400b0d ], [ %443, %block_400b8a ]
  %229 = load i64, i64* %RBP, align 8
  %230 = add i64 %229, -8
  %231 = add i64 %228, 4
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  %234 = add i64 %229, -16
  %235 = add i64 %228, 8
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = mul nsw i64 %238, 12
  store i64 %239, i64* %RCX, align 8, !tbaa !2428
  %240 = lshr i64 %239, 63
  %241 = add i64 %239, %233
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = icmp ult i64 %241, %233
  %243 = icmp ult i64 %241, %239
  %244 = or i1 %242, %243
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %6, align 1, !tbaa !2432
  %246 = trunc i64 %241 to i32
  %247 = and i32 %246, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247) #12
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %7, align 1, !tbaa !2446
  %252 = xor i64 %239, %233
  %253 = xor i64 %252, %241
  %254 = lshr i64 %253, 4
  %255 = trunc i64 %254 to i8
  %256 = and i8 %255, 1
  store i8 %256, i8* %8, align 1, !tbaa !2447
  %257 = icmp eq i64 %241, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %9, align 1, !tbaa !2448
  %259 = lshr i64 %241, 63
  %260 = trunc i64 %259 to i8
  store i8 %260, i8* %10, align 1, !tbaa !2449
  %261 = lshr i64 %233, 63
  %262 = xor i64 %259, %261
  %263 = xor i64 %259, %240
  %264 = add nuw nsw i64 %262, %263
  %265 = icmp eq i64 %264, 2
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %11, align 1, !tbaa !2450
  %267 = add i64 %241, 4
  %268 = add i64 %228, 18
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RSI, align 8, !tbaa !2428
  %272 = add i64 %228, 22
  store i64 %272, i64* %PC, align 8
  %273 = load i64, i64* %232, align 8
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = add i64 %228, 26
  store i64 %274, i64* %PC, align 8
  %275 = load i32, i32* %236, align 4
  %276 = sext i32 %275 to i64
  %277 = mul nsw i64 %276, 12
  store i64 %277, i64* %RCX, align 8, !tbaa !2428
  %278 = lshr i64 %277, 63
  %279 = add i64 %277, %273
  store i64 %279, i64* %RAX, align 8, !tbaa !2428
  %280 = icmp ult i64 %279, %273
  %281 = icmp ult i64 %279, %277
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %6, align 1, !tbaa !2432
  %284 = trunc i64 %279 to i32
  %285 = and i32 %284, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285) #12
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %7, align 1, !tbaa !2446
  %290 = xor i64 %277, %273
  %291 = xor i64 %290, %279
  %292 = lshr i64 %291, 4
  %293 = trunc i64 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %8, align 1, !tbaa !2447
  %295 = icmp eq i64 %279, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %9, align 1, !tbaa !2448
  %297 = lshr i64 %279, 63
  %298 = trunc i64 %297 to i8
  store i8 %298, i8* %10, align 1, !tbaa !2449
  %299 = lshr i64 %273, 63
  %300 = xor i64 %297, %299
  %301 = xor i64 %297, %278
  %302 = add nuw nsw i64 %300, %301
  %303 = icmp eq i64 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %11, align 1, !tbaa !2450
  store i64 %279, i64* %RDI, align 8, !tbaa !2428
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -68
  %307 = add i64 %228, 39
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  store i32 %270, i32* %308, align 4
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, -487
  %311 = add i64 %309, 5
  %312 = load i64, i64* %RSP, align 8, !tbaa !2428
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %311, i64* %314, align 8
  store i64 %313, i64* %RSP, align 8, !tbaa !2428
  store i64 %310, i64* %PC, align 8, !tbaa !2428
  %315 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %310, %struct.Memory* %MEMORY.1)
  %316 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %317 = load i64, i64* %RBP, align 8
  %318 = add i64 %317, -68
  %319 = add i64 %316, 13
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RSI, align 8, !tbaa !2428
  %323 = load i32, i32* %EAX, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %325 = add i64 %316, -1372
  %326 = add i64 %316, 22
  %327 = load i64, i64* %RSP, align 8, !tbaa !2428
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %326, i64* %329, align 8
  store i64 %328, i64* %RSP, align 8, !tbaa !2428
  store i64 %325, i64* %PC, align 8, !tbaa !2428
  %330 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -16
  %333 = load i64, i64* %PC, align 8
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %332 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RDX, align 8, !tbaa !2428
  %338 = add i64 %331, -12
  %339 = add i64 %333, 6
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = add i32 %341, -1
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RSI, align 8, !tbaa !2428
  %344 = lshr i32 %342, 31
  %345 = sub i32 %336, %342
  %346 = icmp ult i32 %336, %342
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %6, align 1, !tbaa !2432
  %348 = and i32 %345, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #12
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %7, align 1, !tbaa !2446
  %353 = xor i32 %342, %336
  %354 = xor i32 %353, %345
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %8, align 1, !tbaa !2447
  %358 = icmp eq i32 %345, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %9, align 1, !tbaa !2448
  %360 = lshr i32 %345, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %10, align 1, !tbaa !2449
  %362 = lshr i32 %336, 31
  %363 = xor i32 %344, %362
  %364 = xor i32 %360, %362
  %365 = add nuw nsw i32 %364, %363
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %11, align 1, !tbaa !2450
  %368 = add i64 %331, -72
  %369 = load i32, i32* %EAX, align 4
  %370 = add i64 %333, 14
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %371, align 4
  %372 = load i64, i64* %PC, align 8
  %373 = load i8, i8* %10, align 1, !tbaa !2449
  %374 = icmp ne i8 %373, 0
  %375 = load i8, i8* %11, align 1, !tbaa !2450
  %376 = icmp ne i8 %375, 0
  %377 = xor i1 %374, %376
  %.v55 = select i1 %377, i64 6, i64 31
  %378 = add i64 %372, %.v55
  %379 = add i64 %378, 10
  store i64 %379, i64* %PC, align 8
  br i1 %377, label %block_400c06, label %block_400c1f

block_400b0d:                                     ; preds = %block_400aff, %3
  %380 = phi i64 [ %1, %3 ], [ 4197133, %block_400aff ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %169, %block_400aff ]
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %381 = add i64 %380, -1165
  %382 = add i64 %380, 17
  %383 = load i64, i64* %RSP, align 8, !tbaa !2428
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %382, i64* %385, align 8
  store i64 %384, i64* %RSP, align 8, !tbaa !2428
  store i64 %381, i64* %PC, align 8, !tbaa !2428
  %386 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %387 = load i64, i64* %RBP, align 8
  %388 = add i64 %387, -44
  %389 = load i32, i32* %EAX, align 4
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %388 to i32*
  store i32 %389, i32* %392, align 4
  %393 = load i64, i64* %PC, align 8
  %394 = add i64 %393, 143
  store i64 %394, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400b8a:                                     ; preds = %block_400ab2
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -8
  %397 = add i64 %227, 14
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = add i64 %395, -16
  %401 = add i64 %227, 18
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = mul nsw i64 %404, 12
  store i64 %405, i64* %RCX, align 8, !tbaa !2428
  %406 = lshr i64 %405, 63
  %407 = add i64 %405, %399
  store i64 %407, i64* %RAX, align 8, !tbaa !2428
  %408 = icmp ult i64 %407, %399
  %409 = icmp ult i64 %407, %405
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %6, align 1, !tbaa !2432
  %412 = trunc i64 %407 to i32
  %413 = and i32 %412, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #12
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %7, align 1, !tbaa !2446
  %418 = xor i64 %405, %399
  %419 = xor i64 %418, %407
  %420 = lshr i64 %419, 4
  %421 = trunc i64 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %8, align 1, !tbaa !2447
  %423 = icmp eq i64 %407, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %9, align 1, !tbaa !2448
  %425 = lshr i64 %407, 63
  %426 = trunc i64 %425 to i8
  store i8 %426, i8* %10, align 1, !tbaa !2449
  %427 = lshr i64 %399, 63
  %428 = xor i64 %425, %427
  %429 = xor i64 %425, %406
  %430 = add nuw nsw i64 %428, %429
  %431 = icmp eq i64 %430, 2
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %11, align 1, !tbaa !2450
  %433 = add i64 %407, 8
  %434 = add i64 %227, 28
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %438 = add i64 %227, -1290
  %439 = add i64 %227, 35
  %440 = load i64, i64* %RSP, align 8, !tbaa !2428
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %439, i64* %442, align 8
  store i64 %441, i64* %RSP, align 8, !tbaa !2428
  store i64 %438, i64* %PC, align 8, !tbaa !2428
  %443 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %169)
  %444 = load i64, i64* %RBP, align 8
  %445 = add i64 %444, -64
  %446 = load i32, i32* %EAX, align 4
  %447 = load i64, i64* %PC, align 8
  %448 = add i64 %447, 3
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %445 to i32*
  store i32 %446, i32* %449, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400bb0

block_400c06:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %450 = add i64 %378, -1414
  %451 = add i64 %378, 17
  %452 = load i64, i64* %RSP, align 8, !tbaa !2428
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %RSP, align 8, !tbaa !2428
  store i64 %450, i64* %PC, align 8, !tbaa !2428
  %455 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %330)
  %456 = load i64, i64* %RBP, align 8
  %457 = add i64 %456, -76
  %458 = load i32, i32* %EAX, align 4
  %459 = load i64, i64* %PC, align 8
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %457 to i32*
  store i32 %458, i32* %461, align 4
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, 25
  store i64 %463, i64* %PC, align 8, !tbaa !2428
  br label %block_400c33

block_400b3f:                                     ; preds = %block_400aff
  %464 = tail call %struct.Memory* @sub_400b3f(%struct.State* nonnull %0, i64 4197183, %struct.Memory* %169)
  ret %struct.Memory* %464

block_400b26:                                     ; preds = %block_400aff
  %465 = tail call %struct.Memory* @sub_400b26(%struct.State* nonnull %0, i64 4197158, %struct.Memory* %169)
  ret %struct.Memory* %465

block_400b58:                                     ; preds = %block_400aff
  %466 = tail call %struct.Memory* @sub_400b58(%struct.State* nonnull %0, i64 4197208, %struct.Memory* %169)
  ret %struct.Memory* %466

block_400b71:                                     ; preds = %block_400aff
  %467 = tail call %struct.Memory* @sub_400b71(%struct.State* nonnull %0, i64 4197233, %struct.Memory* %169)
  ret %struct.Memory* %467

; <label>:468:                                    ; preds = %block_400aff
  %469 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %81, %struct.Memory* %169)
  ret %struct.Memory* %469
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400930_saveSolution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400930:
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
  br label %block_400946

block_400946:                                     ; preds = %block_400952, %block_400930
  %38 = phi i64 [ %395, %block_400952 ], [ %.pre, %block_400930 ]
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
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #12
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
  br i1 %74, label %block_400952, label %block_4009ca

block_4009ca:                                     ; preds = %block_400946
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
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91) #12
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

block_400952:                                     ; preds = %block_400946
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
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #12
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
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178) #12
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
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #12
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
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #12
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
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301) #12
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
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341) #12
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
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376) #12
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
  br label %block_400946
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a61(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400a61:
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

; <label>:29:                                     ; preds = %block_400a61
  %EAX = bitcast %union.anon* %3 to i32*
  %30 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %19, %struct.Memory* %2) #13
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i32, i32* %EAX, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:31:                                     ; preds = %block_400a61
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
define %struct.Memory* @sub_400a21(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400a21:
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
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_400cf0_recSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400cf0:
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
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #12
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
  br i1 %37, label %block_400d11, label %block_400d0c

block_400ffb:                                     ; preds = %block_400e13
  %42 = add i64 %1162, -12
  %43 = add i64 %1202, 8
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RAX, align 8, !tbaa !2428
  %48 = icmp eq i32 %45, -1
  %49 = icmp eq i32 %46, 0
  %50 = or i1 %48, %49
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %14, align 1, !tbaa !2432
  %52 = and i32 %46, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #12
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %15, align 1, !tbaa !2446
  %57 = xor i32 %46, %45
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, i8* %16, align 1, !tbaa !2447
  %61 = zext i1 %49 to i8
  store i8 %61, i8* %17, align 1, !tbaa !2448
  %62 = lshr i32 %46, 31
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %18, align 1, !tbaa !2449
  %64 = lshr i32 %45, 31
  %65 = xor i32 %62, %64
  %66 = add nuw nsw i32 %65, %62
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %19, align 1, !tbaa !2450
  %69 = add i64 %1202, 14
  store i64 %69, i64* %PC, align 8
  store i32 %46, i32* %44, align 4
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, -519
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  br label %block_400e02

block_400efa:                                     ; preds = %block_400edb, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400efa_crit_edge
  %72 = phi i64 [ %251, %block_400edb ], [ %338, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400efa_crit_edge ]
  %73 = phi i64 [ %132, %block_400edb ], [ %.pre35, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400efa_crit_edge ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.4, %block_400edb ], [ %328, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400efa_crit_edge ]
  %74 = add i64 %73, -12
  %75 = add i64 %72, 4
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, -4
  %79 = icmp ult i32 %77, 4
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %14, align 1, !tbaa !2432
  %81 = and i32 %78, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #12
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %15, align 1, !tbaa !2446
  %86 = xor i32 %78, %77
  %87 = lshr i32 %86, 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %16, align 1, !tbaa !2447
  %90 = icmp eq i32 %78, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %17, align 1, !tbaa !2448
  %92 = lshr i32 %78, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %18, align 1, !tbaa !2449
  %94 = lshr i32 %77, 31
  %95 = xor i32 %92, %94
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %19, align 1, !tbaa !2450
  %.v53 = select i1 %90, i64 20, i64 10
  %99 = add i64 %72, %.v53
  store i64 %99, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_400f0e, label %block_400f04

block_400df6:                                     ; preds = %block_400d32, %block_400df1
  %100 = phi i64 [ %567, %block_400d32 ], [ %1105, %block_400df1 ]
  %MEMORY.1 = phi %struct.Memory* [ %532, %block_400d32 ], [ %MEMORY.10, %block_400df1 ]
  %101 = add i64 %100, 541
  br label %block_401013

block_400e71:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
  %102 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = add i64 %398, 12
  store i64 %103, i64* %PC, align 8
  %104 = load i32, i32* %276, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %RCX, align 8, !tbaa !2428
  %106 = shl nsw i64 %105, 2
  %107 = add i64 %106, %102
  %108 = add i64 %398, 15
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RDX, align 8, !tbaa !2428
  %112 = add i64 %268, -28
  %113 = add i64 %398, 18
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 %110, i32* %114, align 4
  %115 = load i64, i64* %PC, align 8
  %116 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -24
  %119 = add i64 %115, 12
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RCX, align 8, !tbaa !2428
  %123 = shl nsw i64 %122, 2
  %124 = add i64 %123, %116
  %125 = add i64 %115, 15
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RDX, align 8, !tbaa !2428
  %129 = add i64 %117, -32
  %130 = add i64 %115, 18
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  store i32 %127, i32* %131, align 4
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -12
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, -3
  %139 = icmp ult i32 %137, 3
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %14, align 1, !tbaa !2432
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #12
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %15, align 1, !tbaa !2446
  %146 = xor i32 %138, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %16, align 1, !tbaa !2447
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %17, align 1, !tbaa !2448
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %18, align 1, !tbaa !2449
  %154 = lshr i32 %137, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %19, align 1, !tbaa !2450
  %.v48 = select i1 %150, i64 20, i64 10
  %159 = add i64 %134, %.v48
  store i64 %159, i64* %PC, align 8, !tbaa !2428
  br i1 %150, label %block_400ea9, label %block_400e9f

block_400fed.loopexit:                            ; preds = %block_400e4a
  %160 = add i64 %304, 5
  br label %block_400fed

block_400fed:                                     ; preds = %block_400fed.loopexit, %block_400e3e
  %161 = phi i64 [ %1162, %block_400e3e ], [ %268, %block_400fed.loopexit ]
  %.sink4 = phi i64 [ %1160, %block_400e3e ], [ %160, %block_400fed.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.11, %block_400e3e ], [ %MEMORY.4, %block_400fed.loopexit ]
  %162 = add i64 %161, -20
  %163 = add i64 %.sink4, 3
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, 1
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RAX, align 8, !tbaa !2428
  %168 = icmp eq i32 %165, -1
  %169 = icmp eq i32 %166, 0
  %170 = or i1 %168, %169
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %14, align 1, !tbaa !2432
  %172 = and i32 %166, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #12
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %15, align 1, !tbaa !2446
  %177 = xor i32 %166, %165
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %16, align 1, !tbaa !2447
  %181 = zext i1 %169 to i8
  store i8 %181, i8* %17, align 1, !tbaa !2448
  %182 = lshr i32 %166, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %18, align 1, !tbaa !2449
  %184 = lshr i32 %165, 31
  %185 = xor i32 %182, %184
  %186 = add nuw nsw i32 %185, %182
  %187 = icmp eq i32 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %19, align 1, !tbaa !2450
  %189 = add i64 %.sink4, 9
  store i64 %189, i64* %PC, align 8
  store i32 %166, i32* %164, align 4
  %190 = load i64, i64* %PC, align 8
  %191 = add i64 %190, -483
  store i64 %191, i64* %PC, align 8, !tbaa !2428
  br label %block_400e13

block_401013:                                     ; preds = %block_400d0c, %block_40100e, %block_400df6
  %.sink = phi i64 [ %339, %block_400d0c ], [ %252, %block_40100e ], [ %101, %block_400df6 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400d0c ], [ %MEMORY.14, %block_40100e ], [ %MEMORY.1, %block_400df6 ]
  %192 = load i64, i64* %RSP, align 8
  %193 = add i64 %192, 48
  store i64 %193, i64* %RSP, align 8, !tbaa !2428
  %194 = icmp ugt i64 %192, -49
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %14, align 1, !tbaa !2432
  %196 = trunc i64 %193 to i32
  %197 = and i32 %196, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #12
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %15, align 1, !tbaa !2446
  %202 = xor i64 %192, 16
  %203 = xor i64 %202, %193
  %204 = lshr i64 %203, 4
  %205 = trunc i64 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %16, align 1, !tbaa !2447
  %207 = icmp eq i64 %193, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %17, align 1, !tbaa !2448
  %209 = lshr i64 %193, 63
  %210 = trunc i64 %209 to i8
  store i8 %210, i8* %18, align 1, !tbaa !2449
  %211 = lshr i64 %192, 63
  %212 = xor i64 %209, %211
  %213 = add nuw nsw i64 %212, %209
  %214 = icmp eq i64 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %19, align 1, !tbaa !2450
  %216 = add i64 %.sink, 5
  store i64 %216, i64* %PC, align 8
  %217 = add i64 %192, 56
  %218 = inttoptr i64 %193 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %RBP, align 8, !tbaa !2428
  store i64 %217, i64* %RSP, align 8, !tbaa !2428
  %220 = add i64 %.sink, 6
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %217 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %PC, align 8, !tbaa !2428
  %223 = add i64 %192, 64
  store i64 %223, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_400dfb:                                     ; preds = %block_400d11
  %224 = add i64 %1228, -12
  %225 = add i64 %1259, 7
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  store i32 1, i32* %226, align 4
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400e02

block_400edb:                                     ; preds = %block_400ecc
  %228 = add i64 %266, 4
  store i64 %228, i64* %PC, align 8
  %229 = load i32, i32* %136, align 4
  %230 = add i32 %229, -4
  %231 = icmp ult i32 %229, 4
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %14, align 1, !tbaa !2432
  %233 = and i32 %230, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233) #12
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %15, align 1, !tbaa !2446
  %238 = xor i32 %230, %229
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %16, align 1, !tbaa !2447
  %242 = icmp eq i32 %230, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %17, align 1, !tbaa !2448
  %244 = lshr i32 %230, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %18, align 1, !tbaa !2449
  %246 = lshr i32 %229, 31
  %247 = xor i32 %244, %246
  %248 = add nuw nsw i32 %247, %246
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %19, align 1, !tbaa !2450
  %.v52 = select i1 %242, i64 10, i64 31
  %251 = add i64 %266, %.v52
  store i64 %251, i64* %PC, align 8, !tbaa !2428
  br i1 %242, label %block_400ee5, label %block_400efa

block_40100e:                                     ; preds = %block_400e02
  %252 = add i64 %1400, 5
  br label %block_401013

block_400ecc:                                     ; preds = %block_400ec2
  %253 = add i64 %132, -32
  %254 = add i64 %353, 4
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %257 = and i32 %256, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257) #12
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %262 = icmp eq i32 %256, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %17, align 1, !tbaa !2448
  %264 = lshr i32 %256, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v51 = select i1 %262, i64 10, i64 15
  %266 = add i64 %353, %.v51
  store i64 %266, i64* %PC, align 8, !tbaa !2428
  br i1 %262, label %block_400ed6, label %block_400edb

block_400e4a:                                     ; preds = %block_400fda, %block_400e43
  %267 = phi i64 [ %.pre32, %block_400e43 ], [ %1331, %block_400fda ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.11, %block_400e43 ], [ %MEMORY.13, %block_400fda ]
  %268 = load i64, i64* %RBP, align 8
  %269 = add i64 %268, -24
  %270 = add i64 %267, 3
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = add i64 %268, -20
  %275 = add i64 %267, 6
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = sub i32 %272, %277
  %279 = icmp ult i32 %272, %277
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %14, align 1, !tbaa !2432
  %281 = and i32 %278, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281) #12
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %15, align 1, !tbaa !2446
  %286 = xor i32 %277, %272
  %287 = xor i32 %286, %278
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %16, align 1, !tbaa !2447
  %291 = icmp eq i32 %278, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %17, align 1, !tbaa !2448
  %293 = lshr i32 %278, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %18, align 1, !tbaa !2449
  %295 = lshr i32 %272, 31
  %296 = lshr i32 %277, 31
  %297 = xor i32 %296, %295
  %298 = xor i32 %293, %295
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %19, align 1, !tbaa !2450
  %302 = icmp ne i8 %294, 0
  %303 = xor i1 %302, %300
  %.v46 = select i1 %303, i64 12, i64 414
  %304 = add i64 %267, %.v46
  store i64 %304, i64* %PC, align 8, !tbaa !2428
  br i1 %303, label %block_400e56, label %block_400fed.loopexit

block_400ee5:                                     ; preds = %block_400edb
  %305 = add i64 %251, 3
  store i64 %305, i64* %PC, align 8
  %306 = load i32, i32* %.pre-phi41, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RAX, align 8, !tbaa !2428
  %308 = sext i32 %306 to i64
  %309 = lshr i64 %308, 32
  store i64 %309, i64* %227, align 8, !tbaa !2428
  %310 = add i64 %251, 7
  store i64 %310, i64* %PC, align 8
  %311 = load i32, i32* %255, align 4
  %312 = sext i32 %311 to i64
  %313 = shl nuw i64 %309, 32
  %314 = or i64 %313, %307
  %315 = sdiv i64 %314, %312
  %316 = shl i64 %315, 32
  %317 = ashr exact i64 %316, 32
  %318 = icmp eq i64 %315, %317
  br i1 %318, label %321, label %319

; <label>:319:                                    ; preds = %block_400ee5
  %320 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %310, %struct.Memory* %MEMORY.4) #13
  %.pre33 = load i32, i32* %EDX, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:321:                                    ; preds = %block_400ee5
  %322 = srem i64 %314, %312
  %323 = and i64 %315, 4294967295
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = and i64 %322, 4294967295
  store i64 %324, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 0, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %325 = trunc i64 %322 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %321, %319
  %326 = phi i64 [ %.pre34, %319 ], [ %310, %321 ]
  %327 = phi i32 [ %.pre33, %319 ], [ %325, %321 ]
  %328 = phi %struct.Memory* [ %320, %319 ], [ %MEMORY.4, %321 ]
  store i8 0, i8* %14, align 1, !tbaa !2432
  %329 = and i32 %327, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #12
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %334 = icmp eq i32 %327, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %17, align 1, !tbaa !2448
  %336 = lshr i32 %327, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v56 = select i1 %334, i64 14, i64 9
  %338 = add i64 %326, %.v56
  store i64 %338, i64* %PC, align 8, !tbaa !2428
  br i1 %334, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400efa_crit_edge, label %block_400ef5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400efa_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %.pre35 = load i64, i64* %RBP, align 8
  br label %block_400efa

block_400d0c:                                     ; preds = %block_400cf0
  %339 = add i64 %41, 775
  br label %block_401013

block_400e6c:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
  %340 = add i64 %398, 366
  store i64 %340, i64* %PC, align 8, !tbaa !2428
  br label %block_400fda

block_400ec2:                                     ; preds = %block_400eb3, %block_400e9f.block_400ec2_crit_edge
  %.pre-phi41 = phi i32* [ %.pre40, %block_400e9f.block_400ec2_crit_edge ], [ %1035, %block_400eb3 ]
  %341 = phi i64 [ %1130, %block_400e9f.block_400ec2_crit_edge ], [ %426, %block_400eb3 ]
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC, align 8
  %343 = load i32, i32* %.pre-phi41, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %344 = and i32 %343, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344) #12
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %349 = icmp eq i32 %343, 0
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %17, align 1, !tbaa !2448
  %351 = lshr i32 %343, 31
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v50 = select i1 %349, i64 20, i64 10
  %353 = add i64 %341, %.v50
  store i64 %353, i64* %PC, align 8, !tbaa !2428
  br i1 %349, label %block_400ed6, label %block_400ecc

block_400e56:                                     ; preds = %block_400e4a
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %304, 8
  store i64 %354, i64* %PC, align 8
  %355 = load i32, i32* %271, align 4
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RCX, align 8, !tbaa !2428
  %357 = add i64 %304, 10
  store i64 %357, i64* %PC, align 8
  %358 = trunc i32 %355 to i5
  switch i5 %358, label %359 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
    i5 1, label %368
  ]

; <label>:359:                                    ; preds = %block_400e56
  %360 = and i32 %355, 31
  %361 = zext i32 %360 to i64
  %362 = add nuw nsw i64 %361, 4294967295
  %363 = and i64 %362, 4294967295
  %364 = shl i64 1, %363
  %365 = trunc i64 %364 to i32
  %366 = icmp slt i32 %365, 0
  %367 = shl i32 %365, 1
  br label %368

; <label>:368:                                    ; preds = %block_400e56, %359
  %369 = phi i1 [ %366, %359 ], [ false, %block_400e56 ]
  %370 = phi i32 [ %367, %359 ], [ 2, %block_400e56 ]
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = zext i1 %369 to i8
  store i8 %372, i8* %14, align 1, !tbaa !2451
  %373 = and i32 %370, 254
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373) #12
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %378 = icmp eq i32 %370, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %17, align 1, !tbaa !2451
  %380 = lshr i32 %370, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3: ; preds = %368, %block_400e56
  %382 = phi i32 [ %370, %368 ], [ 1, %block_400e56 ]
  %383 = add i64 %268, -8
  %384 = add i64 %304, 13
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, %382
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RAX, align 8, !tbaa !2428
  %389 = and i32 %387, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389) #12
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  %394 = icmp eq i32 %387, 0
  %395 = zext i1 %394 to i8
  %396 = lshr i32 %387, 31
  %397 = trunc i32 %396 to i8
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %393, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 %395, i8* %17, align 1, !tbaa !2448
  store i8 %397, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v47 = select i1 %394, i64 27, i64 22
  %398 = add i64 %304, %.v47
  store i64 %398, i64* %PC, align 8, !tbaa !2428
  br i1 %394, label %block_400e71, label %block_400e6c

block_400ebd:                                     ; preds = %block_400eb3, %block_400ea9
  %399 = phi i64 [ %1058, %block_400ea9 ], [ %426, %block_400eb3 ]
  %400 = add i64 %399, 285
  store i64 %400, i64* %PC, align 8, !tbaa !2428
  br label %block_400fda

block_400eb3:                                     ; preds = %block_400ea9
  %401 = add i64 %132, -32
  %402 = add i64 %1058, 4
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = add i32 %404, -1
  %406 = icmp eq i32 %404, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %14, align 1, !tbaa !2432
  %408 = and i32 %405, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408) #12
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %15, align 1, !tbaa !2446
  %413 = xor i32 %405, %404
  %414 = lshr i32 %413, 4
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %16, align 1, !tbaa !2447
  %417 = icmp eq i32 %405, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %17, align 1, !tbaa !2448
  %419 = lshr i32 %405, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %18, align 1, !tbaa !2449
  %421 = lshr i32 %404, 31
  %422 = xor i32 %419, %421
  %423 = add nuw nsw i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %19, align 1, !tbaa !2450
  %.v58 = select i1 %417, i64 10, i64 15
  %426 = add i64 %1058, %.v58
  store i64 %426, i64* %PC, align 8, !tbaa !2428
  br i1 %417, label %block_400ebd, label %block_400ec2

block_400d32:                                     ; preds = %block_400d11
  %427 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RCX, align 8, !tbaa !2428
  %430 = add i64 %1259, 18
  store i64 %430, i64* %PC, align 8
  %431 = load i32, i32* %1231, align 4
  %432 = add i32 %431, %428
  %433 = icmp eq i32 %432, 0
  %434 = zext i1 %433 to i8
  %435 = lshr i32 %432, 31
  %436 = add i32 %432, -1
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RCX, align 8, !tbaa !2428
  store i8 %434, i8* %14, align 1, !tbaa !2432
  %438 = and i32 %436, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438) #12
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %15, align 1, !tbaa !2446
  %443 = xor i32 %436, %432
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %16, align 1, !tbaa !2447
  %447 = icmp eq i32 %436, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %17, align 1, !tbaa !2448
  %449 = lshr i32 %436, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %18, align 1, !tbaa !2449
  %451 = xor i32 %449, %435
  %452 = add nuw nsw i32 %451, %435
  %453 = icmp eq i32 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %19, align 1, !tbaa !2450
  %455 = sext i32 %436 to i64
  store i64 %455, i64* %RDX, align 8, !tbaa !2428
  %456 = shl nsw i64 %455, 2
  %457 = add i64 %427, %456
  %458 = add i64 %1259, 27
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %462 = sub i32 %460, %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX, align 8, !tbaa !2428
  %464 = icmp ult i32 %460, %461
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %14, align 1, !tbaa !2432
  %466 = and i32 %462, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466) #12
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %15, align 1, !tbaa !2446
  %471 = xor i32 %461, %460
  %472 = xor i32 %471, %462
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %16, align 1, !tbaa !2447
  %476 = icmp eq i32 %462, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %17, align 1, !tbaa !2448
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %18, align 1, !tbaa !2449
  %480 = lshr i32 %460, 31
  %481 = lshr i32 %461, 31
  %482 = xor i32 %481, %480
  %483 = xor i32 %478, %480
  %484 = add nuw nsw i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %19, align 1, !tbaa !2450
  store i64 %463, i64* %RDI, align 8, !tbaa !2428
  %487 = add i64 %1259, -1730
  %488 = add i64 %1259, 41
  %489 = load i64, i64* %RSP, align 8, !tbaa !2428
  %490 = add i64 %489, -8
  %491 = inttoptr i64 %490 to i64*
  store i64 %488, i64* %491, align 8
  store i64 %490, i64* %RSP, align 8, !tbaa !2428
  store i64 %487, i64* %PC, align 8, !tbaa !2428
  %492 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %2)
  %493 = load i64, i64* %PC, align 8
  %494 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %495 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %496 = sub i32 %494, %495
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RCX, align 8, !tbaa !2428
  %498 = icmp ult i32 %494, %495
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %14, align 1, !tbaa !2432
  %500 = and i32 %496, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500) #12
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %15, align 1, !tbaa !2446
  %505 = xor i32 %495, %494
  %506 = xor i32 %505, %496
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %16, align 1, !tbaa !2447
  %510 = icmp eq i32 %496, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %17, align 1, !tbaa !2448
  %512 = lshr i32 %496, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %18, align 1, !tbaa !2449
  %514 = lshr i32 %494, 31
  %515 = lshr i32 %495, 31
  %516 = xor i32 %515, %514
  %517 = xor i32 %512, %514
  %518 = add nuw nsw i32 %517, %516
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %19, align 1, !tbaa !2450
  store i64 %497, i64* %RDI, align 8, !tbaa !2428
  %521 = load i64, i64* %RBP, align 8
  %522 = add i64 %521, -40
  %523 = load i32, i32* %EAX, align 4
  %524 = add i64 %493, 19
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %522 to i32*
  store i32 %523, i32* %525, align 4
  %526 = load i64, i64* %PC, align 8
  %527 = add i64 %526, -1790
  %528 = add i64 %526, 5
  %529 = load i64, i64* %RSP, align 8, !tbaa !2428
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %528, i64* %531, align 8
  store i64 %530, i64* %RSP, align 8, !tbaa !2428
  store i64 %527, i64* %PC, align 8, !tbaa !2428
  %532 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %492)
  %533 = load i64, i64* %RBP, align 8
  %534 = add i64 %533, -40
  %535 = load i64, i64* %PC, align 8
  %536 = add i64 %535, 3
  store i64 %536, i64* %PC, align 8
  %537 = inttoptr i64 %534 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RCX, align 8, !tbaa !2428
  %540 = load i32, i32* %EAX, align 4
  %541 = sub i32 %538, %540
  %542 = icmp ult i32 %538, %540
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %14, align 1, !tbaa !2432
  %544 = and i32 %541, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544) #12
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %15, align 1, !tbaa !2446
  %549 = xor i32 %540, %538
  %550 = xor i32 %549, %541
  %551 = lshr i32 %550, 4
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  store i8 %553, i8* %16, align 1, !tbaa !2447
  %554 = icmp eq i32 %541, 0
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %17, align 1, !tbaa !2448
  %556 = lshr i32 %541, 31
  %557 = trunc i32 %556 to i8
  store i8 %557, i8* %18, align 1, !tbaa !2449
  %558 = lshr i32 %538, 31
  %559 = lshr i32 %540, 31
  %560 = xor i32 %559, %558
  %561 = xor i32 %556, %558
  %562 = add nuw nsw i32 %561, %560
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %19, align 1, !tbaa !2450
  %565 = icmp ne i8 %557, 0
  %566 = xor i1 %565, %563
  %.v59 = select i1 %566, i64 11, i64 131
  %567 = add i64 %535, %.v59
  store i64 %567, i64* %PC, align 8, !tbaa !2428
  br i1 %566, label %block_400d7e, label %block_400df6

block_400d7e:                                     ; preds = %block_400d32
  %568 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %568, i64* %RAX, align 8, !tbaa !2428
  %569 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RCX, align 8, !tbaa !2428
  %571 = add i64 %533, -4
  %572 = add i64 %567, 18
  store i64 %572, i64* %PC, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, %569
  %576 = icmp eq i32 %575, 0
  %577 = zext i1 %576 to i8
  %578 = lshr i32 %575, 31
  %579 = add i32 %575, -1
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RCX, align 8, !tbaa !2428
  store i8 %577, i8* %14, align 1, !tbaa !2432
  %581 = and i32 %579, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581) #12
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %15, align 1, !tbaa !2446
  %586 = xor i32 %579, %575
  %587 = lshr i32 %586, 4
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %16, align 1, !tbaa !2447
  %590 = icmp eq i32 %579, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %17, align 1, !tbaa !2448
  %592 = lshr i32 %579, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %18, align 1, !tbaa !2449
  %594 = xor i32 %592, %578
  %595 = add nuw nsw i32 %594, %578
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %19, align 1, !tbaa !2450
  %598 = sext i32 %579 to i64
  store i64 %598, i64* %RDX, align 8, !tbaa !2428
  %599 = shl nsw i64 %598, 2
  %600 = add i64 %568, %599
  %601 = add i64 %567, 27
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RCX, align 8, !tbaa !2428
  store i32 %603, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %605 = add i64 %567, 37
  store i64 %605, i64* %PC, align 8
  %606 = load i32, i32* %573, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RCX, align 8, !tbaa !2428
  store i32 %606, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 84) to i32*), align 4
  %608 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %608, i64* %RDI, align 8, !tbaa !2428
  %609 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %609, i64* %RSI, align 8, !tbaa !2428
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -4
  %612 = add i64 %567, 63
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RDX, align 8, !tbaa !2428
  %616 = add i64 %567, -1102
  %617 = add i64 %567, 68
  %618 = load i64, i64* %RSP, align 8, !tbaa !2428
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %RSP, align 8, !tbaa !2428
  store i64 %616, i64* %PC, align 8, !tbaa !2428
  %621 = tail call %struct.Memory* @sub_400930_saveSolution_renamed_(%struct.State* nonnull %0, i64 %616, %struct.Memory* %532)
  %622 = load i64, i64* %PC, align 8
  %623 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RCX, align 8, !tbaa !2428
  %625 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %626 = sub i32 %623, %625
  %627 = icmp ult i32 %623, %625
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %14, align 1, !tbaa !2432
  %629 = and i32 %626, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629) #12
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %15, align 1, !tbaa !2446
  %634 = xor i32 %625, %623
  %635 = xor i32 %634, %626
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  store i8 %638, i8* %16, align 1, !tbaa !2447
  %639 = icmp eq i32 %626, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %17, align 1, !tbaa !2448
  %641 = lshr i32 %626, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %18, align 1, !tbaa !2449
  %643 = lshr i32 %623, 31
  %644 = lshr i32 %625, 31
  %645 = xor i32 %644, %643
  %646 = xor i32 %641, %643
  %647 = add nuw nsw i32 %646, %645
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %19, align 1, !tbaa !2450
  %.v60 = select i1 %639, i64 20, i64 47
  %650 = add i64 %622, %.v60
  store i64 %650, i64* %PC, align 8, !tbaa !2428
  br i1 %639, label %block_400dd6, label %block_400df1

block_400ed6:                                     ; preds = %block_400ecc, %block_400ec2
  %651 = phi i64 [ %353, %block_400ec2 ], [ %266, %block_400ecc ]
  %652 = add i64 %651, 260
  store i64 %652, i64* %PC, align 8, !tbaa !2428
  br label %block_400fda

block_400f2c:                                     ; preds = %block_400f04, %block_400f0e, %block_400f1a
  %653 = phi i64 [ %73, %block_400f0e ], [ %73, %block_400f04 ], [ %.pre37, %block_400f1a ]
  %654 = phi i64 [ %1296, %block_400f0e ], [ %1370, %block_400f04 ], [ %.pre36, %block_400f1a ]
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %655 = add i64 %653, -8
  %656 = add i64 %654, 8
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RCX, align 8, !tbaa !2428
  %660 = add i64 %653, -20
  %661 = add i64 %654, 11
  store i64 %661, i64* %PC, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RDX, align 8, !tbaa !2428
  %665 = add i64 %653, -44
  %666 = add i64 %654, 14
  store i64 %666, i64* %PC, align 8
  %667 = inttoptr i64 %665 to i32*
  store i32 %658, i32* %667, align 4
  %668 = load i32, i32* %EDX, align 4
  %669 = zext i32 %668 to i64
  %670 = load i64, i64* %PC, align 8
  store i64 %669, i64* %RCX, align 8, !tbaa !2428
  %671 = load i32, i32* %EAX, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RDX, align 8, !tbaa !2428
  %673 = add i64 %670, 6
  store i64 %673, i64* %PC, align 8
  %674 = trunc i32 %668 to i5
  switch i5 %674, label %680 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %675
  ]

; <label>:675:                                    ; preds = %block_400f2c
  %676 = shl i32 %671, 1
  %677 = icmp slt i32 %671, 0
  %678 = icmp slt i32 %676, 0
  %679 = xor i1 %677, %678
  br label %689

; <label>:680:                                    ; preds = %block_400f2c
  %681 = and i32 %668, 31
  %682 = zext i32 %681 to i64
  %683 = add nuw nsw i64 %682, 4294967295
  %684 = and i64 %683, 4294967295
  %685 = shl i64 %672, %684
  %686 = trunc i64 %685 to i32
  %687 = icmp slt i32 %686, 0
  %688 = shl i32 %686, 1
  br label %689

; <label>:689:                                    ; preds = %680, %675
  %690 = phi i1 [ %677, %675 ], [ %687, %680 ]
  %691 = phi i1 [ %679, %675 ], [ false, %680 ]
  %692 = phi i32 [ %676, %675 ], [ %688, %680 ]
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RDX, align 8, !tbaa !2428
  %694 = zext i1 %690 to i8
  store i8 %694, i8* %14, align 1, !tbaa !2451
  %695 = and i32 %692, 254
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695) #12
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %700 = icmp eq i32 %692, 0
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %17, align 1, !tbaa !2451
  %702 = lshr i32 %692, 31
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %18, align 1, !tbaa !2451
  %704 = zext i1 %691 to i8
  store i8 %704, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %689, %block_400f2c
  %705 = phi i32 [ %692, %689 ], [ %671, %block_400f2c ]
  %706 = load i64, i64* %RBP, align 8
  %707 = add i64 %706, -44
  %708 = add i64 %670, 9
  store i64 %708, i64* %PC, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = or i32 %705, %710
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %713 = and i32 %711, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713) #12
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %15, align 1, !tbaa !2446
  %718 = icmp eq i32 %711, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %17, align 1, !tbaa !2448
  %720 = lshr i32 %711, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %722 = add i64 %706, -24
  %723 = add i64 %670, 14
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RCX, align 8, !tbaa !2428
  %727 = load i64, i64* %RAX, align 8
  %728 = add i64 %670, 16
  store i64 %728, i64* %PC, align 8
  %729 = trunc i32 %725 to i5
  %730 = trunc i64 %727 to i32
  switch i5 %729, label %736 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %731
  ]

; <label>:731:                                    ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %732 = shl i32 %730, 1
  %733 = icmp slt i32 %730, 0
  %734 = icmp slt i32 %732, 0
  %735 = xor i1 %733, %734
  br label %746

; <label>:736:                                    ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %737 = and i32 %725, 31
  %738 = zext i32 %737 to i64
  %739 = add nuw nsw i64 %738, 4294967295
  %740 = and i64 %727, 4294967295
  %741 = and i64 %739, 4294967295
  %742 = shl i64 %740, %741
  %743 = trunc i64 %742 to i32
  %744 = icmp slt i32 %743, 0
  %745 = shl i32 %743, 1
  br label %746

; <label>:746:                                    ; preds = %736, %731
  %747 = phi i1 [ %733, %731 ], [ %744, %736 ]
  %748 = phi i1 [ %735, %731 ], [ false, %736 ]
  %749 = phi i32 [ %732, %731 ], [ %745, %736 ]
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX, align 8, !tbaa !2428
  %751 = zext i1 %747 to i8
  store i8 %751, i8* %14, align 1, !tbaa !2451
  %752 = and i32 %749, 254
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752) #12
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %757 = icmp eq i32 %749, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %17, align 1, !tbaa !2451
  %759 = lshr i32 %749, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %18, align 1, !tbaa !2451
  %761 = zext i1 %748 to i8
  store i8 %761, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %746, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %762 = phi i32 [ %749, %746 ], [ %730, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ]
  %763 = or i32 %762, %711
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %765 = and i32 %763, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765) #12
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %15, align 1, !tbaa !2446
  %770 = icmp eq i32 %763, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %17, align 1, !tbaa !2448
  %772 = lshr i32 %763, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %774 = add i64 %706, -16
  %775 = add i64 %670, 21
  store i64 %775, i64* %PC, align 8
  %776 = inttoptr i64 %774 to i32*
  store i32 %763, i32* %776, align 4
  %777 = load i64, i64* %RBP, align 8
  %778 = add i64 %777, -28
  %779 = load i64, i64* %PC, align 8
  %780 = add i64 %779, 3
  store i64 %780, i64* %PC, align 8
  %781 = inttoptr i64 %778 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX, align 8, !tbaa !2428
  %784 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %784, i64* %RDI, align 8, !tbaa !2428
  %785 = add i64 %777, -4
  %786 = add i64 %779, 15
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = sext i32 %788 to i64
  %790 = mul nsw i64 %789, 12
  store i64 %790, i64* %R8, align 8, !tbaa !2428
  %791 = lshr i64 %790, 63
  %792 = add i64 %790, %784
  store i64 %792, i64* %RDI, align 8, !tbaa !2428
  %793 = icmp ult i64 %792, %784
  %794 = icmp ult i64 %792, %790
  %795 = or i1 %793, %794
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %14, align 1, !tbaa !2432
  %797 = trunc i64 %792 to i32
  %798 = and i32 %797, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798) #12
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %15, align 1, !tbaa !2446
  %803 = xor i64 %790, %784
  %804 = xor i64 %803, %792
  %805 = lshr i64 %804, 4
  %806 = trunc i64 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %16, align 1, !tbaa !2447
  %808 = icmp eq i64 %792, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %17, align 1, !tbaa !2448
  %810 = lshr i64 %792, 63
  %811 = trunc i64 %810 to i8
  store i8 %811, i8* %18, align 1, !tbaa !2449
  %812 = lshr i64 %784, 63
  %813 = xor i64 %810, %812
  %814 = xor i64 %810, %791
  %815 = add nuw nsw i64 %813, %814
  %816 = icmp eq i64 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %19, align 1, !tbaa !2450
  %818 = inttoptr i64 %792 to i32*
  %819 = add i64 %779, 24
  store i64 %819, i64* %PC, align 8
  store i32 %782, i32* %818, align 4
  %820 = load i64, i64* %RBP, align 8
  %821 = add i64 %820, -32
  %822 = load i64, i64* %PC, align 8
  %823 = add i64 %822, 3
  store i64 %823, i64* %PC, align 8
  %824 = inttoptr i64 %821 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX, align 8, !tbaa !2428
  %827 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %827, i64* %RDI, align 8, !tbaa !2428
  %828 = add i64 %820, -4
  %829 = add i64 %822, 15
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = sext i32 %831 to i64
  %833 = mul nsw i64 %832, 12
  store i64 %833, i64* %R8, align 8, !tbaa !2428
  %834 = lshr i64 %833, 63
  %835 = add i64 %833, %827
  store i64 %835, i64* %RDI, align 8, !tbaa !2428
  %836 = icmp ult i64 %835, %827
  %837 = icmp ult i64 %835, %833
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1, !tbaa !2432
  %840 = trunc i64 %835 to i32
  %841 = and i32 %840, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841) #12
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %15, align 1, !tbaa !2446
  %846 = xor i64 %833, %827
  %847 = xor i64 %846, %835
  %848 = lshr i64 %847, 4
  %849 = trunc i64 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %16, align 1, !tbaa !2447
  %851 = icmp eq i64 %835, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %17, align 1, !tbaa !2448
  %853 = lshr i64 %835, 63
  %854 = trunc i64 %853 to i8
  store i8 %854, i8* %18, align 1, !tbaa !2449
  %855 = lshr i64 %827, 63
  %856 = xor i64 %853, %855
  %857 = xor i64 %853, %834
  %858 = add nuw nsw i64 %856, %857
  %859 = icmp eq i64 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %19, align 1, !tbaa !2450
  %861 = add i64 %835, 4
  %862 = add i64 %822, 25
  store i64 %862, i64* %PC, align 8
  %863 = inttoptr i64 %861 to i32*
  store i32 %825, i32* %863, align 4
  %864 = load i64, i64* %RBP, align 8
  %865 = add i64 %864, -12
  %866 = load i64, i64* %PC, align 8
  %867 = add i64 %866, 3
  store i64 %867, i64* %PC, align 8
  %868 = inttoptr i64 %865 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = zext i32 %869 to i64
  store i64 %870, i64* %RAX, align 8, !tbaa !2428
  %871 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %871, i64* %RDI, align 8, !tbaa !2428
  %872 = add i64 %864, -4
  %873 = add i64 %866, 15
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = sext i32 %875 to i64
  %877 = mul nsw i64 %876, 12
  store i64 %877, i64* %R8, align 8, !tbaa !2428
  %878 = lshr i64 %877, 63
  %879 = add i64 %877, %871
  %880 = icmp ult i64 %879, %871
  %881 = icmp ult i64 %879, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %14, align 1, !tbaa !2432
  %884 = trunc i64 %879 to i32
  %885 = and i32 %884, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885) #12
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %15, align 1, !tbaa !2446
  %890 = xor i64 %877, %871
  %891 = xor i64 %890, %879
  %892 = lshr i64 %891, 4
  %893 = trunc i64 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %16, align 1, !tbaa !2447
  %895 = icmp eq i64 %879, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %17, align 1, !tbaa !2448
  %897 = lshr i64 %879, 63
  %898 = trunc i64 %897 to i8
  store i8 %898, i8* %18, align 1, !tbaa !2449
  %899 = lshr i64 %871, 63
  %900 = xor i64 %897, %899
  %901 = xor i64 %897, %878
  %902 = add nuw nsw i64 %900, %901
  %903 = icmp eq i64 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %19, align 1, !tbaa !2450
  %905 = add i64 %879, 8
  %906 = add i64 %866, 25
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i32*
  store i32 %869, i32* %907, align 4
  %908 = load i64, i64* %PC, align 8
  %909 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %909, i64* %RDI, align 8, !tbaa !2428
  %910 = load i64, i64* %RBP, align 8
  %911 = add i64 %910, -4
  %912 = add i64 %908, 12
  store i64 %912, i64* %PC, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = sext i32 %914 to i64
  %916 = mul nsw i64 %915, 12
  store i64 %916, i64* %R8, align 8, !tbaa !2428
  %917 = lshr i64 %916, 63
  %918 = add i64 %916, %909
  store i64 %918, i64* %RDI, align 8, !tbaa !2428
  %919 = icmp ult i64 %918, %909
  %920 = icmp ult i64 %918, %916
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1, !tbaa !2432
  %923 = trunc i64 %918 to i32
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924) #12
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %15, align 1, !tbaa !2446
  %929 = xor i64 %916, %909
  %930 = xor i64 %929, %918
  %931 = lshr i64 %930, 4
  %932 = trunc i64 %931 to i8
  %933 = and i8 %932, 1
  store i8 %933, i8* %16, align 1, !tbaa !2447
  %934 = icmp eq i64 %918, 0
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %17, align 1, !tbaa !2448
  %936 = lshr i64 %918, 63
  %937 = trunc i64 %936 to i8
  store i8 %937, i8* %18, align 1, !tbaa !2449
  %938 = lshr i64 %909, 63
  %939 = xor i64 %936, %938
  %940 = xor i64 %936, %917
  %941 = add nuw nsw i64 %939, %940
  %942 = icmp eq i64 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %19, align 1, !tbaa !2450
  %944 = add i64 %908, -1449
  %945 = add i64 %908, 24
  %946 = load i64, i64* %RSP, align 8, !tbaa !2428
  %947 = add i64 %946, -8
  %948 = inttoptr i64 %947 to i64*
  store i64 %945, i64* %948, align 8
  store i64 %947, i64* %RSP, align 8, !tbaa !2428
  store i64 %944, i64* %PC, align 8, !tbaa !2428
  %949 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %944, %struct.Memory* %MEMORY.0)
  %950 = load i64, i64* %PC, align 8
  %951 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %951, i64* %RDI, align 8, !tbaa !2428
  %952 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RDX, align 8, !tbaa !2428
  %954 = load i64, i64* %RBP, align 8
  %955 = add i64 %954, -4
  %956 = add i64 %950, 18
  store i64 %956, i64* %PC, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = add i32 %958, %952
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RDX, align 8, !tbaa !2428
  %961 = icmp ult i32 %959, %952
  %962 = icmp ult i32 %959, %958
  %963 = or i1 %961, %962
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %14, align 1, !tbaa !2432
  %965 = and i32 %959, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965) #12
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %15, align 1, !tbaa !2446
  %970 = xor i32 %958, %952
  %971 = xor i32 %970, %959
  %972 = lshr i32 %971, 4
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  store i8 %974, i8* %16, align 1, !tbaa !2447
  %975 = icmp eq i32 %959, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %17, align 1, !tbaa !2448
  %977 = lshr i32 %959, 31
  %978 = trunc i32 %977 to i8
  store i8 %978, i8* %18, align 1, !tbaa !2449
  %979 = lshr i32 %952, 31
  %980 = lshr i32 %958, 31
  %981 = xor i32 %977, %979
  %982 = xor i32 %977, %980
  %983 = add nuw nsw i32 %981, %982
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %19, align 1, !tbaa !2450
  %986 = sext i32 %959 to i64
  store i64 %986, i64* %R8, align 8, !tbaa !2428
  %987 = shl nsw i64 %986, 2
  %988 = add i64 %951, %987
  %989 = load i32, i32* %EAX, align 4
  %990 = add i64 %950, 25
  store i64 %990, i64* %PC, align 8
  %991 = inttoptr i64 %988 to i32*
  store i32 %989, i32* %991, align 4
  %992 = load i64, i64* %RBP, align 8
  %993 = add i64 %992, -4
  %994 = load i64, i64* %PC, align 8
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC, align 8
  %996 = inttoptr i64 %993 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = add i32 %997, 1
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = icmp eq i32 %997, -1
  %1001 = icmp eq i32 %998, 0
  %1002 = or i1 %1000, %1001
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %14, align 1, !tbaa !2432
  %1004 = and i32 %998, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004) #12
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %15, align 1, !tbaa !2446
  %1009 = xor i32 %998, %997
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %16, align 1, !tbaa !2447
  %1013 = zext i1 %1001 to i8
  store i8 %1013, i8* %17, align 1, !tbaa !2448
  %1014 = lshr i32 %998, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %18, align 1, !tbaa !2449
  %1016 = lshr i32 %997, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1014
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %19, align 1, !tbaa !2450
  %1021 = add i64 %992, -16
  %1022 = add i64 %994, 9
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RSI, align 8, !tbaa !2428
  store i64 %999, i64* %RDI, align 8, !tbaa !2428
  %1026 = add i64 %994, -730
  %1027 = add i64 %994, 16
  %1028 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1027, i64* %1030, align 8
  store i64 %1029, i64* %RSP, align 8, !tbaa !2428
  store i64 %1026, i64* %PC, align 8, !tbaa !2428
  %1031 = tail call %struct.Memory* @sub_400cf0_recSearch_renamed_(%struct.State* nonnull %0, i64 %1026, %struct.Memory* %949)
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400fda

block_400ea9:                                     ; preds = %block_400e9f, %block_400e71
  %1032 = phi i64 [ %1130, %block_400e9f ], [ %159, %block_400e71 ]
  %1033 = add i64 %132, -28
  %1034 = add i64 %1032, 4
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = add i32 %1036, -1
  %1038 = icmp eq i32 %1036, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %14, align 1, !tbaa !2432
  %1040 = and i32 %1037, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040) #12
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %15, align 1, !tbaa !2446
  %1045 = xor i32 %1037, %1036
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %16, align 1, !tbaa !2447
  %1049 = icmp eq i32 %1037, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %17, align 1, !tbaa !2448
  %1051 = lshr i32 %1037, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %18, align 1, !tbaa !2449
  %1053 = lshr i32 %1036, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1053
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %19, align 1, !tbaa !2450
  %.v57 = select i1 %1049, i64 20, i64 10
  %1058 = add i64 %1032, %.v57
  store i64 %1058, i64* %PC, align 8, !tbaa !2428
  br i1 %1049, label %block_400ebd, label %block_400eb3

block_400e28:                                     ; preds = %block_400e13
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %1059 = add i64 %1202, 8
  store i64 %1059, i64* %PC, align 8
  %1060 = load i32, i32* %1165, align 4
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RCX, align 8, !tbaa !2428
  %1062 = add i64 %1202, 10
  store i64 %1062, i64* %PC, align 8
  %1063 = trunc i32 %1060 to i5
  switch i5 %1063, label %1064 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %1073
  ]

; <label>:1064:                                   ; preds = %block_400e28
  %1065 = and i32 %1060, 31
  %1066 = zext i32 %1065 to i64
  %1067 = add nuw nsw i64 %1066, 4294967295
  %1068 = and i64 %1067, 4294967295
  %1069 = shl i64 1, %1068
  %1070 = trunc i64 %1069 to i32
  %1071 = icmp slt i32 %1070, 0
  %1072 = shl i32 %1070, 1
  br label %1073

; <label>:1073:                                   ; preds = %block_400e28, %1064
  %1074 = phi i1 [ %1071, %1064 ], [ false, %block_400e28 ]
  %1075 = phi i32 [ %1072, %1064 ], [ 2, %block_400e28 ]
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RAX, align 8, !tbaa !2428
  %1077 = zext i1 %1074 to i8
  store i8 %1077, i8* %14, align 1, !tbaa !2451
  %1078 = and i32 %1075, 254
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078) #12
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %1083 = icmp eq i32 %1075, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %17, align 1, !tbaa !2451
  %1085 = lshr i32 %1075, 31
  %1086 = trunc i32 %1085 to i8
  store i8 %1086, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %1073, %block_400e28
  %1087 = phi i32 [ %1075, %1073 ], [ 1, %block_400e28 ]
  %1088 = add i64 %1162, -8
  %1089 = add i64 %1202, 13
  store i64 %1089, i64* %PC, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = and i32 %1091, %1087
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX, align 8, !tbaa !2428
  %1094 = and i32 %1092, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094) #12
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  %1099 = icmp eq i32 %1092, 0
  %1100 = zext i1 %1099 to i8
  %1101 = lshr i32 %1092, 31
  %1102 = trunc i32 %1101 to i8
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %1098, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 %1100, i8* %17, align 1, !tbaa !2448
  store i8 %1102, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v45 = select i1 %1099, i64 27, i64 22
  %1103 = add i64 %1202, %.v45
  store i64 %1103, i64* %PC, align 8, !tbaa !2428
  br i1 %1099, label %block_400e43, label %block_400e3e

block_400df1:                                     ; preds = %block_400d7e, %block_400dd6
  %1104 = phi i64 [ %650, %block_400d7e ], [ %1346, %block_400dd6 ]
  %MEMORY.10 = phi %struct.Memory* [ %621, %block_400d7e ], [ %1344, %block_400dd6 ]
  %1105 = add i64 %1104, 5
  store i64 %1105, i64* %PC, align 8, !tbaa !2428
  br label %block_400df6

block_400ef5:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %1106 = add i64 %338, 229
  store i64 %1106, i64* %PC, align 8, !tbaa !2428
  br label %block_400fda

block_400e9f:                                     ; preds = %block_400e71
  %1107 = add i64 %159, 4
  store i64 %1107, i64* %PC, align 8
  %1108 = load i32, i32* %136, align 4
  %1109 = add i32 %1108, -4
  %1110 = icmp ult i32 %1108, 4
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %14, align 1, !tbaa !2432
  %1112 = and i32 %1109, 255
  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112) #12
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = xor i8 %1115, 1
  store i8 %1116, i8* %15, align 1, !tbaa !2446
  %1117 = xor i32 %1109, %1108
  %1118 = lshr i32 %1117, 4
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  store i8 %1120, i8* %16, align 1, !tbaa !2447
  %1121 = icmp eq i32 %1109, 0
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %17, align 1, !tbaa !2448
  %1123 = lshr i32 %1109, 31
  %1124 = trunc i32 %1123 to i8
  store i8 %1124, i8* %18, align 1, !tbaa !2449
  %1125 = lshr i32 %1108, 31
  %1126 = xor i32 %1123, %1125
  %1127 = add nuw nsw i32 %1126, %1125
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %19, align 1, !tbaa !2450
  %.v49 = select i1 %1121, i64 10, i64 35
  %1130 = add i64 %159, %.v49
  store i64 %1130, i64* %PC, align 8, !tbaa !2428
  br i1 %1121, label %block_400ea9, label %block_400e9f.block_400ec2_crit_edge

block_400e9f.block_400ec2_crit_edge:              ; preds = %block_400e9f
  %.pre39 = add i64 %132, -28
  %.pre40 = inttoptr i64 %.pre39 to i32*
  br label %block_400ec2

block_400e43:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1131 = add i64 %1162, -24
  %1132 = add i64 %1103, 7
  store i64 %1132, i64* %PC, align 8
  %1133 = inttoptr i64 %1131 to i32*
  store i32 0, i32* %1133, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400e4a

block_400f1a:                                     ; preds = %block_400f0e
  %1134 = add i64 %1296, 3
  store i64 %1134, i64* %PC, align 8
  %1135 = load i32, i32* %1263, align 4
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RAX, align 8, !tbaa !2428
  %1137 = add i64 %73, -36
  %1138 = add i64 %1296, 6
  store i64 %1138, i64* %PC, align 8
  %1139 = inttoptr i64 %1137 to i32*
  store i32 %1135, i32* %1139, align 4
  %1140 = load i64, i64* %RBP, align 8
  %1141 = add i64 %1140, -32
  %1142 = load i64, i64* %PC, align 8
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC, align 8
  %1144 = inttoptr i64 %1141 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RAX, align 8, !tbaa !2428
  %1147 = add i64 %1140, -28
  %1148 = add i64 %1142, 6
  store i64 %1148, i64* %PC, align 8
  %1149 = inttoptr i64 %1147 to i32*
  store i32 %1145, i32* %1149, align 4
  %1150 = load i64, i64* %RBP, align 8
  %1151 = add i64 %1150, -36
  %1152 = load i64, i64* %PC, align 8
  %1153 = add i64 %1152, 3
  store i64 %1153, i64* %PC, align 8
  %1154 = inttoptr i64 %1151 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX, align 8, !tbaa !2428
  %1157 = add i64 %1150, -32
  %1158 = add i64 %1152, 6
  store i64 %1158, i64* %PC, align 8
  %1159 = inttoptr i64 %1157 to i32*
  store i32 %1155, i32* %1159, align 4
  %.pre36 = load i64, i64* %PC, align 8
  %.pre37 = load i64, i64* %RBP, align 8
  br label %block_400f2c

block_400e3e:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1160 = add i64 %1103, 431
  br label %block_400fed

block_400e13:                                     ; preds = %block_400e0c, %block_400fed
  %1161 = phi i64 [ %.pre31, %block_400e0c ], [ %191, %block_400fed ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.14, %block_400e0c ], [ %MEMORY.2, %block_400fed ]
  %1162 = load i64, i64* %RBP, align 8
  %1163 = add i64 %1162, -20
  %1164 = add i64 %1161, 3
  store i64 %1164, i64* %PC, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RAX, align 8, !tbaa !2428
  %1168 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RCX, align 8, !tbaa !2428
  %1170 = add i64 %1162, -4
  %1171 = add i64 %1161, 13
  store i64 %1171, i64* %PC, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, %1168
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX, align 8, !tbaa !2428
  %1176 = lshr i32 %1174, 31
  %1177 = sub i32 %1166, %1174
  %1178 = icmp ult i32 %1166, %1174
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %14, align 1, !tbaa !2432
  %1180 = and i32 %1177, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180) #12
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %15, align 1, !tbaa !2446
  %1185 = xor i32 %1174, %1166
  %1186 = xor i32 %1185, %1177
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %16, align 1, !tbaa !2447
  %1190 = icmp eq i32 %1177, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %17, align 1, !tbaa !2448
  %1192 = lshr i32 %1177, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %18, align 1, !tbaa !2449
  %1194 = lshr i32 %1166, 31
  %1195 = xor i32 %1176, %1194
  %1196 = xor i32 %1192, %1194
  %1197 = add nuw nsw i32 %1196, %1195
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %19, align 1, !tbaa !2450
  %1200 = icmp ne i8 %1193, 0
  %1201 = xor i1 %1200, %1198
  %.v44 = select i1 %1201, i64 21, i64 488
  %1202 = add i64 %1161, %.v44
  %1203 = add i64 %1202, 5
  store i64 %1203, i64* %PC, align 8
  br i1 %1201, label %block_400e28, label %block_400ffb

block_400d11:                                     ; preds = %block_400cf0
  %1204 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %1205 = add i32 %1204, 1
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RAX, align 8, !tbaa !2428
  %1207 = icmp eq i32 %1204, -1
  %1208 = icmp eq i32 %1205, 0
  %1209 = or i1 %1207, %1208
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %14, align 1, !tbaa !2432
  %1211 = and i32 %1205, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211) #12
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %15, align 1, !tbaa !2446
  %1216 = xor i32 %1205, %1204
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %16, align 1, !tbaa !2447
  %1220 = zext i1 %1208 to i8
  store i8 %1220, i8* %17, align 1, !tbaa !2448
  %1221 = lshr i32 %1205, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %18, align 1, !tbaa !2449
  %1223 = lshr i32 %1204, 31
  %1224 = xor i32 %1221, %1223
  %1225 = add nuw nsw i32 %1224, %1221
  %1226 = icmp eq i32 %1225, 2
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %19, align 1, !tbaa !2450
  store i32 %1205, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %1228 = load i64, i64* %RBP, align 8
  %1229 = add i64 %1228, -4
  %1230 = add i64 %41, 20
  store i64 %1230, i64* %PC, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RAX, align 8, !tbaa !2428
  %1234 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %1235 = sub i32 %1232, %1234
  %1236 = icmp ult i32 %1232, %1234
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %14, align 1, !tbaa !2432
  %1238 = and i32 %1235, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238) #12
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %15, align 1, !tbaa !2446
  %1243 = xor i32 %1234, %1232
  %1244 = xor i32 %1243, %1235
  %1245 = lshr i32 %1244, 4
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %16, align 1, !tbaa !2447
  %1248 = icmp eq i32 %1235, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %17, align 1, !tbaa !2448
  %1250 = lshr i32 %1235, 31
  %1251 = trunc i32 %1250 to i8
  store i8 %1251, i8* %18, align 1, !tbaa !2449
  %1252 = lshr i32 %1232, 31
  %1253 = lshr i32 %1234, 31
  %1254 = xor i32 %1253, %1252
  %1255 = xor i32 %1250, %1252
  %1256 = add nuw nsw i32 %1255, %1254
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %19, align 1, !tbaa !2450
  %.v42 = select i1 %1248, i64 33, i64 234
  %1259 = add i64 %41, %.v42
  store i64 %1259, i64* %PC, align 8, !tbaa !2428
  br i1 %1248, label %block_400d32, label %block_400dfb

block_400f0e:                                     ; preds = %block_400f04, %block_400efa
  %1260 = phi i64 [ %1370, %block_400f04 ], [ %99, %block_400efa ]
  %1261 = add i64 %73, -28
  %1262 = add i64 %1260, 3
  store i64 %1262, i64* %PC, align 8
  %1263 = inttoptr i64 %1261 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RAX, align 8, !tbaa !2428
  %1266 = add i64 %73, -32
  %1267 = add i64 %1260, 6
  store i64 %1267, i64* %PC, align 8
  %1268 = inttoptr i64 %1266 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = sub i32 %1264, %1269
  %1271 = icmp ult i32 %1264, %1269
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %14, align 1, !tbaa !2432
  %1273 = and i32 %1270, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273) #12
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %15, align 1, !tbaa !2446
  %1278 = xor i32 %1269, %1264
  %1279 = xor i32 %1278, %1270
  %1280 = lshr i32 %1279, 4
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %16, align 1, !tbaa !2447
  %1283 = icmp eq i32 %1270, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %17, align 1, !tbaa !2448
  %1285 = lshr i32 %1270, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %18, align 1, !tbaa !2449
  %1287 = lshr i32 %1264, 31
  %1288 = lshr i32 %1269, 31
  %1289 = xor i32 %1288, %1287
  %1290 = xor i32 %1285, %1287
  %1291 = add nuw nsw i32 %1290, %1289
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %19, align 1, !tbaa !2450
  %1294 = icmp ne i8 %1286, 0
  %1295 = xor i1 %1294, %1292
  %.v55 = select i1 %1295, i64 12, i64 30
  %1296 = add i64 %1260, %.v55
  store i64 %1296, i64* %PC, align 8, !tbaa !2428
  br i1 %1295, label %block_400f1a, label %block_400f2c

block_400e0c:                                     ; preds = %block_400e02
  %1297 = add i64 %1372, -20
  %1298 = add i64 %1400, 7
  store i64 %1298, i64* %PC, align 8
  %1299 = inttoptr i64 %1297 to i32*
  store i32 0, i32* %1299, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400e13

block_400fda:                                     ; preds = %block_400ef5, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1, %block_400ed6, %block_400ebd, %block_400e6c
  %1300 = phi i64 [ %400, %block_400ebd ], [ %652, %block_400ed6 ], [ %.pre38, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %1106, %block_400ef5 ], [ %340, %block_400e6c ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.4, %block_400ebd ], [ %MEMORY.4, %block_400ed6 ], [ %1031, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %328, %block_400ef5 ], [ %MEMORY.4, %block_400e6c ]
  %1301 = load i64, i64* %RBP, align 8
  %1302 = add i64 %1301, -24
  %1303 = add i64 %1300, 3
  store i64 %1303, i64* %PC, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = add i32 %1305, 1
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX, align 8, !tbaa !2428
  %1308 = icmp eq i32 %1305, -1
  %1309 = icmp eq i32 %1306, 0
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %14, align 1, !tbaa !2432
  %1312 = and i32 %1306, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312) #12
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %15, align 1, !tbaa !2446
  %1317 = xor i32 %1306, %1305
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %16, align 1, !tbaa !2447
  %1321 = zext i1 %1309 to i8
  store i8 %1321, i8* %17, align 1, !tbaa !2448
  %1322 = lshr i32 %1306, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %18, align 1, !tbaa !2449
  %1324 = lshr i32 %1305, 31
  %1325 = xor i32 %1322, %1324
  %1326 = add nuw nsw i32 %1325, %1322
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %19, align 1, !tbaa !2450
  %1329 = add i64 %1300, 9
  store i64 %1329, i64* %PC, align 8
  store i32 %1306, i32* %1304, align 4
  %1330 = load i64, i64* %PC, align 8
  %1331 = add i64 %1330, -409
  store i64 %1331, i64* %PC, align 8, !tbaa !2428
  br label %block_400e4a

block_400dd6:                                     ; preds = %block_400d7e
  %1332 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %1332, i64* %RDI, align 8, !tbaa !2428
  %1333 = load i64, i64* %RBP, align 8
  %1334 = add i64 %1333, -4
  %1335 = add i64 %650, 11
  store i64 %1335, i64* %PC, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RSI, align 8, !tbaa !2428
  %1339 = add i64 %650, -838
  %1340 = add i64 %650, 16
  %1341 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1342 = add i64 %1341, -8
  %1343 = inttoptr i64 %1342 to i64*
  store i64 %1340, i64* %1343, align 8
  store i64 %1342, i64* %RSP, align 8, !tbaa !2428
  store i64 %1339, i64* %PC, align 8, !tbaa !2428
  %1344 = tail call %struct.Memory* @sub_400a90_printSolution_renamed_(%struct.State* nonnull %0, i64 %1339, %struct.Memory* %621)
  %1345 = load i64, i64* %PC, align 8
  %1346 = add i64 %1345, 11
  store i64 %1346, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  br label %block_400df1

block_400f04:                                     ; preds = %block_400efa
  %1347 = add i64 %99, 4
  store i64 %1347, i64* %PC, align 8
  %1348 = load i32, i32* %76, align 4
  %1349 = add i32 %1348, -2
  %1350 = icmp ult i32 %1348, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %14, align 1, !tbaa !2432
  %1352 = and i32 %1349, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352) #12
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %15, align 1, !tbaa !2446
  %1357 = xor i32 %1349, %1348
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %16, align 1, !tbaa !2447
  %1361 = icmp eq i32 %1349, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %17, align 1, !tbaa !2448
  %1363 = lshr i32 %1349, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %18, align 1, !tbaa !2449
  %1365 = lshr i32 %1348, 31
  %1366 = xor i32 %1363, %1365
  %1367 = add nuw nsw i32 %1366, %1365
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %19, align 1, !tbaa !2450
  %.v54 = select i1 %1361, i64 10, i64 40
  %1370 = add i64 %99, %.v54
  store i64 %1370, i64* %PC, align 8, !tbaa !2428
  br i1 %1361, label %block_400f0e, label %block_400f2c

block_400e02:                                     ; preds = %block_400dfb, %block_400ffb
  %1371 = phi i64 [ %.pre, %block_400dfb ], [ %71, %block_400ffb ]
  %MEMORY.14 = phi %struct.Memory* [ %2, %block_400dfb ], [ %MEMORY.11, %block_400ffb ]
  %1372 = load i64, i64* %RBP, align 8
  %1373 = add i64 %1372, -12
  %1374 = add i64 %1371, 4
  store i64 %1374, i64* %PC, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = add i32 %1376, -4
  %1378 = icmp ult i32 %1376, 4
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %14, align 1, !tbaa !2432
  %1380 = and i32 %1377, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380) #12
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %15, align 1, !tbaa !2446
  %1385 = xor i32 %1377, %1376
  %1386 = lshr i32 %1385, 4
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  store i8 %1388, i8* %16, align 1, !tbaa !2447
  %1389 = icmp eq i32 %1377, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %17, align 1, !tbaa !2448
  %1391 = lshr i32 %1377, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %18, align 1, !tbaa !2449
  %1393 = lshr i32 %1376, 31
  %1394 = xor i32 %1391, %1393
  %1395 = add nuw nsw i32 %1394, %1393
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %19, align 1, !tbaa !2450
  %1398 = icmp ne i8 %1392, 0
  %1399 = xor i1 %1398, %1396
  %.demorgan = or i1 %1389, %1399
  %.v43 = select i1 %.demorgan, i64 10, i64 524
  %1400 = add i64 %1371, %.v43
  store i64 %1400, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400e0c, label %block_40100e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400750_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400750:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
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
  br i1 %29, label %block_400788, label %block_400773

block_400773:                                     ; preds = %block_400750
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400788

block_400788:                                     ; preds = %block_400773, %block_400750
  %35 = phi i64 [ %34, %block_400773 ], [ %33, %block_400750 ]
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
define %struct.Memory* @sub_4013b4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4013b4:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_4012d0_search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4012d0:
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
  %14 = tail call %struct.Memory* @sub_401020_doSearch_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_400a90_printSolution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a90:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #12
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  br label %block_400aa6

block_400c1f:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %59 = add i64 %275, -1439
  %60 = add i64 %275, 17
  %61 = load i64, i64* %RSP, align 8, !tbaa !2428
  %62 = add i64 %61, -8
  %63 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %63, align 8
  store i64 %62, i64* %RSP, align 8, !tbaa !2428
  store i64 %59, i64* %PC, align 8, !tbaa !2428
  %64 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %227)
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -80
  %67 = load i32, i32* %EAX, align 4
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %70, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400aff:                                     ; preds = %block_400ab2
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -32
  %73 = add i64 %497, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RAX, align 8, !tbaa !2428
  %76 = shl i64 %75, 3
  %77 = add i64 %76, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 40)
  %78 = add i64 %497, 12
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RCX, align 8, !tbaa !2428
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  switch i64 %80, label %554 [
    i64 4197233, label %block_400b71
    i64 4197208, label %block_400b58
    i64 4197133, label %block_400b0d
    i64 4197183, label %block_400b3f
    i64 4197158, label %block_400b26
  ]

block_400c33:                                     ; preds = %block_400c06, %block_400c1f
  %81 = phi i64 [ %.pre12, %block_400c1f ], [ %419, %block_400c06 ]
  %MEMORY.0 = phi %struct.Memory* [ %64, %block_400c1f ], [ %411, %block_400c06 ]
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -16
  %84 = add i64 %81, 8
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = icmp eq i32 %86, -1
  %90 = icmp eq i32 %87, 0
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %15, align 1, !tbaa !2432
  %93 = and i32 %87, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93) #12
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %22, align 1, !tbaa !2446
  %98 = xor i32 %87, %86
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %27, align 1, !tbaa !2447
  %102 = zext i1 %90 to i8
  store i8 %102, i8* %30, align 1, !tbaa !2448
  %103 = lshr i32 %87, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %33, align 1, !tbaa !2449
  %105 = lshr i32 %86, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %103
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %39, align 1, !tbaa !2450
  %110 = add i64 %81, 14
  store i64 %110, i64* %PC, align 8
  store i32 %87, i32* %85, align 4
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, -411
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  br label %block_400aa6

block_400b71:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %113 = load i64, i64* %RSP, align 8, !tbaa !2428
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 4197250, i64* %115, align 8
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %116 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %439)
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -60
  %119 = load i32, i32* %EAX, align 4
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %122, align 4
  %123 = load i64, i64* %PC, align 8
  %124 = add i64 %123, 43
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400bb0:                                     ; preds = %block_400b58, %block_400b3f, %block_400b26, %block_400b8a, %block_400b0d, %block_400b71
  %125 = phi i64 [ %.pre11, %block_400b8a ], [ %355, %block_400b26 ], [ %367, %block_400b3f ], [ %288, %block_400b0d ], [ %553, %block_400b58 ], [ %124, %block_400b71 ]
  %MEMORY.1 = phi %struct.Memory* [ %337, %block_400b8a ], [ %347, %block_400b26 ], [ %359, %block_400b3f ], [ %280, %block_400b0d ], [ %545, %block_400b58 ], [ %116, %block_400b71 ]
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -8
  %128 = add i64 %125, 4
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = add i64 %126, -16
  %132 = add i64 %125, 8
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 12
  store i64 %136, i64* %RCX, align 8, !tbaa !2428
  %137 = lshr i64 %136, 63
  %138 = add i64 %136, %130
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = icmp ult i64 %138, %130
  %140 = icmp ult i64 %138, %136
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %15, align 1, !tbaa !2432
  %143 = trunc i64 %138 to i32
  %144 = and i32 %143, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #12
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %22, align 1, !tbaa !2446
  %149 = xor i64 %136, %130
  %150 = xor i64 %149, %138
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %27, align 1, !tbaa !2447
  %154 = icmp eq i64 %138, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %30, align 1, !tbaa !2448
  %156 = lshr i64 %138, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %33, align 1, !tbaa !2449
  %158 = lshr i64 %130, 63
  %159 = xor i64 %156, %158
  %160 = xor i64 %156, %137
  %161 = add nuw nsw i64 %159, %160
  %162 = icmp eq i64 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %39, align 1, !tbaa !2450
  %164 = add i64 %138, 4
  %165 = add i64 %125, 18
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %RSI, align 8, !tbaa !2428
  %169 = add i64 %125, 22
  store i64 %169, i64* %PC, align 8
  %170 = load i64, i64* %129, align 8
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = add i64 %125, 26
  store i64 %171, i64* %PC, align 8
  %172 = load i32, i32* %133, align 4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, 12
  store i64 %174, i64* %RCX, align 8, !tbaa !2428
  %175 = lshr i64 %174, 63
  %176 = add i64 %174, %170
  store i64 %176, i64* %RAX, align 8, !tbaa !2428
  %177 = icmp ult i64 %176, %170
  %178 = icmp ult i64 %176, %174
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %15, align 1, !tbaa !2432
  %181 = trunc i64 %176 to i32
  %182 = and i32 %181, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #12
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %22, align 1, !tbaa !2446
  %187 = xor i64 %174, %170
  %188 = xor i64 %187, %176
  %189 = lshr i64 %188, 4
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %27, align 1, !tbaa !2447
  %192 = icmp eq i64 %176, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %30, align 1, !tbaa !2448
  %194 = lshr i64 %176, 63
  %195 = trunc i64 %194 to i8
  store i8 %195, i8* %33, align 1, !tbaa !2449
  %196 = lshr i64 %170, 63
  %197 = xor i64 %194, %196
  %198 = xor i64 %194, %175
  %199 = add nuw nsw i64 %197, %198
  %200 = icmp eq i64 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %39, align 1, !tbaa !2450
  store i64 %176, i64* %RDI, align 8, !tbaa !2428
  %202 = load i64, i64* %RBP, align 8
  %203 = add i64 %202, -68
  %204 = add i64 %125, 39
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i32*
  store i32 %167, i32* %205, align 4
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, -487
  %208 = add i64 %206, 5
  %209 = load i64, i64* %RSP, align 8, !tbaa !2428
  %210 = add i64 %209, -8
  %211 = inttoptr i64 %210 to i64*
  store i64 %208, i64* %211, align 8
  store i64 %210, i64* %RSP, align 8, !tbaa !2428
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  %212 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %207, %struct.Memory* %MEMORY.1)
  %213 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -68
  %216 = add i64 %213, 13
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RSI, align 8, !tbaa !2428
  %220 = load i32, i32* %EAX, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %222 = add i64 %213, -1372
  %223 = add i64 %213, 22
  %224 = load i64, i64* %RSP, align 8, !tbaa !2428
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226, align 8
  store i64 %225, i64* %RSP, align 8, !tbaa !2428
  store i64 %222, i64* %PC, align 8, !tbaa !2428
  %227 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %212)
  %228 = load i64, i64* %RBP, align 8
  %229 = add i64 %228, -16
  %230 = load i64, i64* %PC, align 8
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RDX, align 8, !tbaa !2428
  %235 = add i64 %228, -12
  %236 = add i64 %230, 6
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, -1
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RSI, align 8, !tbaa !2428
  %241 = lshr i32 %239, 31
  %242 = sub i32 %233, %239
  %243 = icmp ult i32 %233, %239
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %15, align 1, !tbaa !2432
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245) #12
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %22, align 1, !tbaa !2446
  %250 = xor i32 %239, %233
  %251 = xor i32 %250, %242
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %27, align 1, !tbaa !2447
  %255 = icmp eq i32 %242, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %30, align 1, !tbaa !2448
  %257 = lshr i32 %242, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %33, align 1, !tbaa !2449
  %259 = lshr i32 %233, 31
  %260 = xor i32 %241, %259
  %261 = xor i32 %257, %259
  %262 = add nuw nsw i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %39, align 1, !tbaa !2450
  %265 = add i64 %228, -72
  %266 = load i32, i32* %EAX, align 4
  %267 = add i64 %230, 14
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %265 to i32*
  store i32 %266, i32* %268, align 4
  %269 = load i64, i64* %PC, align 8
  %270 = load i8, i8* %33, align 1, !tbaa !2449
  %271 = icmp ne i8 %270, 0
  %272 = load i8, i8* %39, align 1, !tbaa !2450
  %273 = icmp ne i8 %272, 0
  %274 = xor i1 %271, %273
  %.v18 = select i1 %274, i64 6, i64 31
  %275 = add i64 %269, %.v18
  %276 = add i64 %275, 10
  store i64 %276, i64* %PC, align 8
  br i1 %274, label %block_400c06, label %block_400c1f

block_400b0d:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %277 = load i64, i64* %RSP, align 8, !tbaa !2428
  %278 = add i64 %277, -8
  %279 = inttoptr i64 %278 to i64*
  store i64 4197150, i64* %279, align 8
  store i64 %278, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %280 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %439)
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -44
  %283 = load i32, i32* %EAX, align 4
  %284 = load i64, i64* %PC, align 8
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %282 to i32*
  store i32 %283, i32* %286, align 4
  %287 = load i64, i64* %PC, align 8
  %288 = add i64 %287, 143
  store i64 %288, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400b8a:                                     ; preds = %block_400ab2
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -8
  %291 = add i64 %497, 14
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = add i64 %289, -16
  %295 = add i64 %497, 18
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = mul nsw i64 %298, 12
  store i64 %299, i64* %RCX, align 8, !tbaa !2428
  %300 = lshr i64 %299, 63
  %301 = add i64 %299, %293
  store i64 %301, i64* %RAX, align 8, !tbaa !2428
  %302 = icmp ult i64 %301, %293
  %303 = icmp ult i64 %301, %299
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %15, align 1, !tbaa !2432
  %306 = trunc i64 %301 to i32
  %307 = and i32 %306, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307) #12
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %22, align 1, !tbaa !2446
  %312 = xor i64 %299, %293
  %313 = xor i64 %312, %301
  %314 = lshr i64 %313, 4
  %315 = trunc i64 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %27, align 1, !tbaa !2447
  %317 = icmp eq i64 %301, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %30, align 1, !tbaa !2448
  %319 = lshr i64 %301, 63
  %320 = trunc i64 %319 to i8
  store i8 %320, i8* %33, align 1, !tbaa !2449
  %321 = lshr i64 %293, 63
  %322 = xor i64 %319, %321
  %323 = xor i64 %319, %300
  %324 = add nuw nsw i64 %322, %323
  %325 = icmp eq i64 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %39, align 1, !tbaa !2450
  %327 = add i64 %301, 8
  %328 = add i64 %497, 28
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %332 = add i64 %497, -1290
  %333 = add i64 %497, 35
  %334 = load i64, i64* %RSP, align 8, !tbaa !2428
  %335 = add i64 %334, -8
  %336 = inttoptr i64 %335 to i64*
  store i64 %333, i64* %336, align 8
  store i64 %335, i64* %RSP, align 8, !tbaa !2428
  store i64 %332, i64* %PC, align 8, !tbaa !2428
  %337 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %439)
  %338 = load i64, i64* %RBP, align 8
  %339 = add i64 %338, -64
  %340 = load i32, i32* %EAX, align 4
  %341 = load i64, i64* %PC, align 8
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %343, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400bb0

block_400b26:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %344 = load i64, i64* %RSP, align 8, !tbaa !2428
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 4197175, i64* %346, align 8
  store i64 %345, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %347 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %439)
  %348 = load i64, i64* %RBP, align 8
  %349 = add i64 %348, -48
  %350 = load i32, i32* %EAX, align 4
  %351 = load i64, i64* %PC, align 8
  %352 = add i64 %351, 3
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %349 to i32*
  store i32 %350, i32* %353, align 4
  %354 = load i64, i64* %PC, align 8
  %355 = add i64 %354, 118
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400b3f:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %356 = load i64, i64* %RSP, align 8, !tbaa !2428
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 4197200, i64* %358, align 8
  store i64 %357, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %359 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %439)
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -52
  %362 = load i32, i32* %EAX, align 4
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %361 to i32*
  store i32 %362, i32* %365, align 4
  %366 = load i64, i64* %PC, align 8
  %367 = add i64 %366, 93
  store i64 %367, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400aa6:                                     ; preds = %block_400c33, %block_400a90
  %368 = phi i64 [ %.pre, %block_400a90 ], [ %112, %block_400c33 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400a90 ], [ %MEMORY.0, %block_400c33 ]
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -16
  %371 = add i64 %368, 3
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = add i64 %369, -12
  %376 = add i64 %368, 6
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = sub i32 %373, %378
  %380 = icmp ult i32 %373, %378
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %15, align 1, !tbaa !2432
  %382 = and i32 %379, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382) #12
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %22, align 1, !tbaa !2446
  %387 = xor i32 %378, %373
  %388 = xor i32 %387, %379
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %27, align 1, !tbaa !2447
  %392 = icmp eq i32 %379, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %30, align 1, !tbaa !2448
  %394 = lshr i32 %379, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %33, align 1, !tbaa !2449
  %396 = lshr i32 %373, 31
  %397 = lshr i32 %378, 31
  %398 = xor i32 %397, %396
  %399 = xor i32 %394, %396
  %400 = add nuw nsw i32 %399, %398
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %39, align 1, !tbaa !2450
  %403 = icmp ne i8 %395, 0
  %404 = xor i1 %403, %401
  %.v = select i1 %404, i64 12, i64 416
  %405 = add i64 %368, %.v
  store i64 %405, i64* %PC, align 8, !tbaa !2428
  br i1 %404, label %block_400ab2, label %block_400c46

block_400c06:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %406 = add i64 %275, -1414
  %407 = add i64 %275, 17
  %408 = load i64, i64* %RSP, align 8, !tbaa !2428
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %RSP, align 8, !tbaa !2428
  store i64 %406, i64* %PC, align 8, !tbaa !2428
  %411 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %227)
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -76
  %414 = load i32, i32* %EAX, align 4
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %417, align 4
  %418 = load i64, i64* %PC, align 8
  %419 = add i64 %418, 25
  store i64 %419, i64* %PC, align 8, !tbaa !2428
  br label %block_400c33

block_400ab2:                                     ; preds = %block_400aa6
  %420 = add i64 %369, -8
  %421 = add i64 %405, 4
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RAX, align 8, !tbaa !2428
  %424 = add i64 %405, 8
  store i64 %424, i64* %PC, align 8
  %425 = load i32, i32* %372, align 4
  %426 = sext i32 %425 to i64
  %427 = mul nsw i64 %426, 3
  store i64 %427, i64* %RCX, align 8, !tbaa !2428
  %428 = mul nsw i64 %426, 12
  %429 = add i64 %423, %428
  %430 = add i64 %405, 15
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 %58, i8* %22, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %30, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %434 = add i64 %405, -1074
  %435 = add i64 %405, 35
  %436 = load i64, i64* %RSP, align 8, !tbaa !2428
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %RSP, align 8, !tbaa !2428
  store i64 %434, i64* %PC, align 8, !tbaa !2428
  %439 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %440 = load i64, i64* %RBP, align 8
  %441 = add i64 %440, -8
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %441 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RCX, align 8, !tbaa !2428
  %446 = add i64 %440, -16
  %447 = add i64 %442, 8
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = mul nsw i64 %450, 3
  store i64 %451, i64* %RDI, align 8, !tbaa !2428
  %452 = mul nsw i64 %450, 12
  %453 = add i64 %452, 8
  %454 = add i64 %453, %445
  %455 = add i64 %442, 16
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RDX, align 8, !tbaa !2428
  store i64 %458, i64* %RCX, align 8, !tbaa !2428
  %459 = add nsw i64 %458, -4
  store i64 %459, i64* %RDI, align 8, !tbaa !2428
  %460 = icmp ult i32 %457, 4
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %15, align 1, !tbaa !2432
  %462 = trunc i64 %459 to i32
  %463 = and i32 %462, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463) #12
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %22, align 1, !tbaa !2446
  %468 = xor i64 %459, %458
  %469 = lshr i64 %468, 4
  %470 = trunc i64 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %27, align 1, !tbaa !2447
  %472 = icmp eq i64 %459, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %30, align 1, !tbaa !2448
  %474 = lshr i64 %459, 63
  %475 = trunc i64 %474 to i8
  store i8 %475, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %476 = add i64 %440, -20
  %477 = load i32, i32* %EAX, align 4
  %478 = add i64 %442, 28
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %476 to i32*
  store i32 %477, i32* %479, align 4
  %480 = load i64, i64* %RBP, align 8
  %481 = add i64 %480, -32
  %482 = load i64, i64* %RCX, align 8
  %483 = load i64, i64* %PC, align 8
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %481 to i64*
  store i64 %482, i64* %485, align 8
  %486 = load i64, i64* %RBP, align 8
  %487 = add i64 %486, -40
  %488 = load i64, i64* %RDI, align 8
  %489 = load i64, i64* %PC, align 8
  %490 = add i64 %489, 4
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %487 to i64*
  store i64 %488, i64* %491, align 8
  %492 = load i64, i64* %PC, align 8
  %493 = load i8, i8* %15, align 1, !tbaa !2432
  %494 = load i8, i8* %30, align 1, !tbaa !2448
  %495 = or i8 %494, %493
  %496 = icmp eq i8 %495, 0
  %.v17 = select i1 %496, i64 145, i64 6
  %497 = add i64 %492, %.v17
  store i64 %497, i64* %PC, align 8, !tbaa !2428
  br i1 %496, label %block_400b8a, label %block_400aff

block_400c46:                                     ; preds = %block_400aa6
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %498 = add i64 %405, -1478
  %499 = add i64 %405, 17
  %500 = load i64, i64* %RSP, align 8, !tbaa !2428
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %499, i64* %502, align 8
  store i64 %501, i64* %RSP, align 8, !tbaa !2428
  store i64 %498, i64* %PC, align 8, !tbaa !2428
  %503 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -84
  %506 = load i32, i32* %EAX, align 4
  %507 = load i64, i64* %PC, align 8
  %508 = add i64 %507, 3
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %509, align 4
  %510 = load i64, i64* %RSP, align 8
  %511 = load i64, i64* %PC, align 8
  %512 = add i64 %510, 96
  store i64 %512, i64* %RSP, align 8, !tbaa !2428
  %513 = icmp ugt i64 %510, -97
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %15, align 1, !tbaa !2432
  %515 = trunc i64 %512 to i32
  %516 = and i32 %515, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516) #12
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %22, align 1, !tbaa !2446
  %521 = xor i64 %512, %510
  %522 = lshr i64 %521, 4
  %523 = trunc i64 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %27, align 1, !tbaa !2447
  %525 = icmp eq i64 %512, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %30, align 1, !tbaa !2448
  %527 = lshr i64 %512, 63
  %528 = trunc i64 %527 to i8
  store i8 %528, i8* %33, align 1, !tbaa !2449
  %529 = lshr i64 %510, 63
  %530 = xor i64 %527, %529
  %531 = add nuw nsw i64 %530, %527
  %532 = icmp eq i64 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %39, align 1, !tbaa !2450
  %534 = add i64 %511, 5
  store i64 %534, i64* %PC, align 8
  %535 = add i64 %510, 104
  %536 = inttoptr i64 %512 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RBP, align 8, !tbaa !2428
  store i64 %535, i64* %RSP, align 8, !tbaa !2428
  %538 = add i64 %511, 6
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %535 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %PC, align 8, !tbaa !2428
  %541 = add i64 %510, 112
  store i64 %541, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %503

block_400b58:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %542 = load i64, i64* %RSP, align 8, !tbaa !2428
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 4197225, i64* %544, align 8
  store i64 %543, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %545 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %439)
  %546 = load i64, i64* %RBP, align 8
  %547 = add i64 %546, -56
  %548 = load i32, i32* %EAX, align 4
  %549 = load i64, i64* %PC, align 8
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %547 to i32*
  store i32 %548, i32* %551, align 4
  %552 = load i64, i64* %PC, align 8
  %553 = add i64 %552, 68
  store i64 %553, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

; <label>:554:                                    ; preds = %block_400aff
  %555 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %80, %struct.Memory* %439)
  ret %struct.Memory* %555
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b71(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %block_400b71

block_400aff:                                     ; preds = %block_400ab2
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -32
  %18 = add i64 %270, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = shl i64 %20, 3
  %22 = add i64 %21, add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 40)
  %23 = add i64 %270, 12
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  switch i64 %25, label %479 [
    i64 4197233, label %block_400b71.loopexit
    i64 4197208, label %block_400b58
    i64 4197133, label %block_400b0d
    i64 4197183, label %block_400b3f
    i64 4197158, label %block_400b26
  ]

block_400b71.loopexit:                            ; preds = %block_400aff
  br label %block_400b71

block_400b71:                                     ; preds = %block_400b71.loopexit, %3
  %26 = phi i64 [ %1, %3 ], [ 4197233, %block_400b71.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %212, %block_400b71.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %27 = add i64 %26, -1265
  %28 = add i64 %26, 17
  %29 = load i64, i64* %RSP, align 8, !tbaa !2428
  %30 = add i64 %29, -8
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  store i64 %30, i64* %RSP, align 8, !tbaa !2428
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  %32 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %33 = load i64, i64* %RBP, align 8
  %34 = add i64 %33, -60
  %35 = load i32, i32* %EAX, align 4
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %34 to i32*
  store i32 %35, i32* %38, align 4
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 43
  store i64 %40, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0

block_400bb0:                                     ; preds = %block_400bb0.backedge, %block_400b71
  %41 = phi i64 [ %40, %block_400b71 ], [ %.be, %block_400bb0.backedge ]
  %MEMORY.1 = phi %struct.Memory* [ %32, %block_400b71 ], [ %MEMORY.1.be, %block_400bb0.backedge ]
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -8
  %44 = add i64 %41, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = add i64 %42, -16
  %48 = add i64 %41, 8
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, 12
  store i64 %52, i64* %RCX, align 8, !tbaa !2428
  %53 = lshr i64 %52, 63
  %54 = add i64 %52, %46
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = icmp ult i64 %54, %46
  %56 = icmp ult i64 %54, %52
  %57 = or i1 %55, %56
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %6, align 1, !tbaa !2432
  %59 = trunc i64 %54 to i32
  %60 = and i32 %59, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60) #12
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %7, align 1, !tbaa !2446
  %65 = xor i64 %52, %46
  %66 = xor i64 %65, %54
  %67 = lshr i64 %66, 4
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  store i8 %69, i8* %8, align 1, !tbaa !2447
  %70 = icmp eq i64 %54, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %9, align 1, !tbaa !2448
  %72 = lshr i64 %54, 63
  %73 = trunc i64 %72 to i8
  store i8 %73, i8* %10, align 1, !tbaa !2449
  %74 = lshr i64 %46, 63
  %75 = xor i64 %72, %74
  %76 = xor i64 %72, %53
  %77 = add nuw nsw i64 %75, %76
  %78 = icmp eq i64 %77, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %11, align 1, !tbaa !2450
  %80 = add i64 %54, 4
  %81 = add i64 %41, 18
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RSI, align 8, !tbaa !2428
  %85 = add i64 %41, 22
  store i64 %85, i64* %PC, align 8
  %86 = load i64, i64* %45, align 8
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = add i64 %41, 26
  store i64 %87, i64* %PC, align 8
  %88 = load i32, i32* %49, align 4
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, 12
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = lshr i64 %90, 63
  %92 = add i64 %90, %86
  store i64 %92, i64* %RAX, align 8, !tbaa !2428
  %93 = icmp ult i64 %92, %86
  %94 = icmp ult i64 %92, %90
  %95 = or i1 %93, %94
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %6, align 1, !tbaa !2432
  %97 = trunc i64 %92 to i32
  %98 = and i32 %97, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98) #12
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %7, align 1, !tbaa !2446
  %103 = xor i64 %90, %86
  %104 = xor i64 %103, %92
  %105 = lshr i64 %104, 4
  %106 = trunc i64 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %8, align 1, !tbaa !2447
  %108 = icmp eq i64 %92, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %9, align 1, !tbaa !2448
  %110 = lshr i64 %92, 63
  %111 = trunc i64 %110 to i8
  store i8 %111, i8* %10, align 1, !tbaa !2449
  %112 = lshr i64 %86, 63
  %113 = xor i64 %110, %112
  %114 = xor i64 %110, %91
  %115 = add nuw nsw i64 %113, %114
  %116 = icmp eq i64 %115, 2
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %11, align 1, !tbaa !2450
  store i64 %92, i64* %RDI, align 8, !tbaa !2428
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -68
  %120 = add i64 %41, 39
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 %83, i32* %121, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, -487
  %124 = add i64 %122, 5
  %125 = load i64, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %128 = tail call %struct.Memory* @sub_4009f0_calculate_renamed_(%struct.State* nonnull %0, i64 %123, %struct.Memory* %MEMORY.1)
  %129 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -68
  %132 = add i64 %129, 13
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RSI, align 8, !tbaa !2428
  %136 = load i32, i32* %EAX, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %138 = add i64 %129, -1372
  %139 = add i64 %129, 22
  %140 = load i64, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  store i64 %138, i64* %PC, align 8, !tbaa !2428
  %143 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -16
  %146 = load i64, i64* %PC, align 8
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RDX, align 8, !tbaa !2428
  %151 = add i64 %144, -12
  %152 = add i64 %146, 6
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, -1
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RSI, align 8, !tbaa !2428
  %157 = lshr i32 %155, 31
  %158 = sub i32 %149, %155
  %159 = icmp ult i32 %149, %155
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %6, align 1, !tbaa !2432
  %161 = and i32 %158, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #12
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %7, align 1, !tbaa !2446
  %166 = xor i32 %155, %149
  %167 = xor i32 %166, %158
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %8, align 1, !tbaa !2447
  %171 = icmp eq i32 %158, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %9, align 1, !tbaa !2448
  %173 = lshr i32 %158, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %10, align 1, !tbaa !2449
  %175 = lshr i32 %149, 31
  %176 = xor i32 %157, %175
  %177 = xor i32 %173, %175
  %178 = add nuw nsw i32 %177, %176
  %179 = icmp eq i32 %178, 2
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %11, align 1, !tbaa !2450
  %181 = add i64 %144, -72
  %182 = load i32, i32* %EAX, align 4
  %183 = add i64 %146, 14
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %184, align 4
  %185 = load i64, i64* %PC, align 8
  %186 = load i8, i8* %10, align 1, !tbaa !2449
  %187 = icmp ne i8 %186, 0
  %188 = load i8, i8* %11, align 1, !tbaa !2450
  %189 = icmp ne i8 %188, 0
  %190 = xor i1 %187, %189
  %.v101 = select i1 %190, i64 6, i64 31
  %191 = add i64 %185, %.v101
  %192 = add i64 %191, 10
  store i64 %192, i64* %PC, align 8
  br i1 %190, label %block_400c06, label %block_400c1f

block_400ab2:                                     ; preds = %block_400c33
  %193 = add i64 %314, -8
  %194 = add i64 %350, 4
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = add i64 %350, 8
  store i64 %197, i64* %PC, align 8
  %198 = load i32, i32* %317, align 4
  %199 = sext i32 %198 to i64
  %200 = mul nsw i64 %199, 3
  store i64 %200, i64* %RCX, align 8, !tbaa !2428
  %201 = mul nsw i64 %199, 12
  %202 = add i64 %196, %201
  %203 = add i64 %350, 15
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  store i8 %15, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %207 = add i64 %350, -1074
  %208 = add i64 %350, 35
  %209 = load i64, i64* %RSP, align 8, !tbaa !2428
  %210 = add i64 %209, -8
  %211 = inttoptr i64 %210 to i64*
  store i64 %208, i64* %211, align 8
  store i64 %210, i64* %RSP, align 8, !tbaa !2428
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  %212 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %213 = load i64, i64* %RBP, align 8
  %214 = add i64 %213, -8
  %215 = load i64, i64* %PC, align 8
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = add i64 %213, -16
  %220 = add i64 %215, 8
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %223, 3
  store i64 %224, i64* %RDI, align 8, !tbaa !2428
  %225 = mul nsw i64 %223, 12
  %226 = add i64 %225, 8
  %227 = add i64 %226, %218
  %228 = add i64 %215, 16
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RDX, align 8, !tbaa !2428
  store i64 %231, i64* %RCX, align 8, !tbaa !2428
  %232 = add nsw i64 %231, -4
  store i64 %232, i64* %RDI, align 8, !tbaa !2428
  %233 = icmp ult i32 %230, 4
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %6, align 1, !tbaa !2432
  %235 = trunc i64 %232 to i32
  %236 = and i32 %235, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236) #12
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %7, align 1, !tbaa !2446
  %241 = xor i64 %232, %231
  %242 = lshr i64 %241, 4
  %243 = trunc i64 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %8, align 1, !tbaa !2447
  %245 = icmp eq i64 %232, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %9, align 1, !tbaa !2448
  %247 = lshr i64 %232, 63
  %248 = trunc i64 %247 to i8
  store i8 %248, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %249 = add i64 %213, -20
  %250 = load i32, i32* %EAX, align 4
  %251 = add i64 %215, 28
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %249 to i32*
  store i32 %250, i32* %252, align 4
  %253 = load i64, i64* %RBP, align 8
  %254 = add i64 %253, -32
  %255 = load i64, i64* %RCX, align 8
  %256 = load i64, i64* %PC, align 8
  %257 = add i64 %256, 4
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %254 to i64*
  store i64 %255, i64* %258, align 8
  %259 = load i64, i64* %RBP, align 8
  %260 = add i64 %259, -40
  %261 = load i64, i64* %RDI, align 8
  %262 = load i64, i64* %PC, align 8
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %260 to i64*
  store i64 %261, i64* %264, align 8
  %265 = load i64, i64* %PC, align 8
  %266 = load i8, i8* %6, align 1, !tbaa !2432
  %267 = load i8, i8* %9, align 1, !tbaa !2448
  %268 = or i8 %267, %266
  %269 = icmp eq i8 %268, 0
  %.v102 = select i1 %269, i64 145, i64 6
  %270 = add i64 %265, %.v102
  store i64 %270, i64* %PC, align 8, !tbaa !2428
  br i1 %269, label %block_400b8a, label %block_400aff

block_400b0d:                                     ; preds = %block_400aff
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %271 = load i64, i64* %RSP, align 8, !tbaa !2428
  %272 = add i64 %271, -8
  %273 = inttoptr i64 %272 to i64*
  store i64 4197150, i64* %273, align 8
  store i64 %272, i64* %RSP, align 8, !tbaa !2428
  store i64 4195968, i64* %PC, align 8, !tbaa !2428
  %274 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %212)
  %275 = load i64, i64* %RBP, align 8
  %276 = add i64 %275, -44
  %277 = load i32, i32* %EAX, align 4
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %276 to i32*
  store i32 %277, i32* %280, align 4
  %281 = load i64, i64* %PC, align 8
  %282 = add i64 %281, 143
  store i64 %282, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb0.backedge

block_400bb0.backedge:                            ; preds = %block_400b0d, %block_400b8a
  %.be = phi i64 [ %.pre.pre, %block_400b8a ], [ %282, %block_400b0d ]
  %MEMORY.1.be = phi %struct.Memory* [ %399, %block_400b8a ], [ %274, %block_400b0d ]
  br label %block_400bb0

block_400c33:                                     ; preds = %block_400c06, %block_400c1f
  %283 = phi i64 [ %.pre79, %block_400c1f ], [ %475, %block_400c06 ]
  %MEMORY.2 = phi %struct.Memory* [ %411, %block_400c1f ], [ %467, %block_400c06 ]
  %284 = load i64, i64* %RBP, align 8
  %285 = add i64 %284, -16
  %286 = add i64 %283, 8
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = icmp eq i32 %288, -1
  %292 = icmp eq i32 %289, 0
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %6, align 1, !tbaa !2432
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295) #12
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %7, align 1, !tbaa !2446
  %300 = xor i32 %289, %288
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %8, align 1, !tbaa !2447
  %304 = zext i1 %292 to i8
  store i8 %304, i8* %9, align 1, !tbaa !2448
  %305 = lshr i32 %289, 31
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %10, align 1, !tbaa !2449
  %307 = lshr i32 %288, 31
  %308 = xor i32 %305, %307
  %309 = add nuw nsw i32 %308, %305
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %11, align 1, !tbaa !2450
  %312 = add i64 %283, 14
  store i64 %312, i64* %PC, align 8
  store i32 %289, i32* %287, align 4
  %313 = load i64, i64* %PC, align 8
  %314 = load i64, i64* %RBP, align 8
  %315 = add i64 %314, -16
  %316 = add i64 %313, -408
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RAX, align 8, !tbaa !2428
  %320 = add i64 %314, -12
  %321 = add i64 %313, -405
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sub i32 %318, %323
  %325 = icmp ult i32 %318, %323
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %6, align 1, !tbaa !2432
  %327 = and i32 %324, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327) #12
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %7, align 1, !tbaa !2446
  %332 = xor i32 %323, %318
  %333 = xor i32 %332, %324
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  store i8 %336, i8* %8, align 1, !tbaa !2447
  %337 = icmp eq i32 %324, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %9, align 1, !tbaa !2448
  %339 = lshr i32 %324, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %10, align 1, !tbaa !2449
  %341 = lshr i32 %318, 31
  %342 = lshr i32 %323, 31
  %343 = xor i32 %342, %341
  %344 = xor i32 %339, %341
  %345 = add nuw nsw i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %11, align 1, !tbaa !2450
  %348 = icmp ne i8 %340, 0
  %349 = xor i1 %348, %346
  %.v = select i1 %349, i64 -399, i64 5
  %350 = add i64 %313, %.v
  store i64 %350, i64* %PC, align 8, !tbaa !2428
  br i1 %349, label %block_400ab2, label %block_400c46

block_400b8a:                                     ; preds = %block_400ab2
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %351 = load i64, i64* %RBP, align 8
  %352 = add i64 %351, -8
  %353 = add i64 %270, 14
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %RAX, align 8, !tbaa !2428
  %356 = add i64 %351, -16
  %357 = add i64 %270, 18
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = mul nsw i64 %360, 12
  store i64 %361, i64* %RCX, align 8, !tbaa !2428
  %362 = lshr i64 %361, 63
  %363 = add i64 %361, %355
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = icmp ult i64 %363, %355
  %365 = icmp ult i64 %363, %361
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %6, align 1, !tbaa !2432
  %368 = trunc i64 %363 to i32
  %369 = and i32 %368, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #12
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %7, align 1, !tbaa !2446
  %374 = xor i64 %361, %355
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
  %383 = lshr i64 %355, 63
  %384 = xor i64 %381, %383
  %385 = xor i64 %381, %362
  %386 = add nuw nsw i64 %384, %385
  %387 = icmp eq i64 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %11, align 1, !tbaa !2450
  %389 = add i64 %363, 8
  %390 = add i64 %270, 28
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %394 = add i64 %270, -1290
  %395 = add i64 %270, 35
  %396 = load i64, i64* %RSP, align 8, !tbaa !2428
  %397 = add i64 %396, -8
  %398 = inttoptr i64 %397 to i64*
  store i64 %395, i64* %398, align 8
  store i64 %397, i64* %RSP, align 8, !tbaa !2428
  store i64 %394, i64* %PC, align 8, !tbaa !2428
  %399 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %212)
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -64
  %402 = load i32, i32* %EAX, align 4
  %403 = load i64, i64* %PC, align 8
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %401 to i32*
  store i32 %402, i32* %405, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400bb0.backedge

block_400c1f:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %406 = add i64 %191, -1439
  %407 = add i64 %191, 17
  %408 = load i64, i64* %RSP, align 8, !tbaa !2428
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %RSP, align 8, !tbaa !2428
  store i64 %406, i64* %PC, align 8, !tbaa !2428
  %411 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %143)
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -80
  %414 = load i32, i32* %EAX, align 4
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %417, align 4
  %.pre79 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400c46:                                     ; preds = %block_400c33
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %418 = add i64 %350, -1478
  %419 = add i64 %350, 17
  %420 = load i64, i64* %RSP, align 8, !tbaa !2428
  %421 = add i64 %420, -8
  %422 = inttoptr i64 %421 to i64*
  store i64 %419, i64* %422, align 8
  store i64 %421, i64* %RSP, align 8, !tbaa !2428
  store i64 %418, i64* %PC, align 8, !tbaa !2428
  %423 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -84
  %426 = load i32, i32* %EAX, align 4
  %427 = load i64, i64* %PC, align 8
  %428 = add i64 %427, 3
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %429, align 4
  %430 = load i64, i64* %RSP, align 8
  %431 = load i64, i64* %PC, align 8
  %432 = add i64 %430, 96
  store i64 %432, i64* %RSP, align 8, !tbaa !2428
  %433 = icmp ugt i64 %430, -97
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %6, align 1, !tbaa !2432
  %435 = trunc i64 %432 to i32
  %436 = and i32 %435, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436) #12
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %7, align 1, !tbaa !2446
  %441 = xor i64 %432, %430
  %442 = lshr i64 %441, 4
  %443 = trunc i64 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %8, align 1, !tbaa !2447
  %445 = icmp eq i64 %432, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %9, align 1, !tbaa !2448
  %447 = lshr i64 %432, 63
  %448 = trunc i64 %447 to i8
  store i8 %448, i8* %10, align 1, !tbaa !2449
  %449 = lshr i64 %430, 63
  %450 = xor i64 %447, %449
  %451 = add nuw nsw i64 %450, %447
  %452 = icmp eq i64 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %11, align 1, !tbaa !2450
  %454 = add i64 %431, 5
  store i64 %454, i64* %PC, align 8
  %455 = add i64 %430, 104
  %456 = inttoptr i64 %432 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %RBP, align 8, !tbaa !2428
  store i64 %455, i64* %RSP, align 8, !tbaa !2428
  %458 = add i64 %431, 6
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %455 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %PC, align 8, !tbaa !2428
  %461 = add i64 %430, 112
  store i64 %461, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %423

block_400c06:                                     ; preds = %block_400bb0
  store i64 add (i64 ptrtoint (%seg_4013c0__rodata_type* @seg_4013c0__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %462 = add i64 %191, -1414
  %463 = add i64 %191, 17
  %464 = load i64, i64* %RSP, align 8, !tbaa !2428
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %463, i64* %466, align 8
  store i64 %465, i64* %RSP, align 8, !tbaa !2428
  store i64 %462, i64* %PC, align 8, !tbaa !2428
  %467 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %143)
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
  br label %block_400c33

block_400b3f:                                     ; preds = %block_400aff
  %476 = tail call %struct.Memory* @sub_400b3f(%struct.State* nonnull %0, i64 4197183, %struct.Memory* %212)
  ret %struct.Memory* %476

block_400b26:                                     ; preds = %block_400aff
  %477 = tail call %struct.Memory* @sub_400b26(%struct.State* nonnull %0, i64 4197158, %struct.Memory* %212)
  ret %struct.Memory* %477

block_400b58:                                     ; preds = %block_400aff
  %478 = tail call %struct.Memory* @sub_400b58(%struct.State* nonnull %0, i64 4197208, %struct.Memory* %212)
  ret %struct.Memory* %478

; <label>:479:                                    ; preds = %block_400aff
  %480 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %25, %struct.Memory* %212)
  ret %struct.Memory* %480
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400710__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400710:
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
define %struct.Memory* @sub_400790___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400790:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #12
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
  br i1 %12, label %block_400799, label %block_4007b0

block_4007b0:                                     ; preds = %block_400790
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

block_400799:                                     ; preds = %block_400790
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
  %36 = tail call %struct.Memory* @sub_400720_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline
define %struct.Memory* @sub_401300_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #6 {
block_401300:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12
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
  %61 = tail call %struct.Memory* @sub_401160_getInput_renamed_(%struct.State* nonnull %0, i64 %56, %struct.Memory* %2)
  %62 = load i32, i32* %EAX, align 4
  %63 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %64 = and i32 %62, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #12
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
  br i1 %69, label %block_401329, label %block_401324

block_401324:                                     ; preds = %block_401300
  %74 = add i64 %73, -84
  %75 = add i64 %73, 5
  %76 = load i64, i64* %RSP, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %RSP, align 8, !tbaa !2428
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  %79 = tail call %struct.Memory* @sub_4012d0_search_renamed_(%struct.State* nonnull %0, i64 %74, %struct.Memory* %61)
  %.pre = load i64, i64* %PC, align 8
  br label %block_401329

block_401329:                                     ; preds = %block_401324, %block_401300
  %80 = phi i64 [ %73, %block_401300 ], [ %.pre, %block_401324 ]
  %MEMORY.0 = phi %struct.Memory* [ %61, %block_401300 ], [ %79, %block_401324 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %81 = load i64, i64* %RSP, align 8
  %82 = add i64 %81, 16
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  %83 = icmp ugt i64 %81, -17
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1, !tbaa !2432
  %85 = trunc i64 %82 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #12
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

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4007c0_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_4007c0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400790___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400790___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400790___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4013b0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4013b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4013b0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4013b0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401340___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401340;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_401340___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401340___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401300;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory* readnone) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401300_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602148___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f8_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0_abs(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602158_getchar(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @getchar to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602168_ungetc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @ungetc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8___isoc99_fscanf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_fscanf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602160_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4006d0_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400690_calloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @calculate() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @calculate_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4009f0_calculate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @saveSolution() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400930;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @saveSolution_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400930_saveSolution(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @printList() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @printList_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c60_printList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400630;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400630__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @newWorkList() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @newWorkList_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007d0_newWorkList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @printSolution() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @printSolution_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a90_printSolution(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @recSearch() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400cf0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @recSearch_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400cf0_recSearch(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @newCombList() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400830;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @newCombList_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400830_newCombList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @initWorkList() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400890;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @initWorkList_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400890_initWorkList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4013b4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4013b4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @initCombList() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @initCombList_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008e0_initCombList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @doSearch() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401020;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @18, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @doSearch_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401020_doSearch(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @search() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @19, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @search_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012d0_search(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @getInput() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401160;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @20, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @getInput_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401160_getInput(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_4013b0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401340___libc_csu_init()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { nounwind }
attributes #13 = { alwaysinline nobuiltin nounwind }

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
