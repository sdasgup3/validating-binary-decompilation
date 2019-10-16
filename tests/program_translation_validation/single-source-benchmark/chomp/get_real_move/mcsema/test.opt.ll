; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4017b0__rodata_type = type <{ [4 x i8], [3 x i8], [13 x i8], [14 x i8], [20 x i8], [34 x i8], [25 x i8], [28 x i8], [14 x i8], [33 x i8], [32 x i8], [32 x i8], [55 x i8], [27 x i8], [27 x i8], [28 x i8], [17 x i8], [55 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%__bss_start_type = type <{ [8 x i8] }>
%game_tree_type = type <{ [8 x i8] }>
%wanted_type = type <{ [8 x i8] }>
%ncol_type = type <{ [4 x i8] }>
%nrow_type = type <{ [4 x i8] }>
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
@seg_4017b0__rodata = internal constant %seg_4017b0__rodata_type <{ [4 x i8] c"\01\00\02\00", [3 x i8] c"%d\00", [13 x i8] c"For state :\0A\00", [14 x i8] c"  value = %d\0A\00", [20 x i8] c"We get, in order :\0A\00", [34 x i8] c"Mode : 1 -> multiple first moves\0A\00", [25 x i8] c"       2 -> report game\0A\00", [28 x i8] c"       3 -> good positions\0A\00", [14 x i8] c" Selection : \00", [33 x i8] c"Enter number of Columns       : \00", [32 x i8] c"Enter Initial number of Rows : \00", [32 x i8] c"Enter Maximum number of Rows : \00", [55 x i8] c"The winning initial move for %d x %d CHOMP is (%d,%d)\0A\00", [27 x i8] c"Enter number of Columns : \00", [27 x i8] c"Enter number of Rows    : \00", [28 x i8] c"player %d plays at (%d,%d)\0A\00", [17 x i8] c"player %d loses\0A\00", [55 x i8] c"ATTENTION : representation is as in a _data structure\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400650_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400620___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer
@game_tree = local_unnamed_addr global %game_tree_type zeroinitializer
@wanted = local_unnamed_addr global %wanted_type zeroinitializer
@ncol = global %ncol_type zeroinitializer
@nrow = global %nrow_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400650_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400620___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4017a0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401730___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @show_play_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @get_good_move_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @make_wanted_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @make_list_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @show_data_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @in_wanted_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dump_list_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @melt_data_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @get_real_move_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @next_data_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @get_value_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @where_wrapper
@20 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @valid_data_wrapper
@21 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @make_data_wrapper
@22 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @get_winning_move_wrapper
@23 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @copy_data_wrapper
@24 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @show_list_wrapper
@25 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @make_play_wrapper
@26 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@27 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @equal_data_wrapper
@28 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @show_move_wrapper
@29 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dump_play_wrapper
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

; Function Attrs: noinline nounwind
declare extern_weak x86_64_sysvcc i64 @putchar(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__isoc99_scanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4005a0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4005a0:
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
define %struct.Memory* @sub_400620___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400620:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
  br i1 %12, label %block_400629, label %block_400640

block_400640:                                     ; preds = %block_400620
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

block_400629:                                     ; preds = %block_400620
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
  %36 = tail call %struct.Memory* @sub_4005b0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
define %struct.Memory* @sub_400a70_show_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400a70:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
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
  store i64 40, i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 16
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %EAX, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %PC, align 8
  store i64 %44, i64* %RDI, align 8, !tbaa !2428
  %46 = add i64 %45, -1361
  %47 = add i64 %45, 7
  %48 = load i64, i64* %RSP, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_6020a8_putchar(%struct.State* nonnull %0, %struct.Memory* %2)
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %53 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %RDI, align 8, !tbaa !2428
  %58 = add i64 %52, -12
  %59 = load i32, i32* %EAX, align 4
  %60 = add i64 %54, 7
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, -159
  %64 = add i64 %62, 5
  %65 = load i64, i64* %RSP, align 8, !tbaa !2428
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67, align 8
  store i64 %66, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %68 = tail call %struct.Memory* @sub_4009f0_show_data(%struct.State* nonnull %0, i64 %63, %struct.Memory* %51)
  %69 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %70 = add i64 %69, -1364
  %71 = add i64 %69, 17
  %72 = load i64, i64* %RSP, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %RSP, align 8, !tbaa !2428
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  %75 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %68)
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -16
  %78 = load i32, i32* %EAX, align 4
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %81, align 4
  %82 = load i64, i64* %RSP, align 8
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %82, 16
  store i64 %84, i64* %RSP, align 8, !tbaa !2428
  %85 = icmp ugt i64 %82, -17
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %13, align 1, !tbaa !2432
  %87 = trunc i64 %84 to i32
  %88 = and i32 %87, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #10
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %20, align 1, !tbaa !2446
  %93 = xor i64 %82, 16
  %94 = xor i64 %93, %84
  %95 = lshr i64 %94, 4
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %26, align 1, !tbaa !2447
  %98 = icmp eq i64 %84, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %29, align 1, !tbaa !2448
  %100 = lshr i64 %84, 63
  %101 = trunc i64 %100 to i8
  store i8 %101, i8* %32, align 1, !tbaa !2449
  %102 = lshr i64 %82, 63
  %103 = xor i64 %100, %102
  %104 = add nuw nsw i64 %103, %100
  %105 = icmp eq i64 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %38, align 1, !tbaa !2450
  %107 = add i64 %83, 5
  store i64 %107, i64* %PC, align 8
  %108 = add i64 %82, 24
  %109 = inttoptr i64 %84 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RBP, align 8, !tbaa !2428
  store i64 %108, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %83, 6
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %PC, align 8, !tbaa !2428
  %114 = add i64 %82, 32
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %75
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007e0_equal_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4007e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %14 = load i64, i64* %RDI, align 8
  %15 = add i64 %12, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %RBP, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI, align 8
  %20 = load i64, i64* %PC, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RAX, align 8, !tbaa !2428
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -20
  %28 = add i64 %23, 10
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %27 to i32*
  store i32 %24, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre = load i64, i64* %PC, align 8
  %.pre8 = load i64, i64* %RBP, align 8
  br label %block_4007f6

block_40083f:                                     ; preds = %block_40082f
  %36 = add i64 %125, -73
  store i64 %36, i64* %PC, align 8, !tbaa !2428
  br label %block_4007f6

block_400811:                                     ; preds = %block_4007f6
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -8
  %39 = add i64 %155, 4
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RAX, align 8, !tbaa !2428
  %42 = add i64 %37, -20
  %43 = add i64 %155, 8
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %RCX, align 8, !tbaa !2428
  %47 = shl nsw i64 %46, 2
  %48 = add i64 %47, %41
  %49 = add i64 %155, 11
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RDX, align 8, !tbaa !2428
  %53 = add i64 %37, -16
  %54 = add i64 %155, 15
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  %57 = add i64 %155, 19
  store i64 %57, i64* %PC, align 8
  %58 = load i32, i32* %44, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %RCX, align 8, !tbaa !2428
  %60 = shl nsw i64 %59, 2
  %61 = add i64 %56, %60
  %62 = add i64 %155, 22
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %51, %64
  %66 = icmp ult i32 %51, %64
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %30, align 1, !tbaa !2432
  %68 = and i32 %65, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #10
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %31, align 1, !tbaa !2446
  %73 = xor i32 %64, %51
  %74 = xor i32 %73, %65
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %35, align 1, !tbaa !2447
  %78 = icmp eq i32 %65, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %32, align 1, !tbaa !2448
  %80 = lshr i32 %65, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %33, align 1, !tbaa !2449
  %82 = lshr i32 %51, 31
  %83 = lshr i32 %64, 31
  %84 = xor i32 %83, %82
  %85 = xor i32 %80, %82
  %86 = add nuw nsw i32 %85, %84
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %34, align 1, !tbaa !2450
  store i8 %79, i8* %SIL, align 1, !tbaa !2451
  %89 = add i64 %37, -21
  %90 = add i64 %155, 30
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i8*
  store i8 %79, i8* %91, align 1
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_40082f

block_40083a:                                     ; preds = %block_40082f
  %92 = add i64 %113, -20
  %93 = add i64 %125, 14
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = lshr i32 %95, 31
  %97 = trunc i32 %96 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %98 = tail call i32 @llvm.ctpop.i32(i32 %96) #10
  %99 = trunc i32 %98 to i8
  %100 = xor i8 %99, 1
  store i8 %100, i8* %31, align 1, !tbaa !2446
  %101 = xor i8 %97, 1
  store i8 %101, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %34, align 1, !tbaa !2450
  store i8 0, i8* %35, align 1, !tbaa !2447
  %102 = zext i32 %96 to i64
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = add i64 %125, 23
  store i64 %103, i64* %PC, align 8
  %104 = load i64, i64* %8, align 8, !tbaa !2428
  %105 = add i64 %104, 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RBP, align 8, !tbaa !2428
  store i64 %105, i64* %8, align 8, !tbaa !2428
  %108 = add i64 %125, 24
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %105 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %PC, align 8, !tbaa !2428
  %111 = add i64 %104, 16
  store i64 %111, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_40082f:                                     ; preds = %block_4007f6, %block_400811
  %112 = phi i64 [ %155, %block_4007f6 ], [ %.pre9, %block_400811 ]
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -21
  %115 = add i64 %112, 3
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i8*
  %117 = load i8, i8* %116, align 1
  store i8 %117, i8* %AL, align 1, !tbaa !2451
  %118 = and i8 %117, 1
  store i8 0, i8* %30, align 1, !tbaa !2432
  %119 = zext i8 %118 to i32
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #10
  %121 = trunc i32 %120 to i8
  %122 = xor i8 %121, 1
  store i8 %122, i8* %31, align 1, !tbaa !2446
  %123 = xor i8 %118, 1
  store i8 %123, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %34, align 1, !tbaa !2450
  store i8 0, i8* %35, align 1, !tbaa !2447
  %124 = icmp eq i8 %123, 0
  %.v = select i1 %124, i64 16, i64 11
  %125 = add i64 %112, %.v
  store i64 %125, i64* %PC, align 8, !tbaa !2428
  br i1 %124, label %block_40083f, label %block_40083a

block_4007f6:                                     ; preds = %block_40083f, %block_4007e0
  %126 = phi i64 [ %113, %block_40083f ], [ %.pre8, %block_4007e0 ]
  %127 = phi i64 [ %36, %block_40083f ], [ %.pre, %block_4007e0 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %31, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %34, align 1, !tbaa !2450
  store i8 0, i8* %35, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %128 = add i64 %126, -20
  %129 = add i64 %127, 7
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = add i32 %131, -1
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RDX, align 8, !tbaa !2428
  %135 = add i64 %127, 15
  store i64 %135, i64* %PC, align 8
  store i32 %133, i32* %130, align 4
  %136 = load i32, i32* %EAX, align 4
  %137 = load i64, i64* %PC, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %138 = and i32 %136, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #10
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %31, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2447
  %143 = icmp eq i32 %136, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %32, align 1, !tbaa !2448
  %145 = lshr i32 %136, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %34, align 1, !tbaa !2450
  %147 = load i64, i64* %RBP, align 8
  %148 = add i64 %147, -21
  %149 = load i8, i8* %CL, align 1
  %150 = add i64 %137, 6
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %148 to i8*
  store i8 %149, i8* %151, align 1
  %152 = load i64, i64* %PC, align 8
  %153 = load i8, i8* %32, align 1, !tbaa !2448
  %154 = icmp ne i8 %153, 0
  %.v11 = select i1 %154, i64 36, i64 6
  %155 = add i64 %152, %.v11
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  %156 = icmp eq i8 %153, 1
  br i1 %156, label %block_40082f, label %block_400811
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400660_copy_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400660:
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
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %17 = add i64 %6, -16
  %18 = load i64, i64* %RDI, align 8
  %19 = add i64 %9, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %PC, align 8
  %22 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  store i64 %24, i64* %RDI, align 8, !tbaa !2428
  %.lobit = lshr i32 %22, 31
  %25 = trunc i32 %.lobit to i8
  store i8 %25, i8* %11, align 1, !tbaa !2451
  %26 = trunc i64 %24 to i32
  %27 = and i32 %26, 252
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #10
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %12, align 1, !tbaa !2451
  store i8 0, i8* %13, align 1, !tbaa !2451
  %32 = icmp eq i32 %22, 0
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %14, align 1, !tbaa !2451
  %34 = lshr i64 %23, 61
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %37 = add i64 %21, -284
  %38 = add i64 %21, 17
  %39 = load i64, i64* %RSP, align 8, !tbaa !2428
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %38, i64* %41, align 8
  store i64 %40, i64* %RSP, align 8, !tbaa !2428
  store i64 %37, i64* %PC, align 8, !tbaa !2428
  %42 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RAX, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %PC, align 8
  %50 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RCX, align 8, !tbaa !2428
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -20
  %54 = add i64 %49, 10
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i32*
  store i32 %50, i32* %55, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40068b

block_40069f:                                     ; preds = %block_40068b
  %56 = add i64 %106, -8
  %57 = add i64 %105, 4
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  %60 = add i64 %106, -20
  %61 = add i64 %105, 8
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %RCX, align 8, !tbaa !2428
  %65 = shl nsw i64 %64, 2
  %66 = add i64 %65, %59
  %67 = add i64 %105, 11
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %66 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %RDX, align 8, !tbaa !2428
  %71 = add i64 %106, -16
  %72 = add i64 %105, 15
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %105, 19
  store i64 %75, i64* %PC, align 8
  %76 = load i32, i32* %62, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RCX, align 8, !tbaa !2428
  %78 = shl nsw i64 %77, 2
  %79 = add i64 %78, %74
  %80 = add i64 %105, 22
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 %69, i32* %81, align 4
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, -42
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br label %block_40068b

block_40068b:                                     ; preds = %block_40069f, %block_400660
  %84 = phi i64 [ %83, %block_40069f ], [ %.pre, %block_400660 ]
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -20
  %87 = add i64 %84, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = add i32 %89, -1
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RCX, align 8, !tbaa !2428
  %93 = add i64 %84, 11
  store i64 %93, i64* %PC, align 8
  store i32 %91, i32* %88, align 4
  %94 = load i32, i32* %EAX, align 4
  %95 = load i64, i64* %PC, align 8
  store i8 0, i8* %11, align 1, !tbaa !2432
  %96 = and i32 %94, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #10
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %12, align 1, !tbaa !2446
  store i8 0, i8* %13, align 1, !tbaa !2447
  %101 = icmp eq i32 %94, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1, !tbaa !2448
  %103 = lshr i32 %94, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %.v = select i1 %101, i64 36, i64 9
  %105 = add i64 %95, %.v
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  %106 = load i64, i64* %RBP, align 8
  br i1 %101, label %block_4006ba, label %block_40069f

block_4006ba:                                     ; preds = %block_40068b
  %107 = add i64 %106, -16
  %108 = add i64 %105, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RAX, align 8, !tbaa !2428
  %111 = load i64, i64* %RSP, align 8
  %112 = add i64 %111, 32
  store i64 %112, i64* %RSP, align 8, !tbaa !2428
  %113 = icmp ugt i64 %111, -33
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %11, align 1, !tbaa !2432
  %115 = trunc i64 %112 to i32
  %116 = and i32 %115, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116) #10
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %12, align 1, !tbaa !2446
  %121 = xor i64 %112, %111
  %122 = lshr i64 %121, 4
  %123 = trunc i64 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %13, align 1, !tbaa !2447
  %125 = icmp eq i64 %112, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %14, align 1, !tbaa !2448
  %127 = lshr i64 %112, 63
  %128 = trunc i64 %127 to i8
  store i8 %128, i8* %15, align 1, !tbaa !2449
  %129 = lshr i64 %111, 63
  %130 = xor i64 %127, %129
  %131 = add nuw nsw i64 %130, %127
  %132 = icmp eq i64 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %16, align 1, !tbaa !2450
  %134 = add i64 %105, 9
  store i64 %134, i64* %PC, align 8
  %135 = add i64 %111, 40
  %136 = inttoptr i64 %112 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RBP, align 8, !tbaa !2428
  store i64 %135, i64* %RSP, align 8, !tbaa !2428
  %138 = add i64 %105, 10
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %135 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  %141 = add i64 %111, 48
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400860_valid_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400860:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %17 = load i64, i64* %PC, align 8
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19, align 4
  %20 = load i64, i64* %PC, align 8
  %21 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8, !tbaa !2428
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %23, -12
  %25 = add i64 %20, 10
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %24 to i32*
  store i32 %21, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400879

block_40089d:                                     ; preds = %block_400889
  %33 = add i64 %111, 33
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br label %block_4008be

block_400879:                                     ; preds = %block_4008a2, %block_400860
  %34 = phi i64 [ %175, %block_4008a2 ], [ %.pre, %block_400860 ]
  %35 = load i64, i64* %RBP, align 8
  %36 = add i64 %35, -16
  %37 = add i64 %34, 3
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %RAX, align 8, !tbaa !2428
  %41 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %42 = sub i32 %39, %41
  %43 = icmp ult i32 %39, %41
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %27, align 1, !tbaa !2432
  %45 = and i32 %42, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45) #10
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  store i8 %49, i8* %28, align 1, !tbaa !2446
  %50 = xor i32 %41, %39
  %51 = xor i32 %50, %42
  %52 = lshr i32 %51, 4
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, i8* %29, align 1, !tbaa !2447
  %55 = icmp eq i32 %42, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %30, align 1, !tbaa !2448
  %57 = lshr i32 %42, 31
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %31, align 1, !tbaa !2449
  %59 = lshr i32 %39, 31
  %60 = lshr i32 %41, 31
  %61 = xor i32 %60, %59
  %62 = xor i32 %57, %59
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %32, align 1, !tbaa !2450
  %.v = select i1 %55, i64 69, i64 16
  %66 = add i64 %34, %.v
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  br i1 %55, label %block_4008be.loopexit, label %block_400889

block_400889:                                     ; preds = %block_400879
  %67 = add i64 %35, -8
  %68 = add i64 %66, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %RAX, align 8, !tbaa !2428
  %71 = add i64 %66, 8
  store i64 %71, i64* %PC, align 8
  %72 = load i32, i32* %38, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %RCX, align 8, !tbaa !2428
  %74 = shl nsw i64 %73, 2
  %75 = add i64 %74, %70
  %76 = add i64 %66, 11
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RDX, align 8, !tbaa !2428
  %80 = add i64 %35, -12
  %81 = add i64 %66, 14
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %78, %83
  %85 = icmp ult i32 %78, %83
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %27, align 1, !tbaa !2432
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #10
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %28, align 1, !tbaa !2446
  %92 = xor i32 %83, %78
  %93 = xor i32 %92, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %29, align 1, !tbaa !2447
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %30, align 1, !tbaa !2448
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %31, align 1, !tbaa !2449
  %101 = lshr i32 %78, 31
  %102 = lshr i32 %83, 31
  %103 = xor i32 %102, %101
  %104 = xor i32 %99, %101
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %32, align 1, !tbaa !2450
  %108 = icmp ne i8 %100, 0
  %109 = xor i1 %108, %106
  %110 = or i1 %97, %109
  %.v14 = select i1 %110, i64 25, i64 20
  %111 = add i64 %66, %.v14
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  br i1 %110, label %block_4008a2, label %block_40089d

block_4008be.loopexit:                            ; preds = %block_400879
  br label %block_4008be

block_4008be:                                     ; preds = %block_4008be.loopexit, %block_40089d
  %112 = phi i64 [ %33, %block_40089d ], [ %66, %block_4008be.loopexit ]
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC, align 8
  %114 = load i32, i32* %38, align 4
  %115 = icmp eq i32 %114, %41
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %CL, align 1, !tbaa !2451
  store i8 0, i8* %27, align 1, !tbaa !2432
  %117 = zext i1 %115 to i32
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117) #10
  %119 = trunc i32 %118 to i8
  %120 = xor i8 %119, 1
  store i8 %120, i8* %28, align 1, !tbaa !2446
  %121 = xor i8 %116, 1
  store i8 %121, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %122 = zext i1 %115 to i64
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = add i64 %112, 20
  store i64 %123, i64* %PC, align 8
  %124 = load i64, i64* %6, align 8, !tbaa !2428
  %125 = add i64 %124, 8
  %126 = inttoptr i64 %124 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RBP, align 8, !tbaa !2428
  store i64 %125, i64* %6, align 8, !tbaa !2428
  %128 = add i64 %112, 21
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %125 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %PC, align 8, !tbaa !2428
  %131 = add i64 %124, 16
  store i64 %131, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4008a2:                                     ; preds = %block_400889
  %132 = add i64 %111, 4
  store i64 %132, i64* %PC, align 8
  %133 = load i64, i64* %69, align 8
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = add i64 %111, 8
  store i64 %134, i64* %PC, align 8
  %135 = load i32, i32* %38, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RCX, align 8, !tbaa !2428
  %137 = shl nsw i64 %136, 2
  %138 = add i64 %137, %133
  %139 = add i64 %111, 11
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RDX, align 8, !tbaa !2428
  %143 = add i64 %111, 14
  store i64 %143, i64* %PC, align 8
  store i32 %141, i32* %82, align 4
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -16
  %146 = load i64, i64* %PC, align 8
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, 1
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RDX, align 8, !tbaa !2428
  %152 = icmp eq i32 %149, -1
  %153 = icmp eq i32 %150, 0
  %154 = or i1 %152, %153
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %27, align 1, !tbaa !2432
  %156 = and i32 %150, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156) #10
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %28, align 1, !tbaa !2446
  %161 = xor i32 %150, %149
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %29, align 1, !tbaa !2447
  %165 = zext i1 %153 to i8
  store i8 %165, i8* %30, align 1, !tbaa !2448
  %166 = lshr i32 %150, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %31, align 1, !tbaa !2449
  %168 = lshr i32 %149, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %32, align 1, !tbaa !2450
  %173 = add i64 %146, 9
  store i64 %173, i64* %PC, align 8
  store i32 %150, i32* %148, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, -64
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  br label %block_400879
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400af0_show_play(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400af0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400afc

block_400b07:                                     ; preds = %block_400afc
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 7), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %42 = add i64 %179, -1479
  %43 = add i64 %179, 17
  %44 = load i64, i64* %RSP, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %46, align 8
  store i64 %45, i64* %RSP, align 8, !tbaa !2428
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %47 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  %54 = add i64 %53, 8
  %55 = add i64 %50, 8
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %RDI, align 8, !tbaa !2428
  %58 = add i64 %48, -12
  %59 = load i32, i32* %EAX, align 4
  %60 = add i64 %50, 11
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, -307
  %64 = add i64 %62, 5
  %65 = load i64, i64* %RSP, align 8, !tbaa !2428
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67, align 8
  store i64 %66, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %68 = tail call %struct.Memory* @sub_4009f0_show_data(%struct.State* nonnull %0, i64 %63, %struct.Memory* %47)
  %69 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 20), i64* %RDI, align 8, !tbaa !2428
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -8
  %72 = add i64 %69, 14
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RCX, align 8, !tbaa !2428
  %75 = add i64 %69, 16
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %79 = add i64 %69, -1512
  %80 = add i64 %69, 23
  %81 = load i64, i64* %RSP, align 8, !tbaa !2428
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*
  store i64 %80, i64* %83, align 8
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  store i64 %79, i64* %PC, align 8, !tbaa !2428
  %84 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %68)
  %85 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 34), i64* %RDI, align 8, !tbaa !2428
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -16
  %88 = load i32, i32* %EAX, align 4
  %89 = add i64 %85, 13
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %87 to i32*
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %92 = add i64 %91, -1548
  %93 = add i64 %91, 7
  %94 = load i64, i64* %RSP, align 8, !tbaa !2428
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  %97 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %84)
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -8
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RCX, align 8, !tbaa !2428
  %104 = add i64 %103, 16
  %105 = add i64 %100, 8
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RDI, align 8, !tbaa !2428
  %108 = add i64 %98, -20
  %109 = load i32, i32* %EAX, align 4
  %110 = add i64 %100, 11
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %111, align 4
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, -174
  %114 = add i64 %112, 5
  %115 = load i64, i64* %RSP, align 8, !tbaa !2428
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %RSP, align 8, !tbaa !2428
  store i64 %113, i64* %PC, align 8, !tbaa !2428
  %118 = tail call %struct.Memory* @sub_400ab0_show_list(%struct.State* nonnull %0, i64 %113, %struct.Memory* %97)
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -8
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RCX, align 8, !tbaa !2428
  %125 = add i64 %124, 24
  %126 = add i64 %121, 8
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RCX, align 8, !tbaa !2428
  %129 = add i64 %121, 12
  store i64 %129, i64* %PC, align 8
  store i64 %128, i64* %123, align 8
  %130 = load i64, i64* %PC, align 8
  %131 = add i64 %130, -115
  store i64 %131, i64* %PC, align 8, !tbaa !2428
  br label %block_400afc

block_400b74:                                     ; preds = %block_400afc
  %132 = load i64, i64* %RSP, align 8
  %133 = add i64 %132, 32
  store i64 %133, i64* %RSP, align 8, !tbaa !2428
  %134 = icmp ugt i64 %132, -33
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %13, align 1, !tbaa !2432
  %136 = trunc i64 %133 to i32
  %137 = and i32 %136, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #10
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %20, align 1, !tbaa !2446
  %142 = xor i64 %133, %132
  %143 = lshr i64 %142, 4
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %25, align 1, !tbaa !2447
  %146 = icmp eq i64 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %28, align 1, !tbaa !2448
  %148 = lshr i64 %133, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %31, align 1, !tbaa !2449
  %150 = lshr i64 %132, 63
  %151 = xor i64 %148, %150
  %152 = add nuw nsw i64 %151, %148
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %37, align 1, !tbaa !2450
  %155 = add i64 %179, 5
  store i64 %155, i64* %PC, align 8
  %156 = add i64 %132, 40
  %157 = inttoptr i64 %133 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RBP, align 8, !tbaa !2428
  store i64 %156, i64* %RSP, align 8, !tbaa !2428
  %159 = add i64 %179, 6
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %156 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %PC, align 8, !tbaa !2428
  %162 = add i64 %132, 48
  store i64 %162, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400afc:                                     ; preds = %block_400b07, %block_400af0
  %163 = phi i64 [ %.pre, %block_400af0 ], [ %131, %block_400b07 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400af0 ], [ %118, %block_400b07 ]
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -8
  %166 = add i64 %163, 5
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %169 = trunc i64 %168 to i32
  %170 = and i32 %169, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170) #10
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %175 = icmp eq i64 %168, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %28, align 1, !tbaa !2448
  %177 = lshr i64 %168, 63
  %178 = trunc i64 %177 to i8
  store i8 %178, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %175, i64 120, i64 11
  %179 = add i64 %163, %.v
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %175, label %block_400b74, label %block_400b07
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400570__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400570:
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
  store i64 ptrtoint (void ()* @callback_sub_4017a0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401730___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020b8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ab0_show_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400ab0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %PC, align 8
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %9 = add i64 %5, -24
  store i64 %9, i64* %RSP, align 8, !tbaa !2428
  %10 = icmp ult i64 %6, 16
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1, !tbaa !2432
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #10
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = xor i64 %6, 16
  %21 = xor i64 %20, %9
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %9, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %6, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %5, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %8, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400abc

block_400ac7:                                     ; preds = %block_400abc
  %42 = add i64 %114, 4
  store i64 %42, i64* %PC, align 8
  %43 = load i64, i64* %102, align 8
  store i64 %43, i64* %RAX, align 8, !tbaa !2428
  %44 = add i64 %114, 7
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %RDI, align 8, !tbaa !2428
  %47 = add i64 %114, -87
  %48 = add i64 %114, 12
  %49 = load i64, i64* %RSP, align 8, !tbaa !2428
  %50 = add i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  store i64 %50, i64* %RSP, align 8, !tbaa !2428
  store i64 %47, i64* %PC, align 8, !tbaa !2428
  %52 = tail call %struct.Memory* @sub_400a70_show_move(%struct.State* nonnull %0, i64 %47, %struct.Memory* %MEMORY.0)
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %54 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %59 = add i64 %58, 8
  %60 = add i64 %55, 8
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %55, 12
  store i64 %63, i64* %PC, align 8
  store i64 %62, i64* %57, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, -35
  store i64 %65, i64* %PC, align 8, !tbaa !2428
  br label %block_400abc

block_400ae4:                                     ; preds = %block_400abc
  %66 = load i64, i64* %RSP, align 8
  %67 = add i64 %66, 16
  store i64 %67, i64* %RSP, align 8, !tbaa !2428
  %68 = icmp ugt i64 %66, -17
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %12, align 1, !tbaa !2432
  %70 = trunc i64 %67 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #10
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %19, align 1, !tbaa !2446
  %76 = xor i64 %66, 16
  %77 = xor i64 %76, %67
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %25, align 1, !tbaa !2447
  %81 = icmp eq i64 %67, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %28, align 1, !tbaa !2448
  %83 = lshr i64 %67, 63
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %31, align 1, !tbaa !2449
  %85 = lshr i64 %66, 63
  %86 = xor i64 %83, %85
  %87 = add nuw nsw i64 %86, %83
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %37, align 1, !tbaa !2450
  %90 = add i64 %114, 5
  store i64 %90, i64* %PC, align 8
  %91 = add i64 %66, 24
  %92 = inttoptr i64 %67 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RBP, align 8, !tbaa !2428
  store i64 %91, i64* %RSP, align 8, !tbaa !2428
  %94 = add i64 %114, 6
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %91 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %PC, align 8, !tbaa !2428
  %97 = add i64 %66, 32
  store i64 %97, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400abc:                                     ; preds = %block_400ac7, %block_400ab0
  %98 = phi i64 [ %.pre, %block_400ab0 ], [ %65, %block_400ac7 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400ab0 ], [ %52, %block_400ac7 ]
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -8
  %101 = add i64 %98, 5
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %104 = trunc i64 %103 to i32
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105) #10
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %110 = icmp eq i64 %103, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %28, align 1, !tbaa !2448
  %112 = lshr i64 %103, 63
  %113 = trunc i64 %112 to i8
  store i8 %113, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %110, i64 40, i64 11
  %114 = add i64 %98, %.v
  store i64 %114, i64* %PC, align 8, !tbaa !2428
  br i1 %110, label %block_400ae4, label %block_400ac7
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401150_get_good_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_401150:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %39 = add i64 %7, -24
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 5
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i64*
  %48 = load i64, i64* %47, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #10
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %55 = icmp eq i64 %48, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %29, align 1, !tbaa !2448
  %57 = lshr i64 %48, 63
  %58 = trunc i64 %57 to i8
  store i8 %58, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v11 = select i1 %55, i64 11, i64 24
  %59 = add i64 %45, %.v11
  store i64 %59, i64* %PC, align 8, !tbaa !2428
  br i1 %55, label %block_401167, label %block_401179.preheader

block_401179.preheader:                           ; preds = %block_401150
  br label %block_401179

block_401179:                                     ; preds = %block_401179.preheader, %block_4011b4
  %60 = phi i64 [ %.pre8, %block_4011b4 ], [ %43, %block_401179.preheader ]
  %61 = phi i64 [ %.pre, %block_4011b4 ], [ %59, %block_401179.preheader ]
  %.sink7 = phi i64 [ -71, %block_4011b4 ], [ 5, %block_401179.preheader ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4011b4 ], [ %2, %block_401179.preheader ]
  %62 = add i64 %61, %.sink7
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 1, i8* %21, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %63 = add i64 %60, -16
  %64 = add i64 %62, 8
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RDX, align 8, !tbaa !2428
  %67 = add i64 %66, 8
  %68 = add i64 %62, 13
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #10
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %77 = icmp eq i64 %70, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %29, align 1, !tbaa !2448
  %79 = lshr i64 %70, 63
  %80 = trunc i64 %79 to i8
  store i8 %80, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %81 = add i64 %60, -17
  %82 = add i64 %62, 16
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i8*
  store i8 0, i8* %83, align 1
  %84 = load i64, i64* %PC, align 8
  %85 = load i8, i8* %29, align 1, !tbaa !2448
  %86 = icmp ne i8 %85, 0
  %.v13 = select i1 %86, i64 27, i64 6
  %87 = add i64 %84, %.v13
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  %88 = icmp eq i8 %85, 1
  br i1 %88, label %block_4011a4, label %block_40118f

block_40118f:                                     ; preds = %block_401179
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -16
  %91 = add i64 %87, 4
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RAX, align 8, !tbaa !2428
  %94 = add i64 %87, 7
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RDI, align 8, !tbaa !2428
  %97 = add i64 %87, -2047
  %98 = add i64 %87, 12
  %99 = load i64, i64* %RSP, align 8, !tbaa !2428
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101, align 8
  store i64 %100, i64* %RSP, align 8, !tbaa !2428
  store i64 %97, i64* %PC, align 8, !tbaa !2428
  %102 = tail call %struct.Memory* @sub_400990_get_value(%struct.State* nonnull %0, i64 %97, %struct.Memory* %MEMORY.0)
  %103 = load i32, i32* %EAX, align 4
  %104 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %105 = and i32 %103, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105) #10
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %110 = icmp eq i32 %103, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %29, align 1, !tbaa !2448
  %112 = lshr i32 %103, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %114 = xor i1 %110, true
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %CL, align 1, !tbaa !2451
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -17
  %118 = add i64 %104, 9
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i8*
  store i8 %115, i8* %119, align 1
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_4011a4

block_4011d5:                                     ; preds = %block_4011af, %block_401167
  %120 = phi i64 [ %.pre10, %block_4011af ], [ %169, %block_401167 ]
  %MEMORY.1 = phi %struct.Memory* [ %181, %block_4011af ], [ %2, %block_401167 ]
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -8
  %123 = add i64 %120, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  %126 = load i64, i64* %RSP, align 8
  %127 = add i64 %126, 32
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  %128 = icmp ugt i64 %126, -33
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %14, align 1, !tbaa !2432
  %130 = trunc i64 %127 to i32
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #10
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %21, align 1, !tbaa !2446
  %136 = xor i64 %127, %126
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %26, align 1, !tbaa !2447
  %140 = icmp eq i64 %127, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %29, align 1, !tbaa !2448
  %142 = lshr i64 %127, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %32, align 1, !tbaa !2449
  %144 = lshr i64 %126, 63
  %145 = xor i64 %142, %144
  %146 = add nuw nsw i64 %145, %142
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %38, align 1, !tbaa !2450
  %149 = add i64 %120, 9
  store i64 %149, i64* %PC, align 8
  %150 = add i64 %126, 40
  %151 = inttoptr i64 %127 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RBP, align 8, !tbaa !2428
  store i64 %150, i64* %RSP, align 8, !tbaa !2428
  %153 = add i64 %120, 10
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %150 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  %156 = add i64 %126, 48
  store i64 %156, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_4011b4:                                     ; preds = %block_4011a4
  %157 = add i64 %201, 4
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %202 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RAX, align 8, !tbaa !2428
  %160 = add i64 %159, 8
  %161 = add i64 %201, 8
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = add i64 %201, 12
  store i64 %164, i64* %PC, align 8
  store i64 %163, i64* %158, align 8
  %.pre = load i64, i64* %PC, align 8
  %.pre8 = load i64, i64* %RBP, align 8
  br label %block_401179

block_401167:                                     ; preds = %block_401150
  %165 = add i64 %43, -8
  %166 = add i64 %59, 8
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i64*
  store i64 0, i64* %167, align 8
  %168 = load i64, i64* %PC, align 8
  %169 = add i64 %168, 102
  store i64 %169, i64* %PC, align 8, !tbaa !2428
  br label %block_4011d5

block_4011af:                                     ; preds = %block_4011a4
  %170 = add i64 %201, 26
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %202 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %201, 29
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RDI, align 8, !tbaa !2428
  %176 = add i64 %201, -2895
  %177 = add i64 %201, 34
  %178 = load i64, i64* %RSP, align 8, !tbaa !2428
  %179 = add i64 %178, -8
  %180 = inttoptr i64 %179 to i64*
  store i64 %177, i64* %180, align 8
  store i64 %179, i64* %RSP, align 8, !tbaa !2428
  store i64 %176, i64* %PC, align 8, !tbaa !2428
  %181 = tail call %struct.Memory* @sub_400660_copy_data(%struct.State* nonnull %0, i64 %176, %struct.Memory* %MEMORY.2)
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -8
  %184 = load i64, i64* %RAX, align 8
  %185 = load i64, i64* %PC, align 8
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187, align 8
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_4011d5

block_4011a4:                                     ; preds = %block_40118f, %block_401179
  %188 = phi i64 [ %87, %block_401179 ], [ %.pre9, %block_40118f ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401179 ], [ %102, %block_40118f ]
  %189 = load i64, i64* %RBP, align 8
  %190 = add i64 %189, -17
  %191 = add i64 %188, 3
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i8*
  %193 = load i8, i8* %192, align 1
  store i8 %193, i8* %AL, align 1, !tbaa !2451
  %194 = and i8 %193, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %195 = zext i8 %194 to i32
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #10
  %197 = trunc i32 %196 to i8
  %198 = xor i8 %197, 1
  store i8 %198, i8* %21, align 1, !tbaa !2446
  %199 = xor i8 %194, 1
  store i8 %199, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %200 = icmp eq i8 %199, 0
  %.v = select i1 %200, i64 16, i64 11
  %201 = add i64 %188, %.v
  store i64 %201, i64* %PC, align 8, !tbaa !2428
  %202 = add i64 %189, -16
  br i1 %200, label %block_4011b4, label %block_4011af
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400770_melt_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400770:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %21 = load i64, i64* %PC, align 8
  %22 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8, !tbaa !2428
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -20
  %26 = add i64 %21, 10
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %25 to i32*
  store i32 %22, i32* %27, align 4
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400786

block_4007d1:                                     ; preds = %block_400786
  %34 = add i64 %142, 1
  store i64 %34, i64* %PC, align 8
  %35 = load i64, i64* %6, align 8, !tbaa !2428
  %36 = add i64 %35, 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %RBP, align 8, !tbaa !2428
  store i64 %36, i64* %6, align 8, !tbaa !2428
  %39 = add i64 %142, 2
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %36 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %PC, align 8, !tbaa !2428
  %42 = add i64 %35, 16
  store i64 %42, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_40079a:                                     ; preds = %block_400786
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -8
  %45 = add i64 %142, 4
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RAX, align 8, !tbaa !2428
  %48 = add i64 %43, -20
  %49 = add i64 %142, 8
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %RCX, align 8, !tbaa !2428
  %53 = shl nsw i64 %52, 2
  %54 = add i64 %53, %47
  %55 = add i64 %142, 11
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RDX, align 8, !tbaa !2428
  %59 = add i64 %43, -16
  %60 = add i64 %142, 15
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %142, 19
  store i64 %63, i64* %PC, align 8
  %64 = load i32, i32* %50, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %RCX, align 8, !tbaa !2428
  %66 = shl nsw i64 %65, 2
  %67 = add i64 %62, %66
  %68 = add i64 %142, 22
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %57, %70
  %72 = icmp ult i32 %57, %70
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %28, align 1, !tbaa !2432
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #10
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %29, align 1, !tbaa !2446
  %79 = xor i32 %70, %57
  %80 = xor i32 %79, %71
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %30, align 1, !tbaa !2447
  %84 = icmp eq i32 %71, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %31, align 1, !tbaa !2448
  %86 = lshr i32 %71, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %32, align 1, !tbaa !2449
  %88 = lshr i32 %57, 31
  %89 = lshr i32 %70, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %86, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %33, align 1, !tbaa !2450
  %95 = icmp ne i8 %87, 0
  %96 = xor i1 %95, %93
  %97 = or i1 %84, %96
  %.v3 = select i1 %97, i64 50, i64 28
  %98 = add i64 %142, %.v3
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  br i1 %97, label %block_4007cc, label %block_4007b6

block_4007b6:                                     ; preds = %block_40079a
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC, align 8
  %100 = load i64, i64* %61, align 8
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = add i64 %98, 8
  store i64 %101, i64* %PC, align 8
  %102 = load i32, i32* %50, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %RCX, align 8, !tbaa !2428
  %104 = shl nsw i64 %103, 2
  %105 = add i64 %104, %100
  %106 = add i64 %98, 11
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RDX, align 8, !tbaa !2428
  %110 = add i64 %98, 15
  store i64 %110, i64* %PC, align 8
  %111 = load i64, i64* %46, align 8
  store i64 %111, i64* %RAX, align 8, !tbaa !2428
  %112 = add i64 %98, 19
  store i64 %112, i64* %PC, align 8
  %113 = load i32, i32* %50, align 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %RCX, align 8, !tbaa !2428
  %115 = shl nsw i64 %114, 2
  %116 = add i64 %115, %111
  %117 = add i64 %98, 22
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %108, i32* %118, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4007cc

block_4007cc:                                     ; preds = %block_4007b6, %block_40079a
  %119 = phi i64 [ %.pre2, %block_4007b6 ], [ %98, %block_40079a ]
  %120 = add i64 %119, -70
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br label %block_400786

block_400786:                                     ; preds = %block_4007cc, %block_400770
  %121 = phi i64 [ %120, %block_4007cc ], [ %.pre, %block_400770 ]
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -20
  %124 = add i64 %121, 3
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = add i32 %126, -1
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RCX, align 8, !tbaa !2428
  %130 = add i64 %121, 11
  store i64 %130, i64* %PC, align 8
  store i32 %128, i32* %125, align 4
  %131 = load i32, i32* %EAX, align 4
  %132 = load i64, i64* %PC, align 8
  store i8 0, i8* %28, align 1, !tbaa !2432
  %133 = and i32 %131, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133) #10
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %29, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %138 = icmp eq i32 %131, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %31, align 1, !tbaa !2448
  %140 = lshr i32 %131, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %33, align 1, !tbaa !2450
  %.v = select i1 %138, i64 64, i64 9
  %142 = add i64 %132, %.v
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  br i1 %138, label %block_4007d1, label %block_40079a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4005b0:
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
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i8), i8* %9, align 1, !tbaa !2432
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #10
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2446
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2447
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2449
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_4005d8, label %block_4005c1

block_4005d8:                                     ; preds = %block_4005c1, %block_4005b0
  %20 = phi i64 [ %27, %block_4005c1 ], [ %19, %block_4005b0 ]
  %21 = add i64 %20, 1
  store i64 %21, i64* %PC, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %23 = add i64 %20, 2
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %5 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  %26 = add i64 %5, 8
  store i64 %26, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005c1:                                     ; preds = %block_4005b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  %27 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  br label %block_4005d8
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ff0_make_wanted(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400ff0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %10 = add i64 %6, -56
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 48
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
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  store i64 16, i64* %RCX, align 8, !tbaa !2428
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 18
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RCX, align 8
  %44 = load i64, i64* %PC, align 8
  store i64 %43, i64* %RDI, align 8, !tbaa !2428
  %45 = add i64 %44, -2739
  %46 = add i64 %44, 8
  %47 = load i64, i64* %RSP, align 8, !tbaa !2428
  %48 = add i64 %47, -8
  %49 = inttoptr i64 %48 to i64*
  store i64 %46, i64* %49, align 8
  store i64 %48, i64* %RSP, align 8, !tbaa !2428
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %50 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -32
  %53 = load i64, i64* %RAX, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %62, 8
  %64 = add i64 %59, 12
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %67 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RAX, align 8, !tbaa !2428
  %72 = add i64 %66, -40
  %73 = add i64 %68, 8
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i64*
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -12
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 7
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40102a

block_40103a:                                     ; preds = %block_40102a
  %80 = add i64 %321, -16
  %81 = add i64 %352, 7
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 0, i32* %82, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_401041

block_4010d6:                                     ; preds = %block_4010cc
  %83 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %84 = add i32 %83, -1
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = icmp eq i32 %83, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %13, align 1, !tbaa !2432
  %88 = and i32 %84, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #10
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %20, align 1, !tbaa !2446
  %93 = xor i32 %84, %83
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %26, align 1, !tbaa !2447
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %29, align 1, !tbaa !2448
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %32, align 1, !tbaa !2449
  %101 = lshr i32 %83, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1, !tbaa !2450
  %106 = add i64 %305, -12
  %107 = add i64 %319, 13
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 %84, i32* %108, align 4
  %.pre9 = load i64, i64* %PC, align 8
  %.pre10 = load i64, i64* %RBP, align 8
  br label %block_4010e3

block_4010e3:                                     ; preds = %block_4010cc, %block_4010d6
  %109 = phi i64 [ %305, %block_4010cc ], [ %.pre10, %block_4010d6 ]
  %110 = phi i64 [ %319, %block_4010cc ], [ %.pre9, %block_4010d6 ]
  %111 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %112 = add i32 %111, -1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = icmp eq i32 %111, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %13, align 1, !tbaa !2432
  %116 = and i32 %112, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116) #10
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %20, align 1, !tbaa !2446
  %121 = xor i32 %112, %111
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %26, align 1, !tbaa !2447
  %125 = icmp eq i32 %112, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %29, align 1, !tbaa !2448
  %127 = lshr i32 %112, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %32, align 1, !tbaa !2449
  %129 = lshr i32 %111, 31
  %130 = xor i32 %127, %129
  %131 = add nuw nsw i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %38, align 1, !tbaa !2450
  %134 = add i64 %109, -16
  %135 = add i64 %110, 13
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 %112, i32* %136, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_4010f0

block_40111d:                                     ; preds = %block_40102a
  %137 = add i64 %321, -32
  %138 = add i64 %352, 4
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = add i64 %140, 8
  %142 = add i64 %352, 8
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = add i64 %321, -40
  %146 = add i64 %352, 12
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i64*
  store i64 %144, i64* %147, align 8
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -32
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  store i64 %153, i64* %RDI, align 8, !tbaa !2428
  %154 = add i64 %150, -3081
  %155 = add i64 %150, 12
  %156 = load i64, i64* %RSP, align 8, !tbaa !2428
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %RSP, align 8, !tbaa !2428
  store i64 %154, i64* %PC, align 8, !tbaa !2428
  %159 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -40
  %162 = load i64, i64* %PC, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  store i64 %165, i64* bitcast (%wanted_type* @wanted to i64*), align 8
  %166 = load i64, i64* %RSP, align 8
  %167 = add i64 %166, 48
  store i64 %167, i64* %RSP, align 8, !tbaa !2428
  %168 = icmp ugt i64 %166, -49
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %13, align 1, !tbaa !2432
  %170 = trunc i64 %167 to i32
  %171 = and i32 %170, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #10
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %20, align 1, !tbaa !2446
  %176 = xor i64 %166, 16
  %177 = xor i64 %176, %167
  %178 = lshr i64 %177, 4
  %179 = trunc i64 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %26, align 1, !tbaa !2447
  %181 = icmp eq i64 %167, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %29, align 1, !tbaa !2448
  %183 = lshr i64 %167, 63
  %184 = trunc i64 %183 to i8
  store i8 %184, i8* %32, align 1, !tbaa !2449
  %185 = lshr i64 %166, 63
  %186 = xor i64 %183, %185
  %187 = add nuw nsw i64 %186, %183
  %188 = icmp eq i64 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %38, align 1, !tbaa !2450
  %190 = add i64 %162, 17
  store i64 %190, i64* %PC, align 8
  %191 = add i64 %166, 56
  %192 = inttoptr i64 %167 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RBP, align 8, !tbaa !2428
  store i64 %191, i64* %RSP, align 8, !tbaa !2428
  %194 = add i64 %162, 18
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %191 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %PC, align 8, !tbaa !2428
  %197 = add i64 %166, 64
  store i64 %197, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %159

block_401051:                                     ; preds = %block_401041
  %198 = add i64 %481, 3
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %482 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RDI, align 8, !tbaa !2428
  %202 = add i64 %481, 6
  store i64 %202, i64* %PC, align 8
  %203 = load i32, i32* %453, align 4
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RSI, align 8, !tbaa !2428
  %205 = add i64 %481, -1105
  %206 = add i64 %481, 11
  %207 = load i64, i64* %RSP, align 8, !tbaa !2428
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209, align 8
  store i64 %208, i64* %RSP, align 8, !tbaa !2428
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  %210 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %205, %struct.Memory* %MEMORY.3)
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -24
  %213 = load i64, i64* %RAX, align 8
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %212 to i64*
  store i64 %213, i64* %216, align 8
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -24
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, 4
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %218 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RDI, align 8, !tbaa !2428
  %223 = add i64 %217, -8
  %224 = add i64 %219, 8
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RSI, align 8, !tbaa !2428
  %227 = add i64 %219, -2288
  %228 = add i64 %219, 13
  %229 = load i64, i64* %RSP, align 8, !tbaa !2428
  %230 = add i64 %229, -8
  %231 = inttoptr i64 %230 to i64*
  store i64 %228, i64* %231, align 8
  store i64 %230, i64* %RSP, align 8, !tbaa !2428
  store i64 %227, i64* %PC, align 8, !tbaa !2428
  %232 = tail call %struct.Memory* @sub_400770_melt_data(%struct.State* nonnull %0, i64 %227, %struct.Memory* %210)
  %233 = load i64, i64* %RBP, align 8
  %234 = add i64 %233, -24
  %235 = load i64, i64* %PC, align 8
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %234 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RDI, align 8, !tbaa !2428
  %239 = add i64 %233, -8
  %240 = add i64 %235, 8
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RSI, align 8, !tbaa !2428
  %243 = add i64 %235, -2189
  %244 = add i64 %235, 13
  %245 = load i64, i64* %RSP, align 8, !tbaa !2428
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %RSP, align 8, !tbaa !2428
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  %248 = tail call %struct.Memory* @sub_4007e0_equal_data(%struct.State* nonnull %0, i64 %243, %struct.Memory* %232)
  %249 = load i32, i32* %EAX, align 4
  %250 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %251 = and i32 %249, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251) #10
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %256 = icmp eq i32 %249, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %29, align 1, !tbaa !2448
  %258 = lshr i32 %249, 31
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v13 = select i1 %256, i64 9, i64 82
  %260 = add i64 %250, %.v13
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  br i1 %256, label %block_401083, label %block_4010cc

block_4010f0:                                     ; preds = %block_401083, %block_4010e3
  %261 = phi i64 [ %.pre11, %block_4010e3 ], [ %448, %block_401083 ]
  %MEMORY.1 = phi %struct.Memory* [ %248, %block_4010e3 ], [ %409, %block_401083 ]
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -24
  %264 = add i64 %261, 4
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  store i64 %266, i64* %RDI, align 8, !tbaa !2428
  %267 = add i64 %261, -3024
  %268 = add i64 %261, 12
  %269 = load i64, i64* %RSP, align 8, !tbaa !2428
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %268, i64* %271, align 8
  store i64 %270, i64* %RSP, align 8, !tbaa !2428
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  %272 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %273 = load i64, i64* %RBP, align 8
  %274 = add i64 %273, -16
  %275 = load i64, i64* %PC, align 8
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %274 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %278, 1
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = icmp eq i32 %278, -1
  %282 = icmp eq i32 %279, 0
  %283 = or i1 %281, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %13, align 1, !tbaa !2432
  %285 = and i32 %279, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285) #10
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
  %302 = add i64 %275, 9
  store i64 %302, i64* %PC, align 8
  store i32 %279, i32* %277, align 4
  %303 = load i64, i64* %PC, align 8
  %304 = add i64 %303, -196
  store i64 %304, i64* %PC, align 8, !tbaa !2428
  br label %block_401041

block_4010cc:                                     ; preds = %block_401051
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -16
  %307 = add i64 %260, 4
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %310 = and i32 %309, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310) #10
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %315 = icmp eq i32 %309, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %29, align 1, !tbaa !2448
  %317 = lshr i32 %309, 31
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v14 = select i1 %315, i64 10, i64 23
  %319 = add i64 %260, %.v14
  store i64 %319, i64* %PC, align 8, !tbaa !2428
  br i1 %315, label %block_4010d6, label %block_4010e3

block_40102a:                                     ; preds = %block_40110a, %block_400ff0
  %320 = phi i64 [ %.pre, %block_400ff0 ], [ %381, %block_40110a ]
  %MEMORY.2 = phi %struct.Memory* [ %50, %block_400ff0 ], [ %MEMORY.3, %block_40110a ]
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -12
  %323 = add i64 %320, 3
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %328 = sub i32 %325, %327
  %329 = icmp ult i32 %325, %327
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %13, align 1, !tbaa !2432
  %331 = and i32 %328, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #10
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %20, align 1, !tbaa !2446
  %336 = xor i32 %327, %325
  %337 = xor i32 %336, %328
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %26, align 1, !tbaa !2447
  %341 = icmp eq i32 %328, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1, !tbaa !2448
  %343 = lshr i32 %328, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %32, align 1, !tbaa !2449
  %345 = lshr i32 %325, 31
  %346 = lshr i32 %327, 31
  %347 = xor i32 %346, %345
  %348 = xor i32 %343, %345
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %38, align 1, !tbaa !2450
  %.v12 = select i1 %341, i64 243, i64 16
  %352 = add i64 %320, %.v12
  store i64 %352, i64* %PC, align 8, !tbaa !2428
  br i1 %341, label %block_40111d, label %block_40103a

block_40110a:                                     ; preds = %block_401041
  %353 = add i64 %481, 8
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %482 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i32 %355, 1
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX, align 8, !tbaa !2428
  %358 = icmp eq i32 %355, -1
  %359 = icmp eq i32 %356, 0
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %13, align 1, !tbaa !2432
  %362 = and i32 %356, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362) #10
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %20, align 1, !tbaa !2446
  %367 = xor i32 %356, %355
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %26, align 1, !tbaa !2447
  %371 = zext i1 %359 to i8
  store i8 %371, i8* %29, align 1, !tbaa !2448
  %372 = lshr i32 %356, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %32, align 1, !tbaa !2449
  %374 = lshr i32 %355, 31
  %375 = xor i32 %372, %374
  %376 = add nuw nsw i32 %375, %372
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %38, align 1, !tbaa !2450
  %379 = add i64 %481, 14
  store i64 %379, i64* %PC, align 8
  store i32 %356, i32* %354, align 4
  %380 = load i64, i64* %PC, align 8
  %381 = add i64 %380, -238
  store i64 %381, i64* %PC, align 8, !tbaa !2428
  br label %block_40102a

block_401083:                                     ; preds = %block_401051
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  store i64 16, i64* %RDI, align 8, !tbaa !2428
  %382 = add i64 %260, -2867
  %383 = add i64 %260, 12
  %384 = load i64, i64* %RSP, align 8, !tbaa !2428
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %383, i64* %386, align 8
  store i64 %385, i64* %RSP, align 8, !tbaa !2428
  store i64 %382, i64* %PC, align 8, !tbaa !2428
  %387 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %248)
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -40
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %RDI, align 8, !tbaa !2428
  %394 = add i64 %393, 8
  %395 = load i64, i64* %RAX, align 8
  %396 = add i64 %390, 8
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %394 to i64*
  store i64 %395, i64* %397, align 8
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -24
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RDI, align 8, !tbaa !2428
  %404 = add i64 %400, -2615
  %405 = add i64 %400, 9
  %406 = load i64, i64* %RSP, align 8, !tbaa !2428
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %RSP, align 8, !tbaa !2428
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  %409 = tail call %struct.Memory* @sub_400660_copy_data(%struct.State* nonnull %0, i64 %404, %struct.Memory* %387)
  %410 = load i64, i64* %RBP, align 8
  %411 = add i64 %410, -40
  %412 = load i64, i64* %PC, align 8
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %411 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RDI, align 8, !tbaa !2428
  %416 = add i64 %415, 8
  %417 = add i64 %412, 8
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RDI, align 8, !tbaa !2428
  %420 = load i64, i64* %RAX, align 8
  %421 = add i64 %412, 11
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %419 to i64*
  store i64 %420, i64* %422, align 8
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -40
  %425 = load i64, i64* %PC, align 8
  %426 = add i64 %425, 4
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %424 to i64*
  %428 = load i64, i64* %427, align 8
  store i64 %428, i64* %RAX, align 8, !tbaa !2428
  %429 = add i64 %428, 8
  %430 = add i64 %425, 8
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = add i64 %432, 8
  %434 = add i64 %425, 16
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i64*
  store i64 0, i64* %435, align 8
  %436 = load i64, i64* %RBP, align 8
  %437 = add i64 %436, -40
  %438 = load i64, i64* %PC, align 8
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RAX, align 8, !tbaa !2428
  %442 = add i64 %441, 8
  %443 = add i64 %438, 8
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX, align 8, !tbaa !2428
  %446 = add i64 %438, 12
  store i64 %446, i64* %PC, align 8
  store i64 %445, i64* %440, align 8
  %447 = load i64, i64* %PC, align 8
  %448 = add i64 %447, 41
  store i64 %448, i64* %PC, align 8, !tbaa !2428
  br label %block_4010f0

block_401041:                                     ; preds = %block_4010f0, %block_40103a
  %449 = phi i64 [ %.pre8, %block_40103a ], [ %304, %block_4010f0 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_40103a ], [ %272, %block_4010f0 ]
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -16
  %452 = add i64 %449, 3
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX, align 8, !tbaa !2428
  %456 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %457 = sub i32 %454, %456
  %458 = icmp ult i32 %454, %456
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %13, align 1, !tbaa !2432
  %460 = and i32 %457, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #10
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %20, align 1, !tbaa !2446
  %465 = xor i32 %456, %454
  %466 = xor i32 %465, %457
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %26, align 1, !tbaa !2447
  %470 = icmp eq i32 %457, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %29, align 1, !tbaa !2448
  %472 = lshr i32 %457, 31
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %32, align 1, !tbaa !2449
  %474 = lshr i32 %454, 31
  %475 = lshr i32 %456, 31
  %476 = xor i32 %475, %474
  %477 = xor i32 %472, %474
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %470, i64 201, i64 16
  %481 = add i64 %449, %.v
  store i64 %481, i64* %PC, align 8, !tbaa !2428
  %482 = add i64 %450, -12
  br i1 %470, label %block_40110a, label %block_401051
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ca0_make_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400ca0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
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
  %10 = add i64 %6, -72
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 64
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
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  store i64 16, i64* %RCX, align 8, !tbaa !2428
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 18
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -16
  %44 = load i64, i64* %RSI, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -24
  %50 = load i64, i64* %RDX, align 8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -16
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RDX, align 8, !tbaa !2428
  %60 = add i64 %56, 10
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i32*
  store i32 1, i32* %61, align 4
  %62 = load i64, i64* %RCX, align 8
  %63 = load i64, i64* %PC, align 8
  store i64 %62, i64* %RDI, align 8, !tbaa !2428
  %64 = add i64 %63, -1909
  %65 = add i64 %63, 8
  %66 = load i64, i64* %RSP, align 8, !tbaa !2428
  %67 = add i64 %66, -8
  %68 = inttoptr i64 %67 to i64*
  store i64 %65, i64* %68, align 8
  store i64 %67, i64* %RSP, align 8, !tbaa !2428
  store i64 %64, i64* %PC, align 8, !tbaa !2428
  %69 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -48
  %72 = load i64, i64* %RAX, align 8
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -48
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = add i64 %81, 8
  %83 = add i64 %78, 12
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i64*
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -48
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = add i64 %85, -56
  %92 = add i64 %87, 8
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i64*
  store i64 %90, i64* %93, align 8
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -28
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %96, 7
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %95 to i32*
  store i32 0, i32* %98, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400cec

block_400deb:                                     ; preds = %block_400dbf
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -24
  %101 = add i64 %518, 4
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = add i64 %518, 10
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 2, i32* %105, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400df5

block_400e50:                                     ; preds = %block_400cec
  %106 = add i64 %636, -48
  %107 = add i64 %667, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = add i64 %109, 8
  %111 = add i64 %667, 8
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = add i64 %636, -56
  %115 = add i64 %667, 12
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -48
  %119 = load i64, i64* %PC, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %118 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  store i64 %122, i64* %RDI, align 8, !tbaa !2428
  %123 = add i64 %119, -2364
  %124 = add i64 %119, 12
  %125 = load i64, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %128 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %129 = load i64, i64* %RBP, align 8
  %130 = add i64 %129, -56
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #10
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %141 = icmp eq i64 %134, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %28, align 1, !tbaa !2448
  %143 = lshr i64 %134, 63
  %144 = trunc i64 %143 to i8
  store i8 %144, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v29 = select i1 %141, i64 28, i64 11
  %145 = add i64 %131, %.v29
  store i64 %145, i64* %PC, align 8, !tbaa !2428
  br i1 %141, label %block_400e84, label %block_400e73

block_400d45:                                     ; preds = %block_400d13
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  store i64 16, i64* %RDI, align 8, !tbaa !2428
  %146 = add i64 %461, -2037
  %147 = add i64 %461, 12
  %148 = load i64, i64* %RSP, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %RSP, align 8, !tbaa !2428
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  %151 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %449)
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -56
  %154 = load i64, i64* %PC, align 8
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RDI, align 8, !tbaa !2428
  %158 = add i64 %157, 8
  %159 = load i64, i64* %RAX, align 8
  %160 = add i64 %154, 8
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %158 to i64*
  store i64 %159, i64* %161, align 8
  %162 = load i64, i64* %RBP, align 8
  %163 = add i64 %162, -40
  %164 = load i64, i64* %PC, align 8
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %163 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RDI, align 8, !tbaa !2428
  %168 = add i64 %164, -1785
  %169 = add i64 %164, 9
  %170 = load i64, i64* %RSP, align 8, !tbaa !2428
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %RSP, align 8, !tbaa !2428
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  %173 = tail call %struct.Memory* @sub_400660_copy_data(%struct.State* nonnull %0, i64 %168, %struct.Memory* %151)
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -56
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RDI, align 8, !tbaa !2428
  %180 = add i64 %179, 8
  %181 = add i64 %176, 8
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RDI, align 8, !tbaa !2428
  %184 = load i64, i64* %RAX, align 8
  %185 = add i64 %176, 11
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -56
  %189 = load i64, i64* %PC, align 8
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %188 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = add i64 %192, 8
  %194 = add i64 %189, 8
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = add i64 %196, 8
  %198 = add i64 %189, 16
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i64*
  store i64 0, i64* %199, align 8
  %200 = load i64, i64* %RBP, align 8
  %201 = add i64 %200, -56
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %201 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  %206 = add i64 %205, 8
  %207 = add i64 %202, 8
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = add i64 %202, 12
  store i64 %210, i64* %PC, align 8
  store i64 %209, i64* %204, align 8
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -16
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RAX, align 8, !tbaa !2428
  %217 = add i64 %213, 7
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = add i32 %219, -1
  %221 = icmp eq i32 %219, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %13, align 1, !tbaa !2432
  %223 = and i32 %220, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223) #10
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %20, align 1, !tbaa !2446
  %228 = xor i32 %220, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %25, align 1, !tbaa !2447
  %232 = icmp eq i32 %220, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %28, align 1, !tbaa !2448
  %234 = lshr i32 %220, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %31, align 1, !tbaa !2449
  %236 = lshr i32 %219, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %37, align 1, !tbaa !2450
  %.v25 = select i1 %232, i64 13, i64 28
  %241 = add i64 %213, %.v25
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  br i1 %232, label %block_400d96, label %block_400da5

block_400e3d:                                     ; preds = %block_400d03
  %242 = add i64 %700, 8
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %701 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = add i32 %244, 1
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %RAX, align 8, !tbaa !2428
  %247 = icmp eq i32 %244, -1
  %248 = icmp eq i32 %245, 0
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %13, align 1, !tbaa !2432
  %251 = and i32 %245, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251) #10
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %20, align 1, !tbaa !2446
  %256 = xor i32 %245, %244
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %25, align 1, !tbaa !2447
  %260 = zext i1 %248 to i8
  store i8 %260, i8* %28, align 1, !tbaa !2448
  %261 = lshr i32 %245, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %31, align 1, !tbaa !2449
  %263 = lshr i32 %244, 31
  %264 = xor i32 %261, %263
  %265 = add nuw nsw i32 %264, %261
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %37, align 1, !tbaa !2450
  %268 = add i64 %700, 14
  store i64 %268, i64* %PC, align 8
  store i32 %245, i32* %243, align 4
  %269 = load i64, i64* %PC, align 8
  %270 = add i64 %269, -351
  store i64 %270, i64* %PC, align 8, !tbaa !2428
  br label %block_400cec

block_400db2:                                     ; preds = %block_400da5
  %271 = add i64 %289, -16
  %272 = add i64 %306, 4
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %306, 7
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %278 = and i32 %277, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278) #10
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %283 = icmp eq i32 %277, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %28, align 1, !tbaa !2448
  %285 = lshr i32 %277, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v27 = select i1 %283, i64 13, i64 72
  %287 = add i64 %306, %.v27
  store i64 %287, i64* %PC, align 8, !tbaa !2428
  br i1 %283, label %block_400dbf, label %block_400dfa

block_400da5:                                     ; preds = %block_400d45, %block_400d96
  %288 = phi i64 [ %241, %block_400d45 ], [ %.pre15, %block_400d96 ]
  %289 = phi i64 [ %211, %block_400d45 ], [ %.pre14, %block_400d96 ]
  %MEMORY.0 = phi %struct.Memory* [ %173, %block_400d45 ], [ %554, %block_400d96 ]
  %290 = add i64 %289, -24
  %291 = add i64 %288, 4
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = add i64 %288, 7
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %297 = and i32 %296, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297) #10
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %302 = icmp eq i32 %296, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %28, align 1, !tbaa !2448
  %304 = lshr i32 %296, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v26 = select i1 %302, i64 13, i64 85
  %306 = add i64 %288, %.v26
  store i64 %306, i64* %PC, align 8, !tbaa !2428
  br i1 %302, label %block_400db2, label %block_400dfa

block_400df5:                                     ; preds = %block_400dbf, %block_400deb
  %307 = phi i64 [ %518, %block_400dbf ], [ %.pre16, %block_400deb ]
  %308 = add i64 %307, 5
  store i64 %308, i64* %PC, align 8, !tbaa !2428
  br label %block_400dfa

block_400e23:                                     ; preds = %block_400dfa, %block_400e16
  %309 = phi i64 [ %.pre19, %block_400e16 ], [ %565, %block_400dfa ]
  %MEMORY.2 = phi %struct.Memory* [ %449, %block_400e16 ], [ %MEMORY.4, %block_400dfa ]
  %310 = load i64, i64* %RBP, align 8
  %311 = add i64 %310, -40
  %312 = add i64 %309, 4
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %309, -2307
  %316 = add i64 %309, 12
  %317 = load i64, i64* %RSP, align 8, !tbaa !2428
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %316, i64* %319, align 8
  store i64 %318, i64* %RSP, align 8, !tbaa !2428
  store i64 %315, i64* %PC, align 8, !tbaa !2428
  %320 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -32
  %323 = load i64, i64* %PC, align 8
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = add i32 %326, 1
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX, align 8, !tbaa !2428
  %329 = icmp eq i32 %326, -1
  %330 = icmp eq i32 %327, 0
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %13, align 1, !tbaa !2432
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #10
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %20, align 1, !tbaa !2446
  %338 = xor i32 %327, %326
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %25, align 1, !tbaa !2447
  %342 = zext i1 %330 to i8
  store i8 %342, i8* %28, align 1, !tbaa !2448
  %343 = lshr i32 %327, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %31, align 1, !tbaa !2449
  %345 = lshr i32 %326, 31
  %346 = xor i32 %343, %345
  %347 = add nuw nsw i32 %346, %343
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %37, align 1, !tbaa !2450
  %350 = add i64 %323, 9
  store i64 %350, i64* %PC, align 8
  store i32 %327, i32* %325, align 4
  %351 = load i64, i64* %PC, align 8
  %352 = add i64 %351, -309
  store i64 %352, i64* %PC, align 8, !tbaa !2428
  br label %block_400d03

block_400dff:                                     ; preds = %block_400d13
  %353 = load i64, i64* %RBP, align 8
  %354 = add i64 %353, -32
  %355 = add i64 %461, 4
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %358 = and i32 %357, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #10
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %363 = icmp eq i32 %357, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %28, align 1, !tbaa !2448
  %365 = lshr i32 %357, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v24 = select i1 %363, i64 10, i64 23
  %367 = add i64 %461, %.v24
  store i64 %367, i64* %PC, align 8, !tbaa !2428
  br i1 %363, label %block_400e09, label %block_400e16

block_400e16:                                     ; preds = %block_400dff, %block_400e09
  %368 = phi i64 [ %.pre18, %block_400e09 ], [ %353, %block_400dff ]
  %369 = phi i64 [ %.pre17, %block_400e09 ], [ %367, %block_400dff ]
  %370 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %371 = add i32 %370, -1
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX, align 8, !tbaa !2428
  %373 = icmp eq i32 %370, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %13, align 1, !tbaa !2432
  %375 = and i32 %371, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375) #10
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %20, align 1, !tbaa !2446
  %380 = xor i32 %371, %370
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %25, align 1, !tbaa !2447
  %384 = icmp eq i32 %371, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %28, align 1, !tbaa !2448
  %386 = lshr i32 %371, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %31, align 1, !tbaa !2449
  %388 = lshr i32 %370, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %37, align 1, !tbaa !2450
  %393 = add i64 %368, -32
  %394 = add i64 %369, 13
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i32*
  store i32 %371, i32* %395, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400e23

block_400cfc:                                     ; preds = %block_400cec
  %396 = add i64 %636, -32
  %397 = add i64 %667, 7
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  store i32 0, i32* %398, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400d03

block_400d13:                                     ; preds = %block_400d03
  %399 = add i64 %700, 3
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %701 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RDI, align 8, !tbaa !2428
  %403 = add i64 %700, 6
  store i64 %403, i64* %PC, align 8
  %404 = load i32, i32* %672, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RSI, align 8, !tbaa !2428
  %406 = add i64 %700, -275
  %407 = add i64 %700, 11
  %408 = load i64, i64* %RSP, align 8, !tbaa !2428
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %RSP, align 8, !tbaa !2428
  store i64 %406, i64* %PC, align 8, !tbaa !2428
  %411 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %406, %struct.Memory* %MEMORY.7)
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -40
  %414 = load i64, i64* %RAX, align 8
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %413 to i64*
  store i64 %414, i64* %417, align 8
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -40
  %420 = load i64, i64* %PC, align 8
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %419 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RDI, align 8, !tbaa !2428
  %424 = add i64 %418, -8
  %425 = add i64 %420, 8
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RSI, align 8, !tbaa !2428
  %428 = add i64 %420, -1458
  %429 = add i64 %420, 13
  %430 = load i64, i64* %RSP, align 8, !tbaa !2428
  %431 = add i64 %430, -8
  %432 = inttoptr i64 %431 to i64*
  store i64 %429, i64* %432, align 8
  store i64 %431, i64* %RSP, align 8, !tbaa !2428
  store i64 %428, i64* %PC, align 8, !tbaa !2428
  %433 = tail call %struct.Memory* @sub_400770_melt_data(%struct.State* nonnull %0, i64 %428, %struct.Memory* %411)
  %434 = load i64, i64* %RBP, align 8
  %435 = add i64 %434, -40
  %436 = load i64, i64* %PC, align 8
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RDI, align 8, !tbaa !2428
  %440 = add i64 %434, -8
  %441 = add i64 %436, 8
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RSI, align 8, !tbaa !2428
  %444 = add i64 %436, -1359
  %445 = add i64 %436, 13
  %446 = load i64, i64* %RSP, align 8, !tbaa !2428
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 %445, i64* %448, align 8
  store i64 %447, i64* %RSP, align 8, !tbaa !2428
  store i64 %444, i64* %PC, align 8, !tbaa !2428
  %449 = tail call %struct.Memory* @sub_4007e0_equal_data(%struct.State* nonnull %0, i64 %444, %struct.Memory* %433)
  %450 = load i32, i32* %EAX, align 4
  %451 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %452 = and i32 %450, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452) #10
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %457 = icmp eq i32 %450, 0
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %28, align 1, !tbaa !2448
  %459 = lshr i32 %450, 31
  %460 = trunc i32 %459 to i8
  store i8 %460, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v23 = select i1 %457, i64 9, i64 195
  %461 = add i64 %451, %.v23
  store i64 %461, i64* %PC, align 8, !tbaa !2428
  br i1 %457, label %block_400d45, label %block_400dff

block_400dbf:                                     ; preds = %block_400db2
  %462 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %463 = add i32 %462, -1
  %464 = add i64 %289, -32
  %465 = add i64 %287, 13
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i32*
  store i32 %463, i32* %466, align 4
  %467 = load i64, i64* %PC, align 8
  %468 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %469 = add i32 %468, -1
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX, align 8, !tbaa !2428
  %471 = icmp eq i32 %468, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %13, align 1, !tbaa !2432
  %473 = and i32 %469, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473) #10
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %20, align 1, !tbaa !2446
  %478 = xor i32 %469, %468
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %25, align 1, !tbaa !2447
  %482 = icmp eq i32 %469, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %28, align 1, !tbaa !2448
  %484 = lshr i32 %469, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %31, align 1, !tbaa !2449
  %486 = lshr i32 %468, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %486
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %37, align 1, !tbaa !2450
  %491 = load i64, i64* %RBP, align 8
  %492 = add i64 %491, -28
  %493 = add i64 %467, 13
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  store i32 %469, i32* %494, align 4
  %495 = load i64, i64* %RBP, align 8
  %496 = add i64 %495, -40
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %496 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RDI, align 8, !tbaa !2428
  %501 = add i64 %497, -601
  %502 = add i64 %497, 9
  %503 = load i64, i64* %RSP, align 8, !tbaa !2428
  %504 = add i64 %503, -8
  %505 = inttoptr i64 %504 to i64*
  store i64 %502, i64* %505, align 8
  store i64 %504, i64* %RSP, align 8, !tbaa !2428
  store i64 %501, i64* %PC, align 8, !tbaa !2428
  %506 = tail call %struct.Memory* @sub_400b80_in_wanted(%struct.State* nonnull %0, i64 %501, %struct.Memory* %MEMORY.0)
  %507 = load i32, i32* %EAX, align 4
  %508 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %509 = and i32 %507, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509) #10
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %514 = icmp eq i32 %507, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %28, align 1, !tbaa !2448
  %516 = lshr i32 %507, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v28 = select i1 %514, i64 19, i64 9
  %518 = add i64 %508, %.v28
  store i64 %518, i64* %PC, align 8, !tbaa !2428
  br i1 %514, label %block_400df5, label %block_400deb

block_400e09:                                     ; preds = %block_400dff
  %519 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %520 = add i32 %519, -1
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RAX, align 8, !tbaa !2428
  %522 = icmp eq i32 %519, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %13, align 1, !tbaa !2432
  %524 = and i32 %520, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524) #10
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %20, align 1, !tbaa !2446
  %529 = xor i32 %520, %519
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %25, align 1, !tbaa !2447
  %533 = icmp eq i32 %520, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %28, align 1, !tbaa !2448
  %535 = lshr i32 %520, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %31, align 1, !tbaa !2449
  %537 = lshr i32 %519, 31
  %538 = xor i32 %535, %537
  %539 = add nuw nsw i32 %538, %537
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %37, align 1, !tbaa !2450
  %542 = add i64 %353, -28
  %543 = add i64 %367, 13
  store i64 %543, i64* %PC, align 8
  %544 = inttoptr i64 %542 to i32*
  store i32 %520, i32* %544, align 4
  %.pre17 = load i64, i64* %PC, align 8
  %.pre18 = load i64, i64* %RBP, align 8
  br label %block_400e16

block_400d96:                                     ; preds = %block_400d45
  %545 = add i64 %211, -40
  %546 = add i64 %241, 4
  store i64 %546, i64* %PC, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RDI, align 8, !tbaa !2428
  %549 = add i64 %241, -1030
  %550 = add i64 %241, 9
  %551 = load i64, i64* %RSP, align 8, !tbaa !2428
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %550, i64* %553, align 8
  store i64 %552, i64* %RSP, align 8, !tbaa !2428
  store i64 %549, i64* %PC, align 8, !tbaa !2428
  %554 = tail call %struct.Memory* @sub_400990_get_value(%struct.State* nonnull %0, i64 %549, %struct.Memory* %173)
  %555 = load i64, i64* %RBP, align 8
  %556 = add i64 %555, -16
  %557 = load i64, i64* %PC, align 8
  %558 = add i64 %557, 4
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %556 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RDI, align 8, !tbaa !2428
  %561 = load i32, i32* %EAX, align 4
  %562 = add i64 %557, 6
  store i64 %562, i64* %PC, align 8
  %563 = inttoptr i64 %560 to i32*
  store i32 %561, i32* %563, align 4
  %.pre14 = load i64, i64* %RBP, align 8
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400da5

block_400dfa:                                     ; preds = %block_400db2, %block_400da5, %block_400df5
  %564 = phi i64 [ %306, %block_400da5 ], [ %287, %block_400db2 ], [ %308, %block_400df5 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_400da5 ], [ %MEMORY.0, %block_400db2 ], [ %506, %block_400df5 ]
  %565 = add i64 %564, 41
  store i64 %565, i64* %PC, align 8, !tbaa !2428
  br label %block_400e23

block_400e84:                                     ; preds = %block_400e73, %block_400e50
  %566 = phi i64 [ %.pre21, %block_400e73 ], [ %145, %block_400e50 ]
  %567 = phi i64 [ %.pre20, %block_400e73 ], [ %129, %block_400e50 ]
  %568 = add i64 %567, -56
  %569 = add i64 %566, 4
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %RAX, align 8, !tbaa !2428
  %572 = load i64, i64* %RSP, align 8
  %573 = add i64 %572, 64
  store i64 %573, i64* %RSP, align 8, !tbaa !2428
  %574 = icmp ugt i64 %572, -65
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %13, align 1, !tbaa !2432
  %576 = trunc i64 %573 to i32
  %577 = and i32 %576, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577) #10
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %20, align 1, !tbaa !2446
  %582 = xor i64 %573, %572
  %583 = lshr i64 %582, 4
  %584 = trunc i64 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %25, align 1, !tbaa !2447
  %586 = icmp eq i64 %573, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %28, align 1, !tbaa !2448
  %588 = lshr i64 %573, 63
  %589 = trunc i64 %588 to i8
  store i8 %589, i8* %31, align 1, !tbaa !2449
  %590 = lshr i64 %572, 63
  %591 = xor i64 %588, %590
  %592 = add nuw nsw i64 %591, %588
  %593 = icmp eq i64 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %37, align 1, !tbaa !2450
  %595 = add i64 %566, 9
  store i64 %595, i64* %PC, align 8
  %596 = add i64 %572, 72
  %597 = inttoptr i64 %573 to i64*
  %598 = load i64, i64* %597, align 8
  store i64 %598, i64* %RBP, align 8, !tbaa !2428
  store i64 %596, i64* %RSP, align 8, !tbaa !2428
  %599 = add i64 %566, 10
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %596 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %PC, align 8, !tbaa !2428
  %602 = add i64 %572, 80
  store i64 %602, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %128

block_400e73:                                     ; preds = %block_400e50
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %603 = add i64 %129, -16
  %604 = add i64 %145, 9
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RCX, align 8, !tbaa !2428
  %607 = add i64 %145, 11
  store i64 %607, i64* %PC, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sub i32 1, %609
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %612 = icmp ugt i32 %609, 1
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %13, align 1, !tbaa !2432
  %614 = and i32 %610, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614) #10
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %20, align 1, !tbaa !2446
  %619 = xor i32 %609, %610
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %25, align 1, !tbaa !2447
  %623 = icmp eq i32 %610, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %28, align 1, !tbaa !2448
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %31, align 1, !tbaa !2449
  %627 = lshr i32 %609, 31
  %628 = add nuw nsw i32 %625, %627
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %37, align 1, !tbaa !2450
  %631 = add i64 %145, 15
  store i64 %631, i64* %PC, align 8
  %632 = load i64, i64* %605, align 8
  store i64 %632, i64* %RCX, align 8, !tbaa !2428
  %633 = add i64 %145, 17
  store i64 %633, i64* %PC, align 8
  %634 = inttoptr i64 %632 to i32*
  store i32 %610, i32* %634, align 4
  %.pre20 = load i64, i64* %RBP, align 8
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400e84

block_400cec:                                     ; preds = %block_400e3d, %block_400ca0
  %635 = phi i64 [ %.pre, %block_400ca0 ], [ %270, %block_400e3d ]
  %MEMORY.6 = phi %struct.Memory* [ %69, %block_400ca0 ], [ %MEMORY.7, %block_400e3d ]
  %636 = load i64, i64* %RBP, align 8
  %637 = add i64 %636, -28
  %638 = add i64 %635, 3
  store i64 %638, i64* %PC, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX, align 8, !tbaa !2428
  %642 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %643 = sub i32 %640, %642
  %644 = icmp ult i32 %640, %642
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %13, align 1, !tbaa !2432
  %646 = and i32 %643, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646) #10
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %20, align 1, !tbaa !2446
  %651 = xor i32 %642, %640
  %652 = xor i32 %651, %643
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %25, align 1, !tbaa !2447
  %656 = icmp eq i32 %643, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %28, align 1, !tbaa !2448
  %658 = lshr i32 %643, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %31, align 1, !tbaa !2449
  %660 = lshr i32 %640, 31
  %661 = lshr i32 %642, 31
  %662 = xor i32 %661, %660
  %663 = xor i32 %658, %660
  %664 = add nuw nsw i32 %663, %662
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %37, align 1, !tbaa !2450
  %.v22 = select i1 %656, i64 356, i64 16
  %667 = add i64 %635, %.v22
  store i64 %667, i64* %PC, align 8, !tbaa !2428
  br i1 %656, label %block_400e50, label %block_400cfc

block_400d03:                                     ; preds = %block_400cfc, %block_400e23
  %668 = phi i64 [ %.pre13, %block_400cfc ], [ %352, %block_400e23 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_400cfc ], [ %320, %block_400e23 ]
  %669 = load i64, i64* %RBP, align 8
  %670 = add i64 %669, -32
  %671 = add i64 %668, 3
  store i64 %671, i64* %PC, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RAX, align 8, !tbaa !2428
  %675 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %676 = sub i32 %673, %675
  %677 = icmp ult i32 %673, %675
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %13, align 1, !tbaa !2432
  %679 = and i32 %676, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679) #10
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %20, align 1, !tbaa !2446
  %684 = xor i32 %675, %673
  %685 = xor i32 %684, %676
  %686 = lshr i32 %685, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %25, align 1, !tbaa !2447
  %689 = icmp eq i32 %676, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %28, align 1, !tbaa !2448
  %691 = lshr i32 %676, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %31, align 1, !tbaa !2449
  %693 = lshr i32 %673, 31
  %694 = lshr i32 %675, 31
  %695 = xor i32 %694, %693
  %696 = xor i32 %691, %693
  %697 = add nuw nsw i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %689, i64 314, i64 16
  %700 = add i64 %668, %.v
  store i64 %700, i64* %PC, align 8, !tbaa !2428
  %701 = add i64 %669, -28
  br i1 %689, label %block_400e3d, label %block_400d13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4011e0_get_winning_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4011e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %PC, align 8
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %9 = add i64 %5, -24
  store i64 %9, i64* %RSP, align 8, !tbaa !2428
  %10 = icmp ult i64 %6, 16
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1, !tbaa !2432
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #10
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = xor i64 %6, 16
  %21 = xor i64 %20, %9
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %9, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %6, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %5, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %8, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4011ec

block_40120c:                                     ; preds = %block_4011ec
  %42 = add i64 %125, 16
  %43 = add i64 %123, 8
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %RDI, align 8, !tbaa !2428
  %46 = add i64 %123, -188
  %47 = add i64 %123, 13
  %48 = load i64, i64* %RSP, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %51 = tail call %struct.Memory* @sub_401150_get_good_move(%struct.State* nonnull %0, i64 %46, %struct.Memory* %2)
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RAX, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -16
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RAX, align 8, !tbaa !2428
  %64 = load i64, i64* %RSP, align 8
  %65 = add i64 %64, 16
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  %66 = icmp ugt i64 %64, -17
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %12, align 1, !tbaa !2432
  %68 = trunc i64 %65 to i32
  %69 = and i32 %68, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #10
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %19, align 1, !tbaa !2446
  %74 = xor i64 %64, 16
  %75 = xor i64 %74, %65
  %76 = lshr i64 %75, 4
  %77 = trunc i64 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %25, align 1, !tbaa !2447
  %79 = icmp eq i64 %65, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %28, align 1, !tbaa !2448
  %81 = lshr i64 %65, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %31, align 1, !tbaa !2449
  %83 = lshr i64 %64, 63
  %84 = xor i64 %81, %83
  %85 = add nuw nsw i64 %84, %81
  %86 = icmp eq i64 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %37, align 1, !tbaa !2450
  %88 = add i64 %60, 9
  store i64 %88, i64* %PC, align 8
  %89 = add i64 %64, 24
  %90 = inttoptr i64 %65 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RBP, align 8, !tbaa !2428
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  %92 = add i64 %60, 10
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %89 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  %95 = add i64 %64, 32
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %51

block_4011fb:                                     ; preds = %block_4011ec
  %96 = add i64 %125, 24
  %97 = add i64 %123, 8
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = add i64 %123, 12
  store i64 %100, i64* %PC, align 8
  store i64 %99, i64* %107, align 8
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, -27
  store i64 %102, i64* %PC, align 8, !tbaa !2428
  br label %block_4011ec

block_4011ec:                                     ; preds = %block_4011fb, %block_4011e0
  %103 = phi i64 [ %102, %block_4011fb ], [ %.pre, %block_4011e0 ]
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -8
  %106 = add i64 %103, 4
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX, align 8, !tbaa !2428
  %109 = add i64 %108, 24
  %110 = add i64 %103, 9
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #10
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %119 = icmp eq i64 %112, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %28, align 1, !tbaa !2448
  %121 = lshr i64 %112, 63
  %122 = trunc i64 %121 to i8
  store i8 %122, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %119, i64 32, i64 15
  %123 = add i64 %103, %.v
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC, align 8
  %125 = load i64, i64* %107, align 8
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  br i1 %119, label %block_40120c, label %block_4011fb
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400e90_make_play(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400e90:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
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
  store i64 32, i64* %RAX, align 8, !tbaa !2428
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  %40 = add i64 %8, -12
  %41 = load i32, i32* %EDI, align 4
  %42 = add i64 %11, 17
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %RCX, align 8
  %45 = load i64, i64* %PC, align 8
  store i64 %44, i64* %RDI, align 8, !tbaa !2428
  %46 = add i64 %45, -2386
  %47 = add i64 %45, 8
  %48 = load i64, i64* %RSP, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %52 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 1, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -24
  %55 = load i64, i64* %RAX, align 8
  %56 = add i64 %52, 6
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RAX, align 8, !tbaa !2428
  %64 = add i64 %58, -32
  %65 = add i64 %60, 8
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %PC, align 8
  store i64 0, i64* bitcast (%game_tree_type* @game_tree to i64*), align 8
  %68 = load i32, i32* %EDX, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RDI, align 8, !tbaa !2428
  store i64 %69, i64* %RSI, align 8, !tbaa !2428
  %70 = add i64 %67, -696
  %71 = add i64 %67, 21
  %72 = load i64, i64* %RSP, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %RSP, align 8, !tbaa !2428
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  %75 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %70, %struct.Memory* %51)
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -16
  %78 = load i64, i64* %RAX, align 8
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -16
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RAX, align 8, !tbaa !2428
  %88 = add i64 %84, 6
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, -1
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RDX, align 8, !tbaa !2428
  %93 = icmp ne i32 %90, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %15, align 1, !tbaa !2432
  %95 = and i32 %91, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #10
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %22, align 1, !tbaa !2446
  %100 = xor i32 %90, 16
  %101 = xor i32 %100, %91
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %27, align 1, !tbaa !2447
  %105 = icmp eq i32 %91, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %30, align 1, !tbaa !2448
  %107 = lshr i32 %91, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %33, align 1, !tbaa !2449
  %109 = lshr i32 %90, 31
  %110 = xor i32 %107, %109
  %111 = xor i32 %107, 1
  %112 = add nuw nsw i32 %110, %111
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %39, align 1, !tbaa !2450
  %115 = add i64 %84, 11
  store i64 %115, i64* %PC, align 8
  store i32 %91, i32* %89, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400edc

block_400edc:                                     ; preds = %block_400fc0, %block_400e90
  %116 = phi i64 [ %.pre, %block_400e90 ], [ %382, %block_400fc0 ]
  %MEMORY.0 = phi %struct.Memory* [ %75, %block_400e90 ], [ %MEMORY.2, %block_400fc0 ]
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -16
  %119 = add i64 %116, 4
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RDI, align 8, !tbaa !2428
  %122 = add i64 %116, -2060
  %123 = add i64 %116, 9
  %124 = load i64, i64* %RSP, align 8, !tbaa !2428
  %125 = add i64 %124, -8
  %126 = inttoptr i64 %125 to i64*
  store i64 %123, i64* %126, align 8
  store i64 %125, i64* %RSP, align 8, !tbaa !2428
  store i64 %122, i64* %PC, align 8, !tbaa !2428
  %127 = tail call %struct.Memory* @sub_4006d0_next_data(%struct.State* nonnull %0, i64 %122, %struct.Memory* %MEMORY.0)
  %128 = load i32, i32* %EAX, align 4
  %129 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %130 = and i32 %128, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #10
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %135 = icmp eq i32 %128, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1, !tbaa !2448
  %137 = lshr i32 %128, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v = select i1 %135, i64 224, i64 9
  %139 = add i64 %129, %.v
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  %140 = load i64, i64* %RBP, align 8
  br i1 %135, label %block_400fc5, label %block_400eee

block_400f33:                                     ; preds = %block_400f00, %block_400f23
  %141 = phi i64 [ %380, %block_400f23 ], [ %413, %block_400f00 ]
  %142 = add i64 %414, -16
  %143 = add i64 %141, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RDI, align 8, !tbaa !2428
  %146 = add i64 %141, -2259
  %147 = add i64 %141, 9
  %148 = load i64, i64* %RSP, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %RSP, align 8, !tbaa !2428
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  %151 = tail call %struct.Memory* @sub_400660_copy_data(%struct.State* nonnull %0, i64 %146, %struct.Memory* %390)
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -8
  %154 = load i64, i64* %PC, align 8
  store i64 %153, i64* %RSI, align 8, !tbaa !2428
  %155 = add i64 %152, -4
  store i64 %155, i64* %RDX, align 8, !tbaa !2428
  %156 = add i64 %152, -32
  %157 = add i64 %154, 12
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDI, align 8, !tbaa !2428
  %160 = add i64 %159, 24
  %161 = add i64 %154, 16
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RDI, align 8, !tbaa !2428
  %164 = add i64 %163, 8
  %165 = load i64, i64* %RAX, align 8
  %166 = add i64 %154, 20
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %164 to i64*
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -16
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %169 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RDI, align 8, !tbaa !2428
  %174 = add i64 %170, -688
  %175 = add i64 %170, 9
  %176 = load i64, i64* %RSP, align 8, !tbaa !2428
  %177 = add i64 %176, -8
  %178 = inttoptr i64 %177 to i64*
  store i64 %175, i64* %178, align 8
  store i64 %177, i64* %RSP, align 8, !tbaa !2428
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  %179 = tail call %struct.Memory* @sub_400ca0_make_list(%struct.State* nonnull %0, i64 %174, %struct.Memory* %151)
  %180 = load i64, i64* %RBP, align 8
  %181 = add i64 %180, -32
  %182 = load i64, i64* %PC, align 8
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %181 to i64*
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %RDX, align 8, !tbaa !2428
  %186 = add i64 %185, 24
  %187 = add i64 %182, 8
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RDX, align 8, !tbaa !2428
  %190 = add i64 %189, 16
  %191 = load i64, i64* %RAX, align 8
  %192 = add i64 %182, 12
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %190 to i64*
  store i64 %191, i64* %193, align 8
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -8
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RCX, align 8, !tbaa !2428
  %201 = add i64 %194, -32
  %202 = add i64 %196, 7
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = add i64 %204, 24
  %206 = add i64 %196, 11
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  %209 = add i64 %196, 13
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %199, i32* %210, align 4
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -32
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RAX, align 8, !tbaa !2428
  %217 = add i64 %216, 24
  %218 = add i64 %213, 8
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = add i64 %220, 24
  %222 = add i64 %213, 16
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  store i64 0, i64* %223, align 8
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -32
  %226 = load i64, i64* %PC, align 8
  %227 = add i64 %226, 4
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %RAX, align 8, !tbaa !2428
  %230 = add i64 %229, 24
  %231 = add i64 %226, 8
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  %234 = add i64 %226, 12
  store i64 %234, i64* %PC, align 8
  store i64 %233, i64* %228, align 8
  %235 = load i64, i64* %RBP, align 8
  %236 = add i64 %235, -4
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, -2
  %242 = icmp ult i32 %240, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %15, align 1, !tbaa !2432
  %244 = and i32 %241, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #10
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %22, align 1, !tbaa !2446
  %249 = xor i32 %241, %240
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %27, align 1, !tbaa !2447
  %253 = icmp eq i32 %241, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %30, align 1, !tbaa !2448
  %255 = lshr i32 %241, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %33, align 1, !tbaa !2449
  %257 = lshr i32 %240, 31
  %258 = xor i32 %255, %257
  %259 = add nuw nsw i32 %258, %257
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %39, align 1, !tbaa !2450
  %.v12 = select i1 %253, i64 10, i64 45
  %262 = add i64 %237, %.v12
  store i64 %262, i64* %PC, align 8, !tbaa !2428
  br i1 %253, label %block_400f98, label %block_400fbb

block_400f98:                                     ; preds = %block_400f33
  %263 = add i64 %235, -16
  %264 = add i64 %262, 4
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  store i64 %266, i64* %RDI, align 8, !tbaa !2428
  %267 = add i64 %262, -2680
  %268 = add i64 %262, 12
  %269 = load i64, i64* %RSP, align 8, !tbaa !2428
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %268, i64* %271, align 8
  store i64 %270, i64* %RSP, align 8, !tbaa !2428
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  %272 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %179)
  %273 = load i64, i64* %PC, align 8
  %274 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RDI, align 8, !tbaa !2428
  %276 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI, align 8, !tbaa !2428
  %278 = add i64 %273, -932
  %279 = add i64 %273, 19
  %280 = load i64, i64* %RSP, align 8, !tbaa !2428
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %RSP, align 8, !tbaa !2428
  store i64 %278, i64* %PC, align 8, !tbaa !2428
  %283 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %278, %struct.Memory* %272)
  %284 = load i64, i64* %RBP, align 8
  %285 = add i64 %284, -16
  %286 = load i64, i64* %RAX, align 8
  %287 = load i64, i64* %PC, align 8
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %285 to i64*
  store i64 %286, i64* %289, align 8
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400fbb

block_400eee:                                     ; preds = %block_400edc
  %290 = add i64 %140, -16
  %291 = add i64 %139, 4
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RDI, align 8, !tbaa !2428
  %294 = add i64 %139, -1678
  %295 = add i64 %139, 9
  %296 = load i64, i64* %RSP, align 8, !tbaa !2428
  %297 = add i64 %296, -8
  %298 = inttoptr i64 %297 to i64*
  store i64 %295, i64* %298, align 8
  store i64 %297, i64* %RSP, align 8, !tbaa !2428
  store i64 %294, i64* %PC, align 8, !tbaa !2428
  %299 = tail call %struct.Memory* @sub_400860_valid_data(%struct.State* nonnull %0, i64 %294, %struct.Memory* %MEMORY.0)
  %300 = load i32, i32* %EAX, align 4
  %301 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %302 = and i32 %300, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #10
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %307 = icmp eq i32 %300, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %30, align 1, !tbaa !2448
  %309 = lshr i32 %300, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v10 = select i1 %307, i64 201, i64 9
  %311 = add i64 %301, %.v10
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br i1 %307, label %block_400fc0, label %block_400f00

block_400fc5:                                     ; preds = %block_400edc
  %312 = add i64 %140, -24
  %313 = add i64 %139, 4
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i64*
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %RAX, align 8, !tbaa !2428
  %316 = add i64 %315, 24
  %317 = add i64 %139, 8
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RAX, align 8, !tbaa !2428
  %320 = add i64 %140, -32
  %321 = add i64 %139, 12
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i64*
  store i64 %319, i64* %322, align 8
  %323 = load i64, i64* %RBP, align 8
  %324 = add i64 %323, -24
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, 4
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %324 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RAX, align 8, !tbaa !2428
  store i64 %328, i64* %RDI, align 8, !tbaa !2428
  %329 = add i64 %325, -2737
  %330 = add i64 %325, 12
  %331 = load i64, i64* %RSP, align 8, !tbaa !2428
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  store i64 %332, i64* %RSP, align 8, !tbaa !2428
  store i64 %329, i64* %PC, align 8, !tbaa !2428
  %334 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -32
  %337 = load i64, i64* %PC, align 8
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %336 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RAX, align 8, !tbaa !2428
  %341 = load i64, i64* %RSP, align 8
  %342 = add i64 %341, 32
  store i64 %342, i64* %RSP, align 8, !tbaa !2428
  %343 = icmp ugt i64 %341, -33
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %15, align 1, !tbaa !2432
  %345 = trunc i64 %342 to i32
  %346 = and i32 %345, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346) #10
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %22, align 1, !tbaa !2446
  %351 = xor i64 %342, %341
  %352 = lshr i64 %351, 4
  %353 = trunc i64 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %27, align 1, !tbaa !2447
  %355 = icmp eq i64 %342, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %30, align 1, !tbaa !2448
  %357 = lshr i64 %342, 63
  %358 = trunc i64 %357 to i8
  store i8 %358, i8* %33, align 1, !tbaa !2449
  %359 = lshr i64 %341, 63
  %360 = xor i64 %357, %359
  %361 = add nuw nsw i64 %360, %357
  %362 = icmp eq i64 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %39, align 1, !tbaa !2450
  %364 = add i64 %337, 9
  store i64 %364, i64* %PC, align 8
  %365 = add i64 %341, 40
  %366 = inttoptr i64 %342 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RBP, align 8, !tbaa !2428
  store i64 %365, i64* %RSP, align 8, !tbaa !2428
  %368 = add i64 %337, 10
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %365 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  %371 = add i64 %341, 48
  store i64 %371, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %334

block_400f23:                                     ; preds = %block_400f00
  %372 = add i64 %414, -32
  %373 = add i64 %413, 4
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = add i64 %375, 24
  %377 = add i64 %413, 8
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX, align 8, !tbaa !2428
  %380 = add i64 %413, 16
  store i64 %380, i64* %PC, align 8
  store i64 %379, i64* bitcast (%game_tree_type* @game_tree to i64*), align 8
  br label %block_400f33

block_400fc0:                                     ; preds = %block_400fbb, %block_400eee
  %381 = phi i64 [ %311, %block_400eee ], [ %384, %block_400fbb ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_400eee ], [ %MEMORY.3, %block_400fbb ]
  %382 = add i64 %381, -228
  store i64 %382, i64* %PC, align 8, !tbaa !2428
  br label %block_400edc

block_400fbb:                                     ; preds = %block_400f33, %block_400f98
  %383 = phi i64 [ %262, %block_400f33 ], [ %.pre9, %block_400f98 ]
  %MEMORY.3 = phi %struct.Memory* [ %179, %block_400f33 ], [ %283, %block_400f98 ]
  %384 = add i64 %383, 5
  store i64 %384, i64* %PC, align 8, !tbaa !2428
  br label %block_400fc0

block_400f00:                                     ; preds = %block_400eee
  store i64 32, i64* %RAX, align 8, !tbaa !2428
  store i64 32, i64* %RDI, align 8, !tbaa !2428
  %385 = add i64 %311, -2480
  %386 = add i64 %311, 12
  %387 = load i64, i64* %RSP, align 8, !tbaa !2428
  %388 = add i64 %387, -8
  %389 = inttoptr i64 %388 to i64*
  store i64 %386, i64* %389, align 8
  store i64 %388, i64* %RSP, align 8, !tbaa !2428
  store i64 %385, i64* %PC, align 8, !tbaa !2428
  %390 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %391 = load i64, i64* %RBP, align 8
  %392 = add i64 %391, -32
  %393 = load i64, i64* %PC, align 8
  %394 = add i64 %393, 4
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %392 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RDI, align 8, !tbaa !2428
  %397 = add i64 %396, 24
  %398 = load i64, i64* %RAX, align 8
  %399 = add i64 %393, 8
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %397 to i64*
  store i64 %398, i64* %400, align 8
  %401 = load i64, i64* %PC, align 8
  %402 = load i64, i64* bitcast (%game_tree_type* @game_tree to i64*), align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %403 = trunc i64 %402 to i32
  %404 = and i32 %403, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404) #10
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %409 = icmp eq i64 %402, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %30, align 1, !tbaa !2448
  %411 = lshr i64 %402, 63
  %412 = trunc i64 %411 to i8
  store i8 %412, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v11 = select i1 %409, i64 15, i64 31
  %413 = add i64 %401, %.v11
  store i64 %413, i64* %PC, align 8, !tbaa !2428
  %414 = load i64, i64* %RBP, align 8
  br i1 %409, label %block_400f23, label %block_400f33
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401730___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_401730:
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #10
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
  %63 = add i64 %38, -4699
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4004f0__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401786, label %block_401766

block_401786.loopexit:                            ; preds = %block_401770
  br label %block_401786

block_401786:                                     ; preds = %block_401786.loopexit, %block_401730
  %81 = phi i64 [ %80, %block_401730 ], [ %179, %block_401786.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401730 ], [ %149, %block_401786.loopexit ]
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

block_401766:                                     ; preds = %block_401730
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401770

block_401770:                                     ; preds = %block_401770, %block_401766
  %134 = phi i64 [ 0, %block_401766 ], [ %152, %block_401770 ]
  %135 = phi i64 [ %133, %block_401766 ], [ %179, %block_401770 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401766 ], [ %149, %block_401770 ]
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
  br i1 %169, label %block_401786.loopexit, label %block_401770
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4009f0_show_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4009f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -12
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 7
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a03

block_400a59:                                     ; preds = %block_400a4c, %block_400a13
  %48 = phi i64 [ %136, %block_400a13 ], [ %.pre2, %block_400a4c ]
  %MEMORY.0 = phi %struct.Memory* [ %96, %block_400a13 ], [ %143, %block_400a4c ]
  %49 = add i64 %48, -86
  store i64 %49, i64* %PC, align 8, !tbaa !2428
  br label %block_400a03

block_400a13:                                     ; preds = %block_400a03
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  %50 = add i64 %182, -8
  %51 = add i64 %213, 14
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %50 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = add i64 %213, 17
  store i64 %54, i64* %PC, align 8
  %55 = load i32, i32* %185, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RCX, align 8, !tbaa !2428
  %57 = add i32 %55, 1
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RDX, align 8, !tbaa !2428
  %59 = icmp eq i32 %55, -1
  %60 = icmp eq i32 %57, 0
  %61 = or i1 %59, %60
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %14, align 1, !tbaa !2432
  %63 = and i32 %57, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #10
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %21, align 1, !tbaa !2446
  %68 = xor i32 %57, %55
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %26, align 1, !tbaa !2447
  %72 = zext i1 %60 to i8
  store i8 %72, i8* %29, align 1, !tbaa !2448
  %73 = lshr i32 %57, 31
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %32, align 1, !tbaa !2449
  %75 = lshr i32 %55, 31
  %76 = xor i32 %73, %75
  %77 = add nuw nsw i32 %76, %73
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %38, align 1, !tbaa !2450
  %80 = add i64 %213, 25
  store i64 %80, i64* %PC, align 8
  store i32 %57, i32* %185, align 4
  %81 = load i32, i32* %ECX, align 4
  %82 = load i64, i64* %PC, align 8
  %83 = sext i32 %81 to i64
  store i64 %83, i64* %RSI, align 8, !tbaa !2428
  %84 = load i64, i64* %RAX, align 8
  %85 = shl nsw i64 %83, 2
  %86 = add i64 %84, %85
  %87 = add i64 %82, 6
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %91 = add i64 %82, -1260
  %92 = add i64 %82, 13
  %93 = load i64, i64* %RSP, align 8, !tbaa !2428
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 %92, i64* %95, align 8
  store i64 %94, i64* %RSP, align 8, !tbaa !2428
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  %96 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -12
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX, align 8, !tbaa !2428
  %104 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %105 = sub i32 %102, %104
  %106 = icmp ult i32 %102, %104
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1, !tbaa !2432
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #10
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1, !tbaa !2446
  %113 = xor i32 %104, %102
  %114 = xor i32 %113, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1, !tbaa !2447
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1, !tbaa !2448
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1, !tbaa !2449
  %122 = lshr i32 %102, 31
  %123 = lshr i32 %104, 31
  %124 = xor i32 %123, %122
  %125 = xor i32 %120, %122
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %38, align 1, !tbaa !2450
  %129 = add i64 %97, -16
  %130 = load i32, i32* %EAX, align 4
  %131 = add i64 %99, 13
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %132, align 4
  %133 = load i64, i64* %PC, align 8
  %134 = load i8, i8* %29, align 1, !tbaa !2448
  %135 = icmp ne i8 %134, 0
  %.v3 = select i1 %135, i64 19, i64 6
  %136 = add i64 %133, %.v3
  store i64 %136, i64* %PC, align 8, !tbaa !2428
  %137 = icmp eq i8 %134, 1
  br i1 %137, label %block_400a59, label %block_400a4c

block_400a4c:                                     ; preds = %block_400a13
  store i64 44, i64* %RDI, align 8, !tbaa !2428
  %138 = add i64 %136, -1308
  %139 = add i64 %136, 10
  %140 = load i64, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  store i64 %138, i64* %PC, align 8, !tbaa !2428
  %143 = tail call fastcc %struct.Memory* @ext_6020a8_putchar(%struct.State* nonnull %0, %struct.Memory* %96)
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -20
  %146 = load i32, i32* %EAX, align 4
  %147 = load i64, i64* %PC, align 8
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %149, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400a59

block_400a5e:                                     ; preds = %block_400a03
  %150 = load i64, i64* %RSP, align 8
  %151 = add i64 %150, 32
  store i64 %151, i64* %RSP, align 8, !tbaa !2428
  %152 = icmp ugt i64 %150, -33
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %14, align 1, !tbaa !2432
  %154 = trunc i64 %151 to i32
  %155 = and i32 %154, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #10
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1, !tbaa !2446
  %160 = xor i64 %151, %150
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1, !tbaa !2447
  %164 = icmp eq i64 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1, !tbaa !2448
  %166 = lshr i64 %151, 63
  %167 = trunc i64 %166 to i8
  store i8 %167, i8* %32, align 1, !tbaa !2449
  %168 = lshr i64 %150, 63
  %169 = xor i64 %166, %168
  %170 = add nuw nsw i64 %169, %166
  %171 = icmp eq i64 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %38, align 1, !tbaa !2450
  %173 = add i64 %213, 5
  store i64 %173, i64* %PC, align 8
  %174 = add i64 %150, 40
  %175 = inttoptr i64 %151 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RBP, align 8, !tbaa !2428
  store i64 %174, i64* %RSP, align 8, !tbaa !2428
  %177 = add i64 %213, 6
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %174 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  %180 = add i64 %150, 48
  store i64 %180, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400a03:                                     ; preds = %block_400a59, %block_4009f0
  %181 = phi i64 [ %.pre, %block_4009f0 ], [ %49, %block_400a59 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4009f0 ], [ %MEMORY.0, %block_400a59 ]
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -12
  %184 = add i64 %181, 3
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX, align 8, !tbaa !2428
  %188 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %189 = sub i32 %186, %188
  %190 = icmp ult i32 %186, %188
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1, !tbaa !2432
  %192 = and i32 %189, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192) #10
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1, !tbaa !2446
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
  %.v = select i1 %202, i64 91, i64 16
  %213 = add i64 %181, %.v
  store i64 %213, i64* %PC, align 8, !tbaa !2428
  br i1 %202, label %block_400a5e, label %block_400a13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006d0_next_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4006d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  store i64 %9, i64* %7, align 8, !tbaa !2428
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -16
  %13 = load i64, i64* %RDI, align 8
  %14 = add i64 %11, 7
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -12
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 7
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i32*
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 7
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006e6

block_400731:                                     ; preds = %block_400719
  %32 = add i64 %223, 15
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %230 to i32*
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -12
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %35 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %RDX, align 8, !tbaa !2428
  %42 = icmp eq i32 %39, -1
  %43 = icmp eq i32 %40, 0
  %44 = or i1 %42, %43
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %26, align 1, !tbaa !2432
  %46 = and i32 %40, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #10
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  store i8 %50, i8* %27, align 1, !tbaa !2446
  %51 = xor i32 %40, %39
  %52 = lshr i32 %51, 4
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, i8* %31, align 1, !tbaa !2447
  %55 = zext i1 %43 to i8
  store i8 %55, i8* %28, align 1, !tbaa !2448
  %56 = lshr i32 %40, 31
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %29, align 1, !tbaa !2449
  %58 = lshr i32 %39, 31
  %59 = xor i32 %56, %58
  %60 = add nuw nsw i32 %59, %56
  %61 = icmp eq i32 %60, 2
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %30, align 1, !tbaa !2450
  %63 = add i64 %36, 9
  store i64 %63, i64* %PC, align 8
  store i32 %40, i32* %38, align 4
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 29
  store i64 %65, i64* %PC, align 8, !tbaa !2428
  br label %block_400766

block_40074e:                                     ; preds = %block_400719
  %66 = add i64 %223, 11
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %230 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, 1
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %RDX, align 8, !tbaa !2428
  %71 = icmp eq i32 %68, -1
  %72 = icmp eq i32 %69, 0
  %73 = or i1 %71, %72
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %26, align 1, !tbaa !2432
  %75 = and i32 %69, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75) #10
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %27, align 1, !tbaa !2446
  %80 = xor i32 %69, %68
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %31, align 1, !tbaa !2447
  %84 = zext i1 %72 to i8
  store i8 %84, i8* %28, align 1, !tbaa !2448
  %85 = lshr i32 %69, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %29, align 1, !tbaa !2449
  %87 = lshr i32 %68, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %85
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %30, align 1, !tbaa !2450
  %92 = add i64 %223, 17
  store i64 %92, i64* %PC, align 8
  store i32 %69, i32* %67, align 4
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -16
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 1, i32* %97, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400766

block_4006fd:                                     ; preds = %block_4006e6
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -16
  %100 = add i64 %181, 4
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = xor i64 %104, 255
  %106 = trunc i64 %105 to i8
  store i8 %106, i8* %AL, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2432
  %107 = trunc i64 %105 to i32
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #10
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %27, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2448
  store i8 1, i8* %29, align 1, !tbaa !2449
  store i8 0, i8* %30, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %112 = add i64 %98, -17
  %113 = add i64 %181, 12
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i8*
  store i8 %106, i8* %114, align 1
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400709

block_400714:                                     ; preds = %block_400709
  %115 = add i64 %130, -16
  %116 = add i64 %142, 90
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = add i64 %142, 91
  store i64 %120, i64* %PC, align 8
  %121 = load i64, i64* %7, align 8, !tbaa !2428
  %122 = add i64 %121, 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RBP, align 8, !tbaa !2428
  store i64 %122, i64* %7, align 8, !tbaa !2428
  %125 = add i64 %142, 92
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %122 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %PC, align 8, !tbaa !2428
  %128 = add i64 %121, 16
  store i64 %128, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400709:                                     ; preds = %block_4006e6, %block_4006fd
  %129 = phi i64 [ %181, %block_4006e6 ], [ %.pre3, %block_4006fd ]
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -17
  %132 = add i64 %129, 3
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i8*
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %AL, align 1, !tbaa !2451
  %135 = and i8 %134, 1
  store i8 0, i8* %26, align 1, !tbaa !2432
  %136 = zext i8 %135 to i32
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #10
  %138 = trunc i32 %137 to i8
  %139 = xor i8 %138, 1
  store i8 %139, i8* %27, align 1, !tbaa !2446
  %140 = xor i8 %135, 1
  store i8 %140, i8* %28, align 1, !tbaa !2448
  store i8 0, i8* %29, align 1, !tbaa !2449
  store i8 0, i8* %30, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %141 = icmp eq i8 %140, 0
  %.v = select i1 %141, i64 16, i64 11
  %142 = add i64 %129, %.v
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  br i1 %141, label %block_400719, label %block_400714

block_4006e6:                                     ; preds = %block_400766, %block_4006d0
  %143 = phi i64 [ %232, %block_400766 ], [ %.pre, %block_4006d0 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %26, align 1, !tbaa !2432
  store i8 1, i8* %27, align 1, !tbaa !2446
  store i8 1, i8* %28, align 1, !tbaa !2448
  store i8 0, i8* %29, align 1, !tbaa !2449
  store i8 0, i8* %30, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -12
  %146 = add i64 %143, 7
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %151 = sub i32 %148, %150
  %152 = icmp ult i32 %148, %150
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %26, align 1, !tbaa !2432
  %154 = and i32 %151, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #10
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %27, align 1, !tbaa !2446
  %159 = xor i32 %150, %148
  %160 = xor i32 %159, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %31, align 1, !tbaa !2447
  %164 = icmp eq i32 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %28, align 1, !tbaa !2448
  %166 = lshr i32 %151, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %29, align 1, !tbaa !2449
  %168 = lshr i32 %148, 31
  %169 = lshr i32 %150, 31
  %170 = xor i32 %169, %168
  %171 = xor i32 %166, %168
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %30, align 1, !tbaa !2450
  %175 = add i64 %144, -17
  %176 = add i64 %143, 17
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to i8*
  store i8 0, i8* %177, align 1
  %178 = load i64, i64* %PC, align 8
  %179 = load i8, i8* %28, align 1, !tbaa !2448
  %180 = icmp ne i8 %179, 0
  %.v7 = select i1 %180, i64 18, i64 6
  %181 = add i64 %178, %.v7
  store i64 %181, i64* %PC, align 8, !tbaa !2428
  %182 = icmp eq i8 %179, 1
  br i1 %182, label %block_400709, label %block_4006fd

block_400719:                                     ; preds = %block_400709
  %183 = add i64 %130, -8
  %184 = add i64 %142, 4
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = add i64 %130, -12
  %188 = add i64 %142, 8
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %RCX, align 8, !tbaa !2428
  %192 = shl nsw i64 %191, 2
  %193 = add i64 %192, %186
  %194 = add i64 %142, 11
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RDX, align 8, !tbaa !2428
  %198 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %199 = sub i32 %196, %198
  %200 = icmp ult i32 %196, %198
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %26, align 1, !tbaa !2432
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202) #10
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %27, align 1, !tbaa !2446
  %207 = xor i32 %198, %196
  %208 = xor i32 %207, %199
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  store i8 %211, i8* %31, align 1, !tbaa !2447
  %212 = icmp eq i32 %199, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %28, align 1, !tbaa !2448
  %214 = lshr i32 %199, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %29, align 1, !tbaa !2449
  %216 = lshr i32 %196, 31
  %217 = lshr i32 %198, 31
  %218 = xor i32 %217, %216
  %219 = xor i32 %214, %216
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %30, align 1, !tbaa !2450
  %.v5 = select i1 %212, i64 24, i64 53
  %223 = add i64 %142, %.v5
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC, align 8
  %225 = load i64, i64* %185, align 8
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = add i64 %223, 8
  store i64 %226, i64* %PC, align 8
  %227 = load i32, i32* %189, align 4
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %RCX, align 8, !tbaa !2428
  %229 = shl nsw i64 %228, 2
  %230 = add i64 %229, %225
  br i1 %212, label %block_400731, label %block_40074e

block_400766:                                     ; preds = %block_40074e, %block_400731
  %231 = phi i64 [ %.pre4, %block_40074e ], [ %65, %block_400731 ]
  %232 = add i64 %231, -128
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br label %block_4006e6
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401230_where(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #8 {
block_401230:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
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
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI, align 8
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_401240

block_401268:                                     ; preds = %block_401240
  %50 = add i64 %131, 4
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %133 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RAX, align 8, !tbaa !2428
  %53 = add i64 %52, 24
  %54 = add i64 %131, 8
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  %57 = add i64 %131, 12
  store i64 %57, i64* %PC, align 8
  store i64 %56, i64* %51, align 8
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, -52
  store i64 %59, i64* %PC, align 8, !tbaa !2428
  br label %block_401240

block_401263:                                     ; preds = %block_401240
  %60 = add i64 %131, 26
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %133 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %62, 16
  %64 = add i64 %131, 30
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RAX, align 8, !tbaa !2428
  %67 = load i64, i64* %RSP, align 8
  %68 = add i64 %67, 16
  store i64 %68, i64* %RSP, align 8, !tbaa !2428
  %69 = icmp ugt i64 %67, -17
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1, !tbaa !2432
  %71 = trunc i64 %68 to i32
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #10
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %21, align 1, !tbaa !2446
  %77 = xor i64 %67, 16
  %78 = xor i64 %77, %68
  %79 = lshr i64 %78, 4
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 1
  store i8 %81, i8* %27, align 1, !tbaa !2447
  %82 = icmp eq i64 %68, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %30, align 1, !tbaa !2448
  %84 = lshr i64 %68, 63
  %85 = trunc i64 %84 to i8
  store i8 %85, i8* %33, align 1, !tbaa !2449
  %86 = lshr i64 %67, 63
  %87 = xor i64 %84, %86
  %88 = add nuw nsw i64 %87, %84
  %89 = icmp eq i64 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %39, align 1, !tbaa !2450
  %91 = add i64 %131, 35
  store i64 %91, i64* %PC, align 8
  %92 = add i64 %67, 24
  %93 = inttoptr i64 %68 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RBP, align 8, !tbaa !2428
  store i64 %92, i64* %RSP, align 8, !tbaa !2428
  %95 = add i64 %131, 36
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %92 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %PC, align 8, !tbaa !2428
  %98 = add i64 %67, 32
  store i64 %98, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401240:                                     ; preds = %block_401268, %block_401230
  %99 = phi i64 [ %59, %block_401268 ], [ %.pre, %block_401230 ]
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -16
  %102 = add i64 %99, 4
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RAX, align 8, !tbaa !2428
  %105 = add i64 %104, 8
  %106 = add i64 %99, 8
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RDI, align 8, !tbaa !2428
  %109 = add i64 %100, -8
  %110 = add i64 %99, 12
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RSI, align 8, !tbaa !2428
  %113 = add i64 %99, -2656
  %114 = add i64 %99, 17
  %115 = load i64, i64* %RSP, align 8, !tbaa !2428
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %RSP, align 8, !tbaa !2428
  store i64 %113, i64* %PC, align 8, !tbaa !2428
  %118 = tail call %struct.Memory* @sub_4007e0_equal_data(%struct.State* nonnull %0, i64 %113, %struct.Memory* %2)
  %119 = load i32, i32* %EAX, align 4
  %120 = load i64, i64* %PC, align 8
  %121 = icmp ne i32 %119, 0
  %122 = zext i1 %121 to i8
  %123 = xor i8 %122, -1
  store i8 %123, i8* %CL, align 1, !tbaa !2451
  %124 = and i8 %123, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %125 = zext i8 %124 to i32
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125) #10
  %127 = trunc i32 %126 to i8
  %128 = xor i8 %127, 1
  store i8 %128, i8* %21, align 1, !tbaa !2446
  %129 = xor i8 %124, 1
  store i8 %129, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %130 = icmp eq i8 %129, 0
  %.v = select i1 %130, i64 23, i64 18
  %131 = add i64 %120, %.v
  store i64 %131, i64* %PC, align 8, !tbaa !2428
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -16
  br i1 %130, label %block_401268, label %block_401263
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004f0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4004f0:
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
  br i1 %18, label %block_400502, label %block_400500

block_400500:                                     ; preds = %block_4004f0
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400502

block_400502:                                     ; preds = %block_400500, %block_4004f0
  %27 = phi i64 [ %22, %block_4004f0 ], [ %.pre1, %block_400500 ]
  %28 = phi i64 [ %4, %block_4004f0 ], [ %.pre, %block_400500 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004f0 ], [ %26, %block_400500 ]
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
define %struct.Memory* @sub_4008e0_dump_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4008e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %PC, align 8
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %9 = add i64 %5, -24
  store i64 %9, i64* %RSP, align 8, !tbaa !2428
  %10 = icmp ult i64 %6, 16
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1, !tbaa !2432
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #10
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = xor i64 %6, 16
  %21 = xor i64 %20, %9
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %9, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %6, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %5, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %8, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -8
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 5
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i64*
  %47 = load i64, i64* %46, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #10
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %54 = icmp eq i64 %47, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %28, align 1, !tbaa !2448
  %56 = lshr i64 %47, 63
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %54, i64 51, i64 11
  %58 = add i64 %44, %.v
  store i64 %58, i64* %PC, align 8, !tbaa !2428
  br i1 %54, label %block_40091f, label %block_4008f7

block_40091f:                                     ; preds = %block_4008f7, %block_4008e0
  %59 = phi i64 [ %58, %block_4008e0 ], [ %.pre, %block_4008f7 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4008e0 ], [ %130, %block_4008f7 ]
  %60 = load i64, i64* %RSP, align 8
  %61 = add i64 %60, 16
  store i64 %61, i64* %RSP, align 8, !tbaa !2428
  %62 = icmp ugt i64 %60, -17
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %12, align 1, !tbaa !2432
  %64 = trunc i64 %61 to i32
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #10
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %19, align 1, !tbaa !2446
  %70 = xor i64 %60, 16
  %71 = xor i64 %70, %61
  %72 = lshr i64 %71, 4
  %73 = trunc i64 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %25, align 1, !tbaa !2447
  %75 = icmp eq i64 %61, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %28, align 1, !tbaa !2448
  %77 = lshr i64 %61, 63
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %31, align 1, !tbaa !2449
  %79 = lshr i64 %60, 63
  %80 = xor i64 %77, %79
  %81 = add nuw nsw i64 %80, %77
  %82 = icmp eq i64 %81, 2
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %37, align 1, !tbaa !2450
  %84 = add i64 %59, 5
  store i64 %84, i64* %PC, align 8
  %85 = add i64 %60, 24
  %86 = inttoptr i64 %61 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %RSP, align 8, !tbaa !2428
  %88 = add i64 %59, 6
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  %91 = add i64 %60, 32
  store i64 %91, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4008f7:                                     ; preds = %block_4008e0
  %92 = add i64 %58, 4
  store i64 %92, i64* %PC, align 8
  %93 = load i64, i64* %46, align 8
  store i64 %93, i64* %RAX, align 8, !tbaa !2428
  %94 = add i64 %93, 8
  %95 = add i64 %58, 8
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RDI, align 8, !tbaa !2428
  %98 = add i64 %58, -23
  %99 = add i64 %58, 13
  %100 = load i64, i64* %RSP, align 8, !tbaa !2428
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %RSP, align 8, !tbaa !2428
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  %103 = tail call %struct.Memory* @sub_4008e0_dump_list(%struct.State* nonnull %0, i64 %98, %struct.Memory* %2)
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = add i64 %106, 7
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  store i64 %112, i64* %RDI, align 8, !tbaa !2428
  %113 = add i64 %106, -996
  %114 = add i64 %106, 15
  %115 = load i64, i64* %RSP, align 8, !tbaa !2428
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %RSP, align 8, !tbaa !2428
  store i64 %113, i64* %PC, align 8, !tbaa !2428
  %118 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %103)
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -8
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RAX, align 8, !tbaa !2428
  store i64 %124, i64* %RDI, align 8, !tbaa !2428
  %125 = add i64 %121, -1011
  %126 = add i64 %121, 12
  %127 = load i64, i64* %RSP, align 8, !tbaa !2428
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %RSP, align 8, !tbaa !2428
  store i64 %125, i64* %PC, align 8, !tbaa !2428
  %130 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %118)
  %.pre = load i64, i64* %PC, align 8
  br label %block_40091f
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401300_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_401300:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %13 = add i64 %9, -184
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %20 = add i64 %9, -12
  %21 = add i64 %12, 17
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %20 to i32*
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %PC, align 8
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)), i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %24 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)) to i32), i32 255)) #10
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %15, align 1, !tbaa !2446
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)) to i32), i32 0) to i8), i8* %17, align 1, !tbaa !2448
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)) to i32), i32 31) to i8), i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)) to i8), i8* %CL, align 1, !tbaa !2451
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)) to i8), i8* %AL, align 1, !tbaa !2451
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -65
  %30 = add i64 %23, 16
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %29 to i8*
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 54), i64 4294967295)) to i8), i8* %31, align 1
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, -3554
  %34 = add i64 %32, 5
  %35 = load i64, i64* %RSP, align 8, !tbaa !2428
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %34, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  %38 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %39 = load i64, i64* %PC, align 8
  store i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 88), i64 4294967295), i64* %RDX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 88), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -65
  %42 = add i64 %39, 10
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i8*
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %CL, align 1, !tbaa !2451
  %45 = add i64 %40, -72
  %46 = load i32, i32* %EAX, align 4
  %47 = add i64 %39, 13
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %48, align 4
  %49 = load i8, i8* %CL, align 1
  %50 = load i64, i64* %PC, align 8
  store i8 %49, i8* %AL, align 1, !tbaa !2451
  %51 = add i64 %50, -3572
  %52 = add i64 %50, 7
  %53 = load i64, i64* %RSP, align 8, !tbaa !2428
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  store i64 %51, i64* %PC, align 8, !tbaa !2428
  %56 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %38)
  %57 = load i64, i64* %PC, align 8
  store i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 113), i64 4294967295), i64* %RDX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 113), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -65
  %60 = add i64 %57, 10
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i8*
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %CL, align 1, !tbaa !2451
  %63 = add i64 %58, -76
  %64 = load i32, i32* %EAX, align 4
  %65 = add i64 %57, 13
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %66, align 4
  %67 = load i8, i8* %CL, align 1
  %68 = load i64, i64* %PC, align 8
  store i8 %67, i8* %AL, align 1, !tbaa !2451
  %69 = add i64 %68, -3592
  %70 = add i64 %68, 7
  %71 = load i64, i64* %RSP, align 8, !tbaa !2428
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %RSP, align 8, !tbaa !2428
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  %74 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %56)
  %75 = load i64, i64* %PC, align 8
  store i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 141), i64 4294967295), i64* %RDX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 141), i64 4294967295) to i32) to i64), i64* %RDI, align 8, !tbaa !2428
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -65
  %78 = add i64 %75, 10
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i8*
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %CL, align 1, !tbaa !2451
  %81 = add i64 %76, -80
  %82 = load i32, i32* %EAX, align 4
  %83 = add i64 %75, 13
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %84, align 4
  %85 = load i8, i8* %CL, align 1
  %86 = load i64, i64* %PC, align 8
  store i8 %85, i8* %AL, align 1, !tbaa !2451
  %87 = add i64 %86, -3612
  %88 = add i64 %86, 7
  %89 = load i64, i64* %RSP, align 8, !tbaa !2428
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 %88, i64* %91, align 8
  store i64 %90, i64* %RSP, align 8, !tbaa !2428
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  %92 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %74)
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -8
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 2, i32* %97, align 4
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -8
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RDX, align 8, !tbaa !2428
  %105 = add i32 %103, -1
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RSI, align 8, !tbaa !2428
  %107 = icmp eq i32 %103, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1, !tbaa !2432
  %109 = and i32 %105, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #10
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %15, align 1, !tbaa !2446
  %114 = xor i32 %105, %103
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %16, align 1, !tbaa !2447
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %17, align 1, !tbaa !2448
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %18, align 1, !tbaa !2449
  %122 = lshr i32 %103, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %19, align 1, !tbaa !2450
  %127 = add i64 %98, -84
  %128 = load i32, i32* %EAX, align 4
  %129 = add i64 %100, 11
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %130, align 4
  %131 = load i64, i64* %RBP, align 8
  %132 = add i64 %131, -88
  %133 = load i32, i32* %EDX, align 4
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %136, align 4
  %137 = load i64, i64* %RBP, align 8
  %138 = add i64 %137, -92
  %139 = load i32, i32* %ESI, align 4
  %140 = load i64, i64* %PC, align 8
  %141 = add i64 %140, 3
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %142, align 4
  %143 = load i64, i64* %PC, align 8
  %144 = load i8, i8* %17, align 1, !tbaa !2448
  %145 = icmp ne i8 %144, 0
  %.v32 = select i1 %145, i64 51, i64 6
  %146 = add i64 %143, %.v32
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  %147 = icmp eq i8 %144, 1
  br i1 %147, label %block_4013ae, label %block_401381

block_4016fd:                                     ; preds = %block_4016e3, %block_4016f0
  %148 = phi i64 [ %740, %block_4016e3 ], [ %.pre17, %block_4016f0 ]
  %149 = phi i64 [ %497, %block_4016e3 ], [ %.pre16, %block_4016f0 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4016e3 ], [ %172, %block_4016f0 ]
  %150 = add i64 %149, -64
  %151 = add i64 %148, 4
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = add i64 %153, 24
  %155 = add i64 %148, 8
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RAX, align 8, !tbaa !2428
  %158 = add i64 %148, 12
  store i64 %158, i64* %PC, align 8
  store i64 %157, i64* %152, align 8
  %159 = load i64, i64* %PC, align 8
  %160 = add i64 %159, -49
  store i64 %160, i64* %PC, align 8, !tbaa !2428
  br label %block_4016d8

block_4016f0:                                     ; preds = %block_4016e3
  %161 = add i64 %740, 4
  store i64 %161, i64* %PC, align 8
  %162 = load i64, i64* %500, align 8
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = add i64 %162, 8
  %164 = add i64 %740, 8
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RDI, align 8, !tbaa !2428
  %167 = add i64 %740, -3200
  %168 = add i64 %740, 13
  %169 = load i64, i64* %RSP, align 8, !tbaa !2428
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %RSP, align 8, !tbaa !2428
  store i64 %167, i64* %PC, align 8, !tbaa !2428
  %172 = tail call %struct.Memory* @sub_400a70_show_move(%struct.State* nonnull %0, i64 %167, %struct.Memory* %MEMORY.2)
  %.pre16 = load i64, i64* %RBP, align 8
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_4016fd

block_401592:                                     ; preds = %block_401587
  %173 = add i64 %757, 4
  store i64 %173, i64* %PC, align 8
  %174 = load i64, i64* %745, align 8
  store i64 %174, i64* %RDI, align 8, !tbaa !2428
  %175 = add i64 %742, -56
  %176 = add i64 %757, 8
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RSI, align 8, !tbaa !2428
  %179 = add i64 %757, -866
  %180 = add i64 %757, 13
  %181 = load i64, i64* %RSP, align 8, !tbaa !2428
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %180, i64* %183, align 8
  store i64 %182, i64* %RSP, align 8, !tbaa !2428
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  %184 = tail call %struct.Memory* @sub_401230_where(%struct.State* nonnull %0, i64 %179, %struct.Memory* %MEMORY.4)
  %185 = load i64, i64* %RAX, align 8
  %186 = load i64, i64* %PC, align 8
  store i64 %185, i64* %RDI, align 8, !tbaa !2428
  %187 = add i64 %186, -1103
  %188 = add i64 %186, 8
  %189 = load i64, i64* %RSP, align 8, !tbaa !2428
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %RSP, align 8, !tbaa !2428
  store i64 %187, i64* %PC, align 8, !tbaa !2428
  %192 = tail call %struct.Memory* @sub_401150_get_good_move(%struct.State* nonnull %0, i64 %187, %struct.Memory* %184)
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -48
  %195 = load i64, i64* %RAX, align 8
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198, align 8
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -48
  %201 = load i64, i64* %PC, align 8
  %202 = add i64 %201, 5
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %200 to i64*
  %204 = load i64, i64* %203, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %205 = trunc i64 %204 to i32
  %206 = and i32 %205, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206) #10
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %211 = icmp eq i64 %204, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %17, align 1, !tbaa !2448
  %213 = lshr i64 %204, 63
  %214 = trunc i64 %213 to i8
  store i8 %214, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v26 = select i1 %211, i64 84, i64 11
  %215 = add i64 %201, %.v26
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  br i1 %211, label %block_4015ff, label %block_4015b6

block_40143e:                                     ; preds = %block_4013ae, %block_40144e
  %216 = phi i32 [ %.pre22, %block_4013ae ], [ %386, %block_40144e ]
  %217 = phi i64 [ %.pre21, %block_4013ae ], [ %409, %block_40144e ]
  %MEMORY.1 = phi %struct.Memory* [ %935, %block_4013ae ], [ %383, %block_40144e ]
  %218 = zext i32 %216 to i64
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -16
  %221 = add i64 %217, 10
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = sub i32 %216, %223
  %225 = icmp ult i32 %216, %223
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1, !tbaa !2432
  %227 = and i32 %224, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #10
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %15, align 1, !tbaa !2446
  %232 = xor i32 %223, %216
  %233 = xor i32 %232, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %16, align 1, !tbaa !2447
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %17, align 1, !tbaa !2448
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %18, align 1, !tbaa !2449
  %241 = lshr i32 %216, 31
  %242 = lshr i32 %223, 31
  %243 = xor i32 %242, %241
  %244 = xor i32 %239, %241
  %245 = add nuw nsw i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %19, align 1, !tbaa !2450
  %248 = icmp ne i8 %240, 0
  %249 = xor i1 %248, %246
  %.demorgan = or i1 %237, %249
  %.v27 = select i1 %.demorgan, i64 16, i64 212
  %250 = add i64 %217, %.v27
  store i64 %250, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40144e, label %block_401512

block_40144e:                                     ; preds = %block_40143e
  store i64 %218, i64* %RDI, align 8, !tbaa !2428
  %251 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RSI, align 8, !tbaa !2428
  %253 = add i64 %250, -2126
  %254 = add i64 %250, 19
  %255 = load i64, i64* %RSP, align 8, !tbaa !2428
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %RSP, align 8, !tbaa !2428
  store i64 %253, i64* %PC, align 8, !tbaa !2428
  %258 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %253, %struct.Memory* %MEMORY.1)
  %259 = load i64, i64* %RAX, align 8
  %260 = load i64, i64* %PC, align 8
  store i64 %259, i64* %RDI, align 8, !tbaa !2428
  %261 = add i64 %260, -1137
  %262 = add i64 %260, 8
  %263 = load i64, i64* %RSP, align 8, !tbaa !2428
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265, align 8
  store i64 %264, i64* %RSP, align 8, !tbaa !2428
  store i64 %261, i64* %PC, align 8, !tbaa !2428
  %266 = tail call %struct.Memory* @sub_400ff0_make_wanted(%struct.State* nonnull %0, i64 %261, %struct.Memory* %258)
  %267 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %268 = add i64 %267, -1497
  %269 = add i64 %267, 7
  %270 = load i64, i64* %RSP, align 8, !tbaa !2428
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 %269, i64* %272, align 8
  store i64 %271, i64* %RSP, align 8, !tbaa !2428
  store i64 %268, i64* %PC, align 8, !tbaa !2428
  %273 = tail call %struct.Memory* @sub_400e90_make_play(%struct.State* nonnull %0, i64 %268, %struct.Memory* %266)
  %274 = load i64, i64* %RBP, align 8
  %275 = add i64 %274, -56
  %276 = load i64, i64* %RAX, align 8
  %277 = load i64, i64* %PC, align 8
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %275 to i64*
  store i64 %276, i64* %279, align 8
  %280 = load i64, i64* %RBP, align 8
  %281 = add i64 %280, -56
  %282 = load i64, i64* %PC, align 8
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %281 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RDI, align 8, !tbaa !2428
  %286 = add i64 %282, -660
  %287 = add i64 %282, 9
  %288 = load i64, i64* %RSP, align 8, !tbaa !2428
  %289 = add i64 %288, -8
  %290 = inttoptr i64 %289 to i64*
  store i64 %287, i64* %290, align 8
  store i64 %289, i64* %RSP, align 8, !tbaa !2428
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  %291 = tail call %struct.Memory* @sub_4011e0_get_winning_move(%struct.State* nonnull %0, i64 %286, %struct.Memory* %273)
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -32
  %294 = load i64, i64* %RAX, align 8
  %295 = load i64, i64* %PC, align 8
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %293 to i64*
  store i64 %294, i64* %297, align 8
  %298 = load i64, i64* %RBP, align 8
  %299 = add i64 %298, -32
  %300 = load i64, i64* %PC, align 8
  %301 = add i64 %300, 4
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %299 to i64*
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RSI, align 8, !tbaa !2428
  %306 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RCX, align 8, !tbaa !2428
  %308 = add i64 %298, -136
  %309 = add i64 %300, 25
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i64*
  store i64 %303, i64* %310, align 8
  %311 = load i32, i32* %ESI, align 4
  %312 = zext i32 %311 to i64
  %313 = load i64, i64* %PC, align 8
  store i64 %312, i64* %RDI, align 8, !tbaa !2428
  %314 = load i32, i32* %ECX, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RSI, align 8, !tbaa !2428
  %316 = add i64 %313, -2202
  %317 = add i64 %313, 9
  %318 = load i64, i64* %RSP, align 8, !tbaa !2428
  %319 = add i64 %318, -8
  %320 = inttoptr i64 %319 to i64*
  store i64 %317, i64* %320, align 8
  store i64 %319, i64* %RSP, align 8, !tbaa !2428
  store i64 %316, i64* %PC, align 8, !tbaa !2428
  %321 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %316, %struct.Memory* %291)
  %322 = load i64, i64* %RBP, align 8
  %323 = add i64 %322, -8
  %324 = load i64, i64* %PC, align 8
  store i64 %323, i64* %RDX, align 8, !tbaa !2428
  %325 = add i64 %322, -12
  store i64 %325, i64* %RCX, align 8, !tbaa !2428
  %326 = add i64 %322, -136
  %327 = add i64 %324, 15
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RDI, align 8, !tbaa !2428
  %330 = load i64, i64* %RAX, align 8
  store i64 %330, i64* %RSI, align 8, !tbaa !2428
  %331 = add i64 %324, -531
  %332 = add i64 %324, 23
  %333 = load i64, i64* %RSP, align 8, !tbaa !2428
  %334 = add i64 %333, -8
  %335 = inttoptr i64 %334 to i64*
  store i64 %332, i64* %335, align 8
  store i64 %334, i64* %RSP, align 8, !tbaa !2428
  store i64 %331, i64* %PC, align 8, !tbaa !2428
  %336 = tail call %struct.Memory* @sub_401290_get_real_move(%struct.State* nonnull %0, i64 %331, %struct.Memory* %321)
  %337 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 252), i64* %RDI, align 8, !tbaa !2428
  %338 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RSI, align 8, !tbaa !2428
  %340 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RDX, align 8, !tbaa !2428
  %342 = load i64, i64* %RBP, align 8
  %343 = add i64 %342, -8
  %344 = add i64 %337, 27
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RCX, align 8, !tbaa !2428
  %348 = add i64 %342, -12
  %349 = add i64 %337, 31
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %942, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %353 = add i64 %337, -3962
  %354 = add i64 %337, 38
  %355 = load i64, i64* %RSP, align 8, !tbaa !2428
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %354, i64* %357, align 8
  store i64 %356, i64* %RSP, align 8, !tbaa !2428
  store i64 %353, i64* %PC, align 8, !tbaa !2428
  %358 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %336)
  %359 = load i64, i64* %RBP, align 8
  %360 = add i64 %359, -56
  %361 = load i64, i64* %PC, align 8
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %360 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RDI, align 8, !tbaa !2428
  %365 = add i64 %359, -140
  %366 = load i32, i32* %EAX, align 4
  %367 = add i64 %361, 10
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %365 to i32*
  store i32 %366, i32* %368, align 4
  %369 = load i64, i64* %PC, align 8
  %370 = add i64 %369, -3002
  %371 = add i64 %369, 5
  %372 = load i64, i64* %RSP, align 8, !tbaa !2428
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %RSP, align 8, !tbaa !2428
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  %375 = tail call %struct.Memory* @sub_400930_dump_play(%struct.State* nonnull %0, i64 %370, %struct.Memory* %358)
  %376 = load i64, i64* %PC, align 8
  %377 = load i64, i64* bitcast (%wanted_type* @wanted to i64*), align 8
  store i64 %377, i64* %RDI, align 8, !tbaa !2428
  %378 = add i64 %376, -3087
  %379 = add i64 %376, 13
  %380 = load i64, i64* %RSP, align 8, !tbaa !2428
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %382, align 8
  store i64 %381, i64* %RSP, align 8, !tbaa !2428
  store i64 %378, i64* %PC, align 8, !tbaa !2428
  %383 = tail call %struct.Memory* @sub_4008e0_dump_list(%struct.State* nonnull %0, i64 %378, %struct.Memory* %375)
  %384 = load i64, i64* %PC, align 8
  %385 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %386 = add i32 %385, 1
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = icmp eq i32 %385, -1
  %389 = icmp eq i32 %386, 0
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %14, align 1, !tbaa !2432
  %392 = and i32 %386, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #10
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %15, align 1, !tbaa !2446
  %397 = xor i32 %386, %385
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %16, align 1, !tbaa !2447
  %401 = zext i1 %389 to i8
  store i8 %401, i8* %17, align 1, !tbaa !2448
  %402 = lshr i32 %386, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %18, align 1, !tbaa !2449
  %404 = lshr i32 %385, 31
  %405 = xor i32 %402, %404
  %406 = add nuw nsw i32 %405, %402
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %19, align 1, !tbaa !2450
  store i32 %386, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %409 = add i64 %384, -190
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  br label %block_40143e

block_40163b:                                     ; preds = %block_401395
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 307), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %410 = add i64 %629, -4347
  %411 = add i64 %629, 17
  %412 = load i64, i64* %RSP, align 8, !tbaa !2428
  %413 = add i64 %412, -8
  %414 = inttoptr i64 %413 to i64*
  store i64 %411, i64* %414, align 8
  store i64 %413, i64* %RSP, align 8, !tbaa !2428
  store i64 %410, i64* %PC, align 8, !tbaa !2428
  %415 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %92)
  %416 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%ncol_type* @ncol to i64), i64* %RSI, align 8, !tbaa !2428
  %417 = load i64, i64* %RBP, align 8
  %418 = add i64 %417, -160
  %419 = load i32, i32* %EAX, align 4
  %420 = add i64 %416, 26
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %418 to i32*
  store i32 %419, i32* %421, align 4
  %422 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %423 = add i64 %422, -4358
  %424 = add i64 %422, 7
  %425 = load i64, i64* %RSP, align 8, !tbaa !2428
  %426 = add i64 %425, -8
  %427 = inttoptr i64 %426 to i64*
  store i64 %424, i64* %427, align 8
  store i64 %426, i64* %RSP, align 8, !tbaa !2428
  store i64 %423, i64* %PC, align 8, !tbaa !2428
  %428 = tail call fastcc %struct.Memory* @ext_602098___isoc99_scanf(%struct.State* nonnull %0, %struct.Memory* %415)
  %429 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 334), i64* %RDI, align 8, !tbaa !2428
  %430 = load i64, i64* %RBP, align 8
  %431 = add i64 %430, -164
  %432 = load i32, i32* %EAX, align 4
  %433 = add i64 %429, 16
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %431 to i32*
  store i32 %432, i32* %434, align 4
  %435 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %436 = add i64 %435, -4413
  %437 = add i64 %435, 7
  %438 = load i64, i64* %RSP, align 8, !tbaa !2428
  %439 = add i64 %438, -8
  %440 = inttoptr i64 %439 to i64*
  store i64 %437, i64* %440, align 8
  store i64 %439, i64* %RSP, align 8, !tbaa !2428
  store i64 %436, i64* %PC, align 8, !tbaa !2428
  %441 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %428)
  %442 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%nrow_type* @nrow to i64), i64* %RSI, align 8, !tbaa !2428
  %443 = load i64, i64* %RBP, align 8
  %444 = add i64 %443, -168
  %445 = load i32, i32* %EAX, align 4
  %446 = add i64 %442, 26
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %444 to i32*
  store i32 %445, i32* %447, align 4
  %448 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %449 = add i64 %448, -4414
  %450 = add i64 %448, 7
  %451 = load i64, i64* %RSP, align 8, !tbaa !2428
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %450, i64* %453, align 8
  store i64 %452, i64* %RSP, align 8, !tbaa !2428
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  %454 = tail call fastcc %struct.Memory* @ext_602098___isoc99_scanf(%struct.State* nonnull %0, %struct.Memory* %441)
  %455 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 406), i64* %RDI, align 8, !tbaa !2428
  %456 = load i64, i64* %RBP, align 8
  %457 = add i64 %456, -172
  %458 = load i32, i32* %EAX, align 4
  %459 = add i64 %455, 16
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %457 to i32*
  store i32 %458, i32* %460, align 4
  %461 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %462 = add i64 %461, -4469
  %463 = add i64 %461, 7
  %464 = load i64, i64* %RSP, align 8, !tbaa !2428
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %463, i64* %466, align 8
  store i64 %465, i64* %RSP, align 8, !tbaa !2428
  store i64 %462, i64* %PC, align 8, !tbaa !2428
  %467 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %454)
  %468 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %469 = load i64, i64* %RBP, align 8
  %470 = add i64 %469, -176
  %471 = load i32, i32* %EAX, align 4
  %472 = add i64 %468, 11
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %470 to i32*
  store i32 %471, i32* %473, align 4
  %474 = load i64, i64* %PC, align 8
  %475 = add i64 %474, -2103
  %476 = add i64 %474, 5
  %477 = load i64, i64* %RSP, align 8, !tbaa !2428
  %478 = add i64 %477, -8
  %479 = inttoptr i64 %478 to i64*
  store i64 %476, i64* %479, align 8
  store i64 %478, i64* %RSP, align 8, !tbaa !2428
  store i64 %475, i64* %PC, align 8, !tbaa !2428
  %480 = tail call %struct.Memory* @sub_400e90_make_play(%struct.State* nonnull %0, i64 %475, %struct.Memory* %467)
  %481 = load i64, i64* %RBP, align 8
  %482 = add i64 %481, -56
  %483 = load i64, i64* %RAX, align 8
  %484 = load i64, i64* %PC, align 8
  %485 = add i64 %484, 4
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %482 to i64*
  store i64 %483, i64* %486, align 8
  %487 = load i64, i64* %RBP, align 8
  %488 = add i64 %487, -56
  %489 = load i64, i64* %PC, align 8
  %490 = add i64 %489, 4
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %488 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = add i64 %487, -64
  %494 = add i64 %489, 8
  store i64 %494, i64* %PC, align 8
  %495 = inttoptr i64 %493 to i64*
  store i64 %492, i64* %495, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4016d8

block_4016d8:                                     ; preds = %block_40163b, %block_4016fd
  %496 = phi i64 [ %.pre, %block_40163b ], [ %160, %block_4016fd ]
  %MEMORY.2 = phi %struct.Memory* [ %480, %block_40163b ], [ %MEMORY.0, %block_4016fd ]
  %497 = load i64, i64* %RBP, align 8
  %498 = add i64 %497, -64
  %499 = add i64 %496, 5
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %502 = trunc i64 %501 to i32
  %503 = and i32 %502, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503) #10
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %508 = icmp eq i64 %501, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %17, align 1, !tbaa !2448
  %510 = lshr i64 %501, 63
  %511 = trunc i64 %510 to i8
  store i8 %511, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v = select i1 %508, i64 54, i64 11
  %512 = add i64 %496, %.v
  store i64 %512, i64* %PC, align 8, !tbaa !2428
  br i1 %508, label %block_40170e, label %block_4016e3

block_4015b6:                                     ; preds = %block_401592
  %513 = add i64 %199, -8
  store i64 %513, i64* %RDX, align 8, !tbaa !2428
  %514 = add i64 %199, -12
  store i64 %514, i64* %RCX, align 8, !tbaa !2428
  %515 = add i64 %215, 12
  store i64 %515, i64* %PC, align 8
  %516 = load i64, i64* %203, align 8
  store i64 %516, i64* %RDI, align 8, !tbaa !2428
  %517 = add i64 %199, -40
  %518 = add i64 %215, 16
  store i64 %518, i64* %PC, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RSI, align 8, !tbaa !2428
  %521 = add i64 %215, -806
  %522 = add i64 %215, 21
  %523 = load i64, i64* %RSP, align 8, !tbaa !2428
  %524 = add i64 %523, -8
  %525 = inttoptr i64 %524 to i64*
  store i64 %522, i64* %525, align 8
  store i64 %524, i64* %RSP, align 8, !tbaa !2428
  store i64 %521, i64* %PC, align 8, !tbaa !2428
  %526 = tail call %struct.Memory* @sub_401290_get_real_move(%struct.State* nonnull %0, i64 %521, %struct.Memory* %192)
  %527 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 361), i64* %RDI, align 8, !tbaa !2428
  %528 = load i64, i64* %RBP, align 8
  %529 = add i64 %528, -20
  %530 = add i64 %527, 13
  store i64 %530, i64* %PC, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RSI, align 8, !tbaa !2428
  %534 = add i64 %528, -8
  %535 = add i64 %527, 16
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RDX, align 8, !tbaa !2428
  %539 = add i64 %528, -12
  %540 = add i64 %527, 19
  store i64 %540, i64* %PC, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %544 = add i64 %527, -4235
  %545 = add i64 %527, 26
  %546 = load i64, i64* %RSP, align 8, !tbaa !2428
  %547 = add i64 %546, -8
  %548 = inttoptr i64 %547 to i64*
  store i64 %545, i64* %548, align 8
  store i64 %547, i64* %RSP, align 8, !tbaa !2428
  store i64 %544, i64* %PC, align 8, !tbaa !2428
  %549 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %526)
  %550 = load i64, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %551 = load i64, i64* %RBP, align 8
  %552 = add i64 %551, -20
  %553 = add i64 %550, 8
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sub i32 1, %555
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RCX, align 8, !tbaa !2428
  %558 = icmp ugt i32 %555, 1
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %14, align 1, !tbaa !2432
  %560 = and i32 %556, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560) #10
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %15, align 1, !tbaa !2446
  %565 = xor i32 %556, %555
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %16, align 1, !tbaa !2447
  %569 = icmp eq i32 %556, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %17, align 1, !tbaa !2448
  %571 = lshr i32 %556, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %18, align 1, !tbaa !2449
  %573 = lshr i32 %555, 31
  %574 = add nuw nsw i32 %571, %573
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %19, align 1, !tbaa !2450
  %577 = add i64 %550, 11
  store i64 %577, i64* %PC, align 8
  store i32 %556, i32* %554, align 4
  %578 = load i64, i64* %RBP, align 8
  %579 = add i64 %578, -40
  %580 = load i64, i64* %PC, align 8
  %581 = add i64 %580, 4
  store i64 %581, i64* %PC, align 8
  %582 = inttoptr i64 %579 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RDI, align 8, !tbaa !2428
  %584 = add i64 %578, -152
  %585 = load i32, i32* %EAX, align 4
  %586 = add i64 %580, 10
  store i64 %586, i64* %PC, align 8
  %587 = inttoptr i64 %584 to i32*
  store i32 %585, i32* %587, align 4
  %588 = load i64, i64* %PC, align 8
  %589 = add i64 %588, -4314
  %590 = add i64 %588, 5
  %591 = load i64, i64* %RSP, align 8, !tbaa !2428
  %592 = add i64 %591, -8
  %593 = inttoptr i64 %592 to i64*
  store i64 %590, i64* %593, align 8
  store i64 %592, i64* %RSP, align 8, !tbaa !2428
  store i64 %589, i64* %PC, align 8, !tbaa !2428
  %594 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %549)
  %.pre19 = load i64, i64* %RBP, align 8
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_4015ff

block_4013a9:                                     ; preds = %block_401395
  %595 = add i64 %629, 878
  store i64 %595, i64* %PC, align 8, !tbaa !2428
  br label %block_401717

block_401395:                                     ; preds = %block_401381
  %596 = load i64, i64* %RBP, align 8
  %597 = add i64 %596, -88
  %598 = add i64 %862, 8
  store i64 %598, i64* %PC, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = add i32 %600, -3
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
  %603 = icmp ult i32 %600, 3
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %14, align 1, !tbaa !2432
  %605 = and i32 %601, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605) #10
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %15, align 1, !tbaa !2446
  %610 = xor i32 %601, %600
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %16, align 1, !tbaa !2447
  %614 = icmp eq i32 %601, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %17, align 1, !tbaa !2448
  %616 = lshr i32 %601, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %18, align 1, !tbaa !2449
  %618 = lshr i32 %600, 31
  %619 = xor i32 %616, %618
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %19, align 1, !tbaa !2450
  %623 = add i64 %596, -100
  %624 = add i64 %862, 14
  store i64 %624, i64* %PC, align 8
  %625 = inttoptr i64 %623 to i32*
  store i32 %601, i32* %625, align 4
  %626 = load i64, i64* %PC, align 8
  %627 = load i8, i8* %17, align 1, !tbaa !2448
  %628 = icmp ne i8 %627, 0
  %.v34 = select i1 %628, i64 664, i64 6
  %629 = add i64 %626, %.v34
  store i64 %629, i64* %PC, align 8, !tbaa !2428
  %630 = icmp eq i8 %627, 1
  br i1 %630, label %block_40163b, label %block_4013a9

block_401512:                                     ; preds = %block_40143e
  %631 = add i64 %250, 517
  store i64 %631, i64* %PC, align 8, !tbaa !2428
  br label %block_401717

block_40170e:                                     ; preds = %block_4016d8
  %632 = add i64 %497, -56
  %633 = add i64 %512, 4
  store i64 %633, i64* %PC, align 8
  %634 = inttoptr i64 %632 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %RDI, align 8, !tbaa !2428
  %636 = add i64 %512, -3550
  %637 = add i64 %512, 9
  %638 = load i64, i64* %RSP, align 8, !tbaa !2428
  %639 = add i64 %638, -8
  %640 = inttoptr i64 %639 to i64*
  store i64 %637, i64* %640, align 8
  store i64 %639, i64* %RSP, align 8, !tbaa !2428
  store i64 %636, i64* %PC, align 8, !tbaa !2428
  %641 = tail call %struct.Memory* @sub_400930_dump_play(%struct.State* nonnull %0, i64 %636, %struct.Memory* %MEMORY.2)
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_401717

block_40160c:                                     ; preds = %block_401587
  %642 = add i64 %742, -56
  %643 = add i64 %757, 4
  store i64 %643, i64* %PC, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RDI, align 8, !tbaa !2428
  %646 = add i64 %757, -3292
  %647 = add i64 %757, 9
  %648 = load i64, i64* %RSP, align 8, !tbaa !2428
  %649 = add i64 %648, -8
  %650 = inttoptr i64 %649 to i64*
  store i64 %647, i64* %650, align 8
  store i64 %649, i64* %RSP, align 8, !tbaa !2428
  store i64 %646, i64* %PC, align 8, !tbaa !2428
  %651 = tail call %struct.Memory* @sub_400930_dump_play(%struct.State* nonnull %0, i64 %646, %struct.Memory* %MEMORY.4)
  %652 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 389), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %653 = load i64, i64* %RBP, align 8
  %654 = add i64 %653, -20
  %655 = add i64 %652, 18
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = sub i32 1, %657
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RAX, align 8, !tbaa !2428
  %660 = icmp ugt i32 %657, 1
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %14, align 1, !tbaa !2432
  %662 = and i32 %658, 255
  %663 = tail call i32 @llvm.ctpop.i32(i32 %662) #10
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  store i8 %666, i8* %15, align 1, !tbaa !2446
  %667 = xor i32 %658, %657
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  store i8 %670, i8* %16, align 1, !tbaa !2447
  %671 = icmp eq i32 %658, 0
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %17, align 1, !tbaa !2448
  %673 = lshr i32 %658, 31
  %674 = trunc i32 %673 to i8
  store i8 %674, i8* %18, align 1, !tbaa !2449
  %675 = lshr i32 %657, 31
  %676 = add nuw nsw i32 %673, %675
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %19, align 1, !tbaa !2450
  store i64 %659, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %679 = add i64 %652, -4309
  %680 = add i64 %652, 27
  %681 = load i64, i64* %RSP, align 8, !tbaa !2428
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %680, i64* %683, align 8
  store i64 %682, i64* %RSP, align 8, !tbaa !2428
  store i64 %679, i64* %PC, align 8, !tbaa !2428
  %684 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %651)
  %685 = load i64, i64* %RBP, align 8
  %686 = add i64 %685, -156
  %687 = load i32, i32* %EAX, align 4
  %688 = load i64, i64* %PC, align 8
  %689 = add i64 %688, 6
  store i64 %689, i64* %PC, align 8
  %690 = inttoptr i64 %686 to i32*
  store i32 %687, i32* %690, align 4
  %691 = load i64, i64* %PC, align 8
  %692 = add i64 %691, 225
  store i64 %692, i64* %PC, align 8, !tbaa !2428
  br label %block_401717

block_401717:                                     ; preds = %block_40160c, %block_40170e, %block_401512, %block_4013a9
  %693 = phi i64 [ %631, %block_401512 ], [ %692, %block_40160c ], [ %.pre23, %block_40170e ], [ %595, %block_4013a9 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_401512 ], [ %684, %block_40160c ], [ %641, %block_40170e ], [ %92, %block_4013a9 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %694 = load i64, i64* %RSP, align 8
  %695 = add i64 %694, 176
  store i64 %695, i64* %RSP, align 8, !tbaa !2428
  %696 = icmp ugt i64 %694, -177
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %14, align 1, !tbaa !2432
  %698 = trunc i64 %695 to i32
  %699 = and i32 %698, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699) #10
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %15, align 1, !tbaa !2446
  %704 = xor i64 %694, 16
  %705 = xor i64 %704, %695
  %706 = lshr i64 %705, 4
  %707 = trunc i64 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %16, align 1, !tbaa !2447
  %709 = icmp eq i64 %695, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %17, align 1, !tbaa !2448
  %711 = lshr i64 %695, 63
  %712 = trunc i64 %711 to i8
  store i8 %712, i8* %18, align 1, !tbaa !2449
  %713 = lshr i64 %694, 63
  %714 = xor i64 %711, %713
  %715 = add nuw nsw i64 %714, %711
  %716 = icmp eq i64 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %19, align 1, !tbaa !2450
  %718 = add i64 %693, 10
  store i64 %718, i64* %PC, align 8
  %719 = add i64 %694, 184
  %720 = inttoptr i64 %695 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RBP, align 8, !tbaa !2428
  store i64 %719, i64* %RSP, align 8, !tbaa !2428
  %722 = add i64 %693, 11
  store i64 %722, i64* %PC, align 8
  %723 = inttoptr i64 %719 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %PC, align 8, !tbaa !2428
  %725 = add i64 %694, 192
  store i64 %725, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_4016e3:                                     ; preds = %block_4016d8
  %726 = add i64 %512, 4
  store i64 %726, i64* %PC, align 8
  %727 = load i64, i64* %500, align 8
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = add i64 %512, 7
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #10
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %736 = icmp eq i32 %730, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %17, align 1, !tbaa !2448
  %738 = lshr i32 %730, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v24 = select i1 %736, i64 13, i64 26
  %740 = add i64 %512, %.v24
  store i64 %740, i64* %PC, align 8, !tbaa !2428
  br i1 %736, label %block_4016f0, label %block_4016fd

block_401587:                                     ; preds = %block_401517, %block_4015ff
  %741 = phi i64 [ %.pre18, %block_401517 ], [ %768, %block_4015ff ]
  %MEMORY.4 = phi %struct.Memory* [ %822, %block_401517 ], [ %MEMORY.5, %block_4015ff ]
  %742 = load i64, i64* %RBP, align 8
  %743 = add i64 %742, -40
  %744 = add i64 %741, 5
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %743 to i64*
  %746 = load i64, i64* %745, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %747 = trunc i64 %746 to i32
  %748 = and i32 %747, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748) #10
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %753 = icmp eq i64 %746, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %17, align 1, !tbaa !2448
  %755 = lshr i64 %746, 63
  %756 = trunc i64 %755 to i8
  store i8 %756, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v25 = select i1 %753, i64 133, i64 11
  %757 = add i64 %741, %.v25
  store i64 %757, i64* %PC, align 8, !tbaa !2428
  br i1 %753, label %block_40160c, label %block_401592

block_4015ff:                                     ; preds = %block_4015b6, %block_401592
  %758 = phi i64 [ %215, %block_401592 ], [ %.pre20, %block_4015b6 ]
  %759 = phi i64 [ %199, %block_401592 ], [ %.pre19, %block_4015b6 ]
  %MEMORY.5 = phi %struct.Memory* [ %192, %block_401592 ], [ %594, %block_4015b6 ]
  %760 = add i64 %759, -48
  %761 = add i64 %758, 4
  store i64 %761, i64* %PC, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RAX, align 8, !tbaa !2428
  %764 = add i64 %759, -40
  %765 = add i64 %758, 8
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %764 to i64*
  store i64 %763, i64* %766, align 8
  %767 = load i64, i64* %PC, align 8
  %768 = add i64 %767, -128
  store i64 %768, i64* %PC, align 8, !tbaa !2428
  br label %block_401587

block_401517:                                     ; preds = %block_401381
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 307), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %769 = add i64 %862, -4055
  %770 = add i64 %862, 17
  %771 = load i64, i64* %RSP, align 8, !tbaa !2428
  %772 = add i64 %771, -8
  %773 = inttoptr i64 %772 to i64*
  store i64 %770, i64* %773, align 8
  store i64 %772, i64* %RSP, align 8, !tbaa !2428
  store i64 %769, i64* %PC, align 8, !tbaa !2428
  %774 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %92)
  %775 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 334), i64* %RDI, align 8, !tbaa !2428
  store i32 7, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %776 = load i64, i64* %RBP, align 8
  %777 = add i64 %776, -144
  %778 = load i32, i32* %EAX, align 4
  %779 = add i64 %775, 27
  store i64 %779, i64* %PC, align 8
  %780 = inttoptr i64 %777 to i32*
  store i32 %778, i32* %780, align 4
  %781 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %782 = add i64 %781, -4099
  %783 = add i64 %781, 7
  %784 = load i64, i64* %RSP, align 8, !tbaa !2428
  %785 = add i64 %784, -8
  %786 = inttoptr i64 %785 to i64*
  store i64 %783, i64* %786, align 8
  store i64 %785, i64* %RSP, align 8, !tbaa !2428
  store i64 %782, i64* %PC, align 8, !tbaa !2428
  %787 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %774)
  %788 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  store i32 8, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %789 = load i64, i64* %RBP, align 8
  %790 = add i64 %789, -148
  %791 = load i32, i32* %EAX, align 4
  %792 = add i64 %788, 22
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %790 to i32*
  store i32 %791, i32* %793, align 4
  %794 = load i64, i64* %PC, align 8
  %795 = add i64 %794, -1744
  %796 = add i64 %794, 5
  %797 = load i64, i64* %RSP, align 8, !tbaa !2428
  %798 = add i64 %797, -8
  %799 = inttoptr i64 %798 to i64*
  store i64 %796, i64* %799, align 8
  store i64 %798, i64* %RSP, align 8, !tbaa !2428
  store i64 %795, i64* %PC, align 8, !tbaa !2428
  %800 = tail call %struct.Memory* @sub_400e90_make_play(%struct.State* nonnull %0, i64 %795, %struct.Memory* %787)
  %801 = load i64, i64* %RBP, align 8
  %802 = add i64 %801, -56
  %803 = load i64, i64* %RAX, align 8
  %804 = load i64, i64* %PC, align 8
  %805 = add i64 %804, 4
  store i64 %805, i64* %PC, align 8
  %806 = inttoptr i64 %802 to i64*
  store i64 %803, i64* %806, align 8
  %807 = load i64, i64* %RBP, align 8
  %808 = add i64 %807, -20
  %809 = load i64, i64* %PC, align 8
  %810 = add i64 %809, 7
  store i64 %810, i64* %PC, align 8
  %811 = inttoptr i64 %808 to i32*
  store i32 0, i32* %811, align 4
  %812 = load i64, i64* %PC, align 8
  %813 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RDI, align 8, !tbaa !2428
  %815 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RSI, align 8, !tbaa !2428
  %817 = add i64 %812, -2416
  %818 = add i64 %812, 19
  %819 = load i64, i64* %RSP, align 8, !tbaa !2428
  %820 = add i64 %819, -8
  %821 = inttoptr i64 %820 to i64*
  store i64 %818, i64* %821, align 8
  store i64 %820, i64* %RSP, align 8, !tbaa !2428
  store i64 %817, i64* %PC, align 8, !tbaa !2428
  %822 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* nonnull %0, i64 %817, %struct.Memory* %800)
  %823 = load i64, i64* %RBP, align 8
  %824 = add i64 %823, -40
  %825 = load i64, i64* %RAX, align 8
  %826 = load i64, i64* %PC, align 8
  %827 = add i64 %826, 4
  store i64 %827, i64* %PC, align 8
  %828 = inttoptr i64 %824 to i64*
  store i64 %825, i64* %828, align 8
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_401587

block_401381:                                     ; preds = %block_401300
  %829 = load i64, i64* %RBP, align 8
  %830 = add i64 %829, -88
  %831 = add i64 %146, 8
  store i64 %831, i64* %PC, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = add i32 %833, -2
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX, align 8, !tbaa !2428
  %836 = icmp ult i32 %833, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %14, align 1, !tbaa !2432
  %838 = and i32 %834, 255
  %839 = tail call i32 @llvm.ctpop.i32(i32 %838) #10
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %15, align 1, !tbaa !2446
  %843 = xor i32 %834, %833
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %16, align 1, !tbaa !2447
  %847 = icmp eq i32 %834, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %17, align 1, !tbaa !2448
  %849 = lshr i32 %834, 31
  %850 = trunc i32 %849 to i8
  store i8 %850, i8* %18, align 1, !tbaa !2449
  %851 = lshr i32 %833, 31
  %852 = xor i32 %849, %851
  %853 = add nuw nsw i32 %852, %851
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %19, align 1, !tbaa !2450
  %856 = add i64 %829, -96
  %857 = add i64 %146, 14
  store i64 %857, i64* %PC, align 8
  %858 = inttoptr i64 %856 to i32*
  store i32 %834, i32* %858, align 4
  %859 = load i64, i64* %PC, align 8
  %860 = load i8, i8* %17, align 1, !tbaa !2448
  %861 = icmp ne i8 %860, 0
  %.v33 = select i1 %861, i64 392, i64 6
  %862 = add i64 %859, %.v33
  store i64 %862, i64* %PC, align 8, !tbaa !2428
  %863 = icmp eq i8 %860, 1
  br i1 %863, label %block_401517, label %block_401395

block_4013ae:                                     ; preds = %block_401300
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 155), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %864 = add i64 %146, -3694
  %865 = add i64 %146, 17
  %866 = load i64, i64* %RSP, align 8, !tbaa !2428
  %867 = add i64 %866, -8
  %868 = inttoptr i64 %867 to i64*
  store i64 %865, i64* %868, align 8
  store i64 %867, i64* %RSP, align 8, !tbaa !2428
  store i64 %864, i64* %PC, align 8, !tbaa !2428
  %869 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %92)
  %870 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%ncol_type* @ncol to i64), i64* %RSI, align 8, !tbaa !2428
  %871 = load i64, i64* %RBP, align 8
  %872 = add i64 %871, -104
  %873 = load i32, i32* %EAX, align 4
  %874 = add i64 %870, 23
  store i64 %874, i64* %PC, align 8
  %875 = inttoptr i64 %872 to i32*
  store i32 %873, i32* %875, align 4
  %876 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %877 = add i64 %876, -3702
  %878 = add i64 %876, 7
  %879 = load i64, i64* %RSP, align 8, !tbaa !2428
  %880 = add i64 %879, -8
  %881 = inttoptr i64 %880 to i64*
  store i64 %878, i64* %881, align 8
  store i64 %880, i64* %RSP, align 8, !tbaa !2428
  store i64 %877, i64* %PC, align 8, !tbaa !2428
  %882 = tail call fastcc %struct.Memory* @ext_602098___isoc99_scanf(%struct.State* nonnull %0, %struct.Memory* %869)
  %883 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 188), i64* %RDI, align 8, !tbaa !2428
  %884 = load i64, i64* %RBP, align 8
  %885 = add i64 %884, -108
  %886 = load i32, i32* %EAX, align 4
  %887 = add i64 %883, 13
  store i64 %887, i64* %PC, align 8
  %888 = inttoptr i64 %885 to i32*
  store i32 %886, i32* %888, align 4
  %889 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %890 = add i64 %889, -3754
  %891 = add i64 %889, 7
  %892 = load i64, i64* %RSP, align 8, !tbaa !2428
  %893 = add i64 %892, -8
  %894 = inttoptr i64 %893 to i64*
  store i64 %891, i64* %894, align 8
  store i64 %893, i64* %RSP, align 8, !tbaa !2428
  store i64 %890, i64* %PC, align 8, !tbaa !2428
  %895 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %882)
  %896 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%nrow_type* @nrow to i64), i64* %RSI, align 8, !tbaa !2428
  %897 = load i64, i64* %RBP, align 8
  %898 = add i64 %897, -112
  %899 = load i32, i32* %EAX, align 4
  %900 = add i64 %896, 23
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %898 to i32*
  store i32 %899, i32* %901, align 4
  %902 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %903 = add i64 %902, -3752
  %904 = add i64 %902, 7
  %905 = load i64, i64* %RSP, align 8, !tbaa !2428
  %906 = add i64 %905, -8
  %907 = inttoptr i64 %906 to i64*
  store i64 %904, i64* %907, align 8
  store i64 %906, i64* %RSP, align 8, !tbaa !2428
  store i64 %903, i64* %PC, align 8, !tbaa !2428
  %908 = tail call fastcc %struct.Memory* @ext_602098___isoc99_scanf(%struct.State* nonnull %0, %struct.Memory* %895)
  %909 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 220), i64* %RDI, align 8, !tbaa !2428
  %910 = load i64, i64* %RBP, align 8
  %911 = add i64 %910, -116
  %912 = load i32, i32* %EAX, align 4
  %913 = add i64 %909, 13
  store i64 %913, i64* %PC, align 8
  %914 = inttoptr i64 %911 to i32*
  store i32 %912, i32* %914, align 4
  %915 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %916 = add i64 %915, -3804
  %917 = add i64 %915, 7
  %918 = load i64, i64* %RSP, align 8, !tbaa !2428
  %919 = add i64 %918, -8
  %920 = inttoptr i64 %919 to i64*
  store i64 %917, i64* %920, align 8
  store i64 %919, i64* %RSP, align 8, !tbaa !2428
  store i64 %916, i64* %PC, align 8, !tbaa !2428
  %921 = tail call fastcc %struct.Memory* @ext_6020b0_printf(%struct.State* nonnull %0, %struct.Memory* %908)
  %922 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4017b0__rodata_type* @seg_4017b0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  %923 = load i64, i64* %RBP, align 8
  %924 = add i64 %923, -16
  store i64 %924, i64* %RSI, align 8, !tbaa !2428
  %925 = add i64 %923, -120
  %926 = load i32, i32* %EAX, align 4
  %927 = add i64 %922, 17
  store i64 %927, i64* %PC, align 8
  %928 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %928, align 4
  %929 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %930 = add i64 %929, -3796
  %931 = add i64 %929, 7
  %932 = load i64, i64* %RSP, align 8, !tbaa !2428
  %933 = add i64 %932, -8
  %934 = inttoptr i64 %933 to i64*
  store i64 %931, i64* %934, align 8
  store i64 %933, i64* %RSP, align 8, !tbaa !2428
  store i64 %930, i64* %PC, align 8, !tbaa !2428
  %935 = tail call fastcc %struct.Memory* @ext_602098___isoc99_scanf(%struct.State* nonnull %0, %struct.Memory* %921)
  %936 = load i64, i64* %RBP, align 8
  %937 = add i64 %936, -124
  %938 = load i32, i32* %EAX, align 4
  %939 = load i64, i64* %PC, align 8
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC, align 8
  %941 = inttoptr i64 %937 to i32*
  store i32 %938, i32* %941, align 4
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre21 = load i64, i64* %PC, align 8
  %.pre22 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  br label %block_40143e
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4017a0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4017a0:
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
define %struct.Memory* @sub_4005e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4005e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %10 = sub i64 %8, ptrtoint (%__bss_start_type* @__bss_start to i64)
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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
  br i1 %29, label %block_400618, label %block_400603

block_400618:                                     ; preds = %block_400603, %block_4005e0
  %34 = phi i64 [ %44, %block_400603 ], [ %33, %block_4005e0 ]
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

block_400603:                                     ; preds = %block_4005e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400618
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400930_dump_play(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400930:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %PC, align 8
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %9 = add i64 %5, -24
  store i64 %9, i64* %RSP, align 8, !tbaa !2428
  %10 = icmp ult i64 %6, 16
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1, !tbaa !2432
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #10
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = xor i64 %6, 16
  %21 = xor i64 %20, %9
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %9, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %6, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %5, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %8, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -8
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 5
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i64*
  %47 = load i64, i64* %46, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #10
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %54 = icmp eq i64 %47, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %28, align 1, !tbaa !2448
  %56 = lshr i64 %47, 63
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %54, i64 65, i64 11
  %58 = add i64 %44, %.v
  store i64 %58, i64* %PC, align 8, !tbaa !2428
  br i1 %54, label %block_40097d, label %block_400947

block_40097d:                                     ; preds = %block_400947, %block_400930
  %59 = phi i64 [ %58, %block_400930 ], [ %.pre, %block_400947 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400930 ], [ %147, %block_400947 ]
  %60 = load i64, i64* %RSP, align 8
  %61 = add i64 %60, 16
  store i64 %61, i64* %RSP, align 8, !tbaa !2428
  %62 = icmp ugt i64 %60, -17
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %12, align 1, !tbaa !2432
  %64 = trunc i64 %61 to i32
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #10
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %19, align 1, !tbaa !2446
  %70 = xor i64 %60, 16
  %71 = xor i64 %70, %61
  %72 = lshr i64 %71, 4
  %73 = trunc i64 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %25, align 1, !tbaa !2447
  %75 = icmp eq i64 %61, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %28, align 1, !tbaa !2448
  %77 = lshr i64 %61, 63
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %31, align 1, !tbaa !2449
  %79 = lshr i64 %60, 63
  %80 = xor i64 %77, %79
  %81 = add nuw nsw i64 %80, %77
  %82 = icmp eq i64 %81, 2
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %37, align 1, !tbaa !2450
  %84 = add i64 %59, 5
  store i64 %84, i64* %PC, align 8
  %85 = add i64 %60, 24
  %86 = inttoptr i64 %61 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %RSP, align 8, !tbaa !2428
  %88 = add i64 %59, 6
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  %91 = add i64 %60, 32
  store i64 %91, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400947:                                     ; preds = %block_400930
  %92 = add i64 %58, 4
  store i64 %92, i64* %PC, align 8
  %93 = load i64, i64* %46, align 8
  store i64 %93, i64* %RAX, align 8, !tbaa !2428
  %94 = add i64 %93, 24
  %95 = add i64 %58, 8
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RDI, align 8, !tbaa !2428
  %98 = add i64 %58, -23
  %99 = add i64 %58, 13
  %100 = load i64, i64* %RSP, align 8, !tbaa !2428
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %RSP, align 8, !tbaa !2428
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  %103 = tail call %struct.Memory* @sub_400930_dump_play(%struct.State* nonnull %0, i64 %98, %struct.Memory* %2)
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = add i64 %109, 16
  %111 = add i64 %106, 8
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RDI, align 8, !tbaa !2428
  %114 = add i64 %106, -116
  %115 = add i64 %106, 13
  %116 = load i64, i64* %RSP, align 8, !tbaa !2428
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %RSP, align 8, !tbaa !2428
  store i64 %114, i64* %PC, align 8, !tbaa !2428
  %119 = tail call %struct.Memory* @sub_4008e0_dump_list(%struct.State* nonnull %0, i64 %114, %struct.Memory* %103)
  %120 = load i64, i64* %RBP, align 8
  %121 = add i64 %120, -8
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %121 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  %126 = add i64 %125, 8
  %127 = add i64 %122, 8
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  store i64 %129, i64* %RDI, align 8, !tbaa !2428
  %130 = add i64 %122, -1089
  %131 = add i64 %122, 16
  %132 = load i64, i64* %RSP, align 8, !tbaa !2428
  %133 = add i64 %132, -8
  %134 = inttoptr i64 %133 to i64*
  store i64 %131, i64* %134, align 8
  store i64 %133, i64* %RSP, align 8, !tbaa !2428
  store i64 %130, i64* %PC, align 8, !tbaa !2428
  %135 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %119)
  %136 = load i64, i64* %RBP, align 8
  %137 = add i64 %136, -8
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  store i64 %141, i64* %RDI, align 8, !tbaa !2428
  %142 = add i64 %138, -1105
  %143 = add i64 %138, 12
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  %147 = tail call fastcc %struct.Memory* @ext_6020a0_free(%struct.State* nonnull %0, %struct.Memory* %135)
  %.pre = load i64, i64* %PC, align 8
  br label %block_40097d
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b80_in_wanted(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #8 {
block_400b80:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %PC, align 8
  %43 = load i64, i64* bitcast (%wanted_type* @wanted to i64*), align 8
  store i64 %43, i64* %RDI, align 8, !tbaa !2428
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -24
  %46 = add i64 %42, 12
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %47, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b98

block_400bdd:                                     ; preds = %block_400bd2
  store i32 0, i32* %70, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 12
  store i64 %49, i64* %PC, align 8, !tbaa !2428
  br label %block_400bf0

block_400bbc:                                     ; preds = %block_400ba3
  %50 = add i64 %152, 22
  store i64 %50, i64* %PC, align 8, !tbaa !2428
  %.pre7 = load i64, i64* %RBP, align 8
  br label %block_400bd2

block_400bd2.loopexit:                            ; preds = %block_400b98
  br label %block_400bd2

block_400bd2:                                     ; preds = %block_400bd2.loopexit, %block_400bbc
  %51 = phi i64 [ %50, %block_400bbc ], [ %87, %block_400bd2.loopexit ]
  %52 = phi i64 [ %.pre7, %block_400bbc ], [ %72, %block_400bd2.loopexit ]
  %53 = add i64 %52, -24
  %54 = add i64 %51, 5
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 255
  %59 = tail call i32 @llvm.ctpop.i32(i32 %58) #10
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  store i8 %62, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %63 = icmp eq i64 %56, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %28, align 1, !tbaa !2448
  %65 = lshr i64 %56, 63
  %66 = trunc i64 %65 to i8
  store i8 %66, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %63, i64 11, i64 23
  %67 = add i64 %51, %.v
  %68 = add i64 %52, -4
  %69 = add i64 %67, 7
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %68 to i32*
  br i1 %63, label %block_400bdd, label %block_400be9

block_400be9:                                     ; preds = %block_400bd2
  store i32 1, i32* %70, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400bf0

block_400b98:                                     ; preds = %block_400bc1, %block_400b80
  %71 = phi i64 [ %164, %block_400bc1 ], [ %.pre, %block_400b80 ]
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -24
  %74 = add i64 %71, 5
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 255
  %79 = tail call i32 @llvm.ctpop.i32(i32 %78) #10
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %83 = icmp eq i64 %76, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %28, align 1, !tbaa !2448
  %85 = lshr i64 %76, 63
  %86 = trunc i64 %85 to i8
  store i8 %86, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v9 = select i1 %83, i64 58, i64 11
  %87 = add i64 %71, %.v9
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  br i1 %83, label %block_400bd2.loopexit, label %block_400ba3

block_400bf0:                                     ; preds = %block_400be9, %block_400bdd
  %88 = phi i64 [ %.pre8, %block_400be9 ], [ %49, %block_400bdd ]
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -4
  %91 = add i64 %88, 3
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %95 = load i64, i64* %RSP, align 8
  %96 = add i64 %95, 32
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  %97 = icmp ugt i64 %95, -33
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %13, align 1, !tbaa !2432
  %99 = trunc i64 %96 to i32
  %100 = and i32 %99, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #10
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %20, align 1, !tbaa !2446
  %105 = xor i64 %96, %95
  %106 = lshr i64 %105, 4
  %107 = trunc i64 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %25, align 1, !tbaa !2447
  %109 = icmp eq i64 %96, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %28, align 1, !tbaa !2448
  %111 = lshr i64 %96, 63
  %112 = trunc i64 %111 to i8
  store i8 %112, i8* %31, align 1, !tbaa !2449
  %113 = lshr i64 %95, 63
  %114 = xor i64 %111, %113
  %115 = add nuw nsw i64 %114, %111
  %116 = icmp eq i64 %115, 2
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %37, align 1, !tbaa !2450
  %118 = add i64 %88, 8
  store i64 %118, i64* %PC, align 8
  %119 = add i64 %95, 40
  %120 = inttoptr i64 %96 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RBP, align 8, !tbaa !2428
  store i64 %119, i64* %RSP, align 8, !tbaa !2428
  %122 = add i64 %88, 9
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %119 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  %125 = add i64 %95, 48
  store i64 %125, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400ba3:                                     ; preds = %block_400b98
  %126 = add i64 %87, 4
  store i64 %126, i64* %PC, align 8
  %127 = load i64, i64* %75, align 8
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = add i64 %87, 7
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RDI, align 8, !tbaa !2428
  %131 = add i64 %72, -16
  %132 = add i64 %87, 11
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RSI, align 8, !tbaa !2428
  %135 = add i64 %87, -963
  %136 = add i64 %87, 16
  %137 = load i64, i64* %RSP, align 8, !tbaa !2428
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %RSP, align 8, !tbaa !2428
  store i64 %135, i64* %PC, align 8, !tbaa !2428
  %140 = tail call %struct.Memory* @sub_4007e0_equal_data(%struct.State* nonnull %0, i64 %135, %struct.Memory* %2)
  %141 = load i32, i32* %EAX, align 4
  %142 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %143 = and i32 %141, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #10
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %148 = icmp eq i32 %141, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %28, align 1, !tbaa !2448
  %150 = lshr i32 %141, 31
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v10 = select i1 %148, i64 14, i64 9
  %152 = add i64 %142, %.v10
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  br i1 %148, label %block_400bc1, label %block_400bbc

block_400bc1:                                     ; preds = %block_400ba3
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -24
  %155 = add i64 %152, 4
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RAX, align 8, !tbaa !2428
  %158 = add i64 %157, 8
  %159 = add i64 %152, 8
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = add i64 %152, 12
  store i64 %162, i64* %PC, align 8
  store i64 %161, i64* %156, align 8
  %163 = load i64, i64* %PC, align 8
  %164 = add i64 %163, -53
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  br label %block_400b98
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400650_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400650:
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
  %13 = tail call %struct.Memory* @sub_4005e0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c00_make_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400c00:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = add i64 %7, -12
  %19 = load i32, i32* %EDI, align 4
  %20 = add i64 %10, 10
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -8
  %24 = load i32, i32* %ESI, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* %PC, align 8
  %29 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  store i64 %31, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %29, 31
  %32 = trunc i32 %.lobit to i8
  store i8 %32, i8* %12, align 1, !tbaa !2451
  %33 = trunc i64 %31 to i32
  %34 = and i32 %33, 252
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34) #10
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  store i8 %38, i8* %13, align 1, !tbaa !2451
  store i8 0, i8* %14, align 1, !tbaa !2451
  %39 = icmp eq i32 %29, 0
  %40 = zext i1 %39 to i8
  store i8 %40, i8* %15, align 1, !tbaa !2451
  %41 = lshr i64 %30, 61
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %16, align 1, !tbaa !2451
  store i8 0, i8* %17, align 1, !tbaa !2451
  store i64 %31, i64* %RDI, align 8, !tbaa !2428
  %44 = add i64 %28, -1726
  %45 = add i64 %28, 20
  %46 = load i64, i64* %RSP, align 8, !tbaa !2428
  %47 = add i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %RAX, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -12
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c2d

block_400c39:                                     ; preds = %block_400c2d
  %61 = load i32, i32* bitcast (%nrow_type* @nrow to i32*), align 8
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %108, -24
  %64 = add i64 %142, 11
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RCX, align 8, !tbaa !2428
  %67 = add i64 %142, 15
  store i64 %67, i64* %PC, align 8
  %68 = load i32, i32* %111, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %RDX, align 8, !tbaa !2428
  %70 = shl nsw i64 %69, 2
  %71 = add i64 %70, %66
  %72 = add i64 %142, 18
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i32*
  store i32 %61, i32* %73, align 4
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -12
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %75 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = icmp eq i32 %79, -1
  %83 = icmp eq i32 %80, 0
  %84 = or i1 %82, %83
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %12, align 1, !tbaa !2432
  %86 = and i32 %80, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #10
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %13, align 1, !tbaa !2446
  %91 = xor i32 %80, %79
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %14, align 1, !tbaa !2447
  %95 = zext i1 %83 to i8
  store i8 %95, i8* %15, align 1, !tbaa !2448
  %96 = lshr i32 %80, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %16, align 1, !tbaa !2449
  %98 = lshr i32 %79, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %96
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %17, align 1, !tbaa !2450
  %103 = add i64 %76, 9
  store i64 %103, i64* %PC, align 8
  store i32 %80, i32* %78, align 4
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, -39
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  br label %block_400c2d

block_400c59:                                     ; preds = %block_400c2d
  %106 = add i64 %142, 5
  br label %block_400c5e

block_400c2d:                                     ; preds = %block_400c39, %block_400c00
  %107 = phi i64 [ %105, %block_400c39 ], [ %.pre, %block_400c00 ]
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -12
  %110 = add i64 %107, 3
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = add i64 %108, -8
  %115 = add i64 %107, 6
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = sub i32 %112, %117
  %119 = icmp ult i32 %112, %117
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %12, align 1, !tbaa !2432
  %121 = and i32 %118, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121) #10
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %13, align 1, !tbaa !2446
  %126 = xor i32 %117, %112
  %127 = xor i32 %126, %118
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %14, align 1, !tbaa !2447
  %131 = icmp eq i32 %118, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %15, align 1, !tbaa !2448
  %133 = lshr i32 %118, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %16, align 1, !tbaa !2449
  %135 = lshr i32 %112, 31
  %136 = lshr i32 %117, 31
  %137 = xor i32 %136, %135
  %138 = xor i32 %133, %135
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %17, align 1, !tbaa !2450
  %.v = select i1 %131, i64 44, i64 12
  %142 = add i64 %107, %.v
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  br i1 %131, label %block_400c59, label %block_400c39

block_400c5e:                                     ; preds = %block_400c6e, %block_400c59
  %143 = phi i64 [ %.pre9, %block_400c6e ], [ %108, %block_400c59 ]
  %.sink = phi i64 [ %257, %block_400c6e ], [ %106, %block_400c59 ]
  %144 = add i64 %143, -12
  %145 = add i64 %.sink, 3
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = load i32, i32* bitcast (%ncol_type* @ncol to i32*), align 8
  %150 = sub i32 %147, %149
  %151 = icmp ult i32 %147, %149
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %12, align 1, !tbaa !2432
  %153 = and i32 %150, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #10
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %13, align 1, !tbaa !2446
  %158 = xor i32 %149, %147
  %159 = xor i32 %158, %150
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %14, align 1, !tbaa !2447
  %163 = icmp eq i32 %150, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %15, align 1, !tbaa !2448
  %165 = lshr i32 %150, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %16, align 1, !tbaa !2449
  %167 = lshr i32 %147, 31
  %168 = lshr i32 %149, 31
  %169 = xor i32 %168, %167
  %170 = xor i32 %165, %167
  %171 = add nuw nsw i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %17, align 1, !tbaa !2450
  %.v10 = select i1 %163, i64 44, i64 16
  %174 = add i64 %.sink, %.v10
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br i1 %163, label %block_400c8a, label %block_400c6e

block_400c8a:                                     ; preds = %block_400c5e
  %175 = add i64 %143, -24
  %176 = add i64 %174, 4
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %179 = load i64, i64* %RSP, align 8
  %180 = add i64 %179, 32
  store i64 %180, i64* %RSP, align 8, !tbaa !2428
  %181 = icmp ugt i64 %179, -33
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %12, align 1, !tbaa !2432
  %183 = trunc i64 %180 to i32
  %184 = and i32 %183, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184) #10
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %13, align 1, !tbaa !2446
  %189 = xor i64 %180, %179
  %190 = lshr i64 %189, 4
  %191 = trunc i64 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %14, align 1, !tbaa !2447
  %193 = icmp eq i64 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %15, align 1, !tbaa !2448
  %195 = lshr i64 %180, 63
  %196 = trunc i64 %195 to i8
  store i8 %196, i8* %16, align 1, !tbaa !2449
  %197 = lshr i64 %179, 63
  %198 = xor i64 %195, %197
  %199 = add nuw nsw i64 %198, %195
  %200 = icmp eq i64 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %17, align 1, !tbaa !2450
  %202 = add i64 %174, 9
  store i64 %202, i64* %PC, align 8
  %203 = add i64 %179, 40
  %204 = inttoptr i64 %180 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RBP, align 8, !tbaa !2428
  store i64 %203, i64* %RSP, align 8, !tbaa !2428
  %206 = add i64 %174, 10
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %203 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %PC, align 8, !tbaa !2428
  %209 = add i64 %179, 48
  store i64 %209, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %49

block_400c6e:                                     ; preds = %block_400c5e
  %210 = add i64 %143, -4
  %211 = add i64 %174, 3
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = add i64 %143, -24
  %216 = add i64 %174, 7
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = add i64 %174, 11
  store i64 %219, i64* %PC, align 8
  %220 = load i32, i32* %146, align 4
  %221 = sext i32 %220 to i64
  store i64 %221, i64* %RDX, align 8, !tbaa !2428
  %222 = shl nsw i64 %221, 2
  %223 = add i64 %222, %218
  %224 = add i64 %174, 14
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  store i32 %213, i32* %225, align 4
  %226 = load i64, i64* %RBP, align 8
  %227 = add i64 %226, -12
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %231, 1
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  %234 = icmp eq i32 %231, -1
  %235 = icmp eq i32 %232, 0
  %236 = or i1 %234, %235
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %12, align 1, !tbaa !2432
  %238 = and i32 %232, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238) #10
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %13, align 1, !tbaa !2446
  %243 = xor i32 %232, %231
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %14, align 1, !tbaa !2447
  %247 = zext i1 %235 to i8
  store i8 %247, i8* %15, align 1, !tbaa !2448
  %248 = lshr i32 %232, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %16, align 1, !tbaa !2449
  %250 = lshr i32 %231, 31
  %251 = xor i32 %248, %250
  %252 = add nuw nsw i32 %251, %248
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %17, align 1, !tbaa !2450
  %255 = add i64 %228, 9
  store i64 %255, i64* %PC, align 8
  store i32 %232, i32* %230, align 4
  %256 = load i64, i64* %PC, align 8
  %257 = add i64 %256, -39
  %.pre9 = load i64, i64* %RBP, align 8
  br label %block_400c5e
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401290_get_real_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401290:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %10 = add i64 %6, -16
  %11 = load i64, i64* %RDI, align 8
  %12 = add i64 %9, 7
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %10 to i64*
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %RBP, align 8
  %15 = add i64 %14, -16
  %16 = load i64, i64* %RSI, align 8
  %17 = load i64, i64* %PC, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %15 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %RBP, align 8
  %21 = add i64 %20, -24
  %22 = load i64, i64* %RDX, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -32
  %28 = load i64, i64* %RCX, align 8
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -32
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %33 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RCX, align 8, !tbaa !2428
  %38 = add i64 %34, 10
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i32*
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012ae

block_4012d0:                                     ; preds = %block_4012ae
  %46 = load i64, i64* %84, align 8
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = add i64 %135, 6
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RCX, align 8, !tbaa !2428
  %52 = icmp eq i32 %49, -1
  %53 = icmp eq i32 %50, 0
  %54 = or i1 %52, %53
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %40, align 1, !tbaa !2432
  %56 = and i32 %50, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #10
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %41, align 1, !tbaa !2446
  %61 = xor i32 %50, %49
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %42, align 1, !tbaa !2447
  %65 = zext i1 %53 to i8
  store i8 %65, i8* %43, align 1, !tbaa !2448
  %66 = lshr i32 %50, 31
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %44, align 1, !tbaa !2449
  %68 = lshr i32 %49, 31
  %69 = xor i32 %66, %68
  %70 = add nuw nsw i32 %69, %66
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %45, align 1, !tbaa !2450
  %73 = add i64 %135, 11
  store i64 %73, i64* %PC, align 8
  store i32 %50, i32* %48, align 4
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, -45
  store i64 %75, i64* %PC, align 8, !tbaa !2428
  br label %block_4012ae

block_4012ae:                                     ; preds = %block_4012d0, %block_401290
  %76 = phi i64 [ %75, %block_4012d0 ], [ %.pre, %block_401290 ]
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -8
  %79 = add i64 %76, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = add i64 %77, -32
  %83 = add i64 %76, 8
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RCX, align 8, !tbaa !2428
  %86 = add i64 %76, 11
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %RCX, align 8, !tbaa !2428
  %90 = shl nsw i64 %89, 2
  %91 = add i64 %90, %81
  %92 = add i64 %76, 14
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDX, align 8, !tbaa !2428
  %96 = add i64 %77, -16
  %97 = add i64 %76, 18
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = add i64 %76, 22
  store i64 %100, i64* %PC, align 8
  %101 = load i64, i64* %84, align 8
  store i64 %101, i64* %RCX, align 8, !tbaa !2428
  %102 = add i64 %76, 25
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %RCX, align 8, !tbaa !2428
  %106 = shl nsw i64 %105, 2
  %107 = add i64 %99, %106
  %108 = add i64 %76, 28
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = sub i32 %94, %110
  %112 = icmp ult i32 %94, %110
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %40, align 1, !tbaa !2432
  %114 = and i32 %111, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #10
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %41, align 1, !tbaa !2446
  %119 = xor i32 %110, %94
  %120 = xor i32 %119, %111
  %121 = lshr i32 %120, 4
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %42, align 1, !tbaa !2447
  %124 = icmp eq i32 %111, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %43, align 1, !tbaa !2448
  %126 = lshr i32 %111, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %44, align 1, !tbaa !2449
  %128 = lshr i32 %94, 31
  %129 = lshr i32 %110, 31
  %130 = xor i32 %129, %128
  %131 = xor i32 %126, %128
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %45, align 1, !tbaa !2450
  %.v = select i1 %124, i64 34, i64 50
  %135 = add i64 %76, %.v
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC, align 8
  br i1 %124, label %block_4012d0, label %block_4012e0

block_4012e0:                                     ; preds = %block_4012ae
  %137 = load i64, i64* %80, align 8
  store i64 %137, i64* %RAX, align 8, !tbaa !2428
  %138 = add i64 %135, 8
  store i64 %138, i64* %PC, align 8
  %139 = load i64, i64* %84, align 8
  store i64 %139, i64* %RCX, align 8, !tbaa !2428
  %140 = add i64 %135, 11
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %RCX, align 8, !tbaa !2428
  %144 = shl nsw i64 %143, 2
  %145 = add i64 %144, %137
  %146 = add i64 %135, 14
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RDX, align 8, !tbaa !2428
  %150 = add i64 %77, -24
  %151 = add i64 %135, 18
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = add i64 %135, 20
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 %148, i32* %155, align 4
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %PC, align 8
  %158 = load i64, i64* %5, align 8, !tbaa !2428
  %159 = add i64 %158, 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RBP, align 8, !tbaa !2428
  store i64 %159, i64* %5, align 8, !tbaa !2428
  %162 = add i64 %156, 2
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %159 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  %165 = add i64 %158, 16
  store i64 %165, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400990_get_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #8 {
block_400990:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
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
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %PC, align 8
  %45 = load i64, i64* bitcast (%game_tree_type* @game_tree to i64*), align 8
  store i64 %45, i64* %RDI, align 8, !tbaa !2428
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -16
  %48 = add i64 %44, 12
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %49, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4009a8

block_4009cb:                                     ; preds = %block_4009a8
  %50 = add i64 %121, 26
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %123 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RAX, align 8, !tbaa !2428
  %53 = add i64 %121, 28
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  %57 = load i64, i64* %RSP, align 8
  %58 = add i64 %57, 16
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  %59 = icmp ugt i64 %57, -17
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %14, align 1, !tbaa !2432
  %61 = trunc i64 %58 to i32
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #10
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1, !tbaa !2446
  %67 = xor i64 %57, 16
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
  %76 = lshr i64 %57, 63
  %77 = xor i64 %74, %76
  %78 = add nuw nsw i64 %77, %74
  %79 = icmp eq i64 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %39, align 1, !tbaa !2450
  %81 = add i64 %121, 33
  store i64 %81, i64* %PC, align 8
  %82 = add i64 %57, 24
  %83 = inttoptr i64 %58 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %RBP, align 8, !tbaa !2428
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  %85 = add i64 %121, 34
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  %88 = add i64 %57, 32
  store i64 %88, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4009a8:                                     ; preds = %block_4009d0, %block_400990
  %89 = phi i64 [ %133, %block_4009d0 ], [ %.pre, %block_400990 ]
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -16
  %92 = add i64 %89, 4
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %95 = add i64 %94, 8
  %96 = add i64 %89, 8
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %RDI, align 8, !tbaa !2428
  %99 = add i64 %90, -8
  %100 = add i64 %89, 12
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %99 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %RSI, align 8, !tbaa !2428
  %103 = add i64 %89, -456
  %104 = add i64 %89, 17
  %105 = load i64, i64* %RSP, align 8, !tbaa !2428
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %RSP, align 8, !tbaa !2428
  store i64 %103, i64* %PC, align 8, !tbaa !2428
  %108 = tail call %struct.Memory* @sub_4007e0_equal_data(%struct.State* nonnull %0, i64 %103, %struct.Memory* %2)
  %109 = load i32, i32* %EAX, align 4
  %110 = load i64, i64* %PC, align 8
  %111 = icmp ne i32 %109, 0
  %112 = zext i1 %111 to i8
  %113 = xor i8 %112, -1
  store i8 %113, i8* %CL, align 1, !tbaa !2451
  %114 = and i8 %113, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %115 = zext i8 %114 to i32
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115) #10
  %117 = trunc i32 %116 to i8
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1, !tbaa !2446
  %119 = xor i8 %114, 1
  store i8 %119, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %120 = icmp eq i8 %119, 0
  %.v = select i1 %120, i64 23, i64 18
  %121 = add i64 %110, %.v
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -16
  br i1 %120, label %block_4009d0, label %block_4009cb

block_4009d0:                                     ; preds = %block_4009a8
  %124 = add i64 %121, 4
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RAX, align 8, !tbaa !2428
  %127 = add i64 %126, 24
  %128 = add i64 %121, 8
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = add i64 %121, 12
  store i64 %131, i64* %PC, align 8
  store i64 %130, i64* %125, align 8
  %132 = load i64, i64* %PC, align 8
  %133 = add i64 %132, -52
  store i64 %133, i64* %PC, align 8, !tbaa !2428
  br label %block_4009a8
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4017a4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4017a4:
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

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400650_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400650_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400650_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400620___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400620;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400620___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400620___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a8_putchar(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b0_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602090_malloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4017a0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4017a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4017a0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4017a0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401730___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401730___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401730___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401300;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
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
  %6 = tail call %struct.Memory* @sub_401300_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a0_free(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602098___isoc99_scanf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_scanf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @show_play() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400af0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @show_play_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400af0_show_play(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @get_good_move() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401150;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @get_good_move_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401150_get_good_move(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @make_wanted() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ff0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @make_wanted_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ff0_make_wanted(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @make_list() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ca0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @make_list_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ca0_make_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4017a4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #10
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
  %6 = tail call %struct.Memory* @sub_4017a4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @show_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @show_data_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4009f0_show_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @in_wanted() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400b80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @in_wanted_wrapper(%struct.State*, i64, %struct.Memory* readnone) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400b80_in_wanted(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dump_list() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dump_list_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008e0_dump_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @melt_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @melt_data_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400770_melt_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @get_real_move() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401290;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @get_real_move_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401290_get_real_move(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @next_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @next_data_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006d0_next_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @get_value() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400990;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @18, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @get_value_wrapper(%struct.State*, i64, %struct.Memory* readnone) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400990_get_value(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @where() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401230;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @19, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @where_wrapper(%struct.State*, i64, %struct.Memory* readnone) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401230_where(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @valid_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400860;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @20, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @valid_data_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400860_valid_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @make_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @21, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @make_data_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c00_make_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @get_winning_move() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4011e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @22, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @get_winning_move_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4011e0_get_winning_move(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @copy_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @23, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @copy_data_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400660_copy_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @show_list() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ab0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @24, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @show_list_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ab0_show_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @make_play() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @25, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @make_play_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400e90_make_play(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @26, void ()** nonnull @2) #10
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
  %6 = tail call %struct.Memory* @sub_4004f0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @equal_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @27, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @equal_data_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007e0_equal_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @show_move() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a70;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @28, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @show_move_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a70_show_move(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dump_play() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400930;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @29, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dump_play_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400930_dump_play(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  tail call void @callback_sub_401730___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #10 {
  tail call void @callback_sub_4017a0___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind }
attributes #6 = { noinline }
attributes #7 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { nounwind }
attributes #11 = { norecurse nounwind }

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
