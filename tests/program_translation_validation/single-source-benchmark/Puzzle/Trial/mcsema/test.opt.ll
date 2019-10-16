; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401360__rodata_type = type <{ [4 x i8], [18 x i8], [19 x i8], [19 x i8], [4 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%__bss_start_type = type <{ [16 x i8] }>
%fixed_type = type <{ [16 x i8] }>
%imb_type = type <{ [6724 x i8] }>
%n_type = type <{ [12 x i8] }>
%p_type = type <{ [26624 x i8] }>
%imr_type = type <{ [6736 x i8] }>
%rmr_type = type <{ [6736 x i8] }>
%z_type = type <{ [2064 x i8] }>
%puzzl_type = type <{ [2048 x i8] }>
%rmb_type = type <{ [6724 x i8] }>
%zi_type = type <{ [12 x i8] }>
%cellspace_type = type <{ [152 x i8] }>
%seed_type = type <{ [8 x i8] }>
%movesdone_type = type <{ [16 x i8] }>
%piecemax_type = type <{ [64 x i8] }>
%sortlist_type = type <{ [20004 x i8] }>
%value_type = type <{ [4 x i8] }>
%top_type = type <{ [4 x i8] }>
%floated_type = type <{ [4 x i8] }>
%pctr_type = type <{ [4 x i8] }>
%zr_type = type <{ [12 x i8] }>
%ima_type = type <{ [6724 x i8] }>
%littlest_type = type <{ [12 x i8] }>
%e_type = type <{ [1040 x i8] }>
%freelist_type = type <{ [16 x i8] }>
%w_type = type <{ [2064 x i8] }>
%permarray_type = type <{ [44 x i8] }>
%biggest_type = type <{ [4 x i8] }>
%rma_type = type <{ [6724 x i8] }>
%kount_type = type <{ [4 x i8] }>
%tree_type = type <{ [8 x i8] }>
%stack_type = type <{ [16 x i8] }>
%piececount_type = type <{ [16 x i8] }>
%class_type = type <{ [56 x i8] }>
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
@seg_401360__rodata = internal constant %seg_401360__rodata_type <{ [4 x i8] c"\01\00\02\00", [18 x i8] c"Error1 in Puzzle\0A\00", [19 x i8] c"Error2 in Puzzle.\0A\00", [19 x i8] c"Error3 in Puzzle.\0A\00", [4 x i8] c"%d\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400500_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004d0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer
@fixed = local_unnamed_addr global %fixed_type zeroinitializer
@imb = local_unnamed_addr global %imb_type zeroinitializer
@n = local_unnamed_addr global %n_type zeroinitializer
@p = global %p_type zeroinitializer
@imr = local_unnamed_addr global %imr_type zeroinitializer
@rmr = local_unnamed_addr global %rmr_type zeroinitializer
@z = local_unnamed_addr global %z_type zeroinitializer
@puzzl = global %puzzl_type zeroinitializer
@rmb = local_unnamed_addr global %rmb_type zeroinitializer
@zi = local_unnamed_addr global %zi_type zeroinitializer
@cellspace = local_unnamed_addr global %cellspace_type zeroinitializer
@seed = local_unnamed_addr global %seed_type zeroinitializer
@movesdone = local_unnamed_addr global %movesdone_type zeroinitializer
@piecemax = global %piecemax_type zeroinitializer
@sortlist = local_unnamed_addr global %sortlist_type zeroinitializer
@value = local_unnamed_addr global %value_type zeroinitializer
@top = local_unnamed_addr global %top_type zeroinitializer
@floated = local_unnamed_addr global %floated_type zeroinitializer
@pctr = local_unnamed_addr global %pctr_type zeroinitializer
@zr = local_unnamed_addr global %zr_type zeroinitializer
@ima = local_unnamed_addr global %ima_type zeroinitializer
@littlest = local_unnamed_addr global %littlest_type zeroinitializer
@e = local_unnamed_addr global %e_type zeroinitializer
@freelist = local_unnamed_addr global %freelist_type zeroinitializer
@w = local_unnamed_addr global %w_type zeroinitializer
@permarray = local_unnamed_addr global %permarray_type zeroinitializer
@biggest = local_unnamed_addr global %biggest_type zeroinitializer
@rma = local_unnamed_addr global %rma_type zeroinitializer
@kount = local_unnamed_addr global %kount_type zeroinitializer
@tree = local_unnamed_addr global %tree_type zeroinitializer
@stack = local_unnamed_addr global %stack_type zeroinitializer
@piececount = global %piececount_type zeroinitializer
@class = global %class_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004d0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401350___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4012e0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Remove_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Puzzle_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Place_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Trial_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Initrand_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Fit_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Rand_wrapper
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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400570_Fit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400570:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %13 = load i32, i32* %EDI, align 4
  %14 = add i64 %11, 6
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -12
  %18 = load i32, i32* %ESI, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400581

block_4005db:                                     ; preds = %block_4005b8
  %33 = add i64 %155, 5
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br label %block_4005e0

block_400595:                                     ; preds = %block_400581
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %34 = add i64 %199, 14
  store i64 %34, i64* %PC, align 8
  %35 = load i32, i32* %165, align 4
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 11
  store i64 %37, i64* %RCX, align 8, !tbaa !2428
  %38 = add i64 %37, ptrtoint (%p_type* @p to i64)
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  %39 = icmp ult i64 %38, ptrtoint (%p_type* @p to i64)
  %40 = icmp ult i64 %38, %37
  %41 = or i1 %39, %40
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %27, align 1, !tbaa !2432
  %43 = trunc i64 %38 to i32
  %44 = and i32 %43, 240
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #9
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  store i8 %48, i8* %28, align 1, !tbaa !2446
  %49 = xor i64 %38, ptrtoint (%p_type* @p to i64)
  %50 = lshr exact i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  store i8 %52, i8* %29, align 1, !tbaa !2447
  %53 = icmp eq i64 %38, 0
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %30, align 1, !tbaa !2448
  %55 = lshr i64 %38, 63
  %56 = trunc i64 %55 to i8
  store i8 %56, i8* %31, align 1, !tbaa !2449
  %57 = lshr i64 %36, 52
  %58 = and i64 %57, 1
  %59 = xor i64 %55, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %60 = xor i64 %55, %58
  %61 = add nuw nsw i64 %59, %60
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %32, align 1, !tbaa !2450
  %64 = add i64 %199, 25
  store i64 %64, i64* %PC, align 8
  %65 = load i32, i32* %160, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %RCX, align 8, !tbaa !2428
  %67 = shl nsw i64 %66, 2
  %68 = add i64 %67, %38
  %69 = add i64 %199, 29
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #9
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %77 = icmp eq i32 %71, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %30, align 1, !tbaa !2448
  %79 = lshr i32 %71, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v8 = select i1 %77, i64 75, i64 35
  %81 = add i64 %199, %.v8
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  br i1 %77, label %block_4005e0, label %block_4005b8

block_4005f3:                                     ; preds = %block_400581
  %82 = add i64 %157, -4
  %83 = add i64 %199, 7
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  store i32 1, i32* %84, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_4005fa

block_4005cf:                                     ; preds = %block_4005b8
  %85 = add i64 %157, -4
  %86 = add i64 %155, 7
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 0, i32* %87, align 4
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 36
  store i64 %89, i64* %PC, align 8, !tbaa !2428
  br label %block_4005fa

block_4005fa:                                     ; preds = %block_4005cf, %block_4005f3
  %90 = phi i64 [ %89, %block_4005cf ], [ %.pre7, %block_4005f3 ]
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -4
  %93 = add i64 %90, 3
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RAX, align 8, !tbaa !2428
  %97 = add i64 %90, 4
  store i64 %97, i64* %PC, align 8
  %98 = load i64, i64* %7, align 8, !tbaa !2428
  %99 = add i64 %98, 8
  %100 = inttoptr i64 %98 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RBP, align 8, !tbaa !2428
  store i64 %99, i64* %7, align 8, !tbaa !2428
  %102 = add i64 %90, 5
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %99 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %PC, align 8, !tbaa !2428
  %105 = add i64 %98, 16
  store i64 %105, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005b8:                                     ; preds = %block_400595
  %106 = add i64 %157, -12
  %107 = add i64 %81, 3
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RAX, align 8, !tbaa !2428
  %111 = add i64 %81, 6
  store i64 %111, i64* %PC, align 8
  %112 = load i32, i32* %160, align 4
  %113 = add i32 %112, %109
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  %115 = icmp ult i32 %113, %109
  %116 = icmp ult i32 %113, %112
  %117 = or i1 %115, %116
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %27, align 1, !tbaa !2432
  %119 = and i32 %113, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #9
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %28, align 1, !tbaa !2446
  %124 = xor i32 %112, %109
  %125 = xor i32 %124, %113
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %29, align 1, !tbaa !2447
  %129 = icmp eq i32 %113, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %30, align 1, !tbaa !2448
  %131 = lshr i32 %113, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %31, align 1, !tbaa !2449
  %133 = lshr i32 %109, 31
  %134 = lshr i32 %112, 31
  %135 = xor i32 %131, %133
  %136 = xor i32 %131, %134
  %137 = add nuw nsw i32 %135, %136
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %32, align 1, !tbaa !2450
  %140 = sext i32 %113 to i64
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = shl nsw i64 %140, 2
  %142 = add i64 %141, ptrtoint (%puzzl_type* @puzzl to i64)
  %143 = add i64 %81, 17
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %146 = and i32 %145, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #9
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %151 = icmp eq i32 %145, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %30, align 1, !tbaa !2448
  %153 = lshr i32 %145, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v9 = select i1 %151, i64 35, i64 23
  %155 = add i64 %81, %.v9
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  br i1 %151, label %block_4005db, label %block_4005cf

block_400581:                                     ; preds = %block_4005e0, %block_400570
  %156 = phi i64 [ %228, %block_4005e0 ], [ %.pre, %block_400570 ]
  %157 = load i64, i64* %RBP, align 8
  %158 = add i64 %157, -16
  %159 = add i64 %156, 3
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = add i64 %157, -8
  %164 = add i64 %156, 7
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = shl nsw i64 %167, 2
  %169 = add i64 %168, ptrtoint (%piecemax_type* @piecemax to i64)
  %170 = add i64 %156, 14
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = sub i32 %161, %172
  %174 = icmp ult i32 %161, %172
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %27, align 1, !tbaa !2432
  %176 = and i32 %173, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #9
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %28, align 1, !tbaa !2446
  %181 = xor i32 %172, %161
  %182 = xor i32 %181, %173
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %29, align 1, !tbaa !2447
  %186 = icmp eq i32 %173, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %30, align 1, !tbaa !2448
  %188 = lshr i32 %173, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %31, align 1, !tbaa !2449
  %190 = lshr i32 %161, 31
  %191 = lshr i32 %172, 31
  %192 = xor i32 %191, %190
  %193 = xor i32 %188, %190
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %32, align 1, !tbaa !2450
  %197 = icmp ne i8 %189, 0
  %198 = xor i1 %197, %195
  %.demorgan = or i1 %186, %198
  %.v = select i1 %.demorgan, i64 20, i64 114
  %199 = add i64 %156, %.v
  store i64 %199, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400595, label %block_4005f3

block_4005e0:                                     ; preds = %block_400595, %block_4005db
  %200 = phi i64 [ %81, %block_400595 ], [ %33, %block_4005db ]
  %201 = add i64 %200, 8
  store i64 %201, i64* %PC, align 8
  %202 = load i32, i32* %160, align 4
  %203 = add i32 %202, 1
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = icmp eq i32 %202, -1
  %206 = icmp eq i32 %203, 0
  %207 = or i1 %205, %206
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %27, align 1, !tbaa !2432
  %209 = and i32 %203, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #9
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %28, align 1, !tbaa !2446
  %214 = xor i32 %203, %202
  %215 = lshr i32 %214, 4
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %29, align 1, !tbaa !2447
  %218 = zext i1 %206 to i8
  store i8 %218, i8* %30, align 1, !tbaa !2448
  %219 = lshr i32 %203, 31
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %31, align 1, !tbaa !2449
  %221 = lshr i32 %202, 31
  %222 = xor i32 %219, %221
  %223 = add nuw nsw i32 %222, %219
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %32, align 1, !tbaa !2450
  %226 = add i64 %200, 14
  store i64 %226, i64* %PC, align 8
  store i32 %203, i32* %160, align 4
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, -109
  store i64 %228, i64* %PC, align 8, !tbaa !2428
  br label %block_400581
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400500_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400500:
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
  %13 = tail call %struct.Memory* @sub_400490_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400790_Trial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #6 {
block_400790:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = add i64 %7, -16
  %19 = load i32, i32* %EDI, align 4
  %20 = add i64 %10, 10
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* %PC, align 8
  %23 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RDI, align 8, !tbaa !2428
  %26 = icmp eq i32 %23, -1
  %27 = icmp eq i32 %24, 0
  %28 = or i1 %26, %27
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %12, align 1, !tbaa !2432
  %30 = and i32 %24, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #9
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %13, align 1, !tbaa !2446
  %35 = xor i32 %24, %23
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  store i8 %38, i8* %14, align 1, !tbaa !2447
  %39 = zext i1 %27 to i8
  store i8 %39, i8* %15, align 1, !tbaa !2448
  %40 = lshr i32 %24, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %16, align 1, !tbaa !2449
  %42 = lshr i32 %23, 31
  %43 = xor i32 %40, %42
  %44 = add nuw nsw i32 %43, %40
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %17, align 1, !tbaa !2450
  store i32 %24, i32* bitcast (%kount_type* @kount to i32*), align 8
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -12
  %49 = add i64 %22, 24
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  store i32 0, i32* %50, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4007b3

block_4007bd:                                     ; preds = %block_4007b3
  %51 = add i64 %142, 4
  store i64 %51, i64* %PC, align 8
  %52 = load i32, i32* %117, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = shl nsw i64 %53, 2
  %55 = add i64 %54, ptrtoint (%class_type* @class to i64)
  %56 = add i64 %142, 12
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  %60 = shl nsw i64 %59, 2
  %61 = add i64 %60, ptrtoint (%piececount_type* @piececount to i64)
  %62 = add i64 %142, 20
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  store i8 0, i8* %12, align 1, !tbaa !2432
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #9
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %70 = icmp eq i32 %64, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %15, align 1, !tbaa !2448
  %72 = lshr i32 %64, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v18 = select i1 %70, i64 120, i64 26
  %74 = add i64 %142, %.v18
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  br i1 %70, label %block_400835, label %block_4007d7

block_400835:                                     ; preds = %block_400830, %block_4007bd
  %75 = phi i64 [ %114, %block_4007bd ], [ %.pre16, %block_400830 ]
  %76 = phi i64 [ %74, %block_4007bd ], [ %144, %block_400830 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4007bd ], [ %MEMORY.3, %block_400830 ]
  %77 = add i64 %75, -12
  %78 = add i64 %76, 8
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RAX, align 8, !tbaa !2428
  %83 = icmp eq i32 %80, -1
  %84 = icmp eq i32 %81, 0
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %12, align 1, !tbaa !2432
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %13, align 1, !tbaa !2446
  %92 = xor i32 %81, %80
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %14, align 1, !tbaa !2447
  %96 = zext i1 %84 to i8
  store i8 %96, i8* %15, align 1, !tbaa !2448
  %97 = lshr i32 %81, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %16, align 1, !tbaa !2449
  %99 = lshr i32 %80, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %97
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %17, align 1, !tbaa !2450
  %104 = add i64 %76, 14
  store i64 %104, i64* %PC, align 8
  store i32 %81, i32* %79, align 4
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, -144
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  br label %block_4007b3

block_400814:                                     ; preds = %block_4007eb, %block_40080a
  %107 = phi i64 [ %272, %block_40080a ], [ %231, %block_4007eb ]
  %108 = add i64 %232, -4
  %109 = add i64 %107, 7
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 1, i32* %110, align 4
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, 52
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  br label %block_40084f

block_4007b3:                                     ; preds = %block_400835, %block_400790
  %113 = phi i64 [ %.pre, %block_400790 ], [ %106, %block_400835 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400790 ], [ %MEMORY.0, %block_400835 ]
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -12
  %116 = add i64 %113, 4
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, -12
  %120 = icmp ult i32 %118, 12
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %12, align 1, !tbaa !2432
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #9
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %13, align 1, !tbaa !2446
  %127 = xor i32 %119, %118
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %14, align 1, !tbaa !2447
  %131 = icmp eq i32 %119, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %15, align 1, !tbaa !2448
  %133 = lshr i32 %119, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %16, align 1, !tbaa !2449
  %135 = lshr i32 %118, 31
  %136 = xor i32 %133, %135
  %137 = add nuw nsw i32 %136, %135
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %17, align 1, !tbaa !2450
  %140 = icmp ne i8 %134, 0
  %141 = xor i1 %140, %138
  %.demorgan = or i1 %131, %141
  %.v = select i1 %.demorgan, i64 10, i64 149
  %142 = add i64 %113, %.v
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4007bd, label %block_400848

block_400830:                                     ; preds = %block_400820, %block_4007d7
  %143 = phi i64 [ %258, %block_4007d7 ], [ %293, %block_400820 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_4007d7 ], [ %291, %block_400820 ]
  %144 = add i64 %143, 5
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  %.pre16 = load i64, i64* %RBP, align 8
  br label %block_400835

block_40084f:                                     ; preds = %block_400848, %block_400814
  %145 = phi i64 [ %.pre17, %block_400848 ], [ %112, %block_400814 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_400848 ], [ %219, %block_400814 ]
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -4
  %148 = add i64 %145, 3
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = load i64, i64* %RSP, align 8
  %153 = add i64 %152, 16
  store i64 %153, i64* %RSP, align 8, !tbaa !2428
  %154 = icmp ugt i64 %152, -17
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %12, align 1, !tbaa !2432
  %156 = trunc i64 %153 to i32
  %157 = and i32 %156, 255
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157) #9
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %13, align 1, !tbaa !2446
  %162 = xor i64 %152, 16
  %163 = xor i64 %162, %153
  %164 = lshr i64 %163, 4
  %165 = trunc i64 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %14, align 1, !tbaa !2447
  %167 = icmp eq i64 %153, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %15, align 1, !tbaa !2448
  %169 = lshr i64 %153, 63
  %170 = trunc i64 %169 to i8
  store i8 %170, i8* %16, align 1, !tbaa !2449
  %171 = lshr i64 %152, 63
  %172 = xor i64 %169, %171
  %173 = add nuw nsw i64 %172, %169
  %174 = icmp eq i64 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %17, align 1, !tbaa !2450
  %176 = add i64 %145, 8
  store i64 %176, i64* %PC, align 8
  %177 = add i64 %152, 24
  %178 = inttoptr i64 %153 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RBP, align 8, !tbaa !2428
  store i64 %177, i64* %RSP, align 8, !tbaa !2428
  %180 = add i64 %145, 9
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %177 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %PC, align 8, !tbaa !2428
  %183 = add i64 %152, 32
  store i64 %183, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_4007eb:                                     ; preds = %block_4007d7
  %184 = load i64, i64* %RBP, align 8
  %185 = add i64 %184, -12
  %186 = add i64 %258, 3
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  %190 = add i64 %184, -8
  %191 = add i64 %258, 6
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RSI, align 8, !tbaa !2428
  %195 = add i64 %258, -491
  %196 = add i64 %258, 11
  %197 = load i64, i64* %RSP, align 8, !tbaa !2428
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %RSP, align 8, !tbaa !2428
  store i64 %195, i64* %PC, align 8, !tbaa !2428
  %200 = tail call %struct.Memory* @sub_400600_Place(%struct.State* nonnull %0, i64 %195, %struct.Memory* %MEMORY.2)
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -16
  %203 = load i32, i32* %EAX, align 4
  %204 = load i64, i64* %PC, align 8
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %202 to i32*
  store i32 %203, i32* %206, align 4
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -16
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RDI, align 8, !tbaa !2428
  %214 = add i64 %209, -105
  %215 = add i64 %209, 8
  %216 = load i64, i64* %RSP, align 8, !tbaa !2428
  %217 = add i64 %216, -8
  %218 = inttoptr i64 %217 to i64*
  store i64 %215, i64* %218, align 8
  store i64 %217, i64* %RSP, align 8, !tbaa !2428
  store i64 %214, i64* %PC, align 8, !tbaa !2428
  %219 = tail call %struct.Memory* @sub_400790_Trial(%struct.State* nonnull %0, i64 %214, %struct.Memory* %MEMORY.2)
  %220 = load i32, i32* %EAX, align 4
  %221 = load i64, i64* %PC, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %222 = and i32 %220, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #9
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %227 = icmp eq i32 %220, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %15, align 1, !tbaa !2448
  %229 = lshr i32 %220, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v20 = select i1 %227, i64 9, i64 19
  %231 = add i64 %221, %.v20
  store i64 %231, i64* %PC, align 8, !tbaa !2428
  %232 = load i64, i64* %RBP, align 8
  br i1 %227, label %block_40080a, label %block_400814

block_4007d7:                                     ; preds = %block_4007bd
  %233 = add i64 %74, 3
  store i64 %233, i64* %PC, align 8
  %234 = load i32, i32* %117, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RDI, align 8, !tbaa !2428
  %236 = add i64 %114, -8
  %237 = add i64 %74, 6
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RSI, align 8, !tbaa !2428
  %241 = add i64 %74, -615
  %242 = add i64 %74, 11
  %243 = load i64, i64* %RSP, align 8, !tbaa !2428
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %RSP, align 8, !tbaa !2428
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  %246 = tail call %struct.Memory* @sub_400570_Fit(%struct.State* nonnull %0, i64 %241, %struct.Memory* %MEMORY.2)
  %247 = load i32, i32* %EAX, align 4
  %248 = load i64, i64* %PC, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %249 = and i32 %247, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249) #9
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %254 = icmp eq i32 %247, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %15, align 1, !tbaa !2448
  %256 = lshr i32 %247, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v19 = select i1 %254, i64 78, i64 9
  %258 = add i64 %248, %.v19
  store i64 %258, i64* %PC, align 8, !tbaa !2428
  br i1 %254, label %block_400830, label %block_4007eb

block_40080a:                                     ; preds = %block_4007eb
  %259 = add i64 %232, -16
  %260 = add i64 %231, 4
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  store i8 0, i8* %12, align 1, !tbaa !2432
  %263 = and i32 %262, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263) #9
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %268 = icmp eq i32 %262, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %15, align 1, !tbaa !2448
  %270 = lshr i32 %262, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v21 = select i1 %268, i64 10, i64 22
  %272 = add i64 %231, %.v21
  store i64 %272, i64* %PC, align 8, !tbaa !2428
  br i1 %268, label %block_400814, label %block_400820

block_400848:                                     ; preds = %block_4007b3
  %273 = add i64 %114, -4
  %274 = add i64 %142, 7
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  store i32 0, i32* %275, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_40084f

block_400820:                                     ; preds = %block_40080a
  %276 = add i64 %232, -12
  %277 = add i64 %272, 3
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RDI, align 8, !tbaa !2428
  %281 = add i64 %232, -8
  %282 = add i64 %272, 6
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RSI, align 8, !tbaa !2428
  %286 = add i64 %272, -304
  %287 = add i64 %272, 11
  %288 = load i64, i64* %RSP, align 8, !tbaa !2428
  %289 = add i64 %288, -8
  %290 = inttoptr i64 %289 to i64*
  store i64 %287, i64* %290, align 8
  store i64 %289, i64* %RSP, align 8, !tbaa !2428
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  %291 = tail call %struct.Memory* @sub_4006f0_Remove(%struct.State* nonnull %0, i64 %286, %struct.Memory* %219)
  %292 = load i64, i64* %PC, align 8
  %293 = add i64 %292, 5
  store i64 %293, i64* %PC, align 8, !tbaa !2428
  br label %block_400830
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400600_Place(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400600:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %13 = load i32, i32* %EDI, align 4
  %14 = add i64 %11, 6
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -12
  %18 = load i32, i32* %ESI, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400611

block_4006bd:                                     ; preds = %block_4006ab
  %33 = add i64 %180, 3
  store i64 %33, i64* %PC, align 8
  %34 = load i32, i32* %272, align 4
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = add i64 %269, -4
  %37 = add i64 %180, 6
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i32*
  store i32 %34, i32* %38, align 4
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 31
  store i64 %40, i64* %PC, align 8, !tbaa !2428
  br label %block_4006e2

block_40065c:                                     ; preds = %block_400625, %block_400648
  %41 = phi i64 [ %316, %block_400625 ], [ %.pre21, %block_400648 ]
  %42 = phi i64 [ %267, %block_400625 ], [ %.pre20, %block_400648 ]
  %43 = add i64 %41, -16
  %44 = add i64 %42, 8
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %RAX, align 8, !tbaa !2428
  %49 = icmp eq i32 %46, -1
  %50 = icmp eq i32 %47, 0
  %51 = or i1 %49, %50
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %27, align 1, !tbaa !2432
  %53 = and i32 %47, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #9
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %28, align 1, !tbaa !2446
  %58 = xor i32 %47, %46
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %29, align 1, !tbaa !2447
  %62 = zext i1 %50 to i8
  store i8 %62, i8* %30, align 1, !tbaa !2448
  %63 = lshr i32 %47, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %31, align 1, !tbaa !2449
  %65 = lshr i32 %46, 31
  %66 = xor i32 %63, %65
  %67 = add nuw nsw i32 %66, %63
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %32, align 1, !tbaa !2450
  %70 = add i64 %42, 14
  store i64 %70, i64* %PC, align 8
  store i32 %47, i32* %45, align 4
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, -89
  store i64 %72, i64* %PC, align 8, !tbaa !2428
  br label %block_400611

block_4006db:                                     ; preds = %block_40069e
  %73 = add i64 %269, -4
  %74 = add i64 %298, 7
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  store i32 0, i32* %75, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_4006e2

block_4006c8:                                     ; preds = %block_4006ab
  %76 = add i64 %180, 8
  store i64 %76, i64* %PC, align 8
  %77 = load i32, i32* %272, align 4
  %78 = add i32 %77, 1
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RAX, align 8, !tbaa !2428
  %80 = icmp eq i32 %77, -1
  %81 = icmp eq i32 %78, 0
  %82 = or i1 %80, %81
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %27, align 1, !tbaa !2432
  %84 = and i32 %78, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #9
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %28, align 1, !tbaa !2446
  %89 = xor i32 %78, %77
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %29, align 1, !tbaa !2447
  %93 = zext i1 %81 to i8
  store i8 %93, i8* %30, align 1, !tbaa !2448
  %94 = lshr i32 %78, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %31, align 1, !tbaa !2449
  %96 = lshr i32 %77, 31
  %97 = xor i32 %94, %96
  %98 = add nuw nsw i32 %97, %94
  %99 = icmp eq i32 %98, 2
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %32, align 1, !tbaa !2450
  %101 = add i64 %180, 14
  store i64 %101, i64* %PC, align 8
  store i32 %78, i32* %272, align 4
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, -56
  store i64 %103, i64* %PC, align 8, !tbaa !2428
  br label %block_40069e

block_40066f:                                     ; preds = %block_400611
  %104 = add i64 %358, 4
  store i64 %104, i64* %PC, align 8
  %105 = load i32, i32* %324, align 4
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %RAX, align 8, !tbaa !2428
  %107 = shl nsw i64 %106, 2
  %108 = add i64 %107, ptrtoint (%class_type* @class to i64)
  %109 = add i64 %358, 12
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = shl nsw i64 %112, 2
  %114 = add i64 %113, ptrtoint (%piececount_type* @piececount to i64)
  %115 = add i64 %358, 19
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, -1
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RCX, align 8, !tbaa !2428
  %120 = icmp eq i32 %117, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %27, align 1, !tbaa !2432
  %122 = and i32 %118, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #9
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %28, align 1, !tbaa !2446
  %127 = xor i32 %118, %117
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %29, align 1, !tbaa !2447
  %131 = icmp eq i32 %118, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %30, align 1, !tbaa !2448
  %133 = lshr i32 %118, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %31, align 1, !tbaa !2449
  %135 = lshr i32 %117, 31
  %136 = xor i32 %133, %135
  %137 = add nuw nsw i32 %136, %135
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %32, align 1, !tbaa !2450
  %140 = add i64 %358, 26
  store i64 %140, i64* %PC, align 8
  %141 = load i32, i32* %324, align 4
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %RAX, align 8, !tbaa !2428
  %143 = shl nsw i64 %142, 2
  %144 = add i64 %143, ptrtoint (%class_type* @class to i64)
  %145 = add i64 %358, 34
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = shl nsw i64 %148, 2
  %150 = add i64 %149, ptrtoint (%piececount_type* @piececount to i64)
  %151 = add i64 %358, 41
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i32*
  store i32 %118, i32* %152, align 4
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -12
  %155 = load i64, i64* %PC, align 8
  %156 = add i64 %155, 3
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RCX, align 8, !tbaa !2428
  %160 = add i64 %153, -16
  %161 = add i64 %155, 6
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %158, i32* %162, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_40069e

block_4006ab:                                     ; preds = %block_40069e
  %163 = add i64 %298, 4
  store i64 %163, i64* %PC, align 8
  %164 = load i32, i32* %272, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = shl nsw i64 %165, 2
  %167 = add i64 %166, ptrtoint (%puzzl_type* @puzzl to i64)
  %168 = add i64 %298, 12
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %171 = and i32 %170, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #9
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %176 = icmp eq i32 %170, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %30, align 1, !tbaa !2448
  %178 = lshr i32 %170, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v = select i1 %176, i64 18, i64 29
  %180 = add i64 %298, %.v
  store i64 %180, i64* %PC, align 8, !tbaa !2428
  br i1 %176, label %block_4006bd, label %block_4006c8

block_400648:                                     ; preds = %block_400625
  %181 = add i64 %316, -12
  %182 = add i64 %267, 3
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = add i64 %267, 6
  store i64 %186, i64* %PC, align 8
  %187 = load i32, i32* %319, align 4
  %188 = add i32 %187, %184
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX, align 8, !tbaa !2428
  %190 = icmp ult i32 %188, %184
  %191 = icmp ult i32 %188, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %27, align 1, !tbaa !2432
  %194 = and i32 %188, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #9
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %28, align 1, !tbaa !2446
  %199 = xor i32 %187, %184
  %200 = xor i32 %199, %188
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %29, align 1, !tbaa !2447
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %30, align 1, !tbaa !2448
  %206 = lshr i32 %188, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %31, align 1, !tbaa !2449
  %208 = lshr i32 %184, 31
  %209 = lshr i32 %187, 31
  %210 = xor i32 %206, %208
  %211 = xor i32 %206, %209
  %212 = add nuw nsw i32 %210, %211
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %32, align 1, !tbaa !2450
  %215 = sext i32 %188 to i64
  store i64 %215, i64* %RCX, align 8, !tbaa !2428
  %216 = shl nsw i64 %215, 2
  %217 = add i64 %216, ptrtoint (%puzzl_type* @puzzl to i64)
  %218 = add i64 %267, 20
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  store i32 1, i32* %219, align 4
  %.pre20 = load i64, i64* %PC, align 8
  %.pre21 = load i64, i64* %RBP, align 8
  br label %block_40065c

block_400625:                                     ; preds = %block_400611
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %220 = add i64 %358, 14
  store i64 %220, i64* %PC, align 8
  %221 = load i32, i32* %324, align 4
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 11
  store i64 %223, i64* %RCX, align 8, !tbaa !2428
  %224 = add i64 %223, ptrtoint (%p_type* @p to i64)
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = icmp ult i64 %224, ptrtoint (%p_type* @p to i64)
  %226 = icmp ult i64 %224, %223
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %27, align 1, !tbaa !2432
  %229 = trunc i64 %224 to i32
  %230 = and i32 %229, 240
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #9
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %28, align 1, !tbaa !2446
  %235 = xor i64 %224, ptrtoint (%p_type* @p to i64)
  %236 = lshr exact i64 %235, 4
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %29, align 1, !tbaa !2447
  %239 = icmp eq i64 %224, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %30, align 1, !tbaa !2448
  %241 = lshr i64 %224, 63
  %242 = trunc i64 %241 to i8
  store i8 %242, i8* %31, align 1, !tbaa !2449
  %243 = lshr i64 %222, 52
  %244 = and i64 %243, 1
  %245 = xor i64 %241, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %246 = xor i64 %241, %244
  %247 = add nuw nsw i64 %245, %246
  %248 = icmp eq i64 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %32, align 1, !tbaa !2450
  %250 = add i64 %358, 25
  store i64 %250, i64* %PC, align 8
  %251 = load i32, i32* %319, align 4
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %RCX, align 8, !tbaa !2428
  %253 = shl nsw i64 %252, 2
  %254 = add i64 %253, %224
  %255 = add i64 %358, 29
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %258 = and i32 %257, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258) #9
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %263 = icmp eq i32 %257, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %30, align 1, !tbaa !2448
  %265 = lshr i32 %257, 31
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v27 = select i1 %263, i64 55, i64 35
  %267 = add i64 %358, %.v27
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br i1 %263, label %block_40065c, label %block_400648

block_40069e:                                     ; preds = %block_40066f, %block_4006c8
  %268 = phi i64 [ %.pre22, %block_40066f ], [ %103, %block_4006c8 ]
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -16
  %271 = add i64 %268, 7
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, -511
  %275 = icmp ult i32 %273, 511
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %27, align 1, !tbaa !2432
  %277 = and i32 %274, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277) #9
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %28, align 1, !tbaa !2446
  %282 = xor i32 %273, 16
  %283 = xor i32 %282, %274
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %29, align 1, !tbaa !2447
  %287 = icmp eq i32 %274, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %30, align 1, !tbaa !2448
  %289 = lshr i32 %274, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %31, align 1, !tbaa !2449
  %291 = lshr i32 %273, 31
  %292 = xor i32 %289, %291
  %293 = add nuw nsw i32 %292, %291
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %32, align 1, !tbaa !2450
  %296 = icmp ne i8 %290, 0
  %297 = xor i1 %296, %294
  %.demorgan24 = or i1 %287, %297
  %.v25 = select i1 %.demorgan24, i64 13, i64 61
  %298 = add i64 %268, %.v25
  store i64 %298, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan24, label %block_4006ab, label %block_4006db

block_4006e2:                                     ; preds = %block_4006db, %block_4006bd
  %299 = phi i64 [ %.pre23, %block_4006db ], [ %40, %block_4006bd ]
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -4
  %302 = add i64 %299, 3
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX, align 8, !tbaa !2428
  %306 = add i64 %299, 4
  store i64 %306, i64* %PC, align 8
  %307 = load i64, i64* %7, align 8, !tbaa !2428
  %308 = add i64 %307, 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RBP, align 8, !tbaa !2428
  store i64 %308, i64* %7, align 8, !tbaa !2428
  %311 = add i64 %299, 5
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %308 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %PC, align 8, !tbaa !2428
  %314 = add i64 %307, 16
  store i64 %314, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400611:                                     ; preds = %block_40065c, %block_400600
  %315 = phi i64 [ %72, %block_40065c ], [ %.pre, %block_400600 ]
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -16
  %318 = add i64 %315, 3
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = add i64 %316, -8
  %323 = add i64 %315, 7
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RCX, align 8, !tbaa !2428
  %327 = shl nsw i64 %326, 2
  %328 = add i64 %327, ptrtoint (%piecemax_type* @piecemax to i64)
  %329 = add i64 %315, 14
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = sub i32 %320, %331
  %333 = icmp ult i32 %320, %331
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %27, align 1, !tbaa !2432
  %335 = and i32 %332, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #9
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %28, align 1, !tbaa !2446
  %340 = xor i32 %331, %320
  %341 = xor i32 %340, %332
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %29, align 1, !tbaa !2447
  %345 = icmp eq i32 %332, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %30, align 1, !tbaa !2448
  %347 = lshr i32 %332, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %31, align 1, !tbaa !2449
  %349 = lshr i32 %320, 31
  %350 = lshr i32 %331, 31
  %351 = xor i32 %350, %349
  %352 = xor i32 %347, %349
  %353 = add nuw nsw i32 %352, %351
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %32, align 1, !tbaa !2450
  %356 = icmp ne i8 %348, 0
  %357 = xor i1 %356, %354
  %.demorgan = or i1 %345, %357
  %.v26 = select i1 %.demorgan, i64 20, i64 94
  %358 = add i64 %315, %.v26
  store i64 %358, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400625, label %block_40066f
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006f0_Remove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4006f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %12 = add i64 %8, -12
  %13 = load i32, i32* %EDI, align 4
  %14 = add i64 %11, 6
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -8
  %18 = load i32, i32* %ESI, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -12
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400701

block_40075f:                                     ; preds = %block_400701
  %33 = add i64 %255, 4
  store i64 %33, i64* %PC, align 8
  %34 = load i32, i32* %221, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = shl nsw i64 %35, 2
  %37 = add i64 %36, ptrtoint (%class_type* @class to i64)
  %38 = add i64 %255, 12
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %RAX, align 8, !tbaa !2428
  %42 = shl nsw i64 %41, 2
  %43 = add i64 %42, ptrtoint (%piececount_type* @piececount to i64)
  %44 = add i64 %255, 19
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %RCX, align 8, !tbaa !2428
  %49 = icmp eq i32 %46, -1
  %50 = icmp eq i32 %47, 0
  %51 = or i1 %49, %50
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %27, align 1, !tbaa !2432
  %53 = and i32 %47, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #9
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %28, align 1, !tbaa !2446
  %58 = xor i32 %47, %46
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %29, align 1, !tbaa !2447
  %62 = zext i1 %50 to i8
  store i8 %62, i8* %30, align 1, !tbaa !2448
  %63 = lshr i32 %47, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %31, align 1, !tbaa !2449
  %65 = lshr i32 %46, 31
  %66 = xor i32 %63, %65
  %67 = add nuw nsw i32 %66, %63
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %32, align 1, !tbaa !2450
  %70 = add i64 %255, 26
  store i64 %70, i64* %PC, align 8
  %71 = load i32, i32* %221, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = shl nsw i64 %72, 2
  %74 = add i64 %73, ptrtoint (%class_type* @class to i64)
  %75 = add i64 %255, 34
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RAX, align 8, !tbaa !2428
  %79 = shl nsw i64 %78, 2
  %80 = add i64 %79, ptrtoint (%piececount_type* @piececount to i64)
  %81 = add i64 %255, 41
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 %47, i32* %82, align 4
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %PC, align 8
  %85 = load i64, i64* %7, align 8, !tbaa !2428
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RBP, align 8, !tbaa !2428
  store i64 %86, i64* %7, align 8, !tbaa !2428
  %89 = add i64 %83, 2
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %86 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  %92 = add i64 %85, 16
  store i64 %92, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400715:                                     ; preds = %block_400701
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %93 = add i64 %255, 14
  store i64 %93, i64* %PC, align 8
  %94 = load i32, i32* %221, align 4
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 11
  store i64 %96, i64* %RCX, align 8, !tbaa !2428
  %97 = add i64 %96, ptrtoint (%p_type* @p to i64)
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = icmp ult i64 %97, ptrtoint (%p_type* @p to i64)
  %99 = icmp ult i64 %97, %96
  %100 = or i1 %98, %99
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %27, align 1, !tbaa !2432
  %102 = trunc i64 %97 to i32
  %103 = and i32 %102, 240
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #9
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %28, align 1, !tbaa !2446
  %108 = xor i64 %97, ptrtoint (%p_type* @p to i64)
  %109 = lshr exact i64 %108, 4
  %110 = trunc i64 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %29, align 1, !tbaa !2447
  %112 = icmp eq i64 %97, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %30, align 1, !tbaa !2448
  %114 = lshr i64 %97, 63
  %115 = trunc i64 %114 to i8
  store i8 %115, i8* %31, align 1, !tbaa !2449
  %116 = lshr i64 %95, 52
  %117 = and i64 %116, 1
  %118 = xor i64 %114, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %119 = xor i64 %114, %117
  %120 = add nuw nsw i64 %118, %119
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %32, align 1, !tbaa !2450
  %123 = add i64 %255, 25
  store i64 %123, i64* %PC, align 8
  %124 = load i32, i32* %216, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %RCX, align 8, !tbaa !2428
  %126 = shl nsw i64 %125, 2
  %127 = add i64 %126, %97
  %128 = add i64 %255, 29
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %136 = icmp eq i32 %130, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %30, align 1, !tbaa !2448
  %138 = lshr i32 %130, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v10 = select i1 %136, i64 55, i64 35
  %140 = add i64 %255, %.v10
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  br i1 %136, label %block_40074c, label %block_400738

block_40074c:                                     ; preds = %block_400738, %block_400715
  %141 = phi i64 [ %.pre9, %block_400738 ], [ %213, %block_400715 ]
  %142 = phi i64 [ %.pre8, %block_400738 ], [ %140, %block_400715 ]
  %143 = add i64 %141, -12
  %144 = add i64 %142, 8
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
  store i8 %152, i8* %27, align 1, !tbaa !2432
  %153 = and i32 %147, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #9
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %28, align 1, !tbaa !2446
  %158 = xor i32 %147, %146
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %29, align 1, !tbaa !2447
  %162 = zext i1 %150 to i8
  store i8 %162, i8* %30, align 1, !tbaa !2448
  %163 = lshr i32 %147, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %31, align 1, !tbaa !2449
  %165 = lshr i32 %146, 31
  %166 = xor i32 %163, %165
  %167 = add nuw nsw i32 %166, %163
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %32, align 1, !tbaa !2450
  %170 = add i64 %142, 14
  store i64 %170, i64* %PC, align 8
  store i32 %147, i32* %145, align 4
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, -89
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  br label %block_400701

block_400738:                                     ; preds = %block_400715
  %173 = add i64 %213, -8
  %174 = add i64 %140, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = add i64 %140, 6
  store i64 %178, i64* %PC, align 8
  %179 = load i32, i32* %216, align 4
  %180 = add i32 %179, %176
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = icmp ult i32 %180, %176
  %183 = icmp ult i32 %180, %179
  %184 = or i1 %182, %183
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %27, align 1, !tbaa !2432
  %186 = and i32 %180, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #9
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %28, align 1, !tbaa !2446
  %191 = xor i32 %179, %176
  %192 = xor i32 %191, %180
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %29, align 1, !tbaa !2447
  %196 = icmp eq i32 %180, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %30, align 1, !tbaa !2448
  %198 = lshr i32 %180, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %31, align 1, !tbaa !2449
  %200 = lshr i32 %176, 31
  %201 = lshr i32 %179, 31
  %202 = xor i32 %198, %200
  %203 = xor i32 %198, %201
  %204 = add nuw nsw i32 %202, %203
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %32, align 1, !tbaa !2450
  %207 = sext i32 %180 to i64
  store i64 %207, i64* %RCX, align 8, !tbaa !2428
  %208 = shl nsw i64 %207, 2
  %209 = add i64 %208, ptrtoint (%puzzl_type* @puzzl to i64)
  %210 = add i64 %140, 20
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  store i32 0, i32* %211, align 4
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %block_40074c

block_400701:                                     ; preds = %block_40074c, %block_4006f0
  %212 = phi i64 [ %172, %block_40074c ], [ %.pre, %block_4006f0 ]
  %213 = load i64, i64* %RBP, align 8
  %214 = add i64 %213, -12
  %215 = add i64 %212, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = add i64 %213, -4
  %220 = add i64 %212, 7
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %RCX, align 8, !tbaa !2428
  %224 = shl nsw i64 %223, 2
  %225 = add i64 %224, ptrtoint (%piecemax_type* @piecemax to i64)
  %226 = add i64 %212, 14
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sub i32 %217, %228
  %230 = icmp ult i32 %217, %228
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %27, align 1, !tbaa !2432
  %232 = and i32 %229, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232) #9
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %28, align 1, !tbaa !2446
  %237 = xor i32 %228, %217
  %238 = xor i32 %237, %229
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %29, align 1, !tbaa !2447
  %242 = icmp eq i32 %229, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %30, align 1, !tbaa !2448
  %244 = lshr i32 %229, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %31, align 1, !tbaa !2449
  %246 = lshr i32 %217, 31
  %247 = lshr i32 %228, 31
  %248 = xor i32 %247, %246
  %249 = xor i32 %244, %246
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %32, align 1, !tbaa !2450
  %253 = icmp ne i8 %245, 0
  %254 = xor i1 %253, %251
  %.demorgan = or i1 %242, %254
  %.v = select i1 %.demorgan, i64 20, i64 94
  %255 = add i64 %212, %.v
  store i64 %255, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400715, label %block_40075f
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401354__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401354:
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
define %struct.Memory* @sub_4012e0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012e0:
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
  %67 = tail call %struct.Memory* @sub_4003e0__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401336, label %block_401316

block_401336.loopexit:                            ; preds = %block_401320
  br label %block_401336

block_401336:                                     ; preds = %block_401336.loopexit, %block_4012e0
  %81 = phi i64 [ %80, %block_4012e0 ], [ %179, %block_401336.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4012e0 ], [ %149, %block_401336.loopexit ]
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

block_401316:                                     ; preds = %block_4012e0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401320

block_401320:                                     ; preds = %block_401320, %block_401316
  %134 = phi i64 [ 0, %block_401316 ], [ %152, %block_401320 ]
  %135 = phi i64 [ %133, %block_401316 ], [ %179, %block_401320 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401316 ], [ %149, %block_401320 ]
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
  br i1 %169, label %block_401336.loopexit, label %block_401320
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400460:
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
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #9
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
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400488, label %block_400471

block_400471:                                     ; preds = %block_400460
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br label %block_400488

block_400488:                                     ; preds = %block_400471, %block_400460
  %21 = phi i64 [ %20, %block_400471 ], [ %19, %block_400460 ]
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
define %struct.Memory* @sub_400490_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400490:
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
  br i1 %29, label %block_4004c8, label %block_4004b3

block_4004b3:                                     ; preds = %block_400490
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_4004c8

block_4004c8:                                     ; preds = %block_4004b3, %block_400490
  %35 = phi i64 [ %34, %block_4004b3 ], [ %33, %block_400490 ]
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
define %struct.Memory* @sub_4012a0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012a0:
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
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #9
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
  %38 = add i64 %5, -12
  %39 = add i64 %8, 14
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  store i32 0, i32* %40, align 4
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -8
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 7
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 0, i32* %45, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012b6

block_4012d3:                                     ; preds = %block_4012b6
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP, align 8
  %47 = add i64 %46, 16
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  %48 = icmp ugt i64 %46, -17
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %12, align 1, !tbaa !2432
  %50 = trunc i64 %47 to i32
  %51 = and i32 %50, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #9
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  store i8 %55, i8* %19, align 1, !tbaa !2446
  %56 = xor i64 %46, 16
  %57 = xor i64 %56, %47
  %58 = lshr i64 %57, 4
  %59 = trunc i64 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, i8* %25, align 1, !tbaa !2447
  %61 = icmp eq i64 %47, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %28, align 1, !tbaa !2448
  %63 = lshr i64 %47, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %31, align 1, !tbaa !2449
  %65 = lshr i64 %46, 63
  %66 = xor i64 %63, %65
  %67 = add nuw nsw i64 %66, %63
  %68 = icmp eq i64 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %37, align 1, !tbaa !2450
  %70 = add i64 %107, 7
  store i64 %70, i64* %PC, align 8
  %71 = add i64 %46, 24
  %72 = inttoptr i64 %47 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RBP, align 8, !tbaa !2428
  store i64 %71, i64* %RSP, align 8, !tbaa !2428
  %74 = add i64 %107, 8
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %71 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %PC, align 8, !tbaa !2428
  %77 = add i64 %46, 32
  store i64 %77, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4012b6:                                     ; preds = %block_4012c0, %block_4012a0
  %78 = phi i64 [ %.pre, %block_4012a0 ], [ %145, %block_4012c0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4012a0 ], [ %113, %block_4012c0 ]
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -8
  %81 = add i64 %78, 4
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, -100
  %85 = icmp ult i32 %83, 100
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %12, align 1, !tbaa !2432
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %19, align 1, !tbaa !2446
  %92 = xor i32 %84, %83
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %25, align 1, !tbaa !2447
  %96 = icmp eq i32 %84, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %28, align 1, !tbaa !2448
  %98 = lshr i32 %84, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %31, align 1, !tbaa !2449
  %100 = lshr i32 %83, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %37, align 1, !tbaa !2450
  %105 = icmp ne i8 %99, 0
  %106 = xor i1 %105, %103
  %.v = select i1 %106, i64 10, i64 29
  %107 = add i64 %78, %.v
  store i64 %107, i64* %PC, align 8, !tbaa !2428
  br i1 %106, label %block_4012c0, label %block_4012d3

block_4012c0:                                     ; preds = %block_4012b6
  %108 = add i64 %107, -2656
  %109 = add i64 %107, 5
  %110 = load i64, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %113 = tail call %struct.Memory* @sub_400860_Puzzle(%struct.State* nonnull %0, i64 %108, %struct.Memory* %MEMORY.0)
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -8
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, 1
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = icmp eq i32 %119, -1
  %123 = icmp eq i32 %120, 0
  %124 = or i1 %122, %123
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %12, align 1, !tbaa !2432
  %126 = and i32 %120, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #9
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %19, align 1, !tbaa !2446
  %131 = xor i32 %120, %119
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %25, align 1, !tbaa !2447
  %135 = zext i1 %123 to i8
  store i8 %135, i8* %28, align 1, !tbaa !2448
  %136 = lshr i32 %120, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %31, align 1, !tbaa !2449
  %138 = lshr i32 %119, 31
  %139 = xor i32 %136, %138
  %140 = add nuw nsw i32 %139, %136
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %37, align 1, !tbaa !2450
  %143 = add i64 %116, 9
  store i64 %143, i64* %PC, align 8
  store i32 %120, i32* %118, align 4
  %144 = load i64, i64* %PC, align 8
  %145 = add i64 %144, -24
  store i64 %145, i64* %PC, align 8, !tbaa !2428
  br label %block_4012b6
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400420__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400420:
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
  store i64 ptrtoint (void ()* @callback_sub_401350___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4012e0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_619230___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400530_Rand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400530:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %10 = load i64, i64* bitcast (%seed_type* @seed to i64*), align 8
  %11 = mul i64 %10, 1309
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = add i64 %11, 13849
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #9
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = and i64 %18, 65535
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 %24, i8* %13, align 1, !tbaa !2446
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  store i64 %25, i64* bitcast (%seed_type* @seed to i64*), align 8
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  store i64 %25, i64* %RAX, align 8, !tbaa !2428
  %28 = add i64 %9, 48
  store i64 %28, i64* %PC, align 8
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %30 = add i64 %9, 49
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %6 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %PC, align 8, !tbaa !2428
  %33 = add i64 %6, 8
  store i64 %33, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400450__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400450:
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
define %struct.Memory* @sub_400510_Initrand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400510:
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
  store i64 74755, i64* bitcast (%seed_type* @seed to i64*), align 8
  %10 = add i64 %9, 16
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %12 = add i64 %9, 17
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %6 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %PC, align 8, !tbaa !2428
  %15 = add i64 %6, 8
  store i64 %15, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
  br i1 %12, label %block_4004d9, label %block_4004f0

block_4004f0:                                     ; preds = %block_4004d0
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

block_4004d9:                                     ; preds = %block_4004d0
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
  %36 = tail call %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401350___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401350:
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
define %struct.Memory* @sub_4003e0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4003e0:
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
  br i1 %18, label %block_4003f2, label %block_4003f0

block_4003f0:                                     ; preds = %block_4003e0
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4003f2

block_4003f2:                                     ; preds = %block_4003f0, %block_4003e0
  %27 = phi i64 [ %22, %block_4003e0 ], [ %.pre1, %block_4003f0 ]
  %28 = phi i64 [ %4, %block_4003e0 ], [ %.pre, %block_4003f0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003e0 ], [ %26, %block_4003f0 ]
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
define %struct.Memory* @sub_400860_Puzzle(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400860:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  %39 = add i64 %6, -24
  %40 = add i64 %9, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40086f

block_400eaa:                                     ; preds = %block_400ea0
  %42 = add i64 %784, -4
  %43 = add i64 %812, 3
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = add i64 %784, -8
  %48 = add i64 %812, 6
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RCX, align 8, !tbaa !2428
  %52 = add i64 %812, 9
  store i64 %52, i64* %PC, align 8
  %53 = load i32, i32* %787, align 4
  %54 = shl i32 %53, 3
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RDX, align 8, !tbaa !2428
  %56 = add i32 %54, %50
  %57 = shl i32 %56, 3
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RCX, align 8, !tbaa !2428
  %59 = load i64, i64* %RAX, align 8
  %60 = trunc i64 %59 to i32
  %61 = add i32 %57, %60
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = icmp ult i32 %61, %60
  %64 = icmp ult i32 %61, %57
  %65 = or i1 %63, %64
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %13, align 1, !tbaa !2432
  %67 = and i32 %61, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67) #9
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %20, align 1, !tbaa !2446
  %72 = xor i64 %58, %59
  %73 = trunc i64 %72 to i32
  %74 = xor i32 %73, %61
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %26, align 1, !tbaa !2447
  %78 = icmp eq i32 %61, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %29, align 1, !tbaa !2448
  %80 = lshr i32 %61, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %32, align 1, !tbaa !2449
  %82 = lshr i32 %60, 31
  %83 = lshr i32 %56, 28
  %84 = and i32 %83, 1
  %85 = xor i32 %80, %82
  %86 = xor i32 %80, %84
  %87 = add nuw nsw i32 %85, %86
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %38, align 1, !tbaa !2450
  %90 = sext i32 %61 to i64
  store i64 %90, i64* %RSI, align 8, !tbaa !2428
  %91 = shl nsw i64 %90, 2
  %92 = add i64 %91, add (i64 ptrtoint (%p_type* @p to i64), i64 16384)
  %93 = add i64 %812, 33
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 1, i32* %94, align 4
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -12
  %97 = load i64, i64* %PC, align 8
  %98 = add i64 %97, 3
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %96 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = icmp eq i32 %100, -1
  %104 = icmp eq i32 %101, 0
  %105 = or i1 %103, %104
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %13, align 1, !tbaa !2432
  %107 = and i32 %101, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #9
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %20, align 1, !tbaa !2446
  %112 = xor i32 %101, %100
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  store i8 %115, i8* %26, align 1, !tbaa !2447
  %116 = zext i1 %104 to i8
  store i8 %116, i8* %29, align 1, !tbaa !2448
  %117 = lshr i32 %101, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %32, align 1, !tbaa !2449
  %119 = lshr i32 %100, 31
  %120 = xor i32 %117, %119
  %121 = add nuw nsw i32 %120, %117
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %38, align 1, !tbaa !2450
  %124 = add i64 %97, 9
  store i64 %124, i64* %PC, align 8
  store i32 %101, i32* %99, align 4
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, -52
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  br label %block_400ea0

block_400dfb:                                     ; preds = %block_400df1
  %127 = add i64 %1355, -12
  %128 = add i64 %1383, 7
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 0, i32* %129, align 4
  %.pre242 = load i64, i64* %PC, align 8
  br label %block_400e02

block_4011de:                                     ; preds = %block_401177
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -16
  %132 = add i64 %2691, 5
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RSI, align 8, !tbaa !2428
  %136 = add i64 %2691, -3038
  %137 = add i64 %2691, 10
  %138 = load i64, i64* %RSP, align 8, !tbaa !2428
  %139 = add i64 %138, -8
  %140 = inttoptr i64 %139 to i64*
  store i64 %137, i64* %140, align 8
  store i64 %139, i64* %RSP, align 8, !tbaa !2428
  store i64 %136, i64* %PC, align 8, !tbaa !2428
  %141 = tail call %struct.Memory* @sub_400600_Place(%struct.State* nonnull %0, i64 %136, %struct.Memory* %2679)
  %142 = load i32, i32* %EAX, align 4
  %143 = load i64, i64* %PC, align 8
  store i32 %142, i32* bitcast (%n_type* @n to i32*), align 8
  %144 = add i64 %143, 32
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  br label %block_401208

block_400bd6:                                     ; preds = %block_400b79
  %145 = add i64 %1519, -4
  %146 = add i64 %1547, 8
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
  store i8 %154, i8* %13, align 1, !tbaa !2432
  %155 = and i32 %149, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #9
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %20, align 1, !tbaa !2446
  %160 = xor i32 %149, %148
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1, !tbaa !2447
  %164 = zext i1 %152 to i8
  store i8 %164, i8* %29, align 1, !tbaa !2448
  %165 = lshr i32 %149, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %32, align 1, !tbaa !2449
  %167 = lshr i32 %148, 31
  %168 = xor i32 %165, %167
  %169 = add nuw nsw i32 %168, %165
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %38, align 1, !tbaa !2450
  %172 = add i64 %1547, 14
  store i64 %172, i64* %PC, align 8
  store i32 %149, i32* %147, align 4
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, -124
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br label %block_400b68

block_4010f6:                                     ; preds = %block_4010d9, %block_401164
  %175 = phi i64 [ %.pre255, %block_4010d9 ], [ %631, %block_401164 ]
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -4
  %178 = add i64 %175, 4
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = add i32 %180, -1
  %182 = icmp eq i32 %180, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %13, align 1, !tbaa !2432
  %184 = and i32 %181, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184) #9
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %20, align 1, !tbaa !2446
  %189 = xor i32 %181, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %26, align 1, !tbaa !2447
  %193 = icmp eq i32 %181, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1, !tbaa !2448
  %195 = lshr i32 %181, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %32, align 1, !tbaa !2449
  %197 = lshr i32 %180, 31
  %198 = xor i32 %195, %197
  %199 = add nuw nsw i32 %198, %197
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %38, align 1, !tbaa !2450
  %202 = icmp ne i8 %196, 0
  %203 = xor i1 %202, %200
  %.demorgan313 = or i1 %193, %203
  %.v333 = select i1 %.demorgan313, i64 10, i64 129
  %204 = add i64 %175, %.v333
  store i64 %204, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan313, label %block_401100, label %block_401177

block_400fdc:                                     ; preds = %block_400fd5, %block_400fe6
  %205 = phi i64 [ %.pre251, %block_400fd5 ], [ %2975, %block_400fe6 ]
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -12
  %208 = add i64 %205, 4
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, -1
  %212 = icmp eq i32 %210, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %13, align 1, !tbaa !2432
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #9
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %20, align 1, !tbaa !2446
  %219 = xor i32 %211, %210
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1, !tbaa !2447
  %223 = icmp eq i32 %211, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1, !tbaa !2448
  %225 = lshr i32 %211, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1, !tbaa !2449
  %227 = lshr i32 %210, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %38, align 1, !tbaa !2450
  %232 = icmp ne i8 %226, 0
  %233 = xor i1 %232, %230
  %.demorgan306 = or i1 %223, %233
  %.v307 = select i1 %.demorgan306, i64 10, i64 57
  %234 = add i64 %205, %.v307
  store i64 %234, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan306, label %block_400fe6, label %block_401015

block_400dc3:                                     ; preds = %block_400d42
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 24) to i32*), align 8
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 24) to i32*), align 8
  %235 = add i64 %695, 29
  store i64 %235, i64* %PC, align 8
  store i32 0, i32* %670, align 4
  %.pre240 = load i64, i64* %PC, align 8
  br label %block_400de0

block_400fba:                                     ; preds = %block_401028, %block_400f9d
  %236 = phi i64 [ %3387, %block_401028 ], [ %.pre249, %block_400f9d ]
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -4
  %239 = add i64 %236, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, -1
  %243 = icmp eq i32 %241, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %13, align 1, !tbaa !2432
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245) #9
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %20, align 1, !tbaa !2446
  %250 = xor i32 %242, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %26, align 1, !tbaa !2447
  %254 = icmp eq i32 %242, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %29, align 1, !tbaa !2448
  %256 = lshr i32 %242, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %32, align 1, !tbaa !2449
  %258 = lshr i32 %241, 31
  %259 = xor i32 %256, %258
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %38, align 1, !tbaa !2450
  %263 = icmp ne i8 %257, 0
  %264 = xor i1 %263, %261
  %.demorgan305 = or i1 %254, %264
  %.v331 = select i1 %.demorgan305, i64 10, i64 129
  %265 = add i64 %236, %.v331
  store i64 %265, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan305, label %block_400fc4, label %block_40103b

block_400db0:                                     ; preds = %block_400d53
  %266 = add i64 %2154, -4
  %267 = add i64 %2171, 8
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, 1
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX, align 8, !tbaa !2428
  %272 = icmp eq i32 %269, -1
  %273 = icmp eq i32 %270, 0
  %274 = or i1 %272, %273
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %13, align 1, !tbaa !2432
  %276 = and i32 %270, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276) #9
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %20, align 1, !tbaa !2446
  %281 = xor i32 %270, %269
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %26, align 1, !tbaa !2447
  %285 = zext i1 %273 to i8
  store i8 %285, i8* %29, align 1, !tbaa !2448
  %286 = lshr i32 %270, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %32, align 1, !tbaa !2449
  %288 = lshr i32 %269, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %286
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %38, align 1, !tbaa !2450
  %293 = add i64 %2171, 14
  store i64 %293, i64* %PC, align 8
  store i32 %270, i32* %268, align 4
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, -124
  store i64 %295, i64* %PC, align 8, !tbaa !2428
  br label %block_400d42

block_400f9d:                                     ; preds = %block_400f1c
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 36) to i32*), align 4
  store i32 9, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 36) to i32*), align 4
  %296 = add i64 %927, 29
  store i64 %296, i64* %PC, align 8
  store i32 0, i32* %902, align 4
  %.pre249 = load i64, i64* %PC, align 8
  br label %block_400fba

block_401247:                                     ; preds = %block_401236
  store i64 add (i64 ptrtoint (%seg_401360__rodata_type* @seg_401360__rodata to i64), i64 41), i64* %RDI, align 8, !tbaa !2428
  %297 = add i64 %719, 12
  store i64 %297, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %298 = add i64 %719, -3639
  br label %block_401260.sink.split

block_4009a9:                                     ; preds = %block_40099f
  %299 = add i64 %751, -12
  %300 = add i64 %779, 7
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 0, i32* %301, align 4
  %.pre221 = load i64, i64* %PC, align 8
  br label %block_4009b0

block_400e4e:                                     ; preds = %block_400df1
  %302 = add i64 %1355, -4
  %303 = add i64 %1383, 8
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, 1
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RAX, align 8, !tbaa !2428
  %308 = icmp eq i32 %305, -1
  %309 = icmp eq i32 %306, 0
  %310 = or i1 %308, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %13, align 1, !tbaa !2432
  %312 = and i32 %306, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312) #9
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %20, align 1, !tbaa !2446
  %317 = xor i32 %306, %305
  %318 = lshr i32 %317, 4
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  store i8 %320, i8* %26, align 1, !tbaa !2447
  %321 = zext i1 %309 to i8
  store i8 %321, i8* %29, align 1, !tbaa !2448
  %322 = lshr i32 %306, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %32, align 1, !tbaa !2449
  %324 = lshr i32 %305, 31
  %325 = xor i32 %322, %324
  %326 = add nuw nsw i32 %325, %322
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %38, align 1, !tbaa !2450
  %329 = add i64 %1383, 14
  store i64 %329, i64* %PC, align 8
  store i32 %306, i32* %304, align 4
  %330 = load i64, i64* %PC, align 8
  %331 = add i64 %330, -124
  store i64 %331, i64* %PC, align 8, !tbaa !2428
  br label %block_400de0

block_400e99:                                     ; preds = %block_400e8f
  %332 = add i64 %2025, -12
  %333 = add i64 %2042, 7
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  store i32 0, i32* %334, align 4
  %.pre245 = load i64, i64* %PC, align 8
  br label %block_400ea0

block_400b94:                                     ; preds = %block_400b8a
  %335 = add i64 %2129, -4
  %336 = add i64 %2146, 3
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX, align 8, !tbaa !2428
  %340 = add i64 %2129, -8
  %341 = add i64 %2146, 6
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RCX, align 8, !tbaa !2428
  %345 = add i64 %2146, 9
  store i64 %345, i64* %PC, align 8
  %346 = load i32, i32* %2132, align 4
  %347 = shl i32 %346, 3
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RDX, align 8, !tbaa !2428
  %349 = add i32 %347, %343
  %350 = shl i32 %349, 3
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RCX, align 8, !tbaa !2428
  %352 = load i64, i64* %RAX, align 8
  %353 = trunc i64 %352 to i32
  %354 = add i32 %350, %353
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX, align 8, !tbaa !2428
  %356 = icmp ult i32 %354, %353
  %357 = icmp ult i32 %354, %350
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %13, align 1, !tbaa !2432
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360) #9
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %20, align 1, !tbaa !2446
  %365 = xor i64 %351, %352
  %366 = trunc i64 %365 to i32
  %367 = xor i32 %366, %354
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %26, align 1, !tbaa !2447
  %371 = icmp eq i32 %354, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %29, align 1, !tbaa !2448
  %373 = lshr i32 %354, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %32, align 1, !tbaa !2449
  %375 = lshr i32 %353, 31
  %376 = lshr i32 %349, 28
  %377 = and i32 %376, 1
  %378 = xor i32 %373, %375
  %379 = xor i32 %373, %377
  %380 = add nuw nsw i32 %378, %379
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %38, align 1, !tbaa !2450
  %383 = sext i32 %354 to i64
  store i64 %383, i64* %RSI, align 8, !tbaa !2428
  %384 = shl nsw i64 %383, 2
  %385 = add i64 %384, add (i64 ptrtoint (%p_type* @p to i64), i64 6144)
  %386 = add i64 %2146, 33
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %385 to i32*
  store i32 1, i32* %387, align 4
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -12
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i32 %393, 1
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = icmp eq i32 %393, -1
  %397 = icmp eq i32 %394, 0
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %13, align 1, !tbaa !2432
  %400 = and i32 %394, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400) #9
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %20, align 1, !tbaa !2446
  %405 = xor i32 %394, %393
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %26, align 1, !tbaa !2447
  %409 = zext i1 %397 to i8
  store i8 %409, i8* %29, align 1, !tbaa !2448
  %410 = lshr i32 %394, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %32, align 1, !tbaa !2449
  %412 = lshr i32 %393, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %410
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %38, align 1, !tbaa !2450
  %417 = add i64 %390, 9
  store i64 %417, i64* %PC, align 8
  store i32 %394, i32* %392, align 4
  %418 = load i64, i64* %PC, align 8
  %419 = add i64 %418, -52
  store i64 %419, i64* %PC, align 8, !tbaa !2428
  br label %block_400b8a

block_400f8a:                                     ; preds = %block_400f2d
  %420 = add i64 %2605, -4
  %421 = add i64 %2633, 8
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = add i32 %423, 1
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RAX, align 8, !tbaa !2428
  %426 = icmp eq i32 %423, -1
  %427 = icmp eq i32 %424, 0
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %13, align 1, !tbaa !2432
  %430 = and i32 %424, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430) #9
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %20, align 1, !tbaa !2446
  %435 = xor i32 %424, %423
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %26, align 1, !tbaa !2447
  %439 = zext i1 %427 to i8
  store i8 %439, i8* %29, align 1, !tbaa !2448
  %440 = lshr i32 %424, 31
  %441 = trunc i32 %440 to i8
  store i8 %441, i8* %32, align 1, !tbaa !2449
  %442 = lshr i32 %423, 31
  %443 = xor i32 %440, %442
  %444 = add nuw nsw i32 %443, %440
  %445 = icmp eq i32 %444, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %38, align 1, !tbaa !2450
  %447 = add i64 %2633, 14
  store i64 %447, i64* %PC, align 8
  store i32 %424, i32* %422, align 4
  %448 = load i64, i64* %PC, align 8
  %449 = add i64 %448, -124
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  br label %block_400f1c

block_400987:                                     ; preds = %block_400928
  %450 = add i64 %844, 7
  store i64 %450, i64* %PC, align 8
  store i32 0, i32* %819, align 4
  %.pre219 = load i64, i64* %PC, align 8
  br label %block_40098e

block_400b83:                                     ; preds = %block_400b79
  %451 = add i64 %1519, -12
  %452 = add i64 %1547, 7
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i32*
  store i32 0, i32* %453, align 4
  %.pre230 = load i64, i64* %PC, align 8
  br label %block_400b8a

block_400f77:                                     ; preds = %block_400f3e
  %454 = add i64 %879, -8
  %455 = add i64 %896, 8
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, 1
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RAX, align 8, !tbaa !2428
  %460 = icmp eq i32 %457, -1
  %461 = icmp eq i32 %458, 0
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %13, align 1, !tbaa !2432
  %464 = and i32 %458, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464) #9
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %20, align 1, !tbaa !2446
  %469 = xor i32 %458, %457
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %26, align 1, !tbaa !2447
  %473 = zext i1 %461 to i8
  store i8 %473, i8* %29, align 1, !tbaa !2448
  %474 = lshr i32 %458, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %32, align 1, !tbaa !2449
  %476 = lshr i32 %457, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %474
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %38, align 1, !tbaa !2450
  %481 = add i64 %896, 14
  store i64 %481, i64* %PC, align 8
  store i32 %458, i32* %456, align 4
  %482 = load i64, i64* %PC, align 8
  %483 = add i64 %482, -88
  store i64 %483, i64* %PC, align 8, !tbaa !2428
  br label %block_400f2d

block_400974:                                     ; preds = %block_400939
  %484 = add i64 %1931, -4
  %485 = add i64 %1960, 8
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = add i32 %487, 1
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RAX, align 8, !tbaa !2428
  %490 = icmp eq i32 %487, -1
  %491 = icmp eq i32 %488, 0
  %492 = or i1 %490, %491
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %13, align 1, !tbaa !2432
  %494 = and i32 %488, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494) #9
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %20, align 1, !tbaa !2446
  %499 = xor i32 %488, %487
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %26, align 1, !tbaa !2447
  %503 = zext i1 %491 to i8
  store i8 %503, i8* %29, align 1, !tbaa !2448
  %504 = lshr i32 %488, 31
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* %32, align 1, !tbaa !2449
  %506 = lshr i32 %487, 31
  %507 = xor i32 %504, %506
  %508 = add nuw nsw i32 %507, %504
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %38, align 1, !tbaa !2450
  %511 = add i64 %1960, 14
  store i64 %511, i64* %PC, align 8
  store i32 %488, i32* %486, align 4
  %512 = load i64, i64* %PC, align 8
  %513 = add i64 %512, -90
  store i64 %513, i64* %PC, align 8, !tbaa !2428
  br label %block_400928

block_400d6e:                                     ; preds = %block_400d64
  %514 = add i64 %2782, -4
  %515 = add i64 %2799, 3
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX, align 8, !tbaa !2428
  %519 = add i64 %2782, -8
  %520 = add i64 %2799, 6
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RCX, align 8, !tbaa !2428
  %524 = add i64 %2799, 9
  store i64 %524, i64* %PC, align 8
  %525 = load i32, i32* %2785, align 4
  %526 = shl i32 %525, 3
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RDX, align 8, !tbaa !2428
  %528 = add i32 %526, %522
  %529 = shl i32 %528, 3
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RCX, align 8, !tbaa !2428
  %531 = load i64, i64* %RAX, align 8
  %532 = trunc i64 %531 to i32
  %533 = add i32 %529, %532
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX, align 8, !tbaa !2428
  %535 = icmp ult i32 %533, %532
  %536 = icmp ult i32 %533, %529
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %13, align 1, !tbaa !2432
  %539 = and i32 %533, 255
  %540 = tail call i32 @llvm.ctpop.i32(i32 %539) #9
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  %543 = xor i8 %542, 1
  store i8 %543, i8* %20, align 1, !tbaa !2446
  %544 = xor i64 %530, %531
  %545 = trunc i64 %544 to i32
  %546 = xor i32 %545, %533
  %547 = lshr i32 %546, 4
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %26, align 1, !tbaa !2447
  %550 = icmp eq i32 %533, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %29, align 1, !tbaa !2448
  %552 = lshr i32 %533, 31
  %553 = trunc i32 %552 to i8
  store i8 %553, i8* %32, align 1, !tbaa !2449
  %554 = lshr i32 %532, 31
  %555 = lshr i32 %528, 28
  %556 = and i32 %555, 1
  %557 = xor i32 %552, %554
  %558 = xor i32 %552, %556
  %559 = add nuw nsw i32 %557, %558
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %38, align 1, !tbaa !2450
  %562 = sext i32 %533 to i64
  store i64 %562, i64* %RSI, align 8, !tbaa !2428
  %563 = shl nsw i64 %562, 2
  %564 = add i64 %563, add (i64 ptrtoint (%p_type* @p to i64), i64 12288)
  %565 = add i64 %2799, 33
  store i64 %565, i64* %PC, align 8
  %566 = inttoptr i64 %564 to i32*
  store i32 1, i32* %566, align 4
  %567 = load i64, i64* %RBP, align 8
  %568 = add i64 %567, -12
  %569 = load i64, i64* %PC, align 8
  %570 = add i64 %569, 3
  store i64 %570, i64* %PC, align 8
  %571 = inttoptr i64 %568 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX, align 8, !tbaa !2428
  %575 = icmp eq i32 %572, -1
  %576 = icmp eq i32 %573, 0
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %13, align 1, !tbaa !2432
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579) #9
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %20, align 1, !tbaa !2446
  %584 = xor i32 %573, %572
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %26, align 1, !tbaa !2447
  %588 = zext i1 %576 to i8
  store i8 %588, i8* %29, align 1, !tbaa !2448
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %32, align 1, !tbaa !2449
  %591 = lshr i32 %572, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %38, align 1, !tbaa !2450
  %596 = add i64 %569, 9
  store i64 %596, i64* %PC, align 8
  store i32 %573, i32* %571, align 4
  %597 = load i64, i64* %PC, align 8
  %598 = add i64 %597, -52
  store i64 %598, i64* %PC, align 8, !tbaa !2428
  br label %block_400d64

block_400dea:                                     ; preds = %block_400de0
  %599 = add i64 %1102, -8
  %600 = add i64 %1119, 7
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %599 to i32*
  store i32 0, i32* %601, align 4
  %.pre241 = load i64, i64* %PC, align 8
  br label %block_400df1

block_401164:                                     ; preds = %block_401107
  %602 = add i64 %3136, -4
  %603 = add i64 %3164, 8
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = add i32 %605, 1
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX, align 8, !tbaa !2428
  %608 = icmp eq i32 %605, -1
  %609 = icmp eq i32 %606, 0
  %610 = or i1 %608, %609
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %13, align 1, !tbaa !2432
  %612 = and i32 %606, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612) #9
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %20, align 1, !tbaa !2446
  %617 = xor i32 %606, %605
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %26, align 1, !tbaa !2447
  %621 = zext i1 %609 to i8
  store i8 %621, i8* %29, align 1, !tbaa !2448
  %622 = lshr i32 %606, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %32, align 1, !tbaa !2449
  %624 = lshr i32 %605, 31
  %625 = xor i32 %622, %624
  %626 = add nuw nsw i32 %625, %622
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %38, align 1, !tbaa !2450
  %629 = add i64 %3164, 14
  store i64 %629, i64* %PC, align 8
  store i32 %606, i32* %604, align 4
  %630 = load i64, i64* %PC, align 8
  %631 = add i64 %630, -124
  store i64 %631, i64* %PC, align 8, !tbaa !2428
  br label %block_4010f6

block_40103b:                                     ; preds = %block_400fba
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 40) to i32*), align 8
  store i32 65, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 40) to i32*), align 8
  %632 = add i64 %265, 29
  store i64 %632, i64* %PC, align 8
  store i32 0, i32* %240, align 4
  %.pre252 = load i64, i64* %PC, align 8
  br label %block_401058

block_400d5d:                                     ; preds = %block_400d53
  %633 = add i64 %2154, -12
  %634 = add i64 %2171, 7
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to i32*
  store i32 0, i32* %635, align 4
  %.pre239 = load i64, i64* %PC, align 8
  br label %block_400d64

block_401151:                                     ; preds = %block_401118
  %636 = add i64 %930, -8
  %637 = add i64 %958, 8
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, 1
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX, align 8, !tbaa !2428
  %642 = icmp eq i32 %639, -1
  %643 = icmp eq i32 %640, 0
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %13, align 1, !tbaa !2432
  %646 = and i32 %640, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646) #9
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %20, align 1, !tbaa !2446
  %651 = xor i32 %640, %639
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %26, align 1, !tbaa !2447
  %655 = zext i1 %643 to i8
  store i8 %655, i8* %29, align 1, !tbaa !2448
  %656 = lshr i32 %640, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %32, align 1, !tbaa !2449
  %658 = lshr i32 %639, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %656
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %38, align 1, !tbaa !2450
  %663 = add i64 %958, 14
  store i64 %663, i64* %PC, align 8
  store i32 %640, i32* %638, align 4
  %664 = load i64, i64* %PC, align 8
  %665 = add i64 %664, -88
  store i64 %665, i64* %PC, align 8, !tbaa !2428
  br label %block_401107

block_400d42:                                     ; preds = %block_400d25, %block_400db0
  %666 = phi i64 [ %.pre237, %block_400d25 ], [ %295, %block_400db0 ]
  %667 = load i64, i64* %RBP, align 8
  %668 = add i64 %667, -4
  %669 = add i64 %666, 4
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = add i32 %671, -2
  %673 = icmp ult i32 %671, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %13, align 1, !tbaa !2432
  %675 = and i32 %672, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675) #9
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %20, align 1, !tbaa !2446
  %680 = xor i32 %672, %671
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %26, align 1, !tbaa !2447
  %684 = icmp eq i32 %672, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %29, align 1, !tbaa !2448
  %686 = lshr i32 %672, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %32, align 1, !tbaa !2449
  %688 = lshr i32 %671, 31
  %689 = xor i32 %686, %688
  %690 = add nuw nsw i32 %689, %688
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %38, align 1, !tbaa !2450
  %693 = icmp ne i8 %687, 0
  %694 = xor i1 %693, %691
  %.demorgan292 = or i1 %684, %694
  %.v327 = select i1 %.demorgan292, i64 10, i64 129
  %695 = add i64 %666, %.v327
  store i64 %695, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan292, label %block_400d4c, label %block_400dc3

block_401236:                                     ; preds = %block_401208
  %696 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %697 = add i32 %696, -2005
  %698 = icmp ult i32 %696, 2005
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %13, align 1, !tbaa !2432
  %700 = and i32 %697, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700) #9
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %20, align 1, !tbaa !2446
  %705 = xor i32 %696, 16
  %706 = xor i32 %705, %697
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %26, align 1, !tbaa !2447
  %710 = icmp eq i32 %697, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %29, align 1, !tbaa !2448
  %712 = lshr i32 %697, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %32, align 1, !tbaa !2449
  %714 = lshr i32 %696, 31
  %715 = xor i32 %712, %714
  %716 = add nuw nsw i32 %715, %714
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %38, align 1, !tbaa !2450
  %.v335 = select i1 %710, i64 37, i64 17
  %719 = add i64 %3632, %.v335
  store i64 %719, i64* %PC, align 8, !tbaa !2428
  br i1 %710, label %block_401260, label %block_401247

block_400b38:                                     ; preds = %block_400adb
  %720 = add i64 %2399, -4
  %721 = add i64 %2427, 8
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = add i32 %723, 1
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX, align 8, !tbaa !2428
  %726 = icmp eq i32 %723, -1
  %727 = icmp eq i32 %724, 0
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %13, align 1, !tbaa !2432
  %730 = and i32 %724, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730) #9
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %20, align 1, !tbaa !2446
  %735 = xor i32 %724, %723
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %26, align 1, !tbaa !2447
  %739 = zext i1 %727 to i8
  store i8 %739, i8* %29, align 1, !tbaa !2448
  %740 = lshr i32 %724, 31
  %741 = trunc i32 %740 to i8
  store i8 %741, i8* %32, align 1, !tbaa !2449
  %742 = lshr i32 %723, 31
  %743 = xor i32 %740, %742
  %744 = add nuw nsw i32 %743, %740
  %745 = icmp eq i32 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %38, align 1, !tbaa !2450
  %747 = add i64 %2427, 14
  store i64 %747, i64* %PC, align 8
  store i32 %724, i32* %722, align 4
  %748 = load i64, i64* %PC, align 8
  %749 = add i64 %748, -124
  store i64 %749, i64* %PC, align 8, !tbaa !2428
  br label %block_400aca

block_40099f:                                     ; preds = %block_400998, %block_4009e9
  %750 = phi i64 [ %.pre220, %block_400998 ], [ %1756, %block_4009e9 ]
  %751 = load i64, i64* %RBP, align 8
  %752 = add i64 %751, -8
  %753 = add i64 %750, 4
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = add i32 %755, -1
  %757 = icmp eq i32 %755, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %13, align 1, !tbaa !2432
  %759 = and i32 %756, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759) #9
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %20, align 1, !tbaa !2446
  %764 = xor i32 %756, %755
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %26, align 1, !tbaa !2447
  %768 = icmp eq i32 %756, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %29, align 1, !tbaa !2448
  %770 = lshr i32 %756, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %32, align 1, !tbaa !2449
  %772 = lshr i32 %755, 31
  %773 = xor i32 %770, %772
  %774 = add nuw nsw i32 %773, %772
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %38, align 1, !tbaa !2450
  %777 = icmp ne i8 %771, 0
  %778 = xor i1 %777, %775
  %.demorgan269 = or i1 %768, %778
  %.v271 = select i1 %.demorgan269, i64 10, i64 93
  %779 = add i64 %750, %.v271
  store i64 %779, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan269, label %block_4009a9, label %block_4009fc

block_400f37:                                     ; preds = %block_400f2d
  %780 = add i64 %2605, -12
  %781 = add i64 %2633, 7
  store i64 %781, i64* %PC, align 8
  %782 = inttoptr i64 %780 to i32*
  store i32 0, i32* %782, align 4
  %.pre248 = load i64, i64* %PC, align 8
  br label %block_400f3e

block_400ea0:                                     ; preds = %block_400e99, %block_400eaa
  %783 = phi i64 [ %.pre245, %block_400e99 ], [ %126, %block_400eaa ]
  %784 = load i64, i64* %RBP, align 8
  %785 = add i64 %784, -12
  %786 = add i64 %783, 4
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = add i32 %788, -2
  %790 = icmp ult i32 %788, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %13, align 1, !tbaa !2432
  %792 = and i32 %789, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792) #9
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %20, align 1, !tbaa !2446
  %797 = xor i32 %789, %788
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  store i8 %800, i8* %26, align 1, !tbaa !2447
  %801 = icmp eq i32 %789, 0
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %29, align 1, !tbaa !2448
  %803 = lshr i32 %789, 31
  %804 = trunc i32 %803 to i8
  store i8 %804, i8* %32, align 1, !tbaa !2449
  %805 = lshr i32 %788, 31
  %806 = xor i32 %803, %805
  %807 = add nuw nsw i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %38, align 1, !tbaa !2450
  %810 = icmp ne i8 %804, 0
  %811 = xor i1 %810, %808
  %.demorgan298 = or i1 %801, %811
  %.v299 = select i1 %.demorgan298, i64 10, i64 57
  %812 = add i64 %783, %.v299
  store i64 %812, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan298, label %block_400eaa, label %block_400ed9

block_400c87:                                     ; preds = %block_400c06
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 16) to i32*), align 16
  store i32 67, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 16) to i32*), align 16
  %813 = add i64 %3662, 29
  store i64 %813, i64* %PC, align 8
  store i32 0, i32* %3637, align 4
  %.pre234 = load i64, i64* %PC, align 8
  br label %block_400ca4

block_4010d9:                                     ; preds = %block_401058
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 44) to i32*), align 4
  store i32 72, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 44) to i32*), align 4
  %814 = add i64 %3490, 29
  store i64 %814, i64* %PC, align 8
  store i32 0, i32* %3476, align 4
  %.pre255 = load i64, i64* %PC, align 8
  br label %block_4010f6

block_400928:                                     ; preds = %block_400921, %block_400974
  %815 = phi i64 [ %.pre217, %block_400921 ], [ %513, %block_400974 ]
  %816 = load i64, i64* %RBP, align 8
  %817 = add i64 %816, -4
  %818 = add i64 %815, 4
  store i64 %818, i64* %PC, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = add i32 %820, -12
  %822 = icmp ult i32 %820, 12
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %13, align 1, !tbaa !2432
  %824 = and i32 %821, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824) #9
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %20, align 1, !tbaa !2446
  %829 = xor i32 %821, %820
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %26, align 1, !tbaa !2447
  %833 = icmp eq i32 %821, 0
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %29, align 1, !tbaa !2448
  %835 = lshr i32 %821, 31
  %836 = trunc i32 %835 to i8
  store i8 %836, i8* %32, align 1, !tbaa !2449
  %837 = lshr i32 %820, 31
  %838 = xor i32 %835, %837
  %839 = add nuw nsw i32 %838, %837
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %38, align 1, !tbaa !2450
  %842 = icmp ne i8 %836, 0
  %843 = xor i1 %842, %840
  %.demorgan265 = or i1 %833, %843
  %.v320 = select i1 %.demorgan265, i64 10, i64 95
  %844 = add i64 %815, %.v320
  store i64 %844, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan265, label %block_400932, label %block_400987

block_40098e:                                     ; preds = %block_4009fc, %block_400987
  %845 = phi i64 [ %3038, %block_4009fc ], [ %.pre219, %block_400987 ]
  %846 = load i64, i64* %RBP, align 8
  %847 = add i64 %846, -4
  %848 = add i64 %845, 4
  store i64 %848, i64* %PC, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = add i32 %850, -3
  %852 = icmp ult i32 %850, 3
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %13, align 1, !tbaa !2432
  %854 = and i32 %851, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854) #9
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %20, align 1, !tbaa !2446
  %859 = xor i32 %851, %850
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %26, align 1, !tbaa !2447
  %863 = icmp eq i32 %851, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %29, align 1, !tbaa !2448
  %865 = lshr i32 %851, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %32, align 1, !tbaa !2449
  %867 = lshr i32 %850, 31
  %868 = xor i32 %865, %867
  %869 = add nuw nsw i32 %868, %867
  %870 = icmp eq i32 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %38, align 1, !tbaa !2450
  %872 = icmp ne i8 %866, 0
  %873 = xor i1 %872, %870
  %.demorgan268 = or i1 %863, %873
  %.v321 = select i1 %.demorgan268, i64 10, i64 129
  %874 = add i64 %845, %.v321
  store i64 %874, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan268, label %block_400998, label %block_400a0f

block_400f26:                                     ; preds = %block_400f1c
  %875 = add i64 %899, -8
  %876 = add i64 %927, 7
  store i64 %876, i64* %PC, align 8
  %877 = inttoptr i64 %875 to i32*
  store i32 0, i32* %877, align 4
  %.pre247 = load i64, i64* %PC, align 8
  br label %block_400f2d

block_400f3e:                                     ; preds = %block_400f48, %block_400f37
  %878 = phi i64 [ %1331, %block_400f48 ], [ %.pre248, %block_400f37 ]
  %879 = load i64, i64* %RBP, align 8
  %880 = add i64 %879, -12
  %881 = add i64 %878, 4
  store i64 %881, i64* %PC, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %884 = and i32 %883, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884) #9
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %889 = icmp eq i32 %883, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %29, align 1, !tbaa !2448
  %891 = lshr i32 %883, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %893 = xor i1 %889, true
  %894 = icmp eq i8 %892, 0
  %895 = and i1 %894, %893
  %.v303 = select i1 %895, i64 57, i64 10
  %896 = add i64 %878, %.v303
  store i64 %896, i64* %PC, align 8, !tbaa !2428
  br i1 %895, label %block_400f77, label %block_400f48

block_400d25:                                     ; preds = %block_400ca4
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 20) to i32*), align 4
  store i32 200, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 20) to i32*), align 4
  %897 = add i64 %1899, 29
  store i64 %897, i64* %PC, align 8
  store i32 0, i32* %1885, align 4
  %.pre237 = load i64, i64* %PC, align 8
  br label %block_400d42

block_400f1c:                                     ; preds = %block_400eff, %block_400f8a
  %898 = phi i64 [ %.pre246, %block_400eff ], [ %449, %block_400f8a ]
  %899 = load i64, i64* %RBP, align 8
  %900 = add i64 %899, -4
  %901 = add i64 %898, 4
  store i64 %901, i64* %PC, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = add i32 %903, -1
  %905 = icmp eq i32 %903, 0
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %13, align 1, !tbaa !2432
  %907 = and i32 %904, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907) #9
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %20, align 1, !tbaa !2446
  %912 = xor i32 %904, %903
  %913 = lshr i32 %912, 4
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %26, align 1, !tbaa !2447
  %916 = icmp eq i32 %904, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %29, align 1, !tbaa !2448
  %918 = lshr i32 %904, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %32, align 1, !tbaa !2449
  %920 = lshr i32 %903, 31
  %921 = xor i32 %918, %920
  %922 = add nuw nsw i32 %921, %920
  %923 = icmp eq i32 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %38, align 1, !tbaa !2450
  %925 = icmp ne i8 %919, 0
  %926 = xor i1 %925, %923
  %.demorgan301 = or i1 %916, %926
  %.v330 = select i1 %.demorgan301, i64 10, i64 129
  %927 = add i64 %898, %.v330
  store i64 %927, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan301, label %block_400f26, label %block_400f9d

block_400eff:                                     ; preds = %block_400e7e
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 32) to i32*), align 16
  store i32 128, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 32) to i32*), align 16
  %928 = add i64 %2336, 29
  store i64 %928, i64* %PC, align 8
  store i32 0, i32* %2322, align 4
  %.pre246 = load i64, i64* %PC, align 8
  br label %block_400f1c

block_401118:                                     ; preds = %block_401122, %block_401111
  %929 = phi i64 [ %2127, %block_401122 ], [ %.pre257, %block_401111 ]
  %930 = load i64, i64* %RBP, align 8
  %931 = add i64 %930, -12
  %932 = add i64 %929, 4
  store i64 %932, i64* %PC, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = add i32 %934, -1
  %936 = icmp eq i32 %934, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %13, align 1, !tbaa !2432
  %938 = and i32 %935, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938) #9
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %20, align 1, !tbaa !2446
  %943 = xor i32 %935, %934
  %944 = lshr i32 %943, 4
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %26, align 1, !tbaa !2447
  %947 = icmp eq i32 %935, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %29, align 1, !tbaa !2448
  %949 = lshr i32 %935, 31
  %950 = trunc i32 %949 to i8
  store i8 %950, i8* %32, align 1, !tbaa !2449
  %951 = lshr i32 %934, 31
  %952 = xor i32 %949, %951
  %953 = add nuw nsw i32 %952, %951
  %954 = icmp eq i32 %953, 2
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %38, align 1, !tbaa !2450
  %956 = icmp ne i8 %950, 0
  %957 = xor i1 %956, %954
  %.demorgan315 = or i1 %947, %957
  %.v316 = select i1 %.demorgan315, i64 10, i64 57
  %958 = add i64 %929, %.v316
  store i64 %958, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan315, label %block_401122, label %block_401151

block_400d12:                                     ; preds = %block_400cb5
  %959 = add i64 %1758, -4
  %960 = add i64 %1786, 8
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = add i32 %962, 1
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX, align 8, !tbaa !2428
  %965 = icmp eq i32 %962, -1
  %966 = icmp eq i32 %963, 0
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %13, align 1, !tbaa !2432
  %969 = and i32 %963, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969) #9
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %20, align 1, !tbaa !2446
  %974 = xor i32 %963, %962
  %975 = lshr i32 %974, 4
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %26, align 1, !tbaa !2447
  %978 = zext i1 %966 to i8
  store i8 %978, i8* %29, align 1, !tbaa !2448
  %979 = lshr i32 %963, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %32, align 1, !tbaa !2449
  %981 = lshr i32 %962, 31
  %982 = xor i32 %979, %981
  %983 = add nuw nsw i32 %982, %979
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %38, align 1, !tbaa !2450
  %986 = add i64 %1786, 14
  store i64 %986, i64* %PC, align 8
  store i32 %963, i32* %961, align 4
  %987 = load i64, i64* %PC, align 8
  %988 = add i64 %987, -124
  store i64 %988, i64* %PC, align 8, !tbaa !2428
  br label %block_400ca4

block_40090e:                                     ; preds = %block_4008b1
  %989 = add i64 %2572, -4
  %990 = add i64 %2600, 8
  store i64 %990, i64* %PC, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = add i32 %992, 1
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX, align 8, !tbaa !2428
  %995 = icmp eq i32 %992, -1
  %996 = icmp eq i32 %993, 0
  %997 = or i1 %995, %996
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %13, align 1, !tbaa !2432
  %999 = and i32 %993, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999) #9
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %20, align 1, !tbaa !2446
  %1004 = xor i32 %993, %992
  %1005 = lshr i32 %1004, 4
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  store i8 %1007, i8* %26, align 1, !tbaa !2447
  %1008 = zext i1 %996 to i8
  store i8 %1008, i8* %29, align 1, !tbaa !2448
  %1009 = lshr i32 %993, 31
  %1010 = trunc i32 %1009 to i8
  store i8 %1010, i8* %32, align 1, !tbaa !2449
  %1011 = lshr i32 %992, 31
  %1012 = xor i32 %1009, %1011
  %1013 = add nuw nsw i32 %1012, %1009
  %1014 = icmp eq i32 %1013, 2
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %38, align 1, !tbaa !2450
  %1016 = add i64 %2600, 14
  store i64 %1016, i64* %PC, align 8
  store i32 %993, i32* %991, align 4
  %1017 = load i64, i64* %PC, align 8
  %1018 = add i64 %1017, -124
  store i64 %1018, i64* %PC, align 8, !tbaa !2428
  br label %block_4008a0

block_400b68:                                     ; preds = %block_400b4b, %block_400bd6
  %1019 = phi i64 [ %.pre228, %block_400b4b ], [ %174, %block_400bd6 ]
  %1020 = load i64, i64* %RBP, align 8
  %1021 = add i64 %1020, -4
  %1022 = add i64 %1019, 4
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = add i32 %1024, -1
  %1026 = icmp eq i32 %1024, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %13, align 1, !tbaa !2432
  %1028 = and i32 %1025, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028) #9
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %20, align 1, !tbaa !2446
  %1033 = xor i32 %1025, %1024
  %1034 = lshr i32 %1033, 4
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  store i8 %1036, i8* %26, align 1, !tbaa !2447
  %1037 = icmp eq i32 %1025, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %29, align 1, !tbaa !2448
  %1039 = lshr i32 %1025, 31
  %1040 = trunc i32 %1039 to i8
  store i8 %1040, i8* %32, align 1, !tbaa !2449
  %1041 = lshr i32 %1024, 31
  %1042 = xor i32 %1039, %1041
  %1043 = add nuw nsw i32 %1042, %1041
  %1044 = icmp eq i32 %1043, 2
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %38, align 1, !tbaa !2450
  %1046 = icmp ne i8 %1040, 0
  %1047 = xor i1 %1046, %1044
  %.demorgan280 = or i1 %1037, %1047
  %.v324 = select i1 %.demorgan280, i64 10, i64 129
  %1048 = add i64 %1019, %.v324
  store i64 %1048, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan280, label %block_400b72, label %block_400be9

block_401100:                                     ; preds = %block_4010f6
  %1049 = add i64 %176, -8
  %1050 = add i64 %204, 7
  store i64 %1050, i64* %PC, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 0, i32* %1051, align 4
  %.pre256 = load i64, i64* %PC, align 8
  br label %block_401107

block_400fcb:                                     ; preds = %block_401015, %block_400fc4
  %1052 = phi i64 [ %3471, %block_401015 ], [ %.pre250, %block_400fc4 ]
  %1053 = load i64, i64* %RBP, align 8
  %1054 = add i64 %1053, -8
  %1055 = add i64 %1052, 4
  store i64 %1055, i64* %PC, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1058 = and i32 %1057, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058) #9
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1063 = icmp eq i32 %1057, 0
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %29, align 1, !tbaa !2448
  %1065 = lshr i32 %1057, 31
  %1066 = trunc i32 %1065 to i8
  store i8 %1066, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1067 = xor i1 %1063, true
  %1068 = icmp eq i8 %1066, 0
  %1069 = and i1 %1068, %1067
  %.v308 = select i1 %1069, i64 93, i64 10
  %1070 = add i64 %1052, %.v308
  store i64 %1070, i64* %PC, align 8, !tbaa !2428
  br i1 %1069, label %block_401028, label %block_400fd5

block_400cff:                                     ; preds = %block_400cc6
  %1071 = add i64 %1818, -8
  %1072 = add i64 %1846, 8
  store i64 %1072, i64* %PC, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = add i32 %1074, 1
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RAX, align 8, !tbaa !2428
  %1077 = icmp eq i32 %1074, -1
  %1078 = icmp eq i32 %1075, 0
  %1079 = or i1 %1077, %1078
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %13, align 1, !tbaa !2432
  %1081 = and i32 %1075, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081) #9
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %20, align 1, !tbaa !2446
  %1086 = xor i32 %1075, %1074
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1, !tbaa !2447
  %1090 = zext i1 %1078 to i8
  store i8 %1090, i8* %29, align 1, !tbaa !2448
  %1091 = lshr i32 %1075, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %32, align 1, !tbaa !2449
  %1093 = lshr i32 %1074, 31
  %1094 = xor i32 %1091, %1093
  %1095 = add nuw nsw i32 %1094, %1091
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %38, align 1, !tbaa !2450
  %1098 = add i64 %1846, 14
  store i64 %1098, i64* %PC, align 8
  store i32 %1075, i32* %1073, align 4
  %1099 = load i64, i64* %PC, align 8
  %1100 = add i64 %1099, -88
  store i64 %1100, i64* %PC, align 8, !tbaa !2428
  br label %block_400cb5

block_400de0:                                     ; preds = %block_400e4e, %block_400dc3
  %1101 = phi i64 [ %331, %block_400e4e ], [ %.pre240, %block_400dc3 ]
  %1102 = load i64, i64* %RBP, align 8
  %1103 = add i64 %1102, -4
  %1104 = add i64 %1101, 4
  store i64 %1104, i64* %PC, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1107 = and i32 %1106, 255
  %1108 = tail call i32 @llvm.ctpop.i32(i32 %1107) #9
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  %1111 = xor i8 %1110, 1
  store i8 %1111, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1112 = icmp eq i32 %1106, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %29, align 1, !tbaa !2448
  %1114 = lshr i32 %1106, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1116 = xor i1 %1112, true
  %1117 = icmp eq i8 %1115, 0
  %1118 = and i1 %1117, %1116
  %.v328 = select i1 %1118, i64 129, i64 10
  %1119 = add i64 %1101, %.v328
  store i64 %1119, i64* %PC, align 8, !tbaa !2428
  br i1 %1118, label %block_400e61, label %block_400dea

block_4008fb:                                     ; preds = %block_4008c2
  %1120 = add i64 %2429, -8
  %1121 = add i64 %2457, 8
  store i64 %1121, i64* %PC, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = add i32 %1123, 1
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RAX, align 8, !tbaa !2428
  %1126 = icmp eq i32 %1123, -1
  %1127 = icmp eq i32 %1124, 0
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %13, align 1, !tbaa !2432
  %1130 = and i32 %1124, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130) #9
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %20, align 1, !tbaa !2446
  %1135 = xor i32 %1124, %1123
  %1136 = lshr i32 %1135, 4
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  store i8 %1138, i8* %26, align 1, !tbaa !2447
  %1139 = zext i1 %1127 to i8
  store i8 %1139, i8* %29, align 1, !tbaa !2448
  %1140 = lshr i32 %1124, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %32, align 1, !tbaa !2449
  %1142 = lshr i32 %1123, 31
  %1143 = xor i32 %1140, %1142
  %1144 = add nuw nsw i32 %1143, %1140
  %1145 = icmp eq i32 %1144, 2
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %38, align 1, !tbaa !2450
  %1147 = add i64 %2457, 14
  store i64 %1147, i64* %PC, align 8
  store i32 %1124, i32* %1122, align 4
  %1148 = load i64, i64* %PC, align 8
  %1149 = add i64 %1148, -88
  store i64 %1149, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b1

block_4011f4:                                     ; preds = %block_401177
  store i64 add (i64 ptrtoint (%seg_401360__rodata_type* @seg_401360__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1150 = add i64 %2691, -3556
  %1151 = add i64 %2691, 17
  %1152 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1153 = add i64 %1152, -8
  %1154 = inttoptr i64 %1153 to i64*
  store i64 %1151, i64* %1154, align 8
  store i64 %1153, i64* %RSP, align 8, !tbaa !2428
  store i64 %1150, i64* %PC, align 8, !tbaa !2428
  %1155 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %2679)
  %1156 = load i64, i64* %RBP, align 8
  %1157 = add i64 %1156, -20
  %1158 = load i32, i32* %EAX, align 4
  %1159 = load i64, i64* %PC, align 8
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC, align 8
  %1161 = inttoptr i64 %1157 to i32*
  store i32 %1158, i32* %1161, align 4
  %.pre258 = load i64, i64* %PC, align 8
  %.pre259 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  br label %block_401208

block_400af6:                                     ; preds = %block_400aec
  %1162 = add i64 %2204, -4
  %1163 = add i64 %2232, 3
  store i64 %1163, i64* %PC, align 8
  %1164 = inttoptr i64 %1162 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX, align 8, !tbaa !2428
  %1167 = add i64 %2204, -8
  %1168 = add i64 %2232, 6
  store i64 %1168, i64* %PC, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RCX, align 8, !tbaa !2428
  %1172 = add i64 %2232, 9
  store i64 %1172, i64* %PC, align 8
  %1173 = load i32, i32* %2207, align 4
  %1174 = shl i32 %1173, 3
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RDX, align 8, !tbaa !2428
  %1176 = add i32 %1174, %1170
  %1177 = shl i32 %1176, 3
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RCX, align 8, !tbaa !2428
  %1179 = load i64, i64* %RAX, align 8
  %1180 = trunc i64 %1179 to i32
  %1181 = add i32 %1177, %1180
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RAX, align 8, !tbaa !2428
  %1183 = icmp ult i32 %1181, %1180
  %1184 = icmp ult i32 %1181, %1177
  %1185 = or i1 %1183, %1184
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %13, align 1, !tbaa !2432
  %1187 = and i32 %1181, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187) #9
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %20, align 1, !tbaa !2446
  %1192 = xor i64 %1178, %1179
  %1193 = trunc i64 %1192 to i32
  %1194 = xor i32 %1193, %1181
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %26, align 1, !tbaa !2447
  %1198 = icmp eq i32 %1181, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %29, align 1, !tbaa !2448
  %1200 = lshr i32 %1181, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %32, align 1, !tbaa !2449
  %1202 = lshr i32 %1180, 31
  %1203 = lshr i32 %1176, 28
  %1204 = and i32 %1203, 1
  %1205 = xor i32 %1200, %1202
  %1206 = xor i32 %1200, %1204
  %1207 = add nuw nsw i32 %1205, %1206
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %38, align 1, !tbaa !2450
  %1210 = sext i32 %1181 to i64
  store i64 %1210, i64* %RSI, align 8, !tbaa !2428
  %1211 = shl nsw i64 %1210, 2
  %1212 = add i64 %1211, add (i64 ptrtoint (%p_type* @p to i64), i64 4096)
  %1213 = add i64 %2232, 33
  store i64 %1213, i64* %PC, align 8
  %1214 = inttoptr i64 %1212 to i32*
  store i32 1, i32* %1214, align 4
  %1215 = load i64, i64* %RBP, align 8
  %1216 = add i64 %1215, -12
  %1217 = load i64, i64* %PC, align 8
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %PC, align 8
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = add i32 %1220, 1
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RAX, align 8, !tbaa !2428
  %1223 = icmp eq i32 %1220, -1
  %1224 = icmp eq i32 %1221, 0
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %13, align 1, !tbaa !2432
  %1227 = and i32 %1221, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227) #9
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %20, align 1, !tbaa !2446
  %1232 = xor i32 %1221, %1220
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %26, align 1, !tbaa !2447
  %1236 = zext i1 %1224 to i8
  store i8 %1236, i8* %29, align 1, !tbaa !2448
  %1237 = lshr i32 %1221, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %32, align 1, !tbaa !2449
  %1239 = lshr i32 %1220, 31
  %1240 = xor i32 %1237, %1239
  %1241 = add nuw nsw i32 %1240, %1237
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %38, align 1, !tbaa !2450
  %1244 = add i64 %1217, 9
  store i64 %1244, i64* %PC, align 8
  store i32 %1221, i32* %1219, align 4
  %1245 = load i64, i64* %PC, align 8
  %1246 = add i64 %1245, -52
  store i64 %1246, i64* %PC, align 8, !tbaa !2428
  br label %block_400aec

block_400f48:                                     ; preds = %block_400f3e
  %1247 = add i64 %879, -4
  %1248 = add i64 %896, 3
  store i64 %1248, i64* %PC, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX, align 8, !tbaa !2428
  %1252 = add i64 %879, -8
  %1253 = add i64 %896, 6
  store i64 %1253, i64* %PC, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RCX, align 8, !tbaa !2428
  %1257 = add i64 %896, 9
  store i64 %1257, i64* %PC, align 8
  %1258 = load i32, i32* %882, align 4
  %1259 = shl i32 %1258, 3
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RDX, align 8, !tbaa !2428
  %1261 = add i32 %1259, %1255
  %1262 = shl i32 %1261, 3
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RCX, align 8, !tbaa !2428
  %1264 = load i64, i64* %RAX, align 8
  %1265 = trunc i64 %1264 to i32
  %1266 = add i32 %1262, %1265
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RAX, align 8, !tbaa !2428
  %1268 = icmp ult i32 %1266, %1265
  %1269 = icmp ult i32 %1266, %1262
  %1270 = or i1 %1268, %1269
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %13, align 1, !tbaa !2432
  %1272 = and i32 %1266, 255
  %1273 = tail call i32 @llvm.ctpop.i32(i32 %1272) #9
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %20, align 1, !tbaa !2446
  %1277 = xor i64 %1263, %1264
  %1278 = trunc i64 %1277 to i32
  %1279 = xor i32 %1278, %1266
  %1280 = lshr i32 %1279, 4
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %26, align 1, !tbaa !2447
  %1283 = icmp eq i32 %1266, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %29, align 1, !tbaa !2448
  %1285 = lshr i32 %1266, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %32, align 1, !tbaa !2449
  %1287 = lshr i32 %1265, 31
  %1288 = lshr i32 %1261, 28
  %1289 = and i32 %1288, 1
  %1290 = xor i32 %1285, %1287
  %1291 = xor i32 %1285, %1289
  %1292 = add nuw nsw i32 %1290, %1291
  %1293 = icmp eq i32 %1292, 2
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %38, align 1, !tbaa !2450
  %1295 = sext i32 %1266 to i64
  store i64 %1295, i64* %RSI, align 8, !tbaa !2428
  %1296 = shl nsw i64 %1295, 2
  %1297 = add i64 %1296, add (i64 ptrtoint (%p_type* @p to i64), i64 18432)
  %1298 = add i64 %896, 33
  store i64 %1298, i64* %PC, align 8
  %1299 = inttoptr i64 %1297 to i32*
  store i32 1, i32* %1299, align 4
  %1300 = load i64, i64* %RBP, align 8
  %1301 = add i64 %1300, -12
  %1302 = load i64, i64* %PC, align 8
  %1303 = add i64 %1302, 3
  store i64 %1303, i64* %PC, align 8
  %1304 = inttoptr i64 %1301 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = add i32 %1305, 1
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX, align 8, !tbaa !2428
  %1308 = icmp eq i32 %1305, -1
  %1309 = icmp eq i32 %1306, 0
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %13, align 1, !tbaa !2432
  %1312 = and i32 %1306, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312) #9
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %20, align 1, !tbaa !2446
  %1317 = xor i32 %1306, %1305
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %26, align 1, !tbaa !2447
  %1321 = zext i1 %1309 to i8
  store i8 %1321, i8* %29, align 1, !tbaa !2448
  %1322 = lshr i32 %1306, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %32, align 1, !tbaa !2449
  %1324 = lshr i32 %1305, 31
  %1325 = xor i32 %1322, %1324
  %1326 = add nuw nsw i32 %1325, %1322
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %38, align 1, !tbaa !2450
  %1329 = add i64 %1302, 9
  store i64 %1329, i64* %PC, align 8
  store i32 %1306, i32* %1304, align 4
  %1330 = load i64, i64* %PC, align 8
  %1331 = add i64 %1330, -52
  store i64 %1331, i64* %PC, align 8, !tbaa !2428
  br label %block_400f3e

block_4009b0:                                     ; preds = %block_4009ba, %block_4009a9
  %1332 = phi i64 [ %2776, %block_4009ba ], [ %.pre221, %block_4009a9 ]
  %1333 = load i64, i64* %RBP, align 8
  %1334 = add i64 %1333, -12
  %1335 = add i64 %1332, 4
  store i64 %1335, i64* %PC, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1338 = and i32 %1337, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338) #9
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1343 = icmp eq i32 %1337, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %29, align 1, !tbaa !2448
  %1345 = lshr i32 %1337, 31
  %1346 = trunc i32 %1345 to i8
  store i8 %1346, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1347 = xor i1 %1343, true
  %1348 = icmp eq i8 %1346, 0
  %1349 = and i1 %1348, %1347
  %.v270 = select i1 %1349, i64 57, i64 10
  %1350 = add i64 %1332, %.v270
  store i64 %1350, i64* %PC, align 8, !tbaa !2428
  br i1 %1349, label %block_4009e9, label %block_4009ba

block_400b72:                                     ; preds = %block_400b68
  %1351 = add i64 %1020, -8
  %1352 = add i64 %1048, 7
  store i64 %1352, i64* %PC, align 8
  %1353 = inttoptr i64 %1351 to i32*
  store i32 0, i32* %1353, align 4
  %.pre229 = load i64, i64* %PC, align 8
  br label %block_400b79

block_400df1:                                     ; preds = %block_400e3b, %block_400dea
  %1354 = phi i64 [ %3194, %block_400e3b ], [ %.pre241, %block_400dea ]
  %1355 = load i64, i64* %RBP, align 8
  %1356 = add i64 %1355, -8
  %1357 = add i64 %1354, 4
  store i64 %1357, i64* %PC, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = add i32 %1359, -2
  %1361 = icmp ult i32 %1359, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %13, align 1, !tbaa !2432
  %1363 = and i32 %1360, 255
  %1364 = tail call i32 @llvm.ctpop.i32(i32 %1363) #9
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %20, align 1, !tbaa !2446
  %1368 = xor i32 %1360, %1359
  %1369 = lshr i32 %1368, 4
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  store i8 %1371, i8* %26, align 1, !tbaa !2447
  %1372 = icmp eq i32 %1360, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %29, align 1, !tbaa !2448
  %1374 = lshr i32 %1360, 31
  %1375 = trunc i32 %1374 to i8
  store i8 %1375, i8* %32, align 1, !tbaa !2449
  %1376 = lshr i32 %1359, 31
  %1377 = xor i32 %1374, %1376
  %1378 = add nuw nsw i32 %1377, %1376
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %38, align 1, !tbaa !2450
  %1381 = icmp ne i8 %1375, 0
  %1382 = xor i1 %1381, %1379
  %.demorgan295 = or i1 %1372, %1382
  %.v297 = select i1 %.demorgan295, i64 10, i64 93
  %1383 = add i64 %1354, %.v297
  store i64 %1383, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan295, label %block_400dfb, label %block_400e4e

block_400b25:                                     ; preds = %block_400aec
  %1384 = add i64 %2204, -8
  %1385 = add i64 %2232, 8
  store i64 %1385, i64* %PC, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = add i32 %1387, 1
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RAX, align 8, !tbaa !2428
  %1390 = icmp eq i32 %1387, -1
  %1391 = icmp eq i32 %1388, 0
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %13, align 1, !tbaa !2432
  %1394 = and i32 %1388, 255
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394) #9
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %20, align 1, !tbaa !2446
  %1399 = xor i32 %1388, %1387
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %26, align 1, !tbaa !2447
  %1403 = zext i1 %1391 to i8
  store i8 %1403, i8* %29, align 1, !tbaa !2448
  %1404 = lshr i32 %1388, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %32, align 1, !tbaa !2449
  %1406 = lshr i32 %1387, 31
  %1407 = xor i32 %1404, %1406
  %1408 = add nuw nsw i32 %1407, %1404
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %38, align 1, !tbaa !2450
  %1411 = add i64 %2232, 14
  store i64 %1411, i64* %PC, align 8
  store i32 %1388, i32* %1386, align 4
  %1412 = load i64, i64* %PC, align 8
  %1413 = add i64 %1412, -88
  store i64 %1413, i64* %PC, align 8, !tbaa !2428
  br label %block_400adb

block_400946:                                     ; preds = %block_400939
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %1414 = add i64 %1931, -4
  %1415 = add i64 %1960, 14
  store i64 %1415, i64* %PC, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = sext i32 %1417 to i64
  %1419 = shl nsw i64 %1418, 11
  store i64 %1419, i64* %RCX, align 8, !tbaa !2428
  %1420 = add i64 %1419, ptrtoint (%p_type* @p to i64)
  store i64 %1420, i64* %RAX, align 8, !tbaa !2428
  %1421 = icmp ult i64 %1420, ptrtoint (%p_type* @p to i64)
  %1422 = icmp ult i64 %1420, %1419
  %1423 = or i1 %1421, %1422
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %13, align 1, !tbaa !2432
  %1425 = trunc i64 %1420 to i32
  %1426 = and i32 %1425, 240
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426) #9
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %20, align 1, !tbaa !2446
  %1431 = xor i64 %1420, ptrtoint (%p_type* @p to i64)
  %1432 = lshr exact i64 %1431, 4
  %1433 = trunc i64 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %26, align 1, !tbaa !2447
  %1435 = icmp eq i64 %1420, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %29, align 1, !tbaa !2448
  %1437 = lshr i64 %1420, 63
  %1438 = trunc i64 %1437 to i8
  store i8 %1438, i8* %32, align 1, !tbaa !2449
  %1439 = lshr i64 %1418, 52
  %1440 = and i64 %1439, 1
  %1441 = xor i64 %1437, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %1442 = xor i64 %1437, %1440
  %1443 = add nuw nsw i64 %1441, %1442
  %1444 = icmp eq i64 %1443, 2
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %38, align 1, !tbaa !2450
  %1446 = add i64 %1960, 25
  store i64 %1446, i64* %PC, align 8
  %1447 = load i32, i32* %1934, align 4
  %1448 = sext i32 %1447 to i64
  store i64 %1448, i64* %RCX, align 8, !tbaa !2428
  %1449 = shl nsw i64 %1448, 2
  %1450 = add i64 %1449, %1420
  %1451 = add i64 %1960, 32
  store i64 %1451, i64* %PC, align 8
  %1452 = inttoptr i64 %1450 to i32*
  store i32 0, i32* %1452, align 4
  %1453 = load i64, i64* %RBP, align 8
  %1454 = add i64 %1453, -16
  %1455 = load i64, i64* %PC, align 8
  %1456 = add i64 %1455, 3
  store i64 %1456, i64* %PC, align 8
  %1457 = inttoptr i64 %1454 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = add i32 %1458, 1
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RAX, align 8, !tbaa !2428
  %1461 = icmp eq i32 %1458, -1
  %1462 = icmp eq i32 %1459, 0
  %1463 = or i1 %1461, %1462
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %13, align 1, !tbaa !2432
  %1465 = and i32 %1459, 255
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465) #9
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %20, align 1, !tbaa !2446
  %1470 = xor i32 %1459, %1458
  %1471 = lshr i32 %1470, 4
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  store i8 %1473, i8* %26, align 1, !tbaa !2447
  %1474 = zext i1 %1462 to i8
  store i8 %1474, i8* %29, align 1, !tbaa !2448
  %1475 = lshr i32 %1459, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %32, align 1, !tbaa !2449
  %1477 = lshr i32 %1458, 31
  %1478 = xor i32 %1475, %1477
  %1479 = add nuw nsw i32 %1478, %1475
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %38, align 1, !tbaa !2450
  %1482 = add i64 %1455, 9
  store i64 %1482, i64* %PC, align 8
  store i32 %1459, i32* %1457, align 4
  %1483 = load i64, i64* %PC, align 8
  %1484 = add i64 %1483, -54
  store i64 %1484, i64* %PC, align 8, !tbaa !2428
  br label %block_400939

block_400ed9:                                     ; preds = %block_400ea0
  %1485 = add i64 %784, -8
  %1486 = add i64 %812, 8
  store i64 %1486, i64* %PC, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = add i32 %1488, 1
  %1490 = zext i32 %1489 to i64
  store i64 %1490, i64* %RAX, align 8, !tbaa !2428
  %1491 = icmp eq i32 %1488, -1
  %1492 = icmp eq i32 %1489, 0
  %1493 = or i1 %1491, %1492
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %13, align 1, !tbaa !2432
  %1495 = and i32 %1489, 255
  %1496 = tail call i32 @llvm.ctpop.i32(i32 %1495) #9
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  store i8 %1499, i8* %20, align 1, !tbaa !2446
  %1500 = xor i32 %1489, %1488
  %1501 = lshr i32 %1500, 4
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %26, align 1, !tbaa !2447
  %1504 = zext i1 %1492 to i8
  store i8 %1504, i8* %29, align 1, !tbaa !2448
  %1505 = lshr i32 %1489, 31
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %32, align 1, !tbaa !2449
  %1507 = lshr i32 %1488, 31
  %1508 = xor i32 %1505, %1507
  %1509 = add nuw nsw i32 %1508, %1505
  %1510 = icmp eq i32 %1509, 2
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %38, align 1, !tbaa !2450
  %1512 = add i64 %812, 14
  store i64 %1512, i64* %PC, align 8
  store i32 %1489, i32* %1487, align 4
  %1513 = load i64, i64* %PC, align 8
  %1514 = add i64 %1513, -88
  store i64 %1514, i64* %PC, align 8, !tbaa !2428
  br label %block_400e8f

block_401111:                                     ; preds = %block_401107
  %1515 = add i64 %3136, -12
  %1516 = add i64 %3164, 7
  store i64 %1516, i64* %PC, align 8
  %1517 = inttoptr i64 %1515 to i32*
  store i32 0, i32* %1517, align 4
  %.pre257 = load i64, i64* %PC, align 8
  br label %block_401118

block_400b79:                                     ; preds = %block_400bc3, %block_400b72
  %1518 = phi i64 [ %2023, %block_400bc3 ], [ %.pre229, %block_400b72 ]
  %1519 = load i64, i64* %RBP, align 8
  %1520 = add i64 %1519, -8
  %1521 = add i64 %1518, 4
  store i64 %1521, i64* %PC, align 8
  %1522 = inttoptr i64 %1520 to i32*
  %1523 = load i32, i32* %1522, align 4
  %1524 = add i32 %1523, -3
  %1525 = icmp ult i32 %1523, 3
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %13, align 1, !tbaa !2432
  %1527 = and i32 %1524, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527) #9
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %20, align 1, !tbaa !2446
  %1532 = xor i32 %1524, %1523
  %1533 = lshr i32 %1532, 4
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %26, align 1, !tbaa !2447
  %1536 = icmp eq i32 %1524, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %29, align 1, !tbaa !2448
  %1538 = lshr i32 %1524, 31
  %1539 = trunc i32 %1538 to i8
  store i8 %1539, i8* %32, align 1, !tbaa !2449
  %1540 = lshr i32 %1523, 31
  %1541 = xor i32 %1538, %1540
  %1542 = add nuw nsw i32 %1541, %1540
  %1543 = icmp eq i32 %1542, 2
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %38, align 1, !tbaa !2450
  %1545 = icmp ne i8 %1539, 0
  %1546 = xor i1 %1545, %1543
  %.demorgan281 = or i1 %1536, %1546
  %.v283 = select i1 %.demorgan281, i64 10, i64 93
  %1547 = add i64 %1518, %.v283
  store i64 %1547, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan281, label %block_400b83, label %block_400bd6

block_400cd0:                                     ; preds = %block_400cc6
  %1548 = add i64 %1818, -4
  %1549 = add i64 %1846, 3
  store i64 %1549, i64* %PC, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RAX, align 8, !tbaa !2428
  %1553 = add i64 %1818, -8
  %1554 = add i64 %1846, 6
  store i64 %1554, i64* %PC, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RCX, align 8, !tbaa !2428
  %1558 = add i64 %1846, 9
  store i64 %1558, i64* %PC, align 8
  %1559 = load i32, i32* %1821, align 4
  %1560 = shl i32 %1559, 3
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RDX, align 8, !tbaa !2428
  %1562 = add i32 %1560, %1556
  %1563 = shl i32 %1562, 3
  %1564 = zext i32 %1563 to i64
  store i64 %1564, i64* %RCX, align 8, !tbaa !2428
  %1565 = load i64, i64* %RAX, align 8
  %1566 = trunc i64 %1565 to i32
  %1567 = add i32 %1563, %1566
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX, align 8, !tbaa !2428
  %1569 = icmp ult i32 %1567, %1566
  %1570 = icmp ult i32 %1567, %1563
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %13, align 1, !tbaa !2432
  %1573 = and i32 %1567, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573) #9
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %20, align 1, !tbaa !2446
  %1578 = xor i64 %1564, %1565
  %1579 = trunc i64 %1578 to i32
  %1580 = xor i32 %1579, %1567
  %1581 = lshr i32 %1580, 4
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %26, align 1, !tbaa !2447
  %1584 = icmp eq i32 %1567, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %29, align 1, !tbaa !2448
  %1586 = lshr i32 %1567, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %32, align 1, !tbaa !2449
  %1588 = lshr i32 %1566, 31
  %1589 = lshr i32 %1562, 28
  %1590 = and i32 %1589, 1
  %1591 = xor i32 %1586, %1588
  %1592 = xor i32 %1586, %1590
  %1593 = add nuw nsw i32 %1591, %1592
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %38, align 1, !tbaa !2450
  %1596 = sext i32 %1567 to i64
  store i64 %1596, i64* %RSI, align 8, !tbaa !2428
  %1597 = shl nsw i64 %1596, 2
  %1598 = add i64 %1597, add (i64 ptrtoint (%p_type* @p to i64), i64 10240)
  %1599 = add i64 %1846, 33
  store i64 %1599, i64* %PC, align 8
  %1600 = inttoptr i64 %1598 to i32*
  store i32 1, i32* %1600, align 4
  %1601 = load i64, i64* %RBP, align 8
  %1602 = add i64 %1601, -12
  %1603 = load i64, i64* %PC, align 8
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC, align 8
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = add i32 %1606, 1
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX, align 8, !tbaa !2428
  %1609 = icmp eq i32 %1606, -1
  %1610 = icmp eq i32 %1607, 0
  %1611 = or i1 %1609, %1610
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %13, align 1, !tbaa !2432
  %1613 = and i32 %1607, 255
  %1614 = tail call i32 @llvm.ctpop.i32(i32 %1613) #9
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  %1617 = xor i8 %1616, 1
  store i8 %1617, i8* %20, align 1, !tbaa !2446
  %1618 = xor i32 %1607, %1606
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %26, align 1, !tbaa !2447
  %1622 = zext i1 %1610 to i8
  store i8 %1622, i8* %29, align 1, !tbaa !2448
  %1623 = lshr i32 %1607, 31
  %1624 = trunc i32 %1623 to i8
  store i8 %1624, i8* %32, align 1, !tbaa !2449
  %1625 = lshr i32 %1606, 31
  %1626 = xor i32 %1623, %1625
  %1627 = add nuw nsw i32 %1626, %1623
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %38, align 1, !tbaa !2450
  %1630 = add i64 %1603, 9
  store i64 %1630, i64* %PC, align 8
  store i32 %1607, i32* %1605, align 4
  %1631 = load i64, i64* %PC, align 8
  %1632 = add i64 %1631, -52
  store i64 %1632, i64* %PC, align 8, !tbaa !2428
  br label %block_400cc6

block_400ae5:                                     ; preds = %block_400adb
  %1633 = add i64 %2399, -12
  %1634 = add i64 %2427, 7
  store i64 %1634, i64* %PC, align 8
  %1635 = inttoptr i64 %1633 to i32*
  store i32 0, i32* %1635, align 4
  %.pre227 = load i64, i64* %PC, align 8
  br label %block_400aec

block_4008cc:                                     ; preds = %block_4008c2
  %1636 = add i64 %2429, -4
  %1637 = add i64 %2457, 3
  store i64 %1637, i64* %PC, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = zext i32 %1639 to i64
  store i64 %1640, i64* %RAX, align 8, !tbaa !2428
  %1641 = add i64 %2429, -8
  %1642 = add i64 %2457, 6
  store i64 %1642, i64* %PC, align 8
  %1643 = inttoptr i64 %1641 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RCX, align 8, !tbaa !2428
  %1646 = add i64 %2457, 9
  store i64 %1646, i64* %PC, align 8
  %1647 = load i32, i32* %2432, align 4
  %1648 = shl i32 %1647, 3
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RDX, align 8, !tbaa !2428
  %1650 = add i32 %1648, %1644
  %1651 = shl i32 %1650, 3
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RCX, align 8, !tbaa !2428
  %1653 = load i64, i64* %RAX, align 8
  %1654 = trunc i64 %1653 to i32
  %1655 = add i32 %1651, %1654
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX, align 8, !tbaa !2428
  %1657 = icmp ult i32 %1655, %1654
  %1658 = icmp ult i32 %1655, %1651
  %1659 = or i1 %1657, %1658
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %13, align 1, !tbaa !2432
  %1661 = and i32 %1655, 255
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661) #9
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %20, align 1, !tbaa !2446
  %1666 = xor i64 %1652, %1653
  %1667 = trunc i64 %1666 to i32
  %1668 = xor i32 %1667, %1655
  %1669 = lshr i32 %1668, 4
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  store i8 %1671, i8* %26, align 1, !tbaa !2447
  %1672 = icmp eq i32 %1655, 0
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %29, align 1, !tbaa !2448
  %1674 = lshr i32 %1655, 31
  %1675 = trunc i32 %1674 to i8
  store i8 %1675, i8* %32, align 1, !tbaa !2449
  %1676 = lshr i32 %1654, 31
  %1677 = lshr i32 %1650, 28
  %1678 = and i32 %1677, 1
  %1679 = xor i32 %1674, %1676
  %1680 = xor i32 %1674, %1678
  %1681 = add nuw nsw i32 %1679, %1680
  %1682 = icmp eq i32 %1681, 2
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %38, align 1, !tbaa !2450
  %1684 = sext i32 %1655 to i64
  store i64 %1684, i64* %RSI, align 8, !tbaa !2428
  %1685 = shl nsw i64 %1684, 2
  %1686 = add i64 %1685, ptrtoint (%puzzl_type* @puzzl to i64)
  %1687 = add i64 %2457, 33
  store i64 %1687, i64* %PC, align 8
  %1688 = inttoptr i64 %1686 to i32*
  store i32 0, i32* %1688, align 4
  %1689 = load i64, i64* %RBP, align 8
  %1690 = add i64 %1689, -12
  %1691 = load i64, i64* %PC, align 8
  %1692 = add i64 %1691, 3
  store i64 %1692, i64* %PC, align 8
  %1693 = inttoptr i64 %1690 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = add i32 %1694, 1
  %1696 = zext i32 %1695 to i64
  store i64 %1696, i64* %RAX, align 8, !tbaa !2428
  %1697 = icmp eq i32 %1694, -1
  %1698 = icmp eq i32 %1695, 0
  %1699 = or i1 %1697, %1698
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %13, align 1, !tbaa !2432
  %1701 = and i32 %1695, 255
  %1702 = tail call i32 @llvm.ctpop.i32(i32 %1701) #9
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %20, align 1, !tbaa !2446
  %1706 = xor i32 %1695, %1694
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  store i8 %1709, i8* %26, align 1, !tbaa !2447
  %1710 = zext i1 %1698 to i8
  store i8 %1710, i8* %29, align 1, !tbaa !2448
  %1711 = lshr i32 %1695, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %32, align 1, !tbaa !2449
  %1713 = lshr i32 %1694, 31
  %1714 = xor i32 %1711, %1713
  %1715 = add nuw nsw i32 %1714, %1711
  %1716 = icmp eq i32 %1715, 2
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %38, align 1, !tbaa !2450
  %1718 = add i64 %1691, 9
  store i64 %1718, i64* %PC, align 8
  store i32 %1695, i32* %1693, align 4
  %1719 = load i64, i64* %PC, align 8
  %1720 = add i64 %1719, -52
  store i64 %1720, i64* %PC, align 8, !tbaa !2428
  br label %block_4008c2

block_400d4c:                                     ; preds = %block_400d42
  %1721 = add i64 %667, -8
  %1722 = add i64 %695, 7
  store i64 %1722, i64* %PC, align 8
  %1723 = inttoptr i64 %1721 to i32*
  store i32 0, i32* %1723, align 4
  %.pre238 = load i64, i64* %PC, align 8
  br label %block_400d53

block_400cbf:                                     ; preds = %block_400cb5
  %1724 = add i64 %1758, -12
  %1725 = add i64 %1786, 7
  store i64 %1725, i64* %PC, align 8
  %1726 = inttoptr i64 %1724 to i32*
  store i32 0, i32* %1726, align 4
  %.pre236 = load i64, i64* %PC, align 8
  br label %block_400cc6

block_4009e9:                                     ; preds = %block_4009b0
  %1727 = add i64 %1333, -8
  %1728 = add i64 %1350, 8
  store i64 %1728, i64* %PC, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = add i32 %1730, 1
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RAX, align 8, !tbaa !2428
  %1733 = icmp eq i32 %1730, -1
  %1734 = icmp eq i32 %1731, 0
  %1735 = or i1 %1733, %1734
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %13, align 1, !tbaa !2432
  %1737 = and i32 %1731, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737) #9
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %20, align 1, !tbaa !2446
  %1742 = xor i32 %1731, %1730
  %1743 = lshr i32 %1742, 4
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  store i8 %1745, i8* %26, align 1, !tbaa !2447
  %1746 = zext i1 %1734 to i8
  store i8 %1746, i8* %29, align 1, !tbaa !2448
  %1747 = lshr i32 %1731, 31
  %1748 = trunc i32 %1747 to i8
  store i8 %1748, i8* %32, align 1, !tbaa !2449
  %1749 = lshr i32 %1730, 31
  %1750 = xor i32 %1747, %1749
  %1751 = add nuw nsw i32 %1750, %1747
  %1752 = icmp eq i32 %1751, 2
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %38, align 1, !tbaa !2450
  %1754 = add i64 %1350, 14
  store i64 %1754, i64* %PC, align 8
  store i32 %1731, i32* %1729, align 4
  %1755 = load i64, i64* %PC, align 8
  %1756 = add i64 %1755, -88
  store i64 %1756, i64* %PC, align 8, !tbaa !2428
  br label %block_40099f

block_400cb5:                                     ; preds = %block_400cae, %block_400cff
  %1757 = phi i64 [ %.pre235, %block_400cae ], [ %1100, %block_400cff ]
  %1758 = load i64, i64* %RBP, align 8
  %1759 = add i64 %1758, -8
  %1760 = add i64 %1757, 4
  store i64 %1760, i64* %PC, align 8
  %1761 = inttoptr i64 %1759 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = add i32 %1762, -1
  %1764 = icmp eq i32 %1762, 0
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %13, align 1, !tbaa !2432
  %1766 = and i32 %1763, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766) #9
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %20, align 1, !tbaa !2446
  %1771 = xor i32 %1763, %1762
  %1772 = lshr i32 %1771, 4
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %26, align 1, !tbaa !2447
  %1775 = icmp eq i32 %1763, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %29, align 1, !tbaa !2448
  %1777 = lshr i32 %1763, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %32, align 1, !tbaa !2449
  %1779 = lshr i32 %1762, 31
  %1780 = xor i32 %1777, %1779
  %1781 = add nuw nsw i32 %1780, %1779
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %38, align 1, !tbaa !2450
  %1784 = icmp ne i8 %1778, 0
  %1785 = xor i1 %1784, %1782
  %.demorgan288 = or i1 %1775, %1785
  %.v291 = select i1 %.demorgan288, i64 10, i64 93
  %1786 = add i64 %1757, %.v291
  store i64 %1786, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan288, label %block_400cbf, label %block_400d12

block_4010b3:                                     ; preds = %block_40107a
  %1787 = add i64 %2339, -8
  %1788 = add i64 %2367, 8
  store i64 %1788, i64* %PC, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = add i32 %1790, 1
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RAX, align 8, !tbaa !2428
  %1793 = icmp eq i32 %1790, -1
  %1794 = icmp eq i32 %1791, 0
  %1795 = or i1 %1793, %1794
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %13, align 1, !tbaa !2432
  %1797 = and i32 %1791, 255
  %1798 = tail call i32 @llvm.ctpop.i32(i32 %1797) #9
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  store i8 %1801, i8* %20, align 1, !tbaa !2446
  %1802 = xor i32 %1791, %1790
  %1803 = lshr i32 %1802, 4
  %1804 = trunc i32 %1803 to i8
  %1805 = and i8 %1804, 1
  store i8 %1805, i8* %26, align 1, !tbaa !2447
  %1806 = zext i1 %1794 to i8
  store i8 %1806, i8* %29, align 1, !tbaa !2448
  %1807 = lshr i32 %1791, 31
  %1808 = trunc i32 %1807 to i8
  store i8 %1808, i8* %32, align 1, !tbaa !2449
  %1809 = lshr i32 %1790, 31
  %1810 = xor i32 %1807, %1809
  %1811 = add nuw nsw i32 %1810, %1807
  %1812 = icmp eq i32 %1811, 2
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %38, align 1, !tbaa !2450
  %1814 = add i64 %2367, 14
  store i64 %1814, i64* %PC, align 8
  store i32 %1791, i32* %1789, align 4
  %1815 = load i64, i64* %PC, align 8
  %1816 = add i64 %1815, -88
  store i64 %1816, i64* %PC, align 8, !tbaa !2428
  br label %block_401069

block_400cc6:                                     ; preds = %block_400cbf, %block_400cd0
  %1817 = phi i64 [ %.pre236, %block_400cbf ], [ %1632, %block_400cd0 ]
  %1818 = load i64, i64* %RBP, align 8
  %1819 = add i64 %1818, -12
  %1820 = add i64 %1817, 4
  store i64 %1820, i64* %PC, align 8
  %1821 = inttoptr i64 %1819 to i32*
  %1822 = load i32, i32* %1821, align 4
  %1823 = add i32 %1822, -3
  %1824 = icmp ult i32 %1822, 3
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %13, align 1, !tbaa !2432
  %1826 = and i32 %1823, 255
  %1827 = tail call i32 @llvm.ctpop.i32(i32 %1826) #9
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %20, align 1, !tbaa !2446
  %1831 = xor i32 %1823, %1822
  %1832 = lshr i32 %1831, 4
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  store i8 %1834, i8* %26, align 1, !tbaa !2447
  %1835 = icmp eq i32 %1823, 0
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %29, align 1, !tbaa !2448
  %1837 = lshr i32 %1823, 31
  %1838 = trunc i32 %1837 to i8
  store i8 %1838, i8* %32, align 1, !tbaa !2449
  %1839 = lshr i32 %1822, 31
  %1840 = xor i32 %1837, %1839
  %1841 = add nuw nsw i32 %1840, %1839
  %1842 = icmp eq i32 %1841, 2
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %38, align 1, !tbaa !2450
  %1844 = icmp ne i8 %1838, 0
  %1845 = xor i1 %1844, %1842
  %.demorgan289 = or i1 %1835, %1845
  %.v290 = select i1 %.demorgan289, i64 10, i64 57
  %1846 = add i64 %1817, %.v290
  store i64 %1846, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan289, label %block_400cd0, label %block_400cff

block_400aad:                                     ; preds = %block_400a2c
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 4) to i32*), align 4
  store i32 193, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 4) to i32*), align 4
  %1847 = add i64 %3357, 29
  store i64 %1847, i64* %PC, align 8
  store i32 0, i32* %3332, align 4
  %.pre225 = load i64, i64* %PC, align 8
  br label %block_400aca

block_4008aa:                                     ; preds = %block_4008a0
  %1848 = add i64 %1901, -8
  %1849 = add i64 %1929, 7
  store i64 %1849, i64* %PC, align 8
  %1850 = inttoptr i64 %1848 to i32*
  store i32 1, i32* %1850, align 4
  %.pre215 = load i64, i64* %PC, align 8
  br label %block_4008b1

block_4010c6:                                     ; preds = %block_401069
  %1851 = add i64 %2523, -4
  %1852 = add i64 %2551, 8
  store i64 %1852, i64* %PC, align 8
  %1853 = inttoptr i64 %1851 to i32*
  %1854 = load i32, i32* %1853, align 4
  %1855 = add i32 %1854, 1
  %1856 = zext i32 %1855 to i64
  store i64 %1856, i64* %RAX, align 8, !tbaa !2428
  %1857 = icmp eq i32 %1854, -1
  %1858 = icmp eq i32 %1855, 0
  %1859 = or i1 %1857, %1858
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %13, align 1, !tbaa !2432
  %1861 = and i32 %1855, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861) #9
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %20, align 1, !tbaa !2446
  %1866 = xor i32 %1855, %1854
  %1867 = lshr i32 %1866, 4
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  store i8 %1869, i8* %26, align 1, !tbaa !2447
  %1870 = zext i1 %1858 to i8
  store i8 %1870, i8* %29, align 1, !tbaa !2448
  %1871 = lshr i32 %1855, 31
  %1872 = trunc i32 %1871 to i8
  store i8 %1872, i8* %32, align 1, !tbaa !2449
  %1873 = lshr i32 %1854, 31
  %1874 = xor i32 %1871, %1873
  %1875 = add nuw nsw i32 %1874, %1871
  %1876 = icmp eq i32 %1875, 2
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %38, align 1, !tbaa !2450
  %1878 = add i64 %2551, 14
  store i64 %1878, i64* %PC, align 8
  store i32 %1855, i32* %1853, align 4
  %1879 = load i64, i64* %PC, align 8
  %1880 = add i64 %1879, -124
  store i64 %1880, i64* %PC, align 8, !tbaa !2428
  br label %block_401058

block_400ca4:                                     ; preds = %block_400d12, %block_400c87
  %1881 = phi i64 [ %988, %block_400d12 ], [ %.pre234, %block_400c87 ]
  %1882 = load i64, i64* %RBP, align 8
  %1883 = add i64 %1882, -4
  %1884 = add i64 %1881, 4
  store i64 %1884, i64* %PC, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1887 = and i32 %1886, 255
  %1888 = tail call i32 @llvm.ctpop.i32(i32 %1887) #9
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  store i8 %1891, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1892 = icmp eq i32 %1886, 0
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %29, align 1, !tbaa !2448
  %1894 = lshr i32 %1886, 31
  %1895 = trunc i32 %1894 to i8
  store i8 %1895, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1896 = xor i1 %1892, true
  %1897 = icmp eq i8 %1895, 0
  %1898 = and i1 %1897, %1896
  %.v326 = select i1 %1898, i64 129, i64 10
  %1899 = add i64 %1881, %.v326
  store i64 %1899, i64* %PC, align 8, !tbaa !2428
  br i1 %1898, label %block_400d25, label %block_400cae

block_4008a0:                                     ; preds = %block_400899, %block_40090e
  %1900 = phi i64 [ %.pre214, %block_400899 ], [ %1018, %block_40090e ]
  %1901 = load i64, i64* %RBP, align 8
  %1902 = add i64 %1901, -4
  %1903 = add i64 %1900, 4
  store i64 %1903, i64* %PC, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = add i32 %1905, -5
  %1907 = icmp ult i32 %1905, 5
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %13, align 1, !tbaa !2432
  %1909 = and i32 %1906, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909) #9
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %20, align 1, !tbaa !2446
  %1914 = xor i32 %1906, %1905
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %26, align 1, !tbaa !2447
  %1918 = icmp eq i32 %1906, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %29, align 1, !tbaa !2448
  %1920 = lshr i32 %1906, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %32, align 1, !tbaa !2449
  %1922 = lshr i32 %1905, 31
  %1923 = xor i32 %1920, %1922
  %1924 = add nuw nsw i32 %1923, %1922
  %1925 = icmp eq i32 %1924, 2
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %38, align 1, !tbaa !2450
  %1927 = icmp ne i8 %1921, 0
  %1928 = xor i1 %1927, %1925
  %.demorgan261 = or i1 %1918, %1928
  %.v319 = select i1 %.demorgan261, i64 10, i64 129
  %1929 = add i64 %1900, %.v319
  store i64 %1929, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan261, label %block_4008aa, label %block_400921

block_400939:                                     ; preds = %block_400932, %block_400946
  %1930 = phi i64 [ %.pre218, %block_400932 ], [ %1484, %block_400946 ]
  %1931 = load i64, i64* %RBP, align 8
  %1932 = add i64 %1931, -16
  %1933 = add i64 %1930, 7
  store i64 %1933, i64* %PC, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = add i32 %1935, -511
  %1937 = icmp ult i32 %1935, 511
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %13, align 1, !tbaa !2432
  %1939 = and i32 %1936, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939) #9
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %20, align 1, !tbaa !2446
  %1944 = xor i32 %1935, 16
  %1945 = xor i32 %1944, %1936
  %1946 = lshr i32 %1945, 4
  %1947 = trunc i32 %1946 to i8
  %1948 = and i8 %1947, 1
  store i8 %1948, i8* %26, align 1, !tbaa !2447
  %1949 = icmp eq i32 %1936, 0
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %29, align 1, !tbaa !2448
  %1951 = lshr i32 %1936, 31
  %1952 = trunc i32 %1951 to i8
  store i8 %1952, i8* %32, align 1, !tbaa !2449
  %1953 = lshr i32 %1935, 31
  %1954 = xor i32 %1951, %1953
  %1955 = add nuw nsw i32 %1954, %1953
  %1956 = icmp eq i32 %1955, 2
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %38, align 1, !tbaa !2450
  %1958 = icmp ne i8 %1952, 0
  %1959 = xor i1 %1958, %1956
  %.demorgan266 = or i1 %1949, %1959
  %.v267 = select i1 %.demorgan266, i64 13, i64 59
  %1960 = add i64 %1930, %.v267
  store i64 %1960, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan266, label %block_400946, label %block_400974

block_400a9a:                                     ; preds = %block_400a3d
  %1961 = add i64 %3117, -4
  %1962 = add i64 %3134, 8
  store i64 %1962, i64* %PC, align 8
  %1963 = inttoptr i64 %1961 to i32*
  %1964 = load i32, i32* %1963, align 4
  %1965 = add i32 %1964, 1
  %1966 = zext i32 %1965 to i64
  store i64 %1966, i64* %RAX, align 8, !tbaa !2428
  %1967 = icmp eq i32 %1964, -1
  %1968 = icmp eq i32 %1965, 0
  %1969 = or i1 %1967, %1968
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %13, align 1, !tbaa !2432
  %1971 = and i32 %1965, 255
  %1972 = tail call i32 @llvm.ctpop.i32(i32 %1971) #9
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  store i8 %1975, i8* %20, align 1, !tbaa !2446
  %1976 = xor i32 %1965, %1964
  %1977 = lshr i32 %1976, 4
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  store i8 %1979, i8* %26, align 1, !tbaa !2447
  %1980 = zext i1 %1968 to i8
  store i8 %1980, i8* %29, align 1, !tbaa !2448
  %1981 = lshr i32 %1965, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %32, align 1, !tbaa !2449
  %1983 = lshr i32 %1964, 31
  %1984 = xor i32 %1981, %1983
  %1985 = add nuw nsw i32 %1984, %1981
  %1986 = icmp eq i32 %1985, 2
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %38, align 1, !tbaa !2450
  %1988 = add i64 %3134, 14
  store i64 %1988, i64* %PC, align 8
  store i32 %1965, i32* %1963, align 4
  %1989 = load i64, i64* %PC, align 8
  %1990 = add i64 %1989, -124
  store i64 %1990, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2c

block_400899:                                     ; preds = %block_40086f
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %1991 = add i64 %2462, -4
  %1992 = add i64 %2491, 7
  store i64 %1992, i64* %PC, align 8
  %1993 = inttoptr i64 %1991 to i32*
  store i32 1, i32* %1993, align 4
  %.pre214 = load i64, i64* %PC, align 8
  br label %block_4008a0

block_400bc3:                                     ; preds = %block_400b8a
  %1994 = add i64 %2129, -8
  %1995 = add i64 %2146, 8
  store i64 %1995, i64* %PC, align 8
  %1996 = inttoptr i64 %1994 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = add i32 %1997, 1
  %1999 = zext i32 %1998 to i64
  store i64 %1999, i64* %RAX, align 8, !tbaa !2428
  %2000 = icmp eq i32 %1997, -1
  %2001 = icmp eq i32 %1998, 0
  %2002 = or i1 %2000, %2001
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %13, align 1, !tbaa !2432
  %2004 = and i32 %1998, 255
  %2005 = tail call i32 @llvm.ctpop.i32(i32 %2004) #9
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = xor i8 %2007, 1
  store i8 %2008, i8* %20, align 1, !tbaa !2446
  %2009 = xor i32 %1998, %1997
  %2010 = lshr i32 %2009, 4
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %26, align 1, !tbaa !2447
  %2013 = zext i1 %2001 to i8
  store i8 %2013, i8* %29, align 1, !tbaa !2448
  %2014 = lshr i32 %1998, 31
  %2015 = trunc i32 %2014 to i8
  store i8 %2015, i8* %32, align 1, !tbaa !2449
  %2016 = lshr i32 %1997, 31
  %2017 = xor i32 %2014, %2016
  %2018 = add nuw nsw i32 %2017, %2014
  %2019 = icmp eq i32 %2018, 2
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %38, align 1, !tbaa !2450
  %2021 = add i64 %2146, 14
  store i64 %2021, i64* %PC, align 8
  store i32 %1998, i32* %1996, align 4
  %2022 = load i64, i64* %PC, align 8
  %2023 = add i64 %2022, -88
  store i64 %2023, i64* %PC, align 8, !tbaa !2428
  br label %block_400b79

block_400e8f:                                     ; preds = %block_400e88, %block_400ed9
  %2024 = phi i64 [ %.pre244, %block_400e88 ], [ %1514, %block_400ed9 ]
  %2025 = load i64, i64* %RBP, align 8
  %2026 = add i64 %2025, -8
  %2027 = add i64 %2024, 4
  store i64 %2027, i64* %PC, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2030 = and i32 %2029, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030) #9
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2035 = icmp eq i32 %2029, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %29, align 1, !tbaa !2448
  %2037 = lshr i32 %2029, 31
  %2038 = trunc i32 %2037 to i8
  store i8 %2038, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2039 = xor i1 %2035, true
  %2040 = icmp eq i8 %2038, 0
  %2041 = and i1 %2040, %2039
  %.v300 = select i1 %2041, i64 93, i64 10
  %2042 = add i64 %2024, %.v300
  store i64 %2042, i64* %PC, align 8, !tbaa !2428
  br i1 %2041, label %block_400eec, label %block_400e99

block_401122:                                     ; preds = %block_401118
  %2043 = add i64 %930, -4
  %2044 = add i64 %958, 3
  store i64 %2044, i64* %PC, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %RAX, align 8, !tbaa !2428
  %2048 = add i64 %930, -8
  %2049 = add i64 %958, 6
  store i64 %2049, i64* %PC, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RCX, align 8, !tbaa !2428
  %2053 = add i64 %958, 9
  store i64 %2053, i64* %PC, align 8
  %2054 = load i32, i32* %933, align 4
  %2055 = shl i32 %2054, 3
  %2056 = zext i32 %2055 to i64
  store i64 %2056, i64* %RDX, align 8, !tbaa !2428
  %2057 = add i32 %2055, %2051
  %2058 = shl i32 %2057, 3
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RCX, align 8, !tbaa !2428
  %2060 = load i64, i64* %RAX, align 8
  %2061 = trunc i64 %2060 to i32
  %2062 = add i32 %2058, %2061
  %2063 = zext i32 %2062 to i64
  store i64 %2063, i64* %RAX, align 8, !tbaa !2428
  %2064 = icmp ult i32 %2062, %2061
  %2065 = icmp ult i32 %2062, %2058
  %2066 = or i1 %2064, %2065
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %13, align 1, !tbaa !2432
  %2068 = and i32 %2062, 255
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068) #9
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %20, align 1, !tbaa !2446
  %2073 = xor i64 %2059, %2060
  %2074 = trunc i64 %2073 to i32
  %2075 = xor i32 %2074, %2062
  %2076 = lshr i32 %2075, 4
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  store i8 %2078, i8* %26, align 1, !tbaa !2447
  %2079 = icmp eq i32 %2062, 0
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %29, align 1, !tbaa !2448
  %2081 = lshr i32 %2062, 31
  %2082 = trunc i32 %2081 to i8
  store i8 %2082, i8* %32, align 1, !tbaa !2449
  %2083 = lshr i32 %2061, 31
  %2084 = lshr i32 %2057, 28
  %2085 = and i32 %2084, 1
  %2086 = xor i32 %2081, %2083
  %2087 = xor i32 %2081, %2085
  %2088 = add nuw nsw i32 %2086, %2087
  %2089 = icmp eq i32 %2088, 2
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %38, align 1, !tbaa !2450
  %2091 = sext i32 %2062 to i64
  store i64 %2091, i64* %RSI, align 8, !tbaa !2428
  %2092 = shl nsw i64 %2091, 2
  %2093 = add i64 %2092, add (i64 ptrtoint (%p_type* @p to i64), i64 24576)
  %2094 = add i64 %958, 33
  store i64 %2094, i64* %PC, align 8
  %2095 = inttoptr i64 %2093 to i32*
  store i32 1, i32* %2095, align 4
  %2096 = load i64, i64* %RBP, align 8
  %2097 = add i64 %2096, -12
  %2098 = load i64, i64* %PC, align 8
  %2099 = add i64 %2098, 3
  store i64 %2099, i64* %PC, align 8
  %2100 = inttoptr i64 %2097 to i32*
  %2101 = load i32, i32* %2100, align 4
  %2102 = add i32 %2101, 1
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RAX, align 8, !tbaa !2428
  %2104 = icmp eq i32 %2101, -1
  %2105 = icmp eq i32 %2102, 0
  %2106 = or i1 %2104, %2105
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %13, align 1, !tbaa !2432
  %2108 = and i32 %2102, 255
  %2109 = tail call i32 @llvm.ctpop.i32(i32 %2108) #9
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  store i8 %2112, i8* %20, align 1, !tbaa !2446
  %2113 = xor i32 %2102, %2101
  %2114 = lshr i32 %2113, 4
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  store i8 %2116, i8* %26, align 1, !tbaa !2447
  %2117 = zext i1 %2105 to i8
  store i8 %2117, i8* %29, align 1, !tbaa !2448
  %2118 = lshr i32 %2102, 31
  %2119 = trunc i32 %2118 to i8
  store i8 %2119, i8* %32, align 1, !tbaa !2449
  %2120 = lshr i32 %2101, 31
  %2121 = xor i32 %2118, %2120
  %2122 = add nuw nsw i32 %2121, %2118
  %2123 = icmp eq i32 %2122, 2
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %38, align 1, !tbaa !2450
  %2125 = add i64 %2098, 9
  store i64 %2125, i64* %PC, align 8
  store i32 %2102, i32* %2100, align 4
  %2126 = load i64, i64* %PC, align 8
  %2127 = add i64 %2126, -52
  store i64 %2127, i64* %PC, align 8, !tbaa !2428
  br label %block_401118

block_400b8a:                                     ; preds = %block_400b83, %block_400b94
  %2128 = phi i64 [ %.pre230, %block_400b83 ], [ %419, %block_400b94 ]
  %2129 = load i64, i64* %RBP, align 8
  %2130 = add i64 %2129, -12
  %2131 = add i64 %2128, 4
  store i64 %2131, i64* %PC, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2134 = and i32 %2133, 255
  %2135 = tail call i32 @llvm.ctpop.i32(i32 %2134) #9
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = xor i8 %2137, 1
  store i8 %2138, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2139 = icmp eq i32 %2133, 0
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %29, align 1, !tbaa !2448
  %2141 = lshr i32 %2133, 31
  %2142 = trunc i32 %2141 to i8
  store i8 %2142, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2143 = xor i1 %2139, true
  %2144 = icmp eq i8 %2142, 0
  %2145 = and i1 %2144, %2143
  %.v282 = select i1 %2145, i64 57, i64 10
  %2146 = add i64 %2128, %.v282
  store i64 %2146, i64* %PC, align 8, !tbaa !2428
  br i1 %2145, label %block_400bc3, label %block_400b94

block_400998:                                     ; preds = %block_40098e
  %2147 = add i64 %846, -8
  %2148 = add i64 %874, 7
  store i64 %2148, i64* %PC, align 8
  %2149 = inttoptr i64 %2147 to i32*
  store i32 0, i32* %2149, align 4
  %.pre220 = load i64, i64* %PC, align 8
  br label %block_40099f

block_400e88:                                     ; preds = %block_400e7e
  %2150 = add i64 %2319, -8
  %2151 = add i64 %2336, 7
  store i64 %2151, i64* %PC, align 8
  %2152 = inttoptr i64 %2150 to i32*
  store i32 0, i32* %2152, align 4
  %.pre244 = load i64, i64* %PC, align 8
  br label %block_400e8f

block_400d53:                                     ; preds = %block_400d9d, %block_400d4c
  %2153 = phi i64 [ %2521, %block_400d9d ], [ %.pre238, %block_400d4c ]
  %2154 = load i64, i64* %RBP, align 8
  %2155 = add i64 %2154, -8
  %2156 = add i64 %2153, 4
  store i64 %2156, i64* %PC, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2159 = and i32 %2158, 255
  %2160 = tail call i32 @llvm.ctpop.i32(i32 %2159) #9
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2164 = icmp eq i32 %2158, 0
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %29, align 1, !tbaa !2448
  %2166 = lshr i32 %2158, 31
  %2167 = trunc i32 %2166 to i8
  store i8 %2167, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2168 = xor i1 %2164, true
  %2169 = icmp eq i8 %2167, 0
  %2170 = and i1 %2169, %2168
  %.v294 = select i1 %2170, i64 93, i64 10
  %2171 = add i64 %2153, %.v294
  store i64 %2171, i64* %PC, align 8, !tbaa !2428
  br i1 %2170, label %block_400db0, label %block_400d5d

block_400921:                                     ; preds = %block_4008a0
  %2172 = add i64 %1929, 7
  store i64 %2172, i64* %PC, align 8
  store i32 0, i32* %1904, align 4
  %.pre217 = load i64, i64* %PC, align 8
  br label %block_400928

block_400a87:                                     ; preds = %block_400a4e
  %2173 = add i64 %2977, -8
  %2174 = add i64 %3005, 8
  store i64 %2174, i64* %PC, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = add i32 %2176, 1
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %RAX, align 8, !tbaa !2428
  %2179 = icmp eq i32 %2176, -1
  %2180 = icmp eq i32 %2177, 0
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %13, align 1, !tbaa !2432
  %2183 = and i32 %2177, 255
  %2184 = tail call i32 @llvm.ctpop.i32(i32 %2183) #9
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  store i8 %2187, i8* %20, align 1, !tbaa !2446
  %2188 = xor i32 %2177, %2176
  %2189 = lshr i32 %2188, 4
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  store i8 %2191, i8* %26, align 1, !tbaa !2447
  %2192 = zext i1 %2180 to i8
  store i8 %2192, i8* %29, align 1, !tbaa !2448
  %2193 = lshr i32 %2177, 31
  %2194 = trunc i32 %2193 to i8
  store i8 %2194, i8* %32, align 1, !tbaa !2449
  %2195 = lshr i32 %2176, 31
  %2196 = xor i32 %2193, %2195
  %2197 = add nuw nsw i32 %2196, %2193
  %2198 = icmp eq i32 %2197, 2
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %38, align 1, !tbaa !2450
  %2200 = add i64 %3005, 14
  store i64 %2200, i64* %PC, align 8
  store i32 %2177, i32* %2175, align 4
  %2201 = load i64, i64* %PC, align 8
  %2202 = add i64 %2201, -88
  store i64 %2202, i64* %PC, align 8, !tbaa !2428
  br label %block_400a3d

block_400aec:                                     ; preds = %block_400ae5, %block_400af6
  %2203 = phi i64 [ %.pre227, %block_400ae5 ], [ %1246, %block_400af6 ]
  %2204 = load i64, i64* %RBP, align 8
  %2205 = add i64 %2204, -12
  %2206 = add i64 %2203, 4
  store i64 %2206, i64* %PC, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = add i32 %2208, -1
  %2210 = icmp eq i32 %2208, 0
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %13, align 1, !tbaa !2432
  %2212 = and i32 %2209, 255
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212) #9
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %20, align 1, !tbaa !2446
  %2217 = xor i32 %2209, %2208
  %2218 = lshr i32 %2217, 4
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  store i8 %2220, i8* %26, align 1, !tbaa !2447
  %2221 = icmp eq i32 %2209, 0
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %29, align 1, !tbaa !2448
  %2223 = lshr i32 %2209, 31
  %2224 = trunc i32 %2223 to i8
  store i8 %2224, i8* %32, align 1, !tbaa !2449
  %2225 = lshr i32 %2208, 31
  %2226 = xor i32 %2223, %2225
  %2227 = add nuw nsw i32 %2226, %2225
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %38, align 1, !tbaa !2450
  %2230 = icmp ne i8 %2224, 0
  %2231 = xor i1 %2230, %2228
  %.demorgan277 = or i1 %2221, %2231
  %.v278 = select i1 %.demorgan277, i64 10, i64 57
  %2232 = add i64 %2203, %.v278
  store i64 %2232, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan277, label %block_400af6, label %block_400b25

block_401084:                                     ; preds = %block_40107a
  %2233 = add i64 %2339, -4
  %2234 = add i64 %2367, 3
  store i64 %2234, i64* %PC, align 8
  %2235 = inttoptr i64 %2233 to i32*
  %2236 = load i32, i32* %2235, align 4
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RAX, align 8, !tbaa !2428
  %2238 = add i64 %2339, -8
  %2239 = add i64 %2367, 6
  store i64 %2239, i64* %PC, align 8
  %2240 = inttoptr i64 %2238 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = zext i32 %2241 to i64
  store i64 %2242, i64* %RCX, align 8, !tbaa !2428
  %2243 = add i64 %2367, 9
  store i64 %2243, i64* %PC, align 8
  %2244 = load i32, i32* %2342, align 4
  %2245 = shl i32 %2244, 3
  %2246 = zext i32 %2245 to i64
  store i64 %2246, i64* %RDX, align 8, !tbaa !2428
  %2247 = add i32 %2245, %2241
  %2248 = shl i32 %2247, 3
  %2249 = zext i32 %2248 to i64
  store i64 %2249, i64* %RCX, align 8, !tbaa !2428
  %2250 = load i64, i64* %RAX, align 8
  %2251 = trunc i64 %2250 to i32
  %2252 = add i32 %2248, %2251
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RAX, align 8, !tbaa !2428
  %2254 = icmp ult i32 %2252, %2251
  %2255 = icmp ult i32 %2252, %2248
  %2256 = or i1 %2254, %2255
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %13, align 1, !tbaa !2432
  %2258 = and i32 %2252, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258) #9
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %20, align 1, !tbaa !2446
  %2263 = xor i64 %2249, %2250
  %2264 = trunc i64 %2263 to i32
  %2265 = xor i32 %2264, %2252
  %2266 = lshr i32 %2265, 4
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  store i8 %2268, i8* %26, align 1, !tbaa !2447
  %2269 = icmp eq i32 %2252, 0
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %29, align 1, !tbaa !2448
  %2271 = lshr i32 %2252, 31
  %2272 = trunc i32 %2271 to i8
  store i8 %2272, i8* %32, align 1, !tbaa !2449
  %2273 = lshr i32 %2251, 31
  %2274 = lshr i32 %2247, 28
  %2275 = and i32 %2274, 1
  %2276 = xor i32 %2271, %2273
  %2277 = xor i32 %2271, %2275
  %2278 = add nuw nsw i32 %2276, %2277
  %2279 = icmp eq i32 %2278, 2
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %38, align 1, !tbaa !2450
  %2281 = sext i32 %2252 to i64
  store i64 %2281, i64* %RSI, align 8, !tbaa !2428
  %2282 = shl nsw i64 %2281, 2
  %2283 = add i64 %2282, add (i64 ptrtoint (%p_type* @p to i64), i64 22528)
  %2284 = add i64 %2367, 33
  store i64 %2284, i64* %PC, align 8
  %2285 = inttoptr i64 %2283 to i32*
  store i32 1, i32* %2285, align 4
  %2286 = load i64, i64* %RBP, align 8
  %2287 = add i64 %2286, -12
  %2288 = load i64, i64* %PC, align 8
  %2289 = add i64 %2288, 3
  store i64 %2289, i64* %PC, align 8
  %2290 = inttoptr i64 %2287 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = add i32 %2291, 1
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RAX, align 8, !tbaa !2428
  %2294 = icmp eq i32 %2291, -1
  %2295 = icmp eq i32 %2292, 0
  %2296 = or i1 %2294, %2295
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %13, align 1, !tbaa !2432
  %2298 = and i32 %2292, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298) #9
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %20, align 1, !tbaa !2446
  %2303 = xor i32 %2292, %2291
  %2304 = lshr i32 %2303, 4
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  store i8 %2306, i8* %26, align 1, !tbaa !2447
  %2307 = zext i1 %2295 to i8
  store i8 %2307, i8* %29, align 1, !tbaa !2448
  %2308 = lshr i32 %2292, 31
  %2309 = trunc i32 %2308 to i8
  store i8 %2309, i8* %32, align 1, !tbaa !2449
  %2310 = lshr i32 %2291, 31
  %2311 = xor i32 %2308, %2310
  %2312 = add nuw nsw i32 %2311, %2308
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %38, align 1, !tbaa !2450
  %2315 = add i64 %2288, 9
  store i64 %2315, i64* %PC, align 8
  store i32 %2292, i32* %2290, align 4
  %2316 = load i64, i64* %PC, align 8
  %2317 = add i64 %2316, -52
  store i64 %2317, i64* %PC, align 8, !tbaa !2428
  br label %block_40107a

block_400e7e:                                     ; preds = %block_400eec, %block_400e61
  %2318 = phi i64 [ %3417, %block_400eec ], [ %.pre243, %block_400e61 ]
  %2319 = load i64, i64* %RBP, align 8
  %2320 = add i64 %2319, -4
  %2321 = add i64 %2318, 4
  store i64 %2321, i64* %PC, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2324 = and i32 %2323, 255
  %2325 = tail call i32 @llvm.ctpop.i32(i32 %2324) #9
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = xor i8 %2327, 1
  store i8 %2328, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2329 = icmp eq i32 %2323, 0
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %29, align 1, !tbaa !2448
  %2331 = lshr i32 %2323, 31
  %2332 = trunc i32 %2331 to i8
  store i8 %2332, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2333 = xor i1 %2329, true
  %2334 = icmp eq i8 %2332, 0
  %2335 = and i1 %2334, %2333
  %.v329 = select i1 %2335, i64 129, i64 10
  %2336 = add i64 %2318, %.v329
  store i64 %2336, i64* %PC, align 8, !tbaa !2428
  br i1 %2335, label %block_400eff, label %block_400e88

block_400e61:                                     ; preds = %block_400de0
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 28) to i32*), align 4
  store i32 16, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 28) to i32*), align 4
  %2337 = add i64 %1119, 29
  store i64 %2337, i64* %PC, align 8
  store i32 0, i32* %1105, align 4
  %.pre243 = load i64, i64* %PC, align 8
  br label %block_400e7e

block_40107a:                                     ; preds = %block_401073, %block_401084
  %2338 = phi i64 [ %.pre254, %block_401073 ], [ %2317, %block_401084 ]
  %2339 = load i64, i64* %RBP, align 8
  %2340 = add i64 %2339, -12
  %2341 = add i64 %2338, 4
  store i64 %2341, i64* %PC, align 8
  %2342 = inttoptr i64 %2340 to i32*
  %2343 = load i32, i32* %2342, align 4
  %2344 = add i32 %2343, -1
  %2345 = icmp eq i32 %2343, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %13, align 1, !tbaa !2432
  %2347 = and i32 %2344, 255
  %2348 = tail call i32 @llvm.ctpop.i32(i32 %2347) #9
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = xor i8 %2350, 1
  store i8 %2351, i8* %20, align 1, !tbaa !2446
  %2352 = xor i32 %2344, %2343
  %2353 = lshr i32 %2352, 4
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  store i8 %2355, i8* %26, align 1, !tbaa !2447
  %2356 = icmp eq i32 %2344, 0
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %29, align 1, !tbaa !2448
  %2358 = lshr i32 %2344, 31
  %2359 = trunc i32 %2358 to i8
  store i8 %2359, i8* %32, align 1, !tbaa !2449
  %2360 = lshr i32 %2343, 31
  %2361 = xor i32 %2358, %2360
  %2362 = add nuw nsw i32 %2361, %2360
  %2363 = icmp eq i32 %2362, 2
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %38, align 1, !tbaa !2450
  %2365 = icmp ne i8 %2359, 0
  %2366 = xor i1 %2365, %2363
  %.demorgan310 = or i1 %2356, %2366
  %.v311 = select i1 %.demorgan310, i64 10, i64 57
  %2367 = add i64 %2338, %.v311
  store i64 %2367, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan310, label %block_401084, label %block_4010b3

block_400c74:                                     ; preds = %block_400c17
  %2368 = add i64 %3424, -4
  %2369 = add i64 %3441, 8
  store i64 %2369, i64* %PC, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = add i32 %2371, 1
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RAX, align 8, !tbaa !2428
  %2374 = icmp eq i32 %2371, -1
  %2375 = icmp eq i32 %2372, 0
  %2376 = or i1 %2374, %2375
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %13, align 1, !tbaa !2432
  %2378 = and i32 %2372, 255
  %2379 = tail call i32 @llvm.ctpop.i32(i32 %2378) #9
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  store i8 %2382, i8* %20, align 1, !tbaa !2446
  %2383 = xor i32 %2372, %2371
  %2384 = lshr i32 %2383, 4
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  store i8 %2386, i8* %26, align 1, !tbaa !2447
  %2387 = zext i1 %2375 to i8
  store i8 %2387, i8* %29, align 1, !tbaa !2448
  %2388 = lshr i32 %2372, 31
  %2389 = trunc i32 %2388 to i8
  store i8 %2389, i8* %32, align 1, !tbaa !2449
  %2390 = lshr i32 %2371, 31
  %2391 = xor i32 %2388, %2390
  %2392 = add nuw nsw i32 %2391, %2388
  %2393 = icmp eq i32 %2392, 2
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %38, align 1, !tbaa !2450
  %2395 = add i64 %3441, 14
  store i64 %2395, i64* %PC, align 8
  store i32 %2372, i32* %2370, align 4
  %2396 = load i64, i64* %PC, align 8
  %2397 = add i64 %2396, -124
  store i64 %2397, i64* %PC, align 8, !tbaa !2428
  br label %block_400c06

block_400adb:                                     ; preds = %block_400ad4, %block_400b25
  %2398 = phi i64 [ %.pre226, %block_400ad4 ], [ %1413, %block_400b25 ]
  %2399 = load i64, i64* %RBP, align 8
  %2400 = add i64 %2399, -8
  %2401 = add i64 %2398, 4
  store i64 %2401, i64* %PC, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = add i32 %2403, -3
  %2405 = icmp ult i32 %2403, 3
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %13, align 1, !tbaa !2432
  %2407 = and i32 %2404, 255
  %2408 = tail call i32 @llvm.ctpop.i32(i32 %2407) #9
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  store i8 %2411, i8* %20, align 1, !tbaa !2446
  %2412 = xor i32 %2404, %2403
  %2413 = lshr i32 %2412, 4
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  store i8 %2415, i8* %26, align 1, !tbaa !2447
  %2416 = icmp eq i32 %2404, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %29, align 1, !tbaa !2448
  %2418 = lshr i32 %2404, 31
  %2419 = trunc i32 %2418 to i8
  store i8 %2419, i8* %32, align 1, !tbaa !2449
  %2420 = lshr i32 %2403, 31
  %2421 = xor i32 %2418, %2420
  %2422 = add nuw nsw i32 %2421, %2420
  %2423 = icmp eq i32 %2422, 2
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %38, align 1, !tbaa !2450
  %2425 = icmp ne i8 %2419, 0
  %2426 = xor i1 %2425, %2423
  %.demorgan276 = or i1 %2416, %2426
  %.v279 = select i1 %.demorgan276, i64 10, i64 93
  %2427 = add i64 %2398, %.v279
  store i64 %2427, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan276, label %block_400ae5, label %block_400b38

block_4008c2:                                     ; preds = %block_4008bb, %block_4008cc
  %2428 = phi i64 [ %.pre216, %block_4008bb ], [ %1720, %block_4008cc ]
  %2429 = load i64, i64* %RBP, align 8
  %2430 = add i64 %2429, -12
  %2431 = add i64 %2428, 4
  store i64 %2431, i64* %PC, align 8
  %2432 = inttoptr i64 %2430 to i32*
  %2433 = load i32, i32* %2432, align 4
  %2434 = add i32 %2433, -5
  %2435 = icmp ult i32 %2433, 5
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %13, align 1, !tbaa !2432
  %2437 = and i32 %2434, 255
  %2438 = tail call i32 @llvm.ctpop.i32(i32 %2437) #9
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  store i8 %2441, i8* %20, align 1, !tbaa !2446
  %2442 = xor i32 %2434, %2433
  %2443 = lshr i32 %2442, 4
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  store i8 %2445, i8* %26, align 1, !tbaa !2447
  %2446 = icmp eq i32 %2434, 0
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %29, align 1, !tbaa !2448
  %2448 = lshr i32 %2434, 31
  %2449 = trunc i32 %2448 to i8
  store i8 %2449, i8* %32, align 1, !tbaa !2449
  %2450 = lshr i32 %2433, 31
  %2451 = xor i32 %2448, %2450
  %2452 = add nuw nsw i32 %2451, %2450
  %2453 = icmp eq i32 %2452, 2
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %38, align 1, !tbaa !2450
  %2455 = icmp ne i8 %2449, 0
  %2456 = xor i1 %2455, %2453
  %.demorgan263 = or i1 %2446, %2456
  %.v = select i1 %.demorgan263, i64 10, i64 57
  %2457 = add i64 %2428, %.v
  store i64 %2457, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan263, label %block_4008cc, label %block_4008fb

block_401073:                                     ; preds = %block_401069
  %2458 = add i64 %2523, -12
  %2459 = add i64 %2551, 7
  store i64 %2459, i64* %PC, align 8
  %2460 = inttoptr i64 %2458 to i32*
  store i32 0, i32* %2460, align 4
  %.pre254 = load i64, i64* %PC, align 8
  br label %block_40107a

block_40086f:                                     ; preds = %block_40087c, %block_400860
  %2461 = phi i64 [ %3324, %block_40087c ], [ %.pre, %block_400860 ]
  %2462 = load i64, i64* %RBP, align 8
  %2463 = add i64 %2462, -16
  %2464 = add i64 %2461, 7
  store i64 %2464, i64* %PC, align 8
  %2465 = inttoptr i64 %2463 to i32*
  %2466 = load i32, i32* %2465, align 4
  %2467 = add i32 %2466, -511
  %2468 = icmp ult i32 %2466, 511
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %13, align 1, !tbaa !2432
  %2470 = and i32 %2467, 255
  %2471 = tail call i32 @llvm.ctpop.i32(i32 %2470) #9
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  store i8 %2474, i8* %20, align 1, !tbaa !2446
  %2475 = xor i32 %2466, 16
  %2476 = xor i32 %2475, %2467
  %2477 = lshr i32 %2476, 4
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %26, align 1, !tbaa !2447
  %2480 = icmp eq i32 %2467, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %29, align 1, !tbaa !2448
  %2482 = lshr i32 %2467, 31
  %2483 = trunc i32 %2482 to i8
  store i8 %2483, i8* %32, align 1, !tbaa !2449
  %2484 = lshr i32 %2466, 31
  %2485 = xor i32 %2482, %2484
  %2486 = add nuw nsw i32 %2485, %2484
  %2487 = icmp eq i32 %2486, 2
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %38, align 1, !tbaa !2450
  %2489 = icmp ne i8 %2483, 0
  %2490 = xor i1 %2489, %2487
  %.demorgan = or i1 %2480, %2490
  %.v318 = select i1 %.demorgan, i64 13, i64 42
  %2491 = add i64 %2461, %.v318
  store i64 %2491, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40087c, label %block_400899

block_400d9d:                                     ; preds = %block_400d64
  %2492 = add i64 %2782, -8
  %2493 = add i64 %2799, 8
  store i64 %2493, i64* %PC, align 8
  %2494 = inttoptr i64 %2492 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = add i32 %2495, 1
  %2497 = zext i32 %2496 to i64
  store i64 %2497, i64* %RAX, align 8, !tbaa !2428
  %2498 = icmp eq i32 %2495, -1
  %2499 = icmp eq i32 %2496, 0
  %2500 = or i1 %2498, %2499
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %13, align 1, !tbaa !2432
  %2502 = and i32 %2496, 255
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502) #9
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %20, align 1, !tbaa !2446
  %2507 = xor i32 %2496, %2495
  %2508 = lshr i32 %2507, 4
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  store i8 %2510, i8* %26, align 1, !tbaa !2447
  %2511 = zext i1 %2499 to i8
  store i8 %2511, i8* %29, align 1, !tbaa !2448
  %2512 = lshr i32 %2496, 31
  %2513 = trunc i32 %2512 to i8
  store i8 %2513, i8* %32, align 1, !tbaa !2449
  %2514 = lshr i32 %2495, 31
  %2515 = xor i32 %2512, %2514
  %2516 = add nuw nsw i32 %2515, %2512
  %2517 = icmp eq i32 %2516, 2
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %38, align 1, !tbaa !2450
  %2519 = add i64 %2799, 14
  store i64 %2519, i64* %PC, align 8
  store i32 %2496, i32* %2494, align 4
  %2520 = load i64, i64* %PC, align 8
  %2521 = add i64 %2520, -88
  store i64 %2521, i64* %PC, align 8, !tbaa !2428
  br label %block_400d53

block_401069:                                     ; preds = %block_401062, %block_4010b3
  %2522 = phi i64 [ %.pre253, %block_401062 ], [ %1816, %block_4010b3 ]
  %2523 = load i64, i64* %RBP, align 8
  %2524 = add i64 %2523, -8
  %2525 = add i64 %2522, 4
  store i64 %2525, i64* %PC, align 8
  %2526 = inttoptr i64 %2524 to i32*
  %2527 = load i32, i32* %2526, align 4
  %2528 = add i32 %2527, -1
  %2529 = icmp eq i32 %2527, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %13, align 1, !tbaa !2432
  %2531 = and i32 %2528, 255
  %2532 = tail call i32 @llvm.ctpop.i32(i32 %2531) #9
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  store i8 %2535, i8* %20, align 1, !tbaa !2446
  %2536 = xor i32 %2528, %2527
  %2537 = lshr i32 %2536, 4
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  store i8 %2539, i8* %26, align 1, !tbaa !2447
  %2540 = icmp eq i32 %2528, 0
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %29, align 1, !tbaa !2448
  %2542 = lshr i32 %2528, 31
  %2543 = trunc i32 %2542 to i8
  store i8 %2543, i8* %32, align 1, !tbaa !2449
  %2544 = lshr i32 %2527, 31
  %2545 = xor i32 %2542, %2544
  %2546 = add nuw nsw i32 %2545, %2544
  %2547 = icmp eq i32 %2546, 2
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %38, align 1, !tbaa !2450
  %2549 = icmp ne i8 %2543, 0
  %2550 = xor i1 %2549, %2547
  %.demorgan309 = or i1 %2540, %2550
  %.v312 = select i1 %.demorgan309, i64 10, i64 93
  %2551 = add i64 %2522, %.v312
  store i64 %2551, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan309, label %block_401073, label %block_4010c6

block_400aca:                                     ; preds = %block_400aad, %block_400b38
  %2552 = phi i64 [ %.pre225, %block_400aad ], [ %749, %block_400b38 ]
  %2553 = load i64, i64* %RBP, align 8
  %2554 = add i64 %2553, -4
  %2555 = add i64 %2552, 4
  store i64 %2555, i64* %PC, align 8
  %2556 = inttoptr i64 %2554 to i32*
  %2557 = load i32, i32* %2556, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2558 = and i32 %2557, 255
  %2559 = tail call i32 @llvm.ctpop.i32(i32 %2558) #9
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = xor i8 %2561, 1
  store i8 %2562, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2563 = icmp eq i32 %2557, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %29, align 1, !tbaa !2448
  %2565 = lshr i32 %2557, 31
  %2566 = trunc i32 %2565 to i8
  store i8 %2566, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2567 = xor i1 %2563, true
  %2568 = icmp eq i8 %2566, 0
  %2569 = and i1 %2568, %2567
  %.v323 = select i1 %2569, i64 129, i64 10
  %2570 = add i64 %2552, %.v323
  store i64 %2570, i64* %PC, align 8, !tbaa !2428
  br i1 %2569, label %block_400b4b, label %block_400ad4

block_4008b1:                                     ; preds = %block_4008aa, %block_4008fb
  %2571 = phi i64 [ %.pre215, %block_4008aa ], [ %1149, %block_4008fb ]
  %2572 = load i64, i64* %RBP, align 8
  %2573 = add i64 %2572, -8
  %2574 = add i64 %2571, 4
  store i64 %2574, i64* %PC, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = add i32 %2576, -5
  %2578 = icmp ult i32 %2576, 5
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %13, align 1, !tbaa !2432
  %2580 = and i32 %2577, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580) #9
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %20, align 1, !tbaa !2446
  %2585 = xor i32 %2577, %2576
  %2586 = lshr i32 %2585, 4
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %26, align 1, !tbaa !2447
  %2589 = icmp eq i32 %2577, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %29, align 1, !tbaa !2448
  %2591 = lshr i32 %2577, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %32, align 1, !tbaa !2449
  %2593 = lshr i32 %2576, 31
  %2594 = xor i32 %2591, %2593
  %2595 = add nuw nsw i32 %2594, %2593
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %38, align 1, !tbaa !2450
  %2598 = icmp ne i8 %2592, 0
  %2599 = xor i1 %2598, %2596
  %.demorgan262 = or i1 %2589, %2599
  %.v264 = select i1 %.demorgan262, i64 10, i64 93
  %2600 = add i64 %2571, %.v264
  store i64 %2600, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan262, label %block_4008bb, label %block_40090e

block_401062:                                     ; preds = %block_401058
  %2601 = add i64 %3473, -8
  %2602 = add i64 %3490, 7
  store i64 %2602, i64* %PC, align 8
  %2603 = inttoptr i64 %2601 to i32*
  store i32 0, i32* %2603, align 4
  %.pre253 = load i64, i64* %PC, align 8
  br label %block_401069

block_400f2d:                                     ; preds = %block_400f26, %block_400f77
  %2604 = phi i64 [ %.pre247, %block_400f26 ], [ %483, %block_400f77 ]
  %2605 = load i64, i64* %RBP, align 8
  %2606 = add i64 %2605, -8
  %2607 = add i64 %2604, 4
  store i64 %2607, i64* %PC, align 8
  %2608 = inttoptr i64 %2606 to i32*
  %2609 = load i32, i32* %2608, align 4
  %2610 = add i32 %2609, -1
  %2611 = icmp eq i32 %2609, 0
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %13, align 1, !tbaa !2432
  %2613 = and i32 %2610, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613) #9
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %20, align 1, !tbaa !2446
  %2618 = xor i32 %2610, %2609
  %2619 = lshr i32 %2618, 4
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  store i8 %2621, i8* %26, align 1, !tbaa !2447
  %2622 = icmp eq i32 %2610, 0
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %29, align 1, !tbaa !2448
  %2624 = lshr i32 %2610, 31
  %2625 = trunc i32 %2624 to i8
  store i8 %2625, i8* %32, align 1, !tbaa !2449
  %2626 = lshr i32 %2609, 31
  %2627 = xor i32 %2624, %2626
  %2628 = add nuw nsw i32 %2627, %2626
  %2629 = icmp eq i32 %2628, 2
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %38, align 1, !tbaa !2450
  %2631 = icmp ne i8 %2625, 0
  %2632 = xor i1 %2631, %2629
  %.demorgan302 = or i1 %2622, %2632
  %.v304 = select i1 %.demorgan302, i64 10, i64 93
  %2633 = add i64 %2604, %.v304
  store i64 %2633, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan302, label %block_400f37, label %block_400f8a

block_400c61:                                     ; preds = %block_400c28
  %2634 = add i64 %3495, -8
  %2635 = add i64 %3523, 8
  store i64 %2635, i64* %PC, align 8
  %2636 = inttoptr i64 %2634 to i32*
  %2637 = load i32, i32* %2636, align 4
  %2638 = add i32 %2637, 1
  %2639 = zext i32 %2638 to i64
  store i64 %2639, i64* %RAX, align 8, !tbaa !2428
  %2640 = icmp eq i32 %2637, -1
  %2641 = icmp eq i32 %2638, 0
  %2642 = or i1 %2640, %2641
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %13, align 1, !tbaa !2432
  %2644 = and i32 %2638, 255
  %2645 = tail call i32 @llvm.ctpop.i32(i32 %2644) #9
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = xor i8 %2647, 1
  store i8 %2648, i8* %20, align 1, !tbaa !2446
  %2649 = xor i32 %2638, %2637
  %2650 = lshr i32 %2649, 4
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  store i8 %2652, i8* %26, align 1, !tbaa !2447
  %2653 = zext i1 %2641 to i8
  store i8 %2653, i8* %29, align 1, !tbaa !2448
  %2654 = lshr i32 %2638, 31
  %2655 = trunc i32 %2654 to i8
  store i8 %2655, i8* %32, align 1, !tbaa !2449
  %2656 = lshr i32 %2637, 31
  %2657 = xor i32 %2654, %2656
  %2658 = add nuw nsw i32 %2657, %2654
  %2659 = icmp eq i32 %2658, 2
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %38, align 1, !tbaa !2450
  %2661 = add i64 %3523, 14
  store i64 %2661, i64* %PC, align 8
  store i32 %2638, i32* %2636, align 4
  %2662 = load i64, i64* %PC, align 8
  %2663 = add i64 %2662, -88
  store i64 %2663, i64* %PC, align 8, !tbaa !2428
  br label %block_400c17

block_401177:                                     ; preds = %block_4010f6
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i32 3, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 48) to i32*), align 16
  store i32 73, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 48) to i32*), align 16
  store i32 13, i32* bitcast (%piececount_type* @piececount to i32*), align 8
  store i32 3, i32* inttoptr (i64 add (i64 ptrtoint (%piececount_type* @piececount to i64), i64 4) to i32*), align 4
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%piececount_type* @piececount to i64), i64 8) to i32*), align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%piececount_type* @piececount to i64), i64 12) to i32*), align 4
  %2664 = add i64 %176, -16
  %2665 = add i64 %204, 75
  store i64 %2665, i64* %PC, align 8
  %2666 = inttoptr i64 %2664 to i32*
  store i32 73, i32* %2666, align 4
  %2667 = load i64, i64* %PC, align 8
  store i32 0, i32* bitcast (%kount_type* @kount to i32*), align 8
  %2668 = load i64, i64* %RBP, align 8
  %2669 = add i64 %2668, -16
  %2670 = add i64 %2667, 14
  store i64 %2670, i64* %PC, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RSI, align 8, !tbaa !2428
  %2674 = add i64 %2667, -3154
  %2675 = add i64 %2667, 19
  %2676 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2677 = add i64 %2676, -8
  %2678 = inttoptr i64 %2677 to i64*
  store i64 %2675, i64* %2678, align 8
  store i64 %2677, i64* %RSP, align 8, !tbaa !2428
  store i64 %2674, i64* %PC, align 8, !tbaa !2428
  %2679 = tail call %struct.Memory* @sub_400570_Fit(%struct.State* nonnull %0, i64 %2674, %struct.Memory* %2)
  %2680 = load i32, i32* %EAX, align 4
  %2681 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2682 = and i32 %2680, 255
  %2683 = tail call i32 @llvm.ctpop.i32(i32 %2682) #9
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  store i8 %2686, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2687 = icmp eq i32 %2680, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %29, align 1, !tbaa !2448
  %2689 = lshr i32 %2680, 31
  %2690 = trunc i32 %2689 to i8
  store i8 %2690, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v334 = select i1 %2687, i64 31, i64 9
  %2691 = add i64 %2681, %.v334
  store i64 %2691, i64* %PC, align 8, !tbaa !2428
  br i1 %2687, label %block_4011f4, label %block_4011de

block_4009ba:                                     ; preds = %block_4009b0
  %2692 = add i64 %1333, -4
  %2693 = add i64 %1350, 3
  store i64 %2693, i64* %PC, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RAX, align 8, !tbaa !2428
  %2697 = add i64 %1333, -8
  %2698 = add i64 %1350, 6
  store i64 %2698, i64* %PC, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RCX, align 8, !tbaa !2428
  %2702 = add i64 %1350, 9
  store i64 %2702, i64* %PC, align 8
  %2703 = load i32, i32* %1336, align 4
  %2704 = shl i32 %2703, 3
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RDX, align 8, !tbaa !2428
  %2706 = add i32 %2704, %2700
  %2707 = shl i32 %2706, 3
  %2708 = zext i32 %2707 to i64
  store i64 %2708, i64* %RCX, align 8, !tbaa !2428
  %2709 = load i64, i64* %RAX, align 8
  %2710 = trunc i64 %2709 to i32
  %2711 = add i32 %2707, %2710
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RAX, align 8, !tbaa !2428
  %2713 = icmp ult i32 %2711, %2710
  %2714 = icmp ult i32 %2711, %2707
  %2715 = or i1 %2713, %2714
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %13, align 1, !tbaa !2432
  %2717 = and i32 %2711, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717) #9
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %20, align 1, !tbaa !2446
  %2722 = xor i64 %2708, %2709
  %2723 = trunc i64 %2722 to i32
  %2724 = xor i32 %2723, %2711
  %2725 = lshr i32 %2724, 4
  %2726 = trunc i32 %2725 to i8
  %2727 = and i8 %2726, 1
  store i8 %2727, i8* %26, align 1, !tbaa !2447
  %2728 = icmp eq i32 %2711, 0
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %29, align 1, !tbaa !2448
  %2730 = lshr i32 %2711, 31
  %2731 = trunc i32 %2730 to i8
  store i8 %2731, i8* %32, align 1, !tbaa !2449
  %2732 = lshr i32 %2710, 31
  %2733 = lshr i32 %2706, 28
  %2734 = and i32 %2733, 1
  %2735 = xor i32 %2730, %2732
  %2736 = xor i32 %2730, %2734
  %2737 = add nuw nsw i32 %2735, %2736
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %38, align 1, !tbaa !2450
  %2740 = sext i32 %2711 to i64
  store i64 %2740, i64* %RSI, align 8, !tbaa !2428
  %2741 = shl nsw i64 %2740, 2
  %2742 = add i64 %2741, ptrtoint (%p_type* @p to i64)
  %2743 = add i64 %1350, 33
  store i64 %2743, i64* %PC, align 8
  %2744 = inttoptr i64 %2742 to i32*
  store i32 1, i32* %2744, align 4
  %2745 = load i64, i64* %RBP, align 8
  %2746 = add i64 %2745, -12
  %2747 = load i64, i64* %PC, align 8
  %2748 = add i64 %2747, 3
  store i64 %2748, i64* %PC, align 8
  %2749 = inttoptr i64 %2746 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = add i32 %2750, 1
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RAX, align 8, !tbaa !2428
  %2753 = icmp eq i32 %2750, -1
  %2754 = icmp eq i32 %2751, 0
  %2755 = or i1 %2753, %2754
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %13, align 1, !tbaa !2432
  %2757 = and i32 %2751, 255
  %2758 = tail call i32 @llvm.ctpop.i32(i32 %2757) #9
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  %2761 = xor i8 %2760, 1
  store i8 %2761, i8* %20, align 1, !tbaa !2446
  %2762 = xor i32 %2751, %2750
  %2763 = lshr i32 %2762, 4
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  store i8 %2765, i8* %26, align 1, !tbaa !2447
  %2766 = zext i1 %2754 to i8
  store i8 %2766, i8* %29, align 1, !tbaa !2448
  %2767 = lshr i32 %2751, 31
  %2768 = trunc i32 %2767 to i8
  store i8 %2768, i8* %32, align 1, !tbaa !2449
  %2769 = lshr i32 %2750, 31
  %2770 = xor i32 %2767, %2769
  %2771 = add nuw nsw i32 %2770, %2767
  %2772 = icmp eq i32 %2771, 2
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %38, align 1, !tbaa !2450
  %2774 = add i64 %2747, 9
  store i64 %2774, i64* %PC, align 8
  store i32 %2751, i32* %2749, align 4
  %2775 = load i64, i64* %PC, align 8
  %2776 = add i64 %2775, -52
  store i64 %2776, i64* %PC, align 8, !tbaa !2428
  br label %block_4009b0

block_400b4b:                                     ; preds = %block_400aca
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 8) to i32*), align 8
  store i32 88, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 8) to i32*), align 8
  %2777 = add i64 %2570, 29
  store i64 %2777, i64* %PC, align 8
  store i32 0, i32* %2556, align 4
  %.pre228 = load i64, i64* %PC, align 8
  br label %block_400b68

block_400932:                                     ; preds = %block_400928
  %2778 = add i64 %816, -16
  %2779 = add i64 %844, 7
  store i64 %2779, i64* %PC, align 8
  %2780 = inttoptr i64 %2778 to i32*
  store i32 0, i32* %2780, align 4
  %.pre218 = load i64, i64* %PC, align 8
  br label %block_400939

block_400d64:                                     ; preds = %block_400d5d, %block_400d6e
  %2781 = phi i64 [ %.pre239, %block_400d5d ], [ %598, %block_400d6e ]
  %2782 = load i64, i64* %RBP, align 8
  %2783 = add i64 %2782, -12
  %2784 = add i64 %2781, 4
  store i64 %2784, i64* %PC, align 8
  %2785 = inttoptr i64 %2783 to i32*
  %2786 = load i32, i32* %2785, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2787 = and i32 %2786, 255
  %2788 = tail call i32 @llvm.ctpop.i32(i32 %2787) #9
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  store i8 %2791, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2792 = icmp eq i32 %2786, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %29, align 1, !tbaa !2448
  %2794 = lshr i32 %2786, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2796 = xor i1 %2792, true
  %2797 = icmp eq i8 %2795, 0
  %2798 = and i1 %2797, %2796
  %.v293 = select i1 %2798, i64 57, i64 10
  %2799 = add i64 %2781, %.v293
  store i64 %2799, i64* %PC, align 8, !tbaa !2428
  br i1 %2798, label %block_400d9d, label %block_400d6e

block_400a58:                                     ; preds = %block_400a4e
  %2800 = add i64 %2977, -4
  %2801 = add i64 %3005, 3
  store i64 %2801, i64* %PC, align 8
  %2802 = inttoptr i64 %2800 to i32*
  %2803 = load i32, i32* %2802, align 4
  %2804 = zext i32 %2803 to i64
  store i64 %2804, i64* %RAX, align 8, !tbaa !2428
  %2805 = add i64 %2977, -8
  %2806 = add i64 %3005, 6
  store i64 %2806, i64* %PC, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RCX, align 8, !tbaa !2428
  %2810 = add i64 %3005, 9
  store i64 %2810, i64* %PC, align 8
  %2811 = load i32, i32* %2980, align 4
  %2812 = shl i32 %2811, 3
  %2813 = zext i32 %2812 to i64
  store i64 %2813, i64* %RDX, align 8, !tbaa !2428
  %2814 = add i32 %2812, %2808
  %2815 = shl i32 %2814, 3
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RCX, align 8, !tbaa !2428
  %2817 = load i64, i64* %RAX, align 8
  %2818 = trunc i64 %2817 to i32
  %2819 = add i32 %2815, %2818
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RAX, align 8, !tbaa !2428
  %2821 = icmp ult i32 %2819, %2818
  %2822 = icmp ult i32 %2819, %2815
  %2823 = or i1 %2821, %2822
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %13, align 1, !tbaa !2432
  %2825 = and i32 %2819, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825) #9
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %20, align 1, !tbaa !2446
  %2830 = xor i64 %2816, %2817
  %2831 = trunc i64 %2830 to i32
  %2832 = xor i32 %2831, %2819
  %2833 = lshr i32 %2832, 4
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  store i8 %2835, i8* %26, align 1, !tbaa !2447
  %2836 = icmp eq i32 %2819, 0
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %29, align 1, !tbaa !2448
  %2838 = lshr i32 %2819, 31
  %2839 = trunc i32 %2838 to i8
  store i8 %2839, i8* %32, align 1, !tbaa !2449
  %2840 = lshr i32 %2818, 31
  %2841 = lshr i32 %2814, 28
  %2842 = and i32 %2841, 1
  %2843 = xor i32 %2838, %2840
  %2844 = xor i32 %2838, %2842
  %2845 = add nuw nsw i32 %2843, %2844
  %2846 = icmp eq i32 %2845, 2
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %38, align 1, !tbaa !2450
  %2848 = sext i32 %2819 to i64
  store i64 %2848, i64* %RSI, align 8, !tbaa !2428
  %2849 = shl nsw i64 %2848, 2
  %2850 = add i64 %2849, add (i64 ptrtoint (%p_type* @p to i64), i64 2048)
  %2851 = add i64 %3005, 33
  store i64 %2851, i64* %PC, align 8
  %2852 = inttoptr i64 %2850 to i32*
  store i32 1, i32* %2852, align 4
  %2853 = load i64, i64* %RBP, align 8
  %2854 = add i64 %2853, -12
  %2855 = load i64, i64* %PC, align 8
  %2856 = add i64 %2855, 3
  store i64 %2856, i64* %PC, align 8
  %2857 = inttoptr i64 %2854 to i32*
  %2858 = load i32, i32* %2857, align 4
  %2859 = add i32 %2858, 1
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RAX, align 8, !tbaa !2428
  %2861 = icmp eq i32 %2858, -1
  %2862 = icmp eq i32 %2859, 0
  %2863 = or i1 %2861, %2862
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %13, align 1, !tbaa !2432
  %2865 = and i32 %2859, 255
  %2866 = tail call i32 @llvm.ctpop.i32(i32 %2865) #9
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  %2869 = xor i8 %2868, 1
  store i8 %2869, i8* %20, align 1, !tbaa !2446
  %2870 = xor i32 %2859, %2858
  %2871 = lshr i32 %2870, 4
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  store i8 %2873, i8* %26, align 1, !tbaa !2447
  %2874 = zext i1 %2862 to i8
  store i8 %2874, i8* %29, align 1, !tbaa !2448
  %2875 = lshr i32 %2859, 31
  %2876 = trunc i32 %2875 to i8
  store i8 %2876, i8* %32, align 1, !tbaa !2449
  %2877 = lshr i32 %2858, 31
  %2878 = xor i32 %2875, %2877
  %2879 = add nuw nsw i32 %2878, %2875
  %2880 = icmp eq i32 %2879, 2
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %38, align 1, !tbaa !2450
  %2882 = add i64 %2855, 9
  store i64 %2882, i64* %PC, align 8
  store i32 %2859, i32* %2857, align 4
  %2883 = load i64, i64* %PC, align 8
  %2884 = add i64 %2883, -52
  store i64 %2884, i64* %PC, align 8, !tbaa !2428
  br label %block_400a4e

block_400ad4:                                     ; preds = %block_400aca
  %2885 = add i64 %2553, -8
  %2886 = add i64 %2570, 7
  store i64 %2886, i64* %PC, align 8
  %2887 = inttoptr i64 %2885 to i32*
  store i32 0, i32* %2887, align 4
  %.pre226 = load i64, i64* %PC, align 8
  br label %block_400adb

block_4008bb:                                     ; preds = %block_4008b1
  %2888 = add i64 %2572, -12
  %2889 = add i64 %2600, 7
  store i64 %2889, i64* %PC, align 8
  %2890 = inttoptr i64 %2888 to i32*
  store i32 1, i32* %2890, align 4
  %.pre216 = load i64, i64* %PC, align 8
  br label %block_4008c2

block_400fe6:                                     ; preds = %block_400fdc
  %2891 = add i64 %206, -4
  %2892 = add i64 %234, 3
  store i64 %2892, i64* %PC, align 8
  %2893 = inttoptr i64 %2891 to i32*
  %2894 = load i32, i32* %2893, align 4
  %2895 = zext i32 %2894 to i64
  store i64 %2895, i64* %RAX, align 8, !tbaa !2428
  %2896 = add i64 %206, -8
  %2897 = add i64 %234, 6
  store i64 %2897, i64* %PC, align 8
  %2898 = inttoptr i64 %2896 to i32*
  %2899 = load i32, i32* %2898, align 4
  %2900 = zext i32 %2899 to i64
  store i64 %2900, i64* %RCX, align 8, !tbaa !2428
  %2901 = add i64 %234, 9
  store i64 %2901, i64* %PC, align 8
  %2902 = load i32, i32* %209, align 4
  %2903 = shl i32 %2902, 3
  %2904 = zext i32 %2903 to i64
  store i64 %2904, i64* %RDX, align 8, !tbaa !2428
  %2905 = add i32 %2903, %2899
  %2906 = shl i32 %2905, 3
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RCX, align 8, !tbaa !2428
  %2908 = load i64, i64* %RAX, align 8
  %2909 = trunc i64 %2908 to i32
  %2910 = add i32 %2906, %2909
  %2911 = zext i32 %2910 to i64
  store i64 %2911, i64* %RAX, align 8, !tbaa !2428
  %2912 = icmp ult i32 %2910, %2909
  %2913 = icmp ult i32 %2910, %2906
  %2914 = or i1 %2912, %2913
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %13, align 1, !tbaa !2432
  %2916 = and i32 %2910, 255
  %2917 = tail call i32 @llvm.ctpop.i32(i32 %2916) #9
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  %2920 = xor i8 %2919, 1
  store i8 %2920, i8* %20, align 1, !tbaa !2446
  %2921 = xor i64 %2907, %2908
  %2922 = trunc i64 %2921 to i32
  %2923 = xor i32 %2922, %2910
  %2924 = lshr i32 %2923, 4
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %26, align 1, !tbaa !2447
  %2927 = icmp eq i32 %2910, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %29, align 1, !tbaa !2448
  %2929 = lshr i32 %2910, 31
  %2930 = trunc i32 %2929 to i8
  store i8 %2930, i8* %32, align 1, !tbaa !2449
  %2931 = lshr i32 %2909, 31
  %2932 = lshr i32 %2905, 28
  %2933 = and i32 %2932, 1
  %2934 = xor i32 %2929, %2931
  %2935 = xor i32 %2929, %2933
  %2936 = add nuw nsw i32 %2934, %2935
  %2937 = icmp eq i32 %2936, 2
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %38, align 1, !tbaa !2450
  %2939 = sext i32 %2910 to i64
  store i64 %2939, i64* %RSI, align 8, !tbaa !2428
  %2940 = shl nsw i64 %2939, 2
  %2941 = add i64 %2940, add (i64 ptrtoint (%p_type* @p to i64), i64 20480)
  %2942 = add i64 %234, 33
  store i64 %2942, i64* %PC, align 8
  %2943 = inttoptr i64 %2941 to i32*
  store i32 1, i32* %2943, align 4
  %2944 = load i64, i64* %RBP, align 8
  %2945 = add i64 %2944, -12
  %2946 = load i64, i64* %PC, align 8
  %2947 = add i64 %2946, 3
  store i64 %2947, i64* %PC, align 8
  %2948 = inttoptr i64 %2945 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = add i32 %2949, 1
  %2951 = zext i32 %2950 to i64
  store i64 %2951, i64* %RAX, align 8, !tbaa !2428
  %2952 = icmp eq i32 %2949, -1
  %2953 = icmp eq i32 %2950, 0
  %2954 = or i1 %2952, %2953
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %13, align 1, !tbaa !2432
  %2956 = and i32 %2950, 255
  %2957 = tail call i32 @llvm.ctpop.i32(i32 %2956) #9
  %2958 = trunc i32 %2957 to i8
  %2959 = and i8 %2958, 1
  %2960 = xor i8 %2959, 1
  store i8 %2960, i8* %20, align 1, !tbaa !2446
  %2961 = xor i32 %2950, %2949
  %2962 = lshr i32 %2961, 4
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  store i8 %2964, i8* %26, align 1, !tbaa !2447
  %2965 = zext i1 %2953 to i8
  store i8 %2965, i8* %29, align 1, !tbaa !2448
  %2966 = lshr i32 %2950, 31
  %2967 = trunc i32 %2966 to i8
  store i8 %2967, i8* %32, align 1, !tbaa !2449
  %2968 = lshr i32 %2949, 31
  %2969 = xor i32 %2966, %2968
  %2970 = add nuw nsw i32 %2969, %2966
  %2971 = icmp eq i32 %2970, 2
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %38, align 1, !tbaa !2450
  %2973 = add i64 %2946, 9
  store i64 %2973, i64* %PC, align 8
  store i32 %2950, i32* %2948, align 4
  %2974 = load i64, i64* %PC, align 8
  %2975 = add i64 %2974, -52
  store i64 %2975, i64* %PC, align 8, !tbaa !2428
  br label %block_400fdc

block_400a4e:                                     ; preds = %block_400a47, %block_400a58
  %2976 = phi i64 [ %.pre224, %block_400a47 ], [ %2884, %block_400a58 ]
  %2977 = load i64, i64* %RBP, align 8
  %2978 = add i64 %2977, -12
  %2979 = add i64 %2976, 4
  store i64 %2979, i64* %PC, align 8
  %2980 = inttoptr i64 %2978 to i32*
  %2981 = load i32, i32* %2980, align 4
  %2982 = add i32 %2981, -3
  %2983 = icmp ult i32 %2981, 3
  %2984 = zext i1 %2983 to i8
  store i8 %2984, i8* %13, align 1, !tbaa !2432
  %2985 = and i32 %2982, 255
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985) #9
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %20, align 1, !tbaa !2446
  %2990 = xor i32 %2982, %2981
  %2991 = lshr i32 %2990, 4
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  store i8 %2993, i8* %26, align 1, !tbaa !2447
  %2994 = icmp eq i32 %2982, 0
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %29, align 1, !tbaa !2448
  %2996 = lshr i32 %2982, 31
  %2997 = trunc i32 %2996 to i8
  store i8 %2997, i8* %32, align 1, !tbaa !2449
  %2998 = lshr i32 %2981, 31
  %2999 = xor i32 %2996, %2998
  %3000 = add nuw nsw i32 %2999, %2998
  %3001 = icmp eq i32 %3000, 2
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %38, align 1, !tbaa !2450
  %3003 = icmp ne i8 %2997, 0
  %3004 = xor i1 %3003, %3001
  %.demorgan273 = or i1 %2994, %3004
  %.v274 = select i1 %.demorgan273, i64 10, i64 57
  %3005 = add i64 %2976, %.v274
  store i64 %3005, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan273, label %block_400a58, label %block_400a87

block_400a47:                                     ; preds = %block_400a3d
  %3006 = add i64 %3117, -12
  %3007 = add i64 %3134, 7
  store i64 %3007, i64* %PC, align 8
  %3008 = inttoptr i64 %3006 to i32*
  store i32 0, i32* %3008, align 4
  %.pre224 = load i64, i64* %PC, align 8
  br label %block_400a4e

block_4009fc:                                     ; preds = %block_40099f
  %3009 = add i64 %751, -4
  %3010 = add i64 %779, 8
  store i64 %3010, i64* %PC, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = add i32 %3012, 1
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RAX, align 8, !tbaa !2428
  %3015 = icmp eq i32 %3012, -1
  %3016 = icmp eq i32 %3013, 0
  %3017 = or i1 %3015, %3016
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %13, align 1, !tbaa !2432
  %3019 = and i32 %3013, 255
  %3020 = tail call i32 @llvm.ctpop.i32(i32 %3019) #9
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  store i8 %3023, i8* %20, align 1, !tbaa !2446
  %3024 = xor i32 %3013, %3012
  %3025 = lshr i32 %3024, 4
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  store i8 %3027, i8* %26, align 1, !tbaa !2447
  %3028 = zext i1 %3016 to i8
  store i8 %3028, i8* %29, align 1, !tbaa !2448
  %3029 = lshr i32 %3013, 31
  %3030 = trunc i32 %3029 to i8
  store i8 %3030, i8* %32, align 1, !tbaa !2449
  %3031 = lshr i32 %3012, 31
  %3032 = xor i32 %3029, %3031
  %3033 = add nuw nsw i32 %3032, %3029
  %3034 = icmp eq i32 %3033, 2
  %3035 = zext i1 %3034 to i8
  store i8 %3035, i8* %38, align 1, !tbaa !2450
  %3036 = add i64 %779, 14
  store i64 %3036, i64* %PC, align 8
  store i32 %3013, i32* %3011, align 4
  %3037 = load i64, i64* %PC, align 8
  %3038 = add i64 %3037, -124
  store i64 %3038, i64* %PC, align 8, !tbaa !2428
  br label %block_40098e

block_401260.sink.split:                          ; preds = %block_40121d, %block_401247
  %.sink119 = phi i64 [ %3631, %block_40121d ], [ %719, %block_401247 ]
  %.sink112 = phi i64 [ %3422, %block_40121d ], [ %298, %block_401247 ]
  %.sink111 = phi i64 [ -24, %block_40121d ], [ -28, %block_401247 ]
  %.sink5.ph = phi i64 [ 47, %block_40121d ], [ 5, %block_401247 ]
  %3039 = add i64 %.sink119, 17
  %3040 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3041 = add i64 %3040, -8
  %3042 = inttoptr i64 %3041 to i64*
  store i64 %3039, i64* %3042, align 8
  store i64 %3041, i64* %RSP, align 8, !tbaa !2428
  store i64 %.sink112, i64* %PC, align 8, !tbaa !2428
  %3043 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3618)
  %3044 = load i64, i64* %RBP, align 8
  %3045 = add i64 %3044, %.sink111
  %.sink = load i32, i32* %EAX, align 4
  %3046 = load i64, i64* %PC, align 8
  %3047 = add i64 %3046, 3
  store i64 %3047, i64* %PC, align 8
  %3048 = inttoptr i64 %3045 to i32*
  store i32 %.sink, i32* %3048, align 4
  %.pre260 = load i64, i64* %PC, align 8
  br label %block_401260

block_401260:                                     ; preds = %block_401260.sink.split, %block_401236
  %3049 = phi i64 [ %719, %block_401236 ], [ %.pre260, %block_401260.sink.split ]
  %.sink5 = phi i64 [ 5, %block_401236 ], [ %.sink5.ph, %block_401260.sink.split ]
  %MEMORY.37 = phi %struct.Memory* [ %3618, %block_401236 ], [ %3043, %block_401260.sink.split ]
  %3050 = add i64 %3049, %.sink5
  store i64 add (i64 ptrtoint (%seg_401360__rodata_type* @seg_401360__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %3051 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  %3052 = zext i32 %3051 to i64
  store i64 %3052, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3053 = add i64 %3050, -3664
  %3054 = add i64 %3050, 24
  %3055 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3056 = add i64 %3055, -8
  %3057 = inttoptr i64 %3056 to i64*
  store i64 %3054, i64* %3057, align 8
  store i64 %3056, i64* %RSP, align 8, !tbaa !2428
  store i64 %3053, i64* %PC, align 8, !tbaa !2428
  %3058 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.37)
  %3059 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401360__rodata_type* @seg_401360__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %3060 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RSI, align 8, !tbaa !2428
  %3062 = load i64, i64* %RBP, align 8
  %3063 = add i64 %3062, -32
  %3064 = load i32, i32* %EAX, align 4
  %3065 = add i64 %3059, 20
  store i64 %3065, i64* %PC, align 8
  %3066 = inttoptr i64 %3063 to i32*
  store i32 %3064, i32* %3066, align 4
  %3067 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3068 = add i64 %3067, -3708
  %3069 = add i64 %3067, 7
  %3070 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3071 = add i64 %3070, -8
  %3072 = inttoptr i64 %3071 to i64*
  store i64 %3069, i64* %3072, align 8
  store i64 %3071, i64* %RSP, align 8, !tbaa !2428
  store i64 %3068, i64* %PC, align 8, !tbaa !2428
  %3073 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3058)
  %3074 = load i64, i64* %RBP, align 8
  %3075 = add i64 %3074, -36
  %3076 = load i32, i32* %EAX, align 4
  %3077 = load i64, i64* %PC, align 8
  %3078 = add i64 %3077, 3
  store i64 %3078, i64* %PC, align 8
  %3079 = inttoptr i64 %3075 to i32*
  store i32 %3076, i32* %3079, align 4
  %3080 = load i64, i64* %RSP, align 8
  %3081 = load i64, i64* %PC, align 8
  %3082 = add i64 %3080, 48
  store i64 %3082, i64* %RSP, align 8, !tbaa !2428
  %3083 = icmp ugt i64 %3080, -49
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %13, align 1, !tbaa !2432
  %3085 = trunc i64 %3082 to i32
  %3086 = and i32 %3085, 255
  %3087 = tail call i32 @llvm.ctpop.i32(i32 %3086) #9
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  %3090 = xor i8 %3089, 1
  store i8 %3090, i8* %20, align 1, !tbaa !2446
  %3091 = xor i64 %3080, 16
  %3092 = xor i64 %3091, %3082
  %3093 = lshr i64 %3092, 4
  %3094 = trunc i64 %3093 to i8
  %3095 = and i8 %3094, 1
  store i8 %3095, i8* %26, align 1, !tbaa !2447
  %3096 = icmp eq i64 %3082, 0
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %29, align 1, !tbaa !2448
  %3098 = lshr i64 %3082, 63
  %3099 = trunc i64 %3098 to i8
  store i8 %3099, i8* %32, align 1, !tbaa !2449
  %3100 = lshr i64 %3080, 63
  %3101 = xor i64 %3098, %3100
  %3102 = add nuw nsw i64 %3101, %3098
  %3103 = icmp eq i64 %3102, 2
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %38, align 1, !tbaa !2450
  %3105 = add i64 %3081, 5
  store i64 %3105, i64* %PC, align 8
  %3106 = add i64 %3080, 56
  %3107 = inttoptr i64 %3082 to i64*
  %3108 = load i64, i64* %3107, align 8
  store i64 %3108, i64* %RBP, align 8, !tbaa !2428
  store i64 %3106, i64* %RSP, align 8, !tbaa !2428
  %3109 = add i64 %3081, 6
  store i64 %3109, i64* %PC, align 8
  %3110 = inttoptr i64 %3106 to i64*
  %3111 = load i64, i64* %3110, align 8
  store i64 %3111, i64* %PC, align 8, !tbaa !2428
  %3112 = add i64 %3080, 64
  store i64 %3112, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %3073

block_400fd5:                                     ; preds = %block_400fcb
  %3113 = add i64 %1053, -12
  %3114 = add i64 %1070, 7
  store i64 %3114, i64* %PC, align 8
  %3115 = inttoptr i64 %3113 to i32*
  store i32 0, i32* %3115, align 4
  %.pre251 = load i64, i64* %PC, align 8
  br label %block_400fdc

block_400a3d:                                     ; preds = %block_400a36, %block_400a87
  %3116 = phi i64 [ %.pre223, %block_400a36 ], [ %2202, %block_400a87 ]
  %3117 = load i64, i64* %RBP, align 8
  %3118 = add i64 %3117, -8
  %3119 = add i64 %3116, 4
  store i64 %3119, i64* %PC, align 8
  %3120 = inttoptr i64 %3118 to i32*
  %3121 = load i32, i32* %3120, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3122 = and i32 %3121, 255
  %3123 = tail call i32 @llvm.ctpop.i32(i32 %3122) #9
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  store i8 %3126, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3127 = icmp eq i32 %3121, 0
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %29, align 1, !tbaa !2448
  %3129 = lshr i32 %3121, 31
  %3130 = trunc i32 %3129 to i8
  store i8 %3130, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3131 = xor i1 %3127, true
  %3132 = icmp eq i8 %3130, 0
  %3133 = and i1 %3132, %3131
  %.v275 = select i1 %3133, i64 93, i64 10
  %3134 = add i64 %3116, %.v275
  store i64 %3134, i64* %PC, align 8, !tbaa !2428
  br i1 %3133, label %block_400a9a, label %block_400a47

block_401107:                                     ; preds = %block_401100, %block_401151
  %3135 = phi i64 [ %.pre256, %block_401100 ], [ %665, %block_401151 ]
  %3136 = load i64, i64* %RBP, align 8
  %3137 = add i64 %3136, -8
  %3138 = add i64 %3135, 4
  store i64 %3138, i64* %PC, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = add i32 %3140, -1
  %3142 = icmp eq i32 %3140, 0
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %13, align 1, !tbaa !2432
  %3144 = and i32 %3141, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144) #9
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %20, align 1, !tbaa !2446
  %3149 = xor i32 %3141, %3140
  %3150 = lshr i32 %3149, 4
  %3151 = trunc i32 %3150 to i8
  %3152 = and i8 %3151, 1
  store i8 %3152, i8* %26, align 1, !tbaa !2447
  %3153 = icmp eq i32 %3141, 0
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %29, align 1, !tbaa !2448
  %3155 = lshr i32 %3141, 31
  %3156 = trunc i32 %3155 to i8
  store i8 %3156, i8* %32, align 1, !tbaa !2449
  %3157 = lshr i32 %3140, 31
  %3158 = xor i32 %3155, %3157
  %3159 = add nuw nsw i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %38, align 1, !tbaa !2450
  %3162 = icmp ne i8 %3156, 0
  %3163 = xor i1 %3162, %3160
  %.demorgan314 = or i1 %3153, %3163
  %.v317 = select i1 %.demorgan314, i64 10, i64 93
  %3164 = add i64 %3135, %.v317
  store i64 %3164, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan314, label %block_401111, label %block_401164

block_400e3b:                                     ; preds = %block_400e02
  %3165 = add i64 %3665, -8
  %3166 = add i64 %3682, 8
  store i64 %3166, i64* %PC, align 8
  %3167 = inttoptr i64 %3165 to i32*
  %3168 = load i32, i32* %3167, align 4
  %3169 = add i32 %3168, 1
  %3170 = zext i32 %3169 to i64
  store i64 %3170, i64* %RAX, align 8, !tbaa !2428
  %3171 = icmp eq i32 %3168, -1
  %3172 = icmp eq i32 %3169, 0
  %3173 = or i1 %3171, %3172
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %13, align 1, !tbaa !2432
  %3175 = and i32 %3169, 255
  %3176 = tail call i32 @llvm.ctpop.i32(i32 %3175) #9
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  %3179 = xor i8 %3178, 1
  store i8 %3179, i8* %20, align 1, !tbaa !2446
  %3180 = xor i32 %3169, %3168
  %3181 = lshr i32 %3180, 4
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  store i8 %3183, i8* %26, align 1, !tbaa !2447
  %3184 = zext i1 %3172 to i8
  store i8 %3184, i8* %29, align 1, !tbaa !2448
  %3185 = lshr i32 %3169, 31
  %3186 = trunc i32 %3185 to i8
  store i8 %3186, i8* %32, align 1, !tbaa !2449
  %3187 = lshr i32 %3168, 31
  %3188 = xor i32 %3185, %3187
  %3189 = add nuw nsw i32 %3188, %3185
  %3190 = icmp eq i32 %3189, 2
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %38, align 1, !tbaa !2450
  %3192 = add i64 %3682, 14
  store i64 %3192, i64* %PC, align 8
  store i32 %3169, i32* %3167, align 4
  %3193 = load i64, i64* %PC, align 8
  %3194 = add i64 %3193, -88
  store i64 %3194, i64* %PC, align 8, !tbaa !2428
  br label %block_400df1

block_400a36:                                     ; preds = %block_400a2c
  %3195 = add i64 %3329, -8
  %3196 = add i64 %3357, 7
  store i64 %3196, i64* %PC, align 8
  %3197 = inttoptr i64 %3195 to i32*
  store i32 0, i32* %3197, align 4
  %.pre223 = load i64, i64* %PC, align 8
  br label %block_400a3d

block_400c32:                                     ; preds = %block_400c28
  %3198 = add i64 %3495, -4
  %3199 = add i64 %3523, 3
  store i64 %3199, i64* %PC, align 8
  %3200 = inttoptr i64 %3198 to i32*
  %3201 = load i32, i32* %3200, align 4
  %3202 = zext i32 %3201 to i64
  store i64 %3202, i64* %RAX, align 8, !tbaa !2428
  %3203 = add i64 %3495, -8
  %3204 = add i64 %3523, 6
  store i64 %3204, i64* %PC, align 8
  %3205 = inttoptr i64 %3203 to i32*
  %3206 = load i32, i32* %3205, align 4
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RCX, align 8, !tbaa !2428
  %3208 = add i64 %3523, 9
  store i64 %3208, i64* %PC, align 8
  %3209 = load i32, i32* %3498, align 4
  %3210 = shl i32 %3209, 3
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RDX, align 8, !tbaa !2428
  %3212 = add i32 %3210, %3206
  %3213 = shl i32 %3212, 3
  %3214 = zext i32 %3213 to i64
  store i64 %3214, i64* %RCX, align 8, !tbaa !2428
  %3215 = load i64, i64* %RAX, align 8
  %3216 = trunc i64 %3215 to i32
  %3217 = add i32 %3213, %3216
  %3218 = zext i32 %3217 to i64
  store i64 %3218, i64* %RAX, align 8, !tbaa !2428
  %3219 = icmp ult i32 %3217, %3216
  %3220 = icmp ult i32 %3217, %3213
  %3221 = or i1 %3219, %3220
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %13, align 1, !tbaa !2432
  %3223 = and i32 %3217, 255
  %3224 = tail call i32 @llvm.ctpop.i32(i32 %3223) #9
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  store i8 %3227, i8* %20, align 1, !tbaa !2446
  %3228 = xor i64 %3214, %3215
  %3229 = trunc i64 %3228 to i32
  %3230 = xor i32 %3229, %3217
  %3231 = lshr i32 %3230, 4
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  store i8 %3233, i8* %26, align 1, !tbaa !2447
  %3234 = icmp eq i32 %3217, 0
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %29, align 1, !tbaa !2448
  %3236 = lshr i32 %3217, 31
  %3237 = trunc i32 %3236 to i8
  store i8 %3237, i8* %32, align 1, !tbaa !2449
  %3238 = lshr i32 %3216, 31
  %3239 = lshr i32 %3212, 28
  %3240 = and i32 %3239, 1
  %3241 = xor i32 %3236, %3238
  %3242 = xor i32 %3236, %3240
  %3243 = add nuw nsw i32 %3241, %3242
  %3244 = icmp eq i32 %3243, 2
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %38, align 1, !tbaa !2450
  %3246 = sext i32 %3217 to i64
  store i64 %3246, i64* %RSI, align 8, !tbaa !2428
  %3247 = shl nsw i64 %3246, 2
  %3248 = add i64 %3247, add (i64 ptrtoint (%p_type* @p to i64), i64 8192)
  %3249 = add i64 %3523, 33
  store i64 %3249, i64* %PC, align 8
  %3250 = inttoptr i64 %3248 to i32*
  store i32 1, i32* %3250, align 4
  %3251 = load i64, i64* %RBP, align 8
  %3252 = add i64 %3251, -12
  %3253 = load i64, i64* %PC, align 8
  %3254 = add i64 %3253, 3
  store i64 %3254, i64* %PC, align 8
  %3255 = inttoptr i64 %3252 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = add i32 %3256, 1
  %3258 = zext i32 %3257 to i64
  store i64 %3258, i64* %RAX, align 8, !tbaa !2428
  %3259 = icmp eq i32 %3256, -1
  %3260 = icmp eq i32 %3257, 0
  %3261 = or i1 %3259, %3260
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %13, align 1, !tbaa !2432
  %3263 = and i32 %3257, 255
  %3264 = tail call i32 @llvm.ctpop.i32(i32 %3263) #9
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = xor i8 %3266, 1
  store i8 %3267, i8* %20, align 1, !tbaa !2446
  %3268 = xor i32 %3257, %3256
  %3269 = lshr i32 %3268, 4
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  store i8 %3271, i8* %26, align 1, !tbaa !2447
  %3272 = zext i1 %3260 to i8
  store i8 %3272, i8* %29, align 1, !tbaa !2448
  %3273 = lshr i32 %3257, 31
  %3274 = trunc i32 %3273 to i8
  store i8 %3274, i8* %32, align 1, !tbaa !2449
  %3275 = lshr i32 %3256, 31
  %3276 = xor i32 %3273, %3275
  %3277 = add nuw nsw i32 %3276, %3273
  %3278 = icmp eq i32 %3277, 2
  %3279 = zext i1 %3278 to i8
  store i8 %3279, i8* %38, align 1, !tbaa !2450
  %3280 = add i64 %3253, 9
  store i64 %3280, i64* %PC, align 8
  store i32 %3257, i32* %3255, align 4
  %3281 = load i64, i64* %PC, align 8
  %3282 = add i64 %3281, -52
  store i64 %3282, i64* %PC, align 8, !tbaa !2428
  br label %block_400c28

block_400cae:                                     ; preds = %block_400ca4
  %3283 = add i64 %1882, -8
  %3284 = add i64 %1899, 7
  store i64 %3284, i64* %PC, align 8
  %3285 = inttoptr i64 %3283 to i32*
  store i32 0, i32* %3285, align 4
  %.pre235 = load i64, i64* %PC, align 8
  br label %block_400cb5

block_40087c:                                     ; preds = %block_40086f
  %3286 = add i64 %2491, 4
  store i64 %3286, i64* %PC, align 8
  %3287 = load i32, i32* %2465, align 4
  %3288 = sext i32 %3287 to i64
  store i64 %3288, i64* %RAX, align 8, !tbaa !2428
  %3289 = shl nsw i64 %3288, 2
  %3290 = add i64 %3289, ptrtoint (%puzzl_type* @puzzl to i64)
  %3291 = add i64 %2491, 15
  store i64 %3291, i64* %PC, align 8
  %3292 = inttoptr i64 %3290 to i32*
  store i32 1, i32* %3292, align 4
  %3293 = load i64, i64* %RBP, align 8
  %3294 = add i64 %3293, -16
  %3295 = load i64, i64* %PC, align 8
  %3296 = add i64 %3295, 3
  store i64 %3296, i64* %PC, align 8
  %3297 = inttoptr i64 %3294 to i32*
  %3298 = load i32, i32* %3297, align 4
  %3299 = add i32 %3298, 1
  %3300 = zext i32 %3299 to i64
  store i64 %3300, i64* %RAX, align 8, !tbaa !2428
  %3301 = icmp eq i32 %3298, -1
  %3302 = icmp eq i32 %3299, 0
  %3303 = or i1 %3301, %3302
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %13, align 1, !tbaa !2432
  %3305 = and i32 %3299, 255
  %3306 = tail call i32 @llvm.ctpop.i32(i32 %3305) #9
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  store i8 %3309, i8* %20, align 1, !tbaa !2446
  %3310 = xor i32 %3299, %3298
  %3311 = lshr i32 %3310, 4
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  store i8 %3313, i8* %26, align 1, !tbaa !2447
  %3314 = zext i1 %3302 to i8
  store i8 %3314, i8* %29, align 1, !tbaa !2448
  %3315 = lshr i32 %3299, 31
  %3316 = trunc i32 %3315 to i8
  store i8 %3316, i8* %32, align 1, !tbaa !2449
  %3317 = lshr i32 %3298, 31
  %3318 = xor i32 %3315, %3317
  %3319 = add nuw nsw i32 %3318, %3315
  %3320 = icmp eq i32 %3319, 2
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %38, align 1, !tbaa !2450
  %3322 = add i64 %3295, 9
  store i64 %3322, i64* %PC, align 8
  store i32 %3299, i32* %3297, align 4
  %3323 = load i64, i64* %PC, align 8
  %3324 = add i64 %3323, -37
  store i64 %3324, i64* %PC, align 8, !tbaa !2428
  br label %block_40086f

block_400fc4:                                     ; preds = %block_400fba
  %3325 = add i64 %237, -8
  %3326 = add i64 %265, 7
  store i64 %3326, i64* %PC, align 8
  %3327 = inttoptr i64 %3325 to i32*
  store i32 0, i32* %3327, align 4
  %.pre250 = load i64, i64* %PC, align 8
  br label %block_400fcb

block_400a2c:                                     ; preds = %block_400a0f, %block_400a9a
  %3328 = phi i64 [ %.pre222, %block_400a0f ], [ %1990, %block_400a9a ]
  %3329 = load i64, i64* %RBP, align 8
  %3330 = add i64 %3329, -4
  %3331 = add i64 %3328, 4
  store i64 %3331, i64* %PC, align 8
  %3332 = inttoptr i64 %3330 to i32*
  %3333 = load i32, i32* %3332, align 4
  %3334 = add i32 %3333, -1
  %3335 = icmp eq i32 %3333, 0
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %13, align 1, !tbaa !2432
  %3337 = and i32 %3334, 255
  %3338 = tail call i32 @llvm.ctpop.i32(i32 %3337) #9
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  %3341 = xor i8 %3340, 1
  store i8 %3341, i8* %20, align 1, !tbaa !2446
  %3342 = xor i32 %3334, %3333
  %3343 = lshr i32 %3342, 4
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  store i8 %3345, i8* %26, align 1, !tbaa !2447
  %3346 = icmp eq i32 %3334, 0
  %3347 = zext i1 %3346 to i8
  store i8 %3347, i8* %29, align 1, !tbaa !2448
  %3348 = lshr i32 %3334, 31
  %3349 = trunc i32 %3348 to i8
  store i8 %3349, i8* %32, align 1, !tbaa !2449
  %3350 = lshr i32 %3333, 31
  %3351 = xor i32 %3348, %3350
  %3352 = add nuw nsw i32 %3351, %3350
  %3353 = icmp eq i32 %3352, 2
  %3354 = zext i1 %3353 to i8
  store i8 %3354, i8* %38, align 1, !tbaa !2450
  %3355 = icmp ne i8 %3349, 0
  %3356 = xor i1 %3355, %3353
  %.demorgan272 = or i1 %3346, %3356
  %.v322 = select i1 %.demorgan272, i64 10, i64 129
  %3357 = add i64 %3328, %.v322
  store i64 %3357, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan272, label %block_400a36, label %block_400aad

block_401028:                                     ; preds = %block_400fcb
  %3358 = add i64 %1053, -4
  %3359 = add i64 %1070, 8
  store i64 %3359, i64* %PC, align 8
  %3360 = inttoptr i64 %3358 to i32*
  %3361 = load i32, i32* %3360, align 4
  %3362 = add i32 %3361, 1
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RAX, align 8, !tbaa !2428
  %3364 = icmp eq i32 %3361, -1
  %3365 = icmp eq i32 %3362, 0
  %3366 = or i1 %3364, %3365
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %13, align 1, !tbaa !2432
  %3368 = and i32 %3362, 255
  %3369 = tail call i32 @llvm.ctpop.i32(i32 %3368) #9
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = xor i8 %3371, 1
  store i8 %3372, i8* %20, align 1, !tbaa !2446
  %3373 = xor i32 %3362, %3361
  %3374 = lshr i32 %3373, 4
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  store i8 %3376, i8* %26, align 1, !tbaa !2447
  %3377 = zext i1 %3365 to i8
  store i8 %3377, i8* %29, align 1, !tbaa !2448
  %3378 = lshr i32 %3362, 31
  %3379 = trunc i32 %3378 to i8
  store i8 %3379, i8* %32, align 1, !tbaa !2449
  %3380 = lshr i32 %3361, 31
  %3381 = xor i32 %3378, %3380
  %3382 = add nuw nsw i32 %3381, %3378
  %3383 = icmp eq i32 %3382, 2
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %38, align 1, !tbaa !2450
  %3385 = add i64 %1070, 14
  store i64 %3385, i64* %PC, align 8
  store i32 %3362, i32* %3360, align 4
  %3386 = load i64, i64* %PC, align 8
  %3387 = add i64 %3386, -124
  store i64 %3387, i64* %PC, align 8, !tbaa !2428
  br label %block_400fba

block_400eec:                                     ; preds = %block_400e8f
  %3388 = add i64 %2025, -4
  %3389 = add i64 %2042, 8
  store i64 %3389, i64* %PC, align 8
  %3390 = inttoptr i64 %3388 to i32*
  %3391 = load i32, i32* %3390, align 4
  %3392 = add i32 %3391, 1
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RAX, align 8, !tbaa !2428
  %3394 = icmp eq i32 %3391, -1
  %3395 = icmp eq i32 %3392, 0
  %3396 = or i1 %3394, %3395
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %13, align 1, !tbaa !2432
  %3398 = and i32 %3392, 255
  %3399 = tail call i32 @llvm.ctpop.i32(i32 %3398) #9
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  %3402 = xor i8 %3401, 1
  store i8 %3402, i8* %20, align 1, !tbaa !2446
  %3403 = xor i32 %3392, %3391
  %3404 = lshr i32 %3403, 4
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  store i8 %3406, i8* %26, align 1, !tbaa !2447
  %3407 = zext i1 %3395 to i8
  store i8 %3407, i8* %29, align 1, !tbaa !2448
  %3408 = lshr i32 %3392, 31
  %3409 = trunc i32 %3408 to i8
  store i8 %3409, i8* %32, align 1, !tbaa !2449
  %3410 = lshr i32 %3391, 31
  %3411 = xor i32 %3408, %3410
  %3412 = add nuw nsw i32 %3411, %3408
  %3413 = icmp eq i32 %3412, 2
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %38, align 1, !tbaa !2450
  %3415 = add i64 %2042, 14
  store i64 %3415, i64* %PC, align 8
  store i32 %3392, i32* %3390, align 4
  %3416 = load i64, i64* %PC, align 8
  %3417 = add i64 %3416, -124
  store i64 %3417, i64* %PC, align 8, !tbaa !2428
  br label %block_400e7e

block_400c21:                                     ; preds = %block_400c17
  %3418 = add i64 %3424, -12
  %3419 = add i64 %3441, 7
  store i64 %3419, i64* %PC, align 8
  %3420 = inttoptr i64 %3418 to i32*
  store i32 0, i32* %3420, align 4
  %.pre233 = load i64, i64* %PC, align 8
  br label %block_400c28

block_40121d:                                     ; preds = %block_401208
  store i64 add (i64 ptrtoint (%seg_401360__rodata_type* @seg_401360__rodata to i64), i64 22), i64* %RDI, align 8, !tbaa !2428
  %3421 = add i64 %3632, 12
  store i64 %3421, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3422 = add i64 %3632, -3597
  br label %block_401260.sink.split

block_400c17:                                     ; preds = %block_400c10, %block_400c61
  %3423 = phi i64 [ %.pre232, %block_400c10 ], [ %2663, %block_400c61 ]
  %3424 = load i64, i64* %RBP, align 8
  %3425 = add i64 %3424, -8
  %3426 = add i64 %3423, 4
  store i64 %3426, i64* %PC, align 8
  %3427 = inttoptr i64 %3425 to i32*
  %3428 = load i32, i32* %3427, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3429 = and i32 %3428, 255
  %3430 = tail call i32 @llvm.ctpop.i32(i32 %3429) #9
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = xor i8 %3432, 1
  store i8 %3433, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3434 = icmp eq i32 %3428, 0
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %29, align 1, !tbaa !2448
  %3436 = lshr i32 %3428, 31
  %3437 = trunc i32 %3436 to i8
  store i8 %3437, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3438 = xor i1 %3434, true
  %3439 = icmp eq i8 %3437, 0
  %3440 = and i1 %3439, %3438
  %.v287 = select i1 %3440, i64 93, i64 10
  %3441 = add i64 %3423, %.v287
  store i64 %3441, i64* %PC, align 8, !tbaa !2428
  br i1 %3440, label %block_400c74, label %block_400c21

block_401015:                                     ; preds = %block_400fdc
  %3442 = add i64 %206, -8
  %3443 = add i64 %234, 8
  store i64 %3443, i64* %PC, align 8
  %3444 = inttoptr i64 %3442 to i32*
  %3445 = load i32, i32* %3444, align 4
  %3446 = add i32 %3445, 1
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RAX, align 8, !tbaa !2428
  %3448 = icmp eq i32 %3445, -1
  %3449 = icmp eq i32 %3446, 0
  %3450 = or i1 %3448, %3449
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %13, align 1, !tbaa !2432
  %3452 = and i32 %3446, 255
  %3453 = tail call i32 @llvm.ctpop.i32(i32 %3452) #9
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = xor i8 %3455, 1
  store i8 %3456, i8* %20, align 1, !tbaa !2446
  %3457 = xor i32 %3446, %3445
  %3458 = lshr i32 %3457, 4
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  store i8 %3460, i8* %26, align 1, !tbaa !2447
  %3461 = zext i1 %3449 to i8
  store i8 %3461, i8* %29, align 1, !tbaa !2448
  %3462 = lshr i32 %3446, 31
  %3463 = trunc i32 %3462 to i8
  store i8 %3463, i8* %32, align 1, !tbaa !2449
  %3464 = lshr i32 %3445, 31
  %3465 = xor i32 %3462, %3464
  %3466 = add nuw nsw i32 %3465, %3462
  %3467 = icmp eq i32 %3466, 2
  %3468 = zext i1 %3467 to i8
  store i8 %3468, i8* %38, align 1, !tbaa !2450
  %3469 = add i64 %234, 14
  store i64 %3469, i64* %PC, align 8
  store i32 %3446, i32* %3444, align 4
  %3470 = load i64, i64* %PC, align 8
  %3471 = add i64 %3470, -88
  store i64 %3471, i64* %PC, align 8, !tbaa !2428
  br label %block_400fcb

block_401058:                                     ; preds = %block_4010c6, %block_40103b
  %3472 = phi i64 [ %1880, %block_4010c6 ], [ %.pre252, %block_40103b ]
  %3473 = load i64, i64* %RBP, align 8
  %3474 = add i64 %3473, -4
  %3475 = add i64 %3472, 4
  store i64 %3475, i64* %PC, align 8
  %3476 = inttoptr i64 %3474 to i32*
  %3477 = load i32, i32* %3476, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3478 = and i32 %3477, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478) #9
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3483 = icmp eq i32 %3477, 0
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %29, align 1, !tbaa !2448
  %3485 = lshr i32 %3477, 31
  %3486 = trunc i32 %3485 to i8
  store i8 %3486, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3487 = xor i1 %3483, true
  %3488 = icmp eq i8 %3486, 0
  %3489 = and i1 %3488, %3487
  %.v332 = select i1 %3489, i64 129, i64 10
  %3490 = add i64 %3472, %.v332
  store i64 %3490, i64* %PC, align 8, !tbaa !2428
  br i1 %3489, label %block_4010d9, label %block_401062

block_400c10:                                     ; preds = %block_400c06
  %3491 = add i64 %3634, -8
  %3492 = add i64 %3662, 7
  store i64 %3492, i64* %PC, align 8
  %3493 = inttoptr i64 %3491 to i32*
  store i32 0, i32* %3493, align 4
  %.pre232 = load i64, i64* %PC, align 8
  br label %block_400c17

block_400c28:                                     ; preds = %block_400c21, %block_400c32
  %3494 = phi i64 [ %.pre233, %block_400c21 ], [ %3282, %block_400c32 ]
  %3495 = load i64, i64* %RBP, align 8
  %3496 = add i64 %3495, -12
  %3497 = add i64 %3494, 4
  store i64 %3497, i64* %PC, align 8
  %3498 = inttoptr i64 %3496 to i32*
  %3499 = load i32, i32* %3498, align 4
  %3500 = add i32 %3499, -1
  %3501 = icmp eq i32 %3499, 0
  %3502 = zext i1 %3501 to i8
  store i8 %3502, i8* %13, align 1, !tbaa !2432
  %3503 = and i32 %3500, 255
  %3504 = tail call i32 @llvm.ctpop.i32(i32 %3503) #9
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = xor i8 %3506, 1
  store i8 %3507, i8* %20, align 1, !tbaa !2446
  %3508 = xor i32 %3500, %3499
  %3509 = lshr i32 %3508, 4
  %3510 = trunc i32 %3509 to i8
  %3511 = and i8 %3510, 1
  store i8 %3511, i8* %26, align 1, !tbaa !2447
  %3512 = icmp eq i32 %3500, 0
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %29, align 1, !tbaa !2448
  %3514 = lshr i32 %3500, 31
  %3515 = trunc i32 %3514 to i8
  store i8 %3515, i8* %32, align 1, !tbaa !2449
  %3516 = lshr i32 %3499, 31
  %3517 = xor i32 %3514, %3516
  %3518 = add nuw nsw i32 %3517, %3516
  %3519 = icmp eq i32 %3518, 2
  %3520 = zext i1 %3519 to i8
  store i8 %3520, i8* %38, align 1, !tbaa !2450
  %3521 = icmp ne i8 %3515, 0
  %3522 = xor i1 %3521, %3519
  %.demorgan285 = or i1 %3512, %3522
  %.v286 = select i1 %.demorgan285, i64 10, i64 57
  %3523 = add i64 %3494, %.v286
  store i64 %3523, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan285, label %block_400c32, label %block_400c61

block_400a0f:                                     ; preds = %block_40098e
  store i32 0, i32* bitcast (%class_type* @class to i32*), align 16
  store i32 11, i32* bitcast (%piecemax_type* @piecemax to i32*), align 16
  %3524 = add i64 %874, 29
  store i64 %3524, i64* %PC, align 8
  store i32 0, i32* %849, align 4
  %.pre222 = load i64, i64* %PC, align 8
  br label %block_400a2c

block_400e0c:                                     ; preds = %block_400e02
  %3525 = add i64 %3665, -4
  %3526 = add i64 %3682, 3
  store i64 %3526, i64* %PC, align 8
  %3527 = inttoptr i64 %3525 to i32*
  %3528 = load i32, i32* %3527, align 4
  %3529 = zext i32 %3528 to i64
  store i64 %3529, i64* %RAX, align 8, !tbaa !2428
  %3530 = add i64 %3665, -8
  %3531 = add i64 %3682, 6
  store i64 %3531, i64* %PC, align 8
  %3532 = inttoptr i64 %3530 to i32*
  %3533 = load i32, i32* %3532, align 4
  %3534 = zext i32 %3533 to i64
  store i64 %3534, i64* %RCX, align 8, !tbaa !2428
  %3535 = add i64 %3682, 9
  store i64 %3535, i64* %PC, align 8
  %3536 = load i32, i32* %3668, align 4
  %3537 = shl i32 %3536, 3
  %3538 = zext i32 %3537 to i64
  store i64 %3538, i64* %RDX, align 8, !tbaa !2428
  %3539 = add i32 %3537, %3533
  %3540 = shl i32 %3539, 3
  %3541 = zext i32 %3540 to i64
  store i64 %3541, i64* %RCX, align 8, !tbaa !2428
  %3542 = load i64, i64* %RAX, align 8
  %3543 = trunc i64 %3542 to i32
  %3544 = add i32 %3540, %3543
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RAX, align 8, !tbaa !2428
  %3546 = icmp ult i32 %3544, %3543
  %3547 = icmp ult i32 %3544, %3540
  %3548 = or i1 %3546, %3547
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %13, align 1, !tbaa !2432
  %3550 = and i32 %3544, 255
  %3551 = tail call i32 @llvm.ctpop.i32(i32 %3550) #9
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  store i8 %3554, i8* %20, align 1, !tbaa !2446
  %3555 = xor i64 %3541, %3542
  %3556 = trunc i64 %3555 to i32
  %3557 = xor i32 %3556, %3544
  %3558 = lshr i32 %3557, 4
  %3559 = trunc i32 %3558 to i8
  %3560 = and i8 %3559, 1
  store i8 %3560, i8* %26, align 1, !tbaa !2447
  %3561 = icmp eq i32 %3544, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %29, align 1, !tbaa !2448
  %3563 = lshr i32 %3544, 31
  %3564 = trunc i32 %3563 to i8
  store i8 %3564, i8* %32, align 1, !tbaa !2449
  %3565 = lshr i32 %3543, 31
  %3566 = lshr i32 %3539, 28
  %3567 = and i32 %3566, 1
  %3568 = xor i32 %3563, %3565
  %3569 = xor i32 %3563, %3567
  %3570 = add nuw nsw i32 %3568, %3569
  %3571 = icmp eq i32 %3570, 2
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %38, align 1, !tbaa !2450
  %3573 = sext i32 %3544 to i64
  store i64 %3573, i64* %RSI, align 8, !tbaa !2428
  %3574 = shl nsw i64 %3573, 2
  %3575 = add i64 %3574, add (i64 ptrtoint (%p_type* @p to i64), i64 14336)
  %3576 = add i64 %3682, 33
  store i64 %3576, i64* %PC, align 8
  %3577 = inttoptr i64 %3575 to i32*
  store i32 1, i32* %3577, align 4
  %3578 = load i64, i64* %RBP, align 8
  %3579 = add i64 %3578, -12
  %3580 = load i64, i64* %PC, align 8
  %3581 = add i64 %3580, 3
  store i64 %3581, i64* %PC, align 8
  %3582 = inttoptr i64 %3579 to i32*
  %3583 = load i32, i32* %3582, align 4
  %3584 = add i32 %3583, 1
  %3585 = zext i32 %3584 to i64
  store i64 %3585, i64* %RAX, align 8, !tbaa !2428
  %3586 = icmp eq i32 %3583, -1
  %3587 = icmp eq i32 %3584, 0
  %3588 = or i1 %3586, %3587
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %13, align 1, !tbaa !2432
  %3590 = and i32 %3584, 255
  %3591 = tail call i32 @llvm.ctpop.i32(i32 %3590) #9
  %3592 = trunc i32 %3591 to i8
  %3593 = and i8 %3592, 1
  %3594 = xor i8 %3593, 1
  store i8 %3594, i8* %20, align 1, !tbaa !2446
  %3595 = xor i32 %3584, %3583
  %3596 = lshr i32 %3595, 4
  %3597 = trunc i32 %3596 to i8
  %3598 = and i8 %3597, 1
  store i8 %3598, i8* %26, align 1, !tbaa !2447
  %3599 = zext i1 %3587 to i8
  store i8 %3599, i8* %29, align 1, !tbaa !2448
  %3600 = lshr i32 %3584, 31
  %3601 = trunc i32 %3600 to i8
  store i8 %3601, i8* %32, align 1, !tbaa !2449
  %3602 = lshr i32 %3583, 31
  %3603 = xor i32 %3600, %3602
  %3604 = add nuw nsw i32 %3603, %3600
  %3605 = icmp eq i32 %3604, 2
  %3606 = zext i1 %3605 to i8
  store i8 %3606, i8* %38, align 1, !tbaa !2450
  %3607 = add i64 %3580, 9
  store i64 %3607, i64* %PC, align 8
  store i32 %3584, i32* %3582, align 4
  %3608 = load i64, i64* %PC, align 8
  %3609 = add i64 %3608, -52
  store i64 %3609, i64* %PC, align 8, !tbaa !2428
  br label %block_400e02

block_401208:                                     ; preds = %block_4011f4, %block_4011de
  %3610 = phi i32 [ %.pre259, %block_4011f4 ], [ %142, %block_4011de ]
  %3611 = phi i64 [ %.pre258, %block_4011f4 ], [ %144, %block_4011de ]
  %MEMORY.45 = phi %struct.Memory* [ %1155, %block_4011f4 ], [ %141, %block_4011de ]
  %3612 = zext i32 %3610 to i64
  store i64 %3612, i64* %RDI, align 8, !tbaa !2428
  %3613 = add i64 %3611, -2680
  %3614 = add i64 %3611, 12
  %3615 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3616 = add i64 %3615, -8
  %3617 = inttoptr i64 %3616 to i64*
  store i64 %3614, i64* %3617, align 8
  store i64 %3616, i64* %RSP, align 8, !tbaa !2428
  store i64 %3613, i64* %PC, align 8, !tbaa !2428
  %3618 = tail call %struct.Memory* @sub_400790_Trial(%struct.State* nonnull %0, i64 %3613, %struct.Memory* %MEMORY.45)
  %3619 = load i32, i32* %EAX, align 4
  %3620 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3621 = and i32 %3619, 255
  %3622 = tail call i32 @llvm.ctpop.i32(i32 %3621) #9
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  store i8 %3625, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3626 = icmp eq i32 %3619, 0
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %29, align 1, !tbaa !2448
  %3628 = lshr i32 %3619, 31
  %3629 = trunc i32 %3628 to i8
  store i8 %3629, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3630 = add i64 %3620, 34
  %3631 = add i64 %3620, 9
  %3632 = select i1 %3626, i64 %3631, i64 %3630
  store i64 %3632, i64* %PC, align 8, !tbaa !2428
  br i1 %3626, label %block_40121d, label %block_401236

block_400c06:                                     ; preds = %block_400be9, %block_400c74
  %3633 = phi i64 [ %.pre231, %block_400be9 ], [ %2397, %block_400c74 ]
  %3634 = load i64, i64* %RBP, align 8
  %3635 = add i64 %3634, -4
  %3636 = add i64 %3633, 4
  store i64 %3636, i64* %PC, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = add i32 %3638, -3
  %3640 = icmp ult i32 %3638, 3
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %13, align 1, !tbaa !2432
  %3642 = and i32 %3639, 255
  %3643 = tail call i32 @llvm.ctpop.i32(i32 %3642) #9
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = xor i8 %3645, 1
  store i8 %3646, i8* %20, align 1, !tbaa !2446
  %3647 = xor i32 %3639, %3638
  %3648 = lshr i32 %3647, 4
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  store i8 %3650, i8* %26, align 1, !tbaa !2447
  %3651 = icmp eq i32 %3639, 0
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %29, align 1, !tbaa !2448
  %3653 = lshr i32 %3639, 31
  %3654 = trunc i32 %3653 to i8
  store i8 %3654, i8* %32, align 1, !tbaa !2449
  %3655 = lshr i32 %3638, 31
  %3656 = xor i32 %3653, %3655
  %3657 = add nuw nsw i32 %3656, %3655
  %3658 = icmp eq i32 %3657, 2
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %38, align 1, !tbaa !2450
  %3660 = icmp ne i8 %3654, 0
  %3661 = xor i1 %3660, %3658
  %.demorgan284 = or i1 %3651, %3661
  %.v325 = select i1 %.demorgan284, i64 10, i64 129
  %3662 = add i64 %3633, %.v325
  store i64 %3662, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan284, label %block_400c10, label %block_400c87

block_400be9:                                     ; preds = %block_400b68
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 12) to i32*), align 4
  store i32 25, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 12) to i32*), align 4
  %3663 = add i64 %1048, 29
  store i64 %3663, i64* %PC, align 8
  store i32 0, i32* %1023, align 4
  %.pre231 = load i64, i64* %PC, align 8
  br label %block_400c06

block_400e02:                                     ; preds = %block_400e0c, %block_400dfb
  %3664 = phi i64 [ %3609, %block_400e0c ], [ %.pre242, %block_400dfb ]
  %3665 = load i64, i64* %RBP, align 8
  %3666 = add i64 %3665, -12
  %3667 = add i64 %3664, 4
  store i64 %3667, i64* %PC, align 8
  %3668 = inttoptr i64 %3666 to i32*
  %3669 = load i32, i32* %3668, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3670 = and i32 %3669, 255
  %3671 = tail call i32 @llvm.ctpop.i32(i32 %3670) #9
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = xor i8 %3673, 1
  store i8 %3674, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3675 = icmp eq i32 %3669, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %29, align 1, !tbaa !2448
  %3677 = lshr i32 %3669, 31
  %3678 = trunc i32 %3677 to i8
  store i8 %3678, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3679 = xor i1 %3675, true
  %3680 = icmp eq i8 %3678, 0
  %3681 = and i1 %3680, %3679
  %.v296 = select i1 %3681, i64 57, i64 10
  %3682 = add i64 %3664, %.v296
  store i64 %3682, i64* %PC, align 8, !tbaa !2428
  br i1 %3681, label %block_400e3b, label %block_400e0c
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400500_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400500_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400500_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4004d0___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4004d0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401350___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401350;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401350___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401350___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4012e0___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4012e0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012e0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4012a0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_619230___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_619238_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Remove() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Remove_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006f0_Remove(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Puzzle() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400860;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Puzzle_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400860_Puzzle(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Place() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Place_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400600_Place(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Trial() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Trial_wrapper(%struct.State*, i64, %struct.Memory* readnone) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400790_Trial(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401354;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_401354__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Initrand() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @Initrand_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400510_Initrand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4003e0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Fit() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Fit_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400570_Fit(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Rand() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Rand_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400530_Rand(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  tail call void @callback_sub_4012e0___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_401350___libc_csu_fini()
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
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }

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
