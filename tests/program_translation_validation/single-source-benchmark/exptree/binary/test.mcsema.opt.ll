; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401370__rodata_type = type <{ [80 x i8], [29 x i8], [44 x i8], [6 x i8], [9 x i8], [3 x i8] }>
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
@seg_401370__rodata = internal constant %seg_401370__rodata_type <{ [80 x i8] c"\01\00\02\00\00\00\00\00\D2\09@\00\00\00\00\00\E7\09@\00\00\00\00\00\FC\09@\00\00\00\00\00\12\0A@\00\00\00\00\00\BD\0A@\00\00\00\00\00\D6\0A@\00\00\00\00\00\EF\0A@\00\00\00\00\00\08\0B@\00\00\00\00\00!\0B@\00\00\00\00\00", [29 x i8] c"Out of memory for work list\0A\00", [44 x i8] c"Out of memory for combination list\0A\00+\00-\00*\00:\00", [6 x i8] c" d%d \00", [9 x i8] c"%d=%d\00; \00", [3 x i8] c".\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400770_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400740___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400770_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400740___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401360___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4012f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @initCombList_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @recSearch_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @doSearch_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @calculate_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newWorkList_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @getInput_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @search_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @saveSolution_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @printSolution_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @printList_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @initWorkList_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@20 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newCombList_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400fd0_doSearch_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400ca0_recSearch_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401110_getInput_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a40_printSolution_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_initCombList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400780_newWorkList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400840_initWorkList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005e8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401280_search_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007e0_newCombList_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006d0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4008e0_saveSolution_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @ungetc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @getchar() #5

; Function Attrs: noinline
define %struct.Memory* @sub_400a12(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a12:
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

; <label>:29:                                     ; preds = %block_400a12
  %EAX = bitcast %union.anon* %3 to i32*
  %30 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %19, %struct.Memory* %2) #8
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i32, i32* %EAX, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:31:                                     ; preds = %block_400a12
  %32 = srem i64 %24, %22
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %34 = and i64 %25, 4294967295
  store i64 %34, i64* %33, align 8, !tbaa !2428
  %35 = and i64 %32, 4294967295
  store i64 %35, i64* %15, align 8, !tbaa !2428
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
  %51 = add i64 %50, 12
  store i64 %51, i64* %PC, align 8, !tbaa !2428
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -4
  %54 = add i64 %50, 15
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  %58 = add i64 %50, 16
  store i64 %58, i64* %PC, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !2428
  %61 = add i64 %60, 8
  %62 = inttoptr i64 %60 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RBP, align 8, !tbaa !2428
  store i64 %61, i64* %59, align 8, !tbaa !2428
  %64 = add i64 %50, 17
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  %67 = add i64 %60, 16
  store i64 %67, i64* %59, align 8, !tbaa !2428
  ret %struct.Memory* %46
}

; Function Attrs: noinline
define %struct.Memory* @sub_400690__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400690:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
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
  store i64 ptrtoint (void ()* @callback_sub_401360___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4012f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_602148___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b08(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %phitmp8 = add i64 %1, 12
  br label %block_400b08

block_400abd:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %12 = load i64, i64* %RSP, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 4197070, i64* %14, align 8
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %15 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -44
  %18 = load i32, i32* %EAX, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 143
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400aaf:                                     ; preds = %block_400a62
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -32
  %26 = add i64 %335, 4
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %RAX, align 8, !tbaa !2428
  %29 = shl i64 %28, 3
  %30 = add i64 %29, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 40)
  %31 = add i64 %335, 12
  store i64 %31, i64* %PC, align 8
  %32 = inttoptr i64 %30 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RCX, align 8, !tbaa !2428
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  switch i64 %33, label %501 [
    i64 4197153, label %block_400b21
    i64 4197128, label %block_400b08
    i64 4197053, label %block_400abd
    i64 4197103, label %block_400aef
    i64 4197078, label %block_400ad6
  ]

block_400b3a:                                     ; preds = %block_400a62
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -8
  %36 = add i64 %335, 14
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %34, -16
  %40 = add i64 %335, 18
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 12
  store i64 %44, i64* %RCX, align 8, !tbaa !2428
  %45 = lshr i64 %44, 63
  %46 = add i64 %44, %38
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = icmp ult i64 %46, %38
  %48 = icmp ult i64 %46, %44
  %49 = or i1 %47, %48
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %6, align 1, !tbaa !2432
  %51 = trunc i64 %46 to i32
  %52 = and i32 %51, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %7, align 1, !tbaa !2446
  %57 = xor i64 %44, %38
  %58 = xor i64 %57, %46
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %8, align 1, !tbaa !2447
  %62 = icmp eq i64 %46, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %9, align 1, !tbaa !2448
  %64 = lshr i64 %46, 63
  %65 = trunc i64 %64 to i8
  store i8 %65, i8* %10, align 1, !tbaa !2449
  %66 = lshr i64 %38, 63
  %67 = xor i64 %64, %66
  %68 = xor i64 %64, %45
  %69 = add nuw nsw i64 %67, %68
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %11, align 1, !tbaa !2450
  %72 = add i64 %46, 8
  %73 = add i64 %335, 28
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %77 = add i64 %335, -1290
  %78 = add i64 %335, 35
  %79 = load i64, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %RSP, align 8, !tbaa !2428
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  %82 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -64
  %85 = load i32, i32* %EAX, align 4
  %86 = load i64, i64* %PC, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %88, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400b60

block_400ad6:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %89 = load i64, i64* %RSP, align 8, !tbaa !2428
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 4197095, i64* %91, align 8
  store i64 %90, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %92 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %277)
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -48
  %95 = load i32, i32* %EAX, align 4
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %94 to i32*
  store i32 %95, i32* %98, align 4
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 118
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400bcf:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %101 = add i64 %498, -1439
  %102 = add i64 %498, 17
  %103 = load i64, i64* %RSP, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %RSP, align 8, !tbaa !2428
  store i64 %101, i64* %PC, align 8, !tbaa !2428
  %106 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %450)
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -80
  %109 = load i32, i32* %EAX, align 4
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %112, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400be3

block_400bf6:                                     ; preds = %block_400be3
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %113 = add i64 %239, -1478
  %114 = add i64 %239, 17
  %115 = load i64, i64* %RSP, align 8, !tbaa !2428
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %RSP, align 8, !tbaa !2428
  store i64 %113, i64* %PC, align 8, !tbaa !2428
  %118 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -84
  %121 = load i32, i32* %EAX, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, 3
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %124, align 4
  %125 = load i64, i64* %RSP, align 8
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %125, 96
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  %128 = icmp ugt i64 %125, -97
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %6, align 1, !tbaa !2432
  %130 = trunc i64 %127 to i32
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %7, align 1, !tbaa !2446
  %136 = xor i64 %125, %127
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %8, align 1, !tbaa !2447
  %140 = icmp eq i64 %127, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %9, align 1, !tbaa !2448
  %142 = lshr i64 %127, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %10, align 1, !tbaa !2449
  %144 = lshr i64 %125, 63
  %145 = xor i64 %142, %144
  %146 = add nuw nsw i64 %145, %142
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %11, align 1, !tbaa !2450
  %149 = add i64 %126, 5
  store i64 %149, i64* %PC, align 8
  %150 = add i64 %125, 104
  %151 = inttoptr i64 %127 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RBP, align 8, !tbaa !2428
  store i64 %150, i64* %RSP, align 8, !tbaa !2428
  %153 = add i64 %126, 6
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %150 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  %156 = add i64 %125, 112
  store i64 %156, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %118

block_400b08:                                     ; preds = %block_400aaf, %3
  %157 = phi i64 [ %phitmp8, %3 ], [ 4197140, %block_400aaf ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %277, %block_400aaf ]
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %158 = add i64 %157, -1252
  %159 = add i64 %157, 5
  %160 = load i64, i64* %RSP, align 8, !tbaa !2428
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %RSP, align 8, !tbaa !2428
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  %163 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -56
  %166 = load i32, i32* %EAX, align 4
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %169, align 4
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, 68
  store i64 %171, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400be3:                                     ; preds = %block_400bb6, %block_400bcf
  %172 = phi i64 [ %.pre6, %block_400bcf ], [ %253, %block_400bb6 ]
  %MEMORY.1 = phi %struct.Memory* [ %106, %block_400bcf ], [ %245, %block_400bb6 ]
  %173 = load i64, i64* %RBP, align 8
  %174 = add i64 %173, -16
  %175 = add i64 %172, 8
  store i64 %175, i64* %PC, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, 1
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = icmp eq i32 %177, -1
  %181 = icmp eq i32 %178, 0
  %182 = or i1 %180, %181
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %6, align 1, !tbaa !2432
  %184 = and i32 %178, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184) #9
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %7, align 1, !tbaa !2446
  %189 = xor i32 %177, %178
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %8, align 1, !tbaa !2447
  %193 = zext i1 %181 to i8
  store i8 %193, i8* %9, align 1, !tbaa !2448
  %194 = lshr i32 %178, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %10, align 1, !tbaa !2449
  %196 = lshr i32 %177, 31
  %197 = xor i32 %194, %196
  %198 = add nuw nsw i32 %197, %194
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %11, align 1, !tbaa !2450
  %201 = add i64 %172, 14
  store i64 %201, i64* %PC, align 8
  store i32 %178, i32* %176, align 4
  %202 = load i64, i64* %PC, align 8
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -16
  %205 = add i64 %202, -408
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  %209 = add i64 %203, -12
  %210 = add i64 %202, -405
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sub i32 %207, %212
  %214 = icmp ult i32 %207, %212
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %6, align 1, !tbaa !2432
  %216 = and i32 %213, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #9
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %7, align 1, !tbaa !2446
  %221 = xor i32 %212, %207
  %222 = xor i32 %221, %213
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %8, align 1, !tbaa !2447
  %226 = icmp eq i32 %213, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %9, align 1, !tbaa !2448
  %228 = lshr i32 %213, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %10, align 1, !tbaa !2449
  %230 = lshr i32 %207, 31
  %231 = lshr i32 %212, 31
  %232 = xor i32 %231, %230
  %233 = xor i32 %228, %230
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %11, align 1, !tbaa !2450
  %237 = icmp ne i8 %229, 0
  %238 = xor i1 %237, %235
  %.v9 = select i1 %238, i64 -399, i64 5
  %239 = add i64 %202, %.v9
  store i64 %239, i64* %PC, align 8, !tbaa !2428
  br i1 %238, label %block_400a62, label %block_400bf6

block_400bb6:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %240 = add i64 %498, -1414
  %241 = add i64 %498, 17
  %242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %RSP, align 8, !tbaa !2428
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  %245 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %450)
  %246 = load i64, i64* %RBP, align 8
  %247 = add i64 %246, -76
  %248 = load i32, i32* %EAX, align 4
  %249 = load i64, i64* %PC, align 8
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %247 to i32*
  store i32 %248, i32* %251, align 4
  %252 = load i64, i64* %PC, align 8
  %253 = add i64 %252, 25
  store i64 %253, i64* %PC, align 8, !tbaa !2428
  br label %block_400be3

block_400a62:                                     ; preds = %block_400be3
  %254 = add i64 %203, -8
  %255 = add i64 %239, 4
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = add i64 %239, 8
  store i64 %258, i64* %PC, align 8
  %259 = load i32, i32* %206, align 4
  %260 = sext i32 %259 to i64
  %261 = mul nsw i64 %260, 3
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  %262 = mul nsw i64 %260, 12
  %263 = add i64 %262, %257
  %264 = add i64 %239, 15
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  %268 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %272 = add i64 %239, -1074
  %273 = add i64 %239, 35
  %274 = load i64, i64* %RSP, align 8, !tbaa !2428
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %RSP, align 8, !tbaa !2428
  store i64 %272, i64* %PC, align 8, !tbaa !2428
  %277 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
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
  %291 = add i64 %283, 8
  %292 = add i64 %291, %290
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
  %306 = xor i64 %296, %297
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
  %.v10 = select i1 %334, i64 145, i64 6
  %335 = add i64 %330, %.v10
  store i64 %335, i64* %PC, align 8, !tbaa !2428
  br i1 %334, label %block_400b3a, label %block_400aaf

block_400b21:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %336 = load i64, i64* %RSP, align 8, !tbaa !2428
  %337 = add i64 %336, -8
  %338 = inttoptr i64 %337 to i64*
  store i64 4197170, i64* %338, align 8
  store i64 %337, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %339 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %277)
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
  br label %block_400b60

block_400b60:                                     ; preds = %block_400b21, %block_400ad6, %block_400b3a, %block_400abd, %block_400b08
  %348 = phi i64 [ %171, %block_400b08 ], [ %.pre.pre, %block_400b3a ], [ %100, %block_400ad6 ], [ %23, %block_400abd ], [ %347, %block_400b21 ]
  %MEMORY.2 = phi %struct.Memory* [ %163, %block_400b08 ], [ %82, %block_400b3a ], [ %92, %block_400ad6 ], [ %15, %block_400abd ], [ %339, %block_400b21 ]
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
  %435 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %430, %struct.Memory* %MEMORY.2)
  %436 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
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
  %450 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %435)
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
  %.v = select i1 %497, i64 6, i64 31
  %498 = add i64 %492, %.v
  %499 = add i64 %498, 10
  store i64 %499, i64* %PC, align 8
  br i1 %497, label %block_400bb6, label %block_400bcf

block_400aef:                                     ; preds = %block_400aaf
  %500 = tail call %struct.Memory* @sub_400aef(%struct.State* nonnull %0, i64 4197103, %struct.Memory* %277)
  ret %struct.Memory* %500

; <label>:501:                                    ; preds = %block_400aaf
  %502 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %33, %struct.Memory* %277)
  ret %struct.Memory* %502
}

; Function Attrs: noinline
define %struct.Memory* @sub_400890_initCombList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400890:
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
  br label %block_4008a2

block_4008d2:                                     ; preds = %block_4008a2
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

block_4008a2:                                     ; preds = %block_4008ae, %block_400890
  %41 = phi i64 [ %148, %block_4008ae ], [ %.pre, %block_400890 ]
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
  br i1 %77, label %block_4008ae, label %block_4008d2

block_4008ae:                                     ; preds = %block_4008a2
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
  %134 = xor i32 %122, %123
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
  br label %block_4008a2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400aef(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %phitmp6 = add i64 %1, 12
  br label %block_400aef

block_400abd:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %12 = load i64, i64* %RSP, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 4197070, i64* %14, align 8
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %15 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -44
  %18 = load i32, i32* %EAX, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 143
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400aaf:                                     ; preds = %block_400a62
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -32
  %26 = add i64 %347, 4
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %RAX, align 8, !tbaa !2428
  %29 = shl i64 %28, 3
  %30 = add i64 %29, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 40)
  %31 = add i64 %347, 12
  store i64 %31, i64* %PC, align 8
  %32 = inttoptr i64 %30 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RCX, align 8, !tbaa !2428
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  switch i64 %33, label %512 [
    i64 4197153, label %block_400b21
    i64 4197128, label %block_400b08
    i64 4197053, label %block_400abd
    i64 4197103, label %block_400aef
    i64 4197078, label %block_400ad6
  ]

block_400b3a:                                     ; preds = %block_400a62
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -8
  %36 = add i64 %347, 14
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %34, -16
  %40 = add i64 %347, 18
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 12
  store i64 %44, i64* %RCX, align 8, !tbaa !2428
  %45 = lshr i64 %44, 63
  %46 = add i64 %44, %38
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = icmp ult i64 %46, %38
  %48 = icmp ult i64 %46, %44
  %49 = or i1 %47, %48
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %6, align 1, !tbaa !2432
  %51 = trunc i64 %46 to i32
  %52 = and i32 %51, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %7, align 1, !tbaa !2446
  %57 = xor i64 %44, %38
  %58 = xor i64 %57, %46
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %8, align 1, !tbaa !2447
  %62 = icmp eq i64 %46, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %9, align 1, !tbaa !2448
  %64 = lshr i64 %46, 63
  %65 = trunc i64 %64 to i8
  store i8 %65, i8* %10, align 1, !tbaa !2449
  %66 = lshr i64 %38, 63
  %67 = xor i64 %64, %66
  %68 = xor i64 %64, %45
  %69 = add nuw nsw i64 %67, %68
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %11, align 1, !tbaa !2450
  %72 = add i64 %46, 8
  %73 = add i64 %347, 28
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %77 = add i64 %347, -1290
  %78 = add i64 %347, 35
  %79 = load i64, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %RSP, align 8, !tbaa !2428
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  %82 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -64
  %85 = load i32, i32* %EAX, align 4
  %86 = load i64, i64* %PC, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %88, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400b60

block_400ad6:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %89 = load i64, i64* %RSP, align 8, !tbaa !2428
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 4197095, i64* %91, align 8
  store i64 %90, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %92 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -48
  %95 = load i32, i32* %EAX, align 4
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %94 to i32*
  store i32 %95, i32* %98, align 4
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 118
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400bcf:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %101 = add i64 %510, -1439
  %102 = add i64 %510, 17
  %103 = load i64, i64* %RSP, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %RSP, align 8, !tbaa !2428
  store i64 %101, i64* %PC, align 8, !tbaa !2428
  %106 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %462)
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -80
  %109 = load i32, i32* %EAX, align 4
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %112, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400be3

block_400bf6:                                     ; preds = %block_400be3
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %113 = add i64 %251, -1478
  %114 = add i64 %251, 17
  %115 = load i64, i64* %RSP, align 8, !tbaa !2428
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %RSP, align 8, !tbaa !2428
  store i64 %113, i64* %PC, align 8, !tbaa !2428
  %118 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -84
  %121 = load i32, i32* %EAX, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, 3
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %124, align 4
  %125 = load i64, i64* %RSP, align 8
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %125, 96
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  %128 = icmp ugt i64 %125, -97
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %6, align 1, !tbaa !2432
  %130 = trunc i64 %127 to i32
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %7, align 1, !tbaa !2446
  %136 = xor i64 %125, %127
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %8, align 1, !tbaa !2447
  %140 = icmp eq i64 %127, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %9, align 1, !tbaa !2448
  %142 = lshr i64 %127, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %10, align 1, !tbaa !2449
  %144 = lshr i64 %125, 63
  %145 = xor i64 %142, %144
  %146 = add nuw nsw i64 %145, %142
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %11, align 1, !tbaa !2450
  %149 = add i64 %126, 5
  store i64 %149, i64* %PC, align 8
  %150 = add i64 %125, 104
  %151 = inttoptr i64 %127 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RBP, align 8, !tbaa !2428
  store i64 %150, i64* %RSP, align 8, !tbaa !2428
  %153 = add i64 %126, 6
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %150 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  %156 = add i64 %125, 112
  store i64 %156, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %118

block_400b08:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %157 = load i64, i64* %RSP, align 8, !tbaa !2428
  %158 = add i64 %157, -8
  %159 = inttoptr i64 %158 to i64*
  store i64 4197145, i64* %159, align 8
  store i64 %158, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %160 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %289)
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -56
  %163 = load i32, i32* %EAX, align 4
  %164 = load i64, i64* %PC, align 8
  %165 = add i64 %164, 3
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %166, align 4
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, 68
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400aef:                                     ; preds = %block_400aaf, %3
  %169 = phi i64 [ %phitmp6, %3 ], [ 4197115, %block_400aaf ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %289, %block_400aaf ]
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %170 = add i64 %169, -1227
  %171 = add i64 %169, 5
  %172 = load i64, i64* %RSP, align 8, !tbaa !2428
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %RSP, align 8, !tbaa !2428
  store i64 %170, i64* %PC, align 8, !tbaa !2428
  %175 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -52
  %178 = load i32, i32* %EAX, align 4
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %181, align 4
  %182 = load i64, i64* %PC, align 8
  %183 = add i64 %182, 93
  store i64 %183, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400be3:                                     ; preds = %block_400bb6, %block_400bcf
  %184 = phi i64 [ %.pre4, %block_400bcf ], [ %265, %block_400bb6 ]
  %MEMORY.1 = phi %struct.Memory* [ %106, %block_400bcf ], [ %257, %block_400bb6 ]
  %185 = load i64, i64* %RBP, align 8
  %186 = add i64 %185, -16
  %187 = add i64 %184, 8
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
  store i8 %195, i8* %6, align 1, !tbaa !2432
  %196 = and i32 %190, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #9
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %7, align 1, !tbaa !2446
  %201 = xor i32 %189, %190
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %8, align 1, !tbaa !2447
  %205 = zext i1 %193 to i8
  store i8 %205, i8* %9, align 1, !tbaa !2448
  %206 = lshr i32 %190, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %10, align 1, !tbaa !2449
  %208 = lshr i32 %189, 31
  %209 = xor i32 %206, %208
  %210 = add nuw nsw i32 %209, %206
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %11, align 1, !tbaa !2450
  %213 = add i64 %184, 14
  store i64 %213, i64* %PC, align 8
  store i32 %190, i32* %188, align 4
  %214 = load i64, i64* %PC, align 8
  %215 = load i64, i64* %RBP, align 8
  %216 = add i64 %215, -16
  %217 = add i64 %214, -408
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = add i64 %215, -12
  %222 = add i64 %214, -405
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sub i32 %219, %224
  %226 = icmp ult i32 %219, %224
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %6, align 1, !tbaa !2432
  %228 = and i32 %225, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #9
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %7, align 1, !tbaa !2446
  %233 = xor i32 %224, %219
  %234 = xor i32 %233, %225
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %8, align 1, !tbaa !2447
  %238 = icmp eq i32 %225, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %9, align 1, !tbaa !2448
  %240 = lshr i32 %225, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %10, align 1, !tbaa !2449
  %242 = lshr i32 %219, 31
  %243 = lshr i32 %224, 31
  %244 = xor i32 %243, %242
  %245 = xor i32 %240, %242
  %246 = add nuw nsw i32 %245, %244
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %11, align 1, !tbaa !2450
  %249 = icmp ne i8 %241, 0
  %250 = xor i1 %249, %247
  %.v7 = select i1 %250, i64 -399, i64 5
  %251 = add i64 %214, %.v7
  store i64 %251, i64* %PC, align 8, !tbaa !2428
  br i1 %250, label %block_400a62, label %block_400bf6

block_400bb6:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %252 = add i64 %510, -1414
  %253 = add i64 %510, 17
  %254 = load i64, i64* %RSP, align 8, !tbaa !2428
  %255 = add i64 %254, -8
  %256 = inttoptr i64 %255 to i64*
  store i64 %253, i64* %256, align 8
  store i64 %255, i64* %RSP, align 8, !tbaa !2428
  store i64 %252, i64* %PC, align 8, !tbaa !2428
  %257 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %462)
  %258 = load i64, i64* %RBP, align 8
  %259 = add i64 %258, -76
  %260 = load i32, i32* %EAX, align 4
  %261 = load i64, i64* %PC, align 8
  %262 = add i64 %261, 3
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %263, align 4
  %264 = load i64, i64* %PC, align 8
  %265 = add i64 %264, 25
  store i64 %265, i64* %PC, align 8, !tbaa !2428
  br label %block_400be3

block_400a62:                                     ; preds = %block_400be3
  %266 = add i64 %215, -8
  %267 = add i64 %251, 4
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RAX, align 8, !tbaa !2428
  %270 = add i64 %251, 8
  store i64 %270, i64* %PC, align 8
  %271 = load i32, i32* %218, align 4
  %272 = sext i32 %271 to i64
  %273 = mul nsw i64 %272, 3
  store i64 %273, i64* %RCX, align 8, !tbaa !2428
  %274 = mul nsw i64 %272, 12
  %275 = add i64 %274, %269
  %276 = add i64 %251, 15
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  %280 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %284 = add i64 %251, -1074
  %285 = add i64 %251, 35
  %286 = load i64, i64* %RSP, align 8, !tbaa !2428
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %285, i64* %288, align 8
  store i64 %287, i64* %RSP, align 8, !tbaa !2428
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  %289 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
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
  %303 = add i64 %295, 8
  %304 = add i64 %303, %302
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
  %318 = xor i64 %308, %309
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
  %.v8 = select i1 %346, i64 145, i64 6
  %347 = add i64 %342, %.v8
  store i64 %347, i64* %PC, align 8, !tbaa !2428
  br i1 %346, label %block_400b3a, label %block_400aaf

block_400b21:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %348 = load i64, i64* %RSP, align 8, !tbaa !2428
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 4197170, i64* %350, align 8
  store i64 %349, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %351 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %289)
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
  br label %block_400b60

block_400b60:                                     ; preds = %block_400b21, %block_400b08, %block_400ad6, %block_400b3a, %block_400abd, %block_400aef
  %360 = phi i64 [ %183, %block_400aef ], [ %.pre.pre, %block_400b3a ], [ %100, %block_400ad6 ], [ %23, %block_400abd ], [ %168, %block_400b08 ], [ %359, %block_400b21 ]
  %MEMORY.2 = phi %struct.Memory* [ %175, %block_400aef ], [ %82, %block_400b3a ], [ %92, %block_400ad6 ], [ %15, %block_400abd ], [ %160, %block_400b08 ], [ %351, %block_400b21 ]
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
  %447 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %442, %struct.Memory* %MEMORY.2)
  %448 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
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
  %462 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %447)
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
  %.v = select i1 %509, i64 6, i64 31
  %510 = add i64 %504, %.v
  %511 = add i64 %510, 10
  store i64 %511, i64* %PC, align 8
  br i1 %509, label %block_400bb6, label %block_400bcf

; <label>:512:                                    ; preds = %block_400aaf
  %513 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %33, %struct.Memory* %289)
  ret %struct.Memory* %513
}

; Function Attrs: noinline
define %struct.Memory* @sub_401360___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401360:
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
define %struct.Memory* @sub_4005e8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e8:
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
  br i1 %18, label %block_4005e8.block_4005fa_crit_edge, label %block_4005f8

block_4005e8.block_4005fa_crit_edge:              ; preds = %block_4005e8
  br label %block_4005fa

block_4005f8:                                     ; preds = %block_4005e8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005fa

block_4005fa:                                     ; preds = %block_4005e8.block_4005fa_crit_edge, %block_4005f8
  %.pre-phi = phi i64* [ %RSP, %block_4005e8.block_4005fa_crit_edge ], [ %RSP, %block_4005f8 ]
  %27 = phi i64 [ %22, %block_4005e8.block_4005fa_crit_edge ], [ %.pre1, %block_4005f8 ]
  %28 = phi i64 [ %4, %block_4005e8.block_4005fa_crit_edge ], [ %.pre, %block_4005f8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005e8.block_4005fa_crit_edge ], [ %26, %block_4005f8 ]
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
  %38 = xor i64 %28, %29
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_newCombList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007e0:
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
  br i1 %74, label %block_400814, label %block_40080a

block_400814:                                     ; preds = %block_4007e0
  %EAX = bitcast %union.anon* %3 to i32*
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 109), i64* %RSI, align 8, !tbaa !2428
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
  %85 = tail call fastcc %struct.Memory* @ext_400660_fprintf(%struct.State* nonnull %0, %struct.Memory* %55)
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
  %98 = tail call fastcc %struct.Memory* @ext_602170_exit(%struct.State* nonnull %0, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %PC, align 8
  %101 = tail call %struct.Memory* @sub_400840_initWorkList(%struct.State* nonnull %0, i64 %100, %struct.Memory* %98)
  ret %struct.Memory* %101

block_40080a:                                     ; preds = %block_4007e0
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
  %114 = xor i64 %104, %105
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
define %struct.Memory* @sub_4009fc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4009fc:
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
  %41 = add i64 %1, 17
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 %21, i32* %42, align 4
  %43 = load i64, i64* %PC, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -4
  %46 = add i64 %43, 37
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %RAX, align 8, !tbaa !2428
  %50 = add i64 %43, 38
  store i64 %50, i64* %PC, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2428
  %53 = add i64 %52, 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RBP, align 8, !tbaa !2428
  store i64 %53, i64* %51, align 8, !tbaa !2428
  %56 = add i64 %43, 39
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %PC, align 8, !tbaa !2428
  %59 = add i64 %52, 16
  store i64 %59, i64* %51, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c10_printList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400c10:
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
  br label %block_400c29

block_400c7d:                                     ; preds = %block_400c29
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %61 = add i64 %245, -1613
  %62 = add i64 %245, 17
  %63 = load i64, i64* %RSP, align 8, !tbaa !2428
  %64 = add i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  store i64 %62, i64* %65, align 8
  store i64 %64, i64* %RSP, align 8, !tbaa !2428
  store i64 %61, i64* %PC, align 8, !tbaa !2428
  %66 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
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
  %84 = xor i64 %73, %75
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

block_400c50:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 155), i64* %RDI, align 8, !tbaa !2428
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
  %123 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %124 = load i64, i64* %RBP, align 8
  %125 = add i64 %124, -24
  %126 = load i32, i32* %EAX, align 4
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %129, align 4
  %.pre1 = load i64, i64* %RBP, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400c6f

block_400c6f:                                     ; preds = %block_400c4b, %block_400c50
  %130 = phi i64 [ %.pre2, %block_400c50 ], [ %207, %block_400c4b ]
  %131 = phi i64 [ %.pre1, %block_400c50 ], [ %209, %block_400c4b ]
  %MEMORY.0 = phi %struct.Memory* [ %123, %block_400c50 ], [ %MEMORY.1, %block_400c4b ]
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
  %147 = xor i32 %135, %136
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
  br label %block_400c29

block_400c35:                                     ; preds = %block_400c29
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

; <label>:167:                                    ; preds = %block_400c35
  %168 = and i32 %163, 31
  %169 = zext i32 %168 to i64
  %170 = add nuw nsw i64 %169, 4294967295
  %171 = and i64 %170, 4294967295
  %172 = shl i64 1, %171
  %173 = trunc i64 %172 to i32
  %174 = icmp slt i32 %173, 0
  %175 = shl i32 %173, 1
  br label %176

; <label>:176:                                    ; preds = %block_400c35, %167
  %177 = phi i1 [ %174, %167 ], [ false, %block_400c35 ]
  %178 = phi i32 [ %175, %167 ], [ 2, %block_400c35 ]
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

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %176, %block_400c35
  %190 = phi i32 [ %178, %176 ], [ 1, %block_400c35 ]
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
  %.v3 = select i1 %202, i64 27, i64 22
  %206 = add i64 %245, %.v3
  store i64 %206, i64* %PC, align 8, !tbaa !2428
  br i1 %202, label %block_400c50, label %block_400c4b

block_400c4b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %207 = add i64 %206, 36
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br label %block_400c6f

block_400c29:                                     ; preds = %block_400c6f, %block_400c10
  %208 = phi i64 [ %.pre, %block_400c10 ], [ %161, %block_400c6f ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400c10 ], [ %MEMORY.0, %block_400c6f ]
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
  br i1 %244, label %block_400c35, label %block_400c7d
}

; Function Attrs: noinline
define %struct.Memory* @sub_400840_initWorkList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400840:
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
  br label %block_400856

block_400862:                                     ; preds = %block_400856
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
  %79 = xor i32 %67, %68
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
  br label %block_400856

block_400856:                                     ; preds = %block_400862, %block_400840
  %94 = phi i64 [ %93, %block_400862 ], [ %.pre, %block_400840 ]
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
  br i1 %130, label %block_400862, label %block_400886

block_400886:                                     ; preds = %block_400856
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

; Function Attrs: noinline
define %struct.Memory* @sub_4006c0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006c0:
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
define %struct.Memory* @sub_400abd(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %phitmp12 = add i64 %1, 12
  br label %block_400abd

block_400bb6:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %12 = add i64 %474, -1414
  %13 = add i64 %474, 17
  %14 = load i64, i64* %RSP, align 8, !tbaa !2428
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16, align 8
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %17 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %426)
  %18 = load i64, i64* %RBP, align 8
  %19 = add i64 %18, -76
  %20 = load i32, i32* %EAX, align 4
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 25
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  br label %block_400be3

block_400bf6:                                     ; preds = %block_400be3
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %26 = add i64 %226, -1478
  %27 = add i64 %226, 17
  %28 = load i64, i64* %RSP, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %31 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -84
  %34 = load i32, i32* %EAX, align 4
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %RSP, align 8
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %38, 96
  store i64 %40, i64* %RSP, align 8, !tbaa !2428
  %41 = icmp ugt i64 %38, -97
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %6, align 1, !tbaa !2432
  %43 = trunc i64 %40 to i32
  %44 = and i32 %43, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #9
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  store i8 %48, i8* %7, align 1, !tbaa !2446
  %49 = xor i64 %38, %40
  %50 = lshr i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  store i8 %52, i8* %8, align 1, !tbaa !2447
  %53 = icmp eq i64 %40, 0
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %9, align 1, !tbaa !2448
  %55 = lshr i64 %40, 63
  %56 = trunc i64 %55 to i8
  store i8 %56, i8* %10, align 1, !tbaa !2449
  %57 = lshr i64 %38, 63
  %58 = xor i64 %55, %57
  %59 = add nuw nsw i64 %58, %55
  %60 = icmp eq i64 %59, 2
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %11, align 1, !tbaa !2450
  %62 = add i64 %39, 5
  store i64 %62, i64* %PC, align 8
  %63 = add i64 %38, 104
  %64 = inttoptr i64 %40 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  store i64 %63, i64* %RSP, align 8, !tbaa !2428
  %66 = add i64 %39, 6
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %PC, align 8, !tbaa !2428
  %69 = add i64 %38, 112
  store i64 %69, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %31

block_400bcf:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %70 = add i64 %474, -1439
  %71 = add i64 %474, 17
  %72 = load i64, i64* %RSP, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %RSP, align 8, !tbaa !2428
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  %75 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %426)
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -80
  %78 = load i32, i32* %EAX, align 4
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %81, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_400be3

block_400aaf:                                     ; preds = %block_400a62
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -32
  %84 = add i64 %323, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = shl i64 %86, 3
  %88 = add i64 %87, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 40)
  %89 = add i64 %323, 12
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RCX, align 8, !tbaa !2428
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  switch i64 %91, label %479 [
    i64 4197153, label %block_400b21
    i64 4197128, label %block_400b08
    i64 4197053, label %block_400abd
    i64 4197103, label %block_400aef
    i64 4197078, label %block_400ad6
  ]

block_400ad6:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %92 = load i64, i64* %RSP, align 8, !tbaa !2428
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 4197095, i64* %94, align 8
  store i64 %93, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %95 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %265)
  %96 = load i64, i64* %RBP, align 8
  %97 = add i64 %96, -48
  %98 = load i32, i32* %EAX, align 4
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %97 to i32*
  store i32 %98, i32* %101, align 4
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 118
  store i64 %103, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400b3a:                                     ; preds = %block_400a62
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -8
  %106 = add i64 %323, 14
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX, align 8, !tbaa !2428
  %109 = add i64 %104, -16
  %110 = add i64 %323, 18
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, 12
  store i64 %114, i64* %RCX, align 8, !tbaa !2428
  %115 = lshr i64 %114, 63
  %116 = add i64 %114, %108
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  %117 = icmp ult i64 %116, %108
  %118 = icmp ult i64 %116, %114
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %6, align 1, !tbaa !2432
  %121 = trunc i64 %116 to i32
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #9
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %7, align 1, !tbaa !2446
  %127 = xor i64 %114, %108
  %128 = xor i64 %127, %116
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %8, align 1, !tbaa !2447
  %132 = icmp eq i64 %116, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %9, align 1, !tbaa !2448
  %134 = lshr i64 %116, 63
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %10, align 1, !tbaa !2449
  %136 = lshr i64 %108, 63
  %137 = xor i64 %134, %136
  %138 = xor i64 %134, %115
  %139 = add nuw nsw i64 %137, %138
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %11, align 1, !tbaa !2450
  %142 = add i64 %116, 8
  %143 = add i64 %323, 28
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %147 = add i64 %323, -1290
  %148 = add i64 %323, 35
  %149 = load i64, i64* %RSP, align 8, !tbaa !2428
  %150 = add i64 %149, -8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  store i64 %150, i64* %RSP, align 8, !tbaa !2428
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  %152 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %265)
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -64
  %155 = load i32, i32* %EAX, align 4
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %158, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400b60

block_400be3:                                     ; preds = %block_400bcf, %block_400bb6
  %159 = phi i64 [ %.pre10, %block_400bcf ], [ %25, %block_400bb6 ]
  %MEMORY.0 = phi %struct.Memory* [ %75, %block_400bcf ], [ %17, %block_400bb6 ]
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -16
  %162 = add i64 %159, 8
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RAX, align 8, !tbaa !2428
  %167 = icmp eq i32 %164, -1
  %168 = icmp eq i32 %165, 0
  %169 = or i1 %167, %168
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %6, align 1, !tbaa !2432
  %171 = and i32 %165, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #9
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %7, align 1, !tbaa !2446
  %176 = xor i32 %164, %165
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %8, align 1, !tbaa !2447
  %180 = zext i1 %168 to i8
  store i8 %180, i8* %9, align 1, !tbaa !2448
  %181 = lshr i32 %165, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %10, align 1, !tbaa !2449
  %183 = lshr i32 %164, 31
  %184 = xor i32 %181, %183
  %185 = add nuw nsw i32 %184, %181
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %11, align 1, !tbaa !2450
  %188 = add i64 %159, 14
  store i64 %188, i64* %PC, align 8
  store i32 %165, i32* %163, align 4
  %189 = load i64, i64* %PC, align 8
  %190 = load i64, i64* %RBP, align 8
  %191 = add i64 %190, -16
  %192 = add i64 %189, -408
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  %196 = add i64 %190, -12
  %197 = add i64 %189, -405
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %194, %199
  %201 = icmp ult i32 %194, %199
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %6, align 1, !tbaa !2432
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203) #9
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %7, align 1, !tbaa !2446
  %208 = xor i32 %199, %194
  %209 = xor i32 %208, %200
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %8, align 1, !tbaa !2447
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %9, align 1, !tbaa !2448
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %10, align 1, !tbaa !2449
  %217 = lshr i32 %194, 31
  %218 = lshr i32 %199, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %215, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %11, align 1, !tbaa !2450
  %224 = icmp ne i8 %216, 0
  %225 = xor i1 %224, %222
  %.v13 = select i1 %225, i64 -399, i64 5
  %226 = add i64 %189, %.v13
  store i64 %226, i64* %PC, align 8, !tbaa !2428
  br i1 %225, label %block_400a62, label %block_400bf6

block_400abd:                                     ; preds = %block_400aaf, %3
  %227 = phi i64 [ %phitmp12, %3 ], [ 4197065, %block_400aaf ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %3 ], [ %265, %block_400aaf ]
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %228 = add i64 %227, -1177
  %229 = add i64 %227, 5
  %230 = load i64, i64* %RSP, align 8, !tbaa !2428
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %229, i64* %232, align 8
  store i64 %231, i64* %RSP, align 8, !tbaa !2428
  store i64 %228, i64* %PC, align 8, !tbaa !2428
  %233 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -44
  %236 = load i32, i32* %EAX, align 4
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %235 to i32*
  store i32 %236, i32* %239, align 4
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 143
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400a62:                                     ; preds = %block_400be3
  %242 = add i64 %190, -8
  %243 = add i64 %226, 4
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RAX, align 8, !tbaa !2428
  %246 = add i64 %226, 8
  store i64 %246, i64* %PC, align 8
  %247 = load i32, i32* %193, align 4
  %248 = sext i32 %247 to i64
  %249 = mul nsw i64 %248, 3
  store i64 %249, i64* %RCX, align 8, !tbaa !2428
  %250 = mul nsw i64 %248, 12
  %251 = add i64 %250, %245
  %252 = add i64 %226, 15
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  %256 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %260 = add i64 %226, -1074
  %261 = add i64 %226, 35
  %262 = load i64, i64* %RSP, align 8, !tbaa !2428
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %RSP, align 8, !tbaa !2428
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  %265 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
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
  %279 = add i64 %271, 8
  %280 = add i64 %279, %278
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
  %294 = xor i64 %284, %285
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
  %.v14 = select i1 %322, i64 145, i64 6
  %323 = add i64 %318, %.v14
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  br i1 %322, label %block_400b3a, label %block_400aaf

block_400b60:                                     ; preds = %block_400b3a, %block_400ad6, %block_400abd
  %324 = phi i64 [ %241, %block_400abd ], [ %.pre.pre, %block_400b3a ], [ %103, %block_400ad6 ]
  %MEMORY.2 = phi %struct.Memory* [ %233, %block_400abd ], [ %152, %block_400b3a ], [ %95, %block_400ad6 ]
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
  %411 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %406, %struct.Memory* %MEMORY.2)
  %412 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
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
  %426 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %411)
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
  %.v = select i1 %473, i64 6, i64 31
  %474 = add i64 %468, %.v
  %475 = add i64 %474, 10
  store i64 %475, i64* %PC, align 8
  br i1 %473, label %block_400bb6, label %block_400bcf

block_400aef:                                     ; preds = %block_400aaf
  %476 = tail call %struct.Memory* @sub_400aef(%struct.State* nonnull %0, i64 4197103, %struct.Memory* %265)
  ret %struct.Memory* %476

block_400b08:                                     ; preds = %block_400aaf
  %477 = tail call %struct.Memory* @sub_400b08(%struct.State* nonnull %0, i64 4197128, %struct.Memory* %265)
  ret %struct.Memory* %477

block_400b21:                                     ; preds = %block_400aaf
  %478 = tail call %struct.Memory* @sub_400b21(%struct.State* nonnull %0, i64 4197153, %struct.Memory* %265)
  ret %struct.Memory* %478

; <label>:479:                                    ; preds = %block_400aaf
  %480 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %91, %struct.Memory* %265)
  ret %struct.Memory* %480
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ca0_recSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400ca0:
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
  br i1 %37, label %block_400cc1, label %block_400cbc

block_400e7c:                                     ; preds = %block_400e72
  %42 = add i64 %424, -32
  %43 = add i64 %1116, 4
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %46 = and i32 %45, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #9
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  store i8 %50, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %51 = icmp eq i32 %45, 0
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %17, align 1, !tbaa !2448
  %53 = lshr i32 %45, 31
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v28 = select i1 %51, i64 10, i64 15
  %55 = add i64 %1116, %.v28
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  br i1 %51, label %block_400e86, label %block_400e8b

block_400dfa:                                     ; preds = %block_400f8a, %block_400df3
  %56 = phi i64 [ %.pre3, %block_400df3 ], [ %1357, %block_400f8a ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.13, %block_400df3 ], [ %MEMORY.14, %block_400f8a ]
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -24
  %59 = add i64 %56, 3
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %57, -20
  %64 = add i64 %56, 6
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %61, %66
  %68 = icmp ult i32 %61, %66
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %14, align 1, !tbaa !2432
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #9
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %15, align 1, !tbaa !2446
  %75 = xor i32 %66, %61
  %76 = xor i32 %75, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %16, align 1, !tbaa !2447
  %80 = icmp eq i32 %67, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %17, align 1, !tbaa !2448
  %82 = lshr i32 %67, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %18, align 1, !tbaa !2449
  %84 = lshr i32 %61, 31
  %85 = lshr i32 %66, 31
  %86 = xor i32 %85, %84
  %87 = xor i32 %82, %84
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %19, align 1, !tbaa !2450
  %91 = icmp ne i8 %83, 0
  %92 = xor i1 %91, %89
  %.v21 = select i1 %92, i64 12, i64 414
  %93 = add i64 %56, %.v21
  %94 = add i64 %93, 5
  store i64 %94, i64* %PC, align 8
  br i1 %92, label %block_400e06, label %block_400f9d

block_400fbe:                                     ; preds = %block_400db2
  %95 = add i64 %545, 5
  br label %block_400fc3

block_400e6d:                                     ; preds = %block_400e63, %block_400e59
  %96 = phi i64 [ %291, %block_400e59 ], [ %123, %block_400e63 ]
  %97 = add i64 %96, 285
  store i64 %97, i64* %PC, align 8, !tbaa !2428
  br label %block_400f8a

block_400e63:                                     ; preds = %block_400e59
  %98 = add i64 %424, -32
  %99 = add i64 %291, 4
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, -1
  %103 = icmp eq i32 %101, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %14, align 1, !tbaa !2432
  %105 = and i32 %102, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105) #9
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %15, align 1, !tbaa !2446
  %110 = xor i32 %101, %102
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %16, align 1, !tbaa !2447
  %114 = icmp eq i32 %102, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %17, align 1, !tbaa !2448
  %116 = lshr i32 %102, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %18, align 1, !tbaa !2449
  %118 = lshr i32 %101, 31
  %119 = xor i32 %116, %118
  %120 = add nuw nsw i32 %119, %118
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %19, align 1, !tbaa !2450
  %.v26 = select i1 %114, i64 10, i64 15
  %123 = add i64 %291, %.v26
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br i1 %114, label %block_400e6d, label %block_400e72

block_400ce2:                                     ; preds = %block_400cc1
  %124 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %124, i64* %RAX, align 8, !tbaa !2428
  %125 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  %127 = add i64 %1243, 18
  store i64 %127, i64* %PC, align 8
  %128 = load i32, i32* %1215, align 4
  %129 = add i32 %128, %125
  %130 = lshr i32 %129, 31
  %131 = add i32 %129, -1
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RCX, align 8, !tbaa !2428
  %133 = icmp eq i32 %129, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %14, align 1, !tbaa !2432
  %135 = and i32 %131, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #9
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %15, align 1, !tbaa !2446
  %140 = xor i32 %129, %131
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %16, align 1, !tbaa !2447
  %144 = icmp eq i32 %131, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %17, align 1, !tbaa !2448
  %146 = lshr i32 %131, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %18, align 1, !tbaa !2449
  %148 = xor i32 %146, %130
  %149 = add nuw nsw i32 %148, %130
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %19, align 1, !tbaa !2450
  %152 = sext i32 %131 to i64
  store i64 %152, i64* %RDX, align 8, !tbaa !2428
  %153 = shl nsw i64 %152, 2
  %154 = add i64 %153, %124
  %155 = add i64 %1243, 27
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %159 = sub i32 %157, %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RCX, align 8, !tbaa !2428
  %161 = icmp ult i32 %157, %158
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %14, align 1, !tbaa !2432
  %163 = and i32 %159, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #9
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %15, align 1, !tbaa !2446
  %168 = xor i32 %158, %157
  %169 = xor i32 %168, %159
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %16, align 1, !tbaa !2447
  %173 = icmp eq i32 %159, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %17, align 1, !tbaa !2448
  %175 = lshr i32 %159, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %18, align 1, !tbaa !2449
  %177 = lshr i32 %157, 31
  %178 = lshr i32 %158, 31
  %179 = xor i32 %178, %177
  %180 = xor i32 %175, %177
  %181 = add nuw nsw i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %19, align 1, !tbaa !2450
  store i64 %160, i64* %RDI, align 8, !tbaa !2428
  %184 = add i64 %1243, -1730
  %185 = add i64 %1243, 41
  %186 = load i64, i64* %RSP, align 8, !tbaa !2428
  %187 = add i64 %186, -8
  %188 = inttoptr i64 %187 to i64*
  store i64 %185, i64* %188, align 8
  store i64 %187, i64* %RSP, align 8, !tbaa !2428
  store i64 %184, i64* %PC, align 8, !tbaa !2428
  %189 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %2)
  %190 = load i64, i64* %PC, align 8
  %191 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %192 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %193 = sub i32 %191, %192
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RCX, align 8, !tbaa !2428
  %195 = icmp ult i32 %191, %192
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %14, align 1, !tbaa !2432
  %197 = and i32 %193, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #9
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %15, align 1, !tbaa !2446
  %202 = xor i32 %192, %191
  %203 = xor i32 %202, %193
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %16, align 1, !tbaa !2447
  %207 = icmp eq i32 %193, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %17, align 1, !tbaa !2448
  %209 = lshr i32 %193, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %18, align 1, !tbaa !2449
  %211 = lshr i32 %191, 31
  %212 = lshr i32 %192, 31
  %213 = xor i32 %212, %211
  %214 = xor i32 %209, %211
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %19, align 1, !tbaa !2450
  store i64 %194, i64* %RDI, align 8, !tbaa !2428
  %218 = load i64, i64* %RBP, align 8
  %219 = add i64 %218, -40
  %220 = load i32, i32* %EAX, align 4
  %221 = add i64 %190, 19
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %219 to i32*
  store i32 %220, i32* %222, align 4
  %223 = load i64, i64* %PC, align 8
  %224 = add i64 %223, -1790
  %225 = add i64 %223, 5
  %226 = load i64, i64* %RSP, align 8, !tbaa !2428
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %225, i64* %228, align 8
  store i64 %227, i64* %RSP, align 8, !tbaa !2428
  store i64 %224, i64* %PC, align 8, !tbaa !2428
  %229 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %189)
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -40
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RCX, align 8, !tbaa !2428
  %237 = load i32, i32* %EAX, align 4
  %238 = sub i32 %235, %237
  %239 = icmp ult i32 %235, %237
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %14, align 1, !tbaa !2432
  %241 = and i32 %238, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #9
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %15, align 1, !tbaa !2446
  %246 = xor i32 %237, %235
  %247 = xor i32 %246, %238
  %248 = lshr i32 %247, 4
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %16, align 1, !tbaa !2447
  %251 = icmp eq i32 %238, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %17, align 1, !tbaa !2448
  %253 = lshr i32 %238, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %18, align 1, !tbaa !2449
  %255 = lshr i32 %235, 31
  %256 = lshr i32 %237, 31
  %257 = xor i32 %256, %255
  %258 = xor i32 %253, %255
  %259 = add nuw nsw i32 %258, %257
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %19, align 1, !tbaa !2450
  %262 = icmp ne i8 %254, 0
  %263 = xor i1 %262, %260
  %.v16 = select i1 %263, i64 11, i64 131
  %264 = add i64 %232, %.v16
  store i64 %264, i64* %PC, align 8, !tbaa !2428
  br i1 %263, label %block_400d2e, label %block_400da6

block_400e59:                                     ; preds = %block_400e4f, %block_400e21
  %265 = phi i64 [ %451, %block_400e21 ], [ %364, %block_400e4f ]
  %266 = add i64 %424, -28
  %267 = add i64 %265, 4
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, -1
  %271 = icmp eq i32 %269, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %14, align 1, !tbaa !2432
  %273 = and i32 %270, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273) #9
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %15, align 1, !tbaa !2446
  %278 = xor i32 %269, %270
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %16, align 1, !tbaa !2447
  %282 = icmp eq i32 %270, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %17, align 1, !tbaa !2448
  %284 = lshr i32 %270, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %18, align 1, !tbaa !2449
  %286 = lshr i32 %269, 31
  %287 = xor i32 %284, %286
  %288 = add nuw nsw i32 %287, %286
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %19, align 1, !tbaa !2450
  %.v25 = select i1 %282, i64 20, i64 10
  %291 = add i64 %265, %.v25
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  br i1 %282, label %block_400e6d, label %block_400e63

block_400dd8:                                     ; preds = %block_400dc3
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -20
  %294 = add i64 %1285, 8
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RCX, align 8, !tbaa !2428
  %298 = add i64 %1285, 10
  store i64 %298, i64* %PC, align 8
  %299 = trunc i32 %296 to i5
  switch i5 %299, label %300 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
    i5 1, label %309
  ]

; <label>:300:                                    ; preds = %block_400dd8
  %301 = and i32 %296, 31
  %302 = zext i32 %301 to i64
  %303 = add nuw nsw i64 %302, 4294967295
  %304 = and i64 %303, 4294967295
  %305 = shl i64 1, %304
  %306 = trunc i64 %305 to i32
  %307 = icmp slt i32 %306, 0
  %308 = shl i32 %306, 1
  br label %309

; <label>:309:                                    ; preds = %block_400dd8, %300
  %310 = phi i1 [ %307, %300 ], [ false, %block_400dd8 ]
  %311 = phi i32 [ %308, %300 ], [ 2, %block_400dd8 ]
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RAX, align 8, !tbaa !2428
  %313 = zext i1 %310 to i8
  store i8 %313, i8* %14, align 1, !tbaa !2451
  %314 = and i32 %311, 254
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #9
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %319 = icmp eq i32 %311, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %17, align 1, !tbaa !2451
  %321 = lshr i32 %311, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3: ; preds = %309, %block_400dd8
  %323 = phi i32 [ %311, %309 ], [ 1, %block_400dd8 ]
  %324 = add i64 %292, -8
  %325 = add i64 %1285, 13
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, %323
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = and i32 %328, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #9
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  %335 = icmp eq i32 %328, 0
  %336 = zext i1 %335 to i8
  %337 = lshr i32 %328, 31
  %338 = trunc i32 %337 to i8
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %334, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 %336, i8* %17, align 1, !tbaa !2448
  store i8 %338, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v20 = select i1 %335, i64 27, i64 22
  %339 = add i64 %1285, %.v20
  store i64 %339, i64* %PC, align 8, !tbaa !2428
  br i1 %335, label %block_400df3, label %block_400dee

block_400ea5:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %340 = add i64 %1185, 229
  store i64 %340, i64* %PC, align 8, !tbaa !2428
  br label %block_400f8a

block_400e4f:                                     ; preds = %block_400e21
  %341 = add i64 %451, 4
  store i64 %341, i64* %PC, align 8
  %342 = load i32, i32* %428, align 4
  %343 = add i32 %342, -4
  %344 = icmp ult i32 %342, 4
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %14, align 1, !tbaa !2432
  %346 = and i32 %343, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346) #9
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %15, align 1, !tbaa !2446
  %351 = xor i32 %342, %343
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %16, align 1, !tbaa !2447
  %355 = icmp eq i32 %343, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %17, align 1, !tbaa !2448
  %357 = lshr i32 %343, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %18, align 1, !tbaa !2449
  %359 = lshr i32 %342, 31
  %360 = xor i32 %357, %359
  %361 = add nuw nsw i32 %360, %359
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %19, align 1, !tbaa !2450
  %.v24 = select i1 %355, i64 10, i64 35
  %364 = add i64 %451, %.v24
  store i64 %364, i64* %PC, align 8, !tbaa !2428
  br i1 %355, label %block_400e59, label %block_400e4f.block_400e72_crit_edge

block_400e4f.block_400e72_crit_edge:              ; preds = %block_400e4f
  %.pre10 = add i64 %424, -28
  %.pre11 = inttoptr i64 %.pre10 to i32*
  br label %block_400e72

block_400df3:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
  %365 = add i64 %292, -24
  %366 = add i64 %339, 7
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 0, i32* %367, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400dfa

block_400eca:                                     ; preds = %block_400ebe
  %368 = add i64 %488, 3
  store i64 %368, i64* %PC, align 8
  %369 = load i32, i32* %455, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = add i64 %1042, -36
  %372 = add i64 %488, 6
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  store i32 %369, i32* %373, align 4
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -32
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RAX, align 8, !tbaa !2428
  %381 = add i64 %374, -28
  %382 = add i64 %376, 6
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %379, i32* %383, align 4
  %384 = load i64, i64* %RBP, align 8
  %385 = add i64 %384, -36
  %386 = load i64, i64* %PC, align 8
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = add i64 %384, -32
  %392 = add i64 %386, 6
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 %389, i32* %393, align 4
  %.pre7 = load i64, i64* %PC, align 8
  %.pre8 = load i64, i64* %RBP, align 8
  br label %block_400edc

block_400e21:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %394 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = add i64 %1402, 12
  store i64 %395, i64* %PC, align 8
  %396 = load i32, i32* %65, align 4
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = shl nsw i64 %397, 2
  %399 = add i64 %398, %394
  %400 = add i64 %1402, 15
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RDX, align 8, !tbaa !2428
  %404 = add i64 %57, -28
  %405 = add i64 %1402, 18
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  store i32 %402, i32* %406, align 4
  %407 = load i64, i64* %PC, align 8
  %408 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %408, i64* %RAX, align 8, !tbaa !2428
  %409 = load i64, i64* %RBP, align 8
  %410 = add i64 %409, -24
  %411 = add i64 %407, 12
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  store i64 %414, i64* %RCX, align 8, !tbaa !2428
  %415 = shl nsw i64 %414, 2
  %416 = add i64 %415, %408
  %417 = add i64 %407, 15
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RDX, align 8, !tbaa !2428
  %421 = add i64 %409, -32
  %422 = add i64 %407, 18
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i32*
  store i32 %419, i32* %423, align 4
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -12
  %426 = load i64, i64* %PC, align 8
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = add i32 %429, -3
  %431 = icmp ult i32 %429, 3
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1, !tbaa !2432
  %433 = and i32 %430, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #9
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %15, align 1, !tbaa !2446
  %438 = xor i32 %429, %430
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %16, align 1, !tbaa !2447
  %442 = icmp eq i32 %430, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %17, align 1, !tbaa !2448
  %444 = lshr i32 %430, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %18, align 1, !tbaa !2449
  %446 = lshr i32 %429, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %446
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %19, align 1, !tbaa !2450
  %.v23 = select i1 %442, i64 20, i64 10
  %451 = add i64 %426, %.v23
  store i64 %451, i64* %PC, align 8, !tbaa !2428
  br i1 %442, label %block_400e59, label %block_400e4f

block_400ebe:                                     ; preds = %block_400eb4, %block_400eaa
  %452 = phi i64 [ %1068, %block_400eaa ], [ %515, %block_400eb4 ]
  %453 = add i64 %1042, -28
  %454 = add i64 %452, 3
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RAX, align 8, !tbaa !2428
  %458 = add i64 %1042, -32
  %459 = add i64 %452, 6
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = sub i32 %456, %461
  %463 = icmp ult i32 %456, %461
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %14, align 1, !tbaa !2432
  %465 = and i32 %462, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465) #9
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %15, align 1, !tbaa !2446
  %470 = xor i32 %461, %456
  %471 = xor i32 %470, %462
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %16, align 1, !tbaa !2447
  %475 = icmp eq i32 %462, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %17, align 1, !tbaa !2448
  %477 = lshr i32 %462, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %18, align 1, !tbaa !2449
  %479 = lshr i32 %456, 31
  %480 = lshr i32 %461, 31
  %481 = xor i32 %480, %479
  %482 = xor i32 %477, %479
  %483 = add nuw nsw i32 %482, %481
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %19, align 1, !tbaa !2450
  %486 = icmp ne i8 %478, 0
  %487 = xor i1 %486, %484
  %.v33 = select i1 %487, i64 12, i64 30
  %488 = add i64 %452, %.v33
  store i64 %488, i64* %PC, align 8, !tbaa !2428
  br i1 %487, label %block_400eca, label %block_400edc

block_400dbc:                                     ; preds = %block_400db2
  %489 = add i64 %517, -20
  %490 = add i64 %545, 7
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to i32*
  store i32 0, i32* %491, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400dc3

block_400eb4:                                     ; preds = %block_400eaa
  %492 = add i64 %1068, 4
  store i64 %492, i64* %PC, align 8
  %493 = load i32, i32* %1045, align 4
  %494 = add i32 %493, -2
  %495 = icmp ult i32 %493, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %14, align 1, !tbaa !2432
  %497 = and i32 %494, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497) #9
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %15, align 1, !tbaa !2446
  %502 = xor i32 %493, %494
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %16, align 1, !tbaa !2447
  %506 = icmp eq i32 %494, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %17, align 1, !tbaa !2448
  %508 = lshr i32 %494, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %18, align 1, !tbaa !2449
  %510 = lshr i32 %493, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %510
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %19, align 1, !tbaa !2450
  %.v32 = select i1 %506, i64 10, i64 40
  %515 = add i64 %1068, %.v32
  store i64 %515, i64* %PC, align 8, !tbaa !2428
  br i1 %506, label %block_400ebe, label %block_400edc

block_400db2:                                     ; preds = %block_400dab, %block_400fab
  %516 = phi i64 [ %.pre, %block_400dab ], [ %1040, %block_400fab ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400dab ], [ %MEMORY.13, %block_400fab ]
  %517 = load i64, i64* %RBP, align 8
  %518 = add i64 %517, -12
  %519 = add i64 %516, 4
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = add i32 %521, -4
  %523 = icmp ult i32 %521, 4
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %14, align 1, !tbaa !2432
  %525 = and i32 %522, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525) #9
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %15, align 1, !tbaa !2446
  %530 = xor i32 %521, %522
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %16, align 1, !tbaa !2447
  %534 = icmp eq i32 %522, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %17, align 1, !tbaa !2448
  %536 = lshr i32 %522, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %18, align 1, !tbaa !2449
  %538 = lshr i32 %521, 31
  %539 = xor i32 %536, %538
  %540 = add nuw nsw i32 %539, %538
  %541 = icmp eq i32 %540, 2
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %19, align 1, !tbaa !2450
  %543 = icmp ne i8 %537, 0
  %544 = xor i1 %543, %541
  %.demorgan = or i1 %534, %544
  %.v18 = select i1 %.demorgan, i64 10, i64 524
  %545 = add i64 %516, %.v18
  store i64 %545, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400dbc, label %block_400fbe

block_400e86:                                     ; preds = %block_400e7c, %block_400e72
  %546 = phi i64 [ %1116, %block_400e72 ], [ %55, %block_400e7c ]
  %547 = add i64 %546, 260
  store i64 %547, i64* %PC, align 8, !tbaa !2428
  br label %block_400f8a

block_400edc:                                     ; preds = %block_400ebe, %block_400eb4, %block_400eca
  %548 = phi i64 [ %1042, %block_400eb4 ], [ %1042, %block_400ebe ], [ %.pre8, %block_400eca ]
  %549 = phi i64 [ %515, %block_400eb4 ], [ %488, %block_400ebe ], [ %.pre7, %block_400eca ]
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %550 = add i64 %548, -8
  %551 = add i64 %549, 8
  store i64 %551, i64* %PC, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RCX, align 8, !tbaa !2428
  %555 = add i64 %548, -20
  %556 = add i64 %549, 11
  store i64 %556, i64* %PC, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RDX, align 8, !tbaa !2428
  %560 = add i64 %548, -44
  %561 = add i64 %549, 14
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  store i32 %553, i32* %562, align 4
  %563 = load i32, i32* %EDX, align 4
  %564 = zext i32 %563 to i64
  %565 = load i64, i64* %PC, align 8
  store i64 %564, i64* %RCX, align 8, !tbaa !2428
  %566 = load i32, i32* %EAX, align 4
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RDX, align 8, !tbaa !2428
  %568 = add i64 %565, 6
  store i64 %568, i64* %PC, align 8
  %569 = trunc i32 %563 to i5
  switch i5 %569, label %575 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %570
  ]

; <label>:570:                                    ; preds = %block_400edc
  %571 = shl i32 %566, 1
  %572 = icmp slt i32 %566, 0
  %573 = icmp slt i32 %571, 0
  %574 = xor i1 %572, %573
  br label %584

; <label>:575:                                    ; preds = %block_400edc
  %576 = and i32 %563, 31
  %577 = zext i32 %576 to i64
  %578 = add nuw nsw i64 %577, 4294967295
  %579 = and i64 %578, 4294967295
  %580 = shl i64 %567, %579
  %581 = trunc i64 %580 to i32
  %582 = icmp slt i32 %581, 0
  %583 = shl i32 %581, 1
  br label %584

; <label>:584:                                    ; preds = %575, %570
  %585 = phi i1 [ %572, %570 ], [ %582, %575 ]
  %586 = phi i1 [ %574, %570 ], [ false, %575 ]
  %587 = phi i32 [ %571, %570 ], [ %583, %575 ]
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RDX, align 8, !tbaa !2428
  %589 = zext i1 %585 to i8
  store i8 %589, i8* %14, align 1, !tbaa !2451
  %590 = and i32 %587, 254
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590) #9
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %595 = icmp eq i32 %587, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %17, align 1, !tbaa !2451
  %597 = lshr i32 %587, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %18, align 1, !tbaa !2451
  %599 = zext i1 %586 to i8
  store i8 %599, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %584, %block_400edc
  %600 = phi i32 [ %587, %584 ], [ %566, %block_400edc ]
  %601 = load i64, i64* %RBP, align 8
  %602 = add i64 %601, -44
  %603 = add i64 %565, 9
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = or i32 %600, %605
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %608 = and i32 %606, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608) #9
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %15, align 1, !tbaa !2446
  %613 = icmp eq i32 %606, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %17, align 1, !tbaa !2448
  %615 = lshr i32 %606, 31
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %617 = add i64 %601, -24
  %618 = add i64 %565, 14
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RCX, align 8, !tbaa !2428
  %622 = load i64, i64* %RAX, align 8
  %623 = add i64 %565, 16
  store i64 %623, i64* %PC, align 8
  %624 = trunc i32 %620 to i5
  %625 = trunc i64 %622 to i32
  switch i5 %624, label %631 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %626
  ]

; <label>:626:                                    ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %627 = shl i32 %625, 1
  %628 = icmp slt i32 %625, 0
  %629 = icmp slt i32 %627, 0
  %630 = xor i1 %628, %629
  br label %641

; <label>:631:                                    ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %632 = and i32 %620, 31
  %633 = zext i32 %632 to i64
  %634 = add nuw nsw i64 %633, 4294967295
  %635 = and i64 %622, 4294967295
  %636 = and i64 %634, 4294967295
  %637 = shl i64 %635, %636
  %638 = trunc i64 %637 to i32
  %639 = icmp slt i32 %638, 0
  %640 = shl i32 %638, 1
  br label %641

; <label>:641:                                    ; preds = %631, %626
  %642 = phi i1 [ %628, %626 ], [ %639, %631 ]
  %643 = phi i1 [ %630, %626 ], [ false, %631 ]
  %644 = phi i32 [ %627, %626 ], [ %640, %631 ]
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX, align 8, !tbaa !2428
  %646 = zext i1 %642 to i8
  store i8 %646, i8* %14, align 1, !tbaa !2451
  %647 = and i32 %644, 254
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647) #9
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %652 = icmp eq i32 %644, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %17, align 1, !tbaa !2451
  %654 = lshr i32 %644, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %18, align 1, !tbaa !2451
  %656 = zext i1 %643 to i8
  store i8 %656, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %641, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %657 = phi i32 [ %644, %641 ], [ %625, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ]
  %658 = or i32 %657, %606
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %660 = and i32 %658, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660) #9
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %15, align 1, !tbaa !2446
  %665 = icmp eq i32 %658, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %17, align 1, !tbaa !2448
  %667 = lshr i32 %658, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %669 = add i64 %601, -16
  %670 = add i64 %565, 21
  store i64 %670, i64* %PC, align 8
  %671 = inttoptr i64 %669 to i32*
  store i32 %658, i32* %671, align 4
  %672 = load i64, i64* %RBP, align 8
  %673 = add i64 %672, -28
  %674 = load i64, i64* %PC, align 8
  %675 = add i64 %674, 3
  store i64 %675, i64* %PC, align 8
  %676 = inttoptr i64 %673 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RAX, align 8, !tbaa !2428
  %679 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %679, i64* %RDI, align 8, !tbaa !2428
  %680 = add i64 %672, -4
  %681 = add i64 %674, 15
  store i64 %681, i64* %PC, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sext i32 %683 to i64
  %685 = mul nsw i64 %684, 12
  store i64 %685, i64* %R8, align 8, !tbaa !2428
  %686 = lshr i64 %685, 63
  %687 = add i64 %685, %679
  store i64 %687, i64* %RDI, align 8, !tbaa !2428
  %688 = icmp ult i64 %687, %679
  %689 = icmp ult i64 %687, %685
  %690 = or i1 %688, %689
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %14, align 1, !tbaa !2432
  %692 = trunc i64 %687 to i32
  %693 = and i32 %692, 255
  %694 = tail call i32 @llvm.ctpop.i32(i32 %693) #9
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  store i8 %697, i8* %15, align 1, !tbaa !2446
  %698 = xor i64 %685, %679
  %699 = xor i64 %698, %687
  %700 = lshr i64 %699, 4
  %701 = trunc i64 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %16, align 1, !tbaa !2447
  %703 = icmp eq i64 %687, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %17, align 1, !tbaa !2448
  %705 = lshr i64 %687, 63
  %706 = trunc i64 %705 to i8
  store i8 %706, i8* %18, align 1, !tbaa !2449
  %707 = lshr i64 %679, 63
  %708 = xor i64 %705, %707
  %709 = xor i64 %705, %686
  %710 = add nuw nsw i64 %708, %709
  %711 = icmp eq i64 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %19, align 1, !tbaa !2450
  %713 = add i64 %674, 24
  store i64 %713, i64* %PC, align 8
  %714 = inttoptr i64 %687 to i32*
  store i32 %677, i32* %714, align 4
  %715 = load i64, i64* %RBP, align 8
  %716 = add i64 %715, -32
  %717 = load i64, i64* %PC, align 8
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC, align 8
  %719 = inttoptr i64 %716 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RAX, align 8, !tbaa !2428
  %722 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %722, i64* %RDI, align 8, !tbaa !2428
  %723 = add i64 %715, -4
  %724 = add i64 %717, 15
  store i64 %724, i64* %PC, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = sext i32 %726 to i64
  %728 = mul nsw i64 %727, 12
  store i64 %728, i64* %R8, align 8, !tbaa !2428
  %729 = lshr i64 %728, 63
  %730 = add i64 %728, %722
  store i64 %730, i64* %RDI, align 8, !tbaa !2428
  %731 = icmp ult i64 %730, %722
  %732 = icmp ult i64 %730, %728
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %14, align 1, !tbaa !2432
  %735 = trunc i64 %730 to i32
  %736 = and i32 %735, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736) #9
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %15, align 1, !tbaa !2446
  %741 = xor i64 %728, %722
  %742 = xor i64 %741, %730
  %743 = lshr i64 %742, 4
  %744 = trunc i64 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %16, align 1, !tbaa !2447
  %746 = icmp eq i64 %730, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %17, align 1, !tbaa !2448
  %748 = lshr i64 %730, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %18, align 1, !tbaa !2449
  %750 = lshr i64 %722, 63
  %751 = xor i64 %748, %750
  %752 = xor i64 %748, %729
  %753 = add nuw nsw i64 %751, %752
  %754 = icmp eq i64 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %19, align 1, !tbaa !2450
  %756 = add i64 %730, 4
  %757 = add i64 %717, 25
  store i64 %757, i64* %PC, align 8
  %758 = inttoptr i64 %756 to i32*
  store i32 %720, i32* %758, align 4
  %759 = load i64, i64* %RBP, align 8
  %760 = add i64 %759, -12
  %761 = load i64, i64* %PC, align 8
  %762 = add i64 %761, 3
  store i64 %762, i64* %PC, align 8
  %763 = inttoptr i64 %760 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RAX, align 8, !tbaa !2428
  %766 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %766, i64* %RDI, align 8, !tbaa !2428
  %767 = add i64 %759, -4
  %768 = add i64 %761, 15
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = sext i32 %770 to i64
  %772 = mul nsw i64 %771, 12
  store i64 %772, i64* %R8, align 8, !tbaa !2428
  %773 = lshr i64 %772, 63
  %774 = add i64 %772, %766
  %775 = icmp ult i64 %774, %766
  %776 = icmp ult i64 %774, %772
  %777 = or i1 %775, %776
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %14, align 1, !tbaa !2432
  %779 = trunc i64 %774 to i32
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780) #9
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %15, align 1, !tbaa !2446
  %785 = xor i64 %772, %766
  %786 = xor i64 %785, %774
  %787 = lshr i64 %786, 4
  %788 = trunc i64 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %16, align 1, !tbaa !2447
  %790 = icmp eq i64 %774, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %17, align 1, !tbaa !2448
  %792 = lshr i64 %774, 63
  %793 = trunc i64 %792 to i8
  store i8 %793, i8* %18, align 1, !tbaa !2449
  %794 = lshr i64 %766, 63
  %795 = xor i64 %792, %794
  %796 = xor i64 %792, %773
  %797 = add nuw nsw i64 %795, %796
  %798 = icmp eq i64 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %19, align 1, !tbaa !2450
  %800 = add i64 %774, 8
  %801 = add i64 %761, 25
  store i64 %801, i64* %PC, align 8
  %802 = inttoptr i64 %800 to i32*
  store i32 %764, i32* %802, align 4
  %803 = load i64, i64* %PC, align 8
  %804 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %804, i64* %RDI, align 8, !tbaa !2428
  %805 = load i64, i64* %RBP, align 8
  %806 = add i64 %805, -4
  %807 = add i64 %803, 12
  store i64 %807, i64* %PC, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  %811 = mul nsw i64 %810, 12
  store i64 %811, i64* %R8, align 8, !tbaa !2428
  %812 = lshr i64 %811, 63
  %813 = add i64 %811, %804
  store i64 %813, i64* %RDI, align 8, !tbaa !2428
  %814 = icmp ult i64 %813, %804
  %815 = icmp ult i64 %813, %811
  %816 = or i1 %814, %815
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %14, align 1, !tbaa !2432
  %818 = trunc i64 %813 to i32
  %819 = and i32 %818, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819) #9
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %15, align 1, !tbaa !2446
  %824 = xor i64 %811, %804
  %825 = xor i64 %824, %813
  %826 = lshr i64 %825, 4
  %827 = trunc i64 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %16, align 1, !tbaa !2447
  %829 = icmp eq i64 %813, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %17, align 1, !tbaa !2448
  %831 = lshr i64 %813, 63
  %832 = trunc i64 %831 to i8
  store i8 %832, i8* %18, align 1, !tbaa !2449
  %833 = lshr i64 %804, 63
  %834 = xor i64 %831, %833
  %835 = xor i64 %831, %812
  %836 = add nuw nsw i64 %834, %835
  %837 = icmp eq i64 %836, 2
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %19, align 1, !tbaa !2450
  %839 = add i64 %803, -1449
  %840 = add i64 %803, 24
  %841 = load i64, i64* %RSP, align 8, !tbaa !2428
  %842 = add i64 %841, -8
  %843 = inttoptr i64 %842 to i64*
  store i64 %840, i64* %843, align 8
  store i64 %842, i64* %RSP, align 8, !tbaa !2428
  store i64 %839, i64* %PC, align 8, !tbaa !2428
  %844 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %839, %struct.Memory* %MEMORY.7)
  %845 = load i64, i64* %PC, align 8
  %846 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %846, i64* %RDI, align 8, !tbaa !2428
  %847 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RDX, align 8, !tbaa !2428
  %849 = load i64, i64* %RBP, align 8
  %850 = add i64 %849, -4
  %851 = add i64 %845, 18
  store i64 %851, i64* %PC, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = add i32 %853, %847
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RDX, align 8, !tbaa !2428
  %856 = icmp ult i32 %854, %847
  %857 = icmp ult i32 %854, %853
  %858 = or i1 %856, %857
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %14, align 1, !tbaa !2432
  %860 = and i32 %854, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860) #9
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %15, align 1, !tbaa !2446
  %865 = xor i32 %853, %847
  %866 = xor i32 %865, %854
  %867 = lshr i32 %866, 4
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %16, align 1, !tbaa !2447
  %870 = icmp eq i32 %854, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %17, align 1, !tbaa !2448
  %872 = lshr i32 %854, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %18, align 1, !tbaa !2449
  %874 = lshr i32 %847, 31
  %875 = lshr i32 %853, 31
  %876 = xor i32 %872, %874
  %877 = xor i32 %872, %875
  %878 = add nuw nsw i32 %876, %877
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %19, align 1, !tbaa !2450
  %881 = sext i32 %854 to i64
  store i64 %881, i64* %R8, align 8, !tbaa !2428
  %882 = shl nsw i64 %881, 2
  %883 = add i64 %882, %846
  %884 = load i32, i32* %EAX, align 4
  %885 = add i64 %845, 25
  store i64 %885, i64* %PC, align 8
  %886 = inttoptr i64 %883 to i32*
  store i32 %884, i32* %886, align 4
  %887 = load i64, i64* %RBP, align 8
  %888 = add i64 %887, -4
  %889 = load i64, i64* %PC, align 8
  %890 = add i64 %889, 3
  store i64 %890, i64* %PC, align 8
  %891 = inttoptr i64 %888 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = add i32 %892, 1
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX, align 8, !tbaa !2428
  %895 = icmp eq i32 %892, -1
  %896 = icmp eq i32 %893, 0
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %14, align 1, !tbaa !2432
  %899 = and i32 %893, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899) #9
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %15, align 1, !tbaa !2446
  %904 = xor i32 %892, %893
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %16, align 1, !tbaa !2447
  %908 = zext i1 %896 to i8
  store i8 %908, i8* %17, align 1, !tbaa !2448
  %909 = lshr i32 %893, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %18, align 1, !tbaa !2449
  %911 = lshr i32 %892, 31
  %912 = xor i32 %909, %911
  %913 = add nuw nsw i32 %912, %909
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %19, align 1, !tbaa !2450
  %916 = add i64 %887, -16
  %917 = add i64 %889, 9
  store i64 %917, i64* %PC, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RSI, align 8, !tbaa !2428
  store i64 %894, i64* %RDI, align 8, !tbaa !2428
  %921 = add i64 %889, -730
  %922 = add i64 %889, 16
  %923 = load i64, i64* %RSP, align 8, !tbaa !2428
  %924 = add i64 %923, -8
  %925 = inttoptr i64 %924 to i64*
  store i64 %922, i64* %925, align 8
  store i64 %924, i64* %RSP, align 8, !tbaa !2428
  store i64 %921, i64* %PC, align 8, !tbaa !2428
  %926 = tail call %struct.Memory* @sub_400ca0_recSearch_renamed_(%struct.State* nonnull %0, i64 %921, %struct.Memory* %844)
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400f8a

block_400d2e:                                     ; preds = %block_400ce2
  %927 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %927, i64* %RAX, align 8, !tbaa !2428
  %928 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %929 = zext i32 %928 to i64
  store i64 %929, i64* %RCX, align 8, !tbaa !2428
  %930 = add i64 %230, -4
  %931 = add i64 %264, 18
  store i64 %931, i64* %PC, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = add i32 %933, %928
  %935 = lshr i32 %934, 31
  %936 = add i32 %934, -1
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RCX, align 8, !tbaa !2428
  %938 = icmp eq i32 %934, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %14, align 1, !tbaa !2432
  %940 = and i32 %936, 255
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940) #9
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %15, align 1, !tbaa !2446
  %945 = xor i32 %934, %936
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  store i8 %948, i8* %16, align 1, !tbaa !2447
  %949 = icmp eq i32 %936, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %17, align 1, !tbaa !2448
  %951 = lshr i32 %936, 31
  %952 = trunc i32 %951 to i8
  store i8 %952, i8* %18, align 1, !tbaa !2449
  %953 = xor i32 %951, %935
  %954 = add nuw nsw i32 %953, %935
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %19, align 1, !tbaa !2450
  %957 = sext i32 %936 to i64
  store i64 %957, i64* %RDX, align 8, !tbaa !2428
  %958 = shl nsw i64 %957, 2
  %959 = add i64 %958, %927
  %960 = add i64 %264, 27
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RCX, align 8, !tbaa !2428
  store i32 %962, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %964 = load i64, i64* %RBP, align 8
  %965 = add i64 %964, -4
  %966 = add i64 %264, 37
  store i64 %966, i64* %PC, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RCX, align 8, !tbaa !2428
  store i32 %968, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 84) to i32*), align 4
  %970 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 88) to i64*), align 8
  store i64 %970, i64* %RDI, align 8, !tbaa !2428
  %971 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %971, i64* %RSI, align 8, !tbaa !2428
  %972 = add i64 %264, 63
  store i64 %972, i64* %PC, align 8
  %973 = load i32, i32* %967, align 4
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RDX, align 8, !tbaa !2428
  %975 = add i64 %264, -1102
  %976 = add i64 %264, 68
  %977 = load i64, i64* %RSP, align 8, !tbaa !2428
  %978 = add i64 %977, -8
  %979 = inttoptr i64 %978 to i64*
  store i64 %976, i64* %979, align 8
  store i64 %978, i64* %RSP, align 8, !tbaa !2428
  store i64 %975, i64* %PC, align 8, !tbaa !2428
  %980 = tail call %struct.Memory* @sub_4008e0_saveSolution_renamed_(%struct.State* nonnull %0, i64 %975, %struct.Memory* %229)
  %981 = load i64, i64* %PC, align 8
  %982 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RCX, align 8, !tbaa !2428
  %984 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %985 = sub i32 %982, %984
  %986 = icmp ult i32 %982, %984
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1, !tbaa !2432
  %988 = and i32 %985, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988) #9
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %15, align 1, !tbaa !2446
  %993 = xor i32 %984, %982
  %994 = xor i32 %993, %985
  %995 = lshr i32 %994, 4
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  store i8 %997, i8* %16, align 1, !tbaa !2447
  %998 = icmp eq i32 %985, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %17, align 1, !tbaa !2448
  %1000 = lshr i32 %985, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %18, align 1, !tbaa !2449
  %1002 = lshr i32 %982, 31
  %1003 = lshr i32 %984, 31
  %1004 = xor i32 %1003, %1002
  %1005 = xor i32 %1000, %1002
  %1006 = add nuw nsw i32 %1005, %1004
  %1007 = icmp eq i32 %1006, 2
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %19, align 1, !tbaa !2450
  %.v17 = select i1 %998, i64 20, i64 47
  %1009 = add i64 %981, %.v17
  store i64 %1009, i64* %PC, align 8, !tbaa !2428
  br i1 %998, label %block_400d86, label %block_400da1

block_400fab:                                     ; preds = %block_400dc3
  %1010 = load i64, i64* %RBP, align 8
  %1011 = add i64 %1010, -12
  %1012 = add i64 %1285, 8
  store i64 %1012, i64* %PC, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = add i32 %1014, 1
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RAX, align 8, !tbaa !2428
  %1017 = icmp eq i32 %1014, -1
  %1018 = icmp eq i32 %1015, 0
  %1019 = or i1 %1017, %1018
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %14, align 1, !tbaa !2432
  %1021 = and i32 %1015, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021) #9
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %15, align 1, !tbaa !2446
  %1026 = xor i32 %1014, %1015
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %16, align 1, !tbaa !2447
  %1030 = zext i1 %1018 to i8
  store i8 %1030, i8* %17, align 1, !tbaa !2448
  %1031 = lshr i32 %1015, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %18, align 1, !tbaa !2449
  %1033 = lshr i32 %1014, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1031
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %19, align 1, !tbaa !2450
  %1038 = add i64 %1285, 14
  store i64 %1038, i64* %PC, align 8
  store i32 %1015, i32* %1013, align 4
  %1039 = load i64, i64* %PC, align 8
  %1040 = add i64 %1039, -519
  store i64 %1040, i64* %PC, align 8, !tbaa !2428
  br label %block_400db2

block_400eaa:                                     ; preds = %block_400e8b, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eaa_crit_edge
  %1041 = phi i64 [ %1310, %block_400e8b ], [ %1185, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eaa_crit_edge ]
  %1042 = phi i64 [ %424, %block_400e8b ], [ %.pre6, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eaa_crit_edge ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_400e8b ], [ %1175, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eaa_crit_edge ]
  %1043 = add i64 %1042, -12
  %1044 = add i64 %1041, 4
  store i64 %1044, i64* %PC, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = add i32 %1046, -4
  %1048 = icmp ult i32 %1046, 4
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %14, align 1, !tbaa !2432
  %1050 = and i32 %1047, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050) #9
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %15, align 1, !tbaa !2446
  %1055 = xor i32 %1046, %1047
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %16, align 1, !tbaa !2447
  %1059 = icmp eq i32 %1047, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %17, align 1, !tbaa !2448
  %1061 = lshr i32 %1047, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %18, align 1, !tbaa !2449
  %1063 = lshr i32 %1046, 31
  %1064 = xor i32 %1061, %1063
  %1065 = add nuw nsw i32 %1064, %1063
  %1066 = icmp eq i32 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %19, align 1, !tbaa !2450
  %.v31 = select i1 %1059, i64 20, i64 10
  %1068 = add i64 %1041, %.v31
  store i64 %1068, i64* %PC, align 8, !tbaa !2428
  br i1 %1059, label %block_400ebe, label %block_400eb4

block_400da6:                                     ; preds = %block_400ce2, %block_400da1
  %1069 = phi i64 [ %264, %block_400ce2 ], [ %1072, %block_400da1 ]
  %MEMORY.8 = phi %struct.Memory* [ %229, %block_400ce2 ], [ %MEMORY.9, %block_400da1 ]
  %1070 = add i64 %1069, 541
  br label %block_400fc3

block_400da1:                                     ; preds = %block_400d2e, %block_400d86
  %1071 = phi i64 [ %1009, %block_400d2e ], [ %1325, %block_400d86 ]
  %MEMORY.9 = phi %struct.Memory* [ %980, %block_400d2e ], [ %1323, %block_400d86 ]
  %1072 = add i64 %1071, 5
  store i64 %1072, i64* %PC, align 8, !tbaa !2428
  br label %block_400da6

block_400f9d:                                     ; preds = %block_400dfa, %block_400dee
  %.sink14 = phi i64 [ %1186, %block_400dee ], [ %94, %block_400dfa ]
  %1073 = phi i64 [ %292, %block_400dee ], [ %57, %block_400dfa ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.13, %block_400dee ], [ %MEMORY.0, %block_400dfa ]
  %1074 = add i64 %1073, -20
  %1075 = add i64 %.sink14, 3
  store i64 %1075, i64* %PC, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = add i32 %1077, 1
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX, align 8, !tbaa !2428
  %1080 = icmp eq i32 %1077, -1
  %1081 = icmp eq i32 %1078, 0
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %14, align 1, !tbaa !2432
  %1084 = and i32 %1078, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084) #9
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %15, align 1, !tbaa !2446
  %1089 = xor i32 %1077, %1078
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %16, align 1, !tbaa !2447
  %1093 = zext i1 %1081 to i8
  store i8 %1093, i8* %17, align 1, !tbaa !2448
  %1094 = lshr i32 %1078, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %18, align 1, !tbaa !2449
  %1096 = lshr i32 %1077, 31
  %1097 = xor i32 %1094, %1096
  %1098 = add nuw nsw i32 %1097, %1094
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %19, align 1, !tbaa !2450
  %1101 = add i64 %.sink14, 9
  store i64 %1101, i64* %PC, align 8
  store i32 %1078, i32* %1076, align 4
  %1102 = load i64, i64* %PC, align 8
  %1103 = add i64 %1102, -483
  store i64 %1103, i64* %PC, align 8, !tbaa !2428
  br label %block_400dc3

block_400e72:                                     ; preds = %block_400e63, %block_400e4f.block_400e72_crit_edge
  %.pre-phi12 = phi i32* [ %.pre11, %block_400e4f.block_400e72_crit_edge ], [ %268, %block_400e63 ]
  %1104 = phi i64 [ %364, %block_400e4f.block_400e72_crit_edge ], [ %123, %block_400e63 ]
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %PC, align 8
  %1106 = load i32, i32* %.pre-phi12, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1107 = and i32 %1106, 255
  %1108 = tail call i32 @llvm.ctpop.i32(i32 %1107) #9
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  %1111 = xor i8 %1110, 1
  store i8 %1111, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %1112 = icmp eq i32 %1106, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %17, align 1, !tbaa !2448
  %1114 = lshr i32 %1106, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v27 = select i1 %1112, i64 20, i64 10
  %1116 = add i64 %1104, %.v27
  store i64 %1116, i64* %PC, align 8, !tbaa !2428
  br i1 %1112, label %block_400e86, label %block_400e7c

block_400e1c:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1117 = add i64 %1402, 366
  store i64 %1117, i64* %PC, align 8, !tbaa !2428
  br label %block_400f8a

block_400fc3:                                     ; preds = %block_400cbc, %block_400da6, %block_400fbe
  %1118 = phi i64 [ %95, %block_400fbe ], [ %1070, %block_400da6 ], [ %1151, %block_400cbc ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.4, %block_400fbe ], [ %MEMORY.8, %block_400da6 ], [ %2, %block_400cbc ]
  %1119 = load i64, i64* %RSP, align 8
  %1120 = add i64 %1119, 48
  store i64 %1120, i64* %RSP, align 8, !tbaa !2428
  %1121 = icmp ugt i64 %1119, -49
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %14, align 1, !tbaa !2432
  %1123 = trunc i64 %1120 to i32
  %1124 = and i32 %1123, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124) #9
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %15, align 1, !tbaa !2446
  %1129 = xor i64 %1119, 16
  %1130 = xor i64 %1129, %1120
  %1131 = lshr i64 %1130, 4
  %1132 = trunc i64 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %16, align 1, !tbaa !2447
  %1134 = icmp eq i64 %1120, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %17, align 1, !tbaa !2448
  %1136 = lshr i64 %1120, 63
  %1137 = trunc i64 %1136 to i8
  store i8 %1137, i8* %18, align 1, !tbaa !2449
  %1138 = lshr i64 %1119, 63
  %1139 = xor i64 %1136, %1138
  %1140 = add nuw nsw i64 %1139, %1136
  %1141 = icmp eq i64 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %19, align 1, !tbaa !2450
  %1143 = add i64 %1118, 5
  store i64 %1143, i64* %PC, align 8
  %1144 = add i64 %1119, 56
  %1145 = inttoptr i64 %1120 to i64*
  %1146 = load i64, i64* %1145, align 8
  store i64 %1146, i64* %RBP, align 8, !tbaa !2428
  store i64 %1144, i64* %RSP, align 8, !tbaa !2428
  %1147 = add i64 %1118, 6
  store i64 %1147, i64* %PC, align 8
  %1148 = inttoptr i64 %1144 to i64*
  %1149 = load i64, i64* %1148, align 8
  store i64 %1149, i64* %PC, align 8, !tbaa !2428
  %1150 = add i64 %1119, 64
  store i64 %1150, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.12

block_400cbc:                                     ; preds = %block_400ca0
  %1151 = add i64 %41, 775
  br label %block_400fc3

block_400e95:                                     ; preds = %block_400e8b
  %1152 = add i64 %1310, 3
  store i64 %1152, i64* %PC, align 8
  %1153 = load i32, i32* %.pre-phi12, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX, align 8, !tbaa !2428
  %1155 = sext i32 %1153 to i64
  %1156 = lshr i64 %1155, 32
  store i64 %1156, i64* %1406, align 8, !tbaa !2428
  %1157 = add i64 %1310, 7
  store i64 %1157, i64* %PC, align 8
  %1158 = load i32, i32* %44, align 4
  %1159 = sext i32 %1158 to i64
  %1160 = shl nuw i64 %1156, 32
  %1161 = or i64 %1160, %1154
  %1162 = sdiv i64 %1161, %1159
  %1163 = shl i64 %1162, 32
  %1164 = ashr exact i64 %1163, 32
  %1165 = icmp eq i64 %1162, %1164
  br i1 %1165, label %1168, label %1166

; <label>:1166:                                   ; preds = %block_400e95
  %1167 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1157, %struct.Memory* %MEMORY.0) #8
  %.pre4 = load i32, i32* %EDX, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1168:                                   ; preds = %block_400e95
  %1169 = srem i64 %1161, %1159
  %1170 = and i64 %1162, 4294967295
  store i64 %1170, i64* %1407, align 8, !tbaa !2428
  %1171 = and i64 %1169, 4294967295
  store i64 %1171, i64* %1406, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 0, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %1172 = trunc i64 %1169 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1168, %1166
  %1173 = phi i64 [ %.pre5, %1166 ], [ %1157, %1168 ]
  %1174 = phi i32 [ %.pre4, %1166 ], [ %1172, %1168 ]
  %1175 = phi %struct.Memory* [ %1167, %1166 ], [ %MEMORY.0, %1168 ]
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1176 = and i32 %1174, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176) #9
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %1181 = icmp eq i32 %1174, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %17, align 1, !tbaa !2448
  %1183 = lshr i32 %1174, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v30 = select i1 %1181, i64 14, i64 9
  %1185 = add i64 %1173, %.v30
  store i64 %1185, i64* %PC, align 8, !tbaa !2428
  br i1 %1181, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eaa_crit_edge, label %block_400ea5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit.block_400eaa_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %.pre6 = load i64, i64* %RBP, align 8
  br label %block_400eaa

block_400dee:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit3
  %1186 = add i64 %339, 431
  %1187 = add i64 %339, 5
  store i64 %1187, i64* %PC, align 8
  br label %block_400f9d

block_400cc1:                                     ; preds = %block_400ca0
  %1188 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %1189 = add i32 %1188, 1
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX, align 8, !tbaa !2428
  %1191 = icmp eq i32 %1188, -1
  %1192 = icmp eq i32 %1189, 0
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %14, align 1, !tbaa !2432
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195) #9
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %15, align 1, !tbaa !2446
  %1200 = xor i32 %1188, %1189
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %16, align 1, !tbaa !2447
  %1204 = zext i1 %1192 to i8
  store i8 %1204, i8* %17, align 1, !tbaa !2448
  %1205 = lshr i32 %1189, 31
  %1206 = trunc i32 %1205 to i8
  store i8 %1206, i8* %18, align 1, !tbaa !2449
  %1207 = lshr i32 %1188, 31
  %1208 = xor i32 %1205, %1207
  %1209 = add nuw nsw i32 %1208, %1205
  %1210 = icmp eq i32 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %19, align 1, !tbaa !2450
  store i32 %1189, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 52) to i32*), align 4
  %1212 = load i64, i64* %RBP, align 8
  %1213 = add i64 %1212, -4
  %1214 = add i64 %41, 20
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RAX, align 8, !tbaa !2428
  %1218 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  %1219 = sub i32 %1216, %1218
  %1220 = icmp ult i32 %1216, %1218
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %14, align 1, !tbaa !2432
  %1222 = and i32 %1219, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222) #9
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %15, align 1, !tbaa !2446
  %1227 = xor i32 %1218, %1216
  %1228 = xor i32 %1227, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %16, align 1, !tbaa !2447
  %1232 = icmp eq i32 %1219, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %17, align 1, !tbaa !2448
  %1234 = lshr i32 %1219, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %18, align 1, !tbaa !2449
  %1236 = lshr i32 %1216, 31
  %1237 = lshr i32 %1218, 31
  %1238 = xor i32 %1237, %1236
  %1239 = xor i32 %1234, %1236
  %1240 = add nuw nsw i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %19, align 1, !tbaa !2450
  %.v15 = select i1 %1232, i64 33, i64 234
  %1243 = add i64 %41, %.v15
  store i64 %1243, i64* %PC, align 8, !tbaa !2428
  br i1 %1232, label %block_400ce2, label %block_400dab

block_400dc3:                                     ; preds = %block_400f9d, %block_400dbc
  %1244 = phi i64 [ %.pre2, %block_400dbc ], [ %1103, %block_400f9d ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.4, %block_400dbc ], [ %MEMORY.10, %block_400f9d ]
  %1245 = load i64, i64* %RBP, align 8
  %1246 = add i64 %1245, -20
  %1247 = add i64 %1244, 3
  store i64 %1247, i64* %PC, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RAX, align 8, !tbaa !2428
  %1251 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RCX, align 8, !tbaa !2428
  %1253 = add i64 %1245, -4
  %1254 = add i64 %1244, 13
  store i64 %1254, i64* %PC, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = add i32 %1256, %1251
  %1258 = zext i32 %1257 to i64
  store i64 %1258, i64* %RCX, align 8, !tbaa !2428
  %1259 = lshr i32 %1257, 31
  %1260 = sub i32 %1249, %1257
  %1261 = icmp ult i32 %1249, %1257
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %14, align 1, !tbaa !2432
  %1263 = and i32 %1260, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263) #9
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %15, align 1, !tbaa !2446
  %1268 = xor i32 %1257, %1249
  %1269 = xor i32 %1268, %1260
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %16, align 1, !tbaa !2447
  %1273 = icmp eq i32 %1260, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %17, align 1, !tbaa !2448
  %1275 = lshr i32 %1260, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %18, align 1, !tbaa !2449
  %1277 = lshr i32 %1249, 31
  %1278 = xor i32 %1259, %1277
  %1279 = xor i32 %1275, %1277
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %19, align 1, !tbaa !2450
  %1283 = icmp ne i8 %1276, 0
  %1284 = xor i1 %1283, %1281
  %.v19 = select i1 %1284, i64 21, i64 488
  %1285 = add i64 %1244, %.v19
  %1286 = add i64 %1285, 5
  store i64 %1286, i64* %PC, align 8
  br i1 %1284, label %block_400dd8, label %block_400fab

block_400e8b:                                     ; preds = %block_400e7c
  %1287 = add i64 %55, 4
  store i64 %1287, i64* %PC, align 8
  %1288 = load i32, i32* %428, align 4
  %1289 = add i32 %1288, -4
  %1290 = icmp ult i32 %1288, 4
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %14, align 1, !tbaa !2432
  %1292 = and i32 %1289, 255
  %1293 = tail call i32 @llvm.ctpop.i32(i32 %1292) #9
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  store i8 %1296, i8* %15, align 1, !tbaa !2446
  %1297 = xor i32 %1288, %1289
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %16, align 1, !tbaa !2447
  %1301 = icmp eq i32 %1289, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %17, align 1, !tbaa !2448
  %1303 = lshr i32 %1289, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %18, align 1, !tbaa !2449
  %1305 = lshr i32 %1288, 31
  %1306 = xor i32 %1303, %1305
  %1307 = add nuw nsw i32 %1306, %1305
  %1308 = icmp eq i32 %1307, 2
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %19, align 1, !tbaa !2450
  %.v29 = select i1 %1301, i64 10, i64 31
  %1310 = add i64 %55, %.v29
  store i64 %1310, i64* %PC, align 8, !tbaa !2428
  br i1 %1301, label %block_400e95, label %block_400eaa

block_400d86:                                     ; preds = %block_400d2e
  %1311 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 96) to i64*), align 16
  store i64 %1311, i64* %RDI, align 8, !tbaa !2428
  %1312 = load i64, i64* %RBP, align 8
  %1313 = add i64 %1312, -4
  %1314 = add i64 %1009, 11
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RSI, align 8, !tbaa !2428
  %1318 = add i64 %1009, -838
  %1319 = add i64 %1009, 16
  %1320 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1321 = add i64 %1320, -8
  %1322 = inttoptr i64 %1321 to i64*
  store i64 %1319, i64* %1322, align 8
  store i64 %1321, i64* %RSP, align 8, !tbaa !2428
  store i64 %1318, i64* %PC, align 8, !tbaa !2428
  %1323 = tail call %struct.Memory* @sub_400a40_printSolution_renamed_(%struct.State* nonnull %0, i64 %1318, %struct.Memory* %980)
  %1324 = load i64, i64* %PC, align 8
  %1325 = add i64 %1324, 11
  store i64 %1325, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  br label %block_400da1

block_400f8a:                                     ; preds = %block_400e1c, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1, %block_400e86, %block_400ea5, %block_400e6d
  %1326 = phi i64 [ %97, %block_400e6d ], [ %547, %block_400e86 ], [ %.pre9, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %340, %block_400ea5 ], [ %1117, %block_400e1c ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.0, %block_400e6d ], [ %MEMORY.0, %block_400e86 ], [ %926, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %1175, %block_400ea5 ], [ %MEMORY.0, %block_400e1c ]
  %1327 = load i64, i64* %RBP, align 8
  %1328 = add i64 %1327, -24
  %1329 = add i64 %1326, 3
  store i64 %1329, i64* %PC, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = add i32 %1331, 1
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RAX, align 8, !tbaa !2428
  %1334 = icmp eq i32 %1331, -1
  %1335 = icmp eq i32 %1332, 0
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1, !tbaa !2432
  %1338 = and i32 %1332, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338) #9
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %15, align 1, !tbaa !2446
  %1343 = xor i32 %1331, %1332
  %1344 = lshr i32 %1343, 4
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %16, align 1, !tbaa !2447
  %1347 = zext i1 %1335 to i8
  store i8 %1347, i8* %17, align 1, !tbaa !2448
  %1348 = lshr i32 %1332, 31
  %1349 = trunc i32 %1348 to i8
  store i8 %1349, i8* %18, align 1, !tbaa !2449
  %1350 = lshr i32 %1331, 31
  %1351 = xor i32 %1348, %1350
  %1352 = add nuw nsw i32 %1351, %1348
  %1353 = icmp eq i32 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %19, align 1, !tbaa !2450
  %1355 = add i64 %1326, 9
  store i64 %1355, i64* %PC, align 8
  store i32 %1332, i32* %1330, align 4
  %1356 = load i64, i64* %PC, align 8
  %1357 = add i64 %1356, -409
  store i64 %1357, i64* %PC, align 8, !tbaa !2428
  br label %block_400dfa

block_400e06:                                     ; preds = %block_400dfa
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %1358 = add i64 %93, 8
  store i64 %1358, i64* %PC, align 8
  %1359 = load i32, i32* %60, align 4
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RCX, align 8, !tbaa !2428
  %1361 = add i64 %93, 10
  store i64 %1361, i64* %PC, align 8
  %1362 = trunc i32 %1359 to i5
  switch i5 %1362, label %1363 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %1372
  ]

; <label>:1363:                                   ; preds = %block_400e06
  %1364 = and i32 %1359, 31
  %1365 = zext i32 %1364 to i64
  %1366 = add nuw nsw i64 %1365, 4294967295
  %1367 = and i64 %1366, 4294967295
  %1368 = shl i64 1, %1367
  %1369 = trunc i64 %1368 to i32
  %1370 = icmp slt i32 %1369, 0
  %1371 = shl i32 %1369, 1
  br label %1372

; <label>:1372:                                   ; preds = %block_400e06, %1363
  %1373 = phi i1 [ %1370, %1363 ], [ false, %block_400e06 ]
  %1374 = phi i32 [ %1371, %1363 ], [ 2, %block_400e06 ]
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RAX, align 8, !tbaa !2428
  %1376 = zext i1 %1373 to i8
  store i8 %1376, i8* %14, align 1, !tbaa !2451
  %1377 = and i32 %1374, 254
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377) #9
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %1382 = icmp eq i32 %1374, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %17, align 1, !tbaa !2451
  %1384 = lshr i32 %1374, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %19, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %1372, %block_400e06
  %1386 = phi i32 [ %1374, %1372 ], [ 1, %block_400e06 ]
  %1387 = add i64 %57, -8
  %1388 = add i64 %93, 13
  store i64 %1388, i64* %PC, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = and i32 %1390, %1386
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RAX, align 8, !tbaa !2428
  %1393 = and i32 %1391, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393) #9
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = icmp eq i32 %1391, 0
  %1399 = zext i1 %1398 to i8
  %1400 = lshr i32 %1391, 31
  %1401 = trunc i32 %1400 to i8
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %1397, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 %1399, i8* %17, align 1, !tbaa !2448
  store i8 %1401, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v22 = select i1 %1398, i64 27, i64 22
  %1402 = add i64 %93, %.v22
  store i64 %1402, i64* %PC, align 8, !tbaa !2428
  br i1 %1398, label %block_400e21, label %block_400e1c

block_400dab:                                     ; preds = %block_400cc1
  %1403 = add i64 %1212, -12
  %1404 = add i64 %1243, 7
  store i64 %1404, i64* %PC, align 8
  %1405 = inttoptr i64 %1403 to i32*
  store i32 1, i32* %1405, align 4
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400db2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4009a0_calculate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4009a0:
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = lshr i32 %25, 31
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %26, i64* %RDI, align 8, !tbaa !2428
  %34 = add i32 %24, -4
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = icmp ult i32 %25, 3
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %27, align 1, !tbaa !2432
  %38 = and i32 %34, 255
  %39 = tail call i32 @llvm.ctpop.i32(i32 %38) #9
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  store i8 %42, i8* %28, align 1, !tbaa !2446
  %43 = xor i32 %25, %34
  %44 = lshr i32 %43, 4
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  store i8 %46, i8* %29, align 1, !tbaa !2447
  %47 = icmp eq i32 %34, 0
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %30, align 1, !tbaa !2448
  %49 = lshr i32 %34, 31
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %32, align 1, !tbaa !2449
  %51 = xor i32 %49, %31
  %52 = add nuw nsw i32 %51, %31
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %33, align 1, !tbaa !2450
  %55 = add i64 %15, -24
  %56 = add i64 %17, 19
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
  %65 = load i8, i8* %27, align 1, !tbaa !2432
  %66 = load i8, i8* %30, align 1, !tbaa !2448
  %67 = or i8 %66, %65
  %68 = icmp eq i8 %67, 0
  %.v = select i1 %68, i64 106, i64 6
  %69 = add i64 %64, %.v
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  %70 = load i64, i64* %RBP, align 8
  br i1 %68, label %block_400a28, label %block_4009c4

block_4009d2:                                     ; preds = %block_4009c4
  %71 = add i64 %70, -16
  store i64 4196822, i64* %PC, align 8
  %72 = inttoptr i64 %71 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RAX, align 8, !tbaa !2428
  store i64 4196824, i64* %PC, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RCX, align 8, !tbaa !2428
  store i64 4196828, i64* %PC, align 8
  %77 = load i64, i64* %72, align 8
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = add i64 %77, 4
  store i64 4196831, i64* %PC, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %75
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RCX, align 8, !tbaa !2428
  %83 = icmp ult i32 %81, %75
  %84 = icmp ult i32 %81, %80
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %27, align 1, !tbaa !2432
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %28, align 1, !tbaa !2446
  %92 = xor i32 %80, %75
  %93 = xor i32 %92, %81
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %29, align 1, !tbaa !2447
  %97 = icmp eq i32 %81, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %30, align 1, !tbaa !2448
  %99 = lshr i32 %81, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %32, align 1, !tbaa !2449
  %101 = lshr i32 %75, 31
  %102 = lshr i32 %80, 31
  %103 = xor i32 %99, %101
  %104 = xor i32 %99, %102
  %105 = add nuw nsw i32 %103, %104
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %33, align 1, !tbaa !2450
  %108 = add i64 %70, -4
  store i64 4196834, i64* %PC, align 8
  %109 = inttoptr i64 %108 to i32*
  store i32 %81, i32* %109, align 4
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 77
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2f

block_4009fc:                                     ; preds = %block_4009c4
  %112 = add i64 %70, -16
  store i64 4196864, i64* %PC, align 8
  %113 = inttoptr i64 %112 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  store i64 4196866, i64* %PC, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RCX, align 8, !tbaa !2428
  store i64 4196870, i64* %PC, align 8
  %118 = load i64, i64* %113, align 8
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = add i64 %118, 4
  store i64 4196874, i64* %PC, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %116 to i64
  %123 = sext i32 %121 to i64
  %124 = mul nsw i64 %123, %122
  %125 = trunc i64 %124 to i32
  %126 = and i64 %124, 4294967295
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  %127 = shl i64 %124, 32
  %128 = ashr exact i64 %127, 32
  %129 = icmp ne i64 %128, %124
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %27, align 1, !tbaa !2432
  %131 = and i32 %125, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2448
  %136 = lshr i32 %125, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %32, align 1, !tbaa !2449
  store i8 %130, i8* %33, align 1, !tbaa !2450
  %138 = add i64 %70, -4
  store i64 4196877, i64* %PC, align 8
  %139 = inttoptr i64 %138 to i32*
  store i32 %125, i32* %139, align 4
  %140 = load i64, i64* %PC, align 8
  %141 = add i64 %140, 34
  store i64 %141, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2f

block_400a12:                                     ; preds = %block_4009c4
  %142 = add i64 %70, -16
  store i64 4196886, i64* %PC, align 8
  %143 = inttoptr i64 %142 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  store i64 4196888, i64* %PC, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  store i64 4196892, i64* %PC, align 8
  %148 = load i64, i64* %143, align 8
  store i64 %148, i64* %RCX, align 8, !tbaa !2428
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %150 = sext i32 %146 to i64
  %151 = lshr i64 %150, 32
  store i64 %151, i64* %149, align 8, !tbaa !2428
  %152 = add i64 %148, 4
  store i64 4196896, i64* %PC, align 8
  %153 = inttoptr i64 %152 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = shl nuw i64 %151, 32
  %157 = or i64 %156, %147
  %158 = sdiv i64 %157, %155
  %159 = shl i64 %158, 32
  %160 = ashr exact i64 %159, 32
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %164, label %162

; <label>:162:                                    ; preds = %block_400a12
  %163 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 4196896, %struct.Memory* %2) #8
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i32, i32* %EAX, align 4
  %.pre2 = load i64, i64* %PC, align 8
  %phitmp = add i64 %.pre2, 3
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:164:                                    ; preds = %block_400a12
  %165 = srem i64 %157, %155
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %167 = and i64 %158, 4294967295
  store i64 %167, i64* %166, align 8, !tbaa !2428
  %168 = and i64 %165, 4294967295
  store i64 %168, i64* %149, align 8, !tbaa !2428
  store i8 0, i8* %27, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %33, align 1, !tbaa !2450
  %169 = trunc i64 %158 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %164, %162
  %170 = phi i64 [ %phitmp, %162 ], [ 4196899, %164 ]
  %171 = phi i32 [ %.pre1, %162 ], [ %169, %164 ]
  %172 = phi i64 [ %.pre, %162 ], [ %70, %164 ]
  %173 = phi %struct.Memory* [ %163, %162 ], [ %2, %164 ]
  %174 = add i64 %172, -4
  store i64 %170, i64* %PC, align 8
  %175 = inttoptr i64 %174 to i32*
  store i32 %171, i32* %175, align 4
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 12
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2f

block_400a28:                                     ; preds = %block_4009a0
  %178 = add i64 %70, -4
  %179 = add i64 %69, 7
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  store i32 0, i32* %180, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400a2f

block_4009e7:                                     ; preds = %block_4009c4
  %181 = add i64 %70, -16
  store i64 4196843, i64* %PC, align 8
  %182 = inttoptr i64 %181 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  store i64 4196845, i64* %PC, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RCX, align 8, !tbaa !2428
  store i64 4196849, i64* %PC, align 8
  %187 = load i64, i64* %182, align 8
  store i64 %187, i64* %RAX, align 8, !tbaa !2428
  %188 = add i64 %187, 4
  store i64 4196852, i64* %PC, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %185, %190
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RCX, align 8, !tbaa !2428
  %193 = icmp ult i32 %185, %190
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %27, align 1, !tbaa !2432
  %195 = and i32 %191, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #9
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %28, align 1, !tbaa !2446
  %200 = xor i32 %190, %185
  %201 = xor i32 %200, %191
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %29, align 1, !tbaa !2447
  %205 = icmp eq i32 %191, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %30, align 1, !tbaa !2448
  %207 = lshr i32 %191, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %32, align 1, !tbaa !2449
  %209 = lshr i32 %185, 31
  %210 = lshr i32 %190, 31
  %211 = xor i32 %210, %209
  %212 = xor i32 %207, %209
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %33, align 1, !tbaa !2450
  %216 = add i64 %70, -4
  store i64 4196855, i64* %PC, align 8
  %217 = inttoptr i64 %216 to i32*
  store i32 %191, i32* %217, align 4
  %218 = load i64, i64* %PC, align 8
  %219 = add i64 %218, 56
  store i64 %219, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2f

block_4009c4:                                     ; preds = %block_4009a0
  %220 = add i64 %70, -24
  %221 = add i64 %69, 4
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX, align 8, !tbaa !2428
  %224 = shl i64 %223, 3
  %225 = add i64 %224, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 8)
  %226 = add i64 %69, 12
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RCX, align 8, !tbaa !2428
  store i64 %228, i64* %PC, align 8, !tbaa !2428
  switch i64 %228, label %245 [
    i64 4196860, label %block_4009fc
    i64 4196818, label %block_4009d2
    i64 4196839, label %block_4009e7
    i64 4196882, label %block_400a12
  ]

block_400a2f:                                     ; preds = %block_4009e7, %block_400a28, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_4009fc, %block_4009d2
  %229 = phi i64 [ %.pre3, %block_400a28 ], [ %177, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %219, %block_4009e7 ], [ %111, %block_4009d2 ], [ %141, %block_4009fc ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a28 ], [ %173, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %2, %block_4009e7 ], [ %2, %block_4009d2 ], [ %2, %block_4009fc ]
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -4
  %232 = add i64 %229, 3
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = add i64 %229, 4
  store i64 %236, i64* %PC, align 8
  %237 = load i64, i64* %6, align 8, !tbaa !2428
  %238 = add i64 %237, 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RBP, align 8, !tbaa !2428
  store i64 %238, i64* %6, align 8, !tbaa !2428
  %241 = add i64 %229, 5
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %238 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  %244 = add i64 %237, 16
  store i64 %244, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

; <label>:245:                                    ; preds = %block_4009c4
  %246 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %228, %struct.Memory* %2)
  ret %struct.Memory* %246
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006d0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006d0:
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
  store i8 0, i8* %12, align 1, !tbaa !2447
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %13, align 1, !tbaa !2448
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %14, align 1, !tbaa !2449
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %15, align 1, !tbaa !2450
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
define %struct.Memory* @sub_4009d2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4009d2:
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

; Function Attrs: noinline
define %struct.Memory* @sub_400770_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400770:
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
  %13 = tail call %struct.Memory* @sub_400700_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_400fd0_doSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400fd0:
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
  br label %block_400fdf

block_400fef:                                     ; preds = %block_400fdf
  %42 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %42, i64* %RAX, align 8, !tbaa !2428
  %43 = add i64 %280, 12
  store i64 %43, i64* %PC, align 8
  %44 = load i32, i32* %250, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %RCX, align 8, !tbaa !2428
  %46 = shl nsw i64 %45, 2
  %47 = add i64 %46, %42
  %48 = add i64 %280, 15
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %52 = sub i32 %50, %51
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RDX, align 8, !tbaa !2428
  %54 = icmp ult i32 %50, %51
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %13, align 1, !tbaa !2432
  %56 = and i32 %52, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #9
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %20, align 1, !tbaa !2446
  %61 = xor i32 %51, %50
  %62 = xor i32 %61, %52
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %26, align 1, !tbaa !2447
  %66 = icmp eq i32 %52, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %29, align 1, !tbaa !2448
  %68 = lshr i32 %52, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %32, align 1, !tbaa !2449
  %70 = lshr i32 %50, 31
  %71 = lshr i32 %51, 31
  %72 = xor i32 %71, %70
  %73 = xor i32 %68, %70
  %74 = add nuw nsw i32 %73, %72
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %38, align 1, !tbaa !2450
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  %77 = add i64 %280, -2511
  %78 = add i64 %280, 29
  %79 = load i64, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %RSP, align 8, !tbaa !2428
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  %82 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %83 = load i64, i64* %PC, align 8
  %84 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  %85 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 76) to i32*), align 4
  %86 = sub i32 %84, %85
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RDX, align 8, !tbaa !2428
  %88 = icmp ult i32 %84, %85
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %13, align 1, !tbaa !2432
  %90 = and i32 %86, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #9
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %20, align 1, !tbaa !2446
  %95 = xor i32 %85, %84
  %96 = xor i32 %95, %86
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %26, align 1, !tbaa !2447
  %100 = icmp eq i32 %86, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %29, align 1, !tbaa !2448
  %102 = lshr i32 %86, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %32, align 1, !tbaa !2449
  %104 = lshr i32 %84, 31
  %105 = lshr i32 %85, 31
  %106 = xor i32 %105, %104
  %107 = xor i32 %102, %104
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %38, align 1, !tbaa !2450
  store i64 %87, i64* %RDI, align 8, !tbaa !2428
  %111 = load i64, i64* %RBP, align 8
  %112 = add i64 %111, -8
  %113 = load i32, i32* %EAX, align 4
  %114 = add i64 %83, 19
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %112 to i32*
  store i32 %113, i32* %115, align 4
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, -2559
  %118 = add i64 %116, 5
  %119 = load i64, i64* %RSP, align 8, !tbaa !2428
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %121, align 8
  store i64 %120, i64* %RSP, align 8, !tbaa !2428
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  %122 = tail call fastcc %struct.Memory* @ext_6020f0_abs(%struct.State* nonnull %0, %struct.Memory* %82)
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -8
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %124 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RDX, align 8, !tbaa !2428
  %130 = load i32, i32* %EAX, align 4
  %131 = sub i32 %128, %130
  %132 = icmp ult i32 %128, %130
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %13, align 1, !tbaa !2432
  %134 = and i32 %131, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134) #9
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %20, align 1, !tbaa !2446
  %139 = xor i32 %130, %128
  %140 = xor i32 %139, %131
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %26, align 1, !tbaa !2447
  %144 = icmp eq i32 %131, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %29, align 1, !tbaa !2448
  %146 = lshr i32 %131, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %32, align 1, !tbaa !2449
  %148 = lshr i32 %128, 31
  %149 = lshr i32 %130, 31
  %150 = xor i32 %149, %148
  %151 = xor i32 %146, %148
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %38, align 1, !tbaa !2450
  %155 = icmp ne i8 %147, 0
  %156 = xor i1 %155, %153
  %.v9 = select i1 %156, i64 11, i64 33
  %157 = add i64 %125, %.v9
  store i64 %157, i64* %PC, align 8, !tbaa !2428
  br i1 %156, label %block_40102f, label %block_400fef.block_401045_crit_edge

block_400fef.block_401045_crit_edge:              ; preds = %block_400fef
  %.pre6 = add i64 %123, -4
  %.pre7 = inttoptr i64 %.pre6 to i32*
  br label %block_401045

block_4010ff:                                     ; preds = %block_4010dd, %block_4010eb, %block_40106c
  %158 = phi i64 [ %322, %block_4010dd ], [ %.pre5, %block_4010eb ], [ %236, %block_40106c ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.4, %block_4010dd ], [ %245, %block_4010eb ], [ %228, %block_40106c ]
  %159 = load i64, i64* %RSP, align 8
  %160 = add i64 %159, 16
  store i64 %160, i64* %RSP, align 8, !tbaa !2428
  %161 = icmp ugt i64 %159, -17
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %13, align 1, !tbaa !2432
  %163 = trunc i64 %160 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #9
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %20, align 1, !tbaa !2446
  %169 = xor i64 %159, 16
  %170 = xor i64 %169, %160
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %26, align 1, !tbaa !2447
  %174 = icmp eq i64 %160, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %29, align 1, !tbaa !2448
  %176 = lshr i64 %160, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %32, align 1, !tbaa !2449
  %178 = lshr i64 %159, 63
  %179 = xor i64 %176, %178
  %180 = add nuw nsw i64 %179, %176
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %38, align 1, !tbaa !2450
  %183 = add i64 %158, 5
  store i64 %183, i64* %PC, align 8
  %184 = add i64 %159, 24
  %185 = inttoptr i64 %160 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RBP, align 8, !tbaa !2428
  store i64 %184, i64* %RSP, align 8, !tbaa !2428
  %187 = add i64 %158, 6
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %184 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %PC, align 8, !tbaa !2428
  %190 = add i64 %159, 32
  store i64 %190, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4010bd:                                     ; preds = %block_4010a4
  %191 = add i64 %368, 32
  store i64 %191, i64* %PC, align 8, !tbaa !2428
  br label %block_4010dd

block_401090:                                     ; preds = %block_4010c2, %block_401085
  %192 = phi i32 [ 1, %block_401085 ], [ %370, %block_4010c2 ]
  %193 = phi i64 [ %281, %block_401085 ], [ %393, %block_4010c2 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_401085 ], [ %356, %block_4010c2 ]
  %194 = zext i32 %192 to i64
  store i64 %194, i64* %RAX, align 8, !tbaa !2428
  %195 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 72) to i32*), align 8
  %196 = sub i32 %192, %195
  %197 = icmp ult i32 %192, %195
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %13, align 1, !tbaa !2432
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #9
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %20, align 1, !tbaa !2446
  %204 = xor i32 %195, %192
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
  %213 = lshr i32 %192, 31
  %214 = lshr i32 %195, 31
  %215 = xor i32 %214, %213
  %216 = xor i32 %211, %213
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %38, align 1, !tbaa !2450
  %220 = icmp ne i8 %212, 0
  %221 = xor i1 %220, %218
  %.v11 = select i1 %221, i64 20, i64 77
  %222 = add i64 %193, %.v11
  store i64 %222, i64* %PC, align 8, !tbaa !2428
  br i1 %221, label %block_4010a4, label %block_4010dd.loopexit

block_40106c:                                     ; preds = %block_401058
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %223 = add i64 %350, -2620
  %224 = add i64 %350, 17
  %225 = load i64, i64* %RSP, align 8, !tbaa !2428
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %224, i64* %227, align 8
  store i64 %226, i64* %RSP, align 8, !tbaa !2428
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  %228 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
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
  br label %block_4010ff

block_4010eb:                                     ; preds = %block_4010dd
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
  %245 = tail call %struct.Memory* @sub_400a40_printSolution_renamed_(%struct.State* nonnull %0, i64 %240, %struct.Memory* %MEMORY.4)
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_4010ff

block_400fdf:                                     ; preds = %block_401045, %block_400fd0
  %246 = phi i64 [ %.pre, %block_400fd0 ], [ %310, %block_401045 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400fd0 ], [ %122, %block_401045 ]
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
  br i1 %279, label %block_400fef, label %block_401058

block_401085:                                     ; preds = %block_401058
  %281 = add i64 %350, 11
  store i64 %281, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 56) to i32*), align 8
  br label %block_401090

block_401045:                                     ; preds = %block_400fef.block_401045_crit_edge, %block_40102f
  %.pre-phi8 = phi i32* [ %.pre7, %block_400fef.block_401045_crit_edge ], [ %397, %block_40102f ]
  %282 = phi i64 [ %157, %block_400fef.block_401045_crit_edge ], [ %406, %block_40102f ]
  %283 = add i64 %282, 8
  store i64 %283, i64* %PC, align 8
  %284 = load i32, i32* %.pre-phi8, align 4
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
  %296 = xor i32 %284, %285
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
  store i32 %285, i32* %.pre-phi8, align 4
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, -116
  store i64 %310, i64* %PC, align 8, !tbaa !2428
  br label %block_400fdf

block_4010dd.loopexit:                            ; preds = %block_401090
  %.pre4 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 48) to i32*), align 16
  br label %block_4010dd

block_4010dd:                                     ; preds = %block_4010dd.loopexit, %block_4010bd
  %311 = phi i32 [ %358, %block_4010bd ], [ %.pre4, %block_4010dd.loopexit ]
  %312 = phi i64 [ %191, %block_4010bd ], [ %222, %block_4010dd.loopexit ]
  %MEMORY.4 = phi %struct.Memory* [ %356, %block_4010bd ], [ %MEMORY.1, %block_4010dd.loopexit ]
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
  %.v13 = select i1 %318, i64 14, i64 34
  %322 = add i64 %312, %.v13
  store i64 %322, i64* %PC, align 8, !tbaa !2428
  br i1 %318, label %block_4010eb, label %block_4010ff

block_401058:                                     ; preds = %block_400fdf
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
  %.v10 = select i1 %339, i64 20, i64 45
  %350 = add i64 %280, %.v10
  store i64 %350, i64* %PC, align 8, !tbaa !2428
  br i1 %339, label %block_40106c, label %block_401085

block_4010a4:                                     ; preds = %block_401090
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %351 = add i64 %222, -1028
  %352 = add i64 %222, 11
  %353 = load i64, i64* %RSP, align 8, !tbaa !2428
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %RSP, align 8, !tbaa !2428
  store i64 %351, i64* %PC, align 8, !tbaa !2428
  %356 = tail call %struct.Memory* @sub_400ca0_recSearch_renamed_(%struct.State* nonnull %0, i64 %351, %struct.Memory* %MEMORY.1)
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
  %.v12 = select i1 %364, i64 19, i64 14
  %368 = add i64 %357, %.v12
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  br i1 %364, label %block_4010c2, label %block_4010bd

block_4010c2:                                     ; preds = %block_4010a4
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
  %381 = xor i32 %369, %370
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
  br label %block_401090

block_40102f:                                     ; preds = %block_400fef
  %394 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 64) to i64*), align 16
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = add i64 %123, -4
  %396 = add i64 %157, 12
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  store i64 %399, i64* %RCX, align 8, !tbaa !2428
  %400 = shl nsw i64 %399, 2
  %401 = add i64 %400, %394
  %402 = add i64 %157, 15
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RDX, align 8, !tbaa !2428
  %406 = add i64 %157, 22
  store i64 %406, i64* %PC, align 8
  store i32 %404, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 80) to i32*), align 16
  br label %block_401045
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008e0_saveSolution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4008e0:
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
  br label %block_4008f6

block_4008f6:                                     ; preds = %block_400902, %block_4008e0
  %38 = phi i64 [ %395, %block_400902 ], [ %.pre, %block_4008e0 ]
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
  br i1 %74, label %block_400902, label %block_40097a

block_40097a:                                     ; preds = %block_4008f6
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

block_400902:                                     ; preds = %block_4008f6
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
  %159 = add i64 %75, 17
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %133 to i32*
  %161 = load i32, i32* %160, align 4
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
  %198 = add i64 %75, 34
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %172 to i32*
  store i32 %161, i32* %199, align 4
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
  %381 = xor i32 %369, %370
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
  br label %block_4008f6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400700_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400700:
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
  store i8 %22, i8* %12, align 1, !tbaa !2451
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2451
  store i8 0, i8* %14, align 1, !tbaa !2451
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2451
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2451
  store i8 0, i8* %17, align 1, !tbaa !2451
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_400738, label %block_400723

block_400738:                                     ; preds = %block_400723, %block_400700
  %35 = phi i64 [ %45, %block_400723 ], [ %34, %block_400700 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %5, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400723:                                     ; preds = %block_400700
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %45 = add i64 %34, 21
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  br label %block_400738
}

; Function Attrs: noinline
define %struct.Memory* @sub_401364__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401364:
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
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #9
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
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4012b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012b0:
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
  %61 = tail call %struct.Memory* @sub_401110_getInput_renamed_(%struct.State* nonnull %0, i64 %56, %struct.Memory* %2)
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
  br i1 %69, label %block_4012d9, label %block_4012d4

block_4012d4:                                     ; preds = %block_4012b0
  %74 = add i64 %73, -84
  %75 = add i64 %73, 5
  %76 = load i64, i64* %RSP, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %RSP, align 8, !tbaa !2428
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  %79 = tail call %struct.Memory* @sub_401280_search_renamed_(%struct.State* nonnull %0, i64 %74, %struct.Memory* %61)
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012d9

block_4012d9:                                     ; preds = %block_4012d4, %block_4012b0
  %80 = phi i64 [ %73, %block_4012b0 ], [ %.pre, %block_4012d4 ]
  %MEMORY.0 = phi %struct.Memory* [ %61, %block_4012b0 ], [ %79, %block_4012d4 ]
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

; Function Attrs: noinline
define %struct.Memory* @sub_400740___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400740:
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
  br i1 %12, label %block_400749, label %block_400760

block_400760:                                     ; preds = %block_400740
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

block_400749:                                     ; preds = %block_400740
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
  %36 = tail call %struct.Memory* @sub_4006d0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_400b21(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %phitmp10 = add i64 %1, 12
  br label %block_400b21

block_400bb6:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %12 = add i64 %486, -1414
  %13 = add i64 %486, 17
  %14 = load i64, i64* %RSP, align 8, !tbaa !2428
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16, align 8
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %17 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %438)
  %18 = load i64, i64* %RBP, align 8
  %19 = add i64 %18, -76
  %20 = load i32, i32* %EAX, align 4
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 25
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  br label %block_400be3

block_400aaf:                                     ; preds = %block_400a62
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -32
  %28 = add i64 %320, 4
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %27 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = shl i64 %30, 3
  %32 = add i64 %31, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 40)
  %33 = add i64 %320, 12
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RCX, align 8, !tbaa !2428
  store i64 %35, i64* %PC, align 8, !tbaa !2428
  switch i64 %35, label %490 [
    i64 4197153, label %block_400b21
    i64 4197128, label %block_400b08
    i64 4197053, label %block_400abd
    i64 4197103, label %block_400aef
    i64 4197078, label %block_400ad6
  ]

block_400ad6:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %36 = load i64, i64* %RSP, align 8, !tbaa !2428
  %37 = add i64 %36, -8
  %38 = inttoptr i64 %37 to i64*
  store i64 4197095, i64* %38, align 8
  store i64 %37, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %262)
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -48
  %42 = load i32, i32* %EAX, align 4
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 3
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %45, align 4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 118
  store i64 %47, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400bf6:                                     ; preds = %block_400be3
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %48 = add i64 %226, -1478
  %49 = add i64 %226, 17
  %50 = load i64, i64* %RSP, align 8, !tbaa !2428
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %RSP, align 8, !tbaa !2428
  store i64 %48, i64* %PC, align 8, !tbaa !2428
  %53 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -84
  %56 = load i32, i32* %EAX, align 4
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load i64, i64* %RSP, align 8
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %60, 96
  store i64 %62, i64* %RSP, align 8, !tbaa !2428
  %63 = icmp ugt i64 %60, -97
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %6, align 1, !tbaa !2432
  %65 = trunc i64 %62 to i32
  %66 = and i32 %65, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #9
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %7, align 1, !tbaa !2446
  %71 = xor i64 %60, %62
  %72 = lshr i64 %71, 4
  %73 = trunc i64 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %8, align 1, !tbaa !2447
  %75 = icmp eq i64 %62, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %9, align 1, !tbaa !2448
  %77 = lshr i64 %62, 63
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %10, align 1, !tbaa !2449
  %79 = lshr i64 %60, 63
  %80 = xor i64 %77, %79
  %81 = add nuw nsw i64 %80, %77
  %82 = icmp eq i64 %81, 2
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %11, align 1, !tbaa !2450
  %84 = add i64 %61, 5
  store i64 %84, i64* %PC, align 8
  %85 = add i64 %60, 104
  %86 = inttoptr i64 %62 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %RSP, align 8, !tbaa !2428
  %88 = add i64 %61, 6
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  %91 = add i64 %60, 112
  store i64 %91, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %53

block_400bcf:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %92 = add i64 %486, -1439
  %93 = add i64 %486, 17
  %94 = load i64, i64* %RSP, align 8, !tbaa !2428
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  %97 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %438)
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -80
  %100 = load i32, i32* %EAX, align 4
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %103, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400be3

block_400b3a:                                     ; preds = %block_400a62
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -8
  %106 = add i64 %320, 14
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX, align 8, !tbaa !2428
  %109 = add i64 %104, -16
  %110 = add i64 %320, 18
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, 12
  store i64 %114, i64* %RCX, align 8, !tbaa !2428
  %115 = lshr i64 %114, 63
  %116 = add i64 %114, %108
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  %117 = icmp ult i64 %116, %108
  %118 = icmp ult i64 %116, %114
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %6, align 1, !tbaa !2432
  %121 = trunc i64 %116 to i32
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #9
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %7, align 1, !tbaa !2446
  %127 = xor i64 %114, %108
  %128 = xor i64 %127, %116
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %8, align 1, !tbaa !2447
  %132 = icmp eq i64 %116, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %9, align 1, !tbaa !2448
  %134 = lshr i64 %116, 63
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %10, align 1, !tbaa !2449
  %136 = lshr i64 %108, 63
  %137 = xor i64 %134, %136
  %138 = xor i64 %134, %115
  %139 = add nuw nsw i64 %137, %138
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %11, align 1, !tbaa !2450
  %142 = add i64 %116, 8
  %143 = add i64 %320, 28
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %147 = add i64 %320, -1290
  %148 = add i64 %320, 35
  %149 = load i64, i64* %RSP, align 8, !tbaa !2428
  %150 = add i64 %149, -8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  store i64 %150, i64* %RSP, align 8, !tbaa !2428
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  %152 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %262)
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -64
  %155 = load i32, i32* %EAX, align 4
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %158, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_400b60

block_400be3:                                     ; preds = %block_400bcf, %block_400bb6
  %159 = phi i64 [ %.pre8, %block_400bcf ], [ %25, %block_400bb6 ]
  %MEMORY.0 = phi %struct.Memory* [ %97, %block_400bcf ], [ %17, %block_400bb6 ]
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -16
  %162 = add i64 %159, 8
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RAX, align 8, !tbaa !2428
  %167 = icmp eq i32 %164, -1
  %168 = icmp eq i32 %165, 0
  %169 = or i1 %167, %168
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %6, align 1, !tbaa !2432
  %171 = and i32 %165, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #9
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %7, align 1, !tbaa !2446
  %176 = xor i32 %164, %165
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %8, align 1, !tbaa !2447
  %180 = zext i1 %168 to i8
  store i8 %180, i8* %9, align 1, !tbaa !2448
  %181 = lshr i32 %165, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %10, align 1, !tbaa !2449
  %183 = lshr i32 %164, 31
  %184 = xor i32 %181, %183
  %185 = add nuw nsw i32 %184, %181
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %11, align 1, !tbaa !2450
  %188 = add i64 %159, 14
  store i64 %188, i64* %PC, align 8
  store i32 %165, i32* %163, align 4
  %189 = load i64, i64* %PC, align 8
  %190 = load i64, i64* %RBP, align 8
  %191 = add i64 %190, -16
  %192 = add i64 %189, -408
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  %196 = add i64 %190, -12
  %197 = add i64 %189, -405
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %194, %199
  %201 = icmp ult i32 %194, %199
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %6, align 1, !tbaa !2432
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203) #9
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %7, align 1, !tbaa !2446
  %208 = xor i32 %199, %194
  %209 = xor i32 %208, %200
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %8, align 1, !tbaa !2447
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %9, align 1, !tbaa !2448
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %10, align 1, !tbaa !2449
  %217 = lshr i32 %194, 31
  %218 = lshr i32 %199, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %215, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %11, align 1, !tbaa !2450
  %224 = icmp ne i8 %216, 0
  %225 = xor i1 %224, %222
  %.v11 = select i1 %225, i64 -399, i64 5
  %226 = add i64 %189, %.v11
  store i64 %226, i64* %PC, align 8, !tbaa !2428
  br i1 %225, label %block_400a62, label %block_400bf6

block_400abd:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %227 = load i64, i64* %RSP, align 8, !tbaa !2428
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 4197070, i64* %229, align 8
  store i64 %228, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %230 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %262)
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -44
  %233 = load i32, i32* %EAX, align 4
  %234 = load i64, i64* %PC, align 8
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %232 to i32*
  store i32 %233, i32* %236, align 4
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 143
  store i64 %238, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400a62:                                     ; preds = %block_400be3
  %239 = add i64 %190, -8
  %240 = add i64 %226, 4
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = add i64 %226, 8
  store i64 %243, i64* %PC, align 8
  %244 = load i32, i32* %193, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 3
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = mul nsw i64 %245, 12
  %248 = add i64 %247, %242
  %249 = add i64 %226, 15
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  %253 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %257 = add i64 %226, -1074
  %258 = add i64 %226, 35
  %259 = load i64, i64* %RSP, align 8, !tbaa !2428
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261, align 8
  store i64 %260, i64* %RSP, align 8, !tbaa !2428
  store i64 %257, i64* %PC, align 8, !tbaa !2428
  %262 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %263 = load i64, i64* %RBP, align 8
  %264 = add i64 %263, -8
  %265 = load i64, i64* %PC, align 8
  %266 = add i64 %265, 4
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %264 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RCX, align 8, !tbaa !2428
  %269 = add i64 %263, -16
  %270 = add i64 %265, 8
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = mul nsw i64 %273, 3
  store i64 %274, i64* %RDI, align 8, !tbaa !2428
  %275 = mul nsw i64 %273, 12
  %276 = add i64 %268, 8
  %277 = add i64 %276, %275
  %278 = add i64 %265, 16
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RDX, align 8, !tbaa !2428
  store i64 %281, i64* %RCX, align 8, !tbaa !2428
  %282 = add nsw i64 %281, -4
  store i64 %282, i64* %RDI, align 8, !tbaa !2428
  %283 = icmp ult i32 %280, 4
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %6, align 1, !tbaa !2432
  %285 = trunc i64 %282 to i32
  %286 = and i32 %285, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286) #9
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %7, align 1, !tbaa !2446
  %291 = xor i64 %281, %282
  %292 = lshr i64 %291, 4
  %293 = trunc i64 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %8, align 1, !tbaa !2447
  %295 = icmp eq i64 %282, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %9, align 1, !tbaa !2448
  %297 = lshr i64 %282, 63
  %298 = trunc i64 %297 to i8
  store i8 %298, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %299 = add i64 %263, -20
  %300 = load i32, i32* %EAX, align 4
  %301 = add i64 %265, 28
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %299 to i32*
  store i32 %300, i32* %302, align 4
  %303 = load i64, i64* %RBP, align 8
  %304 = add i64 %303, -32
  %305 = load i64, i64* %RCX, align 8
  %306 = load i64, i64* %PC, align 8
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %304 to i64*
  store i64 %305, i64* %308, align 8
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -40
  %311 = load i64, i64* %RDI, align 8
  %312 = load i64, i64* %PC, align 8
  %313 = add i64 %312, 4
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %310 to i64*
  store i64 %311, i64* %314, align 8
  %315 = load i64, i64* %PC, align 8
  %316 = load i8, i8* %6, align 1, !tbaa !2432
  %317 = load i8, i8* %9, align 1, !tbaa !2448
  %318 = or i8 %317, %316
  %319 = icmp eq i8 %318, 0
  %.v12 = select i1 %319, i64 145, i64 6
  %320 = add i64 %315, %.v12
  store i64 %320, i64* %PC, align 8, !tbaa !2428
  br i1 %319, label %block_400b3a, label %block_400aaf

block_400b21:                                     ; preds = %block_400aaf, %3
  %321 = phi i64 [ %phitmp10, %3 ], [ 4197165, %block_400aaf ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %3 ], [ %262, %block_400aaf ]
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %322 = add i64 %321, -1277
  %323 = add i64 %321, 5
  %324 = load i64, i64* %RSP, align 8, !tbaa !2428
  %325 = add i64 %324, -8
  %326 = inttoptr i64 %325 to i64*
  store i64 %323, i64* %326, align 8
  store i64 %325, i64* %RSP, align 8, !tbaa !2428
  store i64 %322, i64* %PC, align 8, !tbaa !2428
  %327 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
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
  br label %block_400b60

block_400b60:                                     ; preds = %block_400abd, %block_400b3a, %block_400ad6, %block_400b21
  %336 = phi i64 [ %335, %block_400b21 ], [ %.pre.pre, %block_400b3a ], [ %47, %block_400ad6 ], [ %238, %block_400abd ]
  %MEMORY.2 = phi %struct.Memory* [ %327, %block_400b21 ], [ %152, %block_400b3a ], [ %39, %block_400ad6 ], [ %230, %block_400abd ]
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
  %423 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %418, %struct.Memory* %MEMORY.2)
  %424 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
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
  %438 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %423)
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
  %.v = select i1 %485, i64 6, i64 31
  %486 = add i64 %480, %.v
  %487 = add i64 %486, 10
  store i64 %487, i64* %PC, align 8
  br i1 %485, label %block_400bb6, label %block_400bcf

block_400aef:                                     ; preds = %block_400aaf
  %488 = tail call %struct.Memory* @sub_400aef(%struct.State* nonnull %0, i64 4197103, %struct.Memory* %262)
  ret %struct.Memory* %488

block_400b08:                                     ; preds = %block_400aaf
  %489 = tail call %struct.Memory* @sub_400b08(%struct.State* nonnull %0, i64 4197128, %struct.Memory* %262)
  ret %struct.Memory* %489

; <label>:490:                                    ; preds = %block_400aaf
  %491 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %35, %struct.Memory* %262)
  ret %struct.Memory* %491
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a40_printSolution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a40:
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
  br label %block_400a56

block_400abd:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 166), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %55 = load i64, i64* %RSP, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 4197070, i64* %57, align 8
  store i64 %56, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %58 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -44
  %61 = load i32, i32* %EAX, align 4
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 143
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400aaf:                                     ; preds = %block_400a62
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -32
  %69 = add i64 %553, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %68 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RAX, align 8, !tbaa !2428
  %72 = shl i64 %71, 3
  %73 = add i64 %72, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 40)
  %74 = add i64 %553, 12
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RCX, align 8, !tbaa !2428
  store i64 %76, i64* %PC, align 8, !tbaa !2428
  switch i64 %76, label %554 [
    i64 4197153, label %block_400b21
    i64 4197128, label %block_400b08
    i64 4197053, label %block_400abd
    i64 4197103, label %block_400aef
    i64 4197078, label %block_400ad6
  ]

block_400b3a:                                     ; preds = %block_400a62
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -8
  %79 = add i64 %553, 14
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = add i64 %77, -16
  %83 = add i64 %553, 18
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, 12
  store i64 %87, i64* %RCX, align 8, !tbaa !2428
  %88 = lshr i64 %87, 63
  %89 = add i64 %87, %81
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = icmp ult i64 %89, %81
  %91 = icmp ult i64 %89, %87
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %15, align 1, !tbaa !2432
  %94 = trunc i64 %89 to i32
  %95 = and i32 %94, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #9
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %22, align 1, !tbaa !2446
  %100 = xor i64 %87, %81
  %101 = xor i64 %100, %89
  %102 = lshr i64 %101, 4
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %27, align 1, !tbaa !2447
  %105 = icmp eq i64 %89, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %30, align 1, !tbaa !2448
  %107 = lshr i64 %89, 63
  %108 = trunc i64 %107 to i8
  store i8 %108, i8* %33, align 1, !tbaa !2449
  %109 = lshr i64 %81, 63
  %110 = xor i64 %107, %109
  %111 = xor i64 %107, %88
  %112 = add nuw nsw i64 %110, %111
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %39, align 1, !tbaa !2450
  %115 = add i64 %89, 8
  %116 = add i64 %553, 28
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %120 = add i64 %553, -1290
  %121 = add i64 %553, 35
  %122 = load i64, i64* %RSP, align 8, !tbaa !2428
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  %125 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -64
  %128 = load i32, i32* %EAX, align 4
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %131, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400b60

block_400aef:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 147), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %132 = load i64, i64* %RSP, align 8, !tbaa !2428
  %133 = add i64 %132, -8
  %134 = inttoptr i64 %133 to i64*
  store i64 4197120, i64* %134, align 8
  store i64 %133, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %135 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %136 = load i64, i64* %RBP, align 8
  %137 = add i64 %136, -52
  %138 = load i32, i32* %EAX, align 4
  %139 = load i64, i64* %PC, align 8
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %137 to i32*
  store i32 %138, i32* %141, align 4
  %142 = load i64, i64* %PC, align 8
  %143 = add i64 %142, 93
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400a56:                                     ; preds = %block_400be3, %block_400a40
  %144 = phi i64 [ %.pre, %block_400a40 ], [ %445, %block_400be3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a40 ], [ %MEMORY.2, %block_400be3 ]
  %145 = load i64, i64* %RBP, align 8
  %146 = add i64 %145, -16
  %147 = add i64 %144, 3
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  %151 = add i64 %145, -12
  %152 = add i64 %144, 6
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sub i32 %149, %154
  %156 = icmp ult i32 %149, %154
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %15, align 1, !tbaa !2432
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #9
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %22, align 1, !tbaa !2446
  %163 = xor i32 %154, %149
  %164 = xor i32 %163, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %27, align 1, !tbaa !2447
  %168 = icmp eq i32 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %30, align 1, !tbaa !2448
  %170 = lshr i32 %155, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %33, align 1, !tbaa !2449
  %172 = lshr i32 %149, 31
  %173 = lshr i32 %154, 31
  %174 = xor i32 %173, %172
  %175 = xor i32 %170, %172
  %176 = add nuw nsw i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %39, align 1, !tbaa !2450
  %179 = icmp ne i8 %171, 0
  %180 = xor i1 %179, %177
  %.v = select i1 %180, i64 12, i64 416
  %181 = add i64 %144, %.v
  store i64 %181, i64* %PC, align 8, !tbaa !2428
  br i1 %180, label %block_400a62, label %block_400bf6

block_400bcf:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %182 = add i64 %344, -1439
  %183 = add i64 %344, 17
  %184 = load i64, i64* %RSP, align 8, !tbaa !2428
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186, align 8
  store i64 %185, i64* %RSP, align 8, !tbaa !2428
  store i64 %182, i64* %PC, align 8, !tbaa !2428
  %187 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %296)
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -80
  %190 = load i32, i32* %EAX, align 4
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %193, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400be3

block_400b60:                                     ; preds = %block_400b21, %block_400ad6, %block_400b08, %block_400aef, %block_400b3a, %block_400abd
  %194 = phi i64 [ %.pre2, %block_400b3a ], [ %413, %block_400ad6 ], [ %143, %block_400aef ], [ %66, %block_400abd ], [ %401, %block_400b08 ], [ %457, %block_400b21 ]
  %MEMORY.1 = phi %struct.Memory* [ %125, %block_400b3a ], [ %405, %block_400ad6 ], [ %135, %block_400aef ], [ %58, %block_400abd ], [ %393, %block_400b08 ], [ %449, %block_400b21 ]
  %195 = load i64, i64* %RBP, align 8
  %196 = add i64 %195, -8
  %197 = add i64 %194, 4
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = add i64 %195, -16
  %201 = add i64 %194, 8
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, 12
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = lshr i64 %205, 63
  %207 = add i64 %205, %199
  store i64 %207, i64* %RAX, align 8, !tbaa !2428
  %208 = icmp ult i64 %207, %199
  %209 = icmp ult i64 %207, %205
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %15, align 1, !tbaa !2432
  %212 = trunc i64 %207 to i32
  %213 = and i32 %212, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213) #9
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %22, align 1, !tbaa !2446
  %218 = xor i64 %205, %199
  %219 = xor i64 %218, %207
  %220 = lshr i64 %219, 4
  %221 = trunc i64 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %27, align 1, !tbaa !2447
  %223 = icmp eq i64 %207, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %30, align 1, !tbaa !2448
  %225 = lshr i64 %207, 63
  %226 = trunc i64 %225 to i8
  store i8 %226, i8* %33, align 1, !tbaa !2449
  %227 = lshr i64 %199, 63
  %228 = xor i64 %225, %227
  %229 = xor i64 %225, %206
  %230 = add nuw nsw i64 %228, %229
  %231 = icmp eq i64 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %39, align 1, !tbaa !2450
  %233 = add i64 %207, 4
  %234 = add i64 %194, 18
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RSI, align 8, !tbaa !2428
  %238 = add i64 %194, 22
  store i64 %238, i64* %PC, align 8
  %239 = load i64, i64* %198, align 8
  store i64 %239, i64* %RAX, align 8, !tbaa !2428
  %240 = add i64 %194, 26
  store i64 %240, i64* %PC, align 8
  %241 = load i32, i32* %202, align 4
  %242 = sext i32 %241 to i64
  %243 = mul nsw i64 %242, 12
  store i64 %243, i64* %RCX, align 8, !tbaa !2428
  %244 = lshr i64 %243, 63
  %245 = add i64 %243, %239
  store i64 %245, i64* %RAX, align 8, !tbaa !2428
  %246 = icmp ult i64 %245, %239
  %247 = icmp ult i64 %245, %243
  %248 = or i1 %246, %247
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %15, align 1, !tbaa !2432
  %250 = trunc i64 %245 to i32
  %251 = and i32 %250, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251) #9
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %22, align 1, !tbaa !2446
  %256 = xor i64 %243, %239
  %257 = xor i64 %256, %245
  %258 = lshr i64 %257, 4
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %27, align 1, !tbaa !2447
  %261 = icmp eq i64 %245, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %30, align 1, !tbaa !2448
  %263 = lshr i64 %245, 63
  %264 = trunc i64 %263 to i8
  store i8 %264, i8* %33, align 1, !tbaa !2449
  %265 = lshr i64 %239, 63
  %266 = xor i64 %263, %265
  %267 = xor i64 %263, %244
  %268 = add nuw nsw i64 %266, %267
  %269 = icmp eq i64 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %39, align 1, !tbaa !2450
  store i64 %245, i64* %RDI, align 8, !tbaa !2428
  %271 = load i64, i64* %RBP, align 8
  %272 = add i64 %271, -68
  %273 = add i64 %194, 39
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 %236, i32* %274, align 4
  %275 = load i64, i64* %PC, align 8
  %276 = add i64 %275, -487
  %277 = add i64 %275, 5
  %278 = load i64, i64* %RSP, align 8, !tbaa !2428
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %RSP, align 8, !tbaa !2428
  store i64 %276, i64* %PC, align 8, !tbaa !2428
  %281 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %276, %struct.Memory* %MEMORY.1)
  %282 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -68
  %285 = add i64 %282, 13
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RSI, align 8, !tbaa !2428
  %289 = load i32, i32* %EAX, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %291 = add i64 %282, -1372
  %292 = add i64 %282, 22
  %293 = load i64, i64* %RSP, align 8, !tbaa !2428
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %292, i64* %295, align 8
  store i64 %294, i64* %RSP, align 8, !tbaa !2428
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  %296 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %281)
  %297 = load i64, i64* %RBP, align 8
  %298 = add i64 %297, -16
  %299 = load i64, i64* %PC, align 8
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RDX, align 8, !tbaa !2428
  %304 = add i64 %297, -12
  %305 = add i64 %299, 6
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, -1
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RSI, align 8, !tbaa !2428
  %310 = lshr i32 %308, 31
  %311 = sub i32 %302, %308
  %312 = icmp ult i32 %302, %308
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %15, align 1, !tbaa !2432
  %314 = and i32 %311, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #9
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %22, align 1, !tbaa !2446
  %319 = xor i32 %308, %302
  %320 = xor i32 %319, %311
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %27, align 1, !tbaa !2447
  %324 = icmp eq i32 %311, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %30, align 1, !tbaa !2448
  %326 = lshr i32 %311, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %33, align 1, !tbaa !2449
  %328 = lshr i32 %302, 31
  %329 = xor i32 %310, %328
  %330 = xor i32 %326, %328
  %331 = add nuw nsw i32 %330, %329
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %39, align 1, !tbaa !2450
  %334 = add i64 %297, -72
  %335 = load i32, i32* %EAX, align 4
  %336 = add i64 %299, 14
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %334 to i32*
  store i32 %335, i32* %337, align 4
  %338 = load i64, i64* %PC, align 8
  %339 = load i8, i8* %33, align 1, !tbaa !2449
  %340 = icmp ne i8 %339, 0
  %341 = load i8, i8* %39, align 1, !tbaa !2450
  %342 = icmp ne i8 %341, 0
  %343 = xor i1 %340, %342
  %.v5 = select i1 %343, i64 6, i64 31
  %344 = add i64 %338, %.v5
  %345 = add i64 %344, 10
  store i64 %345, i64* %PC, align 8
  br i1 %343, label %block_400bb6, label %block_400bcf

block_400bf6:                                     ; preds = %block_400a56
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %346 = add i64 %181, -1478
  %347 = add i64 %181, 17
  %348 = load i64, i64* %RSP, align 8, !tbaa !2428
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 %347, i64* %350, align 8
  store i64 %349, i64* %RSP, align 8, !tbaa !2428
  store i64 %346, i64* %PC, align 8, !tbaa !2428
  %351 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -84
  %354 = load i32, i32* %EAX, align 4
  %355 = load i64, i64* %PC, align 8
  %356 = add i64 %355, 3
  store i64 %356, i64* %PC, align 8
  %357 = inttoptr i64 %353 to i32*
  store i32 %354, i32* %357, align 4
  %358 = load i64, i64* %RSP, align 8
  %359 = load i64, i64* %PC, align 8
  %360 = add i64 %358, 96
  store i64 %360, i64* %RSP, align 8, !tbaa !2428
  %361 = icmp ugt i64 %358, -97
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %15, align 1, !tbaa !2432
  %363 = trunc i64 %360 to i32
  %364 = and i32 %363, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364) #9
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %22, align 1, !tbaa !2446
  %369 = xor i64 %358, %360
  %370 = lshr i64 %369, 4
  %371 = trunc i64 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %27, align 1, !tbaa !2447
  %373 = icmp eq i64 %360, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %30, align 1, !tbaa !2448
  %375 = lshr i64 %360, 63
  %376 = trunc i64 %375 to i8
  store i8 %376, i8* %33, align 1, !tbaa !2449
  %377 = lshr i64 %358, 63
  %378 = xor i64 %375, %377
  %379 = add nuw nsw i64 %378, %375
  %380 = icmp eq i64 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %39, align 1, !tbaa !2450
  %382 = add i64 %359, 5
  store i64 %382, i64* %PC, align 8
  %383 = add i64 %358, 104
  %384 = inttoptr i64 %360 to i64*
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %RBP, align 8, !tbaa !2428
  store i64 %383, i64* %RSP, align 8, !tbaa !2428
  %386 = add i64 %359, 6
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %383 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %PC, align 8, !tbaa !2428
  %389 = add i64 %358, 112
  store i64 %389, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %351

block_400b08:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %390 = load i64, i64* %RSP, align 8, !tbaa !2428
  %391 = add i64 %390, -8
  %392 = inttoptr i64 %391 to i64*
  store i64 4197145, i64* %392, align 8
  store i64 %391, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %393 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %394 = load i64, i64* %RBP, align 8
  %395 = add i64 %394, -56
  %396 = load i32, i32* %EAX, align 4
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %395 to i32*
  store i32 %396, i32* %399, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 68
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400ad6:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %402 = load i64, i64* %RSP, align 8, !tbaa !2428
  %403 = add i64 %402, -8
  %404 = inttoptr i64 %403 to i64*
  store i64 4197095, i64* %404, align 8
  store i64 %403, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %405 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %406 = load i64, i64* %RBP, align 8
  %407 = add i64 %406, -48
  %408 = load i32, i32* %EAX, align 4
  %409 = load i64, i64* %PC, align 8
  %410 = add i64 %409, 3
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %407 to i32*
  store i32 %408, i32* %411, align 4
  %412 = load i64, i64* %PC, align 8
  %413 = add i64 %412, 118
  store i64 %413, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400be3:                                     ; preds = %block_400bb6, %block_400bcf
  %414 = phi i64 [ %.pre3, %block_400bcf ], [ %471, %block_400bb6 ]
  %MEMORY.2 = phi %struct.Memory* [ %187, %block_400bcf ], [ %463, %block_400bb6 ]
  %415 = load i64, i64* %RBP, align 8
  %416 = add i64 %415, -16
  %417 = add i64 %414, 8
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = add i32 %419, 1
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX, align 8, !tbaa !2428
  %422 = icmp eq i32 %419, -1
  %423 = icmp eq i32 %420, 0
  %424 = or i1 %422, %423
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %15, align 1, !tbaa !2432
  %426 = and i32 %420, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426) #9
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %22, align 1, !tbaa !2446
  %431 = xor i32 %419, %420
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %27, align 1, !tbaa !2447
  %435 = zext i1 %423 to i8
  store i8 %435, i8* %30, align 1, !tbaa !2448
  %436 = lshr i32 %420, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %33, align 1, !tbaa !2449
  %438 = lshr i32 %419, 31
  %439 = xor i32 %436, %438
  %440 = add nuw nsw i32 %439, %436
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %39, align 1, !tbaa !2450
  %443 = add i64 %414, 14
  store i64 %443, i64* %PC, align 8
  store i32 %420, i32* %418, align 4
  %444 = load i64, i64* %PC, align 8
  %445 = add i64 %444, -411
  store i64 %445, i64* %PC, align 8, !tbaa !2428
  br label %block_400a56

block_400b21:                                     ; preds = %block_400aaf
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 151), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %446 = load i64, i64* %RSP, align 8, !tbaa !2428
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 4197170, i64* %448, align 8
  store i64 %447, i64* %RSP, align 8, !tbaa !2428
  store i64 4195888, i64* %PC, align 8, !tbaa !2428
  %449 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -60
  %452 = load i32, i32* %EAX, align 4
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %451 to i32*
  store i32 %452, i32* %455, align 4
  %456 = load i64, i64* %PC, align 8
  %457 = add i64 %456, 43
  store i64 %457, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400bb6:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %458 = add i64 %344, -1414
  %459 = add i64 %344, 17
  %460 = load i64, i64* %RSP, align 8, !tbaa !2428
  %461 = add i64 %460, -8
  %462 = inttoptr i64 %461 to i64*
  store i64 %459, i64* %462, align 8
  store i64 %461, i64* %RSP, align 8, !tbaa !2428
  store i64 %458, i64* %PC, align 8, !tbaa !2428
  %463 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %296)
  %464 = load i64, i64* %RBP, align 8
  %465 = add i64 %464, -76
  %466 = load i32, i32* %EAX, align 4
  %467 = load i64, i64* %PC, align 8
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %465 to i32*
  store i32 %466, i32* %469, align 4
  %470 = load i64, i64* %PC, align 8
  %471 = add i64 %470, 25
  store i64 %471, i64* %PC, align 8, !tbaa !2428
  br label %block_400be3

block_400a62:                                     ; preds = %block_400a56
  %472 = add i64 %145, -8
  %473 = add i64 %181, 4
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RAX, align 8, !tbaa !2428
  %476 = add i64 %181, 8
  store i64 %476, i64* %PC, align 8
  %477 = load i32, i32* %148, align 4
  %478 = sext i32 %477 to i64
  %479 = mul nsw i64 %478, 3
  store i64 %479, i64* %RCX, align 8, !tbaa !2428
  %480 = mul nsw i64 %478, 12
  %481 = add i64 %480, %475
  %482 = add i64 %181, 15
  store i64 %482, i64* %PC, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %486 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %22, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %30, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %490 = add i64 %181, -1074
  %491 = add i64 %181, 35
  %492 = load i64, i64* %RSP, align 8, !tbaa !2428
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %491, i64* %494, align 8
  store i64 %493, i64* %RSP, align 8, !tbaa !2428
  store i64 %490, i64* %PC, align 8, !tbaa !2428
  %495 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
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
  %509 = add i64 %501, 8
  %510 = add i64 %509, %508
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
  %524 = xor i64 %514, %515
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
  %.v4 = select i1 %552, i64 145, i64 6
  %553 = add i64 %548, %.v4
  store i64 %553, i64* %PC, align 8, !tbaa !2428
  br i1 %552, label %block_400b3a, label %block_400aaf

; <label>:554:                                    ; preds = %block_400aaf
  %555 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %76, %struct.Memory* %495)
  ret %struct.Memory* %555
}

; Function Attrs: noinline
define %struct.Memory* @sub_401280_search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401280:
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
  %14 = tail call %struct.Memory* @sub_400fd0_doSearch_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_4009e7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4009e7:
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

; Function Attrs: noinline
define %struct.Memory* @sub_401110_getInput(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401110:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  br label %block_40113b

block_40113b:                                     ; preds = %block_40116d, %block_401110
  %63 = phi i64 [ %.pre, %block_401110 ], [ %386, %block_40116d ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401110 ], [ %348, %block_40116d ]
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
  %86 = xor i32 %76, %78
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
  %.v = select i1 %106, i64 16, i64 6
  %107 = add i64 %104, %.v
  store i64 %107, i64* %PC, align 8, !tbaa !2428
  %108 = icmp eq i8 %105, 1
  br i1 %108, label %block_40115d, label %block_401153

block_401153:                                     ; preds = %block_40113b
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
  %123 = xor i32 %114, %122
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
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40115d

block_4011d0:                                     ; preds = %block_401168, %block_4011c9
  %142 = phi i64 [ %415, %block_401168 ], [ %.pre3, %block_4011c9 ]
  %143 = phi i64 [ %389, %block_401168 ], [ %.pre2, %block_4011c9 ]
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
  %157 = xor i32 %147, %148
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
  %172 = add i64 %143, -64
  %173 = add i64 %172, %171
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
  %200 = tail call %struct.Memory* @sub_400780_newWorkList_renamed_(%struct.State* nonnull %0, i64 %195, %struct.Memory* %69)
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
  %210 = tail call %struct.Memory* @sub_4007e0_newCombList_renamed_(%struct.State* nonnull %0, i64 %205, %struct.Memory* %200)
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
  %220 = tail call %struct.Memory* @sub_4007e0_newCombList_renamed_(%struct.State* nonnull %0, i64 %215, %struct.Memory* %210)
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
  %233 = tail call %struct.Memory* @sub_400840_initWorkList_renamed_(%struct.State* nonnull %0, i64 %228, %struct.Memory* %220)
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
  %243 = tail call %struct.Memory* @sub_400890_initCombList_renamed_(%struct.State* nonnull %0, i64 %238, %struct.Memory* %233)
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
  %253 = tail call %struct.Memory* @sub_400890_initCombList_renamed_(%struct.State* nonnull %0, i64 %248, %struct.Memory* %243)
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
  %267 = xor i64 %257, %258
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

block_40116d:                                     ; preds = %block_40115d
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
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64* %RSI, align 8, !tbaa !2428
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
  %310 = lshr i64 %308, 61
  %311 = and i64 %310, 1
  %312 = add i64 %309, %302
  store i64 %312, i64* %RCX, align 8, !tbaa !2428
  %313 = icmp ult i64 %312, %302
  %314 = icmp ult i64 %312, %309
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %14, align 1, !tbaa !2432
  %317 = trunc i64 %312 to i32
  %318 = and i32 %317, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318) #9
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %21, align 1, !tbaa !2446
  %323 = xor i64 %309, %302
  %324 = xor i64 %323, %312
  %325 = lshr i64 %324, 4
  %326 = trunc i64 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1, !tbaa !2447
  %328 = icmp eq i64 %312, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1, !tbaa !2448
  %330 = lshr i64 %312, 63
  %331 = trunc i64 %330 to i8
  store i8 %331, i8* %32, align 1, !tbaa !2449
  %332 = lshr i64 %302, 63
  %333 = xor i64 %330, %332
  %334 = xor i64 %330, %311
  %335 = add nuw nsw i64 %333, %334
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %38, align 1, !tbaa !2450
  store i64 %312, i64* %RDX, align 8, !tbaa !2428
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
  %366 = xor i32 %354, %355
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
  br label %block_40113b

block_4011c9:                                     ; preds = %block_401168
  %387 = add i64 %415, 7
  store i64 %387, i64* %PC, align 8
  store i32 4, i32* %404, align 4
  %.pre2 = load i64, i64* %RBP, align 8
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_4011d0

block_40115d:                                     ; preds = %block_401153, %block_40113b
  %388 = phi i64 [ %.pre1, %block_401153 ], [ %107, %block_40113b ]
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
  %.v4 = select i1 %400, i64 16, i64 11
  %401 = add i64 %388, %.v4
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  br i1 %400, label %block_40116d, label %block_401168

block_401168:                                     ; preds = %block_40115d
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
  %.v5 = select i1 %411, i64 97, i64 104
  %415 = add i64 %401, %.v5
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  br i1 %411, label %block_4011c9, label %block_4011d0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4012f0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012f0:
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
  %63 = add i64 %38, -3363
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4005e8__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401346, label %block_401326

block_401346:                                     ; preds = %block_401330, %block_4012f0
  %81 = phi i64 [ %80, %block_4012f0 ], [ %179, %block_401330 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4012f0 ], [ %149, %block_401330 ]
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
  %92 = xor i64 %82, %83
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

block_401326:                                     ; preds = %block_4012f0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401330

block_401330:                                     ; preds = %block_401330, %block_401326
  %134 = phi i64 [ 0, %block_401326 ], [ %152, %block_401330 ]
  %135 = phi i64 [ %133, %block_401326 ], [ %179, %block_401330 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401326 ], [ %149, %block_401330 ]
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
  %.v1 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v1
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401346, label %block_401330
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ad6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %phitmp7 = add i64 %1, 12
  br label %block_400ad6

block_400b3a:                                     ; preds = %block_400a62
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 153), i64* %RDI, align 8, !tbaa !2428
  %12 = load i64, i64* %RBP, align 8
  %13 = add i64 %12, -8
  %14 = add i64 %311, 14
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %RAX, align 8, !tbaa !2428
  %17 = add i64 %12, -16
  %18 = add i64 %311, 18
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 12
  store i64 %22, i64* %RCX, align 8, !tbaa !2428
  %23 = lshr i64 %22, 63
  %24 = add i64 %22, %16
  store i64 %24, i64* %RAX, align 8, !tbaa !2428
  %25 = icmp ult i64 %24, %16
  %26 = icmp ult i64 %24, %22
  %27 = or i1 %25, %26
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %6, align 1, !tbaa !2432
  %29 = trunc i64 %24 to i32
  %30 = and i32 %29, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #9
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %7, align 1, !tbaa !2446
  %35 = xor i64 %22, %16
  %36 = xor i64 %35, %24
  %37 = lshr i64 %36, 4
  %38 = trunc i64 %37 to i8
  %39 = and i8 %38, 1
  store i8 %39, i8* %8, align 1, !tbaa !2447
  %40 = icmp eq i64 %24, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %9, align 1, !tbaa !2448
  %42 = lshr i64 %24, 63
  %43 = trunc i64 %42 to i8
  store i8 %43, i8* %10, align 1, !tbaa !2449
  %44 = lshr i64 %16, 63
  %45 = xor i64 %42, %44
  %46 = xor i64 %42, %23
  %47 = add nuw nsw i64 %45, %46
  %48 = icmp eq i64 %47, 2
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %11, align 1, !tbaa !2450
  %50 = add i64 %24, 8
  %51 = add i64 %311, 28
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %55 = add i64 %311, -1290
  %56 = add i64 %311, 35
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %253)
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -64
  %63 = load i32, i32* %EAX, align 4
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %66, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b60

block_400bf6:                                     ; preds = %block_400be3
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 169), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %67 = add i64 %229, -1478
  %68 = add i64 %229, 17
  %69 = load i64, i64* %RSP, align 8, !tbaa !2428
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %RSP, align 8, !tbaa !2428
  store i64 %67, i64* %PC, align 8, !tbaa !2428
  %72 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
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
  %90 = xor i64 %79, %81
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

block_400ad6:                                     ; preds = %block_400aaf, %3
  %111 = phi i64 [ %phitmp7, %3 ], [ 4197090, %block_400aaf ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %253, %block_400aaf ]
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 145), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %112 = add i64 %111, -1202
  %113 = add i64 %111, 5
  %114 = load i64, i64* %RSP, align 8, !tbaa !2428
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  store i64 %115, i64* %RSP, align 8, !tbaa !2428
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  %117 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -48
  %120 = load i32, i32* %EAX, align 4
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %119 to i32*
  store i32 %120, i32* %123, align 4
  %124 = load i64, i64* %PC, align 8
  %125 = add i64 %124, 118
  store i64 %125, i64* %PC, align 8, !tbaa !2428
  br label %block_400b60

block_400bcf:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 168), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %126 = add i64 %462, -1439
  %127 = add i64 %462, 17
  %128 = load i64, i64* %RSP, align 8, !tbaa !2428
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130, align 8
  store i64 %129, i64* %RSP, align 8, !tbaa !2428
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  %131 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %414)
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -80
  %134 = load i32, i32* %EAX, align 4
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %137, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400be3

block_400bb6:                                     ; preds = %block_400b60
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 165), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %138 = add i64 %462, -1414
  %139 = add i64 %462, 17
  %140 = load i64, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  store i64 %138, i64* %PC, align 8, !tbaa !2428
  %143 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %414)
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -76
  %146 = load i32, i32* %EAX, align 4
  %147 = load i64, i64* %PC, align 8
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %149, align 4
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, 25
  store i64 %151, i64* %PC, align 8, !tbaa !2428
  br label %block_400be3

block_400aaf:                                     ; preds = %block_400a62
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -32
  %154 = add i64 %311, 4
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %RAX, align 8, !tbaa !2428
  %157 = shl i64 %156, 3
  %158 = add i64 %157, add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 40)
  %159 = add i64 %311, 12
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RCX, align 8, !tbaa !2428
  store i64 %161, i64* %PC, align 8, !tbaa !2428
  switch i64 %161, label %468 [
    i64 4197153, label %block_400b21
    i64 4197128, label %block_400b08
    i64 4197053, label %block_400abd
    i64 4197103, label %block_400aef
    i64 4197078, label %block_400ad6
  ]

block_400be3:                                     ; preds = %block_400bb6, %block_400bcf
  %162 = phi i64 [ %.pre6, %block_400bcf ], [ %151, %block_400bb6 ]
  %MEMORY.1 = phi %struct.Memory* [ %131, %block_400bcf ], [ %143, %block_400bb6 ]
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -16
  %165 = add i64 %162, 8
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, 1
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX, align 8, !tbaa !2428
  %170 = icmp eq i32 %167, -1
  %171 = icmp eq i32 %168, 0
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %6, align 1, !tbaa !2432
  %174 = and i32 %168, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #9
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %7, align 1, !tbaa !2446
  %179 = xor i32 %167, %168
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %8, align 1, !tbaa !2447
  %183 = zext i1 %171 to i8
  store i8 %183, i8* %9, align 1, !tbaa !2448
  %184 = lshr i32 %168, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %10, align 1, !tbaa !2449
  %186 = lshr i32 %167, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %184
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %11, align 1, !tbaa !2450
  %191 = add i64 %162, 14
  store i64 %191, i64* %PC, align 8
  store i32 %168, i32* %166, align 4
  %192 = load i64, i64* %PC, align 8
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -16
  %195 = add i64 %192, -408
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %199 = add i64 %193, -12
  %200 = add i64 %192, -405
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = sub i32 %197, %202
  %204 = icmp ult i32 %197, %202
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %6, align 1, !tbaa !2432
  %206 = and i32 %203, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206) #9
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %7, align 1, !tbaa !2446
  %211 = xor i32 %202, %197
  %212 = xor i32 %211, %203
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %8, align 1, !tbaa !2447
  %216 = icmp eq i32 %203, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %9, align 1, !tbaa !2448
  %218 = lshr i32 %203, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %10, align 1, !tbaa !2449
  %220 = lshr i32 %197, 31
  %221 = lshr i32 %202, 31
  %222 = xor i32 %221, %220
  %223 = xor i32 %218, %220
  %224 = add nuw nsw i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %11, align 1, !tbaa !2450
  %227 = icmp ne i8 %219, 0
  %228 = xor i1 %227, %225
  %.v8 = select i1 %228, i64 -399, i64 5
  %229 = add i64 %192, %.v8
  store i64 %229, i64* %PC, align 8, !tbaa !2428
  br i1 %228, label %block_400a62, label %block_400bf6

block_400a62:                                     ; preds = %block_400be3
  %230 = add i64 %193, -8
  %231 = add i64 %229, 4
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  %234 = add i64 %229, 8
  store i64 %234, i64* %PC, align 8
  %235 = load i32, i32* %196, align 4
  %236 = sext i32 %235 to i64
  %237 = mul nsw i64 %236, 3
  store i64 %237, i64* %RCX, align 8, !tbaa !2428
  %238 = mul nsw i64 %236, 12
  %239 = add i64 %238, %233
  %240 = add i64 %229, 15
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RSI, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)), i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %6, align 1, !tbaa !2432
  %244 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 255)) #9
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %7, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 0) to i8), i8* %9, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i32), i32 31) to i8), i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %R8B, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 162), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %248 = add i64 %229, -1074
  %249 = add i64 %229, 35
  %250 = load i64, i64* %RSP, align 8, !tbaa !2428
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %249, i64* %252, align 8
  store i64 %251, i64* %RSP, align 8, !tbaa !2428
  store i64 %248, i64* %PC, align 8, !tbaa !2428
  %253 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %254 = load i64, i64* %RBP, align 8
  %255 = add i64 %254, -8
  %256 = load i64, i64* %PC, align 8
  %257 = add i64 %256, 4
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %255 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RCX, align 8, !tbaa !2428
  %260 = add i64 %254, -16
  %261 = add i64 %256, 8
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = mul nsw i64 %264, 3
  store i64 %265, i64* %RDI, align 8, !tbaa !2428
  %266 = mul nsw i64 %264, 12
  %267 = add i64 %259, 8
  %268 = add i64 %267, %266
  %269 = add i64 %256, 16
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RDX, align 8, !tbaa !2428
  store i64 %272, i64* %RCX, align 8, !tbaa !2428
  %273 = add nsw i64 %272, -4
  store i64 %273, i64* %RDI, align 8, !tbaa !2428
  %274 = icmp ult i32 %271, 4
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %6, align 1, !tbaa !2432
  %276 = trunc i64 %273 to i32
  %277 = and i32 %276, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277) #9
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %7, align 1, !tbaa !2446
  %282 = xor i64 %272, %273
  %283 = lshr i64 %282, 4
  %284 = trunc i64 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %8, align 1, !tbaa !2447
  %286 = icmp eq i64 %273, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %9, align 1, !tbaa !2448
  %288 = lshr i64 %273, 63
  %289 = trunc i64 %288 to i8
  store i8 %289, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %11, align 1, !tbaa !2450
  %290 = add i64 %254, -20
  %291 = load i32, i32* %EAX, align 4
  %292 = add i64 %256, 28
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %290 to i32*
  store i32 %291, i32* %293, align 4
  %294 = load i64, i64* %RBP, align 8
  %295 = add i64 %294, -32
  %296 = load i64, i64* %RCX, align 8
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %295 to i64*
  store i64 %296, i64* %299, align 8
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -40
  %302 = load i64, i64* %RDI, align 8
  %303 = load i64, i64* %PC, align 8
  %304 = add i64 %303, 4
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %301 to i64*
  store i64 %302, i64* %305, align 8
  %306 = load i64, i64* %PC, align 8
  %307 = load i8, i8* %6, align 1, !tbaa !2432
  %308 = load i8, i8* %9, align 1, !tbaa !2448
  %309 = or i8 %308, %307
  %310 = icmp eq i8 %309, 0
  %.v9 = select i1 %310, i64 145, i64 6
  %311 = add i64 %306, %.v9
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br i1 %310, label %block_400b3a, label %block_400aaf

block_400b60:                                     ; preds = %block_400ad6, %block_400b3a
  %312 = phi i64 [ %125, %block_400ad6 ], [ %.pre, %block_400b3a ]
  %MEMORY.2 = phi %struct.Memory* [ %117, %block_400ad6 ], [ %60, %block_400b3a ]
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
  %399 = tail call %struct.Memory* @sub_4009a0_calculate_renamed_(%struct.State* nonnull %0, i64 %394, %struct.Memory* %MEMORY.2)
  %400 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 159), i64* %RDI, align 8, !tbaa !2428
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
  %414 = tail call fastcc %struct.Memory* @ext_6020f8_printf(%struct.State* nonnull %0, %struct.Memory* %399)
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
  %.v = select i1 %461, i64 6, i64 31
  %462 = add i64 %456, %.v
  %463 = add i64 %462, 10
  store i64 %463, i64* %PC, align 8
  br i1 %461, label %block_400bb6, label %block_400bcf

block_400aef:                                     ; preds = %block_400aaf
  %464 = tail call %struct.Memory* @sub_400aef(%struct.State* nonnull %0, i64 4197103, %struct.Memory* %253)
  ret %struct.Memory* %464

block_400abd:                                     ; preds = %block_400aaf
  %465 = tail call %struct.Memory* @sub_400abd(%struct.State* nonnull %0, i64 4197053, %struct.Memory* %253)
  ret %struct.Memory* %465

block_400b08:                                     ; preds = %block_400aaf
  %466 = tail call %struct.Memory* @sub_400b08(%struct.State* nonnull %0, i64 4197128, %struct.Memory* %253)
  ret %struct.Memory* %466

block_400b21:                                     ; preds = %block_400aaf
  %467 = tail call %struct.Memory* @sub_400b21(%struct.State* nonnull %0, i64 4197153, %struct.Memory* %253)
  ret %struct.Memory* %467

; <label>:468:                                    ; preds = %block_400aaf
  %469 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %161, %struct.Memory* %253)
  ret %struct.Memory* %469
}

; Function Attrs: noinline
define %struct.Memory* @sub_400780_newWorkList(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400780:
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
  br i1 %74, label %block_4007b4, label %block_4007aa

block_4007b4:                                     ; preds = %block_400780
  %EAX = bitcast %union.anon* %3 to i32*
  %AL = bitcast %union.anon* %3 to i8*
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 80), i64* %RSI, align 8, !tbaa !2428
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
  %85 = tail call fastcc %struct.Memory* @ext_400660_fprintf(%struct.State* nonnull %0, %struct.Memory* %55)
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
  %98 = tail call fastcc %struct.Memory* @ext_602170_exit(%struct.State* nonnull %0, %struct.Memory* %85)
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %PC, align 8
  %101 = tail call %struct.Memory* @sub_4007e0_newCombList(%struct.State* nonnull %0, i64 %100, %struct.Memory* %98)
  ret %struct.Memory* %101

block_4007aa:                                     ; preds = %block_400780
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
  %114 = xor i64 %104, %105
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400770_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @callback_sub_400770_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400770_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400740___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400740;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @callback_sub_400740___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400740___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401360___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401360;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @callback_sub_401360___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401360___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4012f0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @callback_sub_4012f0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012f0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602148___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f8_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_400660_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602170_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602150_calloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f0_abs(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602158_getchar(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @getchar to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602168_ungetc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @ungetc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e8___isoc99_fscanf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_fscanf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005e8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005e8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @initCombList() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400890;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @initCombList_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400890_initCombList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @recSearch() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ca0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @recSearch_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ca0_recSearch(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @doSearch() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400fd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @doSearch_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400fd0_doSearch(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @calculate() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @calculate_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4009a0_calculate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @newWorkList() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @newWorkList_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400780_newWorkList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @getInput() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401110;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @getInput_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401110_getInput(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @search() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401280;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @search_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401280_search(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @saveSolution() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @saveSolution_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008e0_saveSolution(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @printSolution() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @printSolution_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a40_printSolution(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @printList() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @printList_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c10_printList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @initWorkList() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400840;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @18, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @initWorkList_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400840_initWorkList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401364;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @19, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401364__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @newCombList() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @20, void ()** nonnull @2) #9
  ret void
}

define internal %struct.Memory* @newCombList_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007e0_newCombList(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401360___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4012f0___libc_csu_init()
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
attributes #8 = { alwaysinline nobuiltin nounwind }
attributes #9 = { nounwind }

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
