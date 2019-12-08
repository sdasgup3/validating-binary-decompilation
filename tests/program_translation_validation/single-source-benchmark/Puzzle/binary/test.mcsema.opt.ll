; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401340__rodata_type = type <{ [4 x i8], [18 x i8], [19 x i8], [19 x i8], [4 x i8] }>
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
@seg_401340__rodata = internal constant %seg_401340__rodata_type <{ [4 x i8] c"\01\00\02\00", [18 x i8] c"Error1 in Puzzle\0A\00", [19 x i8] c"Error2 in Puzzle.\0A\00", [19 x i8] c"Error3 in Puzzle.\0A\00", [4 x i8] c"%d\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4004e0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004b0___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004e0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004b0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401330___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4012c0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Remove_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Place_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Trial_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Initrand_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Puzzle_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Rand_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Fit_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400840_Puzzle_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006d0_Remove_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400550_Fit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400550:
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400561

block_4005bb:                                     ; preds = %block_400598
  %34 = add i64 %156, 5
  store i64 %34, i64* %33, align 8, !tbaa !2428
  br label %block_4005c0

block_400575:                                     ; preds = %block_400561
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %35 = add i64 %200, 14
  store i64 %35, i64* %PC, align 8
  %36 = load i32, i32* %166, align 4
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 11
  store i64 %38, i64* %RCX, align 8, !tbaa !2428
  %39 = lshr i64 %37, 52
  %40 = and i64 %39, 1
  %41 = add i64 %38, ptrtoint (%p_type* @p to i64)
  store i64 %41, i64* %RAX, align 8, !tbaa !2428
  %42 = icmp ult i64 %41, ptrtoint (%p_type* @p to i64)
  %43 = icmp ult i64 %41, %38
  %44 = or i1 %42, %43
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %27, align 1, !tbaa !2432
  %46 = trunc i64 %41 to i32
  %47 = and i32 %46, 240
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47) #8
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  store i8 %51, i8* %28, align 1, !tbaa !2446
  %52 = xor i64 %41, ptrtoint (%p_type* @p to i64)
  %53 = lshr exact i64 %52, 4
  %54 = trunc i64 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, i8* %29, align 1, !tbaa !2447
  %56 = icmp eq i64 %41, 0
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %30, align 1, !tbaa !2448
  %58 = lshr i64 %41, 63
  %59 = trunc i64 %58 to i8
  store i8 %59, i8* %31, align 1, !tbaa !2449
  %60 = xor i64 %58, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %61 = xor i64 %58, %40
  %62 = add nuw nsw i64 %60, %61
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %32, align 1, !tbaa !2450
  %65 = add i64 %200, 25
  store i64 %65, i64* %PC, align 8
  %66 = load i32, i32* %161, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %RCX, align 8, !tbaa !2428
  %68 = shl nsw i64 %67, 2
  %69 = add i64 %68, %41
  %70 = add i64 %200, 29
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %73 = and i32 %72, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73) #8
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %78 = icmp eq i32 %72, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %30, align 1, !tbaa !2448
  %80 = lshr i32 %72, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v3 = select i1 %78, i64 75, i64 35
  %82 = add i64 %200, %.v3
  store i64 %82, i64* %33, align 8, !tbaa !2428
  br i1 %78, label %block_4005c0, label %block_400598

block_4005d3:                                     ; preds = %block_400561
  %83 = add i64 %158, -4
  %84 = add i64 %200, 7
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  store i32 1, i32* %85, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4005da

block_4005af:                                     ; preds = %block_400598
  %86 = add i64 %158, -4
  %87 = add i64 %156, 7
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 0, i32* %88, align 4
  %89 = load i64, i64* %PC, align 8
  %90 = add i64 %89, 36
  store i64 %90, i64* %33, align 8, !tbaa !2428
  br label %block_4005da

block_4005da:                                     ; preds = %block_4005af, %block_4005d3
  %91 = phi i64 [ %90, %block_4005af ], [ %.pre2, %block_4005d3 ]
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -4
  %94 = add i64 %91, 3
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = add i64 %91, 4
  store i64 %98, i64* %PC, align 8
  %99 = load i64, i64* %7, align 8, !tbaa !2428
  %100 = add i64 %99, 8
  %101 = inttoptr i64 %99 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %RBP, align 8, !tbaa !2428
  store i64 %100, i64* %7, align 8, !tbaa !2428
  %103 = add i64 %91, 5
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %100 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %33, align 8, !tbaa !2428
  %106 = add i64 %99, 16
  store i64 %106, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400598:                                     ; preds = %block_400575
  %107 = add i64 %158, -12
  %108 = add i64 %82, 3
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX, align 8, !tbaa !2428
  %112 = add i64 %82, 6
  store i64 %112, i64* %PC, align 8
  %113 = load i32, i32* %161, align 4
  %114 = add i32 %113, %110
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = icmp ult i32 %114, %110
  %117 = icmp ult i32 %114, %113
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %27, align 1, !tbaa !2432
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #8
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %28, align 1, !tbaa !2446
  %125 = xor i32 %113, %110
  %126 = xor i32 %125, %114
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %29, align 1, !tbaa !2447
  %130 = icmp eq i32 %114, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %30, align 1, !tbaa !2448
  %132 = lshr i32 %114, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %31, align 1, !tbaa !2449
  %134 = lshr i32 %110, 31
  %135 = lshr i32 %113, 31
  %136 = xor i32 %132, %134
  %137 = xor i32 %132, %135
  %138 = add nuw nsw i32 %136, %137
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %32, align 1, !tbaa !2450
  %141 = sext i32 %114 to i64
  store i64 %141, i64* %RCX, align 8, !tbaa !2428
  %142 = shl nsw i64 %141, 2
  %143 = add i64 %142, ptrtoint (%puzzl_type* @puzzl to i64)
  %144 = add i64 %82, 17
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %147 = and i32 %146, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147) #8
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %152 = icmp eq i32 %146, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %30, align 1, !tbaa !2448
  %154 = lshr i32 %146, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v4 = select i1 %152, i64 35, i64 23
  %156 = add i64 %82, %.v4
  store i64 %156, i64* %33, align 8, !tbaa !2428
  br i1 %152, label %block_4005bb, label %block_4005af

block_400561:                                     ; preds = %block_4005c0, %block_400550
  %157 = phi i64 [ %.pre, %block_400550 ], [ %230, %block_4005c0 ]
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -16
  %160 = add i64 %157, 3
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = add i64 %158, -8
  %165 = add i64 %157, 7
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX, align 8, !tbaa !2428
  %169 = shl nsw i64 %168, 2
  %170 = add i64 %169, ptrtoint (%piecemax_type* @piecemax to i64)
  %171 = add i64 %157, 14
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = sub i32 %162, %173
  %175 = icmp ult i32 %162, %173
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %27, align 1, !tbaa !2432
  %177 = and i32 %174, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177) #8
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %28, align 1, !tbaa !2446
  %182 = xor i32 %173, %162
  %183 = xor i32 %182, %174
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %29, align 1, !tbaa !2447
  %187 = icmp eq i32 %174, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %30, align 1, !tbaa !2448
  %189 = lshr i32 %174, 31
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %31, align 1, !tbaa !2449
  %191 = lshr i32 %162, 31
  %192 = lshr i32 %173, 31
  %193 = xor i32 %192, %191
  %194 = xor i32 %189, %191
  %195 = add nuw nsw i32 %194, %193
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %32, align 1, !tbaa !2450
  %198 = icmp ne i8 %190, 0
  %199 = xor i1 %198, %196
  %.demorgan = or i1 %187, %199
  %.v = select i1 %.demorgan, i64 20, i64 114
  %200 = add i64 %157, %.v
  store i64 %200, i64* %33, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400575, label %block_4005d3

block_4005c0:                                     ; preds = %block_400575, %block_4005bb
  %201 = phi i64 [ %82, %block_400575 ], [ %34, %block_4005bb ]
  %202 = add i64 %201, 8
  store i64 %202, i64* %PC, align 8
  %203 = load i32, i32* %161, align 4
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  %206 = icmp eq i32 %203, -1
  %207 = icmp eq i32 %204, 0
  %208 = or i1 %206, %207
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %27, align 1, !tbaa !2432
  %210 = and i32 %204, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210) #8
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %28, align 1, !tbaa !2446
  %215 = xor i32 %203, %204
  %216 = lshr i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %29, align 1, !tbaa !2447
  %219 = icmp eq i32 %204, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %30, align 1, !tbaa !2448
  %221 = lshr i32 %204, 31
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %31, align 1, !tbaa !2449
  %223 = lshr i32 %203, 31
  %224 = xor i32 %221, %223
  %225 = add nuw nsw i32 %224, %221
  %226 = icmp eq i32 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %32, align 1, !tbaa !2450
  %228 = add i64 %201, 14
  store i64 %228, i64* %PC, align 8
  store i32 %204, i32* %161, align 4
  %229 = load i64, i64* %PC, align 8
  %230 = add i64 %229, -109
  store i64 %230, i64* %33, align 8, !tbaa !2428
  br label %block_400561
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004e0:
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
  %14 = tail call %struct.Memory* @sub_400470_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400770_Trial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400770:
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -24
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = add i64 %8, -16
  %20 = load i32, i32* %EDI, align 4
  %21 = add i64 %11, 10
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %PC, align 8
  %24 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %25 = add i32 %24, 1
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDI, align 8, !tbaa !2428
  %27 = icmp eq i32 %24, -1
  %28 = icmp eq i32 %25, 0
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %13, align 1, !tbaa !2432
  %31 = and i32 %25, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #8
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %14, align 1, !tbaa !2446
  %36 = xor i32 %24, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  store i8 %39, i8* %15, align 1, !tbaa !2447
  %40 = icmp eq i32 %25, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %16, align 1, !tbaa !2448
  %42 = lshr i32 %25, 31
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %17, align 1, !tbaa !2449
  %44 = lshr i32 %24, 31
  %45 = xor i32 %42, %44
  %46 = add nuw nsw i32 %45, %42
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %18, align 1, !tbaa !2450
  store i32 %25, i32* bitcast (%kount_type* @kount to i32*), align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -12
  %51 = add i64 %23, 24
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400793

block_40079d:                                     ; preds = %block_400793
  %54 = add i64 %146, 4
  store i64 %54, i64* %PC, align 8
  %55 = load i32, i32* %121, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  %57 = shl nsw i64 %56, 2
  %58 = add i64 %57, ptrtoint (%class_type* @class to i64)
  %59 = add i64 %146, 12
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = shl nsw i64 %62, 2
  %64 = add i64 %63, ptrtoint (%piececount_type* @piececount to i64)
  %65 = add i64 %146, 20
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %68 = and i32 %67, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #8
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %73 = icmp eq i32 %67, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %16, align 1, !tbaa !2448
  %75 = lshr i32 %67, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v6 = select i1 %73, i64 120, i64 26
  %77 = add i64 %146, %.v6
  store i64 %77, i64* %53, align 8, !tbaa !2428
  br i1 %73, label %block_400815, label %block_4007b7

block_400815:                                     ; preds = %block_400810, %block_40079d
  %78 = phi i64 [ %118, %block_40079d ], [ %.pre4, %block_400810 ]
  %79 = phi i64 [ %77, %block_40079d ], [ %148, %block_400810 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40079d ], [ %MEMORY.3, %block_400810 ]
  %80 = add i64 %78, -12
  %81 = add i64 %79, 8
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = icmp eq i32 %83, -1
  %87 = icmp eq i32 %84, 0
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %13, align 1, !tbaa !2432
  %90 = and i32 %84, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #8
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %14, align 1, !tbaa !2446
  %95 = xor i32 %83, %84
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %15, align 1, !tbaa !2447
  %99 = icmp eq i32 %84, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %16, align 1, !tbaa !2448
  %101 = lshr i32 %84, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %17, align 1, !tbaa !2449
  %103 = lshr i32 %83, 31
  %104 = xor i32 %101, %103
  %105 = add nuw nsw i32 %104, %101
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %18, align 1, !tbaa !2450
  %108 = add i64 %79, 14
  store i64 %108, i64* %PC, align 8
  store i32 %84, i32* %82, align 4
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, -144
  store i64 %110, i64* %53, align 8, !tbaa !2428
  br label %block_400793

block_4007f4:                                     ; preds = %block_4007ea, %block_4007cb
  %111 = phi i64 [ %275, %block_4007ea ], [ %235, %block_4007cb ]
  %112 = add i64 %.pre3, -4
  %113 = add i64 %111, 7
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 1, i32* %114, align 4
  %115 = load i64, i64* %PC, align 8
  %116 = add i64 %115, 52
  store i64 %116, i64* %53, align 8, !tbaa !2428
  br label %block_40082f

block_400793:                                     ; preds = %block_400815, %block_400770
  %117 = phi i64 [ %.pre, %block_400770 ], [ %110, %block_400815 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400770 ], [ %MEMORY.0, %block_400815 ]
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -12
  %120 = add i64 %117, 4
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, -12
  %124 = icmp ult i32 %122, 12
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %13, align 1, !tbaa !2432
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #8
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %14, align 1, !tbaa !2446
  %131 = xor i32 %122, %123
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %15, align 1, !tbaa !2447
  %135 = icmp eq i32 %123, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %16, align 1, !tbaa !2448
  %137 = lshr i32 %123, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %17, align 1, !tbaa !2449
  %139 = lshr i32 %122, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %18, align 1, !tbaa !2450
  %144 = icmp ne i8 %138, 0
  %145 = xor i1 %144, %142
  %.demorgan = or i1 %135, %145
  %.v = select i1 %.demorgan, i64 10, i64 149
  %146 = add i64 %117, %.v
  store i64 %146, i64* %53, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40079d, label %block_400828

block_400810:                                     ; preds = %block_400800, %block_4007b7
  %147 = phi i64 [ %261, %block_4007b7 ], [ %296, %block_400800 ]
  %MEMORY.3 = phi %struct.Memory* [ %249, %block_4007b7 ], [ %294, %block_400800 ]
  %148 = add i64 %147, 5
  store i64 %148, i64* %53, align 8, !tbaa !2428
  %.pre4 = load i64, i64* %RBP, align 8
  br label %block_400815

block_40082f:                                     ; preds = %block_400828, %block_4007f4
  %149 = phi i64 [ %.pre5, %block_400828 ], [ %116, %block_4007f4 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_400828 ], [ %223, %block_4007f4 ]
  %150 = load i64, i64* %RBP, align 8
  %151 = add i64 %150, -4
  %152 = add i64 %149, 3
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = load i64, i64* %RSP, align 8
  %157 = add i64 %156, 16
  store i64 %157, i64* %RSP, align 8, !tbaa !2428
  %158 = icmp ugt i64 %156, -17
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %13, align 1, !tbaa !2432
  %160 = trunc i64 %157 to i32
  %161 = and i32 %160, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #8
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %14, align 1, !tbaa !2446
  %166 = xor i64 %156, 16
  %167 = xor i64 %166, %157
  %168 = lshr i64 %167, 4
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %15, align 1, !tbaa !2447
  %171 = icmp eq i64 %157, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %16, align 1, !tbaa !2448
  %173 = lshr i64 %157, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %17, align 1, !tbaa !2449
  %175 = lshr i64 %156, 63
  %176 = xor i64 %173, %175
  %177 = add nuw nsw i64 %176, %173
  %178 = icmp eq i64 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %18, align 1, !tbaa !2450
  %180 = add i64 %149, 8
  store i64 %180, i64* %PC, align 8
  %181 = add i64 %156, 24
  %182 = inttoptr i64 %157 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RBP, align 8, !tbaa !2428
  store i64 %181, i64* %7, align 8, !tbaa !2428
  %184 = add i64 %149, 9
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %181 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %53, align 8, !tbaa !2428
  %187 = add i64 %156, 32
  store i64 %187, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_4007cb:                                     ; preds = %block_4007b7
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -12
  %190 = add i64 %261, 3
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RDI, align 8, !tbaa !2428
  %194 = add i64 %188, -8
  %195 = add i64 %261, 6
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RSI, align 8, !tbaa !2428
  %199 = add i64 %261, -491
  %200 = add i64 %261, 11
  %201 = load i64, i64* %7, align 8, !tbaa !2428
  %202 = add i64 %201, -8
  %203 = inttoptr i64 %202 to i64*
  store i64 %200, i64* %203, align 8
  store i64 %202, i64* %7, align 8, !tbaa !2428
  store i64 %199, i64* %53, align 8, !tbaa !2428
  %204 = tail call %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* nonnull %0, i64 %199, %struct.Memory* %249)
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -16
  %207 = load i32, i32* %EAX, align 4
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %210, align 4
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -16
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDI, align 8, !tbaa !2428
  %218 = add i64 %213, -105
  %219 = add i64 %213, 8
  %220 = load i64, i64* %7, align 8, !tbaa !2428
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %7, align 8, !tbaa !2428
  store i64 %218, i64* %53, align 8, !tbaa !2428
  %223 = tail call %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* nonnull %0, i64 %218, %struct.Memory* %204)
  %224 = load i32, i32* %EAX, align 4
  %225 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %226 = and i32 %224, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226) #8
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %231 = icmp eq i32 %224, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %16, align 1, !tbaa !2448
  %233 = lshr i32 %224, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v8 = select i1 %231, i64 9, i64 19
  %235 = add i64 %225, %.v8
  store i64 %235, i64* %53, align 8, !tbaa !2428
  %.pre3 = load i64, i64* %RBP, align 8
  br i1 %231, label %block_4007ea, label %block_4007f4

block_4007b7:                                     ; preds = %block_40079d
  %236 = add i64 %77, 3
  store i64 %236, i64* %PC, align 8
  %237 = load i32, i32* %121, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RDI, align 8, !tbaa !2428
  %239 = add i64 %118, -8
  %240 = add i64 %77, 6
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RSI, align 8, !tbaa !2428
  %244 = add i64 %77, -615
  %245 = add i64 %77, 11
  %246 = load i64, i64* %7, align 8, !tbaa !2428
  %247 = add i64 %246, -8
  %248 = inttoptr i64 %247 to i64*
  store i64 %245, i64* %248, align 8
  store i64 %247, i64* %7, align 8, !tbaa !2428
  store i64 %244, i64* %53, align 8, !tbaa !2428
  %249 = tail call %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* nonnull %0, i64 %244, %struct.Memory* %MEMORY.2)
  %250 = load i32, i32* %EAX, align 4
  %251 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %252 = and i32 %250, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #8
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %257 = icmp eq i32 %250, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %16, align 1, !tbaa !2448
  %259 = lshr i32 %250, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v7 = select i1 %257, i64 78, i64 9
  %261 = add i64 %251, %.v7
  store i64 %261, i64* %53, align 8, !tbaa !2428
  br i1 %257, label %block_400810, label %block_4007cb

block_4007ea:                                     ; preds = %block_4007cb
  %262 = add i64 %.pre3, -16
  %263 = add i64 %235, 4
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %266 = and i32 %265, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266) #8
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %271 = icmp eq i32 %265, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %16, align 1, !tbaa !2448
  %273 = lshr i32 %265, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v9 = select i1 %271, i64 10, i64 22
  %275 = add i64 %235, %.v9
  store i64 %275, i64* %53, align 8, !tbaa !2428
  br i1 %271, label %block_4007f4, label %block_400800

block_400828:                                     ; preds = %block_400793
  %276 = add i64 %118, -4
  %277 = add i64 %146, 7
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  store i32 0, i32* %278, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400800:                                     ; preds = %block_4007ea
  %279 = add i64 %.pre3, -12
  %280 = add i64 %275, 3
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RDI, align 8, !tbaa !2428
  %284 = add i64 %.pre3, -8
  %285 = add i64 %275, 6
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RSI, align 8, !tbaa !2428
  %289 = add i64 %275, -304
  %290 = add i64 %275, 11
  %291 = load i64, i64* %7, align 8, !tbaa !2428
  %292 = add i64 %291, -8
  %293 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %293, align 8
  store i64 %292, i64* %7, align 8, !tbaa !2428
  store i64 %289, i64* %53, align 8, !tbaa !2428
  %294 = tail call %struct.Memory* @sub_4006d0_Remove_renamed_(%struct.State* nonnull %0, i64 %289, %struct.Memory* %223)
  %295 = load i64, i64* %PC, align 8
  %296 = add i64 %295, 5
  store i64 %296, i64* %53, align 8, !tbaa !2428
  br label %block_400810
}

; Function Attrs: noinline
define %struct.Memory* @sub_400840_Puzzle(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400840:
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
  %40 = add i64 %7, -24
  %41 = add i64 %10, 14
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_40084f

block_4011fd:                                     ; preds = %block_4011e8
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 22), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %44 = add i64 %214, -3597
  %45 = add i64 %214, 17
  %46 = load i64, i64* %6, align 8, !tbaa !2428
  %47 = add i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %48, align 8
  store i64 %47, i64* %6, align 8, !tbaa !2428
  store i64 %44, i64* %43, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %202)
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -24
  %52 = load i32, i32* %EAX, align 4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 47
  br label %block_401240

block_400bf7:                                     ; preds = %block_400bf0, %block_400c41
  %58 = phi i64 [ %.pre22, %block_400bf0 ], [ %3057, %block_400c41 ]
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -8
  %61 = add i64 %58, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %64 = and i32 %63, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #8
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %69 = icmp eq i32 %63, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %30, align 1, !tbaa !2448
  %71 = lshr i32 %63, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %73 = xor i1 %69, true
  %74 = icmp eq i8 %72, 0
  %75 = and i1 %74, %73
  %.v84 = select i1 %75, i64 93, i64 10
  %76 = add i64 %58, %.v84
  store i64 %76, i64* %43, align 8, !tbaa !2428
  br i1 %75, label %block_400c54, label %block_400c01

block_400ff5:                                     ; preds = %block_400fbc
  %77 = add i64 %296, -8
  %78 = add i64 %324, 8
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
  store i8 %86, i8* %14, align 1, !tbaa !2432
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1, !tbaa !2446
  %92 = xor i32 %80, %81
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %27, align 1, !tbaa !2447
  %96 = icmp eq i32 %81, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %30, align 1, !tbaa !2448
  %98 = lshr i32 %81, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %33, align 1, !tbaa !2449
  %100 = lshr i32 %80, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %98
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %39, align 1, !tbaa !2450
  %105 = add i64 %324, 14
  store i64 %105, i64* %PC, align 8
  store i32 %81, i32* %79, align 4
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, -88
  store i64 %107, i64* %43, align 8, !tbaa !2428
  br label %block_400fab

block_400dec:                                     ; preds = %block_400de2
  %108 = add i64 %1740, -4
  %109 = add i64 %1757, 3
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = add i64 %1740, -8
  %114 = add i64 %1757, 6
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RCX, align 8, !tbaa !2428
  %118 = add i64 %1757, 9
  store i64 %118, i64* %PC, align 8
  %119 = load i32, i32* %1743, align 4
  %120 = shl i32 %119, 3
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RDX, align 8, !tbaa !2428
  %122 = add i32 %120, %116
  %123 = shl i32 %122, 3
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RCX, align 8, !tbaa !2428
  %125 = lshr i32 %122, 28
  %126 = and i32 %125, 1
  %127 = load i64, i64* %RAX, align 8
  %128 = trunc i64 %127 to i32
  %129 = add i32 %123, %128
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = icmp ult i32 %129, %128
  %132 = icmp ult i32 %129, %123
  %133 = or i1 %131, %132
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %14, align 1, !tbaa !2432
  %135 = and i32 %129, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #8
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %21, align 1, !tbaa !2446
  %140 = xor i64 %124, %127
  %141 = trunc i64 %140 to i32
  %142 = xor i32 %141, %129
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %27, align 1, !tbaa !2447
  %146 = icmp eq i32 %129, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %30, align 1, !tbaa !2448
  %148 = lshr i32 %129, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %33, align 1, !tbaa !2449
  %150 = lshr i32 %128, 31
  %151 = xor i32 %148, %150
  %152 = xor i32 %148, %126
  %153 = add nuw nsw i32 %151, %152
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %39, align 1, !tbaa !2450
  %156 = sext i32 %129 to i64
  store i64 %156, i64* %RSI, align 8, !tbaa !2428
  %157 = shl nsw i64 %156, 2
  %158 = add i64 %157, add (i64 ptrtoint (%p_type* @p to i64), i64 14336)
  %159 = add i64 %1757, 33
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i32*
  store i32 1, i32* %160, align 4
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -12
  %163 = load i64, i64* %PC, align 8
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = icmp eq i32 %166, -1
  %170 = icmp eq i32 %167, 0
  %171 = or i1 %169, %170
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %14, align 1, !tbaa !2432
  %173 = and i32 %167, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #8
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1, !tbaa !2446
  %178 = xor i32 %166, %167
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %27, align 1, !tbaa !2447
  %182 = icmp eq i32 %167, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %30, align 1, !tbaa !2448
  %184 = lshr i32 %167, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %33, align 1, !tbaa !2449
  %186 = lshr i32 %166, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %184
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %39, align 1, !tbaa !2450
  %191 = add i64 %163, 9
  store i64 %191, i64* %PC, align 8
  store i32 %167, i32* %165, align 4
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, -52
  store i64 %193, i64* %43, align 8, !tbaa !2428
  br label %block_400de2

block_4011e8:                                     ; preds = %block_4011d4, %block_4011be
  %194 = phi i32 [ %.pre49, %block_4011d4 ], [ %291, %block_4011be ]
  %195 = phi i64 [ %.pre48, %block_4011d4 ], [ %293, %block_4011be ]
  %MEMORY.1 = phi %struct.Memory* [ %1509, %block_4011d4 ], [ %290, %block_4011be ]
  %196 = zext i32 %194 to i64
  store i64 %196, i64* %RDI, align 8, !tbaa !2428
  %197 = add i64 %195, -2680
  %198 = add i64 %195, 12
  %199 = load i64, i64* %6, align 8, !tbaa !2428
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %6, align 8, !tbaa !2428
  store i64 %197, i64* %43, align 8, !tbaa !2428
  %202 = tail call %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* nonnull %0, i64 %197, %struct.Memory* %MEMORY.1)
  %203 = load i32, i32* %EAX, align 4
  %204 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %205 = and i32 %203, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205) #8
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %210 = icmp eq i32 %203, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %30, align 1, !tbaa !2448
  %212 = lshr i32 %203, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v126 = select i1 %210, i64 9, i64 34
  %214 = add i64 %204, %.v126
  store i64 %214, i64* %43, align 8, !tbaa !2428
  br i1 %210, label %block_4011fd, label %block_401216

block_400be6:                                     ; preds = %block_400c54, %block_400bc9
  %215 = phi i64 [ %2789, %block_400c54 ], [ %.pre21, %block_400bc9 ]
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -4
  %218 = add i64 %215, 4
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, -3
  %222 = icmp ult i32 %220, 3
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %14, align 1, !tbaa !2432
  %224 = and i32 %221, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #8
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %21, align 1, !tbaa !2446
  %229 = xor i32 %220, %221
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %27, align 1, !tbaa !2447
  %233 = icmp eq i32 %221, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %30, align 1, !tbaa !2448
  %235 = lshr i32 %221, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %33, align 1, !tbaa !2449
  %237 = lshr i32 %220, 31
  %238 = xor i32 %235, %237
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %39, align 1, !tbaa !2450
  %242 = icmp ne i8 %236, 0
  %243 = xor i1 %242, %240
  %.demorgan82 = or i1 %233, %243
  %.v83 = select i1 %.demorgan82, i64 10, i64 129
  %244 = add i64 %215, %.v83
  store i64 %244, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan82, label %block_400bf0, label %block_400c67

block_4010a6:                                     ; preds = %block_401049
  %245 = add i64 %2916, -4
  %246 = add i64 %2944, 8
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, 1
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX, align 8, !tbaa !2428
  %251 = icmp eq i32 %248, -1
  %252 = icmp eq i32 %249, 0
  %253 = or i1 %251, %252
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %14, align 1, !tbaa !2432
  %255 = and i32 %249, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #8
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1, !tbaa !2446
  %260 = xor i32 %248, %249
  %261 = lshr i32 %260, 4
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %27, align 1, !tbaa !2447
  %264 = icmp eq i32 %249, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1, !tbaa !2448
  %266 = lshr i32 %249, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %33, align 1, !tbaa !2449
  %268 = lshr i32 %248, 31
  %269 = xor i32 %266, %268
  %270 = add nuw nsw i32 %269, %266
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %39, align 1, !tbaa !2450
  %273 = add i64 %2944, 14
  store i64 %273, i64* %PC, align 8
  store i32 %249, i32* %247, align 4
  %274 = load i64, i64* %PC, align 8
  %275 = add i64 %274, -124
  store i64 %275, i64* %43, align 8, !tbaa !2428
  br label %block_401038

block_400ddb:                                     ; preds = %block_400dd1
  %276 = add i64 %3334, -12
  %277 = add i64 %3362, 7
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  store i32 0, i32* %278, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400de2

block_4011be:                                     ; preds = %block_401157
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 1, i8* %21, align 1, !tbaa !2446
  store i8 1, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %279 = load i64, i64* %RBP, align 8
  %280 = add i64 %279, -16
  %281 = add i64 %3085, 5
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = add i64 %3085, -3038
  %286 = add i64 %3085, 10
  %287 = load i64, i64* %6, align 8, !tbaa !2428
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %286, i64* %289, align 8
  store i64 %288, i64* %6, align 8, !tbaa !2428
  store i64 %285, i64* %43, align 8, !tbaa !2428
  %290 = tail call %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* nonnull %0, i64 %285, %struct.Memory* %3073)
  %291 = load i32, i32* %EAX, align 4
  %292 = load i64, i64* %PC, align 8
  store i32 %291, i32* bitcast (%n_type* @n to i32*), align 8
  %293 = add i64 %292, 32
  store i64 %293, i64* %43, align 8, !tbaa !2428
  br label %block_4011e8

block_400da3:                                     ; preds = %block_400d22
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 24) to i32*), align 8
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 24) to i32*), align 8
  %294 = add i64 %1091, 29
  store i64 %294, i64* %PC, align 8
  store i32 0, i32* %1066, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400dc0

block_400fbc:                                     ; preds = %block_400fb5, %block_400fc6
  %295 = phi i64 [ %.pre41, %block_400fb5 ], [ %3299, %block_400fc6 ]
  %296 = load i64, i64* %RBP, align 8
  %297 = add i64 %296, -12
  %298 = add i64 %295, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %300, -1
  %302 = icmp eq i32 %300, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1, !tbaa !2432
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #8
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1, !tbaa !2446
  %309 = xor i32 %300, %301
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %27, align 1, !tbaa !2447
  %313 = icmp eq i32 %301, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %30, align 1, !tbaa !2448
  %315 = lshr i32 %301, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %33, align 1, !tbaa !2449
  %317 = lshr i32 %300, 31
  %318 = xor i32 %315, %317
  %319 = add nuw nsw i32 %318, %317
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %39, align 1, !tbaa !2450
  %322 = icmp ne i8 %316, 0
  %323 = xor i1 %322, %320
  %.demorgan112 = or i1 %313, %323
  %.v113 = select i1 %.demorgan112, i64 10, i64 57
  %324 = add i64 %295, %.v113
  store i64 %324, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan112, label %block_400fc6, label %block_400ff5

block_400bb6:                                     ; preds = %block_400b59
  %325 = add i64 %3481, -4
  %326 = add i64 %3509, 8
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, 1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp eq i32 %328, -1
  %332 = icmp eq i32 %329, 0
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %14, align 1, !tbaa !2432
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #8
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %21, align 1, !tbaa !2446
  %340 = xor i32 %328, %329
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %27, align 1, !tbaa !2447
  %344 = icmp eq i32 %329, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %30, align 1, !tbaa !2448
  %346 = lshr i32 %329, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %33, align 1, !tbaa !2449
  %348 = lshr i32 %328, 31
  %349 = xor i32 %346, %348
  %350 = add nuw nsw i32 %349, %346
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %39, align 1, !tbaa !2450
  %353 = add i64 %3509, 14
  store i64 %353, i64* %PC, align 8
  store i32 %329, i32* %327, align 4
  %354 = load i64, i64* %PC, align 8
  %355 = add i64 %354, -124
  store i64 %355, i64* %43, align 8, !tbaa !2428
  br label %block_400b48

block_4010d6:                                     ; preds = %block_4010b9, %block_401144
  %356 = phi i64 [ %.pre45, %block_4010b9 ], [ %1400, %block_401144 ]
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -4
  %359 = add i64 %356, 4
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, -1
  %363 = icmp eq i32 %361, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %14, align 1, !tbaa !2432
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365) #8
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1, !tbaa !2446
  %370 = xor i32 %361, %362
  %371 = lshr i32 %370, 4
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %27, align 1, !tbaa !2447
  %374 = icmp eq i32 %362, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %30, align 1, !tbaa !2448
  %376 = lshr i32 %362, 31
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %33, align 1, !tbaa !2449
  %378 = lshr i32 %361, 31
  %379 = xor i32 %376, %378
  %380 = add nuw nsw i32 %379, %378
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %39, align 1, !tbaa !2450
  %383 = icmp ne i8 %377, 0
  %384 = xor i1 %383, %381
  %.demorgan119 = or i1 %374, %384
  %.v120 = select i1 %.demorgan119, i64 10, i64 129
  %385 = add i64 %356, %.v120
  store i64 %385, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan119, label %block_4010e0, label %block_401157

block_400f9a:                                     ; preds = %block_401008, %block_400f7d
  %386 = phi i64 [ %3213, %block_401008 ], [ %.pre39, %block_400f7d ]
  %387 = load i64, i64* %RBP, align 8
  %388 = add i64 %387, -4
  %389 = add i64 %386, 4
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = add i32 %391, -1
  %393 = icmp eq i32 %391, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %14, align 1, !tbaa !2432
  %395 = and i32 %392, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #8
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %21, align 1, !tbaa !2446
  %400 = xor i32 %391, %392
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %27, align 1, !tbaa !2447
  %404 = icmp eq i32 %392, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %30, align 1, !tbaa !2448
  %406 = lshr i32 %392, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %33, align 1, !tbaa !2449
  %408 = lshr i32 %391, 31
  %409 = xor i32 %406, %408
  %410 = add nuw nsw i32 %409, %408
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %39, align 1, !tbaa !2450
  %413 = icmp ne i8 %407, 0
  %414 = xor i1 %413, %411
  %.demorgan109 = or i1 %404, %414
  %.v110 = select i1 %.demorgan109, i64 10, i64 129
  %415 = add i64 %386, %.v110
  store i64 %415, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan109, label %block_400fa4, label %block_40101b

block_400d90:                                     ; preds = %block_400d33
  %416 = add i64 %2512, -4
  %417 = add i64 %2529, 8
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
  store i8 %425, i8* %14, align 1, !tbaa !2432
  %426 = and i32 %420, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426) #8
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %21, align 1, !tbaa !2446
  %431 = xor i32 %419, %420
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %27, align 1, !tbaa !2447
  %435 = icmp eq i32 %420, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %30, align 1, !tbaa !2448
  %437 = lshr i32 %420, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %33, align 1, !tbaa !2449
  %439 = lshr i32 %419, 31
  %440 = xor i32 %437, %439
  %441 = add nuw nsw i32 %440, %437
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %39, align 1, !tbaa !2450
  %444 = add i64 %2529, 14
  store i64 %444, i64* %PC, align 8
  store i32 %420, i32* %418, align 4
  %445 = load i64, i64* %PC, align 8
  %446 = add i64 %445, -124
  store i64 %446, i64* %43, align 8, !tbaa !2428
  br label %block_400d22

block_400989:                                     ; preds = %block_40097f
  %447 = add i64 %1093, -12
  %448 = add i64 %1121, 7
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 0, i32* %449, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400990

block_4009dc:                                     ; preds = %block_40097f
  %450 = add i64 %1093, -4
  %451 = add i64 %1121, 8
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = add i32 %453, 1
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX, align 8, !tbaa !2428
  %456 = icmp eq i32 %453, -1
  %457 = icmp eq i32 %454, 0
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %14, align 1, !tbaa !2432
  %460 = and i32 %454, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #8
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %21, align 1, !tbaa !2446
  %465 = xor i32 %453, %454
  %466 = lshr i32 %465, 4
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %27, align 1, !tbaa !2447
  %469 = icmp eq i32 %454, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %30, align 1, !tbaa !2448
  %471 = lshr i32 %454, 31
  %472 = trunc i32 %471 to i8
  store i8 %472, i8* %33, align 1, !tbaa !2449
  %473 = lshr i32 %453, 31
  %474 = xor i32 %471, %473
  %475 = add nuw nsw i32 %474, %471
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %39, align 1, !tbaa !2450
  %478 = add i64 %1121, 14
  store i64 %478, i64* %PC, align 8
  store i32 %454, i32* %452, align 4
  %479 = load i64, i64* %PC, align 8
  %480 = add i64 %479, -124
  store i64 %480, i64* %43, align 8, !tbaa !2428
  br label %block_40096e

block_401240:                                     ; preds = %block_40123b, %block_4011fd
  %.sink = phi i64 [ %3090, %block_40123b ], [ %57, %block_4011fd ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.40, %block_40123b ], [ %49, %block_4011fd ]
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %481 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %483 = add i64 %.sink, -3664
  %484 = add i64 %.sink, 24
  %485 = load i64, i64* %6, align 8, !tbaa !2428
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %6, align 8, !tbaa !2428
  store i64 %483, i64* %43, align 8, !tbaa !2428
  %488 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %489 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %490 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RSI, align 8, !tbaa !2428
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -32
  %494 = load i32, i32* %EAX, align 4
  %495 = add i64 %489, 20
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %496, align 4
  %497 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %498 = add i64 %497, -3708
  %499 = add i64 %497, 7
  %500 = load i64, i64* %6, align 8, !tbaa !2428
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %499, i64* %502, align 8
  store i64 %501, i64* %6, align 8, !tbaa !2428
  store i64 %498, i64* %43, align 8, !tbaa !2428
  %503 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %488)
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -36
  %506 = load i32, i32* %EAX, align 4
  %507 = load i64, i64* %PC, align 8
  %508 = add i64 %507, 3
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %509, align 4
  %510 = load i64, i64* %RSP, align 8
  %511 = load i64, i64* %PC, align 8
  %512 = add i64 %510, 48
  store i64 %512, i64* %RSP, align 8, !tbaa !2428
  %513 = icmp ugt i64 %510, -49
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %14, align 1, !tbaa !2432
  %515 = trunc i64 %512 to i32
  %516 = and i32 %515, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516) #8
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %21, align 1, !tbaa !2446
  %521 = xor i64 %510, 16
  %522 = xor i64 %521, %512
  %523 = lshr i64 %522, 4
  %524 = trunc i64 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %27, align 1, !tbaa !2447
  %526 = icmp eq i64 %512, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %30, align 1, !tbaa !2448
  %528 = lshr i64 %512, 63
  %529 = trunc i64 %528 to i8
  store i8 %529, i8* %33, align 1, !tbaa !2449
  %530 = lshr i64 %510, 63
  %531 = xor i64 %528, %530
  %532 = add nuw nsw i64 %531, %528
  %533 = icmp eq i64 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %39, align 1, !tbaa !2450
  %535 = add i64 %511, 5
  store i64 %535, i64* %PC, align 8
  %536 = add i64 %510, 56
  %537 = inttoptr i64 %512 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %RBP, align 8, !tbaa !2428
  store i64 %536, i64* %6, align 8, !tbaa !2428
  %539 = add i64 %511, 6
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %536 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %43, align 8, !tbaa !2428
  %542 = add i64 %510, 64
  store i64 %542, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %503

block_400f7d:                                     ; preds = %block_400efc
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 36) to i32*), align 4
  store i32 9, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 36) to i32*), align 4
  %543 = add i64 %1261, 29
  store i64 %543, i64* %PC, align 8
  store i32 0, i32* %1236, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400f9a

block_400b74:                                     ; preds = %block_400b6a
  %544 = add i64 %2375, -4
  %545 = add i64 %2392, 3
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RAX, align 8, !tbaa !2428
  %549 = add i64 %2375, -8
  %550 = add i64 %2392, 6
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = zext i32 %552 to i64
  store i64 %553, i64* %RCX, align 8, !tbaa !2428
  %554 = add i64 %2392, 9
  store i64 %554, i64* %PC, align 8
  %555 = load i32, i32* %2378, align 4
  %556 = shl i32 %555, 3
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RDX, align 8, !tbaa !2428
  %558 = add i32 %556, %552
  %559 = shl i32 %558, 3
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RCX, align 8, !tbaa !2428
  %561 = lshr i32 %558, 28
  %562 = and i32 %561, 1
  %563 = load i64, i64* %RAX, align 8
  %564 = trunc i64 %563 to i32
  %565 = add i32 %559, %564
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RAX, align 8, !tbaa !2428
  %567 = icmp ult i32 %565, %564
  %568 = icmp ult i32 %565, %559
  %569 = or i1 %567, %568
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %14, align 1, !tbaa !2432
  %571 = and i32 %565, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571) #8
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %21, align 1, !tbaa !2446
  %576 = xor i64 %560, %563
  %577 = trunc i64 %576 to i32
  %578 = xor i32 %577, %565
  %579 = lshr i32 %578, 4
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %27, align 1, !tbaa !2447
  %582 = icmp eq i32 %565, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %30, align 1, !tbaa !2448
  %584 = lshr i32 %565, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %33, align 1, !tbaa !2449
  %586 = lshr i32 %564, 31
  %587 = xor i32 %584, %586
  %588 = xor i32 %584, %562
  %589 = add nuw nsw i32 %587, %588
  %590 = icmp eq i32 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %39, align 1, !tbaa !2450
  %592 = sext i32 %565 to i64
  store i64 %592, i64* %RSI, align 8, !tbaa !2428
  %593 = shl nsw i64 %592, 2
  %594 = add i64 %593, add (i64 ptrtoint (%p_type* @p to i64), i64 6144)
  %595 = add i64 %2392, 33
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %594 to i32*
  store i32 1, i32* %596, align 4
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -12
  %599 = load i64, i64* %PC, align 8
  %600 = add i64 %599, 3
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = add i32 %602, 1
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RAX, align 8, !tbaa !2428
  %605 = icmp eq i32 %602, -1
  %606 = icmp eq i32 %603, 0
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %14, align 1, !tbaa !2432
  %609 = and i32 %603, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609) #8
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1, !tbaa !2446
  %614 = xor i32 %602, %603
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %27, align 1, !tbaa !2447
  %618 = icmp eq i32 %603, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %30, align 1, !tbaa !2448
  %620 = lshr i32 %603, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %33, align 1, !tbaa !2449
  %622 = lshr i32 %602, 31
  %623 = xor i32 %620, %622
  %624 = add nuw nsw i32 %623, %620
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %39, align 1, !tbaa !2450
  %627 = add i64 %599, 9
  store i64 %627, i64* %PC, align 8
  store i32 %603, i32* %601, align 4
  %628 = load i64, i64* %PC, align 8
  %629 = add i64 %628, -52
  store i64 %629, i64* %43, align 8, !tbaa !2428
  br label %block_400b6a

block_400f6a:                                     ; preds = %block_400f0d
  %630 = add i64 %2998, -4
  %631 = add i64 %3026, 8
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = add i32 %633, 1
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RAX, align 8, !tbaa !2428
  %636 = icmp eq i32 %633, -1
  %637 = icmp eq i32 %634, 0
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1, !tbaa !2432
  %640 = and i32 %634, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640) #8
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %21, align 1, !tbaa !2446
  %645 = xor i32 %633, %634
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %27, align 1, !tbaa !2447
  %649 = icmp eq i32 %634, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %30, align 1, !tbaa !2448
  %651 = lshr i32 %634, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %33, align 1, !tbaa !2449
  %653 = lshr i32 %633, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %651
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %39, align 1, !tbaa !2450
  %658 = add i64 %3026, 14
  store i64 %658, i64* %PC, align 8
  store i32 %634, i32* %632, align 4
  %659 = load i64, i64* %PC, align 8
  %660 = add i64 %659, -124
  store i64 %660, i64* %43, align 8, !tbaa !2428
  br label %block_400efc

block_400967:                                     ; preds = %block_400908
  %661 = add i64 %2757, 7
  store i64 %661, i64* %PC, align 8
  store i32 0, i32* %2732, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_40096e

block_400b63:                                     ; preds = %block_400b59
  %662 = add i64 %3481, -12
  %663 = add i64 %3509, 7
  store i64 %663, i64* %PC, align 8
  %664 = inttoptr i64 %662 to i32*
  store i32 0, i32* %664, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400b6a

block_400954:                                     ; preds = %block_400919
  %665 = add i64 %2258, -4
  %666 = add i64 %2287, 8
  store i64 %666, i64* %PC, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %668, 1
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX, align 8, !tbaa !2428
  %671 = icmp eq i32 %668, -1
  %672 = icmp eq i32 %669, 0
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1, !tbaa !2432
  %675 = and i32 %669, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675) #8
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1, !tbaa !2446
  %680 = xor i32 %668, %669
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %27, align 1, !tbaa !2447
  %684 = icmp eq i32 %669, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %30, align 1, !tbaa !2448
  %686 = lshr i32 %669, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %33, align 1, !tbaa !2449
  %688 = lshr i32 %668, 31
  %689 = xor i32 %686, %688
  %690 = add nuw nsw i32 %689, %686
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %39, align 1, !tbaa !2450
  %693 = add i64 %2287, 14
  store i64 %693, i64* %PC, align 8
  store i32 %669, i32* %667, align 4
  %694 = load i64, i64* %PC, align 8
  %695 = add i64 %694, -90
  store i64 %695, i64* %43, align 8, !tbaa !2428
  br label %block_400908

block_401038:                                     ; preds = %block_40101b, %block_4010a6
  %696 = phi i64 [ %.pre42, %block_40101b ], [ %275, %block_4010a6 ]
  %697 = load i64, i64* %RBP, align 8
  %698 = add i64 %697, -4
  %699 = add i64 %696, 4
  store i64 %699, i64* %PC, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %702 = and i32 %701, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702) #8
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %707 = icmp eq i32 %701, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %30, align 1, !tbaa !2448
  %709 = lshr i32 %701, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %711 = xor i1 %707, true
  %712 = icmp eq i8 %710, 0
  %713 = and i1 %712, %711
  %.v114 = select i1 %713, i64 129, i64 10
  %714 = add i64 %696, %.v114
  store i64 %714, i64* %43, align 8, !tbaa !2428
  br i1 %713, label %block_4010b9, label %block_401042

block_400d4e:                                     ; preds = %block_400d44
  %715 = add i64 %1157, -4
  %716 = add i64 %1174, 3
  store i64 %716, i64* %PC, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RAX, align 8, !tbaa !2428
  %720 = add i64 %1157, -8
  %721 = add i64 %1174, 6
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RCX, align 8, !tbaa !2428
  %725 = add i64 %1174, 9
  store i64 %725, i64* %PC, align 8
  %726 = load i32, i32* %1160, align 4
  %727 = shl i32 %726, 3
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RDX, align 8, !tbaa !2428
  %729 = add i32 %727, %723
  %730 = shl i32 %729, 3
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RCX, align 8, !tbaa !2428
  %732 = lshr i32 %729, 28
  %733 = and i32 %732, 1
  %734 = load i64, i64* %RAX, align 8
  %735 = trunc i64 %734 to i32
  %736 = add i32 %730, %735
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RAX, align 8, !tbaa !2428
  %738 = icmp ult i32 %736, %735
  %739 = icmp ult i32 %736, %730
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %14, align 1, !tbaa !2432
  %742 = and i32 %736, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742) #8
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %21, align 1, !tbaa !2446
  %747 = xor i64 %731, %734
  %748 = trunc i64 %747 to i32
  %749 = xor i32 %748, %736
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %27, align 1, !tbaa !2447
  %753 = icmp eq i32 %736, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %30, align 1, !tbaa !2448
  %755 = lshr i32 %736, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %33, align 1, !tbaa !2449
  %757 = lshr i32 %735, 31
  %758 = xor i32 %755, %757
  %759 = xor i32 %755, %733
  %760 = add nuw nsw i32 %758, %759
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %39, align 1, !tbaa !2450
  %763 = sext i32 %736 to i64
  store i64 %763, i64* %RSI, align 8, !tbaa !2428
  %764 = shl nsw i64 %763, 2
  %765 = add i64 %764, add (i64 ptrtoint (%p_type* @p to i64), i64 12288)
  %766 = add i64 %1174, 33
  store i64 %766, i64* %PC, align 8
  %767 = inttoptr i64 %765 to i32*
  store i32 1, i32* %767, align 4
  %768 = load i64, i64* %RBP, align 8
  %769 = add i64 %768, -12
  %770 = load i64, i64* %PC, align 8
  %771 = add i64 %770, 3
  store i64 %771, i64* %PC, align 8
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %773, 1
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RAX, align 8, !tbaa !2428
  %776 = icmp eq i32 %773, -1
  %777 = icmp eq i32 %774, 0
  %778 = or i1 %776, %777
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %14, align 1, !tbaa !2432
  %780 = and i32 %774, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780) #8
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1, !tbaa !2446
  %785 = xor i32 %773, %774
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %27, align 1, !tbaa !2447
  %789 = icmp eq i32 %774, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %30, align 1, !tbaa !2448
  %791 = lshr i32 %774, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %33, align 1, !tbaa !2449
  %793 = lshr i32 %773, 31
  %794 = xor i32 %791, %793
  %795 = add nuw nsw i32 %794, %791
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %39, align 1, !tbaa !2450
  %798 = add i64 %770, 9
  store i64 %798, i64* %PC, align 8
  store i32 %774, i32* %772, align 4
  %799 = load i64, i64* %PC, align 8
  %800 = add i64 %799, -52
  store i64 %800, i64* %43, align 8, !tbaa !2428
  br label %block_400d44

block_400dca:                                     ; preds = %block_400dc0
  %801 = add i64 %1452, -8
  %802 = add i64 %1469, 7
  store i64 %802, i64* %PC, align 8
  %803 = inttoptr i64 %801 to i32*
  store i32 0, i32* %803, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400dd1

block_400e8a:                                     ; preds = %block_400e80
  %804 = add i64 %2478, -4
  %805 = add i64 %2506, 3
  store i64 %805, i64* %PC, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RAX, align 8, !tbaa !2428
  %809 = add i64 %2478, -8
  %810 = add i64 %2506, 6
  store i64 %810, i64* %PC, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RCX, align 8, !tbaa !2428
  %814 = add i64 %2506, 9
  store i64 %814, i64* %PC, align 8
  %815 = load i32, i32* %2481, align 4
  %816 = shl i32 %815, 3
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDX, align 8, !tbaa !2428
  %818 = add i32 %816, %812
  %819 = shl i32 %818, 3
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RCX, align 8, !tbaa !2428
  %821 = lshr i32 %818, 28
  %822 = and i32 %821, 1
  %823 = load i64, i64* %RAX, align 8
  %824 = trunc i64 %823 to i32
  %825 = add i32 %819, %824
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX, align 8, !tbaa !2428
  %827 = icmp ult i32 %825, %824
  %828 = icmp ult i32 %825, %819
  %829 = or i1 %827, %828
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %14, align 1, !tbaa !2432
  %831 = and i32 %825, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831) #8
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %21, align 1, !tbaa !2446
  %836 = xor i64 %820, %823
  %837 = trunc i64 %836 to i32
  %838 = xor i32 %837, %825
  %839 = lshr i32 %838, 4
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  store i8 %841, i8* %27, align 1, !tbaa !2447
  %842 = icmp eq i32 %825, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %30, align 1, !tbaa !2448
  %844 = lshr i32 %825, 31
  %845 = trunc i32 %844 to i8
  store i8 %845, i8* %33, align 1, !tbaa !2449
  %846 = lshr i32 %824, 31
  %847 = xor i32 %844, %846
  %848 = xor i32 %844, %822
  %849 = add nuw nsw i32 %847, %848
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %39, align 1, !tbaa !2450
  %852 = sext i32 %825 to i64
  store i64 %852, i64* %RSI, align 8, !tbaa !2428
  %853 = shl nsw i64 %852, 2
  %854 = add i64 %853, add (i64 ptrtoint (%p_type* @p to i64), i64 16384)
  %855 = add i64 %2506, 33
  store i64 %855, i64* %PC, align 8
  %856 = inttoptr i64 %854 to i32*
  store i32 1, i32* %856, align 4
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -12
  %859 = load i64, i64* %PC, align 8
  %860 = add i64 %859, 3
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %858 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = add i32 %862, 1
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RAX, align 8, !tbaa !2428
  %865 = icmp eq i32 %862, -1
  %866 = icmp eq i32 %863, 0
  %867 = or i1 %865, %866
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %14, align 1, !tbaa !2432
  %869 = and i32 %863, 255
  %870 = tail call i32 @llvm.ctpop.i32(i32 %869) #8
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  store i8 %873, i8* %21, align 1, !tbaa !2446
  %874 = xor i32 %862, %863
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %27, align 1, !tbaa !2447
  %878 = icmp eq i32 %863, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %30, align 1, !tbaa !2448
  %880 = lshr i32 %863, 31
  %881 = trunc i32 %880 to i8
  store i8 %881, i8* %33, align 1, !tbaa !2449
  %882 = lshr i32 %862, 31
  %883 = xor i32 %880, %882
  %884 = add nuw nsw i32 %883, %880
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %39, align 1, !tbaa !2450
  %887 = add i64 %859, 9
  store i64 %887, i64* %PC, align 8
  store i32 %863, i32* %861, align 4
  %888 = load i64, i64* %PC, align 8
  %889 = add i64 %888, -52
  store i64 %889, i64* %43, align 8, !tbaa !2428
  br label %block_400e80

block_400b48:                                     ; preds = %block_400b2b, %block_400bb6
  %890 = phi i64 [ %.pre18, %block_400b2b ], [ %355, %block_400bb6 ]
  %891 = load i64, i64* %RBP, align 8
  %892 = add i64 %891, -4
  %893 = add i64 %890, 4
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = add i32 %895, -1
  %897 = icmp eq i32 %895, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %14, align 1, !tbaa !2432
  %899 = and i32 %896, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899) #8
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %21, align 1, !tbaa !2446
  %904 = xor i32 %895, %896
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %27, align 1, !tbaa !2447
  %908 = icmp eq i32 %896, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %30, align 1, !tbaa !2448
  %910 = lshr i32 %896, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %33, align 1, !tbaa !2449
  %912 = lshr i32 %895, 31
  %913 = xor i32 %910, %912
  %914 = add nuw nsw i32 %913, %912
  %915 = icmp eq i32 %914, 2
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %39, align 1, !tbaa !2450
  %917 = icmp ne i8 %911, 0
  %918 = xor i1 %917, %915
  %.demorgan77 = or i1 %908, %918
  %.v78 = select i1 %.demorgan77, i64 10, i64 129
  %919 = add i64 %890, %.v78
  store i64 %919, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan77, label %block_400b52, label %block_400bc9

block_4010e0:                                     ; preds = %block_4010d6
  %920 = add i64 %357, -8
  %921 = add i64 %385, 7
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i32*
  store i32 0, i32* %922, align 4
  %.pre46 = load i64, i64* %PC, align 8
  br label %block_4010e7

block_400d3d:                                     ; preds = %block_400d33
  %923 = add i64 %2512, -12
  %924 = add i64 %2529, 7
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i32*
  store i32 0, i32* %925, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400d44

block_401131:                                     ; preds = %block_4010f8
  %926 = add i64 %1264, -8
  %927 = add i64 %1292, 8
  store i64 %927, i64* %PC, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = add i32 %929, 1
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RAX, align 8, !tbaa !2428
  %932 = icmp eq i32 %929, -1
  %933 = icmp eq i32 %930, 0
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %14, align 1, !tbaa !2432
  %936 = and i32 %930, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936) #8
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %21, align 1, !tbaa !2446
  %941 = xor i32 %929, %930
  %942 = lshr i32 %941, 4
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  store i8 %944, i8* %27, align 1, !tbaa !2447
  %945 = icmp eq i32 %930, 0
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %30, align 1, !tbaa !2448
  %947 = lshr i32 %930, 31
  %948 = trunc i32 %947 to i8
  store i8 %948, i8* %33, align 1, !tbaa !2449
  %949 = lshr i32 %929, 31
  %950 = xor i32 %947, %949
  %951 = add nuw nsw i32 %950, %947
  %952 = icmp eq i32 %951, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %39, align 1, !tbaa !2450
  %954 = add i64 %1292, 14
  store i64 %954, i64* %PC, align 8
  store i32 %930, i32* %928, align 4
  %955 = load i64, i64* %PC, align 8
  %956 = add i64 %955, -88
  store i64 %956, i64* %43, align 8, !tbaa !2428
  br label %block_4010e7

block_400990:                                     ; preds = %block_40099a, %block_400989
  %957 = phi i64 [ %2026, %block_40099a ], [ %.pre11, %block_400989 ]
  %958 = load i64, i64* %RBP, align 8
  %959 = add i64 %958, -12
  %960 = add i64 %957, 4
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %963 = and i32 %962, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963) #8
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %968 = icmp eq i32 %962, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %30, align 1, !tbaa !2448
  %970 = lshr i32 %962, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %972 = xor i1 %968, true
  %973 = icmp eq i8 %971, 0
  %974 = and i1 %973, %972
  %.v66 = select i1 %974, i64 57, i64 10
  %975 = add i64 %957, %.v66
  store i64 %975, i64* %43, align 8, !tbaa !2428
  br i1 %974, label %block_4009c9, label %block_40099a

block_400f28:                                     ; preds = %block_400f1e
  %976 = add i64 %1213, -4
  %977 = add i64 %1230, 3
  store i64 %977, i64* %PC, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RAX, align 8, !tbaa !2428
  %981 = add i64 %1213, -8
  %982 = add i64 %1230, 6
  store i64 %982, i64* %PC, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RCX, align 8, !tbaa !2428
  %986 = add i64 %1230, 9
  store i64 %986, i64* %PC, align 8
  %987 = load i32, i32* %1216, align 4
  %988 = shl i32 %987, 3
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RDX, align 8, !tbaa !2428
  %990 = add i32 %988, %984
  %991 = shl i32 %990, 3
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RCX, align 8, !tbaa !2428
  %993 = lshr i32 %990, 28
  %994 = and i32 %993, 1
  %995 = load i64, i64* %RAX, align 8
  %996 = trunc i64 %995 to i32
  %997 = add i32 %991, %996
  %998 = zext i32 %997 to i64
  store i64 %998, i64* %RAX, align 8, !tbaa !2428
  %999 = icmp ult i32 %997, %996
  %1000 = icmp ult i32 %997, %991
  %1001 = or i1 %999, %1000
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %14, align 1, !tbaa !2432
  %1003 = and i32 %997, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003) #8
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %21, align 1, !tbaa !2446
  %1008 = xor i64 %992, %995
  %1009 = trunc i64 %1008 to i32
  %1010 = xor i32 %1009, %997
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %27, align 1, !tbaa !2447
  %1014 = icmp eq i32 %997, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %30, align 1, !tbaa !2448
  %1016 = lshr i32 %997, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %33, align 1, !tbaa !2449
  %1018 = lshr i32 %996, 31
  %1019 = xor i32 %1016, %1018
  %1020 = xor i32 %1016, %994
  %1021 = add nuw nsw i32 %1019, %1020
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %39, align 1, !tbaa !2450
  %1024 = sext i32 %997 to i64
  store i64 %1024, i64* %RSI, align 8, !tbaa !2428
  %1025 = shl nsw i64 %1024, 2
  %1026 = add i64 %1025, add (i64 ptrtoint (%p_type* @p to i64), i64 18432)
  %1027 = add i64 %1230, 33
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i32*
  store i32 1, i32* %1028, align 4
  %1029 = load i64, i64* %RBP, align 8
  %1030 = add i64 %1029, -12
  %1031 = load i64, i64* %PC, align 8
  %1032 = add i64 %1031, 3
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1030 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = add i32 %1034, 1
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RAX, align 8, !tbaa !2428
  %1037 = icmp eq i32 %1034, -1
  %1038 = icmp eq i32 %1035, 0
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %14, align 1, !tbaa !2432
  %1041 = and i32 %1035, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041) #8
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %21, align 1, !tbaa !2446
  %1046 = xor i32 %1034, %1035
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %27, align 1, !tbaa !2447
  %1050 = icmp eq i32 %1035, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %30, align 1, !tbaa !2448
  %1052 = lshr i32 %1035, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %33, align 1, !tbaa !2449
  %1054 = lshr i32 %1034, 31
  %1055 = xor i32 %1052, %1054
  %1056 = add nuw nsw i32 %1055, %1052
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %39, align 1, !tbaa !2450
  %1059 = add i64 %1031, 9
  store i64 %1059, i64* %PC, align 8
  store i32 %1035, i32* %1033, align 4
  %1060 = load i64, i64* %PC, align 8
  %1061 = add i64 %1060, -52
  store i64 %1061, i64* %43, align 8, !tbaa !2428
  br label %block_400f1e

block_400d22:                                     ; preds = %block_400d05, %block_400d90
  %1062 = phi i64 [ %.pre27, %block_400d05 ], [ %446, %block_400d90 ]
  %1063 = load i64, i64* %RBP, align 8
  %1064 = add i64 %1063, -4
  %1065 = add i64 %1062, 4
  store i64 %1065, i64* %PC, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, -2
  %1069 = icmp ult i32 %1067, 2
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1, !tbaa !2432
  %1071 = and i32 %1068, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071) #8
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1, !tbaa !2446
  %1076 = xor i32 %1067, %1068
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %27, align 1, !tbaa !2447
  %1080 = icmp eq i32 %1068, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %30, align 1, !tbaa !2448
  %1082 = lshr i32 %1068, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %33, align 1, !tbaa !2449
  %1084 = lshr i32 %1067, 31
  %1085 = xor i32 %1082, %1084
  %1086 = add nuw nsw i32 %1085, %1084
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %39, align 1, !tbaa !2450
  %1089 = icmp ne i8 %1083, 0
  %1090 = xor i1 %1089, %1087
  %.demorgan92 = or i1 %1080, %1090
  %.v93 = select i1 %.demorgan92, i64 10, i64 129
  %1091 = add i64 %1062, %.v93
  store i64 %1091, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan92, label %block_400d2c, label %block_400da3

block_40097f:                                     ; preds = %block_4009c9, %block_400978
  %1092 = phi i64 [ %2057, %block_4009c9 ], [ %.pre10, %block_400978 ]
  %1093 = load i64, i64* %RBP, align 8
  %1094 = add i64 %1093, -8
  %1095 = add i64 %1092, 4
  store i64 %1095, i64* %PC, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = add i32 %1097, -1
  %1099 = icmp eq i32 %1097, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %14, align 1, !tbaa !2432
  %1101 = and i32 %1098, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101) #8
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %21, align 1, !tbaa !2446
  %1106 = xor i32 %1097, %1098
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %27, align 1, !tbaa !2447
  %1110 = icmp eq i32 %1098, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %30, align 1, !tbaa !2448
  %1112 = lshr i32 %1098, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %33, align 1, !tbaa !2449
  %1114 = lshr i32 %1097, 31
  %1115 = xor i32 %1112, %1114
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %39, align 1, !tbaa !2450
  %1119 = icmp ne i8 %1113, 0
  %1120 = xor i1 %1119, %1117
  %.demorgan64 = or i1 %1110, %1120
  %.v65 = select i1 %.demorgan64, i64 10, i64 93
  %1121 = add i64 %1092, %.v65
  store i64 %1121, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan64, label %block_400989, label %block_4009dc

block_400f17:                                     ; preds = %block_400f0d
  %1122 = add i64 %2998, -12
  %1123 = add i64 %3026, 7
  store i64 %1123, i64* %PC, align 8
  %1124 = inttoptr i64 %1122 to i32*
  store i32 0, i32* %1124, align 4
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400f1e

block_400e2e:                                     ; preds = %block_400dd1
  %1125 = add i64 %3334, -4
  %1126 = add i64 %3362, 8
  store i64 %1126, i64* %PC, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i32 %1128, 1
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX, align 8, !tbaa !2428
  %1131 = icmp eq i32 %1128, -1
  %1132 = icmp eq i32 %1129, 0
  %1133 = or i1 %1131, %1132
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1, !tbaa !2432
  %1135 = and i32 %1129, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135) #8
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1, !tbaa !2446
  %1140 = xor i32 %1128, %1129
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %27, align 1, !tbaa !2447
  %1144 = icmp eq i32 %1129, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %30, align 1, !tbaa !2448
  %1146 = lshr i32 %1129, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %33, align 1, !tbaa !2449
  %1148 = lshr i32 %1128, 31
  %1149 = xor i32 %1146, %1148
  %1150 = add nuw nsw i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %39, align 1, !tbaa !2450
  %1153 = add i64 %3362, 14
  store i64 %1153, i64* %PC, align 8
  store i32 %1129, i32* %1127, align 4
  %1154 = load i64, i64* %PC, align 8
  %1155 = add i64 %1154, -124
  store i64 %1155, i64* %43, align 8, !tbaa !2428
  br label %block_400dc0

block_400d44:                                     ; preds = %block_400d3d, %block_400d4e
  %1156 = phi i64 [ %.pre29, %block_400d3d ], [ %800, %block_400d4e ]
  %1157 = load i64, i64* %RBP, align 8
  %1158 = add i64 %1157, -12
  %1159 = add i64 %1156, 4
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1162 = and i32 %1161, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162) #8
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %1167 = icmp eq i32 %1161, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %30, align 1, !tbaa !2448
  %1169 = lshr i32 %1161, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %1171 = xor i1 %1167, true
  %1172 = icmp eq i8 %1170, 0
  %1173 = and i1 %1172, %1171
  %.v95 = select i1 %1173, i64 57, i64 10
  %1174 = add i64 %1156, %.v95
  store i64 %1174, i64* %43, align 8, !tbaa !2428
  br i1 %1173, label %block_400d7d, label %block_400d4e

block_400b2b:                                     ; preds = %block_400aaa
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 8) to i32*), align 8
  store i32 88, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 8) to i32*), align 8
  %1175 = add i64 %2963, 29
  store i64 %1175, i64* %PC, align 8
  store i32 0, i32* %2949, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_400b48

block_400912:                                     ; preds = %block_400908
  %1176 = add i64 %2729, -16
  %1177 = add i64 %2757, 7
  store i64 %1177, i64* %PC, align 8
  %1178 = inttoptr i64 %1176 to i32*
  store i32 0, i32* %1178, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400919

block_40096e:                                     ; preds = %block_400967, %block_4009dc
  %1179 = phi i64 [ %.pre9, %block_400967 ], [ %480, %block_4009dc ]
  %1180 = load i64, i64* %RBP, align 8
  %1181 = add i64 %1180, -4
  %1182 = add i64 %1179, 4
  store i64 %1182, i64* %PC, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = add i32 %1184, -3
  %1186 = icmp ult i32 %1184, 3
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %14, align 1, !tbaa !2432
  %1188 = and i32 %1185, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188) #8
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1, !tbaa !2446
  %1193 = xor i32 %1184, %1185
  %1194 = lshr i32 %1193, 4
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  store i8 %1196, i8* %27, align 1, !tbaa !2447
  %1197 = icmp eq i32 %1185, 0
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %30, align 1, !tbaa !2448
  %1199 = lshr i32 %1185, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %33, align 1, !tbaa !2449
  %1201 = lshr i32 %1184, 31
  %1202 = xor i32 %1199, %1201
  %1203 = add nuw nsw i32 %1202, %1201
  %1204 = icmp eq i32 %1203, 2
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %39, align 1, !tbaa !2450
  %1206 = icmp ne i8 %1200, 0
  %1207 = xor i1 %1206, %1204
  %.demorgan62 = or i1 %1197, %1207
  %.v63 = select i1 %.demorgan62, i64 10, i64 129
  %1208 = add i64 %1179, %.v63
  store i64 %1208, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan62, label %block_400978, label %block_4009ef

block_400f06:                                     ; preds = %block_400efc
  %1209 = add i64 %1233, -8
  %1210 = add i64 %1261, 7
  store i64 %1210, i64* %PC, align 8
  %1211 = inttoptr i64 %1209 to i32*
  store i32 0, i32* %1211, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_400f0d

block_400f1e:                                     ; preds = %block_400f17, %block_400f28
  %1212 = phi i64 [ %.pre38, %block_400f17 ], [ %1061, %block_400f28 ]
  %1213 = load i64, i64* %RBP, align 8
  %1214 = add i64 %1213, -12
  %1215 = add i64 %1212, 4
  store i64 %1215, i64* %PC, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1218 = and i32 %1217, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218) #8
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %1223 = icmp eq i32 %1217, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %30, align 1, !tbaa !2448
  %1225 = lshr i32 %1217, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %1227 = xor i1 %1223, true
  %1228 = icmp eq i8 %1226, 0
  %1229 = and i1 %1228, %1227
  %.v108 = select i1 %1229, i64 57, i64 10
  %1230 = add i64 %1212, %.v108
  store i64 %1230, i64* %43, align 8, !tbaa !2428
  br i1 %1229, label %block_400f57, label %block_400f28

block_400d05:                                     ; preds = %block_400c84
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 20) to i32*), align 4
  store i32 200, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 20) to i32*), align 4
  %1231 = add i64 %2226, 29
  store i64 %1231, i64* %PC, align 8
  store i32 0, i32* %2212, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_400d22

block_400efc:                                     ; preds = %block_400edf, %block_400f6a
  %1232 = phi i64 [ %.pre36, %block_400edf ], [ %660, %block_400f6a ]
  %1233 = load i64, i64* %RBP, align 8
  %1234 = add i64 %1233, -4
  %1235 = add i64 %1232, 4
  store i64 %1235, i64* %PC, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = add i32 %1237, -1
  %1239 = icmp eq i32 %1237, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %14, align 1, !tbaa !2432
  %1241 = and i32 %1238, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241) #8
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %21, align 1, !tbaa !2446
  %1246 = xor i32 %1237, %1238
  %1247 = lshr i32 %1246, 4
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  store i8 %1249, i8* %27, align 1, !tbaa !2447
  %1250 = icmp eq i32 %1238, 0
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %30, align 1, !tbaa !2448
  %1252 = lshr i32 %1238, 31
  %1253 = trunc i32 %1252 to i8
  store i8 %1253, i8* %33, align 1, !tbaa !2449
  %1254 = lshr i32 %1237, 31
  %1255 = xor i32 %1252, %1254
  %1256 = add nuw nsw i32 %1255, %1254
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %39, align 1, !tbaa !2450
  %1259 = icmp ne i8 %1253, 0
  %1260 = xor i1 %1259, %1257
  %.demorgan104 = or i1 %1250, %1260
  %.v105 = select i1 %.demorgan104, i64 10, i64 129
  %1261 = add i64 %1232, %.v105
  store i64 %1261, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan104, label %block_400f06, label %block_400f7d

block_400edf:                                     ; preds = %block_400e5e
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 32) to i32*), align 16
  store i32 128, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 32) to i32*), align 16
  %1262 = add i64 %2696, 29
  store i64 %1262, i64* %PC, align 8
  store i32 0, i32* %2682, align 4
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_400efc

block_4010f8:                                     ; preds = %block_4010f1, %block_401102
  %1263 = phi i64 [ %.pre47, %block_4010f1 ], [ %2373, %block_401102 ]
  %1264 = load i64, i64* %RBP, align 8
  %1265 = add i64 %1264, -12
  %1266 = add i64 %1263, 4
  store i64 %1266, i64* %PC, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = add i32 %1268, -1
  %1270 = icmp eq i32 %1268, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %14, align 1, !tbaa !2432
  %1272 = and i32 %1269, 255
  %1273 = tail call i32 @llvm.ctpop.i32(i32 %1272) #8
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %21, align 1, !tbaa !2446
  %1277 = xor i32 %1268, %1269
  %1278 = lshr i32 %1277, 4
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  store i8 %1280, i8* %27, align 1, !tbaa !2447
  %1281 = icmp eq i32 %1269, 0
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %30, align 1, !tbaa !2448
  %1283 = lshr i32 %1269, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %33, align 1, !tbaa !2449
  %1285 = lshr i32 %1268, 31
  %1286 = xor i32 %1283, %1285
  %1287 = add nuw nsw i32 %1286, %1285
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %39, align 1, !tbaa !2450
  %1290 = icmp ne i8 %1284, 0
  %1291 = xor i1 %1290, %1288
  %.demorgan123 = or i1 %1281, %1291
  %.v124 = select i1 %.demorgan123, i64 10, i64 57
  %1292 = add i64 %1263, %.v124
  store i64 %1292, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan123, label %block_401102, label %block_401131

block_400978:                                     ; preds = %block_40096e
  %1293 = add i64 %1180, -8
  %1294 = add i64 %1208, 7
  store i64 %1294, i64* %PC, align 8
  %1295 = inttoptr i64 %1293 to i32*
  store i32 0, i32* %1295, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_40097f

block_400cf2:                                     ; preds = %block_400c95
  %1296 = add i64 %2059, -4
  %1297 = add i64 %2087, 8
  store i64 %1297, i64* %PC, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = add i32 %1299, 1
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RAX, align 8, !tbaa !2428
  %1302 = icmp eq i32 %1299, -1
  %1303 = icmp eq i32 %1300, 0
  %1304 = or i1 %1302, %1303
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1, !tbaa !2432
  %1306 = and i32 %1300, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306) #8
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1, !tbaa !2446
  %1311 = xor i32 %1299, %1300
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %27, align 1, !tbaa !2447
  %1315 = icmp eq i32 %1300, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %30, align 1, !tbaa !2448
  %1317 = lshr i32 %1300, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %33, align 1, !tbaa !2449
  %1319 = lshr i32 %1299, 31
  %1320 = xor i32 %1317, %1319
  %1321 = add nuw nsw i32 %1320, %1317
  %1322 = icmp eq i32 %1321, 2
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %39, align 1, !tbaa !2450
  %1324 = add i64 %2087, 14
  store i64 %1324, i64* %PC, align 8
  store i32 %1300, i32* %1298, align 4
  %1325 = load i64, i64* %PC, align 8
  %1326 = add i64 %1325, -124
  store i64 %1326, i64* %43, align 8, !tbaa !2428
  br label %block_400c84

block_4008ee:                                     ; preds = %block_400891
  %1327 = add i64 %2965, -4
  %1328 = add i64 %2993, 8
  store i64 %1328, i64* %PC, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = add i32 %1330, 1
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RAX, align 8, !tbaa !2428
  %1333 = icmp eq i32 %1330, -1
  %1334 = icmp eq i32 %1331, 0
  %1335 = or i1 %1333, %1334
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %14, align 1, !tbaa !2432
  %1337 = and i32 %1331, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337) #8
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %21, align 1, !tbaa !2446
  %1342 = xor i32 %1330, %1331
  %1343 = lshr i32 %1342, 4
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %27, align 1, !tbaa !2447
  %1346 = icmp eq i32 %1331, 0
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %30, align 1, !tbaa !2448
  %1348 = lshr i32 %1331, 31
  %1349 = trunc i32 %1348 to i8
  store i8 %1349, i8* %33, align 1, !tbaa !2449
  %1350 = lshr i32 %1330, 31
  %1351 = xor i32 %1348, %1350
  %1352 = add nuw nsw i32 %1351, %1348
  %1353 = icmp eq i32 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %39, align 1, !tbaa !2450
  %1355 = add i64 %2993, 14
  store i64 %1355, i64* %PC, align 8
  store i32 %1331, i32* %1329, align 4
  %1356 = load i64, i64* %PC, align 8
  %1357 = add i64 %1356, -124
  store i64 %1357, i64* %43, align 8, !tbaa !2428
  br label %block_400880

block_401227:                                     ; preds = %block_401216
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 41), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1358 = add i64 %2207, -3639
  %1359 = add i64 %2207, 17
  %1360 = load i64, i64* %6, align 8, !tbaa !2428
  %1361 = add i64 %1360, -8
  %1362 = inttoptr i64 %1361 to i64*
  store i64 %1359, i64* %1362, align 8
  store i64 %1361, i64* %6, align 8, !tbaa !2428
  store i64 %1358, i64* %43, align 8, !tbaa !2428
  %1363 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %202)
  %1364 = load i64, i64* %RBP, align 8
  %1365 = add i64 %1364, -28
  %1366 = load i32, i32* %EAX, align 4
  %1367 = load i64, i64* %PC, align 8
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1365 to i32*
  store i32 %1366, i32* %1369, align 4
  %.pre50 = load i64, i64* %PC, align 8
  br label %block_40123b

block_401144:                                     ; preds = %block_4010e7
  %1370 = add i64 %3417, -4
  %1371 = add i64 %3445, 8
  store i64 %1371, i64* %PC, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = add i32 %1373, 1
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RAX, align 8, !tbaa !2428
  %1376 = icmp eq i32 %1373, -1
  %1377 = icmp eq i32 %1374, 0
  %1378 = or i1 %1376, %1377
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %14, align 1, !tbaa !2432
  %1380 = and i32 %1374, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380) #8
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %21, align 1, !tbaa !2446
  %1385 = xor i32 %1373, %1374
  %1386 = lshr i32 %1385, 4
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  store i8 %1388, i8* %27, align 1, !tbaa !2447
  %1389 = icmp eq i32 %1374, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %30, align 1, !tbaa !2448
  %1391 = lshr i32 %1374, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %33, align 1, !tbaa !2449
  %1393 = lshr i32 %1373, 31
  %1394 = xor i32 %1391, %1393
  %1395 = add nuw nsw i32 %1394, %1391
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %39, align 1, !tbaa !2450
  %1398 = add i64 %3445, 14
  store i64 %1398, i64* %PC, align 8
  store i32 %1374, i32* %1372, align 4
  %1399 = load i64, i64* %PC, align 8
  %1400 = add i64 %1399, -124
  store i64 %1400, i64* %43, align 8, !tbaa !2428
  br label %block_4010d6

block_400fab:                                     ; preds = %block_400fa4, %block_400ff5
  %1401 = phi i64 [ %.pre40, %block_400fa4 ], [ %107, %block_400ff5 ]
  %1402 = load i64, i64* %RBP, align 8
  %1403 = add i64 %1402, -8
  %1404 = add i64 %1401, 4
  store i64 %1404, i64* %PC, align 8
  %1405 = inttoptr i64 %1403 to i32*
  %1406 = load i32, i32* %1405, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1407 = and i32 %1406, 255
  %1408 = tail call i32 @llvm.ctpop.i32(i32 %1407) #8
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  store i8 %1411, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %1412 = icmp eq i32 %1406, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %30, align 1, !tbaa !2448
  %1414 = lshr i32 %1406, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %1416 = xor i1 %1412, true
  %1417 = icmp eq i8 %1415, 0
  %1418 = and i1 %1417, %1416
  %.v111 = select i1 %1418, i64 93, i64 10
  %1419 = add i64 %1401, %.v111
  store i64 %1419, i64* %43, align 8, !tbaa !2428
  br i1 %1418, label %block_401008, label %block_400fb5

block_400cdf:                                     ; preds = %block_400ca6
  %1420 = add i64 %2120, -8
  %1421 = add i64 %2148, 8
  store i64 %1421, i64* %PC, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = add i32 %1423, 1
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RAX, align 8, !tbaa !2428
  %1426 = icmp eq i32 %1423, -1
  %1427 = icmp eq i32 %1424, 0
  %1428 = or i1 %1426, %1427
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %14, align 1, !tbaa !2432
  %1430 = and i32 %1424, 255
  %1431 = tail call i32 @llvm.ctpop.i32(i32 %1430) #8
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  %1434 = xor i8 %1433, 1
  store i8 %1434, i8* %21, align 1, !tbaa !2446
  %1435 = xor i32 %1423, %1424
  %1436 = lshr i32 %1435, 4
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  store i8 %1438, i8* %27, align 1, !tbaa !2447
  %1439 = icmp eq i32 %1424, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %30, align 1, !tbaa !2448
  %1441 = lshr i32 %1424, 31
  %1442 = trunc i32 %1441 to i8
  store i8 %1442, i8* %33, align 1, !tbaa !2449
  %1443 = lshr i32 %1423, 31
  %1444 = xor i32 %1441, %1443
  %1445 = add nuw nsw i32 %1444, %1441
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %39, align 1, !tbaa !2450
  %1448 = add i64 %2148, 14
  store i64 %1448, i64* %PC, align 8
  store i32 %1424, i32* %1422, align 4
  %1449 = load i64, i64* %PC, align 8
  %1450 = add i64 %1449, -88
  store i64 %1450, i64* %43, align 8, !tbaa !2428
  br label %block_400c95

block_400dc0:                                     ; preds = %block_400e2e, %block_400da3
  %1451 = phi i64 [ %1155, %block_400e2e ], [ %.pre30, %block_400da3 ]
  %1452 = load i64, i64* %RBP, align 8
  %1453 = add i64 %1452, -4
  %1454 = add i64 %1451, 4
  store i64 %1454, i64* %PC, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1457 = and i32 %1456, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457) #8
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %1462 = icmp eq i32 %1456, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %30, align 1, !tbaa !2448
  %1464 = lshr i32 %1456, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %1466 = xor i1 %1462, true
  %1467 = icmp eq i8 %1465, 0
  %1468 = and i1 %1467, %1466
  %.v96 = select i1 %1468, i64 129, i64 10
  %1469 = add i64 %1451, %.v96
  store i64 %1469, i64* %43, align 8, !tbaa !2428
  br i1 %1468, label %block_400e41, label %block_400dca

block_4008db:                                     ; preds = %block_4008a2
  %1470 = add i64 %2821, -8
  %1471 = add i64 %2849, 8
  store i64 %1471, i64* %PC, align 8
  %1472 = inttoptr i64 %1470 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = add i32 %1473, 1
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RAX, align 8, !tbaa !2428
  %1476 = icmp eq i32 %1473, -1
  %1477 = icmp eq i32 %1474, 0
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %14, align 1, !tbaa !2432
  %1480 = and i32 %1474, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480) #8
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %21, align 1, !tbaa !2446
  %1485 = xor i32 %1473, %1474
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  store i8 %1488, i8* %27, align 1, !tbaa !2447
  %1489 = icmp eq i32 %1474, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %30, align 1, !tbaa !2448
  %1491 = lshr i32 %1474, 31
  %1492 = trunc i32 %1491 to i8
  store i8 %1492, i8* %33, align 1, !tbaa !2449
  %1493 = lshr i32 %1473, 31
  %1494 = xor i32 %1491, %1493
  %1495 = add nuw nsw i32 %1494, %1491
  %1496 = icmp eq i32 %1495, 2
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %39, align 1, !tbaa !2450
  %1498 = add i64 %2849, 14
  store i64 %1498, i64* %PC, align 8
  store i32 %1474, i32* %1472, align 4
  %1499 = load i64, i64* %PC, align 8
  %1500 = add i64 %1499, -88
  store i64 %1500, i64* %43, align 8, !tbaa !2428
  br label %block_400891

block_400879:                                     ; preds = %block_40084f
  %1501 = add i64 %2854, -4
  %1502 = add i64 %2883, 7
  store i64 %1502, i64* %PC, align 8
  %1503 = inttoptr i64 %1501 to i32*
  store i32 1, i32* %1503, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400880

block_4011d4:                                     ; preds = %block_401157
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1504 = add i64 %3085, -3556
  %1505 = add i64 %3085, 17
  %1506 = load i64, i64* %6, align 8, !tbaa !2428
  %1507 = add i64 %1506, -8
  %1508 = inttoptr i64 %1507 to i64*
  store i64 %1505, i64* %1508, align 8
  store i64 %1507, i64* %6, align 8, !tbaa !2428
  store i64 %1504, i64* %43, align 8, !tbaa !2428
  %1509 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3073)
  %1510 = load i64, i64* %RBP, align 8
  %1511 = add i64 %1510, -20
  %1512 = load i32, i32* %EAX, align 4
  %1513 = load i64, i64* %PC, align 8
  %1514 = add i64 %1513, 3
  store i64 %1514, i64* %PC, align 8
  %1515 = inttoptr i64 %1511 to i32*
  store i32 %1512, i32* %1515, align 4
  %.pre48 = load i64, i64* %PC, align 8
  %.pre49 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  br label %block_4011e8

block_400ad6:                                     ; preds = %block_400acc
  %1516 = add i64 %2563, -4
  %1517 = add i64 %2591, 3
  store i64 %1517, i64* %PC, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = zext i32 %1519 to i64
  store i64 %1520, i64* %RAX, align 8, !tbaa !2428
  %1521 = add i64 %2563, -8
  %1522 = add i64 %2591, 6
  store i64 %1522, i64* %PC, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RCX, align 8, !tbaa !2428
  %1526 = add i64 %2591, 9
  store i64 %1526, i64* %PC, align 8
  %1527 = load i32, i32* %2566, align 4
  %1528 = shl i32 %1527, 3
  %1529 = zext i32 %1528 to i64
  store i64 %1529, i64* %RDX, align 8, !tbaa !2428
  %1530 = add i32 %1528, %1524
  %1531 = shl i32 %1530, 3
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RCX, align 8, !tbaa !2428
  %1533 = lshr i32 %1530, 28
  %1534 = and i32 %1533, 1
  %1535 = load i64, i64* %RAX, align 8
  %1536 = trunc i64 %1535 to i32
  %1537 = add i32 %1531, %1536
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RAX, align 8, !tbaa !2428
  %1539 = icmp ult i32 %1537, %1536
  %1540 = icmp ult i32 %1537, %1531
  %1541 = or i1 %1539, %1540
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %14, align 1, !tbaa !2432
  %1543 = and i32 %1537, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543) #8
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1, !tbaa !2446
  %1548 = xor i64 %1532, %1535
  %1549 = trunc i64 %1548 to i32
  %1550 = xor i32 %1549, %1537
  %1551 = lshr i32 %1550, 4
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  store i8 %1553, i8* %27, align 1, !tbaa !2447
  %1554 = icmp eq i32 %1537, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %30, align 1, !tbaa !2448
  %1556 = lshr i32 %1537, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %33, align 1, !tbaa !2449
  %1558 = lshr i32 %1536, 31
  %1559 = xor i32 %1556, %1558
  %1560 = xor i32 %1556, %1534
  %1561 = add nuw nsw i32 %1559, %1560
  %1562 = icmp eq i32 %1561, 2
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %39, align 1, !tbaa !2450
  %1564 = sext i32 %1537 to i64
  store i64 %1564, i64* %RSI, align 8, !tbaa !2428
  %1565 = shl nsw i64 %1564, 2
  %1566 = add i64 %1565, add (i64 ptrtoint (%p_type* @p to i64), i64 4096)
  %1567 = add i64 %2591, 33
  store i64 %1567, i64* %PC, align 8
  %1568 = inttoptr i64 %1566 to i32*
  store i32 1, i32* %1568, align 4
  %1569 = load i64, i64* %RBP, align 8
  %1570 = add i64 %1569, -12
  %1571 = load i64, i64* %PC, align 8
  %1572 = add i64 %1571, 3
  store i64 %1572, i64* %PC, align 8
  %1573 = inttoptr i64 %1570 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = add i32 %1574, 1
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX, align 8, !tbaa !2428
  %1577 = icmp eq i32 %1574, -1
  %1578 = icmp eq i32 %1575, 0
  %1579 = or i1 %1577, %1578
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %14, align 1, !tbaa !2432
  %1581 = and i32 %1575, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581) #8
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %21, align 1, !tbaa !2446
  %1586 = xor i32 %1574, %1575
  %1587 = lshr i32 %1586, 4
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %27, align 1, !tbaa !2447
  %1590 = icmp eq i32 %1575, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %30, align 1, !tbaa !2448
  %1592 = lshr i32 %1575, 31
  %1593 = trunc i32 %1592 to i8
  store i8 %1593, i8* %33, align 1, !tbaa !2449
  %1594 = lshr i32 %1574, 31
  %1595 = xor i32 %1592, %1594
  %1596 = add nuw nsw i32 %1595, %1592
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %39, align 1, !tbaa !2450
  %1599 = add i64 %1571, 9
  store i64 %1599, i64* %PC, align 8
  store i32 %1575, i32* %1573, align 4
  %1600 = load i64, i64* %PC, align 8
  %1601 = add i64 %1600, -52
  store i64 %1601, i64* %43, align 8, !tbaa !2428
  br label %block_400acc

block_400b52:                                     ; preds = %block_400b48
  %1602 = add i64 %891, -8
  %1603 = add i64 %919, 7
  store i64 %1603, i64* %PC, align 8
  %1604 = inttoptr i64 %1602 to i32*
  store i32 0, i32* %1604, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400b59

block_400ecc:                                     ; preds = %block_400e6f
  %1605 = add i64 %2459, -4
  %1606 = add i64 %2476, 8
  store i64 %1606, i64* %PC, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = add i32 %1608, 1
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RAX, align 8, !tbaa !2428
  %1611 = icmp eq i32 %1608, -1
  %1612 = icmp eq i32 %1609, 0
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %14, align 1, !tbaa !2432
  %1615 = and i32 %1609, 255
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615) #8
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %21, align 1, !tbaa !2446
  %1620 = xor i32 %1608, %1609
  %1621 = lshr i32 %1620, 4
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %27, align 1, !tbaa !2447
  %1624 = icmp eq i32 %1609, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %30, align 1, !tbaa !2448
  %1626 = lshr i32 %1609, 31
  %1627 = trunc i32 %1626 to i8
  store i8 %1627, i8* %33, align 1, !tbaa !2449
  %1628 = lshr i32 %1608, 31
  %1629 = xor i32 %1626, %1628
  %1630 = add nuw nsw i32 %1629, %1626
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %39, align 1, !tbaa !2450
  %1633 = add i64 %2476, 14
  store i64 %1633, i64* %PC, align 8
  store i32 %1609, i32* %1607, align 4
  %1634 = load i64, i64* %PC, align 8
  %1635 = add i64 %1634, -124
  store i64 %1635, i64* %43, align 8, !tbaa !2428
  br label %block_400e5e

block_400926:                                     ; preds = %block_400919
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %1636 = add i64 %2258, -4
  %1637 = add i64 %2287, 14
  store i64 %1637, i64* %PC, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sext i32 %1639 to i64
  %1641 = shl nsw i64 %1640, 11
  store i64 %1641, i64* %RCX, align 8, !tbaa !2428
  %1642 = lshr i64 %1640, 52
  %1643 = and i64 %1642, 1
  %1644 = add i64 %1641, ptrtoint (%p_type* @p to i64)
  store i64 %1644, i64* %RAX, align 8, !tbaa !2428
  %1645 = icmp ult i64 %1644, ptrtoint (%p_type* @p to i64)
  %1646 = icmp ult i64 %1644, %1641
  %1647 = or i1 %1645, %1646
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %14, align 1, !tbaa !2432
  %1649 = trunc i64 %1644 to i32
  %1650 = and i32 %1649, 240
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650) #8
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1, !tbaa !2446
  %1655 = xor i64 %1644, ptrtoint (%p_type* @p to i64)
  %1656 = lshr exact i64 %1655, 4
  %1657 = trunc i64 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %27, align 1, !tbaa !2447
  %1659 = icmp eq i64 %1644, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %30, align 1, !tbaa !2448
  %1661 = lshr i64 %1644, 63
  %1662 = trunc i64 %1661 to i8
  store i8 %1662, i8* %33, align 1, !tbaa !2449
  %1663 = xor i64 %1661, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %1664 = xor i64 %1661, %1643
  %1665 = add nuw nsw i64 %1663, %1664
  %1666 = icmp eq i64 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %39, align 1, !tbaa !2450
  %1668 = add i64 %2287, 25
  store i64 %1668, i64* %PC, align 8
  %1669 = load i32, i32* %2261, align 4
  %1670 = sext i32 %1669 to i64
  store i64 %1670, i64* %RCX, align 8, !tbaa !2428
  %1671 = shl nsw i64 %1670, 2
  %1672 = add i64 %1671, %1644
  %1673 = add i64 %2287, 32
  store i64 %1673, i64* %PC, align 8
  %1674 = inttoptr i64 %1672 to i32*
  store i32 0, i32* %1674, align 4
  %1675 = load i64, i64* %RBP, align 8
  %1676 = add i64 %1675, -16
  %1677 = load i64, i64* %PC, align 8
  %1678 = add i64 %1677, 3
  store i64 %1678, i64* %PC, align 8
  %1679 = inttoptr i64 %1676 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = add i32 %1680, 1
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX, align 8, !tbaa !2428
  %1683 = icmp eq i32 %1680, -1
  %1684 = icmp eq i32 %1681, 0
  %1685 = or i1 %1683, %1684
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1, !tbaa !2432
  %1687 = and i32 %1681, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687) #8
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1, !tbaa !2446
  %1692 = xor i32 %1680, %1681
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %27, align 1, !tbaa !2447
  %1696 = icmp eq i32 %1681, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %30, align 1, !tbaa !2448
  %1698 = lshr i32 %1681, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %33, align 1, !tbaa !2449
  %1700 = lshr i32 %1680, 31
  %1701 = xor i32 %1698, %1700
  %1702 = add nuw nsw i32 %1701, %1698
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %39, align 1, !tbaa !2450
  %1705 = add i64 %1677, 9
  store i64 %1705, i64* %PC, align 8
  store i32 %1681, i32* %1679, align 4
  %1706 = load i64, i64* %PC, align 8
  %1707 = add i64 %1706, -54
  store i64 %1707, i64* %43, align 8, !tbaa !2428
  br label %block_400919

block_400eb9:                                     ; preds = %block_400e80
  %1708 = add i64 %2478, -8
  %1709 = add i64 %2506, 8
  store i64 %1709, i64* %PC, align 8
  %1710 = inttoptr i64 %1708 to i32*
  %1711 = load i32, i32* %1710, align 4
  %1712 = add i32 %1711, 1
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RAX, align 8, !tbaa !2428
  %1714 = icmp eq i32 %1711, -1
  %1715 = icmp eq i32 %1712, 0
  %1716 = or i1 %1714, %1715
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %14, align 1, !tbaa !2432
  %1718 = and i32 %1712, 255
  %1719 = tail call i32 @llvm.ctpop.i32(i32 %1718) #8
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = xor i8 %1721, 1
  store i8 %1722, i8* %21, align 1, !tbaa !2446
  %1723 = xor i32 %1711, %1712
  %1724 = lshr i32 %1723, 4
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  store i8 %1726, i8* %27, align 1, !tbaa !2447
  %1727 = icmp eq i32 %1712, 0
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %30, align 1, !tbaa !2448
  %1729 = lshr i32 %1712, 31
  %1730 = trunc i32 %1729 to i8
  store i8 %1730, i8* %33, align 1, !tbaa !2449
  %1731 = lshr i32 %1711, 31
  %1732 = xor i32 %1729, %1731
  %1733 = add nuw nsw i32 %1732, %1729
  %1734 = icmp eq i32 %1733, 2
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %39, align 1, !tbaa !2450
  %1736 = add i64 %2506, 14
  store i64 %1736, i64* %PC, align 8
  store i32 %1712, i32* %1710, align 4
  %1737 = load i64, i64* %PC, align 8
  %1738 = add i64 %1737, -88
  store i64 %1738, i64* %43, align 8, !tbaa !2428
  br label %block_400e6f

block_400de2:                                     ; preds = %block_400ddb, %block_400dec
  %1739 = phi i64 [ %.pre32, %block_400ddb ], [ %193, %block_400dec ]
  %1740 = load i64, i64* %RBP, align 8
  %1741 = add i64 %1740, -12
  %1742 = add i64 %1739, 4
  store i64 %1742, i64* %PC, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %1745 = and i32 %1744, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745) #8
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %1750 = icmp eq i32 %1744, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %30, align 1, !tbaa !2448
  %1752 = lshr i32 %1744, 31
  %1753 = trunc i32 %1752 to i8
  store i8 %1753, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %1754 = xor i1 %1750, true
  %1755 = icmp eq i8 %1753, 0
  %1756 = and i1 %1755, %1754
  %.v99 = select i1 %1756, i64 57, i64 10
  %1757 = add i64 %1739, %.v99
  store i64 %1757, i64* %43, align 8, !tbaa !2428
  br i1 %1756, label %block_400e1b, label %block_400dec

block_400bc9:                                     ; preds = %block_400b48
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 12) to i32*), align 4
  store i32 25, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 12) to i32*), align 4
  %1758 = add i64 %919, 29
  store i64 %1758, i64* %PC, align 8
  store i32 0, i32* %894, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400be6

block_400cb0:                                     ; preds = %block_400ca6
  %1759 = add i64 %2120, -4
  %1760 = add i64 %2148, 3
  store i64 %1760, i64* %PC, align 8
  %1761 = inttoptr i64 %1759 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RAX, align 8, !tbaa !2428
  %1764 = add i64 %2120, -8
  %1765 = add i64 %2148, 6
  store i64 %1765, i64* %PC, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = zext i32 %1767 to i64
  store i64 %1768, i64* %RCX, align 8, !tbaa !2428
  %1769 = add i64 %2148, 9
  store i64 %1769, i64* %PC, align 8
  %1770 = load i32, i32* %2123, align 4
  %1771 = shl i32 %1770, 3
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RDX, align 8, !tbaa !2428
  %1773 = add i32 %1771, %1767
  %1774 = shl i32 %1773, 3
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RCX, align 8, !tbaa !2428
  %1776 = lshr i32 %1773, 28
  %1777 = and i32 %1776, 1
  %1778 = load i64, i64* %RAX, align 8
  %1779 = trunc i64 %1778 to i32
  %1780 = add i32 %1774, %1779
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RAX, align 8, !tbaa !2428
  %1782 = icmp ult i32 %1780, %1779
  %1783 = icmp ult i32 %1780, %1774
  %1784 = or i1 %1782, %1783
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %14, align 1, !tbaa !2432
  %1786 = and i32 %1780, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786) #8
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %21, align 1, !tbaa !2446
  %1791 = xor i64 %1775, %1778
  %1792 = trunc i64 %1791 to i32
  %1793 = xor i32 %1792, %1780
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  store i8 %1796, i8* %27, align 1, !tbaa !2447
  %1797 = icmp eq i32 %1780, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %30, align 1, !tbaa !2448
  %1799 = lshr i32 %1780, 31
  %1800 = trunc i32 %1799 to i8
  store i8 %1800, i8* %33, align 1, !tbaa !2449
  %1801 = lshr i32 %1779, 31
  %1802 = xor i32 %1799, %1801
  %1803 = xor i32 %1799, %1777
  %1804 = add nuw nsw i32 %1802, %1803
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %39, align 1, !tbaa !2450
  %1807 = sext i32 %1780 to i64
  store i64 %1807, i64* %RSI, align 8, !tbaa !2428
  %1808 = shl nsw i64 %1807, 2
  %1809 = add i64 %1808, add (i64 ptrtoint (%p_type* @p to i64), i64 10240)
  %1810 = add i64 %2148, 33
  store i64 %1810, i64* %PC, align 8
  %1811 = inttoptr i64 %1809 to i32*
  store i32 1, i32* %1811, align 4
  %1812 = load i64, i64* %RBP, align 8
  %1813 = add i64 %1812, -12
  %1814 = load i64, i64* %PC, align 8
  %1815 = add i64 %1814, 3
  store i64 %1815, i64* %PC, align 8
  %1816 = inttoptr i64 %1813 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = add i32 %1817, 1
  %1819 = zext i32 %1818 to i64
  store i64 %1819, i64* %RAX, align 8, !tbaa !2428
  %1820 = icmp eq i32 %1817, -1
  %1821 = icmp eq i32 %1818, 0
  %1822 = or i1 %1820, %1821
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %14, align 1, !tbaa !2432
  %1824 = and i32 %1818, 255
  %1825 = tail call i32 @llvm.ctpop.i32(i32 %1824) #8
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  store i8 %1828, i8* %21, align 1, !tbaa !2446
  %1829 = xor i32 %1817, %1818
  %1830 = lshr i32 %1829, 4
  %1831 = trunc i32 %1830 to i8
  %1832 = and i8 %1831, 1
  store i8 %1832, i8* %27, align 1, !tbaa !2447
  %1833 = icmp eq i32 %1818, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %30, align 1, !tbaa !2448
  %1835 = lshr i32 %1818, 31
  %1836 = trunc i32 %1835 to i8
  store i8 %1836, i8* %33, align 1, !tbaa !2449
  %1837 = lshr i32 %1817, 31
  %1838 = xor i32 %1835, %1837
  %1839 = add nuw nsw i32 %1838, %1835
  %1840 = icmp eq i32 %1839, 2
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %39, align 1, !tbaa !2450
  %1842 = add i64 %1814, 9
  store i64 %1842, i64* %PC, align 8
  store i32 %1818, i32* %1816, align 4
  %1843 = load i64, i64* %PC, align 8
  %1844 = add i64 %1843, -52
  store i64 %1844, i64* %43, align 8, !tbaa !2428
  br label %block_400ca6

block_400ac5:                                     ; preds = %block_400abb
  %1845 = add i64 %2791, -12
  %1846 = add i64 %2819, 7
  store i64 %1846, i64* %PC, align 8
  %1847 = inttoptr i64 %1845 to i32*
  store i32 0, i32* %1847, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_400acc

block_4008ac:                                     ; preds = %block_4008a2
  %1848 = add i64 %2821, -4
  %1849 = add i64 %2849, 3
  store i64 %1849, i64* %PC, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RAX, align 8, !tbaa !2428
  %1853 = add i64 %2821, -8
  %1854 = add i64 %2849, 6
  store i64 %1854, i64* %PC, align 8
  %1855 = inttoptr i64 %1853 to i32*
  %1856 = load i32, i32* %1855, align 4
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RCX, align 8, !tbaa !2428
  %1858 = add i64 %2849, 9
  store i64 %1858, i64* %PC, align 8
  %1859 = load i32, i32* %2824, align 4
  %1860 = shl i32 %1859, 3
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RDX, align 8, !tbaa !2428
  %1862 = add i32 %1860, %1856
  %1863 = shl i32 %1862, 3
  %1864 = zext i32 %1863 to i64
  store i64 %1864, i64* %RCX, align 8, !tbaa !2428
  %1865 = lshr i32 %1862, 28
  %1866 = and i32 %1865, 1
  %1867 = load i64, i64* %RAX, align 8
  %1868 = trunc i64 %1867 to i32
  %1869 = add i32 %1863, %1868
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX, align 8, !tbaa !2428
  %1871 = icmp ult i32 %1869, %1868
  %1872 = icmp ult i32 %1869, %1863
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1, !tbaa !2432
  %1875 = and i32 %1869, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875) #8
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %21, align 1, !tbaa !2446
  %1880 = xor i64 %1864, %1867
  %1881 = trunc i64 %1880 to i32
  %1882 = xor i32 %1881, %1869
  %1883 = lshr i32 %1882, 4
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %27, align 1, !tbaa !2447
  %1886 = icmp eq i32 %1869, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %30, align 1, !tbaa !2448
  %1888 = lshr i32 %1869, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %33, align 1, !tbaa !2449
  %1890 = lshr i32 %1868, 31
  %1891 = xor i32 %1888, %1890
  %1892 = xor i32 %1888, %1866
  %1893 = add nuw nsw i32 %1891, %1892
  %1894 = icmp eq i32 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %39, align 1, !tbaa !2450
  %1896 = sext i32 %1869 to i64
  store i64 %1896, i64* %RSI, align 8, !tbaa !2428
  %1897 = shl nsw i64 %1896, 2
  %1898 = add i64 %1897, ptrtoint (%puzzl_type* @puzzl to i64)
  %1899 = add i64 %2849, 33
  store i64 %1899, i64* %PC, align 8
  %1900 = inttoptr i64 %1898 to i32*
  store i32 0, i32* %1900, align 4
  %1901 = load i64, i64* %RBP, align 8
  %1902 = add i64 %1901, -12
  %1903 = load i64, i64* %PC, align 8
  %1904 = add i64 %1903, 3
  store i64 %1904, i64* %PC, align 8
  %1905 = inttoptr i64 %1902 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = add i32 %1906, 1
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RAX, align 8, !tbaa !2428
  %1909 = icmp eq i32 %1906, -1
  %1910 = icmp eq i32 %1907, 0
  %1911 = or i1 %1909, %1910
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1, !tbaa !2432
  %1913 = and i32 %1907, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913) #8
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1, !tbaa !2446
  %1918 = xor i32 %1906, %1907
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1, !tbaa !2447
  %1922 = icmp eq i32 %1907, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1, !tbaa !2448
  %1924 = lshr i32 %1907, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1, !tbaa !2449
  %1926 = lshr i32 %1906, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1924
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1, !tbaa !2450
  %1931 = add i64 %1903, 9
  store i64 %1931, i64* %PC, align 8
  store i32 %1907, i32* %1905, align 4
  %1932 = load i64, i64* %PC, align 8
  %1933 = add i64 %1932, -52
  store i64 %1933, i64* %43, align 8, !tbaa !2428
  br label %block_4008a2

block_400d2c:                                     ; preds = %block_400d22
  %1934 = add i64 %1063, -8
  %1935 = add i64 %1091, 7
  store i64 %1935, i64* %PC, align 8
  %1936 = inttoptr i64 %1934 to i32*
  store i32 0, i32* %1936, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400d33

block_40101b:                                     ; preds = %block_400f9a
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 40) to i32*), align 8
  store i32 65, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 40) to i32*), align 8
  %1937 = add i64 %415, 29
  store i64 %1937, i64* %PC, align 8
  store i32 0, i32* %390, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_401038

block_400c9f:                                     ; preds = %block_400c95
  %1938 = add i64 %2059, -12
  %1939 = add i64 %2087, 7
  store i64 %1939, i64* %PC, align 8
  %1940 = inttoptr i64 %1938 to i32*
  store i32 0, i32* %1940, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400ca6

block_40099a:                                     ; preds = %block_400990
  %1941 = add i64 %958, -4
  %1942 = add i64 %975, 3
  store i64 %1942, i64* %PC, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX, align 8, !tbaa !2428
  %1946 = add i64 %958, -8
  %1947 = add i64 %975, 6
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = zext i32 %1949 to i64
  store i64 %1950, i64* %RCX, align 8, !tbaa !2428
  %1951 = add i64 %975, 9
  store i64 %1951, i64* %PC, align 8
  %1952 = load i32, i32* %961, align 4
  %1953 = shl i32 %1952, 3
  %1954 = zext i32 %1953 to i64
  store i64 %1954, i64* %RDX, align 8, !tbaa !2428
  %1955 = add i32 %1953, %1949
  %1956 = shl i32 %1955, 3
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %RCX, align 8, !tbaa !2428
  %1958 = lshr i32 %1955, 28
  %1959 = and i32 %1958, 1
  %1960 = load i64, i64* %RAX, align 8
  %1961 = trunc i64 %1960 to i32
  %1962 = add i32 %1956, %1961
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RAX, align 8, !tbaa !2428
  %1964 = icmp ult i32 %1962, %1961
  %1965 = icmp ult i32 %1962, %1956
  %1966 = or i1 %1964, %1965
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %14, align 1, !tbaa !2432
  %1968 = and i32 %1962, 255
  %1969 = tail call i32 @llvm.ctpop.i32(i32 %1968) #8
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  store i8 %1972, i8* %21, align 1, !tbaa !2446
  %1973 = xor i64 %1957, %1960
  %1974 = trunc i64 %1973 to i32
  %1975 = xor i32 %1974, %1962
  %1976 = lshr i32 %1975, 4
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  store i8 %1978, i8* %27, align 1, !tbaa !2447
  %1979 = icmp eq i32 %1962, 0
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %30, align 1, !tbaa !2448
  %1981 = lshr i32 %1962, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %33, align 1, !tbaa !2449
  %1983 = lshr i32 %1961, 31
  %1984 = xor i32 %1981, %1983
  %1985 = xor i32 %1981, %1959
  %1986 = add nuw nsw i32 %1984, %1985
  %1987 = icmp eq i32 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %39, align 1, !tbaa !2450
  %1989 = sext i32 %1962 to i64
  store i64 %1989, i64* %RSI, align 8, !tbaa !2428
  %1990 = shl nsw i64 %1989, 2
  %1991 = add i64 %1990, ptrtoint (%p_type* @p to i64)
  %1992 = add i64 %975, 33
  store i64 %1992, i64* %PC, align 8
  %1993 = inttoptr i64 %1991 to i32*
  store i32 1, i32* %1993, align 4
  %1994 = load i64, i64* %RBP, align 8
  %1995 = add i64 %1994, -12
  %1996 = load i64, i64* %PC, align 8
  %1997 = add i64 %1996, 3
  store i64 %1997, i64* %PC, align 8
  %1998 = inttoptr i64 %1995 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = add i32 %1999, 1
  %2001 = zext i32 %2000 to i64
  store i64 %2001, i64* %RAX, align 8, !tbaa !2428
  %2002 = icmp eq i32 %1999, -1
  %2003 = icmp eq i32 %2000, 0
  %2004 = or i1 %2002, %2003
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %14, align 1, !tbaa !2432
  %2006 = and i32 %2000, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006) #8
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %21, align 1, !tbaa !2446
  %2011 = xor i32 %1999, %2000
  %2012 = lshr i32 %2011, 4
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %27, align 1, !tbaa !2447
  %2015 = icmp eq i32 %2000, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %30, align 1, !tbaa !2448
  %2017 = lshr i32 %2000, 31
  %2018 = trunc i32 %2017 to i8
  store i8 %2018, i8* %33, align 1, !tbaa !2449
  %2019 = lshr i32 %1999, 31
  %2020 = xor i32 %2017, %2019
  %2021 = add nuw nsw i32 %2020, %2017
  %2022 = icmp eq i32 %2021, 2
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %39, align 1, !tbaa !2450
  %2024 = add i64 %1996, 9
  store i64 %2024, i64* %PC, align 8
  store i32 %2000, i32* %1998, align 4
  %2025 = load i64, i64* %PC, align 8
  %2026 = add i64 %2025, -52
  store i64 %2026, i64* %43, align 8, !tbaa !2428
  br label %block_400990

block_4009c9:                                     ; preds = %block_400990
  %2027 = add i64 %958, -8
  %2028 = add i64 %975, 8
  store i64 %2028, i64* %PC, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = add i32 %2030, 1
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RAX, align 8, !tbaa !2428
  %2033 = icmp eq i32 %2030, -1
  %2034 = icmp eq i32 %2031, 0
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %14, align 1, !tbaa !2432
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037) #8
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %21, align 1, !tbaa !2446
  %2042 = xor i32 %2030, %2031
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %27, align 1, !tbaa !2447
  %2046 = icmp eq i32 %2031, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %30, align 1, !tbaa !2448
  %2048 = lshr i32 %2031, 31
  %2049 = trunc i32 %2048 to i8
  store i8 %2049, i8* %33, align 1, !tbaa !2449
  %2050 = lshr i32 %2030, 31
  %2051 = xor i32 %2048, %2050
  %2052 = add nuw nsw i32 %2051, %2048
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %39, align 1, !tbaa !2450
  %2055 = add i64 %975, 14
  store i64 %2055, i64* %PC, align 8
  store i32 %2031, i32* %2029, align 4
  %2056 = load i64, i64* %PC, align 8
  %2057 = add i64 %2056, -88
  store i64 %2057, i64* %43, align 8, !tbaa !2428
  br label %block_40097f

block_400c95:                                     ; preds = %block_400c8e, %block_400cdf
  %2058 = phi i64 [ %.pre25, %block_400c8e ], [ %1450, %block_400cdf ]
  %2059 = load i64, i64* %RBP, align 8
  %2060 = add i64 %2059, -8
  %2061 = add i64 %2058, 4
  store i64 %2061, i64* %PC, align 8
  %2062 = inttoptr i64 %2060 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = add i32 %2063, -1
  %2065 = icmp eq i32 %2063, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %14, align 1, !tbaa !2432
  %2067 = and i32 %2064, 255
  %2068 = tail call i32 @llvm.ctpop.i32(i32 %2067) #8
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = xor i8 %2070, 1
  store i8 %2071, i8* %21, align 1, !tbaa !2446
  %2072 = xor i32 %2063, %2064
  %2073 = lshr i32 %2072, 4
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  store i8 %2075, i8* %27, align 1, !tbaa !2447
  %2076 = icmp eq i32 %2064, 0
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %30, align 1, !tbaa !2448
  %2078 = lshr i32 %2064, 31
  %2079 = trunc i32 %2078 to i8
  store i8 %2079, i8* %33, align 1, !tbaa !2449
  %2080 = lshr i32 %2063, 31
  %2081 = xor i32 %2078, %2080
  %2082 = add nuw nsw i32 %2081, %2080
  %2083 = icmp eq i32 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %39, align 1, !tbaa !2450
  %2085 = icmp ne i8 %2079, 0
  %2086 = xor i1 %2085, %2083
  %.demorgan88 = or i1 %2076, %2086
  %.v89 = select i1 %.demorgan88, i64 10, i64 93
  %2087 = add i64 %2058, %.v89
  store i64 %2087, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan88, label %block_400c9f, label %block_400cf2

block_401093:                                     ; preds = %block_40105a
  %2088 = add i64 %2699, -8
  %2089 = add i64 %2727, 8
  store i64 %2089, i64* %PC, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = add i32 %2091, 1
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RAX, align 8, !tbaa !2428
  %2094 = icmp eq i32 %2091, -1
  %2095 = icmp eq i32 %2092, 0
  %2096 = or i1 %2094, %2095
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %14, align 1, !tbaa !2432
  %2098 = and i32 %2092, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098) #8
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %21, align 1, !tbaa !2446
  %2103 = xor i32 %2091, %2092
  %2104 = lshr i32 %2103, 4
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %27, align 1, !tbaa !2447
  %2107 = icmp eq i32 %2092, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %30, align 1, !tbaa !2448
  %2109 = lshr i32 %2092, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %33, align 1, !tbaa !2449
  %2111 = lshr i32 %2091, 31
  %2112 = xor i32 %2109, %2111
  %2113 = add nuw nsw i32 %2112, %2109
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %39, align 1, !tbaa !2450
  %2116 = add i64 %2727, 14
  store i64 %2116, i64* %PC, align 8
  store i32 %2092, i32* %2090, align 4
  %2117 = load i64, i64* %PC, align 8
  %2118 = add i64 %2117, -88
  store i64 %2118, i64* %43, align 8, !tbaa !2428
  br label %block_401049

block_400ca6:                                     ; preds = %block_400c9f, %block_400cb0
  %2119 = phi i64 [ %.pre26, %block_400c9f ], [ %1844, %block_400cb0 ]
  %2120 = load i64, i64* %RBP, align 8
  %2121 = add i64 %2120, -12
  %2122 = add i64 %2119, 4
  store i64 %2122, i64* %PC, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = add i32 %2124, -3
  %2126 = icmp ult i32 %2124, 3
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %14, align 1, !tbaa !2432
  %2128 = and i32 %2125, 255
  %2129 = tail call i32 @llvm.ctpop.i32(i32 %2128) #8
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  store i8 %2132, i8* %21, align 1, !tbaa !2446
  %2133 = xor i32 %2124, %2125
  %2134 = lshr i32 %2133, 4
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  store i8 %2136, i8* %27, align 1, !tbaa !2447
  %2137 = icmp eq i32 %2125, 0
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %30, align 1, !tbaa !2448
  %2139 = lshr i32 %2125, 31
  %2140 = trunc i32 %2139 to i8
  store i8 %2140, i8* %33, align 1, !tbaa !2449
  %2141 = lshr i32 %2124, 31
  %2142 = xor i32 %2139, %2141
  %2143 = add nuw nsw i32 %2142, %2141
  %2144 = icmp eq i32 %2143, 2
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %39, align 1, !tbaa !2450
  %2146 = icmp ne i8 %2140, 0
  %2147 = xor i1 %2146, %2144
  %.demorgan90 = or i1 %2137, %2147
  %.v91 = select i1 %.demorgan90, i64 10, i64 57
  %2148 = add i64 %2119, %.v91
  store i64 %2148, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan90, label %block_400cb0, label %block_400cdf

block_400a8d:                                     ; preds = %block_400a0c
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 4) to i32*), align 4
  store i32 193, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 4) to i32*), align 4
  %2149 = add i64 %3674, 29
  store i64 %2149, i64* %PC, align 8
  store i32 0, i32* %3649, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400aaa

block_40088a:                                     ; preds = %block_400880
  %2150 = add i64 %2228, -8
  %2151 = add i64 %2256, 7
  store i64 %2151, i64* %PC, align 8
  %2152 = inttoptr i64 %2150 to i32*
  store i32 1, i32* %2152, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400891

block_400b18:                                     ; preds = %block_400abb
  %2153 = add i64 %2791, -4
  %2154 = add i64 %2819, 8
  store i64 %2154, i64* %PC, align 8
  %2155 = inttoptr i64 %2153 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = add i32 %2156, 1
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RAX, align 8, !tbaa !2428
  %2159 = icmp eq i32 %2156, -1
  %2160 = icmp eq i32 %2157, 0
  %2161 = or i1 %2159, %2160
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %14, align 1, !tbaa !2432
  %2163 = and i32 %2157, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163) #8
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %21, align 1, !tbaa !2446
  %2168 = xor i32 %2156, %2157
  %2169 = lshr i32 %2168, 4
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  store i8 %2171, i8* %27, align 1, !tbaa !2447
  %2172 = icmp eq i32 %2157, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %30, align 1, !tbaa !2448
  %2174 = lshr i32 %2157, 31
  %2175 = trunc i32 %2174 to i8
  store i8 %2175, i8* %33, align 1, !tbaa !2449
  %2176 = lshr i32 %2156, 31
  %2177 = xor i32 %2174, %2176
  %2178 = add nuw nsw i32 %2177, %2174
  %2179 = icmp eq i32 %2178, 2
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %39, align 1, !tbaa !2450
  %2181 = add i64 %2819, 14
  store i64 %2181, i64* %PC, align 8
  store i32 %2157, i32* %2155, align 4
  %2182 = load i64, i64* %PC, align 8
  %2183 = add i64 %2182, -124
  store i64 %2183, i64* %43, align 8, !tbaa !2428
  br label %block_400aaa

block_401216:                                     ; preds = %block_4011e8
  %2184 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %2185 = add i32 %2184, -2005
  %2186 = icmp ult i32 %2184, 2005
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %14, align 1, !tbaa !2432
  %2188 = and i32 %2185, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188) #8
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %21, align 1, !tbaa !2446
  %2193 = xor i32 %2184, 16
  %2194 = xor i32 %2193, %2185
  %2195 = lshr i32 %2194, 4
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  store i8 %2197, i8* %27, align 1, !tbaa !2447
  %2198 = icmp eq i32 %2185, 0
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %30, align 1, !tbaa !2448
  %2200 = lshr i32 %2185, 31
  %2201 = trunc i32 %2200 to i8
  store i8 %2201, i8* %33, align 1, !tbaa !2449
  %2202 = lshr i32 %2184, 31
  %2203 = xor i32 %2200, %2202
  %2204 = add nuw nsw i32 %2203, %2202
  %2205 = icmp eq i32 %2204, 2
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %39, align 1, !tbaa !2450
  %.v127 = select i1 %2198, i64 37, i64 17
  %2207 = add i64 %214, %.v127
  store i64 %2207, i64* %43, align 8, !tbaa !2428
  br i1 %2198, label %block_40123b, label %block_401227

block_400c84:                                     ; preds = %block_400c67, %block_400cf2
  %2208 = phi i64 [ %.pre24, %block_400c67 ], [ %1326, %block_400cf2 ]
  %2209 = load i64, i64* %RBP, align 8
  %2210 = add i64 %2209, -4
  %2211 = add i64 %2208, 4
  store i64 %2211, i64* %PC, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %2214 = and i32 %2213, 255
  %2215 = tail call i32 @llvm.ctpop.i32(i32 %2214) #8
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  store i8 %2218, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %2219 = icmp eq i32 %2213, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %30, align 1, !tbaa !2448
  %2221 = lshr i32 %2213, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %2223 = xor i1 %2219, true
  %2224 = icmp eq i8 %2222, 0
  %2225 = and i1 %2224, %2223
  %.v87 = select i1 %2225, i64 129, i64 10
  %2226 = add i64 %2208, %.v87
  store i64 %2226, i64* %43, align 8, !tbaa !2428
  br i1 %2225, label %block_400d05, label %block_400c8e

block_400880:                                     ; preds = %block_400879, %block_4008ee
  %2227 = phi i64 [ %.pre4, %block_400879 ], [ %1357, %block_4008ee ]
  %2228 = load i64, i64* %RBP, align 8
  %2229 = add i64 %2228, -4
  %2230 = add i64 %2227, 4
  store i64 %2230, i64* %PC, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = add i32 %2232, -5
  %2234 = icmp ult i32 %2232, 5
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %14, align 1, !tbaa !2432
  %2236 = and i32 %2233, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236) #8
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1, !tbaa !2446
  %2241 = xor i32 %2232, %2233
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %27, align 1, !tbaa !2447
  %2245 = icmp eq i32 %2233, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %30, align 1, !tbaa !2448
  %2247 = lshr i32 %2233, 31
  %2248 = trunc i32 %2247 to i8
  store i8 %2248, i8* %33, align 1, !tbaa !2449
  %2249 = lshr i32 %2232, 31
  %2250 = xor i32 %2247, %2249
  %2251 = add nuw nsw i32 %2250, %2249
  %2252 = icmp eq i32 %2251, 2
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %39, align 1, !tbaa !2450
  %2254 = icmp ne i8 %2248, 0
  %2255 = xor i1 %2254, %2252
  %.demorgan52 = or i1 %2245, %2255
  %.v53 = select i1 %.demorgan52, i64 10, i64 129
  %2256 = add i64 %2227, %.v53
  store i64 %2256, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan52, label %block_40088a, label %block_400901

block_400919:                                     ; preds = %block_400926, %block_400912
  %2257 = phi i64 [ %1707, %block_400926 ], [ %.pre8, %block_400912 ]
  %2258 = load i64, i64* %RBP, align 8
  %2259 = add i64 %2258, -16
  %2260 = add i64 %2257, 7
  store i64 %2260, i64* %PC, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = add i32 %2262, -511
  %2264 = icmp ult i32 %2262, 511
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %14, align 1, !tbaa !2432
  %2266 = and i32 %2263, 255
  %2267 = tail call i32 @llvm.ctpop.i32(i32 %2266) #8
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = xor i8 %2269, 1
  store i8 %2270, i8* %21, align 1, !tbaa !2446
  %2271 = xor i32 %2262, 16
  %2272 = xor i32 %2271, %2263
  %2273 = lshr i32 %2272, 4
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  store i8 %2275, i8* %27, align 1, !tbaa !2447
  %2276 = icmp eq i32 %2263, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %30, align 1, !tbaa !2448
  %2278 = lshr i32 %2263, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %33, align 1, !tbaa !2449
  %2280 = lshr i32 %2262, 31
  %2281 = xor i32 %2278, %2280
  %2282 = add nuw nsw i32 %2281, %2280
  %2283 = icmp eq i32 %2282, 2
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %39, align 1, !tbaa !2450
  %2285 = icmp ne i8 %2279, 0
  %2286 = xor i1 %2285, %2283
  %.demorgan60 = or i1 %2276, %2286
  %.v61 = select i1 %.demorgan60, i64 13, i64 59
  %2287 = add i64 %2257, %.v61
  store i64 %2287, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan60, label %block_400926, label %block_400954

block_401102:                                     ; preds = %block_4010f8
  %2288 = add i64 %1264, -4
  %2289 = add i64 %1292, 3
  store i64 %2289, i64* %PC, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RAX, align 8, !tbaa !2428
  %2293 = add i64 %1264, -8
  %2294 = add i64 %1292, 6
  store i64 %2294, i64* %PC, align 8
  %2295 = inttoptr i64 %2293 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = zext i32 %2296 to i64
  store i64 %2297, i64* %RCX, align 8, !tbaa !2428
  %2298 = add i64 %1292, 9
  store i64 %2298, i64* %PC, align 8
  %2299 = load i32, i32* %1267, align 4
  %2300 = shl i32 %2299, 3
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RDX, align 8, !tbaa !2428
  %2302 = add i32 %2300, %2296
  %2303 = shl i32 %2302, 3
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RCX, align 8, !tbaa !2428
  %2305 = lshr i32 %2302, 28
  %2306 = and i32 %2305, 1
  %2307 = load i64, i64* %RAX, align 8
  %2308 = trunc i64 %2307 to i32
  %2309 = add i32 %2303, %2308
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RAX, align 8, !tbaa !2428
  %2311 = icmp ult i32 %2309, %2308
  %2312 = icmp ult i32 %2309, %2303
  %2313 = or i1 %2311, %2312
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %14, align 1, !tbaa !2432
  %2315 = and i32 %2309, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315) #8
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %21, align 1, !tbaa !2446
  %2320 = xor i64 %2304, %2307
  %2321 = trunc i64 %2320 to i32
  %2322 = xor i32 %2321, %2309
  %2323 = lshr i32 %2322, 4
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  store i8 %2325, i8* %27, align 1, !tbaa !2447
  %2326 = icmp eq i32 %2309, 0
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %30, align 1, !tbaa !2448
  %2328 = lshr i32 %2309, 31
  %2329 = trunc i32 %2328 to i8
  store i8 %2329, i8* %33, align 1, !tbaa !2449
  %2330 = lshr i32 %2308, 31
  %2331 = xor i32 %2328, %2330
  %2332 = xor i32 %2328, %2306
  %2333 = add nuw nsw i32 %2331, %2332
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %39, align 1, !tbaa !2450
  %2336 = sext i32 %2309 to i64
  store i64 %2336, i64* %RSI, align 8, !tbaa !2428
  %2337 = shl nsw i64 %2336, 2
  %2338 = add i64 %2337, add (i64 ptrtoint (%p_type* @p to i64), i64 24576)
  %2339 = add i64 %1292, 33
  store i64 %2339, i64* %PC, align 8
  %2340 = inttoptr i64 %2338 to i32*
  store i32 1, i32* %2340, align 4
  %2341 = load i64, i64* %RBP, align 8
  %2342 = add i64 %2341, -12
  %2343 = load i64, i64* %PC, align 8
  %2344 = add i64 %2343, 3
  store i64 %2344, i64* %PC, align 8
  %2345 = inttoptr i64 %2342 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = add i32 %2346, 1
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RAX, align 8, !tbaa !2428
  %2349 = icmp eq i32 %2346, -1
  %2350 = icmp eq i32 %2347, 0
  %2351 = or i1 %2349, %2350
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %14, align 1, !tbaa !2432
  %2353 = and i32 %2347, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353) #8
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1, !tbaa !2446
  %2358 = xor i32 %2346, %2347
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %27, align 1, !tbaa !2447
  %2362 = icmp eq i32 %2347, 0
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %30, align 1, !tbaa !2448
  %2364 = lshr i32 %2347, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %33, align 1, !tbaa !2449
  %2366 = lshr i32 %2346, 31
  %2367 = xor i32 %2364, %2366
  %2368 = add nuw nsw i32 %2367, %2364
  %2369 = icmp eq i32 %2368, 2
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %39, align 1, !tbaa !2450
  %2371 = add i64 %2343, 9
  store i64 %2371, i64* %PC, align 8
  store i32 %2347, i32* %2345, align 4
  %2372 = load i64, i64* %PC, align 8
  %2373 = add i64 %2372, -52
  store i64 %2373, i64* %43, align 8, !tbaa !2428
  br label %block_4010f8

block_400b6a:                                     ; preds = %block_400b63, %block_400b74
  %2374 = phi i64 [ %.pre20, %block_400b63 ], [ %629, %block_400b74 ]
  %2375 = load i64, i64* %RBP, align 8
  %2376 = add i64 %2375, -12
  %2377 = add i64 %2374, 4
  store i64 %2377, i64* %PC, align 8
  %2378 = inttoptr i64 %2376 to i32*
  %2379 = load i32, i32* %2378, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %2380 = and i32 %2379, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380) #8
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %2385 = icmp eq i32 %2379, 0
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %30, align 1, !tbaa !2448
  %2387 = lshr i32 %2379, 31
  %2388 = trunc i32 %2387 to i8
  store i8 %2388, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %2389 = xor i1 %2385, true
  %2390 = icmp eq i8 %2388, 0
  %2391 = and i1 %2390, %2389
  %.v81 = select i1 %2391, i64 57, i64 10
  %2392 = add i64 %2374, %.v81
  store i64 %2392, i64* %43, align 8, !tbaa !2428
  br i1 %2391, label %block_400ba3, label %block_400b74

block_400a7a:                                     ; preds = %block_400a1d
  %2393 = add i64 %3398, -4
  %2394 = add i64 %3415, 8
  store i64 %2394, i64* %PC, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = add i32 %2396, 1
  %2398 = zext i32 %2397 to i64
  store i64 %2398, i64* %RAX, align 8, !tbaa !2428
  %2399 = icmp eq i32 %2396, -1
  %2400 = icmp eq i32 %2397, 0
  %2401 = or i1 %2399, %2400
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %14, align 1, !tbaa !2432
  %2403 = and i32 %2397, 255
  %2404 = tail call i32 @llvm.ctpop.i32(i32 %2403) #8
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = xor i8 %2406, 1
  store i8 %2407, i8* %21, align 1, !tbaa !2446
  %2408 = xor i32 %2396, %2397
  %2409 = lshr i32 %2408, 4
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  store i8 %2411, i8* %27, align 1, !tbaa !2447
  %2412 = icmp eq i32 %2397, 0
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %30, align 1, !tbaa !2448
  %2414 = lshr i32 %2397, 31
  %2415 = trunc i32 %2414 to i8
  store i8 %2415, i8* %33, align 1, !tbaa !2449
  %2416 = lshr i32 %2396, 31
  %2417 = xor i32 %2414, %2416
  %2418 = add nuw nsw i32 %2417, %2414
  %2419 = icmp eq i32 %2418, 2
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %39, align 1, !tbaa !2450
  %2421 = add i64 %3415, 14
  store i64 %2421, i64* %PC, align 8
  store i32 %2397, i32* %2395, align 4
  %2422 = load i64, i64* %PC, align 8
  %2423 = add i64 %2422, -124
  store i64 %2423, i64* %43, align 8, !tbaa !2428
  br label %block_400a0c

block_400e79:                                     ; preds = %block_400e6f
  %2424 = add i64 %2459, -12
  %2425 = add i64 %2476, 7
  store i64 %2425, i64* %PC, align 8
  %2426 = inttoptr i64 %2424 to i32*
  store i32 0, i32* %2426, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400e80

block_400ba3:                                     ; preds = %block_400b6a
  %2427 = add i64 %2375, -8
  %2428 = add i64 %2392, 8
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = add i32 %2430, 1
  %2432 = zext i32 %2431 to i64
  store i64 %2432, i64* %RAX, align 8, !tbaa !2428
  %2433 = icmp eq i32 %2430, -1
  %2434 = icmp eq i32 %2431, 0
  %2435 = or i1 %2433, %2434
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %14, align 1, !tbaa !2432
  %2437 = and i32 %2431, 255
  %2438 = tail call i32 @llvm.ctpop.i32(i32 %2437) #8
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  store i8 %2441, i8* %21, align 1, !tbaa !2446
  %2442 = xor i32 %2430, %2431
  %2443 = lshr i32 %2442, 4
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  store i8 %2445, i8* %27, align 1, !tbaa !2447
  %2446 = icmp eq i32 %2431, 0
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %30, align 1, !tbaa !2448
  %2448 = lshr i32 %2431, 31
  %2449 = trunc i32 %2448 to i8
  store i8 %2449, i8* %33, align 1, !tbaa !2449
  %2450 = lshr i32 %2430, 31
  %2451 = xor i32 %2448, %2450
  %2452 = add nuw nsw i32 %2451, %2448
  %2453 = icmp eq i32 %2452, 2
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %39, align 1, !tbaa !2450
  %2455 = add i64 %2392, 14
  store i64 %2455, i64* %PC, align 8
  store i32 %2431, i32* %2429, align 4
  %2456 = load i64, i64* %PC, align 8
  %2457 = add i64 %2456, -88
  store i64 %2457, i64* %43, align 8, !tbaa !2428
  br label %block_400b59

block_400e6f:                                     ; preds = %block_400e68, %block_400eb9
  %2458 = phi i64 [ %.pre34, %block_400e68 ], [ %1738, %block_400eb9 ]
  %2459 = load i64, i64* %RBP, align 8
  %2460 = add i64 %2459, -8
  %2461 = add i64 %2458, 4
  store i64 %2461, i64* %PC, align 8
  %2462 = inttoptr i64 %2460 to i32*
  %2463 = load i32, i32* %2462, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %2464 = and i32 %2463, 255
  %2465 = tail call i32 @llvm.ctpop.i32(i32 %2464) #8
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %2469 = icmp eq i32 %2463, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %30, align 1, !tbaa !2448
  %2471 = lshr i32 %2463, 31
  %2472 = trunc i32 %2471 to i8
  store i8 %2472, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %2473 = xor i1 %2469, true
  %2474 = icmp eq i8 %2472, 0
  %2475 = and i1 %2474, %2473
  %.v101 = select i1 %2475, i64 93, i64 10
  %2476 = add i64 %2458, %.v101
  store i64 %2476, i64* %43, align 8, !tbaa !2428
  br i1 %2475, label %block_400ecc, label %block_400e79

block_400e80:                                     ; preds = %block_400e79, %block_400e8a
  %2477 = phi i64 [ %.pre35, %block_400e79 ], [ %889, %block_400e8a ]
  %2478 = load i64, i64* %RBP, align 8
  %2479 = add i64 %2478, -12
  %2480 = add i64 %2477, 4
  store i64 %2480, i64* %PC, align 8
  %2481 = inttoptr i64 %2479 to i32*
  %2482 = load i32, i32* %2481, align 4
  %2483 = add i32 %2482, -2
  %2484 = icmp ult i32 %2482, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %14, align 1, !tbaa !2432
  %2486 = and i32 %2483, 255
  %2487 = tail call i32 @llvm.ctpop.i32(i32 %2486) #8
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  store i8 %2490, i8* %21, align 1, !tbaa !2446
  %2491 = xor i32 %2482, %2483
  %2492 = lshr i32 %2491, 4
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  store i8 %2494, i8* %27, align 1, !tbaa !2447
  %2495 = icmp eq i32 %2483, 0
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %30, align 1, !tbaa !2448
  %2497 = lshr i32 %2483, 31
  %2498 = trunc i32 %2497 to i8
  store i8 %2498, i8* %33, align 1, !tbaa !2449
  %2499 = lshr i32 %2482, 31
  %2500 = xor i32 %2497, %2499
  %2501 = add nuw nsw i32 %2500, %2499
  %2502 = icmp eq i32 %2501, 2
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %39, align 1, !tbaa !2450
  %2504 = icmp ne i8 %2498, 0
  %2505 = xor i1 %2504, %2502
  %.demorgan102 = or i1 %2495, %2505
  %.v103 = select i1 %.demorgan102, i64 10, i64 57
  %2506 = add i64 %2477, %.v103
  store i64 %2506, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan102, label %block_400e8a, label %block_400eb9

block_400c67:                                     ; preds = %block_400be6
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 16) to i32*), align 16
  store i32 67, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 16) to i32*), align 16
  %2507 = add i64 %244, 29
  store i64 %2507, i64* %PC, align 8
  store i32 0, i32* %219, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400c84

block_400e68:                                     ; preds = %block_400e5e
  %2508 = add i64 %2679, -8
  %2509 = add i64 %2696, 7
  store i64 %2509, i64* %PC, align 8
  %2510 = inttoptr i64 %2508 to i32*
  store i32 0, i32* %2510, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400e6f

block_400d33:                                     ; preds = %block_400d7d, %block_400d2c
  %2511 = phi i64 [ %2914, %block_400d7d ], [ %.pre28, %block_400d2c ]
  %2512 = load i64, i64* %RBP, align 8
  %2513 = add i64 %2512, -8
  %2514 = add i64 %2511, 4
  store i64 %2514, i64* %PC, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %2517 = and i32 %2516, 255
  %2518 = tail call i32 @llvm.ctpop.i32(i32 %2517) #8
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  store i8 %2521, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %2522 = icmp eq i32 %2516, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %30, align 1, !tbaa !2448
  %2524 = lshr i32 %2516, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %2526 = xor i1 %2522, true
  %2527 = icmp eq i8 %2525, 0
  %2528 = and i1 %2527, %2526
  %.v94 = select i1 %2528, i64 93, i64 10
  %2529 = add i64 %2511, %.v94
  store i64 %2529, i64* %43, align 8, !tbaa !2428
  br i1 %2528, label %block_400d90, label %block_400d3d

block_400901:                                     ; preds = %block_400880
  %2530 = add i64 %2256, 7
  store i64 %2530, i64* %PC, align 8
  store i32 0, i32* %2231, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400908

block_400a67:                                     ; preds = %block_400a2e
  %2531 = add i64 %3301, -8
  %2532 = add i64 %3329, 8
  store i64 %2532, i64* %PC, align 8
  %2533 = inttoptr i64 %2531 to i32*
  %2534 = load i32, i32* %2533, align 4
  %2535 = add i32 %2534, 1
  %2536 = zext i32 %2535 to i64
  store i64 %2536, i64* %RAX, align 8, !tbaa !2428
  %2537 = icmp eq i32 %2534, -1
  %2538 = icmp eq i32 %2535, 0
  %2539 = or i1 %2537, %2538
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %14, align 1, !tbaa !2432
  %2541 = and i32 %2535, 255
  %2542 = tail call i32 @llvm.ctpop.i32(i32 %2541) #8
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %21, align 1, !tbaa !2446
  %2546 = xor i32 %2534, %2535
  %2547 = lshr i32 %2546, 4
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  store i8 %2549, i8* %27, align 1, !tbaa !2447
  %2550 = icmp eq i32 %2535, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %30, align 1, !tbaa !2448
  %2552 = lshr i32 %2535, 31
  %2553 = trunc i32 %2552 to i8
  store i8 %2553, i8* %33, align 1, !tbaa !2449
  %2554 = lshr i32 %2534, 31
  %2555 = xor i32 %2552, %2554
  %2556 = add nuw nsw i32 %2555, %2552
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %39, align 1, !tbaa !2450
  %2559 = add i64 %3329, 14
  store i64 %2559, i64* %PC, align 8
  store i32 %2535, i32* %2533, align 4
  %2560 = load i64, i64* %PC, align 8
  %2561 = add i64 %2560, -88
  store i64 %2561, i64* %43, align 8, !tbaa !2428
  br label %block_400a1d

block_400acc:                                     ; preds = %block_400ac5, %block_400ad6
  %2562 = phi i64 [ %.pre17, %block_400ac5 ], [ %1601, %block_400ad6 ]
  %2563 = load i64, i64* %RBP, align 8
  %2564 = add i64 %2563, -12
  %2565 = add i64 %2562, 4
  store i64 %2565, i64* %PC, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = add i32 %2567, -1
  %2569 = icmp eq i32 %2567, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %14, align 1, !tbaa !2432
  %2571 = and i32 %2568, 255
  %2572 = tail call i32 @llvm.ctpop.i32(i32 %2571) #8
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  %2575 = xor i8 %2574, 1
  store i8 %2575, i8* %21, align 1, !tbaa !2446
  %2576 = xor i32 %2567, %2568
  %2577 = lshr i32 %2576, 4
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  store i8 %2579, i8* %27, align 1, !tbaa !2447
  %2580 = icmp eq i32 %2568, 0
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %30, align 1, !tbaa !2448
  %2582 = lshr i32 %2568, 31
  %2583 = trunc i32 %2582 to i8
  store i8 %2583, i8* %33, align 1, !tbaa !2449
  %2584 = lshr i32 %2567, 31
  %2585 = xor i32 %2582, %2584
  %2586 = add nuw nsw i32 %2585, %2584
  %2587 = icmp eq i32 %2586, 2
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %39, align 1, !tbaa !2450
  %2589 = icmp ne i8 %2583, 0
  %2590 = xor i1 %2589, %2587
  %.demorgan75 = or i1 %2580, %2590
  %.v76 = select i1 %.demorgan75, i64 10, i64 57
  %2591 = add i64 %2562, %.v76
  store i64 %2591, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan75, label %block_400ad6, label %block_400b05

block_401064:                                     ; preds = %block_40105a
  %2592 = add i64 %2699, -4
  %2593 = add i64 %2727, 3
  store i64 %2593, i64* %PC, align 8
  %2594 = inttoptr i64 %2592 to i32*
  %2595 = load i32, i32* %2594, align 4
  %2596 = zext i32 %2595 to i64
  store i64 %2596, i64* %RAX, align 8, !tbaa !2428
  %2597 = add i64 %2699, -8
  %2598 = add i64 %2727, 6
  store i64 %2598, i64* %PC, align 8
  %2599 = inttoptr i64 %2597 to i32*
  %2600 = load i32, i32* %2599, align 4
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RCX, align 8, !tbaa !2428
  %2602 = add i64 %2727, 9
  store i64 %2602, i64* %PC, align 8
  %2603 = load i32, i32* %2702, align 4
  %2604 = shl i32 %2603, 3
  %2605 = zext i32 %2604 to i64
  store i64 %2605, i64* %RDX, align 8, !tbaa !2428
  %2606 = add i32 %2604, %2600
  %2607 = shl i32 %2606, 3
  %2608 = zext i32 %2607 to i64
  store i64 %2608, i64* %RCX, align 8, !tbaa !2428
  %2609 = lshr i32 %2606, 28
  %2610 = and i32 %2609, 1
  %2611 = load i64, i64* %RAX, align 8
  %2612 = trunc i64 %2611 to i32
  %2613 = add i32 %2607, %2612
  %2614 = zext i32 %2613 to i64
  store i64 %2614, i64* %RAX, align 8, !tbaa !2428
  %2615 = icmp ult i32 %2613, %2612
  %2616 = icmp ult i32 %2613, %2607
  %2617 = or i1 %2615, %2616
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %14, align 1, !tbaa !2432
  %2619 = and i32 %2613, 255
  %2620 = tail call i32 @llvm.ctpop.i32(i32 %2619) #8
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  %2623 = xor i8 %2622, 1
  store i8 %2623, i8* %21, align 1, !tbaa !2446
  %2624 = xor i64 %2608, %2611
  %2625 = trunc i64 %2624 to i32
  %2626 = xor i32 %2625, %2613
  %2627 = lshr i32 %2626, 4
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %27, align 1, !tbaa !2447
  %2630 = icmp eq i32 %2613, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %30, align 1, !tbaa !2448
  %2632 = lshr i32 %2613, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %33, align 1, !tbaa !2449
  %2634 = lshr i32 %2612, 31
  %2635 = xor i32 %2632, %2634
  %2636 = xor i32 %2632, %2610
  %2637 = add nuw nsw i32 %2635, %2636
  %2638 = icmp eq i32 %2637, 2
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %39, align 1, !tbaa !2450
  %2640 = sext i32 %2613 to i64
  store i64 %2640, i64* %RSI, align 8, !tbaa !2428
  %2641 = shl nsw i64 %2640, 2
  %2642 = add i64 %2641, add (i64 ptrtoint (%p_type* @p to i64), i64 22528)
  %2643 = add i64 %2727, 33
  store i64 %2643, i64* %PC, align 8
  %2644 = inttoptr i64 %2642 to i32*
  store i32 1, i32* %2644, align 4
  %2645 = load i64, i64* %RBP, align 8
  %2646 = add i64 %2645, -12
  %2647 = load i64, i64* %PC, align 8
  %2648 = add i64 %2647, 3
  store i64 %2648, i64* %PC, align 8
  %2649 = inttoptr i64 %2646 to i32*
  %2650 = load i32, i32* %2649, align 4
  %2651 = add i32 %2650, 1
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RAX, align 8, !tbaa !2428
  %2653 = icmp eq i32 %2650, -1
  %2654 = icmp eq i32 %2651, 0
  %2655 = or i1 %2653, %2654
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %14, align 1, !tbaa !2432
  %2657 = and i32 %2651, 255
  %2658 = tail call i32 @llvm.ctpop.i32(i32 %2657) #8
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  store i8 %2661, i8* %21, align 1, !tbaa !2446
  %2662 = xor i32 %2650, %2651
  %2663 = lshr i32 %2662, 4
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  store i8 %2665, i8* %27, align 1, !tbaa !2447
  %2666 = icmp eq i32 %2651, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %30, align 1, !tbaa !2448
  %2668 = lshr i32 %2651, 31
  %2669 = trunc i32 %2668 to i8
  store i8 %2669, i8* %33, align 1, !tbaa !2449
  %2670 = lshr i32 %2650, 31
  %2671 = xor i32 %2668, %2670
  %2672 = add nuw nsw i32 %2671, %2668
  %2673 = icmp eq i32 %2672, 2
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %39, align 1, !tbaa !2450
  %2675 = add i64 %2647, 9
  store i64 %2675, i64* %PC, align 8
  store i32 %2651, i32* %2649, align 4
  %2676 = load i64, i64* %PC, align 8
  %2677 = add i64 %2676, -52
  store i64 %2677, i64* %43, align 8, !tbaa !2428
  br label %block_40105a

block_400e5e:                                     ; preds = %block_400e41, %block_400ecc
  %2678 = phi i64 [ %.pre33, %block_400e41 ], [ %1635, %block_400ecc ]
  %2679 = load i64, i64* %RBP, align 8
  %2680 = add i64 %2679, -4
  %2681 = add i64 %2678, 4
  store i64 %2681, i64* %PC, align 8
  %2682 = inttoptr i64 %2680 to i32*
  %2683 = load i32, i32* %2682, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %2684 = and i32 %2683, 255
  %2685 = tail call i32 @llvm.ctpop.i32(i32 %2684) #8
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = xor i8 %2687, 1
  store i8 %2688, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %2689 = icmp eq i32 %2683, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %30, align 1, !tbaa !2448
  %2691 = lshr i32 %2683, 31
  %2692 = trunc i32 %2691 to i8
  store i8 %2692, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %2693 = xor i1 %2689, true
  %2694 = icmp eq i8 %2692, 0
  %2695 = and i1 %2694, %2693
  %.v100 = select i1 %2695, i64 129, i64 10
  %2696 = add i64 %2678, %.v100
  store i64 %2696, i64* %43, align 8, !tbaa !2428
  br i1 %2695, label %block_400edf, label %block_400e68

block_400e41:                                     ; preds = %block_400dc0
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 28) to i32*), align 4
  store i32 16, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 28) to i32*), align 4
  %2697 = add i64 %1469, 29
  store i64 %2697, i64* %PC, align 8
  store i32 0, i32* %1455, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400e5e

block_40105a:                                     ; preds = %block_401053, %block_401064
  %2698 = phi i64 [ %.pre44, %block_401053 ], [ %2677, %block_401064 ]
  %2699 = load i64, i64* %RBP, align 8
  %2700 = add i64 %2699, -12
  %2701 = add i64 %2698, 4
  store i64 %2701, i64* %PC, align 8
  %2702 = inttoptr i64 %2700 to i32*
  %2703 = load i32, i32* %2702, align 4
  %2704 = add i32 %2703, -1
  %2705 = icmp eq i32 %2703, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %14, align 1, !tbaa !2432
  %2707 = and i32 %2704, 255
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707) #8
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %21, align 1, !tbaa !2446
  %2712 = xor i32 %2703, %2704
  %2713 = lshr i32 %2712, 4
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  store i8 %2715, i8* %27, align 1, !tbaa !2447
  %2716 = icmp eq i32 %2704, 0
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %30, align 1, !tbaa !2448
  %2718 = lshr i32 %2704, 31
  %2719 = trunc i32 %2718 to i8
  store i8 %2719, i8* %33, align 1, !tbaa !2449
  %2720 = lshr i32 %2703, 31
  %2721 = xor i32 %2718, %2720
  %2722 = add nuw nsw i32 %2721, %2720
  %2723 = icmp eq i32 %2722, 2
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %39, align 1, !tbaa !2450
  %2725 = icmp ne i8 %2719, 0
  %2726 = xor i1 %2725, %2723
  %.demorgan117 = or i1 %2716, %2726
  %.v118 = select i1 %.demorgan117, i64 10, i64 57
  %2727 = add i64 %2698, %.v118
  store i64 %2727, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan117, label %block_401064, label %block_401093

block_400908:                                     ; preds = %block_400901, %block_400954
  %2728 = phi i64 [ %.pre7, %block_400901 ], [ %695, %block_400954 ]
  %2729 = load i64, i64* %RBP, align 8
  %2730 = add i64 %2729, -4
  %2731 = add i64 %2728, 4
  store i64 %2731, i64* %PC, align 8
  %2732 = inttoptr i64 %2730 to i32*
  %2733 = load i32, i32* %2732, align 4
  %2734 = add i32 %2733, -12
  %2735 = icmp ult i32 %2733, 12
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %14, align 1, !tbaa !2432
  %2737 = and i32 %2734, 255
  %2738 = tail call i32 @llvm.ctpop.i32(i32 %2737) #8
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  store i8 %2741, i8* %21, align 1, !tbaa !2446
  %2742 = xor i32 %2733, %2734
  %2743 = lshr i32 %2742, 4
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  store i8 %2745, i8* %27, align 1, !tbaa !2447
  %2746 = icmp eq i32 %2734, 0
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %30, align 1, !tbaa !2448
  %2748 = lshr i32 %2734, 31
  %2749 = trunc i32 %2748 to i8
  store i8 %2749, i8* %33, align 1, !tbaa !2449
  %2750 = lshr i32 %2733, 31
  %2751 = xor i32 %2748, %2750
  %2752 = add nuw nsw i32 %2751, %2750
  %2753 = icmp eq i32 %2752, 2
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %39, align 1, !tbaa !2450
  %2755 = icmp ne i8 %2749, 0
  %2756 = xor i1 %2755, %2753
  %.demorgan58 = or i1 %2746, %2756
  %.v59 = select i1 %.demorgan58, i64 10, i64 95
  %2757 = add i64 %2728, %.v59
  store i64 %2757, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan58, label %block_400912, label %block_400967

block_4010b9:                                     ; preds = %block_401038
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 44) to i32*), align 4
  store i32 72, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 44) to i32*), align 4
  %2758 = add i64 %714, 29
  store i64 %2758, i64* %PC, align 8
  store i32 0, i32* %700, align 4
  %.pre45 = load i64, i64* %PC, align 8
  br label %block_4010d6

block_400c54:                                     ; preds = %block_400bf7
  %2759 = add i64 %59, -4
  %2760 = add i64 %76, 8
  store i64 %2760, i64* %PC, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = add i32 %2762, 1
  %2764 = zext i32 %2763 to i64
  store i64 %2764, i64* %RAX, align 8, !tbaa !2428
  %2765 = icmp eq i32 %2762, -1
  %2766 = icmp eq i32 %2763, 0
  %2767 = or i1 %2765, %2766
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %14, align 1, !tbaa !2432
  %2769 = and i32 %2763, 255
  %2770 = tail call i32 @llvm.ctpop.i32(i32 %2769) #8
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  store i8 %2773, i8* %21, align 1, !tbaa !2446
  %2774 = xor i32 %2762, %2763
  %2775 = lshr i32 %2774, 4
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %27, align 1, !tbaa !2447
  %2778 = icmp eq i32 %2763, 0
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %30, align 1, !tbaa !2448
  %2780 = lshr i32 %2763, 31
  %2781 = trunc i32 %2780 to i8
  store i8 %2781, i8* %33, align 1, !tbaa !2449
  %2782 = lshr i32 %2762, 31
  %2783 = xor i32 %2780, %2782
  %2784 = add nuw nsw i32 %2783, %2780
  %2785 = icmp eq i32 %2784, 2
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %39, align 1, !tbaa !2450
  %2787 = add i64 %76, 14
  store i64 %2787, i64* %PC, align 8
  store i32 %2763, i32* %2761, align 4
  %2788 = load i64, i64* %PC, align 8
  %2789 = add i64 %2788, -124
  store i64 %2789, i64* %43, align 8, !tbaa !2428
  br label %block_400be6

block_400abb:                                     ; preds = %block_400b05, %block_400ab4
  %2790 = phi i64 [ %3393, %block_400b05 ], [ %.pre16, %block_400ab4 ]
  %2791 = load i64, i64* %RBP, align 8
  %2792 = add i64 %2791, -8
  %2793 = add i64 %2790, 4
  store i64 %2793, i64* %PC, align 8
  %2794 = inttoptr i64 %2792 to i32*
  %2795 = load i32, i32* %2794, align 4
  %2796 = add i32 %2795, -3
  %2797 = icmp ult i32 %2795, 3
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %14, align 1, !tbaa !2432
  %2799 = and i32 %2796, 255
  %2800 = tail call i32 @llvm.ctpop.i32(i32 %2799) #8
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = xor i8 %2802, 1
  store i8 %2803, i8* %21, align 1, !tbaa !2446
  %2804 = xor i32 %2795, %2796
  %2805 = lshr i32 %2804, 4
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  store i8 %2807, i8* %27, align 1, !tbaa !2447
  %2808 = icmp eq i32 %2796, 0
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %30, align 1, !tbaa !2448
  %2810 = lshr i32 %2796, 31
  %2811 = trunc i32 %2810 to i8
  store i8 %2811, i8* %33, align 1, !tbaa !2449
  %2812 = lshr i32 %2795, 31
  %2813 = xor i32 %2810, %2812
  %2814 = add nuw nsw i32 %2813, %2812
  %2815 = icmp eq i32 %2814, 2
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %39, align 1, !tbaa !2450
  %2817 = icmp ne i8 %2811, 0
  %2818 = xor i1 %2817, %2815
  %.demorgan73 = or i1 %2808, %2818
  %.v74 = select i1 %.demorgan73, i64 10, i64 93
  %2819 = add i64 %2790, %.v74
  store i64 %2819, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan73, label %block_400ac5, label %block_400b18

block_4008a2:                                     ; preds = %block_40089b, %block_4008ac
  %2820 = phi i64 [ %.pre6, %block_40089b ], [ %1933, %block_4008ac ]
  %2821 = load i64, i64* %RBP, align 8
  %2822 = add i64 %2821, -12
  %2823 = add i64 %2820, 4
  store i64 %2823, i64* %PC, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = add i32 %2825, -5
  %2827 = icmp ult i32 %2825, 5
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %14, align 1, !tbaa !2432
  %2829 = and i32 %2826, 255
  %2830 = tail call i32 @llvm.ctpop.i32(i32 %2829) #8
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  store i8 %2833, i8* %21, align 1, !tbaa !2446
  %2834 = xor i32 %2825, %2826
  %2835 = lshr i32 %2834, 4
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  store i8 %2837, i8* %27, align 1, !tbaa !2447
  %2838 = icmp eq i32 %2826, 0
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %30, align 1, !tbaa !2448
  %2840 = lshr i32 %2826, 31
  %2841 = trunc i32 %2840 to i8
  store i8 %2841, i8* %33, align 1, !tbaa !2449
  %2842 = lshr i32 %2825, 31
  %2843 = xor i32 %2840, %2842
  %2844 = add nuw nsw i32 %2843, %2842
  %2845 = icmp eq i32 %2844, 2
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %39, align 1, !tbaa !2450
  %2847 = icmp ne i8 %2841, 0
  %2848 = xor i1 %2847, %2845
  %.demorgan56 = or i1 %2838, %2848
  %.v57 = select i1 %.demorgan56, i64 10, i64 57
  %2849 = add i64 %2820, %.v57
  store i64 %2849, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan56, label %block_4008ac, label %block_4008db

block_401053:                                     ; preds = %block_401049
  %2850 = add i64 %2916, -12
  %2851 = add i64 %2944, 7
  store i64 %2851, i64* %PC, align 8
  %2852 = inttoptr i64 %2850 to i32*
  store i32 0, i32* %2852, align 4
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_40105a

block_40084f:                                     ; preds = %block_40085c, %block_400840
  %2853 = phi i64 [ %3641, %block_40085c ], [ %.pre, %block_400840 ]
  %2854 = load i64, i64* %RBP, align 8
  %2855 = add i64 %2854, -16
  %2856 = add i64 %2853, 7
  store i64 %2856, i64* %PC, align 8
  %2857 = inttoptr i64 %2855 to i32*
  %2858 = load i32, i32* %2857, align 4
  %2859 = add i32 %2858, -511
  %2860 = icmp ult i32 %2858, 511
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %14, align 1, !tbaa !2432
  %2862 = and i32 %2859, 255
  %2863 = tail call i32 @llvm.ctpop.i32(i32 %2862) #8
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = xor i8 %2865, 1
  store i8 %2866, i8* %21, align 1, !tbaa !2446
  %2867 = xor i32 %2858, 16
  %2868 = xor i32 %2867, %2859
  %2869 = lshr i32 %2868, 4
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  store i8 %2871, i8* %27, align 1, !tbaa !2447
  %2872 = icmp eq i32 %2859, 0
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %30, align 1, !tbaa !2448
  %2874 = lshr i32 %2859, 31
  %2875 = trunc i32 %2874 to i8
  store i8 %2875, i8* %33, align 1, !tbaa !2449
  %2876 = lshr i32 %2858, 31
  %2877 = xor i32 %2874, %2876
  %2878 = add nuw nsw i32 %2877, %2876
  %2879 = icmp eq i32 %2878, 2
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %39, align 1, !tbaa !2450
  %2881 = icmp ne i8 %2875, 0
  %2882 = xor i1 %2881, %2879
  %.demorgan = or i1 %2872, %2882
  %.v = select i1 %.demorgan, i64 13, i64 42
  %2883 = add i64 %2853, %.v
  store i64 %2883, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40085c, label %block_400879

block_400d7d:                                     ; preds = %block_400d44
  %2884 = add i64 %1157, -8
  %2885 = add i64 %1174, 8
  store i64 %2885, i64* %PC, align 8
  %2886 = inttoptr i64 %2884 to i32*
  %2887 = load i32, i32* %2886, align 4
  %2888 = add i32 %2887, 1
  %2889 = zext i32 %2888 to i64
  store i64 %2889, i64* %RAX, align 8, !tbaa !2428
  %2890 = icmp eq i32 %2887, -1
  %2891 = icmp eq i32 %2888, 0
  %2892 = or i1 %2890, %2891
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %14, align 1, !tbaa !2432
  %2894 = and i32 %2888, 255
  %2895 = tail call i32 @llvm.ctpop.i32(i32 %2894) #8
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  %2898 = xor i8 %2897, 1
  store i8 %2898, i8* %21, align 1, !tbaa !2446
  %2899 = xor i32 %2887, %2888
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %27, align 1, !tbaa !2447
  %2903 = icmp eq i32 %2888, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %30, align 1, !tbaa !2448
  %2905 = lshr i32 %2888, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %33, align 1, !tbaa !2449
  %2907 = lshr i32 %2887, 31
  %2908 = xor i32 %2905, %2907
  %2909 = add nuw nsw i32 %2908, %2905
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %39, align 1, !tbaa !2450
  %2912 = add i64 %1174, 14
  store i64 %2912, i64* %PC, align 8
  store i32 %2888, i32* %2886, align 4
  %2913 = load i64, i64* %PC, align 8
  %2914 = add i64 %2913, -88
  store i64 %2914, i64* %43, align 8, !tbaa !2428
  br label %block_400d33

block_401049:                                     ; preds = %block_401042, %block_401093
  %2915 = phi i64 [ %.pre43, %block_401042 ], [ %2118, %block_401093 ]
  %2916 = load i64, i64* %RBP, align 8
  %2917 = add i64 %2916, -8
  %2918 = add i64 %2915, 4
  store i64 %2918, i64* %PC, align 8
  %2919 = inttoptr i64 %2917 to i32*
  %2920 = load i32, i32* %2919, align 4
  %2921 = add i32 %2920, -1
  %2922 = icmp eq i32 %2920, 0
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %14, align 1, !tbaa !2432
  %2924 = and i32 %2921, 255
  %2925 = tail call i32 @llvm.ctpop.i32(i32 %2924) #8
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  store i8 %2928, i8* %21, align 1, !tbaa !2446
  %2929 = xor i32 %2920, %2921
  %2930 = lshr i32 %2929, 4
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  store i8 %2932, i8* %27, align 1, !tbaa !2447
  %2933 = icmp eq i32 %2921, 0
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %30, align 1, !tbaa !2448
  %2935 = lshr i32 %2921, 31
  %2936 = trunc i32 %2935 to i8
  store i8 %2936, i8* %33, align 1, !tbaa !2449
  %2937 = lshr i32 %2920, 31
  %2938 = xor i32 %2935, %2937
  %2939 = add nuw nsw i32 %2938, %2937
  %2940 = icmp eq i32 %2939, 2
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %39, align 1, !tbaa !2450
  %2942 = icmp ne i8 %2936, 0
  %2943 = xor i1 %2942, %2940
  %.demorgan115 = or i1 %2933, %2943
  %.v116 = select i1 %.demorgan115, i64 10, i64 93
  %2944 = add i64 %2915, %.v116
  store i64 %2944, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan115, label %block_401053, label %block_4010a6

block_400aaa:                                     ; preds = %block_400b18, %block_400a8d
  %2945 = phi i64 [ %2183, %block_400b18 ], [ %.pre15, %block_400a8d ]
  %2946 = load i64, i64* %RBP, align 8
  %2947 = add i64 %2946, -4
  %2948 = add i64 %2945, 4
  store i64 %2948, i64* %PC, align 8
  %2949 = inttoptr i64 %2947 to i32*
  %2950 = load i32, i32* %2949, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %2951 = and i32 %2950, 255
  %2952 = tail call i32 @llvm.ctpop.i32(i32 %2951) #8
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  %2955 = xor i8 %2954, 1
  store i8 %2955, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %2956 = icmp eq i32 %2950, 0
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %30, align 1, !tbaa !2448
  %2958 = lshr i32 %2950, 31
  %2959 = trunc i32 %2958 to i8
  store i8 %2959, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %2960 = xor i1 %2956, true
  %2961 = icmp eq i8 %2959, 0
  %2962 = and i1 %2961, %2960
  %.v72 = select i1 %2962, i64 129, i64 10
  %2963 = add i64 %2945, %.v72
  store i64 %2963, i64* %43, align 8, !tbaa !2428
  br i1 %2962, label %block_400b2b, label %block_400ab4

block_400891:                                     ; preds = %block_40088a, %block_4008db
  %2964 = phi i64 [ %.pre5, %block_40088a ], [ %1500, %block_4008db ]
  %2965 = load i64, i64* %RBP, align 8
  %2966 = add i64 %2965, -8
  %2967 = add i64 %2964, 4
  store i64 %2967, i64* %PC, align 8
  %2968 = inttoptr i64 %2966 to i32*
  %2969 = load i32, i32* %2968, align 4
  %2970 = add i32 %2969, -5
  %2971 = icmp ult i32 %2969, 5
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %14, align 1, !tbaa !2432
  %2973 = and i32 %2970, 255
  %2974 = tail call i32 @llvm.ctpop.i32(i32 %2973) #8
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  store i8 %2977, i8* %21, align 1, !tbaa !2446
  %2978 = xor i32 %2969, %2970
  %2979 = lshr i32 %2978, 4
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  store i8 %2981, i8* %27, align 1, !tbaa !2447
  %2982 = icmp eq i32 %2970, 0
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %30, align 1, !tbaa !2448
  %2984 = lshr i32 %2970, 31
  %2985 = trunc i32 %2984 to i8
  store i8 %2985, i8* %33, align 1, !tbaa !2449
  %2986 = lshr i32 %2969, 31
  %2987 = xor i32 %2984, %2986
  %2988 = add nuw nsw i32 %2987, %2986
  %2989 = icmp eq i32 %2988, 2
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %39, align 1, !tbaa !2450
  %2991 = icmp ne i8 %2985, 0
  %2992 = xor i1 %2991, %2989
  %.demorgan54 = or i1 %2982, %2992
  %.v55 = select i1 %.demorgan54, i64 10, i64 93
  %2993 = add i64 %2964, %.v55
  store i64 %2993, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan54, label %block_40089b, label %block_4008ee

block_401042:                                     ; preds = %block_401038
  %2994 = add i64 %697, -8
  %2995 = add i64 %714, 7
  store i64 %2995, i64* %PC, align 8
  %2996 = inttoptr i64 %2994 to i32*
  store i32 0, i32* %2996, align 4
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_401049

block_400f0d:                                     ; preds = %block_400f57, %block_400f06
  %2997 = phi i64 [ %3705, %block_400f57 ], [ %.pre37, %block_400f06 ]
  %2998 = load i64, i64* %RBP, align 8
  %2999 = add i64 %2998, -8
  %3000 = add i64 %2997, 4
  store i64 %3000, i64* %PC, align 8
  %3001 = inttoptr i64 %2999 to i32*
  %3002 = load i32, i32* %3001, align 4
  %3003 = add i32 %3002, -1
  %3004 = icmp eq i32 %3002, 0
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %14, align 1, !tbaa !2432
  %3006 = and i32 %3003, 255
  %3007 = tail call i32 @llvm.ctpop.i32(i32 %3006) #8
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  store i8 %3010, i8* %21, align 1, !tbaa !2446
  %3011 = xor i32 %3002, %3003
  %3012 = lshr i32 %3011, 4
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  store i8 %3014, i8* %27, align 1, !tbaa !2447
  %3015 = icmp eq i32 %3003, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %30, align 1, !tbaa !2448
  %3017 = lshr i32 %3003, 31
  %3018 = trunc i32 %3017 to i8
  store i8 %3018, i8* %33, align 1, !tbaa !2449
  %3019 = lshr i32 %3002, 31
  %3020 = xor i32 %3017, %3019
  %3021 = add nuw nsw i32 %3020, %3019
  %3022 = icmp eq i32 %3021, 2
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %39, align 1, !tbaa !2450
  %3024 = icmp ne i8 %3018, 0
  %3025 = xor i1 %3024, %3022
  %.demorgan106 = or i1 %3015, %3025
  %.v107 = select i1 %.demorgan106, i64 10, i64 93
  %3026 = add i64 %2997, %.v107
  store i64 %3026, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan106, label %block_400f17, label %block_400f6a

block_400c41:                                     ; preds = %block_400c08
  %3027 = add i64 %3708, -8
  %3028 = add i64 %3736, 8
  store i64 %3028, i64* %PC, align 8
  %3029 = inttoptr i64 %3027 to i32*
  %3030 = load i32, i32* %3029, align 4
  %3031 = add i32 %3030, 1
  %3032 = zext i32 %3031 to i64
  store i64 %3032, i64* %RAX, align 8, !tbaa !2428
  %3033 = icmp eq i32 %3030, -1
  %3034 = icmp eq i32 %3031, 0
  %3035 = or i1 %3033, %3034
  %3036 = zext i1 %3035 to i8
  store i8 %3036, i8* %14, align 1, !tbaa !2432
  %3037 = and i32 %3031, 255
  %3038 = tail call i32 @llvm.ctpop.i32(i32 %3037) #8
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  store i8 %3041, i8* %21, align 1, !tbaa !2446
  %3042 = xor i32 %3030, %3031
  %3043 = lshr i32 %3042, 4
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  store i8 %3045, i8* %27, align 1, !tbaa !2447
  %3046 = icmp eq i32 %3031, 0
  %3047 = zext i1 %3046 to i8
  store i8 %3047, i8* %30, align 1, !tbaa !2448
  %3048 = lshr i32 %3031, 31
  %3049 = trunc i32 %3048 to i8
  store i8 %3049, i8* %33, align 1, !tbaa !2449
  %3050 = lshr i32 %3030, 31
  %3051 = xor i32 %3048, %3050
  %3052 = add nuw nsw i32 %3051, %3048
  %3053 = icmp eq i32 %3052, 2
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %39, align 1, !tbaa !2450
  %3055 = add i64 %3736, 14
  store i64 %3055, i64* %PC, align 8
  store i32 %3031, i32* %3029, align 4
  %3056 = load i64, i64* %PC, align 8
  %3057 = add i64 %3056, -88
  store i64 %3057, i64* %43, align 8, !tbaa !2428
  br label %block_400bf7

block_401157:                                     ; preds = %block_4010d6
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 1, i8* %21, align 1, !tbaa !2446
  store i8 1, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i32 3, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 48) to i32*), align 16
  store i32 73, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 48) to i32*), align 16
  store i32 13, i32* bitcast (%piececount_type* @piececount to i32*), align 8
  store i32 3, i32* inttoptr (i64 add (i64 ptrtoint (%piececount_type* @piececount to i64), i64 4) to i32*), align 4
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%piececount_type* @piececount to i64), i64 8) to i32*), align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%piececount_type* @piececount to i64), i64 12) to i32*), align 4
  %3058 = add i64 %357, -16
  %3059 = add i64 %385, 75
  store i64 %3059, i64* %PC, align 8
  %3060 = inttoptr i64 %3058 to i32*
  store i32 73, i32* %3060, align 4
  %3061 = load i64, i64* %PC, align 8
  store i32 0, i32* bitcast (%kount_type* @kount to i32*), align 8
  %3062 = load i64, i64* %RBP, align 8
  %3063 = add i64 %3062, -16
  %3064 = add i64 %3061, 14
  store i64 %3064, i64* %PC, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RSI, align 8, !tbaa !2428
  %3068 = add i64 %3061, -3154
  %3069 = add i64 %3061, 19
  %3070 = load i64, i64* %6, align 8, !tbaa !2428
  %3071 = add i64 %3070, -8
  %3072 = inttoptr i64 %3071 to i64*
  store i64 %3069, i64* %3072, align 8
  store i64 %3071, i64* %6, align 8, !tbaa !2428
  store i64 %3068, i64* %43, align 8, !tbaa !2428
  %3073 = tail call %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* nonnull %0, i64 %3068, %struct.Memory* %2)
  %3074 = load i32, i32* %EAX, align 4
  %3075 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %3076 = and i32 %3074, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076) #8
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %3081 = icmp eq i32 %3074, 0
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %30, align 1, !tbaa !2448
  %3083 = lshr i32 %3074, 31
  %3084 = trunc i32 %3083 to i8
  store i8 %3084, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v125 = select i1 %3081, i64 31, i64 9
  %3085 = add i64 %3075, %.v125
  store i64 %3085, i64* %43, align 8, !tbaa !2428
  br i1 %3081, label %block_4011d4, label %block_4011be

block_400bf0:                                     ; preds = %block_400be6
  %3086 = add i64 %216, -8
  %3087 = add i64 %244, 7
  store i64 %3087, i64* %PC, align 8
  %3088 = inttoptr i64 %3086 to i32*
  store i32 0, i32* %3088, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400bf7

block_40123b:                                     ; preds = %block_401216, %block_401227
  %3089 = phi i64 [ %2207, %block_401216 ], [ %.pre50, %block_401227 ]
  %MEMORY.40 = phi %struct.Memory* [ %202, %block_401216 ], [ %1363, %block_401227 ]
  %3090 = add i64 %3089, 5
  br label %block_401240

block_400a38:                                     ; preds = %block_400a2e
  %3091 = add i64 %3301, -4
  %3092 = add i64 %3329, 3
  store i64 %3092, i64* %PC, align 8
  %3093 = inttoptr i64 %3091 to i32*
  %3094 = load i32, i32* %3093, align 4
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RAX, align 8, !tbaa !2428
  %3096 = add i64 %3301, -8
  %3097 = add i64 %3329, 6
  store i64 %3097, i64* %PC, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = zext i32 %3099 to i64
  store i64 %3100, i64* %RCX, align 8, !tbaa !2428
  %3101 = add i64 %3329, 9
  store i64 %3101, i64* %PC, align 8
  %3102 = load i32, i32* %3304, align 4
  %3103 = shl i32 %3102, 3
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RDX, align 8, !tbaa !2428
  %3105 = add i32 %3103, %3099
  %3106 = shl i32 %3105, 3
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RCX, align 8, !tbaa !2428
  %3108 = lshr i32 %3105, 28
  %3109 = and i32 %3108, 1
  %3110 = load i64, i64* %RAX, align 8
  %3111 = trunc i64 %3110 to i32
  %3112 = add i32 %3106, %3111
  %3113 = zext i32 %3112 to i64
  store i64 %3113, i64* %RAX, align 8, !tbaa !2428
  %3114 = icmp ult i32 %3112, %3111
  %3115 = icmp ult i32 %3112, %3106
  %3116 = or i1 %3114, %3115
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %14, align 1, !tbaa !2432
  %3118 = and i32 %3112, 255
  %3119 = tail call i32 @llvm.ctpop.i32(i32 %3118) #8
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  store i8 %3122, i8* %21, align 1, !tbaa !2446
  %3123 = xor i64 %3107, %3110
  %3124 = trunc i64 %3123 to i32
  %3125 = xor i32 %3124, %3112
  %3126 = lshr i32 %3125, 4
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  store i8 %3128, i8* %27, align 1, !tbaa !2447
  %3129 = icmp eq i32 %3112, 0
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %30, align 1, !tbaa !2448
  %3131 = lshr i32 %3112, 31
  %3132 = trunc i32 %3131 to i8
  store i8 %3132, i8* %33, align 1, !tbaa !2449
  %3133 = lshr i32 %3111, 31
  %3134 = xor i32 %3131, %3133
  %3135 = xor i32 %3131, %3109
  %3136 = add nuw nsw i32 %3134, %3135
  %3137 = icmp eq i32 %3136, 2
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %39, align 1, !tbaa !2450
  %3139 = sext i32 %3112 to i64
  store i64 %3139, i64* %RSI, align 8, !tbaa !2428
  %3140 = shl nsw i64 %3139, 2
  %3141 = add i64 %3140, add (i64 ptrtoint (%p_type* @p to i64), i64 2048)
  %3142 = add i64 %3329, 33
  store i64 %3142, i64* %PC, align 8
  %3143 = inttoptr i64 %3141 to i32*
  store i32 1, i32* %3143, align 4
  %3144 = load i64, i64* %RBP, align 8
  %3145 = add i64 %3144, -12
  %3146 = load i64, i64* %PC, align 8
  %3147 = add i64 %3146, 3
  store i64 %3147, i64* %PC, align 8
  %3148 = inttoptr i64 %3145 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = add i32 %3149, 1
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RAX, align 8, !tbaa !2428
  %3152 = icmp eq i32 %3149, -1
  %3153 = icmp eq i32 %3150, 0
  %3154 = or i1 %3152, %3153
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %14, align 1, !tbaa !2432
  %3156 = and i32 %3150, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156) #8
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %21, align 1, !tbaa !2446
  %3161 = xor i32 %3149, %3150
  %3162 = lshr i32 %3161, 4
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  store i8 %3164, i8* %27, align 1, !tbaa !2447
  %3165 = icmp eq i32 %3150, 0
  %3166 = zext i1 %3165 to i8
  store i8 %3166, i8* %30, align 1, !tbaa !2448
  %3167 = lshr i32 %3150, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %33, align 1, !tbaa !2449
  %3169 = lshr i32 %3149, 31
  %3170 = xor i32 %3167, %3169
  %3171 = add nuw nsw i32 %3170, %3167
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %39, align 1, !tbaa !2450
  %3174 = add i64 %3146, 9
  store i64 %3174, i64* %PC, align 8
  store i32 %3150, i32* %3148, align 4
  %3175 = load i64, i64* %PC, align 8
  %3176 = add i64 %3175, -52
  store i64 %3176, i64* %43, align 8, !tbaa !2428
  br label %block_400a2e

block_400ab4:                                     ; preds = %block_400aaa
  %3177 = add i64 %2946, -8
  %3178 = add i64 %2963, 7
  store i64 %3178, i64* %PC, align 8
  %3179 = inttoptr i64 %3177 to i32*
  store i32 0, i32* %3179, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400abb

block_40089b:                                     ; preds = %block_400891
  %3180 = add i64 %2965, -12
  %3181 = add i64 %2993, 7
  store i64 %3181, i64* %PC, align 8
  %3182 = inttoptr i64 %3180 to i32*
  store i32 1, i32* %3182, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4008a2

block_401008:                                     ; preds = %block_400fab
  %3183 = add i64 %1402, -4
  %3184 = add i64 %1419, 8
  store i64 %3184, i64* %PC, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = add i32 %3186, 1
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RAX, align 8, !tbaa !2428
  %3189 = icmp eq i32 %3186, -1
  %3190 = icmp eq i32 %3187, 0
  %3191 = or i1 %3189, %3190
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %14, align 1, !tbaa !2432
  %3193 = and i32 %3187, 255
  %3194 = tail call i32 @llvm.ctpop.i32(i32 %3193) #8
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = xor i8 %3196, 1
  store i8 %3197, i8* %21, align 1, !tbaa !2446
  %3198 = xor i32 %3186, %3187
  %3199 = lshr i32 %3198, 4
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  store i8 %3201, i8* %27, align 1, !tbaa !2447
  %3202 = icmp eq i32 %3187, 0
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %30, align 1, !tbaa !2448
  %3204 = lshr i32 %3187, 31
  %3205 = trunc i32 %3204 to i8
  store i8 %3205, i8* %33, align 1, !tbaa !2449
  %3206 = lshr i32 %3186, 31
  %3207 = xor i32 %3204, %3206
  %3208 = add nuw nsw i32 %3207, %3204
  %3209 = icmp eq i32 %3208, 2
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %39, align 1, !tbaa !2450
  %3211 = add i64 %1419, 14
  store i64 %3211, i64* %PC, align 8
  store i32 %3187, i32* %3185, align 4
  %3212 = load i64, i64* %PC, align 8
  %3213 = add i64 %3212, -124
  store i64 %3213, i64* %43, align 8, !tbaa !2428
  br label %block_400f9a

block_400fc6:                                     ; preds = %block_400fbc
  %3214 = add i64 %296, -4
  %3215 = add i64 %324, 3
  store i64 %3215, i64* %PC, align 8
  %3216 = inttoptr i64 %3214 to i32*
  %3217 = load i32, i32* %3216, align 4
  %3218 = zext i32 %3217 to i64
  store i64 %3218, i64* %RAX, align 8, !tbaa !2428
  %3219 = add i64 %296, -8
  %3220 = add i64 %324, 6
  store i64 %3220, i64* %PC, align 8
  %3221 = inttoptr i64 %3219 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RCX, align 8, !tbaa !2428
  %3224 = add i64 %324, 9
  store i64 %3224, i64* %PC, align 8
  %3225 = load i32, i32* %299, align 4
  %3226 = shl i32 %3225, 3
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RDX, align 8, !tbaa !2428
  %3228 = add i32 %3226, %3222
  %3229 = shl i32 %3228, 3
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RCX, align 8, !tbaa !2428
  %3231 = lshr i32 %3228, 28
  %3232 = and i32 %3231, 1
  %3233 = load i64, i64* %RAX, align 8
  %3234 = trunc i64 %3233 to i32
  %3235 = add i32 %3229, %3234
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %RAX, align 8, !tbaa !2428
  %3237 = icmp ult i32 %3235, %3234
  %3238 = icmp ult i32 %3235, %3229
  %3239 = or i1 %3237, %3238
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %14, align 1, !tbaa !2432
  %3241 = and i32 %3235, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241) #8
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %21, align 1, !tbaa !2446
  %3246 = xor i64 %3230, %3233
  %3247 = trunc i64 %3246 to i32
  %3248 = xor i32 %3247, %3235
  %3249 = lshr i32 %3248, 4
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  store i8 %3251, i8* %27, align 1, !tbaa !2447
  %3252 = icmp eq i32 %3235, 0
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %30, align 1, !tbaa !2448
  %3254 = lshr i32 %3235, 31
  %3255 = trunc i32 %3254 to i8
  store i8 %3255, i8* %33, align 1, !tbaa !2449
  %3256 = lshr i32 %3234, 31
  %3257 = xor i32 %3254, %3256
  %3258 = xor i32 %3254, %3232
  %3259 = add nuw nsw i32 %3257, %3258
  %3260 = icmp eq i32 %3259, 2
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %39, align 1, !tbaa !2450
  %3262 = sext i32 %3235 to i64
  store i64 %3262, i64* %RSI, align 8, !tbaa !2428
  %3263 = shl nsw i64 %3262, 2
  %3264 = add i64 %3263, add (i64 ptrtoint (%p_type* @p to i64), i64 20480)
  %3265 = add i64 %324, 33
  store i64 %3265, i64* %PC, align 8
  %3266 = inttoptr i64 %3264 to i32*
  store i32 1, i32* %3266, align 4
  %3267 = load i64, i64* %RBP, align 8
  %3268 = add i64 %3267, -12
  %3269 = load i64, i64* %PC, align 8
  %3270 = add i64 %3269, 3
  store i64 %3270, i64* %PC, align 8
  %3271 = inttoptr i64 %3268 to i32*
  %3272 = load i32, i32* %3271, align 4
  %3273 = add i32 %3272, 1
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RAX, align 8, !tbaa !2428
  %3275 = icmp eq i32 %3272, -1
  %3276 = icmp eq i32 %3273, 0
  %3277 = or i1 %3275, %3276
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %14, align 1, !tbaa !2432
  %3279 = and i32 %3273, 255
  %3280 = tail call i32 @llvm.ctpop.i32(i32 %3279) #8
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = xor i8 %3282, 1
  store i8 %3283, i8* %21, align 1, !tbaa !2446
  %3284 = xor i32 %3272, %3273
  %3285 = lshr i32 %3284, 4
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  store i8 %3287, i8* %27, align 1, !tbaa !2447
  %3288 = icmp eq i32 %3273, 0
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %30, align 1, !tbaa !2448
  %3290 = lshr i32 %3273, 31
  %3291 = trunc i32 %3290 to i8
  store i8 %3291, i8* %33, align 1, !tbaa !2449
  %3292 = lshr i32 %3272, 31
  %3293 = xor i32 %3290, %3292
  %3294 = add nuw nsw i32 %3293, %3290
  %3295 = icmp eq i32 %3294, 2
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %39, align 1, !tbaa !2450
  %3297 = add i64 %3269, 9
  store i64 %3297, i64* %PC, align 8
  store i32 %3273, i32* %3271, align 4
  %3298 = load i64, i64* %PC, align 8
  %3299 = add i64 %3298, -52
  store i64 %3299, i64* %43, align 8, !tbaa !2428
  br label %block_400fbc

block_400a2e:                                     ; preds = %block_400a27, %block_400a38
  %3300 = phi i64 [ %.pre14, %block_400a27 ], [ %3176, %block_400a38 ]
  %3301 = load i64, i64* %RBP, align 8
  %3302 = add i64 %3301, -12
  %3303 = add i64 %3300, 4
  store i64 %3303, i64* %PC, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = add i32 %3305, -3
  %3307 = icmp ult i32 %3305, 3
  %3308 = zext i1 %3307 to i8
  store i8 %3308, i8* %14, align 1, !tbaa !2432
  %3309 = and i32 %3306, 255
  %3310 = tail call i32 @llvm.ctpop.i32(i32 %3309) #8
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = xor i8 %3312, 1
  store i8 %3313, i8* %21, align 1, !tbaa !2446
  %3314 = xor i32 %3305, %3306
  %3315 = lshr i32 %3314, 4
  %3316 = trunc i32 %3315 to i8
  %3317 = and i8 %3316, 1
  store i8 %3317, i8* %27, align 1, !tbaa !2447
  %3318 = icmp eq i32 %3306, 0
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %30, align 1, !tbaa !2448
  %3320 = lshr i32 %3306, 31
  %3321 = trunc i32 %3320 to i8
  store i8 %3321, i8* %33, align 1, !tbaa !2449
  %3322 = lshr i32 %3305, 31
  %3323 = xor i32 %3320, %3322
  %3324 = add nuw nsw i32 %3323, %3322
  %3325 = icmp eq i32 %3324, 2
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %39, align 1, !tbaa !2450
  %3327 = icmp ne i8 %3321, 0
  %3328 = xor i1 %3327, %3325
  %.demorgan70 = or i1 %3318, %3328
  %.v71 = select i1 %.demorgan70, i64 10, i64 57
  %3329 = add i64 %3300, %.v71
  store i64 %3329, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan70, label %block_400a38, label %block_400a67

block_400a27:                                     ; preds = %block_400a1d
  %3330 = add i64 %3398, -12
  %3331 = add i64 %3415, 7
  store i64 %3331, i64* %PC, align 8
  %3332 = inttoptr i64 %3330 to i32*
  store i32 0, i32* %3332, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400a2e

block_400dd1:                                     ; preds = %block_400e1b, %block_400dca
  %3333 = phi i64 [ %3476, %block_400e1b ], [ %.pre31, %block_400dca ]
  %3334 = load i64, i64* %RBP, align 8
  %3335 = add i64 %3334, -8
  %3336 = add i64 %3333, 4
  store i64 %3336, i64* %PC, align 8
  %3337 = inttoptr i64 %3335 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = add i32 %3338, -2
  %3340 = icmp ult i32 %3338, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %14, align 1, !tbaa !2432
  %3342 = and i32 %3339, 255
  %3343 = tail call i32 @llvm.ctpop.i32(i32 %3342) #8
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  store i8 %3346, i8* %21, align 1, !tbaa !2446
  %3347 = xor i32 %3338, %3339
  %3348 = lshr i32 %3347, 4
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  store i8 %3350, i8* %27, align 1, !tbaa !2447
  %3351 = icmp eq i32 %3339, 0
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %30, align 1, !tbaa !2448
  %3353 = lshr i32 %3339, 31
  %3354 = trunc i32 %3353 to i8
  store i8 %3354, i8* %33, align 1, !tbaa !2449
  %3355 = lshr i32 %3338, 31
  %3356 = xor i32 %3353, %3355
  %3357 = add nuw nsw i32 %3356, %3355
  %3358 = icmp eq i32 %3357, 2
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %39, align 1, !tbaa !2450
  %3360 = icmp ne i8 %3354, 0
  %3361 = xor i1 %3360, %3358
  %.demorgan97 = or i1 %3351, %3361
  %.v98 = select i1 %.demorgan97, i64 10, i64 93
  %3362 = add i64 %3333, %.v98
  store i64 %3362, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan97, label %block_400ddb, label %block_400e2e

block_400b05:                                     ; preds = %block_400acc
  %3363 = add i64 %2563, -8
  %3364 = add i64 %2591, 8
  store i64 %3364, i64* %PC, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = add i32 %3366, 1
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RAX, align 8, !tbaa !2428
  %3369 = icmp eq i32 %3366, -1
  %3370 = icmp eq i32 %3367, 0
  %3371 = or i1 %3369, %3370
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %14, align 1, !tbaa !2432
  %3373 = and i32 %3367, 255
  %3374 = tail call i32 @llvm.ctpop.i32(i32 %3373) #8
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  store i8 %3377, i8* %21, align 1, !tbaa !2446
  %3378 = xor i32 %3366, %3367
  %3379 = lshr i32 %3378, 4
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  store i8 %3381, i8* %27, align 1, !tbaa !2447
  %3382 = icmp eq i32 %3367, 0
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %30, align 1, !tbaa !2448
  %3384 = lshr i32 %3367, 31
  %3385 = trunc i32 %3384 to i8
  store i8 %3385, i8* %33, align 1, !tbaa !2449
  %3386 = lshr i32 %3366, 31
  %3387 = xor i32 %3384, %3386
  %3388 = add nuw nsw i32 %3387, %3384
  %3389 = icmp eq i32 %3388, 2
  %3390 = zext i1 %3389 to i8
  store i8 %3390, i8* %39, align 1, !tbaa !2450
  %3391 = add i64 %2591, 14
  store i64 %3391, i64* %PC, align 8
  store i32 %3367, i32* %3365, align 4
  %3392 = load i64, i64* %PC, align 8
  %3393 = add i64 %3392, -88
  store i64 %3393, i64* %43, align 8, !tbaa !2428
  br label %block_400abb

block_400fb5:                                     ; preds = %block_400fab
  %3394 = add i64 %1402, -12
  %3395 = add i64 %1419, 7
  store i64 %3395, i64* %PC, align 8
  %3396 = inttoptr i64 %3394 to i32*
  store i32 0, i32* %3396, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400fbc

block_400a1d:                                     ; preds = %block_400a16, %block_400a67
  %3397 = phi i64 [ %.pre13, %block_400a16 ], [ %2561, %block_400a67 ]
  %3398 = load i64, i64* %RBP, align 8
  %3399 = add i64 %3398, -8
  %3400 = add i64 %3397, 4
  store i64 %3400, i64* %PC, align 8
  %3401 = inttoptr i64 %3399 to i32*
  %3402 = load i32, i32* %3401, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %3403 = and i32 %3402, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403) #8
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %3408 = icmp eq i32 %3402, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %30, align 1, !tbaa !2448
  %3410 = lshr i32 %3402, 31
  %3411 = trunc i32 %3410 to i8
  store i8 %3411, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %3412 = xor i1 %3408, true
  %3413 = icmp eq i8 %3411, 0
  %3414 = and i1 %3413, %3412
  %.v69 = select i1 %3414, i64 93, i64 10
  %3415 = add i64 %3397, %.v69
  store i64 %3415, i64* %43, align 8, !tbaa !2428
  br i1 %3414, label %block_400a7a, label %block_400a27

block_4010e7:                                     ; preds = %block_401131, %block_4010e0
  %3416 = phi i64 [ %956, %block_401131 ], [ %.pre46, %block_4010e0 ]
  %3417 = load i64, i64* %RBP, align 8
  %3418 = add i64 %3417, -8
  %3419 = add i64 %3416, 4
  store i64 %3419, i64* %PC, align 8
  %3420 = inttoptr i64 %3418 to i32*
  %3421 = load i32, i32* %3420, align 4
  %3422 = add i32 %3421, -1
  %3423 = icmp eq i32 %3421, 0
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %14, align 1, !tbaa !2432
  %3425 = and i32 %3422, 255
  %3426 = tail call i32 @llvm.ctpop.i32(i32 %3425) #8
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = xor i8 %3428, 1
  store i8 %3429, i8* %21, align 1, !tbaa !2446
  %3430 = xor i32 %3421, %3422
  %3431 = lshr i32 %3430, 4
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  store i8 %3433, i8* %27, align 1, !tbaa !2447
  %3434 = icmp eq i32 %3422, 0
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %30, align 1, !tbaa !2448
  %3436 = lshr i32 %3422, 31
  %3437 = trunc i32 %3436 to i8
  store i8 %3437, i8* %33, align 1, !tbaa !2449
  %3438 = lshr i32 %3421, 31
  %3439 = xor i32 %3436, %3438
  %3440 = add nuw nsw i32 %3439, %3438
  %3441 = icmp eq i32 %3440, 2
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %39, align 1, !tbaa !2450
  %3443 = icmp ne i8 %3437, 0
  %3444 = xor i1 %3443, %3441
  %.demorgan121 = or i1 %3434, %3444
  %.v122 = select i1 %.demorgan121, i64 10, i64 93
  %3445 = add i64 %3416, %.v122
  store i64 %3445, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan121, label %block_4010f1, label %block_401144

block_400e1b:                                     ; preds = %block_400de2
  %3446 = add i64 %1740, -8
  %3447 = add i64 %1757, 8
  store i64 %3447, i64* %PC, align 8
  %3448 = inttoptr i64 %3446 to i32*
  %3449 = load i32, i32* %3448, align 4
  %3450 = add i32 %3449, 1
  %3451 = zext i32 %3450 to i64
  store i64 %3451, i64* %RAX, align 8, !tbaa !2428
  %3452 = icmp eq i32 %3449, -1
  %3453 = icmp eq i32 %3450, 0
  %3454 = or i1 %3452, %3453
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %14, align 1, !tbaa !2432
  %3456 = and i32 %3450, 255
  %3457 = tail call i32 @llvm.ctpop.i32(i32 %3456) #8
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  %3460 = xor i8 %3459, 1
  store i8 %3460, i8* %21, align 1, !tbaa !2446
  %3461 = xor i32 %3449, %3450
  %3462 = lshr i32 %3461, 4
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  store i8 %3464, i8* %27, align 1, !tbaa !2447
  %3465 = icmp eq i32 %3450, 0
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %30, align 1, !tbaa !2448
  %3467 = lshr i32 %3450, 31
  %3468 = trunc i32 %3467 to i8
  store i8 %3468, i8* %33, align 1, !tbaa !2449
  %3469 = lshr i32 %3449, 31
  %3470 = xor i32 %3467, %3469
  %3471 = add nuw nsw i32 %3470, %3467
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %39, align 1, !tbaa !2450
  %3474 = add i64 %1757, 14
  store i64 %3474, i64* %PC, align 8
  store i32 %3450, i32* %3448, align 4
  %3475 = load i64, i64* %PC, align 8
  %3476 = add i64 %3475, -88
  store i64 %3476, i64* %43, align 8, !tbaa !2428
  br label %block_400dd1

block_4010f1:                                     ; preds = %block_4010e7
  %3477 = add i64 %3417, -12
  %3478 = add i64 %3445, 7
  store i64 %3478, i64* %PC, align 8
  %3479 = inttoptr i64 %3477 to i32*
  store i32 0, i32* %3479, align 4
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_4010f8

block_400b59:                                     ; preds = %block_400ba3, %block_400b52
  %3480 = phi i64 [ %2457, %block_400ba3 ], [ %.pre19, %block_400b52 ]
  %3481 = load i64, i64* %RBP, align 8
  %3482 = add i64 %3481, -8
  %3483 = add i64 %3480, 4
  store i64 %3483, i64* %PC, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = add i32 %3485, -3
  %3487 = icmp ult i32 %3485, 3
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %14, align 1, !tbaa !2432
  %3489 = and i32 %3486, 255
  %3490 = tail call i32 @llvm.ctpop.i32(i32 %3489) #8
  %3491 = trunc i32 %3490 to i8
  %3492 = and i8 %3491, 1
  %3493 = xor i8 %3492, 1
  store i8 %3493, i8* %21, align 1, !tbaa !2446
  %3494 = xor i32 %3485, %3486
  %3495 = lshr i32 %3494, 4
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  store i8 %3497, i8* %27, align 1, !tbaa !2447
  %3498 = icmp eq i32 %3486, 0
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %30, align 1, !tbaa !2448
  %3500 = lshr i32 %3486, 31
  %3501 = trunc i32 %3500 to i8
  store i8 %3501, i8* %33, align 1, !tbaa !2449
  %3502 = lshr i32 %3485, 31
  %3503 = xor i32 %3500, %3502
  %3504 = add nuw nsw i32 %3503, %3502
  %3505 = icmp eq i32 %3504, 2
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %39, align 1, !tbaa !2450
  %3507 = icmp ne i8 %3501, 0
  %3508 = xor i1 %3507, %3505
  %.demorgan79 = or i1 %3498, %3508
  %.v80 = select i1 %.demorgan79, i64 10, i64 93
  %3509 = add i64 %3480, %.v80
  store i64 %3509, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan79, label %block_400b63, label %block_400bb6

block_400a16:                                     ; preds = %block_400a0c
  %3510 = add i64 %3646, -8
  %3511 = add i64 %3674, 7
  store i64 %3511, i64* %PC, align 8
  %3512 = inttoptr i64 %3510 to i32*
  store i32 0, i32* %3512, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400a1d

block_400c12:                                     ; preds = %block_400c08
  %3513 = add i64 %3708, -4
  %3514 = add i64 %3736, 3
  store i64 %3514, i64* %PC, align 8
  %3515 = inttoptr i64 %3513 to i32*
  %3516 = load i32, i32* %3515, align 4
  %3517 = zext i32 %3516 to i64
  store i64 %3517, i64* %RAX, align 8, !tbaa !2428
  %3518 = add i64 %3708, -8
  %3519 = add i64 %3736, 6
  store i64 %3519, i64* %PC, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RCX, align 8, !tbaa !2428
  %3523 = add i64 %3736, 9
  store i64 %3523, i64* %PC, align 8
  %3524 = load i32, i32* %3711, align 4
  %3525 = shl i32 %3524, 3
  %3526 = zext i32 %3525 to i64
  store i64 %3526, i64* %RDX, align 8, !tbaa !2428
  %3527 = add i32 %3525, %3521
  %3528 = shl i32 %3527, 3
  %3529 = zext i32 %3528 to i64
  store i64 %3529, i64* %RCX, align 8, !tbaa !2428
  %3530 = lshr i32 %3527, 28
  %3531 = and i32 %3530, 1
  %3532 = load i64, i64* %RAX, align 8
  %3533 = trunc i64 %3532 to i32
  %3534 = add i32 %3528, %3533
  %3535 = zext i32 %3534 to i64
  store i64 %3535, i64* %RAX, align 8, !tbaa !2428
  %3536 = icmp ult i32 %3534, %3533
  %3537 = icmp ult i32 %3534, %3528
  %3538 = or i1 %3536, %3537
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %14, align 1, !tbaa !2432
  %3540 = and i32 %3534, 255
  %3541 = tail call i32 @llvm.ctpop.i32(i32 %3540) #8
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  store i8 %3544, i8* %21, align 1, !tbaa !2446
  %3545 = xor i64 %3529, %3532
  %3546 = trunc i64 %3545 to i32
  %3547 = xor i32 %3546, %3534
  %3548 = lshr i32 %3547, 4
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  store i8 %3550, i8* %27, align 1, !tbaa !2447
  %3551 = icmp eq i32 %3534, 0
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %30, align 1, !tbaa !2448
  %3553 = lshr i32 %3534, 31
  %3554 = trunc i32 %3553 to i8
  store i8 %3554, i8* %33, align 1, !tbaa !2449
  %3555 = lshr i32 %3533, 31
  %3556 = xor i32 %3553, %3555
  %3557 = xor i32 %3553, %3531
  %3558 = add nuw nsw i32 %3556, %3557
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %39, align 1, !tbaa !2450
  %3561 = sext i32 %3534 to i64
  store i64 %3561, i64* %RSI, align 8, !tbaa !2428
  %3562 = shl nsw i64 %3561, 2
  %3563 = add i64 %3562, add (i64 ptrtoint (%p_type* @p to i64), i64 8192)
  %3564 = add i64 %3736, 33
  store i64 %3564, i64* %PC, align 8
  %3565 = inttoptr i64 %3563 to i32*
  store i32 1, i32* %3565, align 4
  %3566 = load i64, i64* %RBP, align 8
  %3567 = add i64 %3566, -12
  %3568 = load i64, i64* %PC, align 8
  %3569 = add i64 %3568, 3
  store i64 %3569, i64* %PC, align 8
  %3570 = inttoptr i64 %3567 to i32*
  %3571 = load i32, i32* %3570, align 4
  %3572 = add i32 %3571, 1
  %3573 = zext i32 %3572 to i64
  store i64 %3573, i64* %RAX, align 8, !tbaa !2428
  %3574 = icmp eq i32 %3571, -1
  %3575 = icmp eq i32 %3572, 0
  %3576 = or i1 %3574, %3575
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %14, align 1, !tbaa !2432
  %3578 = and i32 %3572, 255
  %3579 = tail call i32 @llvm.ctpop.i32(i32 %3578) #8
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = xor i8 %3581, 1
  store i8 %3582, i8* %21, align 1, !tbaa !2446
  %3583 = xor i32 %3571, %3572
  %3584 = lshr i32 %3583, 4
  %3585 = trunc i32 %3584 to i8
  %3586 = and i8 %3585, 1
  store i8 %3586, i8* %27, align 1, !tbaa !2447
  %3587 = icmp eq i32 %3572, 0
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %30, align 1, !tbaa !2448
  %3589 = lshr i32 %3572, 31
  %3590 = trunc i32 %3589 to i8
  store i8 %3590, i8* %33, align 1, !tbaa !2449
  %3591 = lshr i32 %3571, 31
  %3592 = xor i32 %3589, %3591
  %3593 = add nuw nsw i32 %3592, %3589
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %39, align 1, !tbaa !2450
  %3596 = add i64 %3568, 9
  store i64 %3596, i64* %PC, align 8
  store i32 %3572, i32* %3570, align 4
  %3597 = load i64, i64* %PC, align 8
  %3598 = add i64 %3597, -52
  store i64 %3598, i64* %43, align 8, !tbaa !2428
  br label %block_400c08

block_400c8e:                                     ; preds = %block_400c84
  %3599 = add i64 %2209, -8
  %3600 = add i64 %2226, 7
  store i64 %3600, i64* %PC, align 8
  %3601 = inttoptr i64 %3599 to i32*
  store i32 0, i32* %3601, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400c95

block_40085c:                                     ; preds = %block_40084f
  %3602 = add i64 %2883, 4
  store i64 %3602, i64* %PC, align 8
  %3603 = load i32, i32* %2857, align 4
  %3604 = sext i32 %3603 to i64
  store i64 %3604, i64* %RAX, align 8, !tbaa !2428
  %3605 = shl nsw i64 %3604, 2
  %3606 = add i64 %3605, ptrtoint (%puzzl_type* @puzzl to i64)
  %3607 = add i64 %2883, 15
  store i64 %3607, i64* %PC, align 8
  %3608 = inttoptr i64 %3606 to i32*
  store i32 1, i32* %3608, align 4
  %3609 = load i64, i64* %RBP, align 8
  %3610 = add i64 %3609, -16
  %3611 = load i64, i64* %PC, align 8
  %3612 = add i64 %3611, 3
  store i64 %3612, i64* %PC, align 8
  %3613 = inttoptr i64 %3610 to i32*
  %3614 = load i32, i32* %3613, align 4
  %3615 = add i32 %3614, 1
  %3616 = zext i32 %3615 to i64
  store i64 %3616, i64* %RAX, align 8, !tbaa !2428
  %3617 = icmp eq i32 %3614, -1
  %3618 = icmp eq i32 %3615, 0
  %3619 = or i1 %3617, %3618
  %3620 = zext i1 %3619 to i8
  store i8 %3620, i8* %14, align 1, !tbaa !2432
  %3621 = and i32 %3615, 255
  %3622 = tail call i32 @llvm.ctpop.i32(i32 %3621) #8
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  store i8 %3625, i8* %21, align 1, !tbaa !2446
  %3626 = xor i32 %3614, %3615
  %3627 = lshr i32 %3626, 4
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  store i8 %3629, i8* %27, align 1, !tbaa !2447
  %3630 = icmp eq i32 %3615, 0
  %3631 = zext i1 %3630 to i8
  store i8 %3631, i8* %30, align 1, !tbaa !2448
  %3632 = lshr i32 %3615, 31
  %3633 = trunc i32 %3632 to i8
  store i8 %3633, i8* %33, align 1, !tbaa !2449
  %3634 = lshr i32 %3614, 31
  %3635 = xor i32 %3632, %3634
  %3636 = add nuw nsw i32 %3635, %3632
  %3637 = icmp eq i32 %3636, 2
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %39, align 1, !tbaa !2450
  %3639 = add i64 %3611, 9
  store i64 %3639, i64* %PC, align 8
  store i32 %3615, i32* %3613, align 4
  %3640 = load i64, i64* %PC, align 8
  %3641 = add i64 %3640, -37
  store i64 %3641, i64* %43, align 8, !tbaa !2428
  br label %block_40084f

block_400fa4:                                     ; preds = %block_400f9a
  %3642 = add i64 %387, -8
  %3643 = add i64 %415, 7
  store i64 %3643, i64* %PC, align 8
  %3644 = inttoptr i64 %3642 to i32*
  store i32 0, i32* %3644, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400fab

block_400a0c:                                     ; preds = %block_4009ef, %block_400a7a
  %3645 = phi i64 [ %.pre12, %block_4009ef ], [ %2423, %block_400a7a ]
  %3646 = load i64, i64* %RBP, align 8
  %3647 = add i64 %3646, -4
  %3648 = add i64 %3645, 4
  store i64 %3648, i64* %PC, align 8
  %3649 = inttoptr i64 %3647 to i32*
  %3650 = load i32, i32* %3649, align 4
  %3651 = add i32 %3650, -1
  %3652 = icmp eq i32 %3650, 0
  %3653 = zext i1 %3652 to i8
  store i8 %3653, i8* %14, align 1, !tbaa !2432
  %3654 = and i32 %3651, 255
  %3655 = tail call i32 @llvm.ctpop.i32(i32 %3654) #8
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  store i8 %3658, i8* %21, align 1, !tbaa !2446
  %3659 = xor i32 %3650, %3651
  %3660 = lshr i32 %3659, 4
  %3661 = trunc i32 %3660 to i8
  %3662 = and i8 %3661, 1
  store i8 %3662, i8* %27, align 1, !tbaa !2447
  %3663 = icmp eq i32 %3651, 0
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %30, align 1, !tbaa !2448
  %3665 = lshr i32 %3651, 31
  %3666 = trunc i32 %3665 to i8
  store i8 %3666, i8* %33, align 1, !tbaa !2449
  %3667 = lshr i32 %3650, 31
  %3668 = xor i32 %3665, %3667
  %3669 = add nuw nsw i32 %3668, %3667
  %3670 = icmp eq i32 %3669, 2
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %39, align 1, !tbaa !2450
  %3672 = icmp ne i8 %3666, 0
  %3673 = xor i1 %3672, %3670
  %.demorgan67 = or i1 %3663, %3673
  %.v68 = select i1 %.demorgan67, i64 10, i64 129
  %3674 = add i64 %3645, %.v68
  store i64 %3674, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan67, label %block_400a16, label %block_400a8d

block_400f57:                                     ; preds = %block_400f1e
  %3675 = add i64 %1213, -8
  %3676 = add i64 %1230, 8
  store i64 %3676, i64* %PC, align 8
  %3677 = inttoptr i64 %3675 to i32*
  %3678 = load i32, i32* %3677, align 4
  %3679 = add i32 %3678, 1
  %3680 = zext i32 %3679 to i64
  store i64 %3680, i64* %RAX, align 8, !tbaa !2428
  %3681 = icmp eq i32 %3678, -1
  %3682 = icmp eq i32 %3679, 0
  %3683 = or i1 %3681, %3682
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %14, align 1, !tbaa !2432
  %3685 = and i32 %3679, 255
  %3686 = tail call i32 @llvm.ctpop.i32(i32 %3685) #8
  %3687 = trunc i32 %3686 to i8
  %3688 = and i8 %3687, 1
  %3689 = xor i8 %3688, 1
  store i8 %3689, i8* %21, align 1, !tbaa !2446
  %3690 = xor i32 %3678, %3679
  %3691 = lshr i32 %3690, 4
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  store i8 %3693, i8* %27, align 1, !tbaa !2447
  %3694 = icmp eq i32 %3679, 0
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %30, align 1, !tbaa !2448
  %3696 = lshr i32 %3679, 31
  %3697 = trunc i32 %3696 to i8
  store i8 %3697, i8* %33, align 1, !tbaa !2449
  %3698 = lshr i32 %3678, 31
  %3699 = xor i32 %3696, %3698
  %3700 = add nuw nsw i32 %3699, %3696
  %3701 = icmp eq i32 %3700, 2
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %39, align 1, !tbaa !2450
  %3703 = add i64 %1230, 14
  store i64 %3703, i64* %PC, align 8
  store i32 %3679, i32* %3677, align 4
  %3704 = load i64, i64* %PC, align 8
  %3705 = add i64 %3704, -88
  store i64 %3705, i64* %43, align 8, !tbaa !2428
  br label %block_400f0d

block_4009ef:                                     ; preds = %block_40096e
  store i32 0, i32* bitcast (%class_type* @class to i32*), align 16
  store i32 11, i32* bitcast (%piecemax_type* @piecemax to i32*), align 16
  %3706 = add i64 %1208, 29
  store i64 %3706, i64* %PC, align 8
  store i32 0, i32* %1183, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400a0c

block_400c08:                                     ; preds = %block_400c01, %block_400c12
  %3707 = phi i64 [ %.pre23, %block_400c01 ], [ %3598, %block_400c12 ]
  %3708 = load i64, i64* %RBP, align 8
  %3709 = add i64 %3708, -12
  %3710 = add i64 %3707, 4
  store i64 %3710, i64* %PC, align 8
  %3711 = inttoptr i64 %3709 to i32*
  %3712 = load i32, i32* %3711, align 4
  %3713 = add i32 %3712, -1
  %3714 = icmp eq i32 %3712, 0
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %14, align 1, !tbaa !2432
  %3716 = and i32 %3713, 255
  %3717 = tail call i32 @llvm.ctpop.i32(i32 %3716) #8
  %3718 = trunc i32 %3717 to i8
  %3719 = and i8 %3718, 1
  %3720 = xor i8 %3719, 1
  store i8 %3720, i8* %21, align 1, !tbaa !2446
  %3721 = xor i32 %3712, %3713
  %3722 = lshr i32 %3721, 4
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  store i8 %3724, i8* %27, align 1, !tbaa !2447
  %3725 = icmp eq i32 %3713, 0
  %3726 = zext i1 %3725 to i8
  store i8 %3726, i8* %30, align 1, !tbaa !2448
  %3727 = lshr i32 %3713, 31
  %3728 = trunc i32 %3727 to i8
  store i8 %3728, i8* %33, align 1, !tbaa !2449
  %3729 = lshr i32 %3712, 31
  %3730 = xor i32 %3727, %3729
  %3731 = add nuw nsw i32 %3730, %3729
  %3732 = icmp eq i32 %3731, 2
  %3733 = zext i1 %3732 to i8
  store i8 %3733, i8* %39, align 1, !tbaa !2450
  %3734 = icmp ne i8 %3728, 0
  %3735 = xor i1 %3734, %3732
  %.demorgan85 = or i1 %3725, %3735
  %.v86 = select i1 %.demorgan85, i64 10, i64 57
  %3736 = add i64 %3707, %.v86
  store i64 %3736, i64* %43, align 8, !tbaa !2428
  br i1 %.demorgan85, label %block_400c12, label %block_400c41

block_400c01:                                     ; preds = %block_400bf7
  %3737 = add i64 %59, -12
  %3738 = add i64 %76, 7
  store i64 %3738, i64* %PC, align 8
  %3739 = inttoptr i64 %3737 to i32*
  store i32 0, i32* %3739, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_400c08
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e0_Place(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e0:
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4005f1

block_40069d:                                     ; preds = %block_40068b
  %34 = add i64 %183, 3
  store i64 %34, i64* %PC, align 8
  %35 = load i32, i32* %275, align 4
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %RAX, align 8, !tbaa !2428
  %37 = add i64 %272, -4
  %38 = add i64 %183, 6
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i32*
  store i32 %35, i32* %39, align 4
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 31
  store i64 %41, i64* %33, align 8, !tbaa !2428
  br label %block_4006c2

block_40063c:                                     ; preds = %block_400605, %block_400628
  %42 = phi i64 [ %319, %block_400605 ], [ %.pre3, %block_400628 ]
  %43 = phi i64 [ %270, %block_400605 ], [ %.pre2, %block_400628 ]
  %44 = add i64 %42, -16
  %45 = add i64 %43, 8
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %RAX, align 8, !tbaa !2428
  %50 = icmp eq i32 %47, -1
  %51 = icmp eq i32 %48, 0
  %52 = or i1 %50, %51
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %27, align 1, !tbaa !2432
  %54 = and i32 %48, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %28, align 1, !tbaa !2446
  %59 = xor i32 %47, %48
  %60 = lshr i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %29, align 1, !tbaa !2447
  %63 = icmp eq i32 %48, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %30, align 1, !tbaa !2448
  %65 = lshr i32 %48, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %31, align 1, !tbaa !2449
  %67 = lshr i32 %47, 31
  %68 = xor i32 %65, %67
  %69 = add nuw nsw i32 %68, %65
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %32, align 1, !tbaa !2450
  %72 = add i64 %43, 14
  store i64 %72, i64* %PC, align 8
  store i32 %48, i32* %46, align 4
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, -89
  store i64 %74, i64* %33, align 8, !tbaa !2428
  br label %block_4005f1

block_4006bb:                                     ; preds = %block_40067e
  %75 = add i64 %272, -4
  %76 = add i64 %301, 7
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  store i32 0, i32* %77, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_4006c2

block_4006a8:                                     ; preds = %block_40068b
  %78 = add i64 %183, 8
  store i64 %78, i64* %PC, align 8
  %79 = load i32, i32* %275, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = icmp eq i32 %79, -1
  %83 = icmp eq i32 %80, 0
  %84 = or i1 %82, %83
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %27, align 1, !tbaa !2432
  %86 = and i32 %80, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #8
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %28, align 1, !tbaa !2446
  %91 = xor i32 %79, %80
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %29, align 1, !tbaa !2447
  %95 = icmp eq i32 %80, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %30, align 1, !tbaa !2448
  %97 = lshr i32 %80, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %31, align 1, !tbaa !2449
  %99 = lshr i32 %79, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %97
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %32, align 1, !tbaa !2450
  %104 = add i64 %183, 14
  store i64 %104, i64* %PC, align 8
  store i32 %80, i32* %275, align 4
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, -56
  store i64 %106, i64* %33, align 8, !tbaa !2428
  br label %block_40067e

block_40064f:                                     ; preds = %block_4005f1
  %107 = add i64 %361, 4
  store i64 %107, i64* %PC, align 8
  %108 = load i32, i32* %327, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = shl nsw i64 %109, 2
  %111 = add i64 %110, ptrtoint (%class_type* @class to i64)
  %112 = add i64 %361, 12
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = shl nsw i64 %115, 2
  %117 = add i64 %116, ptrtoint (%piececount_type* @piececount to i64)
  %118 = add i64 %361, 19
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, -1
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX, align 8, !tbaa !2428
  %123 = icmp eq i32 %120, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %27, align 1, !tbaa !2432
  %125 = and i32 %121, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125) #8
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %28, align 1, !tbaa !2446
  %130 = xor i32 %120, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %29, align 1, !tbaa !2447
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %30, align 1, !tbaa !2448
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %31, align 1, !tbaa !2449
  %138 = lshr i32 %120, 31
  %139 = xor i32 %136, %138
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %32, align 1, !tbaa !2450
  %143 = add i64 %361, 26
  store i64 %143, i64* %PC, align 8
  %144 = load i32, i32* %327, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = shl nsw i64 %145, 2
  %147 = add i64 %146, ptrtoint (%class_type* @class to i64)
  %148 = add i64 %361, 34
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = shl nsw i64 %151, 2
  %153 = add i64 %152, ptrtoint (%piececount_type* @piececount to i64)
  %154 = add i64 %361, 41
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 %121, i32* %155, align 4
  %156 = load i64, i64* %RBP, align 8
  %157 = add i64 %156, -12
  %158 = load i64, i64* %PC, align 8
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %157 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RCX, align 8, !tbaa !2428
  %163 = add i64 %156, -16
  %164 = add i64 %158, 6
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 %161, i32* %165, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_40067e

block_40068b:                                     ; preds = %block_40067e
  %166 = add i64 %301, 4
  store i64 %166, i64* %PC, align 8
  %167 = load i32, i32* %275, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = shl nsw i64 %168, 2
  %170 = add i64 %169, ptrtoint (%puzzl_type* @puzzl to i64)
  %171 = add i64 %301, 12
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %174 = and i32 %173, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #8
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %179 = icmp eq i32 %173, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %30, align 1, !tbaa !2448
  %181 = lshr i32 %173, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v9 = select i1 %179, i64 18, i64 29
  %183 = add i64 %301, %.v9
  store i64 %183, i64* %33, align 8, !tbaa !2428
  br i1 %179, label %block_40069d, label %block_4006a8

block_400628:                                     ; preds = %block_400605
  %184 = add i64 %319, -12
  %185 = add i64 %270, 3
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = add i64 %270, 6
  store i64 %189, i64* %PC, align 8
  %190 = load i32, i32* %322, align 4
  %191 = add i32 %190, %187
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = icmp ult i32 %191, %187
  %194 = icmp ult i32 %191, %190
  %195 = or i1 %193, %194
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %27, align 1, !tbaa !2432
  %197 = and i32 %191, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #8
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %28, align 1, !tbaa !2446
  %202 = xor i32 %190, %187
  %203 = xor i32 %202, %191
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %29, align 1, !tbaa !2447
  %207 = icmp eq i32 %191, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %30, align 1, !tbaa !2448
  %209 = lshr i32 %191, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %31, align 1, !tbaa !2449
  %211 = lshr i32 %187, 31
  %212 = lshr i32 %190, 31
  %213 = xor i32 %209, %211
  %214 = xor i32 %209, %212
  %215 = add nuw nsw i32 %213, %214
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %32, align 1, !tbaa !2450
  %218 = sext i32 %191 to i64
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = shl nsw i64 %218, 2
  %220 = add i64 %219, ptrtoint (%puzzl_type* @puzzl to i64)
  %221 = add i64 %270, 20
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  store i32 1, i32* %222, align 4
  %.pre2 = load i64, i64* %PC, align 8
  %.pre3 = load i64, i64* %RBP, align 8
  br label %block_40063c

block_400605:                                     ; preds = %block_4005f1
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %223 = add i64 %361, 14
  store i64 %223, i64* %PC, align 8
  %224 = load i32, i32* %327, align 4
  %225 = sext i32 %224 to i64
  %226 = shl nsw i64 %225, 11
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = lshr i64 %225, 52
  %228 = and i64 %227, 1
  %229 = add i64 %226, ptrtoint (%p_type* @p to i64)
  store i64 %229, i64* %RAX, align 8, !tbaa !2428
  %230 = icmp ult i64 %229, ptrtoint (%p_type* @p to i64)
  %231 = icmp ult i64 %229, %226
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %27, align 1, !tbaa !2432
  %234 = trunc i64 %229 to i32
  %235 = and i32 %234, 240
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235) #8
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %28, align 1, !tbaa !2446
  %240 = xor i64 %229, ptrtoint (%p_type* @p to i64)
  %241 = lshr exact i64 %240, 4
  %242 = trunc i64 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %29, align 1, !tbaa !2447
  %244 = icmp eq i64 %229, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %30, align 1, !tbaa !2448
  %246 = lshr i64 %229, 63
  %247 = trunc i64 %246 to i8
  store i8 %247, i8* %31, align 1, !tbaa !2449
  %248 = xor i64 %246, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %249 = xor i64 %246, %228
  %250 = add nuw nsw i64 %248, %249
  %251 = icmp eq i64 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %32, align 1, !tbaa !2450
  %253 = add i64 %361, 25
  store i64 %253, i64* %PC, align 8
  %254 = load i32, i32* %322, align 4
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %RCX, align 8, !tbaa !2428
  %256 = shl nsw i64 %255, 2
  %257 = add i64 %256, %229
  %258 = add i64 %361, 29
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %261 = and i32 %260, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261) #8
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %266 = icmp eq i32 %260, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %30, align 1, !tbaa !2448
  %268 = lshr i32 %260, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v6 = select i1 %266, i64 55, i64 35
  %270 = add i64 %361, %.v6
  store i64 %270, i64* %33, align 8, !tbaa !2428
  br i1 %266, label %block_40063c, label %block_400628

block_40067e:                                     ; preds = %block_40064f, %block_4006a8
  %271 = phi i64 [ %.pre4, %block_40064f ], [ %106, %block_4006a8 ]
  %272 = load i64, i64* %RBP, align 8
  %273 = add i64 %272, -16
  %274 = add i64 %271, 7
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = add i32 %276, -511
  %278 = icmp ult i32 %276, 511
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %27, align 1, !tbaa !2432
  %280 = and i32 %277, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #8
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %28, align 1, !tbaa !2446
  %285 = xor i32 %276, 16
  %286 = xor i32 %285, %277
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %29, align 1, !tbaa !2447
  %290 = icmp eq i32 %277, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %30, align 1, !tbaa !2448
  %292 = lshr i32 %277, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %31, align 1, !tbaa !2449
  %294 = lshr i32 %276, 31
  %295 = xor i32 %292, %294
  %296 = add nuw nsw i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %32, align 1, !tbaa !2450
  %299 = icmp ne i8 %293, 0
  %300 = xor i1 %299, %297
  %.demorgan7 = or i1 %290, %300
  %.v8 = select i1 %.demorgan7, i64 13, i64 61
  %301 = add i64 %271, %.v8
  store i64 %301, i64* %33, align 8, !tbaa !2428
  br i1 %.demorgan7, label %block_40068b, label %block_4006bb

block_4006c2:                                     ; preds = %block_4006bb, %block_40069d
  %302 = phi i64 [ %.pre5, %block_4006bb ], [ %41, %block_40069d ]
  %303 = load i64, i64* %RBP, align 8
  %304 = add i64 %303, -4
  %305 = add i64 %302, 3
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = add i64 %302, 4
  store i64 %309, i64* %PC, align 8
  %310 = load i64, i64* %7, align 8, !tbaa !2428
  %311 = add i64 %310, 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RBP, align 8, !tbaa !2428
  store i64 %311, i64* %7, align 8, !tbaa !2428
  %314 = add i64 %302, 5
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %311 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %33, align 8, !tbaa !2428
  %317 = add i64 %310, 16
  store i64 %317, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005f1:                                     ; preds = %block_40063c, %block_4005e0
  %318 = phi i64 [ %.pre, %block_4005e0 ], [ %74, %block_40063c ]
  %319 = load i64, i64* %RBP, align 8
  %320 = add i64 %319, -16
  %321 = add i64 %318, 3
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = add i64 %319, -8
  %326 = add i64 %318, 7
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  %330 = shl nsw i64 %329, 2
  %331 = add i64 %330, ptrtoint (%piecemax_type* @piecemax to i64)
  %332 = add i64 %318, 14
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sub i32 %323, %334
  %336 = icmp ult i32 %323, %334
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %27, align 1, !tbaa !2432
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338) #8
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %28, align 1, !tbaa !2446
  %343 = xor i32 %334, %323
  %344 = xor i32 %343, %335
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %29, align 1, !tbaa !2447
  %348 = icmp eq i32 %335, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %30, align 1, !tbaa !2448
  %350 = lshr i32 %335, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %31, align 1, !tbaa !2449
  %352 = lshr i32 %323, 31
  %353 = lshr i32 %334, 31
  %354 = xor i32 %353, %352
  %355 = xor i32 %350, %352
  %356 = add nuw nsw i32 %355, %354
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %32, align 1, !tbaa !2450
  %359 = icmp ne i8 %351, 0
  %360 = xor i1 %359, %357
  %.demorgan = or i1 %348, %360
  %.v = select i1 %.demorgan, i64 20, i64 94
  %361 = add i64 %318, %.v
  store i64 %361, i64* %33, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400605, label %block_40064f
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_Rand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
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
  %19 = and i64 %18, 65535
  store i8 0, i8* %12, align 1, !tbaa !2432
  %and.shrunk = trunc i64 %18 to i32
  %20 = and i32 %and.shrunk, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %13, align 1, !tbaa !2446
  %25 = icmp eq i64 %19, 0
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  store i64 %19, i64* bitcast (%seed_type* @seed to i64*), align 8
  %27 = and i64 %18, 65535
  store i64 %27, i64* %RCX, align 8, !tbaa !2428
  %28 = and i64 %18, 65535
  store i64 %28, i64* %RAX, align 8, !tbaa !2428
  %29 = add i64 %9, 48
  store i64 %29, i64* %PC, align 8
  %30 = load i64, i64* %5, align 8, !tbaa !2428
  %31 = add i64 %30, 8
  %32 = inttoptr i64 %30 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RBP, align 8, !tbaa !2428
  store i64 %31, i64* %5, align 8, !tbaa !2428
  %34 = add i64 %9, 49
  store i64 %34, i64* %PC, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %36 = inttoptr i64 %31 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %35, align 8, !tbaa !2428
  %38 = add i64 %30, 16
  store i64 %38, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400430__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400430:
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
define %struct.Memory* @sub_401280_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401280:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
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
  %10 = add i64 %6, -24
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 16
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
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -8
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401296

block_4012b3:                                     ; preds = %block_401296
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %48 = load i64, i64* %RSP, align 8
  %49 = add i64 %48, 16
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  %50 = icmp ugt i64 %48, -17
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %13, align 1, !tbaa !2432
  %52 = trunc i64 %49 to i32
  %53 = and i32 %52, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %20, align 1, !tbaa !2446
  %58 = xor i64 %48, 16
  %59 = xor i64 %58, %49
  %60 = lshr i64 %59, 4
  %61 = trunc i64 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %26, align 1, !tbaa !2447
  %63 = icmp eq i64 %49, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %29, align 1, !tbaa !2448
  %65 = lshr i64 %49, 63
  %66 = trunc i64 %65 to i8
  store i8 %66, i8* %32, align 1, !tbaa !2449
  %67 = lshr i64 %48, 63
  %68 = xor i64 %65, %67
  %69 = add nuw nsw i64 %68, %65
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %38, align 1, !tbaa !2450
  %72 = add i64 %109, 7
  store i64 %72, i64* %PC, align 8
  %73 = add i64 %48, 24
  %74 = inttoptr i64 %49 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RBP, align 8, !tbaa !2428
  store i64 %73, i64* %5, align 8, !tbaa !2428
  %76 = add i64 %109, 8
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %73 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %47, align 8, !tbaa !2428
  %79 = add i64 %48, 32
  store i64 %79, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401296:                                     ; preds = %block_4012a0, %block_401280
  %80 = phi i64 [ %.pre, %block_401280 ], [ %148, %block_4012a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401280 ], [ %115, %block_4012a0 ]
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -8
  %83 = add i64 %80, 4
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, -100
  %87 = icmp ult i32 %85, 100
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %13, align 1, !tbaa !2432
  %89 = and i32 %86, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89) #8
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %20, align 1, !tbaa !2446
  %94 = xor i32 %85, %86
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %26, align 1, !tbaa !2447
  %98 = icmp eq i32 %86, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %29, align 1, !tbaa !2448
  %100 = lshr i32 %86, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %32, align 1, !tbaa !2449
  %102 = lshr i32 %85, 31
  %103 = xor i32 %100, %102
  %104 = add nuw nsw i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %38, align 1, !tbaa !2450
  %107 = icmp ne i8 %101, 0
  %108 = xor i1 %107, %105
  %.v = select i1 %108, i64 10, i64 29
  %109 = add i64 %80, %.v
  store i64 %109, i64* %47, align 8, !tbaa !2428
  br i1 %108, label %block_4012a0, label %block_4012b3

block_4012a0:                                     ; preds = %block_401296
  %110 = add i64 %109, -2656
  %111 = add i64 %109, 5
  %112 = load i64, i64* %5, align 8, !tbaa !2428
  %113 = add i64 %112, -8
  %114 = inttoptr i64 %113 to i64*
  store i64 %111, i64* %114, align 8
  store i64 %113, i64* %5, align 8, !tbaa !2428
  store i64 %110, i64* %47, align 8, !tbaa !2428
  %115 = tail call %struct.Memory* @sub_400840_Puzzle_renamed_(%struct.State* nonnull %0, i64 %110, %struct.Memory* %MEMORY.0)
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -8
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %117 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, 1
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = icmp eq i32 %121, -1
  %125 = icmp eq i32 %122, 0
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %13, align 1, !tbaa !2432
  %128 = and i32 %122, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #8
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2446
  %133 = xor i32 %121, %122
  %134 = lshr i32 %133, 4
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %26, align 1, !tbaa !2447
  %137 = icmp eq i32 %122, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %29, align 1, !tbaa !2448
  %139 = lshr i32 %122, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %32, align 1, !tbaa !2449
  %141 = lshr i32 %121, 31
  %142 = xor i32 %139, %141
  %143 = add nuw nsw i32 %142, %139
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %38, align 1, !tbaa !2450
  %146 = add i64 %118, 9
  store i64 %146, i64* %PC, align 8
  store i32 %122, i32* %120, align 4
  %147 = load i64, i64* %PC, align 8
  %148 = add i64 %147, -24
  store i64 %148, i64* %47, align 8, !tbaa !2428
  br label %block_401296
}

; Function Attrs: noinline
define %struct.Memory* @sub_400400__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400400:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
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
  store i64 ptrtoint (void ()* @callback_sub_401330___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4012c0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_619230___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %12, i64 9, i64 32
  %19 = add i64 %.v, %1
  store i64 %19, i64* %18, align 8, !tbaa !2428
  br i1 %12, label %block_4004b9, label %block_4004d0

block_4004d0:                                     ; preds = %block_4004b0
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

block_4004b9:                                     ; preds = %block_4004b0
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
  %37 = tail call %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
define %struct.Memory* @sub_4003c8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4003c8:
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
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %18, i64 18, i64 16
  %23 = add i64 %.v, %1
  store i64 %23, i64* %22, align 8, !tbaa !2428
  br i1 %18, label %block_4003c8.block_4003da_crit_edge, label %block_4003d8

block_4003c8.block_4003da_crit_edge:              ; preds = %block_4003c8
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_4003da

block_4003d8:                                     ; preds = %block_4003c8
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
  br label %block_4003da

block_4003da:                                     ; preds = %block_4003c8.block_4003da_crit_edge, %block_4003d8
  %.pre-phi = phi i64* [ %.pre2, %block_4003c8.block_4003da_crit_edge ], [ %25, %block_4003d8 ]
  %29 = phi i64 [ %23, %block_4003c8.block_4003da_crit_edge ], [ %.pre1, %block_4003d8 ]
  %30 = phi i64 [ %4, %block_4003c8.block_4003da_crit_edge ], [ %.pre, %block_4003d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003c8.block_4003da_crit_edge ], [ %28, %block_4003d8 ]
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
  store i8 %43, i8* %7, align 1, !tbaa !2447
  %44 = icmp eq i64 %31, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %8, align 1, !tbaa !2448
  %46 = lshr i64 %31, 63
  %47 = trunc i64 %46 to i8
  store i8 %47, i8* %9, align 1, !tbaa !2449
  %48 = lshr i64 %30, 63
  %49 = xor i64 %46, %48
  %50 = add nuw nsw i64 %49, %46
  %51 = icmp eq i64 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %10, align 1, !tbaa !2450
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
define %struct.Memory* @sub_401330___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401330:
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
define %struct.Memory* @sub_4004f0_Initrand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004f0:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = inttoptr i64 %6 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %13, align 8, !tbaa !2428
  %16 = add i64 %6, 8
  store i64 %16, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006d0_Remove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006d0:
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006e1

block_40073f:                                     ; preds = %block_4006e1
  %34 = add i64 %258, 4
  store i64 %34, i64* %PC, align 8
  %35 = load i32, i32* %224, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %RAX, align 8, !tbaa !2428
  %37 = shl nsw i64 %36, 2
  %38 = add i64 %37, ptrtoint (%class_type* @class to i64)
  %39 = add i64 %258, 12
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %RAX, align 8, !tbaa !2428
  %43 = shl nsw i64 %42, 2
  %44 = add i64 %43, ptrtoint (%piececount_type* @piececount to i64)
  %45 = add i64 %258, 19
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %RCX, align 8, !tbaa !2428
  %50 = icmp eq i32 %47, -1
  %51 = icmp eq i32 %48, 0
  %52 = or i1 %50, %51
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %27, align 1, !tbaa !2432
  %54 = and i32 %48, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %28, align 1, !tbaa !2446
  %59 = xor i32 %47, %48
  %60 = lshr i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %29, align 1, !tbaa !2447
  %63 = icmp eq i32 %48, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %30, align 1, !tbaa !2448
  %65 = lshr i32 %48, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %31, align 1, !tbaa !2449
  %67 = lshr i32 %47, 31
  %68 = xor i32 %65, %67
  %69 = add nuw nsw i32 %68, %65
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %32, align 1, !tbaa !2450
  %72 = add i64 %258, 26
  store i64 %72, i64* %PC, align 8
  %73 = load i32, i32* %224, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = shl nsw i64 %74, 2
  %76 = add i64 %75, ptrtoint (%class_type* @class to i64)
  %77 = add i64 %258, 34
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = shl nsw i64 %80, 2
  %82 = add i64 %81, ptrtoint (%piececount_type* @piececount to i64)
  %83 = add i64 %258, 41
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  store i32 %48, i32* %84, align 4
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %PC, align 8
  %87 = load i64, i64* %7, align 8, !tbaa !2428
  %88 = add i64 %87, 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RBP, align 8, !tbaa !2428
  store i64 %88, i64* %7, align 8, !tbaa !2428
  %91 = add i64 %85, 2
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %88 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %33, align 8, !tbaa !2428
  %94 = add i64 %87, 16
  store i64 %94, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006f5:                                     ; preds = %block_4006e1
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %95 = add i64 %258, 14
  store i64 %95, i64* %PC, align 8
  %96 = load i32, i32* %224, align 4
  %97 = sext i32 %96 to i64
  %98 = shl nsw i64 %97, 11
  store i64 %98, i64* %RCX, align 8, !tbaa !2428
  %99 = lshr i64 %97, 52
  %100 = and i64 %99, 1
  %101 = add i64 %98, ptrtoint (%p_type* @p to i64)
  store i64 %101, i64* %RAX, align 8, !tbaa !2428
  %102 = icmp ult i64 %101, ptrtoint (%p_type* @p to i64)
  %103 = icmp ult i64 %101, %98
  %104 = or i1 %102, %103
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %27, align 1, !tbaa !2432
  %106 = trunc i64 %101 to i32
  %107 = and i32 %106, 240
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #8
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %28, align 1, !tbaa !2446
  %112 = xor i64 %101, ptrtoint (%p_type* @p to i64)
  %113 = lshr exact i64 %112, 4
  %114 = trunc i64 %113 to i8
  %115 = and i8 %114, 1
  store i8 %115, i8* %29, align 1, !tbaa !2447
  %116 = icmp eq i64 %101, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %30, align 1, !tbaa !2448
  %118 = lshr i64 %101, 63
  %119 = trunc i64 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2449
  %120 = xor i64 %118, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %121 = xor i64 %118, %100
  %122 = add nuw nsw i64 %120, %121
  %123 = icmp eq i64 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %32, align 1, !tbaa !2450
  %125 = add i64 %258, 25
  store i64 %125, i64* %PC, align 8
  %126 = load i32, i32* %219, align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %RCX, align 8, !tbaa !2428
  %128 = shl nsw i64 %127, 2
  %129 = add i64 %128, %101
  %130 = add i64 %258, 29
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %133 = and i32 %132, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133) #8
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %138 = icmp eq i32 %132, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %30, align 1, !tbaa !2448
  %140 = lshr i32 %132, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v3 = select i1 %138, i64 55, i64 35
  %142 = add i64 %258, %.v3
  store i64 %142, i64* %33, align 8, !tbaa !2428
  br i1 %138, label %block_40072c, label %block_400718

block_40072c:                                     ; preds = %block_400718, %block_4006f5
  %143 = phi i64 [ %.pre2, %block_400718 ], [ %216, %block_4006f5 ]
  %144 = phi i64 [ %.pre1, %block_400718 ], [ %142, %block_4006f5 ]
  %145 = add i64 %143, -12
  %146 = add i64 %144, 8
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
  store i8 %154, i8* %27, align 1, !tbaa !2432
  %155 = and i32 %149, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #8
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %28, align 1, !tbaa !2446
  %160 = xor i32 %148, %149
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %29, align 1, !tbaa !2447
  %164 = icmp eq i32 %149, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %30, align 1, !tbaa !2448
  %166 = lshr i32 %149, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %31, align 1, !tbaa !2449
  %168 = lshr i32 %148, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %32, align 1, !tbaa !2450
  %173 = add i64 %144, 14
  store i64 %173, i64* %PC, align 8
  store i32 %149, i32* %147, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, -89
  store i64 %175, i64* %33, align 8, !tbaa !2428
  br label %block_4006e1

block_400718:                                     ; preds = %block_4006f5
  %176 = add i64 %216, -8
  %177 = add i64 %142, 3
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RAX, align 8, !tbaa !2428
  %181 = add i64 %142, 6
  store i64 %181, i64* %PC, align 8
  %182 = load i32, i32* %219, align 4
  %183 = add i32 %182, %179
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = icmp ult i32 %183, %179
  %186 = icmp ult i32 %183, %182
  %187 = or i1 %185, %186
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %27, align 1, !tbaa !2432
  %189 = and i32 %183, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189) #8
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %28, align 1, !tbaa !2446
  %194 = xor i32 %182, %179
  %195 = xor i32 %194, %183
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %29, align 1, !tbaa !2447
  %199 = icmp eq i32 %183, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %30, align 1, !tbaa !2448
  %201 = lshr i32 %183, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %31, align 1, !tbaa !2449
  %203 = lshr i32 %179, 31
  %204 = lshr i32 %182, 31
  %205 = xor i32 %201, %203
  %206 = xor i32 %201, %204
  %207 = add nuw nsw i32 %205, %206
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %32, align 1, !tbaa !2450
  %210 = sext i32 %183 to i64
  store i64 %210, i64* %RCX, align 8, !tbaa !2428
  %211 = shl nsw i64 %210, 2
  %212 = add i64 %211, ptrtoint (%puzzl_type* @puzzl to i64)
  %213 = add i64 %142, 20
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  store i32 0, i32* %214, align 4
  %.pre1 = load i64, i64* %PC, align 8
  %.pre2 = load i64, i64* %RBP, align 8
  br label %block_40072c

block_4006e1:                                     ; preds = %block_40072c, %block_4006d0
  %215 = phi i64 [ %.pre, %block_4006d0 ], [ %175, %block_40072c ]
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -12
  %218 = add i64 %215, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX, align 8, !tbaa !2428
  %222 = add i64 %216, -4
  %223 = add i64 %215, 7
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = shl nsw i64 %226, 2
  %228 = add i64 %227, ptrtoint (%piecemax_type* @piecemax to i64)
  %229 = add i64 %215, 14
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = sub i32 %220, %231
  %233 = icmp ult i32 %220, %231
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %27, align 1, !tbaa !2432
  %235 = and i32 %232, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235) #8
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %28, align 1, !tbaa !2446
  %240 = xor i32 %231, %220
  %241 = xor i32 %240, %232
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %29, align 1, !tbaa !2447
  %245 = icmp eq i32 %232, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %30, align 1, !tbaa !2448
  %247 = lshr i32 %232, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %31, align 1, !tbaa !2449
  %249 = lshr i32 %220, 31
  %250 = lshr i32 %231, 31
  %251 = xor i32 %250, %249
  %252 = xor i32 %247, %249
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %32, align 1, !tbaa !2450
  %256 = icmp ne i8 %248, 0
  %257 = xor i1 %256, %254
  %.demorgan = or i1 %245, %257
  %.v = select i1 %.demorgan, i64 20, i64 94
  %258 = add i64 %215, %.v
  store i64 %258, i64* %33, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4006f5, label %block_40073f
}

; Function Attrs: noinline
define %struct.Memory* @sub_401334__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401334:
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
  store i8 %28, i8* %8, align 1, !tbaa !2447
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %9, align 1, !tbaa !2448
  %31 = trunc i64 %12 to i8
  store i8 %31, i8* %11, align 1, !tbaa !2449
  store i8 %16, i8* %17, align 1, !tbaa !2450
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
define %struct.Memory* @sub_4012c0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012c0:
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
  store i8 %53, i8* %45, align 1, !tbaa !2451
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2451
  store i8 0, i8* %47, align 1, !tbaa !2451
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2451
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2451
  store i8 0, i8* %50, align 1, !tbaa !2451
  %65 = add i64 %40, -3859
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  store i8 %80, i8* %48, align 1, !tbaa !2448
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %.v = select i1 %79, i64 37, i64 5
  %83 = add i64 %72, %.v
  store i64 %83, i64* %69, align 8, !tbaa !2428
  br i1 %79, label %block_401316, label %block_4012f6

block_401316:                                     ; preds = %block_401300, %block_4012c0
  %84 = phi i64 [ %83, %block_4012c0 ], [ %182, %block_401300 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_4012c0 ], [ %152, %block_401300 ]
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
  store i8 %98, i8* %47, align 1, !tbaa !2447
  %99 = icmp eq i64 %86, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %48, align 1, !tbaa !2448
  %101 = lshr i64 %86, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %49, align 1, !tbaa !2449
  %103 = lshr i64 %85, 63
  %104 = xor i64 %101, %103
  %105 = add nuw nsw i64 %104, %101
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %50, align 1, !tbaa !2450
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

block_4012f6:                                     ; preds = %block_4012c0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401300

block_401300:                                     ; preds = %block_401300, %block_4012f6
  %137 = phi i64 [ 0, %block_4012f6 ], [ %155, %block_401300 ]
  %138 = phi i64 [ %136, %block_4012f6 ], [ %182, %block_401300 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_4012f6 ], [ %152, %block_401300 ]
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
  store i8 %171, i8* %47, align 1, !tbaa !2447
  %172 = icmp eq i64 %158, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %48, align 1, !tbaa !2448
  %174 = lshr i64 %158, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %49, align 1, !tbaa !2449
  %176 = lshr i64 %157, 63
  %177 = xor i64 %156, %176
  %178 = xor i64 %174, %176
  %179 = add nuw nsw i64 %178, %177
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %50, align 1, !tbaa !2450
  %.v1 = select i1 %172, i64 9, i64 -13
  %182 = add i64 %154, %.v1
  store i64 %182, i64* %69, align 8, !tbaa !2428
  br i1 %172, label %block_401316, label %block_401300
}

; Function Attrs: noinline
define %struct.Memory* @sub_400440_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400440:
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
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i8), i8* %10, align 1, !tbaa !2432
  %11 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #8
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1, !tbaa !2446
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %16, align 1, !tbaa !2447
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %17, align 1, !tbaa !2448
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %18, align 1, !tbaa !2449
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %19, align 1, !tbaa !2450
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16)
  store i64 %21, i64* %20, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400468, label %block_400451

block_400451:                                     ; preds = %block_400440
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %22 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %22, i64* %20, align 8, !tbaa !2428
  br label %block_400468

block_400468:                                     ; preds = %block_400451, %block_400440
  %23 = phi i64 [ %22, %block_400451 ], [ %21, %block_400440 ]
  %24 = add i64 %23, 1
  store i64 %24, i64* %PC, align 8
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %26 = add i64 %23, 2
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %6 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %20, align 8, !tbaa !2428
  %29 = add i64 %6, 8
  store i64 %29, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400470_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400470:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %11 = sub i64 %9, ptrtoint (%__bss_start_type* @__bss_start to i64)
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
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_4004a8, label %block_400493

block_400493:                                     ; preds = %block_400470
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %36 = add i64 %35, 21
  store i64 %36, i64* %34, align 8, !tbaa !2428
  br label %block_4004a8

block_4004a8:                                     ; preds = %block_400493, %block_400470
  %37 = phi i64 [ %36, %block_400493 ], [ %35, %block_400470 ]
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004e0_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4004e0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004e0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004b0___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4004b0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_619238_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401330___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401330;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401330___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401330___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4012c0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4012c0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012c0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401280;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401280_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_619230___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Remove() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Remove_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006d0_Remove(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Place() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Place_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005e0_Place(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Trial() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Trial_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400770_Trial(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401334;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401334__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Initrand() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Initrand_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004f0_Initrand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Puzzle() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400840;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Puzzle_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400840_Puzzle(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003c8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4003c8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Rand() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Rand_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400510_Rand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Fit() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @Fit_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400550_Fit(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401330___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4012c0___libc_csu_init()
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
