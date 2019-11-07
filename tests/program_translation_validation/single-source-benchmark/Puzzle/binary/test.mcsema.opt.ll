; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401370__rodata_type = type <{ [4 x i8], [18 x i8], [19 x i8], [19 x i8], [4 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
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
@seg_401370__rodata = internal constant %seg_401370__rodata_type <{ [4 x i8] c"\01\00\02\00", [18 x i8] c"Error1 in Puzzle\0A\00", [19 x i8] c"Error2 in Puzzle.\0A\00", [19 x i8] c"Error3 in Puzzle.\0A\00", [4 x i8] c"%d\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400510_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004e0___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400510_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004e0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401360___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4012f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Fit_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Remove_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Place_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Rand_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Trial_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Initrand_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Puzzle_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400700_Remove_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400870_Puzzle_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400610_Place_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007a0_Trial_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003f0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400470_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400580_Fit_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400580_Fit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400580:
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
  br label %block_400591

block_4005df:                                     ; preds = %block_4005c8
  %33 = add i64 %69, -4
  %34 = add i64 %177, 7
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %33 to i32*
  store i32 0, i32* %35, align 4
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 36
  store i64 %37, i64* %PC, align 8, !tbaa !2428
  br label %block_40060a

block_4005f0:                                     ; preds = %block_4005a5, %block_4005eb
  %38 = phi i64 [ %225, %block_4005a5 ], [ %67, %block_4005eb ]
  %39 = add i64 %38, 8
  store i64 %39, i64* %PC, align 8
  %40 = load i32, i32* %72, align 4
  %41 = add i32 %40, 1
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RAX, align 8, !tbaa !2428
  %43 = icmp eq i32 %40, -1
  %44 = icmp eq i32 %41, 0
  %45 = or i1 %43, %44
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %27, align 1, !tbaa !2432
  %47 = and i32 %41, 255
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47) #12
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  store i8 %51, i8* %28, align 1, !tbaa !2446
  %52 = xor i32 %41, %40
  %53 = lshr i32 %52, 4
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, i8* %29, align 1, !tbaa !2447
  %56 = zext i1 %44 to i8
  store i8 %56, i8* %30, align 1, !tbaa !2448
  %57 = lshr i32 %41, 31
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %31, align 1, !tbaa !2449
  %59 = lshr i32 %40, 31
  %60 = xor i32 %57, %59
  %61 = add nuw nsw i32 %60, %57
  %62 = icmp eq i32 %61, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %32, align 1, !tbaa !2450
  %64 = add i64 %38, 14
  store i64 %64, i64* %PC, align 8
  store i32 %41, i32* %72, align 4
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, -109
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  br label %block_400591

block_4005eb:                                     ; preds = %block_4005c8
  %67 = add i64 %177, 5
  store i64 %67, i64* %PC, align 8, !tbaa !2428
  br label %block_4005f0

block_400591:                                     ; preds = %block_4005f0, %block_400580
  %68 = phi i64 [ %66, %block_4005f0 ], [ %.pre, %block_400580 ]
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -16
  %71 = add i64 %68, 3
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %69, -8
  %76 = add i64 %68, 7
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %RCX, align 8, !tbaa !2428
  %80 = shl nsw i64 %79, 2
  %81 = add i64 %80, ptrtoint (%piecemax_type* @piecemax to i64)
  %82 = add i64 %68, 14
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %73, %84
  %86 = icmp ult i32 %73, %84
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %27, align 1, !tbaa !2432
  %88 = and i32 %85, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #12
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %28, align 1, !tbaa !2446
  %93 = xor i32 %84, %73
  %94 = xor i32 %93, %85
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %29, align 1, !tbaa !2447
  %98 = icmp eq i32 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %30, align 1, !tbaa !2448
  %100 = lshr i32 %85, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %31, align 1, !tbaa !2449
  %102 = lshr i32 %73, 31
  %103 = lshr i32 %84, 31
  %104 = xor i32 %103, %102
  %105 = xor i32 %100, %102
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %32, align 1, !tbaa !2450
  %109 = icmp ne i8 %101, 0
  %110 = xor i1 %109, %107
  %.demorgan = or i1 %98, %110
  %.v = select i1 %.demorgan, i64 20, i64 114
  %111 = add i64 %68, %.v
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4005a5, label %block_400603

block_40060a:                                     ; preds = %block_400603, %block_4005df
  %112 = phi i64 [ %.pre7, %block_400603 ], [ %37, %block_4005df ]
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
  %120 = load i64, i64* %7, align 8, !tbaa !2428
  %121 = add i64 %120, 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RBP, align 8, !tbaa !2428
  store i64 %121, i64* %7, align 8, !tbaa !2428
  %124 = add i64 %112, 5
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %121 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  %127 = add i64 %120, 16
  store i64 %127, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005c8:                                     ; preds = %block_4005a5
  %128 = add i64 %69, -12
  %129 = add i64 %225, 3
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = add i64 %225, 6
  store i64 %133, i64* %PC, align 8
  %134 = load i32, i32* %72, align 4
  %135 = add i32 %134, %131
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = icmp ult i32 %135, %131
  %138 = icmp ult i32 %135, %134
  %139 = or i1 %137, %138
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %27, align 1, !tbaa !2432
  %141 = and i32 %135, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #12
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %28, align 1, !tbaa !2446
  %146 = xor i32 %134, %131
  %147 = xor i32 %146, %135
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %29, align 1, !tbaa !2447
  %151 = icmp eq i32 %135, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %30, align 1, !tbaa !2448
  %153 = lshr i32 %135, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %31, align 1, !tbaa !2449
  %155 = lshr i32 %131, 31
  %156 = lshr i32 %134, 31
  %157 = xor i32 %153, %155
  %158 = xor i32 %153, %156
  %159 = add nuw nsw i32 %157, %158
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %32, align 1, !tbaa !2450
  %162 = sext i32 %135 to i64
  store i64 %162, i64* %RCX, align 8, !tbaa !2428
  %163 = shl nsw i64 %162, 2
  %164 = add i64 %163, ptrtoint (%puzzl_type* @puzzl to i64)
  %165 = add i64 %225, 17
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %168 = and i32 %167, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168) #12
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %173 = icmp eq i32 %167, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %30, align 1, !tbaa !2448
  %175 = lshr i32 %167, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v9 = select i1 %173, i64 35, i64 23
  %177 = add i64 %225, %.v9
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  br i1 %173, label %block_4005eb, label %block_4005df

block_4005a5:                                     ; preds = %block_400591
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %178 = add i64 %111, 14
  store i64 %178, i64* %PC, align 8
  %179 = load i32, i32* %77, align 4
  %180 = sext i32 %179 to i64
  %181 = shl nsw i64 %180, 11
  store i64 %181, i64* %RCX, align 8, !tbaa !2428
  %182 = add i64 %181, ptrtoint (%p_type* @p to i64)
  store i64 %182, i64* %RAX, align 8, !tbaa !2428
  %183 = icmp ult i64 %182, ptrtoint (%p_type* @p to i64)
  %184 = icmp ult i64 %182, %181
  %185 = or i1 %183, %184
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %27, align 1, !tbaa !2432
  %187 = trunc i64 %182 to i32
  %188 = and i32 %187, 240
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #12
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %28, align 1, !tbaa !2446
  %193 = xor i64 %182, ptrtoint (%p_type* @p to i64)
  %194 = lshr exact i64 %193, 4
  %195 = trunc i64 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %29, align 1, !tbaa !2447
  %197 = icmp eq i64 %182, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1, !tbaa !2448
  %199 = lshr i64 %182, 63
  %200 = trunc i64 %199 to i8
  store i8 %200, i8* %31, align 1, !tbaa !2449
  %201 = lshr i64 %180, 52
  %202 = and i64 %201, 1
  %203 = xor i64 %199, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %204 = xor i64 %199, %202
  %205 = add nuw nsw i64 %203, %204
  %206 = icmp eq i64 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %32, align 1, !tbaa !2450
  %208 = add i64 %111, 25
  store i64 %208, i64* %PC, align 8
  %209 = load i32, i32* %72, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %RCX, align 8, !tbaa !2428
  %211 = shl nsw i64 %210, 2
  %212 = add i64 %211, %182
  %213 = add i64 %111, 29
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %216 = and i32 %215, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #12
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %221 = icmp eq i32 %215, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %30, align 1, !tbaa !2448
  %223 = lshr i32 %215, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v8 = select i1 %221, i64 75, i64 35
  %225 = add i64 %111, %.v8
  store i64 %225, i64* %PC, align 8, !tbaa !2428
  br i1 %221, label %block_4005f0, label %block_4005c8

block_400603:                                     ; preds = %block_400591
  %226 = add i64 %69, -4
  %227 = add i64 %111, 7
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  store i32 1, i32* %228, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40060a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400700_Remove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400700:
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
  br label %block_400711

block_40076f:                                     ; preds = %block_400711
  %33 = add i64 %136, 4
  store i64 %33, i64* %PC, align 8
  %34 = load i32, i32* %102, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = shl nsw i64 %35, 2
  %37 = add i64 %36, ptrtoint (%class_type* @class to i64)
  %38 = add i64 %136, 12
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %RAX, align 8, !tbaa !2428
  %42 = shl nsw i64 %41, 2
  %43 = add i64 %42, ptrtoint (%piececount_type* @piececount to i64)
  %44 = add i64 %136, 19
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
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #12
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
  %70 = add i64 %136, 26
  store i64 %70, i64* %PC, align 8
  %71 = load i32, i32* %102, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = shl nsw i64 %72, 2
  %74 = add i64 %73, ptrtoint (%class_type* @class to i64)
  %75 = add i64 %136, 34
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RAX, align 8, !tbaa !2428
  %79 = shl nsw i64 %78, 2
  %80 = add i64 %79, ptrtoint (%piececount_type* @piececount to i64)
  %81 = add i64 %136, 41
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

block_400711:                                     ; preds = %block_40075c, %block_400700
  %93 = phi i64 [ %207, %block_40075c ], [ %.pre, %block_400700 ]
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -12
  %96 = add i64 %93, 3
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = add i64 %94, -4
  %101 = add i64 %93, 7
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  %105 = shl nsw i64 %104, 2
  %106 = add i64 %105, ptrtoint (%piecemax_type* @piecemax to i64)
  %107 = add i64 %93, 14
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %98, %109
  %111 = icmp ult i32 %98, %109
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %27, align 1, !tbaa !2432
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #12
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %28, align 1, !tbaa !2446
  %118 = xor i32 %109, %98
  %119 = xor i32 %118, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %29, align 1, !tbaa !2447
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %30, align 1, !tbaa !2448
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %31, align 1, !tbaa !2449
  %127 = lshr i32 %98, 31
  %128 = lshr i32 %109, 31
  %129 = xor i32 %128, %127
  %130 = xor i32 %125, %127
  %131 = add nuw nsw i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %32, align 1, !tbaa !2450
  %134 = icmp ne i8 %126, 0
  %135 = xor i1 %134, %132
  %.demorgan = or i1 %123, %135
  %.v = select i1 %.demorgan, i64 20, i64 94
  %136 = add i64 %93, %.v
  store i64 %136, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400725, label %block_40076f

block_400748:                                     ; preds = %block_400725
  %137 = add i64 %94, -8
  %138 = add i64 %255, 3
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  %142 = add i64 %255, 6
  store i64 %142, i64* %PC, align 8
  %143 = load i32, i32* %97, align 4
  %144 = add i32 %143, %140
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = icmp ult i32 %144, %140
  %147 = icmp ult i32 %144, %143
  %148 = or i1 %146, %147
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %27, align 1, !tbaa !2432
  %150 = and i32 %144, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150) #12
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %28, align 1, !tbaa !2446
  %155 = xor i32 %143, %140
  %156 = xor i32 %155, %144
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %29, align 1, !tbaa !2447
  %160 = icmp eq i32 %144, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %30, align 1, !tbaa !2448
  %162 = lshr i32 %144, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %31, align 1, !tbaa !2449
  %164 = lshr i32 %140, 31
  %165 = lshr i32 %143, 31
  %166 = xor i32 %162, %164
  %167 = xor i32 %162, %165
  %168 = add nuw nsw i32 %166, %167
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %32, align 1, !tbaa !2450
  %171 = sext i32 %144 to i64
  store i64 %171, i64* %RCX, align 8, !tbaa !2428
  %172 = shl nsw i64 %171, 2
  %173 = add i64 %172, ptrtoint (%puzzl_type* @puzzl to i64)
  %174 = add i64 %255, 20
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  store i32 0, i32* %175, align 4
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %block_40075c

block_40075c:                                     ; preds = %block_400725, %block_400748
  %176 = phi i64 [ %94, %block_400725 ], [ %.pre9, %block_400748 ]
  %177 = phi i64 [ %255, %block_400725 ], [ %.pre8, %block_400748 ]
  %178 = add i64 %176, -12
  %179 = add i64 %177, 8
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
  store i8 %187, i8* %27, align 1, !tbaa !2432
  %188 = and i32 %182, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #12
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %28, align 1, !tbaa !2446
  %193 = xor i32 %182, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %29, align 1, !tbaa !2447
  %197 = zext i1 %185 to i8
  store i8 %197, i8* %30, align 1, !tbaa !2448
  %198 = lshr i32 %182, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %31, align 1, !tbaa !2449
  %200 = lshr i32 %181, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %198
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %32, align 1, !tbaa !2450
  %205 = add i64 %177, 14
  store i64 %205, i64* %PC, align 8
  store i32 %182, i32* %180, align 4
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, -89
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br label %block_400711

block_400725:                                     ; preds = %block_400711
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %208 = add i64 %136, 14
  store i64 %208, i64* %PC, align 8
  %209 = load i32, i32* %102, align 4
  %210 = sext i32 %209 to i64
  %211 = shl nsw i64 %210, 11
  store i64 %211, i64* %RCX, align 8, !tbaa !2428
  %212 = add i64 %211, ptrtoint (%p_type* @p to i64)
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = icmp ult i64 %212, ptrtoint (%p_type* @p to i64)
  %214 = icmp ult i64 %212, %211
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %27, align 1, !tbaa !2432
  %217 = trunc i64 %212 to i32
  %218 = and i32 %217, 240
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #12
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %28, align 1, !tbaa !2446
  %223 = xor i64 %212, ptrtoint (%p_type* @p to i64)
  %224 = lshr exact i64 %223, 4
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %29, align 1, !tbaa !2447
  %227 = icmp eq i64 %212, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1, !tbaa !2448
  %229 = lshr i64 %212, 63
  %230 = trunc i64 %229 to i8
  store i8 %230, i8* %31, align 1, !tbaa !2449
  %231 = lshr i64 %210, 52
  %232 = and i64 %231, 1
  %233 = xor i64 %229, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %234 = xor i64 %229, %232
  %235 = add nuw nsw i64 %233, %234
  %236 = icmp eq i64 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %32, align 1, !tbaa !2450
  %238 = add i64 %136, 25
  store i64 %238, i64* %PC, align 8
  %239 = load i32, i32* %97, align 4
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %RCX, align 8, !tbaa !2428
  %241 = shl nsw i64 %240, 2
  %242 = add i64 %241, %212
  %243 = add i64 %136, 29
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %246 = and i32 %245, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246) #12
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %251 = icmp eq i32 %245, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %30, align 1, !tbaa !2448
  %253 = lshr i32 %245, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v10 = select i1 %251, i64 55, i64 35
  %255 = add i64 %136, %.v10
  store i64 %255, i64* %PC, align 8, !tbaa !2428
  br i1 %251, label %block_40075c, label %block_400748
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %12 = add i64 %9, -113
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007a0_Trial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #7 {
block_4007a0:
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
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #12
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
  br label %block_4007c3

block_40085f:                                     ; preds = %block_400824, %block_400858
  %51 = phi i64 [ %261, %block_400824 ], [ %.pre17, %block_400858 ]
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -4
  %54 = add i64 %51, 3
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  %58 = load i64, i64* %RSP, align 8
  %59 = add i64 %58, 16
  store i64 %59, i64* %RSP, align 8, !tbaa !2428
  %60 = icmp ugt i64 %58, -17
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %12, align 1, !tbaa !2432
  %62 = trunc i64 %59 to i32
  %63 = and i32 %62, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #12
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %13, align 1, !tbaa !2446
  %68 = xor i64 %58, 16
  %69 = xor i64 %68, %59
  %70 = lshr i64 %69, 4
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %14, align 1, !tbaa !2447
  %73 = icmp eq i64 %59, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %15, align 1, !tbaa !2448
  %75 = lshr i64 %59, 63
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %16, align 1, !tbaa !2449
  %77 = lshr i64 %58, 63
  %78 = xor i64 %75, %77
  %79 = add nuw nsw i64 %78, %75
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %17, align 1, !tbaa !2450
  %82 = add i64 %51, 8
  store i64 %82, i64* %PC, align 8
  %83 = add i64 %58, 24
  %84 = inttoptr i64 %59 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RBP, align 8, !tbaa !2428
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %86 = add i64 %51, 9
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %83 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %PC, align 8, !tbaa !2428
  %89 = add i64 %58, 32
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4007fb:                                     ; preds = %block_4007e7
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -12
  %92 = add i64 %223, 3
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI, align 8, !tbaa !2428
  %96 = add i64 %90, -8
  %97 = add i64 %223, 6
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RSI, align 8, !tbaa !2428
  %101 = add i64 %223, -491
  %102 = add i64 %223, 11
  %103 = load i64, i64* %RSP, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %RSP, align 8, !tbaa !2428
  store i64 %101, i64* %PC, align 8, !tbaa !2428
  %106 = tail call %struct.Memory* @sub_400610_Place_renamed_(%struct.State* nonnull %0, i64 %101, %struct.Memory* %2)
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -16
  %109 = load i32, i32* %EAX, align 4
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %112, align 4
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -16
  %115 = load i64, i64* %PC, align 8
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %114 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RDI, align 8, !tbaa !2428
  %120 = add i64 %115, -105
  %121 = add i64 %115, 8
  %122 = load i64, i64* %RSP, align 8, !tbaa !2428
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  %125 = tail call %struct.Memory* @sub_4007a0_Trial_renamed_(%struct.State* nonnull %0, i64 %120, %struct.Memory* %2)
  %126 = load i32, i32* %EAX, align 4
  %127 = load i64, i64* %PC, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %128 = and i32 %126, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #12
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %133 = icmp eq i32 %126, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %15, align 1, !tbaa !2448
  %135 = lshr i32 %126, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v20 = select i1 %133, i64 9, i64 19
  %137 = add i64 %127, %.v20
  store i64 %137, i64* %PC, align 8, !tbaa !2428
  %138 = load i64, i64* %RBP, align 8
  br i1 %133, label %block_40081a, label %block_400824

block_400858:                                     ; preds = %block_4007c3
  %139 = add i64 %263, -4
  %140 = add i64 %291, 7
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 0, i32* %141, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_40085f

block_400830:                                     ; preds = %block_40081a
  %142 = add i64 %138, -12
  %143 = add i64 %197, 3
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RDI, align 8, !tbaa !2428
  %147 = add i64 %138, -8
  %148 = add i64 %197, 6
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RSI, align 8, !tbaa !2428
  %152 = add i64 %197, -304
  %153 = add i64 %197, 11
  %154 = load i64, i64* %RSP, align 8, !tbaa !2428
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*
  store i64 %153, i64* %156, align 8
  store i64 %155, i64* %RSP, align 8, !tbaa !2428
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  %157 = tail call %struct.Memory* @sub_400700_Remove_renamed_(%struct.State* nonnull %0, i64 %152, %struct.Memory* %2)
  %158 = load i64, i64* %PC, align 8
  %159 = add i64 %158, 5
  store i64 %159, i64* %PC, align 8, !tbaa !2428
  br label %block_400840

block_4007cd:                                     ; preds = %block_4007c3
  %160 = add i64 %291, 4
  store i64 %160, i64* %PC, align 8
  %161 = load i32, i32* %266, align 4
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = shl nsw i64 %162, 2
  %164 = add i64 %163, ptrtoint (%class_type* @class to i64)
  %165 = add i64 %291, 12
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = shl nsw i64 %168, 2
  %170 = add i64 %169, ptrtoint (%piececount_type* @piececount to i64)
  %171 = add i64 %291, 20
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  store i8 0, i8* %12, align 1, !tbaa !2432
  %174 = and i32 %173, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #12
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %179 = icmp eq i32 %173, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %15, align 1, !tbaa !2448
  %181 = lshr i32 %173, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v18 = select i1 %179, i64 120, i64 26
  %183 = add i64 %291, %.v18
  store i64 %183, i64* %PC, align 8, !tbaa !2428
  br i1 %179, label %block_400845, label %block_4007e7

block_40081a:                                     ; preds = %block_4007fb
  %184 = add i64 %138, -16
  %185 = add i64 %137, 4
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  store i8 0, i8* %12, align 1, !tbaa !2432
  %188 = and i32 %187, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #12
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %193 = icmp eq i32 %187, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %15, align 1, !tbaa !2448
  %195 = lshr i32 %187, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v21 = select i1 %193, i64 10, i64 22
  %197 = add i64 %137, %.v21
  store i64 %197, i64* %PC, align 8, !tbaa !2428
  br i1 %193, label %block_400824, label %block_400830

block_4007e7:                                     ; preds = %block_4007cd
  %198 = add i64 %183, 3
  store i64 %198, i64* %PC, align 8
  %199 = load i32, i32* %266, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RDI, align 8, !tbaa !2428
  %201 = add i64 %263, -8
  %202 = add i64 %183, 6
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RSI, align 8, !tbaa !2428
  %206 = add i64 %183, -615
  %207 = add i64 %183, 11
  %208 = load i64, i64* %RSP, align 8, !tbaa !2428
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %207, i64* %210, align 8
  store i64 %209, i64* %RSP, align 8, !tbaa !2428
  store i64 %206, i64* %PC, align 8, !tbaa !2428
  %211 = tail call %struct.Memory* @sub_400580_Fit_renamed_(%struct.State* nonnull %0, i64 %206, %struct.Memory* %2)
  %212 = load i32, i32* %EAX, align 4
  %213 = load i64, i64* %PC, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %214 = and i32 %212, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #12
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %219 = icmp eq i32 %212, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %15, align 1, !tbaa !2448
  %221 = lshr i32 %212, 31
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v19 = select i1 %219, i64 78, i64 9
  %223 = add i64 %213, %.v19
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  br i1 %219, label %block_400840, label %block_4007fb

block_400845:                                     ; preds = %block_400840, %block_4007cd
  %224 = phi i64 [ %.pre16, %block_400840 ], [ %263, %block_4007cd ]
  %225 = phi i64 [ %293, %block_400840 ], [ %183, %block_4007cd ]
  %226 = add i64 %224, -12
  %227 = add i64 %225, 8
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = add i32 %229, 1
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = icmp eq i32 %229, -1
  %233 = icmp eq i32 %230, 0
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %12, align 1, !tbaa !2432
  %236 = and i32 %230, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236) #12
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %13, align 1, !tbaa !2446
  %241 = xor i32 %230, %229
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %14, align 1, !tbaa !2447
  %245 = zext i1 %233 to i8
  store i8 %245, i8* %15, align 1, !tbaa !2448
  %246 = lshr i32 %230, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %16, align 1, !tbaa !2449
  %248 = lshr i32 %229, 31
  %249 = xor i32 %246, %248
  %250 = add nuw nsw i32 %249, %246
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %17, align 1, !tbaa !2450
  %253 = add i64 %225, 14
  store i64 %253, i64* %PC, align 8
  store i32 %230, i32* %228, align 4
  %254 = load i64, i64* %PC, align 8
  %255 = add i64 %254, -144
  store i64 %255, i64* %PC, align 8, !tbaa !2428
  br label %block_4007c3

block_400824:                                     ; preds = %block_40081a, %block_4007fb
  %256 = phi i64 [ %137, %block_4007fb ], [ %197, %block_40081a ]
  %257 = add i64 %138, -4
  %258 = add i64 %256, 7
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  store i32 1, i32* %259, align 4
  %260 = load i64, i64* %PC, align 8
  %261 = add i64 %260, 52
  store i64 %261, i64* %PC, align 8, !tbaa !2428
  br label %block_40085f

block_4007c3:                                     ; preds = %block_400845, %block_4007a0
  %262 = phi i64 [ %.pre, %block_4007a0 ], [ %255, %block_400845 ]
  %263 = load i64, i64* %RBP, align 8
  %264 = add i64 %263, -12
  %265 = add i64 %262, 4
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, -12
  %269 = icmp ult i32 %267, 12
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %12, align 1, !tbaa !2432
  %271 = and i32 %268, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #12
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %13, align 1, !tbaa !2446
  %276 = xor i32 %268, %267
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %14, align 1, !tbaa !2447
  %280 = icmp eq i32 %268, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %15, align 1, !tbaa !2448
  %282 = lshr i32 %268, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %16, align 1, !tbaa !2449
  %284 = lshr i32 %267, 31
  %285 = xor i32 %282, %284
  %286 = add nuw nsw i32 %285, %284
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %17, align 1, !tbaa !2450
  %289 = icmp ne i8 %283, 0
  %290 = xor i1 %289, %287
  %.demorgan = or i1 %280, %290
  %.v = select i1 %.demorgan, i64 10, i64 149
  %291 = add i64 %262, %.v
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4007cd, label %block_400858

block_400840:                                     ; preds = %block_4007e7, %block_400830
  %292 = phi i64 [ %223, %block_4007e7 ], [ %159, %block_400830 ]
  %293 = add i64 %292, 5
  store i64 %293, i64* %PC, align 8, !tbaa !2428
  %.pre16 = load i64, i64* %RBP, align 8
  br label %block_400845
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400610_Place(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400610:
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
  br label %block_400621

block_40067f:                                     ; preds = %block_400621
  %33 = add i64 %358, 4
  store i64 %33, i64* %PC, align 8
  %34 = load i32, i32* %324, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = shl nsw i64 %35, 2
  %37 = add i64 %36, ptrtoint (%class_type* @class to i64)
  %38 = add i64 %358, 12
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %RAX, align 8, !tbaa !2428
  %42 = shl nsw i64 %41, 2
  %43 = add i64 %42, ptrtoint (%piececount_type* @piececount to i64)
  %44 = add i64 %358, 19
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, -1
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %RCX, align 8, !tbaa !2428
  %49 = icmp eq i32 %46, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %27, align 1, !tbaa !2432
  %51 = and i32 %47, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #12
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  store i8 %55, i8* %28, align 1, !tbaa !2446
  %56 = xor i32 %47, %46
  %57 = lshr i32 %56, 4
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  store i8 %59, i8* %29, align 1, !tbaa !2447
  %60 = icmp eq i32 %47, 0
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %30, align 1, !tbaa !2448
  %62 = lshr i32 %47, 31
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %31, align 1, !tbaa !2449
  %64 = lshr i32 %46, 31
  %65 = xor i32 %62, %64
  %66 = add nuw nsw i32 %65, %64
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %32, align 1, !tbaa !2450
  %69 = add i64 %358, 26
  store i64 %69, i64* %PC, align 8
  %70 = load i32, i32* %324, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %RAX, align 8, !tbaa !2428
  %72 = shl nsw i64 %71, 2
  %73 = add i64 %72, ptrtoint (%class_type* @class to i64)
  %74 = add i64 %358, 34
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = shl nsw i64 %77, 2
  %79 = add i64 %78, ptrtoint (%piececount_type* @piececount to i64)
  %80 = add i64 %358, 41
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 %47, i32* %81, align 4
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -12
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RCX, align 8, !tbaa !2428
  %89 = add i64 %82, -16
  %90 = add i64 %84, 6
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 %87, i32* %91, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_4006ae

block_4006d8:                                     ; preds = %block_4006bb
  %92 = add i64 %137, 8
  store i64 %92, i64* %PC, align 8
  %93 = load i32, i32* %245, align 4
  %94 = add i32 %93, 1
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = icmp eq i32 %93, -1
  %97 = icmp eq i32 %94, 0
  %98 = or i1 %96, %97
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %27, align 1, !tbaa !2432
  %100 = and i32 %94, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #12
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %28, align 1, !tbaa !2446
  %105 = xor i32 %94, %93
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %29, align 1, !tbaa !2447
  %109 = zext i1 %97 to i8
  store i8 %109, i8* %30, align 1, !tbaa !2448
  %110 = lshr i32 %94, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %31, align 1, !tbaa !2449
  %112 = lshr i32 %93, 31
  %113 = xor i32 %110, %112
  %114 = add nuw nsw i32 %113, %110
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %32, align 1, !tbaa !2450
  %117 = add i64 %137, 14
  store i64 %117, i64* %PC, align 8
  store i32 %94, i32* %245, align 4
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, -56
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  br label %block_4006ae

block_4006bb:                                     ; preds = %block_4006ae
  %120 = add i64 %271, 4
  store i64 %120, i64* %PC, align 8
  %121 = load i32, i32* %245, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = shl nsw i64 %122, 2
  %124 = add i64 %123, ptrtoint (%puzzl_type* @puzzl to i64)
  %125 = add i64 %271, 12
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #12
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %133 = icmp eq i32 %127, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %30, align 1, !tbaa !2448
  %135 = lshr i32 %127, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v = select i1 %133, i64 18, i64 29
  %137 = add i64 %271, %.v
  store i64 %137, i64* %PC, align 8, !tbaa !2428
  br i1 %133, label %block_4006cd, label %block_4006d8

block_400658:                                     ; preds = %block_400635
  %138 = add i64 %316, -12
  %139 = add i64 %224, 3
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX, align 8, !tbaa !2428
  %143 = add i64 %224, 6
  store i64 %143, i64* %PC, align 8
  %144 = load i32, i32* %319, align 4
  %145 = add i32 %144, %141
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = icmp ult i32 %145, %141
  %148 = icmp ult i32 %145, %144
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %27, align 1, !tbaa !2432
  %151 = and i32 %145, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #12
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %28, align 1, !tbaa !2446
  %156 = xor i32 %144, %141
  %157 = xor i32 %156, %145
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %29, align 1, !tbaa !2447
  %161 = icmp eq i32 %145, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %30, align 1, !tbaa !2448
  %163 = lshr i32 %145, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %31, align 1, !tbaa !2449
  %165 = lshr i32 %141, 31
  %166 = lshr i32 %144, 31
  %167 = xor i32 %163, %165
  %168 = xor i32 %163, %166
  %169 = add nuw nsw i32 %167, %168
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %32, align 1, !tbaa !2450
  %172 = sext i32 %145 to i64
  store i64 %172, i64* %RCX, align 8, !tbaa !2428
  %173 = shl nsw i64 %172, 2
  %174 = add i64 %173, ptrtoint (%puzzl_type* @puzzl to i64)
  %175 = add i64 %224, 20
  store i64 %175, i64* %PC, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 1, i32* %176, align 4
  %.pre20 = load i64, i64* %PC, align 8
  %.pre21 = load i64, i64* %RBP, align 8
  br label %block_40066c

block_400635:                                     ; preds = %block_400621
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %177 = add i64 %358, 14
  store i64 %177, i64* %PC, align 8
  %178 = load i32, i32* %324, align 4
  %179 = sext i32 %178 to i64
  %180 = shl nsw i64 %179, 11
  store i64 %180, i64* %RCX, align 8, !tbaa !2428
  %181 = add i64 %180, ptrtoint (%p_type* @p to i64)
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = icmp ult i64 %181, ptrtoint (%p_type* @p to i64)
  %183 = icmp ult i64 %181, %180
  %184 = or i1 %182, %183
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %27, align 1, !tbaa !2432
  %186 = trunc i64 %181 to i32
  %187 = and i32 %186, 240
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187) #12
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %28, align 1, !tbaa !2446
  %192 = xor i64 %181, ptrtoint (%p_type* @p to i64)
  %193 = lshr exact i64 %192, 4
  %194 = trunc i64 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %29, align 1, !tbaa !2447
  %196 = icmp eq i64 %181, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %30, align 1, !tbaa !2448
  %198 = lshr i64 %181, 63
  %199 = trunc i64 %198 to i8
  store i8 %199, i8* %31, align 1, !tbaa !2449
  %200 = lshr i64 %179, 52
  %201 = and i64 %200, 1
  %202 = xor i64 %198, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %203 = xor i64 %198, %201
  %204 = add nuw nsw i64 %202, %203
  %205 = icmp eq i64 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %32, align 1, !tbaa !2450
  %207 = add i64 %358, 25
  store i64 %207, i64* %PC, align 8
  %208 = load i32, i32* %319, align 4
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX, align 8, !tbaa !2428
  %210 = shl nsw i64 %209, 2
  %211 = add i64 %210, %181
  %212 = add i64 %358, 29
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %215 = and i32 %214, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215) #12
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %28, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %220 = icmp eq i32 %214, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %30, align 1, !tbaa !2448
  %222 = lshr i32 %214, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %32, align 1, !tbaa !2450
  %.v27 = select i1 %220, i64 55, i64 35
  %224 = add i64 %358, %.v27
  store i64 %224, i64* %PC, align 8, !tbaa !2428
  br i1 %220, label %block_40066c, label %block_400658

block_4006f2:                                     ; preds = %block_4006eb, %block_4006cd
  %225 = phi i64 [ %.pre23, %block_4006eb ], [ %279, %block_4006cd ]
  %226 = load i64, i64* %RBP, align 8
  %227 = add i64 %226, -4
  %228 = add i64 %225, 3
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = add i64 %225, 4
  store i64 %232, i64* %PC, align 8
  %233 = load i64, i64* %7, align 8, !tbaa !2428
  %234 = add i64 %233, 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RBP, align 8, !tbaa !2428
  store i64 %234, i64* %7, align 8, !tbaa !2428
  %237 = add i64 %225, 5
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %234 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %PC, align 8, !tbaa !2428
  %240 = add i64 %233, 16
  store i64 %240, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006ae:                                     ; preds = %block_4006d8, %block_40067f
  %241 = phi i64 [ %119, %block_4006d8 ], [ %.pre22, %block_40067f ]
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -16
  %244 = add i64 %241, 7
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = add i32 %246, -511
  %248 = icmp ult i32 %246, 511
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %27, align 1, !tbaa !2432
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #12
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %28, align 1, !tbaa !2446
  %255 = xor i32 %246, 16
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %29, align 1, !tbaa !2447
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1, !tbaa !2448
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %31, align 1, !tbaa !2449
  %264 = lshr i32 %246, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %32, align 1, !tbaa !2450
  %269 = icmp ne i8 %263, 0
  %270 = xor i1 %269, %267
  %.demorgan24 = or i1 %260, %270
  %.v25 = select i1 %.demorgan24, i64 13, i64 61
  %271 = add i64 %241, %.v25
  store i64 %271, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan24, label %block_4006bb, label %block_4006eb

block_4006cd:                                     ; preds = %block_4006bb
  %272 = add i64 %137, 3
  store i64 %272, i64* %PC, align 8
  %273 = load i32, i32* %245, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %242, -4
  %276 = add i64 %137, 6
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  store i32 %273, i32* %277, align 4
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, 31
  store i64 %279, i64* %PC, align 8, !tbaa !2428
  br label %block_4006f2

block_40066c:                                     ; preds = %block_400635, %block_400658
  %280 = phi i64 [ %316, %block_400635 ], [ %.pre21, %block_400658 ]
  %281 = phi i64 [ %224, %block_400635 ], [ %.pre20, %block_400658 ]
  %282 = add i64 %280, -16
  %283 = add i64 %281, 8
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
  store i8 %291, i8* %27, align 1, !tbaa !2432
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #12
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %28, align 1, !tbaa !2446
  %297 = xor i32 %286, %285
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %29, align 1, !tbaa !2447
  %301 = zext i1 %289 to i8
  store i8 %301, i8* %30, align 1, !tbaa !2448
  %302 = lshr i32 %286, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %31, align 1, !tbaa !2449
  %304 = lshr i32 %285, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %302
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %32, align 1, !tbaa !2450
  %309 = add i64 %281, 14
  store i64 %309, i64* %PC, align 8
  store i32 %286, i32* %284, align 4
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, -89
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br label %block_400621

block_4006eb:                                     ; preds = %block_4006ae
  %312 = add i64 %242, -4
  %313 = add i64 %271, 7
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i32*
  store i32 0, i32* %314, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_4006f2

block_400621:                                     ; preds = %block_40066c, %block_400610
  %315 = phi i64 [ %311, %block_40066c ], [ %.pre, %block_400610 ]
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
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #12
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
  br i1 %.demorgan, label %block_400635, label %block_40067f
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400460__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400460:
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
define %struct.Memory* @sub_4012b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #7 {
block_4012b0:
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
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #12
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
  br label %block_4012c6

block_4012e3:                                     ; preds = %block_4012c6
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP, align 8
  %47 = add i64 %46, 16
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  %48 = icmp ugt i64 %46, -17
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %12, align 1, !tbaa !2432
  %50 = trunc i64 %47 to i32
  %51 = and i32 %50, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #12
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
  ret %struct.Memory* %2

block_4012c6:                                     ; preds = %block_4012d0, %block_4012b0
  %78 = phi i64 [ %145, %block_4012d0 ], [ %.pre, %block_4012b0 ]
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
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #12
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
  br i1 %106, label %block_4012d0, label %block_4012e3

block_4012d0:                                     ; preds = %block_4012c6
  %108 = add i64 %107, -2656
  %109 = add i64 %107, 5
  %110 = load i64, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %113 = tail call %struct.Memory* @sub_400870_Puzzle_renamed_(%struct.State* nonnull %0, i64 %108, %struct.Memory* %2)
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
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #12
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
  br label %block_4012c6
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400430__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400430:
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
  store i64 ptrtoint (void ()* @callback_sub_401360___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4012f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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

; Function Attrs: noinline
define %struct.Memory* @sub_4012f0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %63 = add i64 %38, -3867
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4003f0__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401346, label %block_401326

block_401346.loopexit:                            ; preds = %block_401330
  br label %block_401346

block_401346:                                     ; preds = %block_401346.loopexit, %block_4012f0
  %81 = phi i64 [ %80, %block_4012f0 ], [ %179, %block_401346.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4012f0 ], [ %149, %block_401346.loopexit ]
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
  br i1 %169, label %block_401346.loopexit, label %block_401330
}

; Function Attrs: noinline
define %struct.Memory* @sub_400470_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400470:
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
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #12
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
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400498, label %block_400481

block_400498:                                     ; preds = %block_400481, %block_400470
  %20 = phi i64 [ %27, %block_400481 ], [ %19, %block_400470 ]
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

block_400481:                                     ; preds = %block_400470
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  %27 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  br label %block_400498
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401364__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401364:
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400540_Rand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400540:
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
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #12
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4003f0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4003f0:
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
  br i1 %18, label %block_400402, label %block_400400

block_400400:                                     ; preds = %block_4003f0
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400402

block_400402:                                     ; preds = %block_400400, %block_4003f0
  %27 = phi i64 [ %22, %block_4003f0 ], [ %.pre1, %block_400400 ]
  %28 = phi i64 [ %4, %block_4003f0 ], [ %.pre, %block_400400 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003f0 ], [ %26, %block_400400 ]
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

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4004e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
  br i1 %12, label %block_4004e9, label %block_400500

block_400500:                                     ; preds = %block_4004e0
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

block_4004e9:                                     ; preds = %block_4004e0
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
  %36 = tail call %struct.Memory* @sub_400470_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_401360___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400520_Initrand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400520:
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

; Function Attrs: noinline
define %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4004a0:
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
  br i1 %29, label %block_4004d8, label %block_4004c3

block_4004d8:                                     ; preds = %block_4004c3, %block_4004a0
  %34 = phi i64 [ %44, %block_4004c3 ], [ %33, %block_4004a0 ]
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

block_4004c3:                                     ; preds = %block_4004a0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_4004d8
}

; Function Attrs: noinline
define %struct.Memory* @sub_400870_Puzzle(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400870:
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
  %39 = add i64 %6, -24
  %40 = add i64 %9, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40087f

block_400ea9:                                     ; preds = %block_400e9f
  %42 = add i64 %1982, -12
  %43 = add i64 %1999, 7
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44, align 4
  %.pre245 = load i64, i64* %PC, align 8
  br label %block_400eb0

block_4011ee:                                     ; preds = %block_401187
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -16
  %47 = add i64 %1950, 5
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %RSI, align 8, !tbaa !2428
  %51 = add i64 %1950, -3038
  %52 = add i64 %1950, 10
  %53 = load i64, i64* %RSP, align 8, !tbaa !2428
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  store i64 %51, i64* %PC, align 8, !tbaa !2428
  %56 = tail call %struct.Memory* @sub_400610_Place_renamed_(%struct.State* nonnull %0, i64 %51, %struct.Memory* %1938)
  %57 = load i32, i32* %EAX, align 4
  %58 = load i64, i64* %PC, align 8
  store i32 %57, i32* bitcast (%n_type* @n to i32*), align 8
  %59 = add i64 %58, 32
  store i64 %59, i64* %PC, align 8, !tbaa !2428
  br label %block_401218

block_400efc:                                     ; preds = %block_400e9f
  %60 = add i64 %1982, -4
  %61 = add i64 %1999, 8
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %RAX, align 8, !tbaa !2428
  %66 = icmp eq i32 %63, -1
  %67 = icmp eq i32 %64, 0
  %68 = or i1 %66, %67
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %13, align 1, !tbaa !2432
  %70 = and i32 %64, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #12
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %20, align 1, !tbaa !2446
  %75 = xor i32 %64, %63
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %26, align 1, !tbaa !2447
  %79 = zext i1 %67 to i8
  store i8 %79, i8* %29, align 1, !tbaa !2448
  %80 = lshr i32 %64, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %32, align 1, !tbaa !2449
  %82 = lshr i32 %63, 31
  %83 = xor i32 %80, %82
  %84 = add nuw nsw i32 %83, %80
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %38, align 1, !tbaa !2450
  %87 = add i64 %1999, 14
  store i64 %87, i64* %PC, align 8
  store i32 %64, i32* %62, align 4
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, -124
  store i64 %89, i64* %PC, align 8, !tbaa !2428
  br label %block_400e8e

block_400be6:                                     ; preds = %block_400b89
  %90 = add i64 %1000, -4
  %91 = add i64 %1028, 8
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
  store i8 %99, i8* %13, align 1, !tbaa !2432
  %100 = and i32 %94, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #12
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %20, align 1, !tbaa !2446
  %105 = xor i32 %94, %93
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %26, align 1, !tbaa !2447
  %109 = zext i1 %97 to i8
  store i8 %109, i8* %29, align 1, !tbaa !2448
  %110 = lshr i32 %94, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %32, align 1, !tbaa !2449
  %112 = lshr i32 %93, 31
  %113 = xor i32 %110, %112
  %114 = add nuw nsw i32 %113, %110
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1, !tbaa !2450
  %117 = add i64 %1028, 14
  store i64 %117, i64* %PC, align 8
  store i32 %94, i32* %92, align 4
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, -124
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  br label %block_400b78

block_400fec:                                     ; preds = %block_400fe5, %block_400ff6
  %120 = phi i64 [ %.pre251, %block_400fe5 ], [ %2637, %block_400ff6 ]
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -12
  %123 = add i64 %120, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, -1
  %127 = icmp eq i32 %125, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %13, align 1, !tbaa !2432
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #12
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %20, align 1, !tbaa !2446
  %134 = xor i32 %126, %125
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %26, align 1, !tbaa !2447
  %138 = icmp eq i32 %126, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %29, align 1, !tbaa !2448
  %140 = lshr i32 %126, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1, !tbaa !2449
  %142 = lshr i32 %125, 31
  %143 = xor i32 %140, %142
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %38, align 1, !tbaa !2450
  %147 = icmp ne i8 %141, 0
  %148 = xor i1 %147, %145
  %.demorgan306 = or i1 %138, %148
  %.v307 = select i1 %.demorgan306, i64 10, i64 57
  %149 = add i64 %120, %.v307
  store i64 %149, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan306, label %block_400ff6, label %block_401025

block_400dd3:                                     ; preds = %block_400d52
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 24) to i32*), align 8
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 24) to i32*), align 8
  %150 = add i64 %600, 29
  store i64 %150, i64* %PC, align 8
  store i32 0, i32* %575, align 4
  %.pre240 = load i64, i64* %PC, align 8
  br label %block_400df0

block_400fca:                                     ; preds = %block_401038, %block_400fad
  %151 = phi i64 [ %630, %block_401038 ], [ %.pre249, %block_400fad ]
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -4
  %154 = add i64 %151, 4
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, -1
  %158 = icmp eq i32 %156, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %13, align 1, !tbaa !2432
  %160 = and i32 %157, 255
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160) #12
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %20, align 1, !tbaa !2446
  %165 = xor i32 %157, %156
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %26, align 1, !tbaa !2447
  %169 = icmp eq i32 %157, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %29, align 1, !tbaa !2448
  %171 = lshr i32 %157, 31
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %32, align 1, !tbaa !2449
  %173 = lshr i32 %156, 31
  %174 = xor i32 %171, %173
  %175 = add nuw nsw i32 %174, %173
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %38, align 1, !tbaa !2450
  %178 = icmp ne i8 %172, 0
  %179 = xor i1 %178, %176
  %.demorgan305 = or i1 %169, %179
  %.v331 = select i1 %.demorgan305, i64 10, i64 129
  %180 = add i64 %151, %.v331
  store i64 %180, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan305, label %block_400fd4, label %block_40104b

block_40104b:                                     ; preds = %block_400fca
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 40) to i32*), align 8
  store i32 65, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 40) to i32*), align 8
  %181 = add i64 %180, 29
  store i64 %181, i64* %PC, align 8
  store i32 0, i32* %155, align 4
  %.pre252 = load i64, i64* %PC, align 8
  br label %block_401068

block_400dc0:                                     ; preds = %block_400d63
  %182 = add i64 %2004, -4
  %183 = add i64 %2021, 8
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = add i32 %185, 1
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX, align 8, !tbaa !2428
  %188 = icmp eq i32 %185, -1
  %189 = icmp eq i32 %186, 0
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %13, align 1, !tbaa !2432
  %192 = and i32 %186, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192) #12
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %20, align 1, !tbaa !2446
  %197 = xor i32 %186, %185
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %26, align 1, !tbaa !2447
  %201 = zext i1 %189 to i8
  store i8 %201, i8* %29, align 1, !tbaa !2448
  %202 = lshr i32 %186, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %32, align 1, !tbaa !2449
  %204 = lshr i32 %185, 31
  %205 = xor i32 %202, %204
  %206 = add nuw nsw i32 %205, %202
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1, !tbaa !2450
  %209 = add i64 %2021, 14
  store i64 %209, i64* %PC, align 8
  store i32 %186, i32* %184, align 4
  %210 = load i64, i64* %PC, align 8
  %211 = add i64 %210, -124
  store i64 %211, i64* %PC, align 8, !tbaa !2428
  br label %block_400d52

block_4009b9:                                     ; preds = %block_4009af
  %212 = add i64 %686, -12
  %213 = add i64 %714, 7
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  store i32 0, i32* %214, align 4
  %.pre221 = load i64, i64* %PC, align 8
  br label %block_4009c0

block_400fad:                                     ; preds = %block_400f2c
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 36) to i32*), align 4
  store i32 9, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 36) to i32*), align 4
  %215 = add i64 %935, 29
  store i64 %215, i64* %PC, align 8
  store i32 0, i32* %910, align 4
  %.pre249 = load i64, i64* %PC, align 8
  br label %block_400fca

block_400ba4:                                     ; preds = %block_400b9a
  %216 = add i64 %803, -4
  %217 = add i64 %820, 3
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = add i64 %803, -8
  %222 = add i64 %820, 6
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RCX, align 8, !tbaa !2428
  %226 = add i64 %820, 9
  store i64 %226, i64* %PC, align 8
  %227 = load i32, i32* %806, align 4
  %228 = shl i32 %227, 3
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RDX, align 8, !tbaa !2428
  %230 = add i32 %228, %224
  %231 = shl i32 %230, 3
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RCX, align 8, !tbaa !2428
  %233 = load i64, i64* %RAX, align 8
  %234 = trunc i64 %233 to i32
  %235 = add i32 %231, %234
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = icmp ult i32 %235, %234
  %238 = icmp ult i32 %235, %231
  %239 = or i1 %237, %238
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %13, align 1, !tbaa !2432
  %241 = and i32 %235, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #12
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %20, align 1, !tbaa !2446
  %246 = xor i64 %232, %233
  %247 = trunc i64 %246 to i32
  %248 = xor i32 %247, %235
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %26, align 1, !tbaa !2447
  %252 = icmp eq i32 %235, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %29, align 1, !tbaa !2448
  %254 = lshr i32 %235, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %32, align 1, !tbaa !2449
  %256 = lshr i32 %234, 31
  %257 = lshr i32 %230, 28
  %258 = and i32 %257, 1
  %259 = xor i32 %254, %256
  %260 = xor i32 %254, %258
  %261 = add nuw nsw i32 %259, %260
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %38, align 1, !tbaa !2450
  %264 = sext i32 %235 to i64
  store i64 %264, i64* %RSI, align 8, !tbaa !2428
  %265 = shl nsw i64 %264, 2
  %266 = add i64 %265, add (i64 ptrtoint (%p_type* @p to i64), i64 6144)
  %267 = add i64 %820, 33
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 1, i32* %268, align 4
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -12
  %271 = load i64, i64* %PC, align 8
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %277 = icmp eq i32 %274, -1
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %13, align 1, !tbaa !2432
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281) #12
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %20, align 1, !tbaa !2446
  %286 = xor i32 %275, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %26, align 1, !tbaa !2447
  %290 = zext i1 %278 to i8
  store i8 %290, i8* %29, align 1, !tbaa !2448
  %291 = lshr i32 %275, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %32, align 1, !tbaa !2449
  %293 = lshr i32 %274, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %38, align 1, !tbaa !2450
  %298 = add i64 %271, 9
  store i64 %298, i64* %PC, align 8
  store i32 %275, i32* %273, align 4
  %299 = load i64, i64* %PC, align 8
  %300 = add i64 %299, -52
  store i64 %300, i64* %PC, align 8, !tbaa !2428
  br label %block_400b9a

block_400f9a:                                     ; preds = %block_400f3d
  %301 = add i64 %1864, -4
  %302 = add i64 %1892, 8
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = add i32 %304, 1
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = icmp eq i32 %304, -1
  %308 = icmp eq i32 %305, 0
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %13, align 1, !tbaa !2432
  %311 = and i32 %305, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311) #12
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %20, align 1, !tbaa !2446
  %316 = xor i32 %305, %304
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %26, align 1, !tbaa !2447
  %320 = zext i1 %308 to i8
  store i8 %320, i8* %29, align 1, !tbaa !2448
  %321 = lshr i32 %305, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %32, align 1, !tbaa !2449
  %323 = lshr i32 %304, 31
  %324 = xor i32 %321, %323
  %325 = add nuw nsw i32 %324, %321
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %38, align 1, !tbaa !2450
  %328 = add i64 %1892, 14
  store i64 %328, i64* %PC, align 8
  store i32 %305, i32* %303, align 4
  %329 = load i64, i64* %PC, align 8
  %330 = add i64 %329, -124
  store i64 %330, i64* %PC, align 8, !tbaa !2428
  br label %block_400f2c

block_400997:                                     ; preds = %block_400938
  %331 = add i64 %768, 7
  store i64 %331, i64* %PC, align 8
  store i32 0, i32* %743, align 4
  %.pre219 = load i64, i64* %PC, align 8
  br label %block_40099e

block_400b93:                                     ; preds = %block_400b89
  %332 = add i64 %1000, -12
  %333 = add i64 %1028, 7
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  store i32 0, i32* %334, align 4
  %.pre230 = load i64, i64* %PC, align 8
  br label %block_400b9a

block_400984:                                     ; preds = %block_400949
  %335 = add i64 %1800, -4
  %336 = add i64 %1829, 8
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = add i32 %338, 1
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RAX, align 8, !tbaa !2428
  %341 = icmp eq i32 %338, -1
  %342 = icmp eq i32 %339, 0
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %13, align 1, !tbaa !2432
  %345 = and i32 %339, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345) #12
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %20, align 1, !tbaa !2446
  %350 = xor i32 %339, %338
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %26, align 1, !tbaa !2447
  %354 = zext i1 %342 to i8
  store i8 %354, i8* %29, align 1, !tbaa !2448
  %355 = lshr i32 %339, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %32, align 1, !tbaa !2449
  %357 = lshr i32 %338, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %355
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %38, align 1, !tbaa !2450
  %362 = add i64 %1829, 14
  store i64 %362, i64* %PC, align 8
  store i32 %339, i32* %337, align 4
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, -90
  store i64 %364, i64* %PC, align 8, !tbaa !2428
  br label %block_400938

block_400d7e:                                     ; preds = %block_400d74
  %365 = add i64 %1729, -4
  %366 = add i64 %1746, 3
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX, align 8, !tbaa !2428
  %370 = add i64 %1729, -8
  %371 = add i64 %1746, 6
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RCX, align 8, !tbaa !2428
  %375 = add i64 %1746, 9
  store i64 %375, i64* %PC, align 8
  %376 = load i32, i32* %1732, align 4
  %377 = shl i32 %376, 3
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RDX, align 8, !tbaa !2428
  %379 = add i32 %377, %373
  %380 = shl i32 %379, 3
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RCX, align 8, !tbaa !2428
  %382 = load i64, i64* %RAX, align 8
  %383 = trunc i64 %382 to i32
  %384 = add i32 %380, %383
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RAX, align 8, !tbaa !2428
  %386 = icmp ult i32 %384, %383
  %387 = icmp ult i32 %384, %380
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %13, align 1, !tbaa !2432
  %390 = and i32 %384, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390) #12
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %20, align 1, !tbaa !2446
  %395 = xor i64 %381, %382
  %396 = trunc i64 %395 to i32
  %397 = xor i32 %396, %384
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %26, align 1, !tbaa !2447
  %401 = icmp eq i32 %384, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %29, align 1, !tbaa !2448
  %403 = lshr i32 %384, 31
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %32, align 1, !tbaa !2449
  %405 = lshr i32 %383, 31
  %406 = lshr i32 %379, 28
  %407 = and i32 %406, 1
  %408 = xor i32 %403, %405
  %409 = xor i32 %403, %407
  %410 = add nuw nsw i32 %408, %409
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %38, align 1, !tbaa !2450
  %413 = sext i32 %384 to i64
  store i64 %413, i64* %RSI, align 8, !tbaa !2428
  %414 = shl nsw i64 %413, 2
  %415 = add i64 %414, add (i64 ptrtoint (%p_type* @p to i64), i64 12288)
  %416 = add i64 %1746, 33
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i32*
  store i32 1, i32* %417, align 4
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -12
  %420 = load i64, i64* %PC, align 8
  %421 = add i64 %420, 3
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %419 to i32*
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
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430) #12
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
  %447 = add i64 %420, 9
  store i64 %447, i64* %PC, align 8
  store i32 %424, i32* %422, align 4
  %448 = load i64, i64* %PC, align 8
  %449 = add i64 %448, -52
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  br label %block_400d74

block_400dfa:                                     ; preds = %block_400df0
  %450 = add i64 %1127, -8
  %451 = add i64 %1144, 7
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  store i32 0, i32* %452, align 4
  %.pre241 = load i64, i64* %PC, align 8
  br label %block_400e01

block_400d6d:                                     ; preds = %block_400d63
  %453 = add i64 %2004, -12
  %454 = add i64 %2021, 7
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %453 to i32*
  store i32 0, i32* %455, align 4
  %.pre239 = load i64, i64* %PC, align 8
  br label %block_400d74

block_400a68:                                     ; preds = %block_400a5e
  %456 = add i64 %2639, -4
  %457 = add i64 %2667, 3
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RAX, align 8, !tbaa !2428
  %461 = add i64 %2639, -8
  %462 = add i64 %2667, 6
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RCX, align 8, !tbaa !2428
  %466 = add i64 %2667, 9
  store i64 %466, i64* %PC, align 8
  %467 = load i32, i32* %2642, align 4
  %468 = shl i32 %467, 3
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RDX, align 8, !tbaa !2428
  %470 = add i32 %468, %464
  %471 = shl i32 %470, 3
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  %473 = load i64, i64* %RAX, align 8
  %474 = trunc i64 %473 to i32
  %475 = add i32 %471, %474
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = icmp ult i32 %475, %474
  %478 = icmp ult i32 %475, %471
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %13, align 1, !tbaa !2432
  %481 = and i32 %475, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481) #12
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %20, align 1, !tbaa !2446
  %486 = xor i64 %472, %473
  %487 = trunc i64 %486 to i32
  %488 = xor i32 %487, %475
  %489 = lshr i32 %488, 4
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %26, align 1, !tbaa !2447
  %492 = icmp eq i32 %475, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %29, align 1, !tbaa !2448
  %494 = lshr i32 %475, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %32, align 1, !tbaa !2449
  %496 = lshr i32 %474, 31
  %497 = lshr i32 %470, 28
  %498 = and i32 %497, 1
  %499 = xor i32 %494, %496
  %500 = xor i32 %494, %498
  %501 = add nuw nsw i32 %499, %500
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %38, align 1, !tbaa !2450
  %504 = sext i32 %475 to i64
  store i64 %504, i64* %RSI, align 8, !tbaa !2428
  %505 = shl nsw i64 %504, 2
  %506 = add i64 %505, add (i64 ptrtoint (%p_type* @p to i64), i64 2048)
  %507 = add i64 %2667, 33
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  store i32 1, i32* %508, align 4
  %509 = load i64, i64* %RBP, align 8
  %510 = add i64 %509, -12
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
  store i8 %520, i8* %13, align 1, !tbaa !2432
  %521 = and i32 %515, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521) #12
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %20, align 1, !tbaa !2446
  %526 = xor i32 %515, %514
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %26, align 1, !tbaa !2447
  %530 = zext i1 %518 to i8
  store i8 %530, i8* %29, align 1, !tbaa !2448
  %531 = lshr i32 %515, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %32, align 1, !tbaa !2449
  %533 = lshr i32 %514, 31
  %534 = xor i32 %531, %533
  %535 = add nuw nsw i32 %534, %531
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %38, align 1, !tbaa !2450
  %538 = add i64 %511, 9
  store i64 %538, i64* %PC, align 8
  store i32 %515, i32* %513, align 4
  %539 = load i64, i64* %PC, align 8
  %540 = add i64 %539, -52
  store i64 %540, i64* %PC, align 8, !tbaa !2428
  br label %block_400a5e

block_401161:                                     ; preds = %block_401128
  %541 = add i64 %1096, -8
  %542 = add i64 %1124, 8
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = add i32 %544, 1
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX, align 8, !tbaa !2428
  %547 = icmp eq i32 %544, -1
  %548 = icmp eq i32 %545, 0
  %549 = or i1 %547, %548
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %13, align 1, !tbaa !2432
  %551 = and i32 %545, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551) #12
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %20, align 1, !tbaa !2446
  %556 = xor i32 %545, %544
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %26, align 1, !tbaa !2447
  %560 = zext i1 %548 to i8
  store i8 %560, i8* %29, align 1, !tbaa !2448
  %561 = lshr i32 %545, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %32, align 1, !tbaa !2449
  %563 = lshr i32 %544, 31
  %564 = xor i32 %561, %563
  %565 = add nuw nsw i32 %564, %561
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %38, align 1, !tbaa !2450
  %568 = add i64 %1124, 14
  store i64 %568, i64* %PC, align 8
  store i32 %545, i32* %543, align 4
  %569 = load i64, i64* %PC, align 8
  %570 = add i64 %569, -88
  store i64 %570, i64* %PC, align 8, !tbaa !2428
  br label %block_401117

block_400d52:                                     ; preds = %block_400d35, %block_400dc0
  %571 = phi i64 [ %.pre237, %block_400d35 ], [ %211, %block_400dc0 ]
  %572 = load i64, i64* %RBP, align 8
  %573 = add i64 %572, -4
  %574 = add i64 %571, 4
  store i64 %574, i64* %PC, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = add i32 %576, -2
  %578 = icmp ult i32 %576, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %13, align 1, !tbaa !2432
  %580 = and i32 %577, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580) #12
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %20, align 1, !tbaa !2446
  %585 = xor i32 %577, %576
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %26, align 1, !tbaa !2447
  %589 = icmp eq i32 %577, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %29, align 1, !tbaa !2448
  %591 = lshr i32 %577, 31
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %32, align 1, !tbaa !2449
  %593 = lshr i32 %576, 31
  %594 = xor i32 %591, %593
  %595 = add nuw nsw i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %38, align 1, !tbaa !2450
  %598 = icmp ne i8 %592, 0
  %599 = xor i1 %598, %596
  %.demorgan292 = or i1 %589, %599
  %.v327 = select i1 %.demorgan292, i64 10, i64 129
  %600 = add i64 %571, %.v327
  store i64 %600, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan292, label %block_400d5c, label %block_400dd3

block_401038:                                     ; preds = %block_400fdb
  %601 = add i64 %2672, -4
  %602 = add i64 %2689, 8
  store i64 %602, i64* %PC, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, 1
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX, align 8, !tbaa !2428
  %607 = icmp eq i32 %604, -1
  %608 = icmp eq i32 %605, 0
  %609 = or i1 %607, %608
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %13, align 1, !tbaa !2432
  %611 = and i32 %605, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611) #12
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %20, align 1, !tbaa !2446
  %616 = xor i32 %605, %604
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %26, align 1, !tbaa !2447
  %620 = zext i1 %608 to i8
  store i8 %620, i8* %29, align 1, !tbaa !2448
  %621 = lshr i32 %605, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %32, align 1, !tbaa !2449
  %623 = lshr i32 %604, 31
  %624 = xor i32 %621, %623
  %625 = add nuw nsw i32 %624, %621
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %38, align 1, !tbaa !2450
  %628 = add i64 %2689, 14
  store i64 %628, i64* %PC, align 8
  store i32 %605, i32* %603, align 4
  %629 = load i64, i64* %PC, align 8
  %630 = add i64 %629, -124
  store i64 %630, i64* %PC, align 8, !tbaa !2428
  br label %block_400fca

block_401246:                                     ; preds = %block_401218
  %631 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %632 = add i32 %631, -2005
  %633 = icmp ult i32 %631, 2005
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %13, align 1, !tbaa !2432
  %635 = and i32 %632, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635) #12
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %20, align 1, !tbaa !2446
  %640 = xor i32 %631, 16
  %641 = xor i32 %640, %632
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %26, align 1, !tbaa !2447
  %645 = icmp eq i32 %632, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %29, align 1, !tbaa !2448
  %647 = lshr i32 %632, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %32, align 1, !tbaa !2449
  %649 = lshr i32 %631, 31
  %650 = xor i32 %647, %649
  %651 = add nuw nsw i32 %650, %649
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %38, align 1, !tbaa !2450
  %.v335 = select i1 %645, i64 37, i64 17
  %654 = add i64 %3223, %.v335
  store i64 %654, i64* %PC, align 8, !tbaa !2428
  br i1 %645, label %block_401270, label %block_401257

block_400b48:                                     ; preds = %block_400aeb
  %655 = add i64 %2218, -4
  %656 = add i64 %2246, 8
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = add i32 %658, 1
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RAX, align 8, !tbaa !2428
  %661 = icmp eq i32 %658, -1
  %662 = icmp eq i32 %659, 0
  %663 = or i1 %661, %662
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %13, align 1, !tbaa !2432
  %665 = and i32 %659, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665) #12
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %20, align 1, !tbaa !2446
  %670 = xor i32 %659, %658
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %26, align 1, !tbaa !2447
  %674 = zext i1 %662 to i8
  store i8 %674, i8* %29, align 1, !tbaa !2448
  %675 = lshr i32 %659, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %32, align 1, !tbaa !2449
  %677 = lshr i32 %658, 31
  %678 = xor i32 %675, %677
  %679 = add nuw nsw i32 %678, %675
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %38, align 1, !tbaa !2450
  %682 = add i64 %2246, 14
  store i64 %682, i64* %PC, align 8
  store i32 %659, i32* %657, align 4
  %683 = load i64, i64* %PC, align 8
  %684 = add i64 %683, -124
  store i64 %684, i64* %PC, align 8, !tbaa !2428
  br label %block_400ada

block_4009af:                                     ; preds = %block_4009f9, %block_4009a8
  %685 = phi i64 [ %1547, %block_4009f9 ], [ %.pre220, %block_4009a8 ]
  %686 = load i64, i64* %RBP, align 8
  %687 = add i64 %686, -8
  %688 = add i64 %685, 4
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = add i32 %690, -1
  %692 = icmp eq i32 %690, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %13, align 1, !tbaa !2432
  %694 = and i32 %691, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694) #12
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %20, align 1, !tbaa !2446
  %699 = xor i32 %691, %690
  %700 = lshr i32 %699, 4
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %26, align 1, !tbaa !2447
  %703 = icmp eq i32 %691, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %29, align 1, !tbaa !2448
  %705 = lshr i32 %691, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %32, align 1, !tbaa !2449
  %707 = lshr i32 %690, 31
  %708 = xor i32 %705, %707
  %709 = add nuw nsw i32 %708, %707
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %38, align 1, !tbaa !2450
  %712 = icmp ne i8 %706, 0
  %713 = xor i1 %712, %710
  %.demorgan269 = or i1 %703, %713
  %.v271 = select i1 %.demorgan269, i64 10, i64 93
  %714 = add i64 %685, %.v271
  store i64 %714, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan269, label %block_4009b9, label %block_400a0c

block_400f47:                                     ; preds = %block_400f3d
  %715 = add i64 %1864, -12
  %716 = add i64 %1892, 7
  store i64 %716, i64* %PC, align 8
  %717 = inttoptr i64 %715 to i32*
  store i32 0, i32* %717, align 4
  %.pre248 = load i64, i64* %PC, align 8
  br label %block_400f4e

block_400f4e:                                     ; preds = %block_400f58, %block_400f47
  %718 = phi i64 [ %2364, %block_400f58 ], [ %.pre248, %block_400f47 ]
  %719 = load i64, i64* %RBP, align 8
  %720 = add i64 %719, -12
  %721 = add i64 %718, 4
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %724 = and i32 %723, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724) #12
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %729 = icmp eq i32 %723, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %29, align 1, !tbaa !2448
  %731 = lshr i32 %723, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %733 = xor i1 %729, true
  %734 = icmp eq i8 %732, 0
  %735 = and i1 %734, %733
  %.v303 = select i1 %735, i64 57, i64 10
  %736 = add i64 %718, %.v303
  store i64 %736, i64* %PC, align 8, !tbaa !2428
  br i1 %735, label %block_400f87, label %block_400f58

block_400d35:                                     ; preds = %block_400cb4
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 20) to i32*), align 4
  store i32 200, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 20) to i32*), align 4
  %737 = add i64 %1768, 29
  store i64 %737, i64* %PC, align 8
  store i32 0, i32* %1754, align 4
  %.pre237 = load i64, i64* %PC, align 8
  br label %block_400d52

block_4010e9:                                     ; preds = %block_401068
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 44) to i32*), align 4
  store i32 72, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 44) to i32*), align 4
  %738 = add i64 %2516, 29
  store i64 %738, i64* %PC, align 8
  store i32 0, i32* %2502, align 4
  %.pre255 = load i64, i64* %PC, align 8
  br label %block_401106

block_400938:                                     ; preds = %block_400931, %block_400984
  %739 = phi i64 [ %.pre217, %block_400931 ], [ %364, %block_400984 ]
  %740 = load i64, i64* %RBP, align 8
  %741 = add i64 %740, -4
  %742 = add i64 %739, 4
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, -12
  %746 = icmp ult i32 %744, 12
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %13, align 1, !tbaa !2432
  %748 = and i32 %745, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748) #12
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %20, align 1, !tbaa !2446
  %753 = xor i32 %745, %744
  %754 = lshr i32 %753, 4
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  store i8 %756, i8* %26, align 1, !tbaa !2447
  %757 = icmp eq i32 %745, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %29, align 1, !tbaa !2448
  %759 = lshr i32 %745, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %32, align 1, !tbaa !2449
  %761 = lshr i32 %744, 31
  %762 = xor i32 %759, %761
  %763 = add nuw nsw i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %38, align 1, !tbaa !2450
  %766 = icmp ne i8 %760, 0
  %767 = xor i1 %766, %764
  %.demorgan265 = or i1 %757, %767
  %.v320 = select i1 %.demorgan265, i64 10, i64 95
  %768 = add i64 %739, %.v320
  store i64 %768, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan265, label %block_400942, label %block_400997

block_40099e:                                     ; preds = %block_400a0c, %block_400997
  %769 = phi i64 [ %3437, %block_400a0c ], [ %.pre219, %block_400997 ]
  %770 = load i64, i64* %RBP, align 8
  %771 = add i64 %770, -4
  %772 = add i64 %769, 4
  store i64 %772, i64* %PC, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = add i32 %774, -3
  %776 = icmp ult i32 %774, 3
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %13, align 1, !tbaa !2432
  %778 = and i32 %775, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778) #12
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %20, align 1, !tbaa !2446
  %783 = xor i32 %775, %774
  %784 = lshr i32 %783, 4
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  store i8 %786, i8* %26, align 1, !tbaa !2447
  %787 = icmp eq i32 %775, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %29, align 1, !tbaa !2448
  %789 = lshr i32 %775, 31
  %790 = trunc i32 %789 to i8
  store i8 %790, i8* %32, align 1, !tbaa !2449
  %791 = lshr i32 %774, 31
  %792 = xor i32 %789, %791
  %793 = add nuw nsw i32 %792, %791
  %794 = icmp eq i32 %793, 2
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %38, align 1, !tbaa !2450
  %796 = icmp ne i8 %790, 0
  %797 = xor i1 %796, %794
  %.demorgan268 = or i1 %787, %797
  %.v321 = select i1 %.demorgan268, i64 10, i64 129
  %798 = add i64 %769, %.v321
  store i64 %798, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan268, label %block_4009a8, label %block_400a1f

block_400f36:                                     ; preds = %block_400f2c
  %799 = add i64 %907, -8
  %800 = add i64 %935, 7
  store i64 %800, i64* %PC, align 8
  %801 = inttoptr i64 %799 to i32*
  store i32 0, i32* %801, align 4
  %.pre247 = load i64, i64* %PC, align 8
  br label %block_400f3d

block_400b9a:                                     ; preds = %block_400b93, %block_400ba4
  %802 = phi i64 [ %.pre230, %block_400b93 ], [ %300, %block_400ba4 ]
  %803 = load i64, i64* %RBP, align 8
  %804 = add i64 %803, -12
  %805 = add i64 %802, 4
  store i64 %805, i64* %PC, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %808 = and i32 %807, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808) #12
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %813 = icmp eq i32 %807, 0
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %29, align 1, !tbaa !2448
  %815 = lshr i32 %807, 31
  %816 = trunc i32 %815 to i8
  store i8 %816, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %817 = xor i1 %813, true
  %818 = icmp eq i8 %816, 0
  %819 = and i1 %818, %817
  %.v282 = select i1 %819, i64 57, i64 10
  %820 = add i64 %802, %.v282
  store i64 %820, i64* %PC, align 8, !tbaa !2428
  br i1 %819, label %block_400bd3, label %block_400ba4

block_401132:                                     ; preds = %block_401128
  %821 = add i64 %1096, -4
  %822 = add i64 %1124, 3
  store i64 %822, i64* %PC, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RAX, align 8, !tbaa !2428
  %826 = add i64 %1096, -8
  %827 = add i64 %1124, 6
  store i64 %827, i64* %PC, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RCX, align 8, !tbaa !2428
  %831 = add i64 %1124, 9
  store i64 %831, i64* %PC, align 8
  %832 = load i32, i32* %1099, align 4
  %833 = shl i32 %832, 3
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDX, align 8, !tbaa !2428
  %835 = add i32 %833, %829
  %836 = shl i32 %835, 3
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RCX, align 8, !tbaa !2428
  %838 = load i64, i64* %RAX, align 8
  %839 = trunc i64 %838 to i32
  %840 = add i32 %836, %839
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RAX, align 8, !tbaa !2428
  %842 = icmp ult i32 %840, %839
  %843 = icmp ult i32 %840, %836
  %844 = or i1 %842, %843
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %13, align 1, !tbaa !2432
  %846 = and i32 %840, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846) #12
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %20, align 1, !tbaa !2446
  %851 = xor i64 %837, %838
  %852 = trunc i64 %851 to i32
  %853 = xor i32 %852, %840
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %26, align 1, !tbaa !2447
  %857 = icmp eq i32 %840, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %29, align 1, !tbaa !2448
  %859 = lshr i32 %840, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %32, align 1, !tbaa !2449
  %861 = lshr i32 %839, 31
  %862 = lshr i32 %835, 28
  %863 = and i32 %862, 1
  %864 = xor i32 %859, %861
  %865 = xor i32 %859, %863
  %866 = add nuw nsw i32 %864, %865
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %38, align 1, !tbaa !2450
  %869 = sext i32 %840 to i64
  store i64 %869, i64* %RSI, align 8, !tbaa !2428
  %870 = shl nsw i64 %869, 2
  %871 = add i64 %870, add (i64 ptrtoint (%p_type* @p to i64), i64 24576)
  %872 = add i64 %1124, 33
  store i64 %872, i64* %PC, align 8
  %873 = inttoptr i64 %871 to i32*
  store i32 1, i32* %873, align 4
  %874 = load i64, i64* %RBP, align 8
  %875 = add i64 %874, -12
  %876 = load i64, i64* %PC, align 8
  %877 = add i64 %876, 3
  store i64 %877, i64* %PC, align 8
  %878 = inttoptr i64 %875 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = add i32 %879, 1
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RAX, align 8, !tbaa !2428
  %882 = icmp eq i32 %879, -1
  %883 = icmp eq i32 %880, 0
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %13, align 1, !tbaa !2432
  %886 = and i32 %880, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886) #12
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %20, align 1, !tbaa !2446
  %891 = xor i32 %880, %879
  %892 = lshr i32 %891, 4
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %26, align 1, !tbaa !2447
  %895 = zext i1 %883 to i8
  store i8 %895, i8* %29, align 1, !tbaa !2448
  %896 = lshr i32 %880, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %32, align 1, !tbaa !2449
  %898 = lshr i32 %879, 31
  %899 = xor i32 %896, %898
  %900 = add nuw nsw i32 %899, %896
  %901 = icmp eq i32 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %38, align 1, !tbaa !2450
  %903 = add i64 %876, 9
  store i64 %903, i64* %PC, align 8
  store i32 %880, i32* %878, align 4
  %904 = load i64, i64* %PC, align 8
  %905 = add i64 %904, -52
  store i64 %905, i64* %PC, align 8, !tbaa !2428
  br label %block_401128

block_400f2c:                                     ; preds = %block_400f0f, %block_400f9a
  %906 = phi i64 [ %.pre246, %block_400f0f ], [ %330, %block_400f9a ]
  %907 = load i64, i64* %RBP, align 8
  %908 = add i64 %907, -4
  %909 = add i64 %906, 4
  store i64 %909, i64* %PC, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = add i32 %911, -1
  %913 = icmp eq i32 %911, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %13, align 1, !tbaa !2432
  %915 = and i32 %912, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915) #12
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %20, align 1, !tbaa !2446
  %920 = xor i32 %912, %911
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %26, align 1, !tbaa !2447
  %924 = icmp eq i32 %912, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %29, align 1, !tbaa !2448
  %926 = lshr i32 %912, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %32, align 1, !tbaa !2449
  %928 = lshr i32 %911, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %38, align 1, !tbaa !2450
  %933 = icmp ne i8 %927, 0
  %934 = xor i1 %933, %931
  %.demorgan301 = or i1 %924, %934
  %.v330 = select i1 %.demorgan301, i64 10, i64 129
  %935 = add i64 %906, %.v330
  store i64 %935, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan301, label %block_400f36, label %block_400fad

block_400f87:                                     ; preds = %block_400f4e
  %936 = add i64 %719, -8
  %937 = add i64 %736, 8
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = add i32 %939, 1
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RAX, align 8, !tbaa !2428
  %942 = icmp eq i32 %939, -1
  %943 = icmp eq i32 %940, 0
  %944 = or i1 %942, %943
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %13, align 1, !tbaa !2432
  %946 = and i32 %940, 255
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946) #12
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %20, align 1, !tbaa !2446
  %951 = xor i32 %940, %939
  %952 = lshr i32 %951, 4
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  store i8 %954, i8* %26, align 1, !tbaa !2447
  %955 = zext i1 %943 to i8
  store i8 %955, i8* %29, align 1, !tbaa !2448
  %956 = lshr i32 %940, 31
  %957 = trunc i32 %956 to i8
  store i8 %957, i8* %32, align 1, !tbaa !2449
  %958 = lshr i32 %939, 31
  %959 = xor i32 %956, %958
  %960 = add nuw nsw i32 %959, %956
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %38, align 1, !tbaa !2450
  %963 = add i64 %736, 14
  store i64 %963, i64* %PC, align 8
  store i32 %940, i32* %938, align 4
  %964 = load i64, i64* %PC, align 8
  %965 = add i64 %964, -88
  store i64 %965, i64* %PC, align 8, !tbaa !2428
  br label %block_400f3d

block_4009a8:                                     ; preds = %block_40099e
  %966 = add i64 %770, -8
  %967 = add i64 %798, 7
  store i64 %967, i64* %PC, align 8
  %968 = inttoptr i64 %966 to i32*
  store i32 0, i32* %968, align 4
  %.pre220 = load i64, i64* %PC, align 8
  br label %block_4009af

block_400d22:                                     ; preds = %block_400cc5
  %969 = add i64 %1549, -4
  %970 = add i64 %1577, 8
  store i64 %970, i64* %PC, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = add i32 %972, 1
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX, align 8, !tbaa !2428
  %975 = icmp eq i32 %972, -1
  %976 = icmp eq i32 %973, 0
  %977 = or i1 %975, %976
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %13, align 1, !tbaa !2432
  %979 = and i32 %973, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979) #12
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %20, align 1, !tbaa !2446
  %984 = xor i32 %973, %972
  %985 = lshr i32 %984, 4
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %26, align 1, !tbaa !2447
  %988 = zext i1 %976 to i8
  store i8 %988, i8* %29, align 1, !tbaa !2448
  %989 = lshr i32 %973, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %32, align 1, !tbaa !2449
  %991 = lshr i32 %972, 31
  %992 = xor i32 %989, %991
  %993 = add nuw nsw i32 %992, %989
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %38, align 1, !tbaa !2450
  %996 = add i64 %1577, 14
  store i64 %996, i64* %PC, align 8
  store i32 %973, i32* %971, align 4
  %997 = load i64, i64* %PC, align 8
  %998 = add i64 %997, -124
  store i64 %998, i64* %PC, align 8, !tbaa !2428
  br label %block_400cb4

block_400b89:                                     ; preds = %block_400bd3, %block_400b82
  %999 = phi i64 [ %1980, %block_400bd3 ], [ %.pre229, %block_400b82 ]
  %1000 = load i64, i64* %RBP, align 8
  %1001 = add i64 %1000, -8
  %1002 = add i64 %999, 4
  store i64 %1002, i64* %PC, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = add i32 %1004, -3
  %1006 = icmp ult i32 %1004, 3
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %13, align 1, !tbaa !2432
  %1008 = and i32 %1005, 255
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008) #12
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %20, align 1, !tbaa !2446
  %1013 = xor i32 %1005, %1004
  %1014 = lshr i32 %1013, 4
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  store i8 %1016, i8* %26, align 1, !tbaa !2447
  %1017 = icmp eq i32 %1005, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %29, align 1, !tbaa !2448
  %1019 = lshr i32 %1005, 31
  %1020 = trunc i32 %1019 to i8
  store i8 %1020, i8* %32, align 1, !tbaa !2449
  %1021 = lshr i32 %1004, 31
  %1022 = xor i32 %1019, %1021
  %1023 = add nuw nsw i32 %1022, %1021
  %1024 = icmp eq i32 %1023, 2
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %38, align 1, !tbaa !2450
  %1026 = icmp ne i8 %1020, 0
  %1027 = xor i1 %1026, %1024
  %.demorgan281 = or i1 %1017, %1027
  %.v283 = select i1 %.demorgan281, i64 10, i64 93
  %1028 = add i64 %999, %.v283
  store i64 %1028, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan281, label %block_400b93, label %block_400be6

block_401121:                                     ; preds = %block_401117
  %1029 = add i64 %2745, -12
  %1030 = add i64 %2773, 7
  store i64 %1030, i64* %PC, align 8
  %1031 = inttoptr i64 %1029 to i32*
  store i32 0, i32* %1031, align 4
  %.pre257 = load i64, i64* %PC, align 8
  br label %block_401128

block_40091e:                                     ; preds = %block_4008c1
  %1032 = add i64 %2435, -4
  %1033 = add i64 %2463, 8
  store i64 %1033, i64* %PC, align 8
  %1034 = inttoptr i64 %1032 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = add i32 %1035, 1
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RAX, align 8, !tbaa !2428
  %1038 = icmp eq i32 %1035, -1
  %1039 = icmp eq i32 %1036, 0
  %1040 = or i1 %1038, %1039
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %13, align 1, !tbaa !2432
  %1042 = and i32 %1036, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042) #12
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %20, align 1, !tbaa !2446
  %1047 = xor i32 %1036, %1035
  %1048 = lshr i32 %1047, 4
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %26, align 1, !tbaa !2447
  %1051 = zext i1 %1039 to i8
  store i8 %1051, i8* %29, align 1, !tbaa !2448
  %1052 = lshr i32 %1036, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %32, align 1, !tbaa !2449
  %1054 = lshr i32 %1035, 31
  %1055 = xor i32 %1052, %1054
  %1056 = add nuw nsw i32 %1055, %1052
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %38, align 1, !tbaa !2450
  %1059 = add i64 %2463, 14
  store i64 %1059, i64* %PC, align 8
  store i32 %1036, i32* %1034, align 4
  %1060 = load i64, i64* %PC, align 8
  %1061 = add i64 %1060, -124
  store i64 %1061, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b0

block_400b78:                                     ; preds = %block_400b5b, %block_400be6
  %1062 = phi i64 [ %.pre228, %block_400b5b ], [ %119, %block_400be6 ]
  %1063 = load i64, i64* %RBP, align 8
  %1064 = add i64 %1063, -4
  %1065 = add i64 %1062, 4
  store i64 %1065, i64* %PC, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, -1
  %1069 = icmp eq i32 %1067, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %13, align 1, !tbaa !2432
  %1071 = and i32 %1068, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071) #12
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %20, align 1, !tbaa !2446
  %1076 = xor i32 %1068, %1067
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %26, align 1, !tbaa !2447
  %1080 = icmp eq i32 %1068, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %29, align 1, !tbaa !2448
  %1082 = lshr i32 %1068, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %32, align 1, !tbaa !2449
  %1084 = lshr i32 %1067, 31
  %1085 = xor i32 %1082, %1084
  %1086 = add nuw nsw i32 %1085, %1084
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %38, align 1, !tbaa !2450
  %1089 = icmp ne i8 %1083, 0
  %1090 = xor i1 %1089, %1087
  %.demorgan280 = or i1 %1080, %1090
  %.v324 = select i1 %.demorgan280, i64 10, i64 129
  %1091 = add i64 %1062, %.v324
  store i64 %1091, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan280, label %block_400b82, label %block_400bf9

block_401110:                                     ; preds = %block_401106
  %1092 = add i64 %1176, -8
  %1093 = add i64 %1204, 7
  store i64 %1093, i64* %PC, align 8
  %1094 = inttoptr i64 %1092 to i32*
  store i32 0, i32* %1094, align 4
  %.pre256 = load i64, i64* %PC, align 8
  br label %block_401117

block_401128:                                     ; preds = %block_401121, %block_401132
  %1095 = phi i64 [ %.pre257, %block_401121 ], [ %905, %block_401132 ]
  %1096 = load i64, i64* %RBP, align 8
  %1097 = add i64 %1096, -12
  %1098 = add i64 %1095, 4
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = add i32 %1100, -1
  %1102 = icmp eq i32 %1100, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %13, align 1, !tbaa !2432
  %1104 = and i32 %1101, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104) #12
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %20, align 1, !tbaa !2446
  %1109 = xor i32 %1101, %1100
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %26, align 1, !tbaa !2447
  %1113 = icmp eq i32 %1101, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %29, align 1, !tbaa !2448
  %1115 = lshr i32 %1101, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %32, align 1, !tbaa !2449
  %1117 = lshr i32 %1100, 31
  %1118 = xor i32 %1115, %1117
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %38, align 1, !tbaa !2450
  %1122 = icmp ne i8 %1116, 0
  %1123 = xor i1 %1122, %1120
  %.demorgan315 = or i1 %1113, %1123
  %.v316 = select i1 %.demorgan315, i64 10, i64 57
  %1124 = add i64 %1095, %.v316
  store i64 %1124, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan315, label %block_401132, label %block_401161

block_400f0f:                                     ; preds = %block_400e8e
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 32) to i32*), align 16
  store i32 128, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 32) to i32*), align 16
  %1125 = add i64 %2186, 29
  store i64 %1125, i64* %PC, align 8
  store i32 0, i32* %2172, align 4
  %.pre246 = load i64, i64* %PC, align 8
  br label %block_400f2c

block_400df0:                                     ; preds = %block_400e5e, %block_400dd3
  %1126 = phi i64 [ %2996, %block_400e5e ], [ %.pre240, %block_400dd3 ]
  %1127 = load i64, i64* %RBP, align 8
  %1128 = add i64 %1127, -4
  %1129 = add i64 %1126, 4
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1132 = and i32 %1131, 255
  %1133 = tail call i32 @llvm.ctpop.i32(i32 %1132) #12
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  %1136 = xor i8 %1135, 1
  store i8 %1136, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1137 = icmp eq i32 %1131, 0
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %29, align 1, !tbaa !2448
  %1139 = lshr i32 %1131, 31
  %1140 = trunc i32 %1139 to i8
  store i8 %1140, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1141 = xor i1 %1137, true
  %1142 = icmp eq i8 %1140, 0
  %1143 = and i1 %1142, %1141
  %.v328 = select i1 %1143, i64 129, i64 10
  %1144 = add i64 %1126, %.v328
  store i64 %1144, i64* %PC, align 8, !tbaa !2428
  br i1 %1143, label %block_400e71, label %block_400dfa

block_40090b:                                     ; preds = %block_4008d2
  %1145 = add i64 %2248, -8
  %1146 = add i64 %2276, 8
  store i64 %1146, i64* %PC, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = add i32 %1148, 1
  %1150 = zext i32 %1149 to i64
  store i64 %1150, i64* %RAX, align 8, !tbaa !2428
  %1151 = icmp eq i32 %1148, -1
  %1152 = icmp eq i32 %1149, 0
  %1153 = or i1 %1151, %1152
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %13, align 1, !tbaa !2432
  %1155 = and i32 %1149, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155) #12
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %20, align 1, !tbaa !2446
  %1160 = xor i32 %1149, %1148
  %1161 = lshr i32 %1160, 4
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %26, align 1, !tbaa !2447
  %1164 = zext i1 %1152 to i8
  store i8 %1164, i8* %29, align 1, !tbaa !2448
  %1165 = lshr i32 %1149, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %32, align 1, !tbaa !2449
  %1167 = lshr i32 %1148, 31
  %1168 = xor i32 %1165, %1167
  %1169 = add nuw nsw i32 %1168, %1165
  %1170 = icmp eq i32 %1169, 2
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %38, align 1, !tbaa !2450
  %1172 = add i64 %2276, 14
  store i64 %1172, i64* %PC, align 8
  store i32 %1149, i32* %1147, align 4
  %1173 = load i64, i64* %PC, align 8
  %1174 = add i64 %1173, -88
  store i64 %1174, i64* %PC, align 8, !tbaa !2428
  br label %block_4008c1

block_401106:                                     ; preds = %block_401174, %block_4010e9
  %1175 = phi i64 [ %2552, %block_401174 ], [ %.pre255, %block_4010e9 ]
  %1176 = load i64, i64* %RBP, align 8
  %1177 = add i64 %1176, -4
  %1178 = add i64 %1175, 4
  store i64 %1178, i64* %PC, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = add i32 %1180, -1
  %1182 = icmp eq i32 %1180, 0
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %13, align 1, !tbaa !2432
  %1184 = and i32 %1181, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184) #12
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %20, align 1, !tbaa !2446
  %1189 = xor i32 %1181, %1180
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  store i8 %1192, i8* %26, align 1, !tbaa !2447
  %1193 = icmp eq i32 %1181, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %29, align 1, !tbaa !2448
  %1195 = lshr i32 %1181, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %32, align 1, !tbaa !2449
  %1197 = lshr i32 %1180, 31
  %1198 = xor i32 %1195, %1197
  %1199 = add nuw nsw i32 %1198, %1197
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %38, align 1, !tbaa !2450
  %1202 = icmp ne i8 %1196, 0
  %1203 = xor i1 %1202, %1200
  %.demorgan313 = or i1 %1193, %1203
  %.v333 = select i1 %.demorgan313, i64 10, i64 129
  %1204 = add i64 %1175, %.v333
  store i64 %1204, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan313, label %block_401110, label %block_401187

block_4010d6:                                     ; preds = %block_401079
  %1205 = add i64 %3275, -4
  %1206 = add i64 %3303, 8
  store i64 %1206, i64* %PC, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = add i32 %1208, 1
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX, align 8, !tbaa !2428
  %1211 = icmp eq i32 %1208, -1
  %1212 = icmp eq i32 %1209, 0
  %1213 = or i1 %1211, %1212
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %13, align 1, !tbaa !2432
  %1215 = and i32 %1209, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215) #12
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %20, align 1, !tbaa !2446
  %1220 = xor i32 %1209, %1208
  %1221 = lshr i32 %1220, 4
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %26, align 1, !tbaa !2447
  %1224 = zext i1 %1212 to i8
  store i8 %1224, i8* %29, align 1, !tbaa !2448
  %1225 = lshr i32 %1209, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %32, align 1, !tbaa !2449
  %1227 = lshr i32 %1208, 31
  %1228 = xor i32 %1225, %1227
  %1229 = add nuw nsw i32 %1228, %1225
  %1230 = icmp eq i32 %1229, 2
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %38, align 1, !tbaa !2450
  %1232 = add i64 %3303, 14
  store i64 %1232, i64* %PC, align 8
  store i32 %1209, i32* %1207, align 4
  %1233 = load i64, i64* %PC, align 8
  %1234 = add i64 %1233, -124
  store i64 %1234, i64* %PC, align 8, !tbaa !2428
  br label %block_401068

block_400b82:                                     ; preds = %block_400b78
  %1235 = add i64 %1063, -8
  %1236 = add i64 %1091, 7
  store i64 %1236, i64* %PC, align 8
  %1237 = inttoptr i64 %1235 to i32*
  store i32 0, i32* %1237, align 4
  %.pre229 = load i64, i64* %PC, align 8
  br label %block_400b89

block_400956:                                     ; preds = %block_400949
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %1238 = add i64 %1800, -4
  %1239 = add i64 %1829, 14
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = sext i32 %1241 to i64
  %1243 = shl nsw i64 %1242, 11
  store i64 %1243, i64* %RCX, align 8, !tbaa !2428
  %1244 = add i64 %1243, ptrtoint (%p_type* @p to i64)
  store i64 %1244, i64* %RAX, align 8, !tbaa !2428
  %1245 = icmp ult i64 %1244, ptrtoint (%p_type* @p to i64)
  %1246 = icmp ult i64 %1244, %1243
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %13, align 1, !tbaa !2432
  %1249 = trunc i64 %1244 to i32
  %1250 = and i32 %1249, 240
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250) #12
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %20, align 1, !tbaa !2446
  %1255 = xor i64 %1244, ptrtoint (%p_type* @p to i64)
  %1256 = lshr exact i64 %1255, 4
  %1257 = trunc i64 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %26, align 1, !tbaa !2447
  %1259 = icmp eq i64 %1244, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %29, align 1, !tbaa !2448
  %1261 = lshr i64 %1244, 63
  %1262 = trunc i64 %1261 to i8
  store i8 %1262, i8* %32, align 1, !tbaa !2449
  %1263 = lshr i64 %1242, 52
  %1264 = and i64 %1263, 1
  %1265 = xor i64 %1261, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %1266 = xor i64 %1261, %1264
  %1267 = add nuw nsw i64 %1265, %1266
  %1268 = icmp eq i64 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %38, align 1, !tbaa !2450
  %1270 = add i64 %1829, 25
  store i64 %1270, i64* %PC, align 8
  %1271 = load i32, i32* %1803, align 4
  %1272 = sext i32 %1271 to i64
  store i64 %1272, i64* %RCX, align 8, !tbaa !2428
  %1273 = shl nsw i64 %1272, 2
  %1274 = add i64 %1273, %1244
  %1275 = add i64 %1829, 32
  store i64 %1275, i64* %PC, align 8
  %1276 = inttoptr i64 %1274 to i32*
  store i32 0, i32* %1276, align 4
  %1277 = load i64, i64* %RBP, align 8
  %1278 = add i64 %1277, -16
  %1279 = load i64, i64* %PC, align 8
  %1280 = add i64 %1279, 3
  store i64 %1280, i64* %PC, align 8
  %1281 = inttoptr i64 %1278 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = add i32 %1282, 1
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RAX, align 8, !tbaa !2428
  %1285 = icmp eq i32 %1282, -1
  %1286 = icmp eq i32 %1283, 0
  %1287 = or i1 %1285, %1286
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %13, align 1, !tbaa !2432
  %1289 = and i32 %1283, 255
  %1290 = tail call i32 @llvm.ctpop.i32(i32 %1289) #12
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  store i8 %1293, i8* %20, align 1, !tbaa !2446
  %1294 = xor i32 %1283, %1282
  %1295 = lshr i32 %1294, 4
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %26, align 1, !tbaa !2447
  %1298 = zext i1 %1286 to i8
  store i8 %1298, i8* %29, align 1, !tbaa !2448
  %1299 = lshr i32 %1283, 31
  %1300 = trunc i32 %1299 to i8
  store i8 %1300, i8* %32, align 1, !tbaa !2449
  %1301 = lshr i32 %1282, 31
  %1302 = xor i32 %1299, %1301
  %1303 = add nuw nsw i32 %1302, %1299
  %1304 = icmp eq i32 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %38, align 1, !tbaa !2450
  %1306 = add i64 %1279, 9
  store i64 %1306, i64* %PC, align 8
  store i32 %1283, i32* %1281, align 4
  %1307 = load i64, i64* %PC, align 8
  %1308 = add i64 %1307, -54
  store i64 %1308, i64* %PC, align 8, !tbaa !2428
  br label %block_400949

block_400ee9:                                     ; preds = %block_400eb0
  %1309 = add i64 %3053, -8
  %1310 = add i64 %3081, 8
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = add i32 %1312, 1
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RAX, align 8, !tbaa !2428
  %1315 = icmp eq i32 %1312, -1
  %1316 = icmp eq i32 %1313, 0
  %1317 = or i1 %1315, %1316
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %13, align 1, !tbaa !2432
  %1319 = and i32 %1313, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319) #12
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %20, align 1, !tbaa !2446
  %1324 = xor i32 %1313, %1312
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %26, align 1, !tbaa !2447
  %1328 = zext i1 %1316 to i8
  store i8 %1328, i8* %29, align 1, !tbaa !2448
  %1329 = lshr i32 %1313, 31
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, i8* %32, align 1, !tbaa !2449
  %1331 = lshr i32 %1312, 31
  %1332 = xor i32 %1329, %1331
  %1333 = add nuw nsw i32 %1332, %1329
  %1334 = icmp eq i32 %1333, 2
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %38, align 1, !tbaa !2450
  %1336 = add i64 %3081, 14
  store i64 %1336, i64* %PC, align 8
  store i32 %1313, i32* %1311, align 4
  %1337 = load i64, i64* %PC, align 8
  %1338 = add i64 %1337, -88
  store i64 %1338, i64* %PC, align 8, !tbaa !2428
  br label %block_400e9f

block_400ce0:                                     ; preds = %block_400cd6
  %1339 = add i64 %1609, -4
  %1340 = add i64 %1637, 3
  store i64 %1340, i64* %PC, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RAX, align 8, !tbaa !2428
  %1344 = add i64 %1609, -8
  %1345 = add i64 %1637, 6
  store i64 %1345, i64* %PC, align 8
  %1346 = inttoptr i64 %1344 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RCX, align 8, !tbaa !2428
  %1349 = add i64 %1637, 9
  store i64 %1349, i64* %PC, align 8
  %1350 = load i32, i32* %1612, align 4
  %1351 = shl i32 %1350, 3
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RDX, align 8, !tbaa !2428
  %1353 = add i32 %1351, %1347
  %1354 = shl i32 %1353, 3
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RCX, align 8, !tbaa !2428
  %1356 = load i64, i64* %RAX, align 8
  %1357 = trunc i64 %1356 to i32
  %1358 = add i32 %1354, %1357
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RAX, align 8, !tbaa !2428
  %1360 = icmp ult i32 %1358, %1357
  %1361 = icmp ult i32 %1358, %1354
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %13, align 1, !tbaa !2432
  %1364 = and i32 %1358, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364) #12
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %20, align 1, !tbaa !2446
  %1369 = xor i64 %1355, %1356
  %1370 = trunc i64 %1369 to i32
  %1371 = xor i32 %1370, %1358
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %26, align 1, !tbaa !2447
  %1375 = icmp eq i32 %1358, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %29, align 1, !tbaa !2448
  %1377 = lshr i32 %1358, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %32, align 1, !tbaa !2449
  %1379 = lshr i32 %1357, 31
  %1380 = lshr i32 %1353, 28
  %1381 = and i32 %1380, 1
  %1382 = xor i32 %1377, %1379
  %1383 = xor i32 %1377, %1381
  %1384 = add nuw nsw i32 %1382, %1383
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %38, align 1, !tbaa !2450
  %1387 = sext i32 %1358 to i64
  store i64 %1387, i64* %RSI, align 8, !tbaa !2428
  %1388 = shl nsw i64 %1387, 2
  %1389 = add i64 %1388, add (i64 ptrtoint (%p_type* @p to i64), i64 10240)
  %1390 = add i64 %1637, 33
  store i64 %1390, i64* %PC, align 8
  %1391 = inttoptr i64 %1389 to i32*
  store i32 1, i32* %1391, align 4
  %1392 = load i64, i64* %RBP, align 8
  %1393 = add i64 %1392, -12
  %1394 = load i64, i64* %PC, align 8
  %1395 = add i64 %1394, 3
  store i64 %1395, i64* %PC, align 8
  %1396 = inttoptr i64 %1393 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = add i32 %1397, 1
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RAX, align 8, !tbaa !2428
  %1400 = icmp eq i32 %1397, -1
  %1401 = icmp eq i32 %1398, 0
  %1402 = or i1 %1400, %1401
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %13, align 1, !tbaa !2432
  %1404 = and i32 %1398, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404) #12
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %20, align 1, !tbaa !2446
  %1409 = xor i32 %1398, %1397
  %1410 = lshr i32 %1409, 4
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %26, align 1, !tbaa !2447
  %1413 = zext i1 %1401 to i8
  store i8 %1413, i8* %29, align 1, !tbaa !2448
  %1414 = lshr i32 %1398, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %32, align 1, !tbaa !2449
  %1416 = lshr i32 %1397, 31
  %1417 = xor i32 %1414, %1416
  %1418 = add nuw nsw i32 %1417, %1414
  %1419 = icmp eq i32 %1418, 2
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %38, align 1, !tbaa !2450
  %1421 = add i64 %1394, 9
  store i64 %1421, i64* %PC, align 8
  store i32 %1398, i32* %1396, align 4
  %1422 = load i64, i64* %PC, align 8
  %1423 = add i64 %1422, -52
  store i64 %1423, i64* %PC, align 8, !tbaa !2428
  br label %block_400cd6

block_400af5:                                     ; preds = %block_400aeb
  %1424 = add i64 %2218, -12
  %1425 = add i64 %2246, 7
  store i64 %1425, i64* %PC, align 8
  %1426 = inttoptr i64 %1424 to i32*
  store i32 0, i32* %1426, align 4
  %.pre227 = load i64, i64* %PC, align 8
  br label %block_400afc

block_4008dc:                                     ; preds = %block_4008d2
  %1427 = add i64 %2248, -4
  %1428 = add i64 %2276, 3
  store i64 %1428, i64* %PC, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RAX, align 8, !tbaa !2428
  %1432 = add i64 %2248, -8
  %1433 = add i64 %2276, 6
  store i64 %1433, i64* %PC, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RCX, align 8, !tbaa !2428
  %1437 = add i64 %2276, 9
  store i64 %1437, i64* %PC, align 8
  %1438 = load i32, i32* %2251, align 4
  %1439 = shl i32 %1438, 3
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RDX, align 8, !tbaa !2428
  %1441 = add i32 %1439, %1435
  %1442 = shl i32 %1441, 3
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RCX, align 8, !tbaa !2428
  %1444 = load i64, i64* %RAX, align 8
  %1445 = trunc i64 %1444 to i32
  %1446 = add i32 %1442, %1445
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RAX, align 8, !tbaa !2428
  %1448 = icmp ult i32 %1446, %1445
  %1449 = icmp ult i32 %1446, %1442
  %1450 = or i1 %1448, %1449
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %13, align 1, !tbaa !2432
  %1452 = and i32 %1446, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452) #12
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %20, align 1, !tbaa !2446
  %1457 = xor i64 %1443, %1444
  %1458 = trunc i64 %1457 to i32
  %1459 = xor i32 %1458, %1446
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %26, align 1, !tbaa !2447
  %1463 = icmp eq i32 %1446, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %29, align 1, !tbaa !2448
  %1465 = lshr i32 %1446, 31
  %1466 = trunc i32 %1465 to i8
  store i8 %1466, i8* %32, align 1, !tbaa !2449
  %1467 = lshr i32 %1445, 31
  %1468 = lshr i32 %1441, 28
  %1469 = and i32 %1468, 1
  %1470 = xor i32 %1465, %1467
  %1471 = xor i32 %1465, %1469
  %1472 = add nuw nsw i32 %1470, %1471
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %38, align 1, !tbaa !2450
  %1475 = sext i32 %1446 to i64
  store i64 %1475, i64* %RSI, align 8, !tbaa !2428
  %1476 = shl nsw i64 %1475, 2
  %1477 = add i64 %1476, ptrtoint (%puzzl_type* @puzzl to i64)
  %1478 = add i64 %2276, 33
  store i64 %1478, i64* %PC, align 8
  %1479 = inttoptr i64 %1477 to i32*
  store i32 0, i32* %1479, align 4
  %1480 = load i64, i64* %RBP, align 8
  %1481 = add i64 %1480, -12
  %1482 = load i64, i64* %PC, align 8
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC, align 8
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = add i32 %1485, 1
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RAX, align 8, !tbaa !2428
  %1488 = icmp eq i32 %1485, -1
  %1489 = icmp eq i32 %1486, 0
  %1490 = or i1 %1488, %1489
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %13, align 1, !tbaa !2432
  %1492 = and i32 %1486, 255
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492) #12
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %20, align 1, !tbaa !2446
  %1497 = xor i32 %1486, %1485
  %1498 = lshr i32 %1497, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %26, align 1, !tbaa !2447
  %1501 = zext i1 %1489 to i8
  store i8 %1501, i8* %29, align 1, !tbaa !2448
  %1502 = lshr i32 %1486, 31
  %1503 = trunc i32 %1502 to i8
  store i8 %1503, i8* %32, align 1, !tbaa !2449
  %1504 = lshr i32 %1485, 31
  %1505 = xor i32 %1502, %1504
  %1506 = add nuw nsw i32 %1505, %1502
  %1507 = icmp eq i32 %1506, 2
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %38, align 1, !tbaa !2450
  %1509 = add i64 %1482, 9
  store i64 %1509, i64* %PC, align 8
  store i32 %1486, i32* %1484, align 4
  %1510 = load i64, i64* %PC, align 8
  %1511 = add i64 %1510, -52
  store i64 %1511, i64* %PC, align 8, !tbaa !2428
  br label %block_4008d2

block_400d5c:                                     ; preds = %block_400d52
  %1512 = add i64 %572, -8
  %1513 = add i64 %600, 7
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1512 to i32*
  store i32 0, i32* %1514, align 4
  %.pre238 = load i64, i64* %PC, align 8
  br label %block_400d63

block_400ccf:                                     ; preds = %block_400cc5
  %1515 = add i64 %1549, -12
  %1516 = add i64 %1577, 7
  store i64 %1516, i64* %PC, align 8
  %1517 = inttoptr i64 %1515 to i32*
  store i32 0, i32* %1517, align 4
  %.pre236 = load i64, i64* %PC, align 8
  br label %block_400cd6

block_4009f9:                                     ; preds = %block_4009c0
  %1518 = add i64 %2366, -8
  %1519 = add i64 %2383, 8
  store i64 %1519, i64* %PC, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = add i32 %1521, 1
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RAX, align 8, !tbaa !2428
  %1524 = icmp eq i32 %1521, -1
  %1525 = icmp eq i32 %1522, 0
  %1526 = or i1 %1524, %1525
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %13, align 1, !tbaa !2432
  %1528 = and i32 %1522, 255
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528) #12
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %20, align 1, !tbaa !2446
  %1533 = xor i32 %1522, %1521
  %1534 = lshr i32 %1533, 4
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  store i8 %1536, i8* %26, align 1, !tbaa !2447
  %1537 = zext i1 %1525 to i8
  store i8 %1537, i8* %29, align 1, !tbaa !2448
  %1538 = lshr i32 %1522, 31
  %1539 = trunc i32 %1538 to i8
  store i8 %1539, i8* %32, align 1, !tbaa !2449
  %1540 = lshr i32 %1521, 31
  %1541 = xor i32 %1538, %1540
  %1542 = add nuw nsw i32 %1541, %1538
  %1543 = icmp eq i32 %1542, 2
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %38, align 1, !tbaa !2450
  %1545 = add i64 %2383, 14
  store i64 %1545, i64* %PC, align 8
  store i32 %1522, i32* %1520, align 4
  %1546 = load i64, i64* %PC, align 8
  %1547 = add i64 %1546, -88
  store i64 %1547, i64* %PC, align 8, !tbaa !2428
  br label %block_4009af

block_400cc5:                                     ; preds = %block_400cbe, %block_400d0f
  %1548 = phi i64 [ %.pre235, %block_400cbe ], [ %2719, %block_400d0f ]
  %1549 = load i64, i64* %RBP, align 8
  %1550 = add i64 %1549, -8
  %1551 = add i64 %1548, 4
  store i64 %1551, i64* %PC, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = add i32 %1553, -1
  %1555 = icmp eq i32 %1553, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %13, align 1, !tbaa !2432
  %1557 = and i32 %1554, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557) #12
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %20, align 1, !tbaa !2446
  %1562 = xor i32 %1554, %1553
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  store i8 %1565, i8* %26, align 1, !tbaa !2447
  %1566 = icmp eq i32 %1554, 0
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %29, align 1, !tbaa !2448
  %1568 = lshr i32 %1554, 31
  %1569 = trunc i32 %1568 to i8
  store i8 %1569, i8* %32, align 1, !tbaa !2449
  %1570 = lshr i32 %1553, 31
  %1571 = xor i32 %1568, %1570
  %1572 = add nuw nsw i32 %1571, %1570
  %1573 = icmp eq i32 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %38, align 1, !tbaa !2450
  %1575 = icmp ne i8 %1569, 0
  %1576 = xor i1 %1575, %1573
  %.demorgan288 = or i1 %1566, %1576
  %.v291 = select i1 %.demorgan288, i64 10, i64 93
  %1577 = add i64 %1548, %.v291
  store i64 %1577, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan288, label %block_400ccf, label %block_400d22

block_4010c3:                                     ; preds = %block_40108a
  %1578 = add i64 %2468, -8
  %1579 = add i64 %2496, 8
  store i64 %1579, i64* %PC, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = add i32 %1581, 1
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX, align 8, !tbaa !2428
  %1584 = icmp eq i32 %1581, -1
  %1585 = icmp eq i32 %1582, 0
  %1586 = or i1 %1584, %1585
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %13, align 1, !tbaa !2432
  %1588 = and i32 %1582, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588) #12
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %20, align 1, !tbaa !2446
  %1593 = xor i32 %1582, %1581
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %26, align 1, !tbaa !2447
  %1597 = zext i1 %1585 to i8
  store i8 %1597, i8* %29, align 1, !tbaa !2448
  %1598 = lshr i32 %1582, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %32, align 1, !tbaa !2449
  %1600 = lshr i32 %1581, 31
  %1601 = xor i32 %1598, %1600
  %1602 = add nuw nsw i32 %1601, %1598
  %1603 = icmp eq i32 %1602, 2
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %38, align 1, !tbaa !2450
  %1605 = add i64 %2496, 14
  store i64 %1605, i64* %PC, align 8
  store i32 %1582, i32* %1580, align 4
  %1606 = load i64, i64* %PC, align 8
  %1607 = add i64 %1606, -88
  store i64 %1607, i64* %PC, align 8, !tbaa !2428
  br label %block_401079

block_400cd6:                                     ; preds = %block_400ccf, %block_400ce0
  %1608 = phi i64 [ %.pre236, %block_400ccf ], [ %1423, %block_400ce0 ]
  %1609 = load i64, i64* %RBP, align 8
  %1610 = add i64 %1609, -12
  %1611 = add i64 %1608, 4
  store i64 %1611, i64* %PC, align 8
  %1612 = inttoptr i64 %1610 to i32*
  %1613 = load i32, i32* %1612, align 4
  %1614 = add i32 %1613, -3
  %1615 = icmp ult i32 %1613, 3
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %13, align 1, !tbaa !2432
  %1617 = and i32 %1614, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617) #12
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %20, align 1, !tbaa !2446
  %1622 = xor i32 %1614, %1613
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %26, align 1, !tbaa !2447
  %1626 = icmp eq i32 %1614, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %29, align 1, !tbaa !2448
  %1628 = lshr i32 %1614, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %32, align 1, !tbaa !2449
  %1630 = lshr i32 %1613, 31
  %1631 = xor i32 %1628, %1630
  %1632 = add nuw nsw i32 %1631, %1630
  %1633 = icmp eq i32 %1632, 2
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %38, align 1, !tbaa !2450
  %1635 = icmp ne i8 %1629, 0
  %1636 = xor i1 %1635, %1633
  %.demorgan289 = or i1 %1626, %1636
  %.v290 = select i1 %.demorgan289, i64 10, i64 57
  %1637 = add i64 %1608, %.v290
  store i64 %1637, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan289, label %block_400ce0, label %block_400d0f

block_400abd:                                     ; preds = %block_400a3c
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 4) to i32*), align 4
  store i32 193, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 4) to i32*), align 4
  %1638 = add i64 %2966, 29
  store i64 %1638, i64* %PC, align 8
  store i32 0, i32* %2941, align 4
  %.pre225 = load i64, i64* %PC, align 8
  br label %block_400ada

block_400eba:                                     ; preds = %block_400eb0
  %1639 = add i64 %3053, -4
  %1640 = add i64 %3081, 3
  store i64 %1640, i64* %PC, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RAX, align 8, !tbaa !2428
  %1644 = add i64 %3053, -8
  %1645 = add i64 %3081, 6
  store i64 %1645, i64* %PC, align 8
  %1646 = inttoptr i64 %1644 to i32*
  %1647 = load i32, i32* %1646, align 4
  %1648 = zext i32 %1647 to i64
  store i64 %1648, i64* %RCX, align 8, !tbaa !2428
  %1649 = add i64 %3081, 9
  store i64 %1649, i64* %PC, align 8
  %1650 = load i32, i32* %3056, align 4
  %1651 = shl i32 %1650, 3
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RDX, align 8, !tbaa !2428
  %1653 = add i32 %1651, %1647
  %1654 = shl i32 %1653, 3
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RCX, align 8, !tbaa !2428
  %1656 = load i64, i64* %RAX, align 8
  %1657 = trunc i64 %1656 to i32
  %1658 = add i32 %1654, %1657
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RAX, align 8, !tbaa !2428
  %1660 = icmp ult i32 %1658, %1657
  %1661 = icmp ult i32 %1658, %1654
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %13, align 1, !tbaa !2432
  %1664 = and i32 %1658, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664) #12
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %20, align 1, !tbaa !2446
  %1669 = xor i64 %1655, %1656
  %1670 = trunc i64 %1669 to i32
  %1671 = xor i32 %1670, %1658
  %1672 = lshr i32 %1671, 4
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %26, align 1, !tbaa !2447
  %1675 = icmp eq i32 %1658, 0
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %29, align 1, !tbaa !2448
  %1677 = lshr i32 %1658, 31
  %1678 = trunc i32 %1677 to i8
  store i8 %1678, i8* %32, align 1, !tbaa !2449
  %1679 = lshr i32 %1657, 31
  %1680 = lshr i32 %1653, 28
  %1681 = and i32 %1680, 1
  %1682 = xor i32 %1677, %1679
  %1683 = xor i32 %1677, %1681
  %1684 = add nuw nsw i32 %1682, %1683
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %38, align 1, !tbaa !2450
  %1687 = sext i32 %1658 to i64
  store i64 %1687, i64* %RSI, align 8, !tbaa !2428
  %1688 = shl nsw i64 %1687, 2
  %1689 = add i64 %1688, add (i64 ptrtoint (%p_type* @p to i64), i64 16384)
  %1690 = add i64 %3081, 33
  store i64 %1690, i64* %PC, align 8
  %1691 = inttoptr i64 %1689 to i32*
  store i32 1, i32* %1691, align 4
  %1692 = load i64, i64* %RBP, align 8
  %1693 = add i64 %1692, -12
  %1694 = load i64, i64* %PC, align 8
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC, align 8
  %1696 = inttoptr i64 %1693 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = add i32 %1697, 1
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RAX, align 8, !tbaa !2428
  %1700 = icmp eq i32 %1697, -1
  %1701 = icmp eq i32 %1698, 0
  %1702 = or i1 %1700, %1701
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %13, align 1, !tbaa !2432
  %1704 = and i32 %1698, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704) #12
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %20, align 1, !tbaa !2446
  %1709 = xor i32 %1698, %1697
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %26, align 1, !tbaa !2447
  %1713 = zext i1 %1701 to i8
  store i8 %1713, i8* %29, align 1, !tbaa !2448
  %1714 = lshr i32 %1698, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %32, align 1, !tbaa !2449
  %1716 = lshr i32 %1697, 31
  %1717 = xor i32 %1714, %1716
  %1718 = add nuw nsw i32 %1717, %1714
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %38, align 1, !tbaa !2450
  %1721 = add i64 %1694, 9
  store i64 %1721, i64* %PC, align 8
  store i32 %1698, i32* %1696, align 4
  %1722 = load i64, i64* %PC, align 8
  %1723 = add i64 %1722, -52
  store i64 %1723, i64* %PC, align 8, !tbaa !2428
  br label %block_400eb0

block_400b5b:                                     ; preds = %block_400ada
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 8) to i32*), align 8
  store i32 88, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 8) to i32*), align 8
  %1724 = add i64 %2433, 29
  store i64 %1724, i64* %PC, align 8
  store i32 0, i32* %2419, align 4
  %.pre228 = load i64, i64* %PC, align 8
  br label %block_400b78

block_400942:                                     ; preds = %block_400938
  %1725 = add i64 %740, -16
  %1726 = add i64 %768, 7
  store i64 %1726, i64* %PC, align 8
  %1727 = inttoptr i64 %1725 to i32*
  store i32 0, i32* %1727, align 4
  %.pre218 = load i64, i64* %PC, align 8
  br label %block_400949

block_400d74:                                     ; preds = %block_400d6d, %block_400d7e
  %1728 = phi i64 [ %.pre239, %block_400d6d ], [ %449, %block_400d7e ]
  %1729 = load i64, i64* %RBP, align 8
  %1730 = add i64 %1729, -12
  %1731 = add i64 %1728, 4
  store i64 %1731, i64* %PC, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1734 = and i32 %1733, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734) #12
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1739 = icmp eq i32 %1733, 0
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %29, align 1, !tbaa !2448
  %1741 = lshr i32 %1733, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1743 = xor i1 %1739, true
  %1744 = icmp eq i8 %1742, 0
  %1745 = and i1 %1744, %1743
  %.v293 = select i1 %1745, i64 57, i64 10
  %1746 = add i64 %1728, %.v293
  store i64 %1746, i64* %PC, align 8, !tbaa !2428
  br i1 %1745, label %block_400dad, label %block_400d7e

block_400a57:                                     ; preds = %block_400a4d
  %1747 = add i64 %2726, -12
  %1748 = add i64 %2743, 7
  store i64 %1748, i64* %PC, align 8
  %1749 = inttoptr i64 %1747 to i32*
  store i32 0, i32* %1749, align 4
  %.pre224 = load i64, i64* %PC, align 8
  br label %block_400a5e

block_400cb4:                                     ; preds = %block_400c97, %block_400d22
  %1750 = phi i64 [ %.pre234, %block_400c97 ], [ %998, %block_400d22 ]
  %1751 = load i64, i64* %RBP, align 8
  %1752 = add i64 %1751, -4
  %1753 = add i64 %1750, 4
  store i64 %1753, i64* %PC, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1756 = and i32 %1755, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756) #12
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1761 = icmp eq i32 %1755, 0
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %29, align 1, !tbaa !2448
  %1763 = lshr i32 %1755, 31
  %1764 = trunc i32 %1763 to i8
  store i8 %1764, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1765 = xor i1 %1761, true
  %1766 = icmp eq i8 %1764, 0
  %1767 = and i1 %1766, %1765
  %.v326 = select i1 %1767, i64 129, i64 10
  %1768 = add i64 %1750, %.v326
  store i64 %1768, i64* %PC, align 8, !tbaa !2428
  br i1 %1767, label %block_400d35, label %block_400cbe

block_4008b0:                                     ; preds = %block_4008a9, %block_40091e
  %1769 = phi i64 [ %.pre214, %block_4008a9 ], [ %1061, %block_40091e ]
  %1770 = load i64, i64* %RBP, align 8
  %1771 = add i64 %1770, -4
  %1772 = add i64 %1769, 4
  store i64 %1772, i64* %PC, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = add i32 %1774, -5
  %1776 = icmp ult i32 %1774, 5
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %13, align 1, !tbaa !2432
  %1778 = and i32 %1775, 255
  %1779 = tail call i32 @llvm.ctpop.i32(i32 %1778) #12
  %1780 = trunc i32 %1779 to i8
  %1781 = and i8 %1780, 1
  %1782 = xor i8 %1781, 1
  store i8 %1782, i8* %20, align 1, !tbaa !2446
  %1783 = xor i32 %1775, %1774
  %1784 = lshr i32 %1783, 4
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  store i8 %1786, i8* %26, align 1, !tbaa !2447
  %1787 = icmp eq i32 %1775, 0
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %29, align 1, !tbaa !2448
  %1789 = lshr i32 %1775, 31
  %1790 = trunc i32 %1789 to i8
  store i8 %1790, i8* %32, align 1, !tbaa !2449
  %1791 = lshr i32 %1774, 31
  %1792 = xor i32 %1789, %1791
  %1793 = add nuw nsw i32 %1792, %1791
  %1794 = icmp eq i32 %1793, 2
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %38, align 1, !tbaa !2450
  %1796 = icmp ne i8 %1790, 0
  %1797 = xor i1 %1796, %1794
  %.demorgan261 = or i1 %1787, %1797
  %.v319 = select i1 %.demorgan261, i64 10, i64 129
  %1798 = add i64 %1769, %.v319
  store i64 %1798, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan261, label %block_4008ba, label %block_400931

block_400949:                                     ; preds = %block_400942, %block_400956
  %1799 = phi i64 [ %.pre218, %block_400942 ], [ %1308, %block_400956 ]
  %1800 = load i64, i64* %RBP, align 8
  %1801 = add i64 %1800, -16
  %1802 = add i64 %1799, 7
  store i64 %1802, i64* %PC, align 8
  %1803 = inttoptr i64 %1801 to i32*
  %1804 = load i32, i32* %1803, align 4
  %1805 = add i32 %1804, -511
  %1806 = icmp ult i32 %1804, 511
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %13, align 1, !tbaa !2432
  %1808 = and i32 %1805, 255
  %1809 = tail call i32 @llvm.ctpop.i32(i32 %1808) #12
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %20, align 1, !tbaa !2446
  %1813 = xor i32 %1804, 16
  %1814 = xor i32 %1813, %1805
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %26, align 1, !tbaa !2447
  %1818 = icmp eq i32 %1805, 0
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %29, align 1, !tbaa !2448
  %1820 = lshr i32 %1805, 31
  %1821 = trunc i32 %1820 to i8
  store i8 %1821, i8* %32, align 1, !tbaa !2449
  %1822 = lshr i32 %1804, 31
  %1823 = xor i32 %1820, %1822
  %1824 = add nuw nsw i32 %1823, %1822
  %1825 = icmp eq i32 %1824, 2
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %38, align 1, !tbaa !2450
  %1827 = icmp ne i8 %1821, 0
  %1828 = xor i1 %1827, %1825
  %.demorgan266 = or i1 %1818, %1828
  %.v267 = select i1 %.demorgan266, i64 13, i64 59
  %1829 = add i64 %1799, %.v267
  store i64 %1829, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan266, label %block_400956, label %block_400984

block_400aaa:                                     ; preds = %block_400a4d
  %1830 = add i64 %2726, -4
  %1831 = add i64 %2743, 8
  store i64 %1831, i64* %PC, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = add i32 %1833, 1
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RAX, align 8, !tbaa !2428
  %1836 = icmp eq i32 %1833, -1
  %1837 = icmp eq i32 %1834, 0
  %1838 = or i1 %1836, %1837
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %13, align 1, !tbaa !2432
  %1840 = and i32 %1834, 255
  %1841 = tail call i32 @llvm.ctpop.i32(i32 %1840) #12
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  store i8 %1844, i8* %20, align 1, !tbaa !2446
  %1845 = xor i32 %1834, %1833
  %1846 = lshr i32 %1845, 4
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  store i8 %1848, i8* %26, align 1, !tbaa !2447
  %1849 = zext i1 %1837 to i8
  store i8 %1849, i8* %29, align 1, !tbaa !2448
  %1850 = lshr i32 %1834, 31
  %1851 = trunc i32 %1850 to i8
  store i8 %1851, i8* %32, align 1, !tbaa !2449
  %1852 = lshr i32 %1833, 31
  %1853 = xor i32 %1850, %1852
  %1854 = add nuw nsw i32 %1853, %1850
  %1855 = icmp eq i32 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %38, align 1, !tbaa !2450
  %1857 = add i64 %2743, 14
  store i64 %1857, i64* %PC, align 8
  store i32 %1834, i32* %1832, align 4
  %1858 = load i64, i64* %PC, align 8
  %1859 = add i64 %1858, -124
  store i64 %1859, i64* %PC, align 8, !tbaa !2428
  br label %block_400a3c

block_4008a9:                                     ; preds = %block_40087f
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %1860 = add i64 %2385, -4
  %1861 = add i64 %2414, 7
  store i64 %1861, i64* %PC, align 8
  %1862 = inttoptr i64 %1860 to i32*
  store i32 1, i32* %1862, align 4
  %.pre214 = load i64, i64* %PC, align 8
  br label %block_4008b0

block_400f3d:                                     ; preds = %block_400f87, %block_400f36
  %1863 = phi i64 [ %965, %block_400f87 ], [ %.pre247, %block_400f36 ]
  %1864 = load i64, i64* %RBP, align 8
  %1865 = add i64 %1864, -8
  %1866 = add i64 %1863, 4
  store i64 %1866, i64* %PC, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = add i32 %1868, -1
  %1870 = icmp eq i32 %1868, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %13, align 1, !tbaa !2432
  %1872 = and i32 %1869, 255
  %1873 = tail call i32 @llvm.ctpop.i32(i32 %1872) #12
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  store i8 %1876, i8* %20, align 1, !tbaa !2446
  %1877 = xor i32 %1869, %1868
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  store i8 %1880, i8* %26, align 1, !tbaa !2447
  %1881 = icmp eq i32 %1869, 0
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %29, align 1, !tbaa !2448
  %1883 = lshr i32 %1869, 31
  %1884 = trunc i32 %1883 to i8
  store i8 %1884, i8* %32, align 1, !tbaa !2449
  %1885 = lshr i32 %1868, 31
  %1886 = xor i32 %1883, %1885
  %1887 = add nuw nsw i32 %1886, %1885
  %1888 = icmp eq i32 %1887, 2
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %38, align 1, !tbaa !2450
  %1890 = icmp ne i8 %1884, 0
  %1891 = xor i1 %1890, %1888
  %.demorgan302 = or i1 %1881, %1891
  %.v304 = select i1 %.demorgan302, i64 10, i64 93
  %1892 = add i64 %1863, %.v304
  store i64 %1892, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan302, label %block_400f47, label %block_400f9a

block_400c71:                                     ; preds = %block_400c38
  %1893 = add i64 %3086, -8
  %1894 = add i64 %3114, 8
  store i64 %1894, i64* %PC, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = add i32 %1896, 1
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RAX, align 8, !tbaa !2428
  %1899 = icmp eq i32 %1896, -1
  %1900 = icmp eq i32 %1897, 0
  %1901 = or i1 %1899, %1900
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %13, align 1, !tbaa !2432
  %1903 = and i32 %1897, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903) #12
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %20, align 1, !tbaa !2446
  %1908 = xor i32 %1897, %1896
  %1909 = lshr i32 %1908, 4
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  store i8 %1911, i8* %26, align 1, !tbaa !2447
  %1912 = zext i1 %1900 to i8
  store i8 %1912, i8* %29, align 1, !tbaa !2448
  %1913 = lshr i32 %1897, 31
  %1914 = trunc i32 %1913 to i8
  store i8 %1914, i8* %32, align 1, !tbaa !2449
  %1915 = lshr i32 %1896, 31
  %1916 = xor i32 %1913, %1915
  %1917 = add nuw nsw i32 %1916, %1913
  %1918 = icmp eq i32 %1917, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %38, align 1, !tbaa !2450
  %1920 = add i64 %3114, 14
  store i64 %1920, i64* %PC, align 8
  store i32 %1897, i32* %1895, align 4
  %1921 = load i64, i64* %PC, align 8
  %1922 = add i64 %1921, -88
  store i64 %1922, i64* %PC, align 8, !tbaa !2428
  br label %block_400c27

block_401187:                                     ; preds = %block_401106
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
  %1923 = add i64 %1176, -16
  %1924 = add i64 %1204, 75
  store i64 %1924, i64* %PC, align 8
  %1925 = inttoptr i64 %1923 to i32*
  store i32 73, i32* %1925, align 4
  %1926 = load i64, i64* %PC, align 8
  store i32 0, i32* bitcast (%kount_type* @kount to i32*), align 8
  %1927 = load i64, i64* %RBP, align 8
  %1928 = add i64 %1927, -16
  %1929 = add i64 %1926, 14
  store i64 %1929, i64* %PC, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RSI, align 8, !tbaa !2428
  %1933 = add i64 %1926, -3154
  %1934 = add i64 %1926, 19
  %1935 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1936 = add i64 %1935, -8
  %1937 = inttoptr i64 %1936 to i64*
  store i64 %1934, i64* %1937, align 8
  store i64 %1936, i64* %RSP, align 8, !tbaa !2428
  store i64 %1933, i64* %PC, align 8, !tbaa !2428
  %1938 = tail call %struct.Memory* @sub_400580_Fit_renamed_(%struct.State* nonnull %0, i64 %1933, %struct.Memory* %2)
  %1939 = load i32, i32* %EAX, align 4
  %1940 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1941 = and i32 %1939, 255
  %1942 = tail call i32 @llvm.ctpop.i32(i32 %1941) #12
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  store i8 %1945, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1946 = icmp eq i32 %1939, 0
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %29, align 1, !tbaa !2448
  %1948 = lshr i32 %1939, 31
  %1949 = trunc i32 %1948 to i8
  store i8 %1949, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v334 = select i1 %1946, i64 31, i64 9
  %1950 = add i64 %1940, %.v334
  store i64 %1950, i64* %PC, align 8, !tbaa !2428
  br i1 %1946, label %block_401204, label %block_4011ee

block_400bd3:                                     ; preds = %block_400b9a
  %1951 = add i64 %803, -8
  %1952 = add i64 %820, 8
  store i64 %1952, i64* %PC, align 8
  %1953 = inttoptr i64 %1951 to i32*
  %1954 = load i32, i32* %1953, align 4
  %1955 = add i32 %1954, 1
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX, align 8, !tbaa !2428
  %1957 = icmp eq i32 %1954, -1
  %1958 = icmp eq i32 %1955, 0
  %1959 = or i1 %1957, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %13, align 1, !tbaa !2432
  %1961 = and i32 %1955, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961) #12
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %20, align 1, !tbaa !2446
  %1966 = xor i32 %1955, %1954
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %26, align 1, !tbaa !2447
  %1970 = zext i1 %1958 to i8
  store i8 %1970, i8* %29, align 1, !tbaa !2448
  %1971 = lshr i32 %1955, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %32, align 1, !tbaa !2449
  %1973 = lshr i32 %1954, 31
  %1974 = xor i32 %1971, %1973
  %1975 = add nuw nsw i32 %1974, %1971
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %38, align 1, !tbaa !2450
  %1978 = add i64 %820, 14
  store i64 %1978, i64* %PC, align 8
  store i32 %1955, i32* %1953, align 4
  %1979 = load i64, i64* %PC, align 8
  %1980 = add i64 %1979, -88
  store i64 %1980, i64* %PC, align 8, !tbaa !2428
  br label %block_400b89

block_400e9f:                                     ; preds = %block_400e98, %block_400ee9
  %1981 = phi i64 [ %.pre244, %block_400e98 ], [ %1338, %block_400ee9 ]
  %1982 = load i64, i64* %RBP, align 8
  %1983 = add i64 %1982, -8
  %1984 = add i64 %1981, 4
  store i64 %1984, i64* %PC, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1987 = and i32 %1986, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987) #12
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1992 = icmp eq i32 %1986, 0
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %29, align 1, !tbaa !2448
  %1994 = lshr i32 %1986, 31
  %1995 = trunc i32 %1994 to i8
  store i8 %1995, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1996 = xor i1 %1992, true
  %1997 = icmp eq i8 %1995, 0
  %1998 = and i1 %1997, %1996
  %.v300 = select i1 %1998, i64 93, i64 10
  %1999 = add i64 %1981, %.v300
  store i64 %1999, i64* %PC, align 8, !tbaa !2428
  br i1 %1998, label %block_400efc, label %block_400ea9

block_400e98:                                     ; preds = %block_400e8e
  %2000 = add i64 %2169, -8
  %2001 = add i64 %2186, 7
  store i64 %2001, i64* %PC, align 8
  %2002 = inttoptr i64 %2000 to i32*
  store i32 0, i32* %2002, align 4
  %.pre244 = load i64, i64* %PC, align 8
  br label %block_400e9f

block_400d63:                                     ; preds = %block_400dad, %block_400d5c
  %2003 = phi i64 [ %3333, %block_400dad ], [ %.pre238, %block_400d5c ]
  %2004 = load i64, i64* %RBP, align 8
  %2005 = add i64 %2004, -8
  %2006 = add i64 %2003, 4
  store i64 %2006, i64* %PC, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2009 = and i32 %2008, 255
  %2010 = tail call i32 @llvm.ctpop.i32(i32 %2009) #12
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  store i8 %2013, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2014 = icmp eq i32 %2008, 0
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %29, align 1, !tbaa !2448
  %2016 = lshr i32 %2008, 31
  %2017 = trunc i32 %2016 to i8
  store i8 %2017, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2018 = xor i1 %2014, true
  %2019 = icmp eq i8 %2017, 0
  %2020 = and i1 %2019, %2018
  %.v294 = select i1 %2020, i64 93, i64 10
  %2021 = add i64 %2003, %.v294
  store i64 %2021, i64* %PC, align 8, !tbaa !2428
  br i1 %2020, label %block_400dc0, label %block_400d6d

block_400931:                                     ; preds = %block_4008b0
  %2022 = add i64 %1798, 7
  store i64 %2022, i64* %PC, align 8
  store i32 0, i32* %1773, align 4
  %.pre217 = load i64, i64* %PC, align 8
  br label %block_400938

block_400a97:                                     ; preds = %block_400a5e
  %2023 = add i64 %2639, -8
  %2024 = add i64 %2667, 8
  store i64 %2024, i64* %PC, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = add i32 %2026, 1
  %2028 = zext i32 %2027 to i64
  store i64 %2028, i64* %RAX, align 8, !tbaa !2428
  %2029 = icmp eq i32 %2026, -1
  %2030 = icmp eq i32 %2027, 0
  %2031 = or i1 %2029, %2030
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %13, align 1, !tbaa !2432
  %2033 = and i32 %2027, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033) #12
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %20, align 1, !tbaa !2446
  %2038 = xor i32 %2027, %2026
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %26, align 1, !tbaa !2447
  %2042 = zext i1 %2030 to i8
  store i8 %2042, i8* %29, align 1, !tbaa !2448
  %2043 = lshr i32 %2027, 31
  %2044 = trunc i32 %2043 to i8
  store i8 %2044, i8* %32, align 1, !tbaa !2449
  %2045 = lshr i32 %2026, 31
  %2046 = xor i32 %2043, %2045
  %2047 = add nuw nsw i32 %2046, %2043
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %38, align 1, !tbaa !2450
  %2050 = add i64 %2667, 14
  store i64 %2050, i64* %PC, align 8
  store i32 %2027, i32* %2025, align 4
  %2051 = load i64, i64* %PC, align 8
  %2052 = add i64 %2051, -88
  store i64 %2052, i64* %PC, align 8, !tbaa !2428
  br label %block_400a4d

block_400afc:                                     ; preds = %block_400b06, %block_400af5
  %2053 = phi i64 [ %3525, %block_400b06 ], [ %.pre227, %block_400af5 ]
  %2054 = load i64, i64* %RBP, align 8
  %2055 = add i64 %2054, -12
  %2056 = add i64 %2053, 4
  store i64 %2056, i64* %PC, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = add i32 %2058, -1
  %2060 = icmp eq i32 %2058, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %13, align 1, !tbaa !2432
  %2062 = and i32 %2059, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062) #12
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %20, align 1, !tbaa !2446
  %2067 = xor i32 %2059, %2058
  %2068 = lshr i32 %2067, 4
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  store i8 %2070, i8* %26, align 1, !tbaa !2447
  %2071 = icmp eq i32 %2059, 0
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %29, align 1, !tbaa !2448
  %2073 = lshr i32 %2059, 31
  %2074 = trunc i32 %2073 to i8
  store i8 %2074, i8* %32, align 1, !tbaa !2449
  %2075 = lshr i32 %2058, 31
  %2076 = xor i32 %2073, %2075
  %2077 = add nuw nsw i32 %2076, %2075
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %38, align 1, !tbaa !2450
  %2080 = icmp ne i8 %2074, 0
  %2081 = xor i1 %2080, %2078
  %.demorgan277 = or i1 %2071, %2081
  %.v278 = select i1 %.demorgan277, i64 10, i64 57
  %2082 = add i64 %2053, %.v278
  store i64 %2082, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan277, label %block_400b06, label %block_400b35

block_401094:                                     ; preds = %block_40108a
  %2083 = add i64 %2468, -4
  %2084 = add i64 %2496, 3
  store i64 %2084, i64* %PC, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RAX, align 8, !tbaa !2428
  %2088 = add i64 %2468, -8
  %2089 = add i64 %2496, 6
  store i64 %2089, i64* %PC, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RCX, align 8, !tbaa !2428
  %2093 = add i64 %2496, 9
  store i64 %2093, i64* %PC, align 8
  %2094 = load i32, i32* %2471, align 4
  %2095 = shl i32 %2094, 3
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RDX, align 8, !tbaa !2428
  %2097 = add i32 %2095, %2091
  %2098 = shl i32 %2097, 3
  %2099 = zext i32 %2098 to i64
  store i64 %2099, i64* %RCX, align 8, !tbaa !2428
  %2100 = load i64, i64* %RAX, align 8
  %2101 = trunc i64 %2100 to i32
  %2102 = add i32 %2098, %2101
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RAX, align 8, !tbaa !2428
  %2104 = icmp ult i32 %2102, %2101
  %2105 = icmp ult i32 %2102, %2098
  %2106 = or i1 %2104, %2105
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %13, align 1, !tbaa !2432
  %2108 = and i32 %2102, 255
  %2109 = tail call i32 @llvm.ctpop.i32(i32 %2108) #12
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  store i8 %2112, i8* %20, align 1, !tbaa !2446
  %2113 = xor i64 %2099, %2100
  %2114 = trunc i64 %2113 to i32
  %2115 = xor i32 %2114, %2102
  %2116 = lshr i32 %2115, 4
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  store i8 %2118, i8* %26, align 1, !tbaa !2447
  %2119 = icmp eq i32 %2102, 0
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %29, align 1, !tbaa !2448
  %2121 = lshr i32 %2102, 31
  %2122 = trunc i32 %2121 to i8
  store i8 %2122, i8* %32, align 1, !tbaa !2449
  %2123 = lshr i32 %2101, 31
  %2124 = lshr i32 %2097, 28
  %2125 = and i32 %2124, 1
  %2126 = xor i32 %2121, %2123
  %2127 = xor i32 %2121, %2125
  %2128 = add nuw nsw i32 %2126, %2127
  %2129 = icmp eq i32 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %38, align 1, !tbaa !2450
  %2131 = sext i32 %2102 to i64
  store i64 %2131, i64* %RSI, align 8, !tbaa !2428
  %2132 = shl nsw i64 %2131, 2
  %2133 = add i64 %2132, add (i64 ptrtoint (%p_type* @p to i64), i64 22528)
  %2134 = add i64 %2496, 33
  store i64 %2134, i64* %PC, align 8
  %2135 = inttoptr i64 %2133 to i32*
  store i32 1, i32* %2135, align 4
  %2136 = load i64, i64* %RBP, align 8
  %2137 = add i64 %2136, -12
  %2138 = load i64, i64* %PC, align 8
  %2139 = add i64 %2138, 3
  store i64 %2139, i64* %PC, align 8
  %2140 = inttoptr i64 %2137 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = add i32 %2141, 1
  %2143 = zext i32 %2142 to i64
  store i64 %2143, i64* %RAX, align 8, !tbaa !2428
  %2144 = icmp eq i32 %2141, -1
  %2145 = icmp eq i32 %2142, 0
  %2146 = or i1 %2144, %2145
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %13, align 1, !tbaa !2432
  %2148 = and i32 %2142, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148) #12
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %20, align 1, !tbaa !2446
  %2153 = xor i32 %2142, %2141
  %2154 = lshr i32 %2153, 4
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  store i8 %2156, i8* %26, align 1, !tbaa !2447
  %2157 = zext i1 %2145 to i8
  store i8 %2157, i8* %29, align 1, !tbaa !2448
  %2158 = lshr i32 %2142, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %32, align 1, !tbaa !2449
  %2160 = lshr i32 %2141, 31
  %2161 = xor i32 %2158, %2160
  %2162 = add nuw nsw i32 %2161, %2158
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %38, align 1, !tbaa !2450
  %2165 = add i64 %2138, 9
  store i64 %2165, i64* %PC, align 8
  store i32 %2142, i32* %2140, align 4
  %2166 = load i64, i64* %PC, align 8
  %2167 = add i64 %2166, -52
  store i64 %2167, i64* %PC, align 8, !tbaa !2428
  br label %block_40108a

block_400e8e:                                     ; preds = %block_400e71, %block_400efc
  %2168 = phi i64 [ %.pre243, %block_400e71 ], [ %89, %block_400efc ]
  %2169 = load i64, i64* %RBP, align 8
  %2170 = add i64 %2169, -4
  %2171 = add i64 %2168, 4
  store i64 %2171, i64* %PC, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2174 = and i32 %2173, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174) #12
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2179 = icmp eq i32 %2173, 0
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %29, align 1, !tbaa !2448
  %2181 = lshr i32 %2173, 31
  %2182 = trunc i32 %2181 to i8
  store i8 %2182, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2183 = xor i1 %2179, true
  %2184 = icmp eq i8 %2182, 0
  %2185 = and i1 %2184, %2183
  %.v329 = select i1 %2185, i64 129, i64 10
  %2186 = add i64 %2168, %.v329
  store i64 %2186, i64* %PC, align 8, !tbaa !2428
  br i1 %2185, label %block_400f0f, label %block_400e98

block_400c84:                                     ; preds = %block_400c27
  %2187 = add i64 %3003, -4
  %2188 = add i64 %3020, 8
  store i64 %2188, i64* %PC, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = add i32 %2190, 1
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RAX, align 8, !tbaa !2428
  %2193 = icmp eq i32 %2190, -1
  %2194 = icmp eq i32 %2191, 0
  %2195 = or i1 %2193, %2194
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %13, align 1, !tbaa !2432
  %2197 = and i32 %2191, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197) #12
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %20, align 1, !tbaa !2446
  %2202 = xor i32 %2191, %2190
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %26, align 1, !tbaa !2447
  %2206 = zext i1 %2194 to i8
  store i8 %2206, i8* %29, align 1, !tbaa !2448
  %2207 = lshr i32 %2191, 31
  %2208 = trunc i32 %2207 to i8
  store i8 %2208, i8* %32, align 1, !tbaa !2449
  %2209 = lshr i32 %2190, 31
  %2210 = xor i32 %2207, %2209
  %2211 = add nuw nsw i32 %2210, %2207
  %2212 = icmp eq i32 %2211, 2
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %38, align 1, !tbaa !2450
  %2214 = add i64 %3020, 14
  store i64 %2214, i64* %PC, align 8
  store i32 %2191, i32* %2189, align 4
  %2215 = load i64, i64* %PC, align 8
  %2216 = add i64 %2215, -124
  store i64 %2216, i64* %PC, align 8, !tbaa !2428
  br label %block_400c16

block_400aeb:                                     ; preds = %block_400b35, %block_400ae4
  %2217 = phi i64 [ %3567, %block_400b35 ], [ %.pre226, %block_400ae4 ]
  %2218 = load i64, i64* %RBP, align 8
  %2219 = add i64 %2218, -8
  %2220 = add i64 %2217, 4
  store i64 %2220, i64* %PC, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = add i32 %2222, -3
  %2224 = icmp ult i32 %2222, 3
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %13, align 1, !tbaa !2432
  %2226 = and i32 %2223, 255
  %2227 = tail call i32 @llvm.ctpop.i32(i32 %2226) #12
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  store i8 %2230, i8* %20, align 1, !tbaa !2446
  %2231 = xor i32 %2223, %2222
  %2232 = lshr i32 %2231, 4
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %26, align 1, !tbaa !2447
  %2235 = icmp eq i32 %2223, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %29, align 1, !tbaa !2448
  %2237 = lshr i32 %2223, 31
  %2238 = trunc i32 %2237 to i8
  store i8 %2238, i8* %32, align 1, !tbaa !2449
  %2239 = lshr i32 %2222, 31
  %2240 = xor i32 %2237, %2239
  %2241 = add nuw nsw i32 %2240, %2239
  %2242 = icmp eq i32 %2241, 2
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %38, align 1, !tbaa !2450
  %2244 = icmp ne i8 %2238, 0
  %2245 = xor i1 %2244, %2242
  %.demorgan276 = or i1 %2235, %2245
  %.v279 = select i1 %.demorgan276, i64 10, i64 93
  %2246 = add i64 %2217, %.v279
  store i64 %2246, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan276, label %block_400af5, label %block_400b48

block_4008d2:                                     ; preds = %block_4008cb, %block_4008dc
  %2247 = phi i64 [ %.pre216, %block_4008cb ], [ %1511, %block_4008dc ]
  %2248 = load i64, i64* %RBP, align 8
  %2249 = add i64 %2248, -12
  %2250 = add i64 %2247, 4
  store i64 %2250, i64* %PC, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = add i32 %2252, -5
  %2254 = icmp ult i32 %2252, 5
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %13, align 1, !tbaa !2432
  %2256 = and i32 %2253, 255
  %2257 = tail call i32 @llvm.ctpop.i32(i32 %2256) #12
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  store i8 %2260, i8* %20, align 1, !tbaa !2446
  %2261 = xor i32 %2253, %2252
  %2262 = lshr i32 %2261, 4
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  store i8 %2264, i8* %26, align 1, !tbaa !2447
  %2265 = icmp eq i32 %2253, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %29, align 1, !tbaa !2448
  %2267 = lshr i32 %2253, 31
  %2268 = trunc i32 %2267 to i8
  store i8 %2268, i8* %32, align 1, !tbaa !2449
  %2269 = lshr i32 %2252, 31
  %2270 = xor i32 %2267, %2269
  %2271 = add nuw nsw i32 %2270, %2269
  %2272 = icmp eq i32 %2271, 2
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %38, align 1, !tbaa !2450
  %2274 = icmp ne i8 %2268, 0
  %2275 = xor i1 %2274, %2272
  %.demorgan263 = or i1 %2265, %2275
  %.v = select i1 %.demorgan263, i64 10, i64 57
  %2276 = add i64 %2247, %.v
  store i64 %2276, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan263, label %block_4008dc, label %block_40090b

block_401083:                                     ; preds = %block_401079
  %2277 = add i64 %3275, -12
  %2278 = add i64 %3303, 7
  store i64 %2278, i64* %PC, align 8
  %2279 = inttoptr i64 %2277 to i32*
  store i32 0, i32* %2279, align 4
  %.pre254 = load i64, i64* %PC, align 8
  br label %block_40108a

block_400f58:                                     ; preds = %block_400f4e
  %2280 = add i64 %719, -4
  %2281 = add i64 %736, 3
  store i64 %2281, i64* %PC, align 8
  %2282 = inttoptr i64 %2280 to i32*
  %2283 = load i32, i32* %2282, align 4
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %RAX, align 8, !tbaa !2428
  %2285 = add i64 %719, -8
  %2286 = add i64 %736, 6
  store i64 %2286, i64* %PC, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RCX, align 8, !tbaa !2428
  %2290 = add i64 %736, 9
  store i64 %2290, i64* %PC, align 8
  %2291 = load i32, i32* %722, align 4
  %2292 = shl i32 %2291, 3
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RDX, align 8, !tbaa !2428
  %2294 = add i32 %2292, %2288
  %2295 = shl i32 %2294, 3
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RCX, align 8, !tbaa !2428
  %2297 = load i64, i64* %RAX, align 8
  %2298 = trunc i64 %2297 to i32
  %2299 = add i32 %2295, %2298
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RAX, align 8, !tbaa !2428
  %2301 = icmp ult i32 %2299, %2298
  %2302 = icmp ult i32 %2299, %2295
  %2303 = or i1 %2301, %2302
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %13, align 1, !tbaa !2432
  %2305 = and i32 %2299, 255
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305) #12
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %20, align 1, !tbaa !2446
  %2310 = xor i64 %2296, %2297
  %2311 = trunc i64 %2310 to i32
  %2312 = xor i32 %2311, %2299
  %2313 = lshr i32 %2312, 4
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  store i8 %2315, i8* %26, align 1, !tbaa !2447
  %2316 = icmp eq i32 %2299, 0
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %29, align 1, !tbaa !2448
  %2318 = lshr i32 %2299, 31
  %2319 = trunc i32 %2318 to i8
  store i8 %2319, i8* %32, align 1, !tbaa !2449
  %2320 = lshr i32 %2298, 31
  %2321 = lshr i32 %2294, 28
  %2322 = and i32 %2321, 1
  %2323 = xor i32 %2318, %2320
  %2324 = xor i32 %2318, %2322
  %2325 = add nuw nsw i32 %2323, %2324
  %2326 = icmp eq i32 %2325, 2
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %38, align 1, !tbaa !2450
  %2328 = sext i32 %2299 to i64
  store i64 %2328, i64* %RSI, align 8, !tbaa !2428
  %2329 = shl nsw i64 %2328, 2
  %2330 = add i64 %2329, add (i64 ptrtoint (%p_type* @p to i64), i64 18432)
  %2331 = add i64 %736, 33
  store i64 %2331, i64* %PC, align 8
  %2332 = inttoptr i64 %2330 to i32*
  store i32 1, i32* %2332, align 4
  %2333 = load i64, i64* %RBP, align 8
  %2334 = add i64 %2333, -12
  %2335 = load i64, i64* %PC, align 8
  %2336 = add i64 %2335, 3
  store i64 %2336, i64* %PC, align 8
  %2337 = inttoptr i64 %2334 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = add i32 %2338, 1
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RAX, align 8, !tbaa !2428
  %2341 = icmp eq i32 %2338, -1
  %2342 = icmp eq i32 %2339, 0
  %2343 = or i1 %2341, %2342
  %2344 = zext i1 %2343 to i8
  store i8 %2344, i8* %13, align 1, !tbaa !2432
  %2345 = and i32 %2339, 255
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345) #12
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %20, align 1, !tbaa !2446
  %2350 = xor i32 %2339, %2338
  %2351 = lshr i32 %2350, 4
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  store i8 %2353, i8* %26, align 1, !tbaa !2447
  %2354 = zext i1 %2342 to i8
  store i8 %2354, i8* %29, align 1, !tbaa !2448
  %2355 = lshr i32 %2339, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %32, align 1, !tbaa !2449
  %2357 = lshr i32 %2338, 31
  %2358 = xor i32 %2355, %2357
  %2359 = add nuw nsw i32 %2358, %2355
  %2360 = icmp eq i32 %2359, 2
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %38, align 1, !tbaa !2450
  %2362 = add i64 %2335, 9
  store i64 %2362, i64* %PC, align 8
  store i32 %2339, i32* %2337, align 4
  %2363 = load i64, i64* %PC, align 8
  %2364 = add i64 %2363, -52
  store i64 %2364, i64* %PC, align 8, !tbaa !2428
  br label %block_400f4e

block_4009c0:                                     ; preds = %block_4009ca, %block_4009b9
  %2365 = phi i64 [ %3682, %block_4009ca ], [ %.pre221, %block_4009b9 ]
  %2366 = load i64, i64* %RBP, align 8
  %2367 = add i64 %2366, -12
  %2368 = add i64 %2365, 4
  store i64 %2368, i64* %PC, align 8
  %2369 = inttoptr i64 %2367 to i32*
  %2370 = load i32, i32* %2369, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2371 = and i32 %2370, 255
  %2372 = tail call i32 @llvm.ctpop.i32(i32 %2371) #12
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  store i8 %2375, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2376 = icmp eq i32 %2370, 0
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %29, align 1, !tbaa !2448
  %2378 = lshr i32 %2370, 31
  %2379 = trunc i32 %2378 to i8
  store i8 %2379, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2380 = xor i1 %2376, true
  %2381 = icmp eq i8 %2379, 0
  %2382 = and i1 %2381, %2380
  %.v270 = select i1 %2382, i64 57, i64 10
  %2383 = add i64 %2365, %.v270
  store i64 %2383, i64* %PC, align 8, !tbaa !2428
  br i1 %2382, label %block_4009f9, label %block_4009ca

block_40087f:                                     ; preds = %block_40088c, %block_400870
  %2384 = phi i64 [ %2933, %block_40088c ], [ %.pre, %block_400870 ]
  %2385 = load i64, i64* %RBP, align 8
  %2386 = add i64 %2385, -16
  %2387 = add i64 %2384, 7
  store i64 %2387, i64* %PC, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = add i32 %2389, -511
  %2391 = icmp ult i32 %2389, 511
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %13, align 1, !tbaa !2432
  %2393 = and i32 %2390, 255
  %2394 = tail call i32 @llvm.ctpop.i32(i32 %2393) #12
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = xor i8 %2396, 1
  store i8 %2397, i8* %20, align 1, !tbaa !2446
  %2398 = xor i32 %2389, 16
  %2399 = xor i32 %2398, %2390
  %2400 = lshr i32 %2399, 4
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  store i8 %2402, i8* %26, align 1, !tbaa !2447
  %2403 = icmp eq i32 %2390, 0
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %29, align 1, !tbaa !2448
  %2405 = lshr i32 %2390, 31
  %2406 = trunc i32 %2405 to i8
  store i8 %2406, i8* %32, align 1, !tbaa !2449
  %2407 = lshr i32 %2389, 31
  %2408 = xor i32 %2405, %2407
  %2409 = add nuw nsw i32 %2408, %2407
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %38, align 1, !tbaa !2450
  %2412 = icmp ne i8 %2406, 0
  %2413 = xor i1 %2412, %2410
  %.demorgan = or i1 %2403, %2413
  %.v318 = select i1 %.demorgan, i64 13, i64 42
  %2414 = add i64 %2384, %.v318
  store i64 %2414, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40088c, label %block_4008a9

block_400ada:                                     ; preds = %block_400abd, %block_400b48
  %2415 = phi i64 [ %.pre225, %block_400abd ], [ %684, %block_400b48 ]
  %2416 = load i64, i64* %RBP, align 8
  %2417 = add i64 %2416, -4
  %2418 = add i64 %2415, 4
  store i64 %2418, i64* %PC, align 8
  %2419 = inttoptr i64 %2417 to i32*
  %2420 = load i32, i32* %2419, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2421 = and i32 %2420, 255
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421) #12
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2426 = icmp eq i32 %2420, 0
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %29, align 1, !tbaa !2448
  %2428 = lshr i32 %2420, 31
  %2429 = trunc i32 %2428 to i8
  store i8 %2429, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2430 = xor i1 %2426, true
  %2431 = icmp eq i8 %2429, 0
  %2432 = and i1 %2431, %2430
  %.v323 = select i1 %2432, i64 129, i64 10
  %2433 = add i64 %2415, %.v323
  store i64 %2433, i64* %PC, align 8, !tbaa !2428
  br i1 %2432, label %block_400b5b, label %block_400ae4

block_4008c1:                                     ; preds = %block_4008ba, %block_40090b
  %2434 = phi i64 [ %.pre215, %block_4008ba ], [ %1174, %block_40090b ]
  %2435 = load i64, i64* %RBP, align 8
  %2436 = add i64 %2435, -8
  %2437 = add i64 %2434, 4
  store i64 %2437, i64* %PC, align 8
  %2438 = inttoptr i64 %2436 to i32*
  %2439 = load i32, i32* %2438, align 4
  %2440 = add i32 %2439, -5
  %2441 = icmp ult i32 %2439, 5
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %13, align 1, !tbaa !2432
  %2443 = and i32 %2440, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443) #12
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  store i8 %2447, i8* %20, align 1, !tbaa !2446
  %2448 = xor i32 %2440, %2439
  %2449 = lshr i32 %2448, 4
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  store i8 %2451, i8* %26, align 1, !tbaa !2447
  %2452 = icmp eq i32 %2440, 0
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %29, align 1, !tbaa !2448
  %2454 = lshr i32 %2440, 31
  %2455 = trunc i32 %2454 to i8
  store i8 %2455, i8* %32, align 1, !tbaa !2449
  %2456 = lshr i32 %2439, 31
  %2457 = xor i32 %2454, %2456
  %2458 = add nuw nsw i32 %2457, %2456
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %38, align 1, !tbaa !2450
  %2461 = icmp ne i8 %2455, 0
  %2462 = xor i1 %2461, %2459
  %.demorgan262 = or i1 %2452, %2462
  %.v264 = select i1 %.demorgan262, i64 10, i64 93
  %2463 = add i64 %2434, %.v264
  store i64 %2463, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan262, label %block_4008cb, label %block_40091e

block_401072:                                     ; preds = %block_401068
  %2464 = add i64 %2499, -8
  %2465 = add i64 %2516, 7
  store i64 %2465, i64* %PC, align 8
  %2466 = inttoptr i64 %2464 to i32*
  store i32 0, i32* %2466, align 4
  %.pre253 = load i64, i64* %PC, align 8
  br label %block_401079

block_40108a:                                     ; preds = %block_401083, %block_401094
  %2467 = phi i64 [ %.pre254, %block_401083 ], [ %2167, %block_401094 ]
  %2468 = load i64, i64* %RBP, align 8
  %2469 = add i64 %2468, -12
  %2470 = add i64 %2467, 4
  store i64 %2470, i64* %PC, align 8
  %2471 = inttoptr i64 %2469 to i32*
  %2472 = load i32, i32* %2471, align 4
  %2473 = add i32 %2472, -1
  %2474 = icmp eq i32 %2472, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %13, align 1, !tbaa !2432
  %2476 = and i32 %2473, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476) #12
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %20, align 1, !tbaa !2446
  %2481 = xor i32 %2473, %2472
  %2482 = lshr i32 %2481, 4
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  store i8 %2484, i8* %26, align 1, !tbaa !2447
  %2485 = icmp eq i32 %2473, 0
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %29, align 1, !tbaa !2448
  %2487 = lshr i32 %2473, 31
  %2488 = trunc i32 %2487 to i8
  store i8 %2488, i8* %32, align 1, !tbaa !2449
  %2489 = lshr i32 %2472, 31
  %2490 = xor i32 %2487, %2489
  %2491 = add nuw nsw i32 %2490, %2489
  %2492 = icmp eq i32 %2491, 2
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %38, align 1, !tbaa !2450
  %2494 = icmp ne i8 %2488, 0
  %2495 = xor i1 %2494, %2492
  %.demorgan310 = or i1 %2485, %2495
  %.v311 = select i1 %.demorgan310, i64 10, i64 57
  %2496 = add i64 %2467, %.v311
  store i64 %2496, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan310, label %block_401094, label %block_4010c3

block_400e71:                                     ; preds = %block_400df0
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 28) to i32*), align 4
  store i32 16, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 28) to i32*), align 4
  %2497 = add i64 %1144, 29
  store i64 %2497, i64* %PC, align 8
  store i32 0, i32* %1130, align 4
  %.pre243 = load i64, i64* %PC, align 8
  br label %block_400e8e

block_401068:                                     ; preds = %block_4010d6, %block_40104b
  %2498 = phi i64 [ %1234, %block_4010d6 ], [ %.pre252, %block_40104b ]
  %2499 = load i64, i64* %RBP, align 8
  %2500 = add i64 %2499, -4
  %2501 = add i64 %2498, 4
  store i64 %2501, i64* %PC, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2504 = and i32 %2503, 255
  %2505 = tail call i32 @llvm.ctpop.i32(i32 %2504) #12
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  %2508 = xor i8 %2507, 1
  store i8 %2508, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2509 = icmp eq i32 %2503, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %29, align 1, !tbaa !2448
  %2511 = lshr i32 %2503, 31
  %2512 = trunc i32 %2511 to i8
  store i8 %2512, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2513 = xor i1 %2509, true
  %2514 = icmp eq i8 %2512, 0
  %2515 = and i1 %2514, %2513
  %.v332 = select i1 %2515, i64 129, i64 10
  %2516 = add i64 %2498, %.v332
  store i64 %2516, i64* %PC, align 8, !tbaa !2428
  br i1 %2515, label %block_4010e9, label %block_401072

block_400ae4:                                     ; preds = %block_400ada
  %2517 = add i64 %2416, -8
  %2518 = add i64 %2433, 7
  store i64 %2518, i64* %PC, align 8
  %2519 = inttoptr i64 %2517 to i32*
  store i32 0, i32* %2519, align 4
  %.pre226 = load i64, i64* %PC, align 8
  br label %block_400aeb

block_4008cb:                                     ; preds = %block_4008c1
  %2520 = add i64 %2435, -12
  %2521 = add i64 %2463, 7
  store i64 %2521, i64* %PC, align 8
  %2522 = inttoptr i64 %2520 to i32*
  store i32 1, i32* %2522, align 4
  %.pre216 = load i64, i64* %PC, align 8
  br label %block_4008d2

block_401174:                                     ; preds = %block_401117
  %2523 = add i64 %2745, -4
  %2524 = add i64 %2773, 8
  store i64 %2524, i64* %PC, align 8
  %2525 = inttoptr i64 %2523 to i32*
  %2526 = load i32, i32* %2525, align 4
  %2527 = add i32 %2526, 1
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RAX, align 8, !tbaa !2428
  %2529 = icmp eq i32 %2526, -1
  %2530 = icmp eq i32 %2527, 0
  %2531 = or i1 %2529, %2530
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %13, align 1, !tbaa !2432
  %2533 = and i32 %2527, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533) #12
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %20, align 1, !tbaa !2446
  %2538 = xor i32 %2527, %2526
  %2539 = lshr i32 %2538, 4
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  store i8 %2541, i8* %26, align 1, !tbaa !2447
  %2542 = zext i1 %2530 to i8
  store i8 %2542, i8* %29, align 1, !tbaa !2448
  %2543 = lshr i32 %2527, 31
  %2544 = trunc i32 %2543 to i8
  store i8 %2544, i8* %32, align 1, !tbaa !2449
  %2545 = lshr i32 %2526, 31
  %2546 = xor i32 %2543, %2545
  %2547 = add nuw nsw i32 %2546, %2543
  %2548 = icmp eq i32 %2547, 2
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %38, align 1, !tbaa !2450
  %2550 = add i64 %2773, 14
  store i64 %2550, i64* %PC, align 8
  store i32 %2527, i32* %2525, align 4
  %2551 = load i64, i64* %PC, align 8
  %2552 = add i64 %2551, -124
  store i64 %2552, i64* %PC, align 8, !tbaa !2428
  br label %block_401106

block_400ff6:                                     ; preds = %block_400fec
  %2553 = add i64 %121, -4
  %2554 = add i64 %149, 3
  store i64 %2554, i64* %PC, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RAX, align 8, !tbaa !2428
  %2558 = add i64 %121, -8
  %2559 = add i64 %149, 6
  store i64 %2559, i64* %PC, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RCX, align 8, !tbaa !2428
  %2563 = add i64 %149, 9
  store i64 %2563, i64* %PC, align 8
  %2564 = load i32, i32* %124, align 4
  %2565 = shl i32 %2564, 3
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RDX, align 8, !tbaa !2428
  %2567 = add i32 %2565, %2561
  %2568 = shl i32 %2567, 3
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RCX, align 8, !tbaa !2428
  %2570 = load i64, i64* %RAX, align 8
  %2571 = trunc i64 %2570 to i32
  %2572 = add i32 %2568, %2571
  %2573 = zext i32 %2572 to i64
  store i64 %2573, i64* %RAX, align 8, !tbaa !2428
  %2574 = icmp ult i32 %2572, %2571
  %2575 = icmp ult i32 %2572, %2568
  %2576 = or i1 %2574, %2575
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %13, align 1, !tbaa !2432
  %2578 = and i32 %2572, 255
  %2579 = tail call i32 @llvm.ctpop.i32(i32 %2578) #12
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = xor i8 %2581, 1
  store i8 %2582, i8* %20, align 1, !tbaa !2446
  %2583 = xor i64 %2569, %2570
  %2584 = trunc i64 %2583 to i32
  %2585 = xor i32 %2584, %2572
  %2586 = lshr i32 %2585, 4
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %26, align 1, !tbaa !2447
  %2589 = icmp eq i32 %2572, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %29, align 1, !tbaa !2448
  %2591 = lshr i32 %2572, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %32, align 1, !tbaa !2449
  %2593 = lshr i32 %2571, 31
  %2594 = lshr i32 %2567, 28
  %2595 = and i32 %2594, 1
  %2596 = xor i32 %2591, %2593
  %2597 = xor i32 %2591, %2595
  %2598 = add nuw nsw i32 %2596, %2597
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %38, align 1, !tbaa !2450
  %2601 = sext i32 %2572 to i64
  store i64 %2601, i64* %RSI, align 8, !tbaa !2428
  %2602 = shl nsw i64 %2601, 2
  %2603 = add i64 %2602, add (i64 ptrtoint (%p_type* @p to i64), i64 20480)
  %2604 = add i64 %149, 33
  store i64 %2604, i64* %PC, align 8
  %2605 = inttoptr i64 %2603 to i32*
  store i32 1, i32* %2605, align 4
  %2606 = load i64, i64* %RBP, align 8
  %2607 = add i64 %2606, -12
  %2608 = load i64, i64* %PC, align 8
  %2609 = add i64 %2608, 3
  store i64 %2609, i64* %PC, align 8
  %2610 = inttoptr i64 %2607 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = add i32 %2611, 1
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RAX, align 8, !tbaa !2428
  %2614 = icmp eq i32 %2611, -1
  %2615 = icmp eq i32 %2612, 0
  %2616 = or i1 %2614, %2615
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %13, align 1, !tbaa !2432
  %2618 = and i32 %2612, 255
  %2619 = tail call i32 @llvm.ctpop.i32(i32 %2618) #12
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = xor i8 %2621, 1
  store i8 %2622, i8* %20, align 1, !tbaa !2446
  %2623 = xor i32 %2612, %2611
  %2624 = lshr i32 %2623, 4
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  store i8 %2626, i8* %26, align 1, !tbaa !2447
  %2627 = zext i1 %2615 to i8
  store i8 %2627, i8* %29, align 1, !tbaa !2448
  %2628 = lshr i32 %2612, 31
  %2629 = trunc i32 %2628 to i8
  store i8 %2629, i8* %32, align 1, !tbaa !2449
  %2630 = lshr i32 %2611, 31
  %2631 = xor i32 %2628, %2630
  %2632 = add nuw nsw i32 %2631, %2628
  %2633 = icmp eq i32 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %38, align 1, !tbaa !2450
  %2635 = add i64 %2608, 9
  store i64 %2635, i64* %PC, align 8
  store i32 %2612, i32* %2610, align 4
  %2636 = load i64, i64* %PC, align 8
  %2637 = add i64 %2636, -52
  store i64 %2637, i64* %PC, align 8, !tbaa !2428
  br label %block_400fec

block_400a5e:                                     ; preds = %block_400a57, %block_400a68
  %2638 = phi i64 [ %.pre224, %block_400a57 ], [ %540, %block_400a68 ]
  %2639 = load i64, i64* %RBP, align 8
  %2640 = add i64 %2639, -12
  %2641 = add i64 %2638, 4
  store i64 %2641, i64* %PC, align 8
  %2642 = inttoptr i64 %2640 to i32*
  %2643 = load i32, i32* %2642, align 4
  %2644 = add i32 %2643, -3
  %2645 = icmp ult i32 %2643, 3
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %13, align 1, !tbaa !2432
  %2647 = and i32 %2644, 255
  %2648 = tail call i32 @llvm.ctpop.i32(i32 %2647) #12
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  store i8 %2651, i8* %20, align 1, !tbaa !2446
  %2652 = xor i32 %2644, %2643
  %2653 = lshr i32 %2652, 4
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  store i8 %2655, i8* %26, align 1, !tbaa !2447
  %2656 = icmp eq i32 %2644, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %29, align 1, !tbaa !2448
  %2658 = lshr i32 %2644, 31
  %2659 = trunc i32 %2658 to i8
  store i8 %2659, i8* %32, align 1, !tbaa !2449
  %2660 = lshr i32 %2643, 31
  %2661 = xor i32 %2658, %2660
  %2662 = add nuw nsw i32 %2661, %2660
  %2663 = icmp eq i32 %2662, 2
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %38, align 1, !tbaa !2450
  %2665 = icmp ne i8 %2659, 0
  %2666 = xor i1 %2665, %2663
  %.demorgan273 = or i1 %2656, %2666
  %.v274 = select i1 %.demorgan273, i64 10, i64 57
  %2667 = add i64 %2638, %.v274
  store i64 %2667, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan273, label %block_400a68, label %block_400a97

block_4008ba:                                     ; preds = %block_4008b0
  %2668 = add i64 %1770, -8
  %2669 = add i64 %1798, 7
  store i64 %2669, i64* %PC, align 8
  %2670 = inttoptr i64 %2668 to i32*
  store i32 1, i32* %2670, align 4
  %.pre215 = load i64, i64* %PC, align 8
  br label %block_4008c1

block_400fdb:                                     ; preds = %block_401025, %block_400fd4
  %2671 = phi i64 [ %3050, %block_401025 ], [ %.pre250, %block_400fd4 ]
  %2672 = load i64, i64* %RBP, align 8
  %2673 = add i64 %2672, -8
  %2674 = add i64 %2671, 4
  store i64 %2674, i64* %PC, align 8
  %2675 = inttoptr i64 %2673 to i32*
  %2676 = load i32, i32* %2675, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2677 = and i32 %2676, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677) #12
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2682 = icmp eq i32 %2676, 0
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %29, align 1, !tbaa !2448
  %2684 = lshr i32 %2676, 31
  %2685 = trunc i32 %2684 to i8
  store i8 %2685, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2686 = xor i1 %2682, true
  %2687 = icmp eq i8 %2685, 0
  %2688 = and i1 %2687, %2686
  %.v308 = select i1 %2688, i64 93, i64 10
  %2689 = add i64 %2671, %.v308
  store i64 %2689, i64* %PC, align 8, !tbaa !2428
  br i1 %2688, label %block_401038, label %block_400fe5

block_400d0f:                                     ; preds = %block_400cd6
  %2690 = add i64 %1609, -8
  %2691 = add i64 %1637, 8
  store i64 %2691, i64* %PC, align 8
  %2692 = inttoptr i64 %2690 to i32*
  %2693 = load i32, i32* %2692, align 4
  %2694 = add i32 %2693, 1
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX, align 8, !tbaa !2428
  %2696 = icmp eq i32 %2693, -1
  %2697 = icmp eq i32 %2694, 0
  %2698 = or i1 %2696, %2697
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %13, align 1, !tbaa !2432
  %2700 = and i32 %2694, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700) #12
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %20, align 1, !tbaa !2446
  %2705 = xor i32 %2694, %2693
  %2706 = lshr i32 %2705, 4
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  store i8 %2708, i8* %26, align 1, !tbaa !2447
  %2709 = zext i1 %2697 to i8
  store i8 %2709, i8* %29, align 1, !tbaa !2448
  %2710 = lshr i32 %2694, 31
  %2711 = trunc i32 %2710 to i8
  store i8 %2711, i8* %32, align 1, !tbaa !2449
  %2712 = lshr i32 %2693, 31
  %2713 = xor i32 %2710, %2712
  %2714 = add nuw nsw i32 %2713, %2710
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %38, align 1, !tbaa !2450
  %2717 = add i64 %1637, 14
  store i64 %2717, i64* %PC, align 8
  store i32 %2694, i32* %2692, align 4
  %2718 = load i64, i64* %PC, align 8
  %2719 = add i64 %2718, -88
  store i64 %2719, i64* %PC, align 8, !tbaa !2428
  br label %block_400cc5

block_401257:                                     ; preds = %block_401246
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 41), i64* %RDI, align 8, !tbaa !2428
  %2720 = add i64 %654, 12
  store i64 %2720, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2721 = add i64 %654, -3639
  br label %block_401270.sink.split

block_400fe5:                                     ; preds = %block_400fdb
  %2722 = add i64 %2672, -12
  %2723 = add i64 %2689, 7
  store i64 %2723, i64* %PC, align 8
  %2724 = inttoptr i64 %2722 to i32*
  store i32 0, i32* %2724, align 4
  %.pre251 = load i64, i64* %PC, align 8
  br label %block_400fec

block_400a4d:                                     ; preds = %block_400a46, %block_400a97
  %2725 = phi i64 [ %.pre223, %block_400a46 ], [ %2052, %block_400a97 ]
  %2726 = load i64, i64* %RBP, align 8
  %2727 = add i64 %2726, -8
  %2728 = add i64 %2725, 4
  store i64 %2728, i64* %PC, align 8
  %2729 = inttoptr i64 %2727 to i32*
  %2730 = load i32, i32* %2729, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2731 = and i32 %2730, 255
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731) #12
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2736 = icmp eq i32 %2730, 0
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %29, align 1, !tbaa !2448
  %2738 = lshr i32 %2730, 31
  %2739 = trunc i32 %2738 to i8
  store i8 %2739, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2740 = xor i1 %2736, true
  %2741 = icmp eq i8 %2739, 0
  %2742 = and i1 %2741, %2740
  %.v275 = select i1 %2742, i64 93, i64 10
  %2743 = add i64 %2725, %.v275
  store i64 %2743, i64* %PC, align 8, !tbaa !2428
  br i1 %2742, label %block_400aaa, label %block_400a57

block_401117:                                     ; preds = %block_401110, %block_401161
  %2744 = phi i64 [ %.pre256, %block_401110 ], [ %570, %block_401161 ]
  %2745 = load i64, i64* %RBP, align 8
  %2746 = add i64 %2745, -8
  %2747 = add i64 %2744, 4
  store i64 %2747, i64* %PC, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = add i32 %2749, -1
  %2751 = icmp eq i32 %2749, 0
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %13, align 1, !tbaa !2432
  %2753 = and i32 %2750, 255
  %2754 = tail call i32 @llvm.ctpop.i32(i32 %2753) #12
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  %2757 = xor i8 %2756, 1
  store i8 %2757, i8* %20, align 1, !tbaa !2446
  %2758 = xor i32 %2750, %2749
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %26, align 1, !tbaa !2447
  %2762 = icmp eq i32 %2750, 0
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %29, align 1, !tbaa !2448
  %2764 = lshr i32 %2750, 31
  %2765 = trunc i32 %2764 to i8
  store i8 %2765, i8* %32, align 1, !tbaa !2449
  %2766 = lshr i32 %2749, 31
  %2767 = xor i32 %2764, %2766
  %2768 = add nuw nsw i32 %2767, %2766
  %2769 = icmp eq i32 %2768, 2
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %38, align 1, !tbaa !2450
  %2771 = icmp ne i8 %2765, 0
  %2772 = xor i1 %2771, %2769
  %.demorgan314 = or i1 %2762, %2772
  %.v317 = select i1 %.demorgan314, i64 10, i64 93
  %2773 = add i64 %2744, %.v317
  store i64 %2773, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan314, label %block_401121, label %block_401174

block_400e4b:                                     ; preds = %block_400e12
  %2774 = add i64 %3256, -8
  %2775 = add i64 %3273, 8
  store i64 %2775, i64* %PC, align 8
  %2776 = inttoptr i64 %2774 to i32*
  %2777 = load i32, i32* %2776, align 4
  %2778 = add i32 %2777, 1
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RAX, align 8, !tbaa !2428
  %2780 = icmp eq i32 %2777, -1
  %2781 = icmp eq i32 %2778, 0
  %2782 = or i1 %2780, %2781
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %13, align 1, !tbaa !2432
  %2784 = and i32 %2778, 255
  %2785 = tail call i32 @llvm.ctpop.i32(i32 %2784) #12
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  store i8 %2788, i8* %20, align 1, !tbaa !2446
  %2789 = xor i32 %2778, %2777
  %2790 = lshr i32 %2789, 4
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  store i8 %2792, i8* %26, align 1, !tbaa !2447
  %2793 = zext i1 %2781 to i8
  store i8 %2793, i8* %29, align 1, !tbaa !2448
  %2794 = lshr i32 %2778, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %32, align 1, !tbaa !2449
  %2796 = lshr i32 %2777, 31
  %2797 = xor i32 %2794, %2796
  %2798 = add nuw nsw i32 %2797, %2794
  %2799 = icmp eq i32 %2798, 2
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %38, align 1, !tbaa !2450
  %2801 = add i64 %3273, 14
  store i64 %2801, i64* %PC, align 8
  store i32 %2778, i32* %2776, align 4
  %2802 = load i64, i64* %PC, align 8
  %2803 = add i64 %2802, -88
  store i64 %2803, i64* %PC, align 8, !tbaa !2428
  br label %block_400e01

block_400a46:                                     ; preds = %block_400a3c
  %2804 = add i64 %2938, -8
  %2805 = add i64 %2966, 7
  store i64 %2805, i64* %PC, align 8
  %2806 = inttoptr i64 %2804 to i32*
  store i32 0, i32* %2806, align 4
  %.pre223 = load i64, i64* %PC, align 8
  br label %block_400a4d

block_400c42:                                     ; preds = %block_400c38
  %2807 = add i64 %3086, -4
  %2808 = add i64 %3114, 3
  store i64 %2808, i64* %PC, align 8
  %2809 = inttoptr i64 %2807 to i32*
  %2810 = load i32, i32* %2809, align 4
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RAX, align 8, !tbaa !2428
  %2812 = add i64 %3086, -8
  %2813 = add i64 %3114, 6
  store i64 %2813, i64* %PC, align 8
  %2814 = inttoptr i64 %2812 to i32*
  %2815 = load i32, i32* %2814, align 4
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RCX, align 8, !tbaa !2428
  %2817 = add i64 %3114, 9
  store i64 %2817, i64* %PC, align 8
  %2818 = load i32, i32* %3089, align 4
  %2819 = shl i32 %2818, 3
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RDX, align 8, !tbaa !2428
  %2821 = add i32 %2819, %2815
  %2822 = shl i32 %2821, 3
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RCX, align 8, !tbaa !2428
  %2824 = load i64, i64* %RAX, align 8
  %2825 = trunc i64 %2824 to i32
  %2826 = add i32 %2822, %2825
  %2827 = zext i32 %2826 to i64
  store i64 %2827, i64* %RAX, align 8, !tbaa !2428
  %2828 = icmp ult i32 %2826, %2825
  %2829 = icmp ult i32 %2826, %2822
  %2830 = or i1 %2828, %2829
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %13, align 1, !tbaa !2432
  %2832 = and i32 %2826, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832) #12
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %20, align 1, !tbaa !2446
  %2837 = xor i64 %2823, %2824
  %2838 = trunc i64 %2837 to i32
  %2839 = xor i32 %2838, %2826
  %2840 = lshr i32 %2839, 4
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  store i8 %2842, i8* %26, align 1, !tbaa !2447
  %2843 = icmp eq i32 %2826, 0
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %29, align 1, !tbaa !2448
  %2845 = lshr i32 %2826, 31
  %2846 = trunc i32 %2845 to i8
  store i8 %2846, i8* %32, align 1, !tbaa !2449
  %2847 = lshr i32 %2825, 31
  %2848 = lshr i32 %2821, 28
  %2849 = and i32 %2848, 1
  %2850 = xor i32 %2845, %2847
  %2851 = xor i32 %2845, %2849
  %2852 = add nuw nsw i32 %2850, %2851
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %38, align 1, !tbaa !2450
  %2855 = sext i32 %2826 to i64
  store i64 %2855, i64* %RSI, align 8, !tbaa !2428
  %2856 = shl nsw i64 %2855, 2
  %2857 = add i64 %2856, add (i64 ptrtoint (%p_type* @p to i64), i64 8192)
  %2858 = add i64 %3114, 33
  store i64 %2858, i64* %PC, align 8
  %2859 = inttoptr i64 %2857 to i32*
  store i32 1, i32* %2859, align 4
  %2860 = load i64, i64* %RBP, align 8
  %2861 = add i64 %2860, -12
  %2862 = load i64, i64* %PC, align 8
  %2863 = add i64 %2862, 3
  store i64 %2863, i64* %PC, align 8
  %2864 = inttoptr i64 %2861 to i32*
  %2865 = load i32, i32* %2864, align 4
  %2866 = add i32 %2865, 1
  %2867 = zext i32 %2866 to i64
  store i64 %2867, i64* %RAX, align 8, !tbaa !2428
  %2868 = icmp eq i32 %2865, -1
  %2869 = icmp eq i32 %2866, 0
  %2870 = or i1 %2868, %2869
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %13, align 1, !tbaa !2432
  %2872 = and i32 %2866, 255
  %2873 = tail call i32 @llvm.ctpop.i32(i32 %2872) #12
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  %2876 = xor i8 %2875, 1
  store i8 %2876, i8* %20, align 1, !tbaa !2446
  %2877 = xor i32 %2866, %2865
  %2878 = lshr i32 %2877, 4
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  store i8 %2880, i8* %26, align 1, !tbaa !2447
  %2881 = zext i1 %2869 to i8
  store i8 %2881, i8* %29, align 1, !tbaa !2448
  %2882 = lshr i32 %2866, 31
  %2883 = trunc i32 %2882 to i8
  store i8 %2883, i8* %32, align 1, !tbaa !2449
  %2884 = lshr i32 %2865, 31
  %2885 = xor i32 %2882, %2884
  %2886 = add nuw nsw i32 %2885, %2882
  %2887 = icmp eq i32 %2886, 2
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %38, align 1, !tbaa !2450
  %2889 = add i64 %2862, 9
  store i64 %2889, i64* %PC, align 8
  store i32 %2866, i32* %2864, align 4
  %2890 = load i64, i64* %PC, align 8
  %2891 = add i64 %2890, -52
  store i64 %2891, i64* %PC, align 8, !tbaa !2428
  br label %block_400c38

block_400cbe:                                     ; preds = %block_400cb4
  %2892 = add i64 %1751, -8
  %2893 = add i64 %1768, 7
  store i64 %2893, i64* %PC, align 8
  %2894 = inttoptr i64 %2892 to i32*
  store i32 0, i32* %2894, align 4
  %.pre235 = load i64, i64* %PC, align 8
  br label %block_400cc5

block_40088c:                                     ; preds = %block_40087f
  %2895 = add i64 %2414, 4
  store i64 %2895, i64* %PC, align 8
  %2896 = load i32, i32* %2388, align 4
  %2897 = sext i32 %2896 to i64
  store i64 %2897, i64* %RAX, align 8, !tbaa !2428
  %2898 = shl nsw i64 %2897, 2
  %2899 = add i64 %2898, ptrtoint (%puzzl_type* @puzzl to i64)
  %2900 = add i64 %2414, 15
  store i64 %2900, i64* %PC, align 8
  %2901 = inttoptr i64 %2899 to i32*
  store i32 1, i32* %2901, align 4
  %2902 = load i64, i64* %RBP, align 8
  %2903 = add i64 %2902, -16
  %2904 = load i64, i64* %PC, align 8
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC, align 8
  %2906 = inttoptr i64 %2903 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = add i32 %2907, 1
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RAX, align 8, !tbaa !2428
  %2910 = icmp eq i32 %2907, -1
  %2911 = icmp eq i32 %2908, 0
  %2912 = or i1 %2910, %2911
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %13, align 1, !tbaa !2432
  %2914 = and i32 %2908, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914) #12
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %20, align 1, !tbaa !2446
  %2919 = xor i32 %2908, %2907
  %2920 = lshr i32 %2919, 4
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %26, align 1, !tbaa !2447
  %2923 = zext i1 %2911 to i8
  store i8 %2923, i8* %29, align 1, !tbaa !2448
  %2924 = lshr i32 %2908, 31
  %2925 = trunc i32 %2924 to i8
  store i8 %2925, i8* %32, align 1, !tbaa !2449
  %2926 = lshr i32 %2907, 31
  %2927 = xor i32 %2924, %2926
  %2928 = add nuw nsw i32 %2927, %2924
  %2929 = icmp eq i32 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %38, align 1, !tbaa !2450
  %2931 = add i64 %2904, 9
  store i64 %2931, i64* %PC, align 8
  store i32 %2908, i32* %2906, align 4
  %2932 = load i64, i64* %PC, align 8
  %2933 = add i64 %2932, -37
  store i64 %2933, i64* %PC, align 8, !tbaa !2428
  br label %block_40087f

block_400fd4:                                     ; preds = %block_400fca
  %2934 = add i64 %152, -8
  %2935 = add i64 %180, 7
  store i64 %2935, i64* %PC, align 8
  %2936 = inttoptr i64 %2934 to i32*
  store i32 0, i32* %2936, align 4
  %.pre250 = load i64, i64* %PC, align 8
  br label %block_400fdb

block_400a3c:                                     ; preds = %block_400a1f, %block_400aaa
  %2937 = phi i64 [ %.pre222, %block_400a1f ], [ %1859, %block_400aaa ]
  %2938 = load i64, i64* %RBP, align 8
  %2939 = add i64 %2938, -4
  %2940 = add i64 %2937, 4
  store i64 %2940, i64* %PC, align 8
  %2941 = inttoptr i64 %2939 to i32*
  %2942 = load i32, i32* %2941, align 4
  %2943 = add i32 %2942, -1
  %2944 = icmp eq i32 %2942, 0
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %13, align 1, !tbaa !2432
  %2946 = and i32 %2943, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946) #12
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %20, align 1, !tbaa !2446
  %2951 = xor i32 %2943, %2942
  %2952 = lshr i32 %2951, 4
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  store i8 %2954, i8* %26, align 1, !tbaa !2447
  %2955 = icmp eq i32 %2943, 0
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %29, align 1, !tbaa !2448
  %2957 = lshr i32 %2943, 31
  %2958 = trunc i32 %2957 to i8
  store i8 %2958, i8* %32, align 1, !tbaa !2449
  %2959 = lshr i32 %2942, 31
  %2960 = xor i32 %2957, %2959
  %2961 = add nuw nsw i32 %2960, %2959
  %2962 = icmp eq i32 %2961, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %38, align 1, !tbaa !2450
  %2964 = icmp ne i8 %2958, 0
  %2965 = xor i1 %2964, %2962
  %.demorgan272 = or i1 %2955, %2965
  %.v322 = select i1 %.demorgan272, i64 10, i64 129
  %2966 = add i64 %2937, %.v322
  store i64 %2966, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan272, label %block_400a46, label %block_400abd

block_400e5e:                                     ; preds = %block_400e01
  %2967 = add i64 %3569, -4
  %2968 = add i64 %3597, 8
  store i64 %2968, i64* %PC, align 8
  %2969 = inttoptr i64 %2967 to i32*
  %2970 = load i32, i32* %2969, align 4
  %2971 = add i32 %2970, 1
  %2972 = zext i32 %2971 to i64
  store i64 %2972, i64* %RAX, align 8, !tbaa !2428
  %2973 = icmp eq i32 %2970, -1
  %2974 = icmp eq i32 %2971, 0
  %2975 = or i1 %2973, %2974
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %13, align 1, !tbaa !2432
  %2977 = and i32 %2971, 255
  %2978 = tail call i32 @llvm.ctpop.i32(i32 %2977) #12
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  store i8 %2981, i8* %20, align 1, !tbaa !2446
  %2982 = xor i32 %2971, %2970
  %2983 = lshr i32 %2982, 4
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  store i8 %2985, i8* %26, align 1, !tbaa !2447
  %2986 = zext i1 %2974 to i8
  store i8 %2986, i8* %29, align 1, !tbaa !2448
  %2987 = lshr i32 %2971, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %32, align 1, !tbaa !2449
  %2989 = lshr i32 %2970, 31
  %2990 = xor i32 %2987, %2989
  %2991 = add nuw nsw i32 %2990, %2987
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %38, align 1, !tbaa !2450
  %2994 = add i64 %3597, 14
  store i64 %2994, i64* %PC, align 8
  store i32 %2971, i32* %2969, align 4
  %2995 = load i64, i64* %PC, align 8
  %2996 = add i64 %2995, -124
  store i64 %2996, i64* %PC, align 8, !tbaa !2428
  br label %block_400df0

block_400c31:                                     ; preds = %block_400c27
  %2997 = add i64 %3003, -12
  %2998 = add i64 %3020, 7
  store i64 %2998, i64* %PC, align 8
  %2999 = inttoptr i64 %2997 to i32*
  store i32 0, i32* %2999, align 4
  %.pre233 = load i64, i64* %PC, align 8
  br label %block_400c38

block_40122d:                                     ; preds = %block_401218
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 22), i64* %RDI, align 8, !tbaa !2428
  %3000 = add i64 %3223, 12
  store i64 %3000, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3001 = add i64 %3223, -3597
  br label %block_401270.sink.split

block_400c27:                                     ; preds = %block_400c20, %block_400c71
  %3002 = phi i64 [ %.pre232, %block_400c20 ], [ %1922, %block_400c71 ]
  %3003 = load i64, i64* %RBP, align 8
  %3004 = add i64 %3003, -8
  %3005 = add i64 %3002, 4
  store i64 %3005, i64* %PC, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3008 = and i32 %3007, 255
  %3009 = tail call i32 @llvm.ctpop.i32(i32 %3008) #12
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  %3012 = xor i8 %3011, 1
  store i8 %3012, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3013 = icmp eq i32 %3007, 0
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %29, align 1, !tbaa !2448
  %3015 = lshr i32 %3007, 31
  %3016 = trunc i32 %3015 to i8
  store i8 %3016, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3017 = xor i1 %3013, true
  %3018 = icmp eq i8 %3016, 0
  %3019 = and i1 %3018, %3017
  %.v287 = select i1 %3019, i64 93, i64 10
  %3020 = add i64 %3002, %.v287
  store i64 %3020, i64* %PC, align 8, !tbaa !2428
  br i1 %3019, label %block_400c84, label %block_400c31

block_401025:                                     ; preds = %block_400fec
  %3021 = add i64 %121, -8
  %3022 = add i64 %149, 8
  store i64 %3022, i64* %PC, align 8
  %3023 = inttoptr i64 %3021 to i32*
  %3024 = load i32, i32* %3023, align 4
  %3025 = add i32 %3024, 1
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RAX, align 8, !tbaa !2428
  %3027 = icmp eq i32 %3024, -1
  %3028 = icmp eq i32 %3025, 0
  %3029 = or i1 %3027, %3028
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %13, align 1, !tbaa !2432
  %3031 = and i32 %3025, 255
  %3032 = tail call i32 @llvm.ctpop.i32(i32 %3031) #12
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = xor i8 %3034, 1
  store i8 %3035, i8* %20, align 1, !tbaa !2446
  %3036 = xor i32 %3025, %3024
  %3037 = lshr i32 %3036, 4
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  store i8 %3039, i8* %26, align 1, !tbaa !2447
  %3040 = zext i1 %3028 to i8
  store i8 %3040, i8* %29, align 1, !tbaa !2448
  %3041 = lshr i32 %3025, 31
  %3042 = trunc i32 %3041 to i8
  store i8 %3042, i8* %32, align 1, !tbaa !2449
  %3043 = lshr i32 %3024, 31
  %3044 = xor i32 %3041, %3043
  %3045 = add nuw nsw i32 %3044, %3041
  %3046 = icmp eq i32 %3045, 2
  %3047 = zext i1 %3046 to i8
  store i8 %3047, i8* %38, align 1, !tbaa !2450
  %3048 = add i64 %149, 14
  store i64 %3048, i64* %PC, align 8
  store i32 %3025, i32* %3023, align 4
  %3049 = load i64, i64* %PC, align 8
  %3050 = add i64 %3049, -88
  store i64 %3050, i64* %PC, align 8, !tbaa !2428
  br label %block_400fdb

block_400c97:                                     ; preds = %block_400c16
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 16) to i32*), align 16
  store i32 67, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 16) to i32*), align 16
  %3051 = add i64 %3253, 29
  store i64 %3051, i64* %PC, align 8
  store i32 0, i32* %3228, align 4
  %.pre234 = load i64, i64* %PC, align 8
  br label %block_400cb4

block_400eb0:                                     ; preds = %block_400eba, %block_400ea9
  %3052 = phi i64 [ %1723, %block_400eba ], [ %.pre245, %block_400ea9 ]
  %3053 = load i64, i64* %RBP, align 8
  %3054 = add i64 %3053, -12
  %3055 = add i64 %3052, 4
  store i64 %3055, i64* %PC, align 8
  %3056 = inttoptr i64 %3054 to i32*
  %3057 = load i32, i32* %3056, align 4
  %3058 = add i32 %3057, -2
  %3059 = icmp ult i32 %3057, 2
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %13, align 1, !tbaa !2432
  %3061 = and i32 %3058, 255
  %3062 = tail call i32 @llvm.ctpop.i32(i32 %3061) #12
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = xor i8 %3064, 1
  store i8 %3065, i8* %20, align 1, !tbaa !2446
  %3066 = xor i32 %3058, %3057
  %3067 = lshr i32 %3066, 4
  %3068 = trunc i32 %3067 to i8
  %3069 = and i8 %3068, 1
  store i8 %3069, i8* %26, align 1, !tbaa !2447
  %3070 = icmp eq i32 %3058, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %29, align 1, !tbaa !2448
  %3072 = lshr i32 %3058, 31
  %3073 = trunc i32 %3072 to i8
  store i8 %3073, i8* %32, align 1, !tbaa !2449
  %3074 = lshr i32 %3057, 31
  %3075 = xor i32 %3072, %3074
  %3076 = add nuw nsw i32 %3075, %3074
  %3077 = icmp eq i32 %3076, 2
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %38, align 1, !tbaa !2450
  %3079 = icmp ne i8 %3073, 0
  %3080 = xor i1 %3079, %3077
  %.demorgan298 = or i1 %3070, %3080
  %.v299 = select i1 %.demorgan298, i64 10, i64 57
  %3081 = add i64 %3052, %.v299
  store i64 %3081, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan298, label %block_400eba, label %block_400ee9

block_400c20:                                     ; preds = %block_400c16
  %3082 = add i64 %3225, -8
  %3083 = add i64 %3253, 7
  store i64 %3083, i64* %PC, align 8
  %3084 = inttoptr i64 %3082 to i32*
  store i32 0, i32* %3084, align 4
  %.pre232 = load i64, i64* %PC, align 8
  br label %block_400c27

block_400c38:                                     ; preds = %block_400c31, %block_400c42
  %3085 = phi i64 [ %.pre233, %block_400c31 ], [ %2891, %block_400c42 ]
  %3086 = load i64, i64* %RBP, align 8
  %3087 = add i64 %3086, -12
  %3088 = add i64 %3085, 4
  store i64 %3088, i64* %PC, align 8
  %3089 = inttoptr i64 %3087 to i32*
  %3090 = load i32, i32* %3089, align 4
  %3091 = add i32 %3090, -1
  %3092 = icmp eq i32 %3090, 0
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %13, align 1, !tbaa !2432
  %3094 = and i32 %3091, 255
  %3095 = tail call i32 @llvm.ctpop.i32(i32 %3094) #12
  %3096 = trunc i32 %3095 to i8
  %3097 = and i8 %3096, 1
  %3098 = xor i8 %3097, 1
  store i8 %3098, i8* %20, align 1, !tbaa !2446
  %3099 = xor i32 %3091, %3090
  %3100 = lshr i32 %3099, 4
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  store i8 %3102, i8* %26, align 1, !tbaa !2447
  %3103 = icmp eq i32 %3091, 0
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %29, align 1, !tbaa !2448
  %3105 = lshr i32 %3091, 31
  %3106 = trunc i32 %3105 to i8
  store i8 %3106, i8* %32, align 1, !tbaa !2449
  %3107 = lshr i32 %3090, 31
  %3108 = xor i32 %3105, %3107
  %3109 = add nuw nsw i32 %3108, %3107
  %3110 = icmp eq i32 %3109, 2
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %38, align 1, !tbaa !2450
  %3112 = icmp ne i8 %3106, 0
  %3113 = xor i1 %3112, %3110
  %.demorgan285 = or i1 %3103, %3113
  %.v286 = select i1 %.demorgan285, i64 10, i64 57
  %3114 = add i64 %3085, %.v286
  store i64 %3114, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan285, label %block_400c42, label %block_400c71

block_400a1f:                                     ; preds = %block_40099e
  store i32 0, i32* bitcast (%class_type* @class to i32*), align 16
  store i32 11, i32* bitcast (%piecemax_type* @piecemax to i32*), align 16
  %3115 = add i64 %798, 29
  store i64 %3115, i64* %PC, align 8
  store i32 0, i32* %773, align 4
  %.pre222 = load i64, i64* %PC, align 8
  br label %block_400a3c

block_400e1c:                                     ; preds = %block_400e12
  %3116 = add i64 %3256, -4
  %3117 = add i64 %3273, 3
  store i64 %3117, i64* %PC, align 8
  %3118 = inttoptr i64 %3116 to i32*
  %3119 = load i32, i32* %3118, align 4
  %3120 = zext i32 %3119 to i64
  store i64 %3120, i64* %RAX, align 8, !tbaa !2428
  %3121 = add i64 %3256, -8
  %3122 = add i64 %3273, 6
  store i64 %3122, i64* %PC, align 8
  %3123 = inttoptr i64 %3121 to i32*
  %3124 = load i32, i32* %3123, align 4
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RCX, align 8, !tbaa !2428
  %3126 = add i64 %3273, 9
  store i64 %3126, i64* %PC, align 8
  %3127 = load i32, i32* %3259, align 4
  %3128 = shl i32 %3127, 3
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RDX, align 8, !tbaa !2428
  %3130 = add i32 %3128, %3124
  %3131 = shl i32 %3130, 3
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RCX, align 8, !tbaa !2428
  %3133 = load i64, i64* %RAX, align 8
  %3134 = trunc i64 %3133 to i32
  %3135 = add i32 %3131, %3134
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RAX, align 8, !tbaa !2428
  %3137 = icmp ult i32 %3135, %3134
  %3138 = icmp ult i32 %3135, %3131
  %3139 = or i1 %3137, %3138
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %13, align 1, !tbaa !2432
  %3141 = and i32 %3135, 255
  %3142 = tail call i32 @llvm.ctpop.i32(i32 %3141) #12
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  store i8 %3145, i8* %20, align 1, !tbaa !2446
  %3146 = xor i64 %3132, %3133
  %3147 = trunc i64 %3146 to i32
  %3148 = xor i32 %3147, %3135
  %3149 = lshr i32 %3148, 4
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  store i8 %3151, i8* %26, align 1, !tbaa !2447
  %3152 = icmp eq i32 %3135, 0
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %29, align 1, !tbaa !2448
  %3154 = lshr i32 %3135, 31
  %3155 = trunc i32 %3154 to i8
  store i8 %3155, i8* %32, align 1, !tbaa !2449
  %3156 = lshr i32 %3134, 31
  %3157 = lshr i32 %3130, 28
  %3158 = and i32 %3157, 1
  %3159 = xor i32 %3154, %3156
  %3160 = xor i32 %3154, %3158
  %3161 = add nuw nsw i32 %3159, %3160
  %3162 = icmp eq i32 %3161, 2
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %38, align 1, !tbaa !2450
  %3164 = sext i32 %3135 to i64
  store i64 %3164, i64* %RSI, align 8, !tbaa !2428
  %3165 = shl nsw i64 %3164, 2
  %3166 = add i64 %3165, add (i64 ptrtoint (%p_type* @p to i64), i64 14336)
  %3167 = add i64 %3273, 33
  store i64 %3167, i64* %PC, align 8
  %3168 = inttoptr i64 %3166 to i32*
  store i32 1, i32* %3168, align 4
  %3169 = load i64, i64* %RBP, align 8
  %3170 = add i64 %3169, -12
  %3171 = load i64, i64* %PC, align 8
  %3172 = add i64 %3171, 3
  store i64 %3172, i64* %PC, align 8
  %3173 = inttoptr i64 %3170 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = add i32 %3174, 1
  %3176 = zext i32 %3175 to i64
  store i64 %3176, i64* %RAX, align 8, !tbaa !2428
  %3177 = icmp eq i32 %3174, -1
  %3178 = icmp eq i32 %3175, 0
  %3179 = or i1 %3177, %3178
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %13, align 1, !tbaa !2432
  %3181 = and i32 %3175, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181) #12
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %20, align 1, !tbaa !2446
  %3186 = xor i32 %3175, %3174
  %3187 = lshr i32 %3186, 4
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  store i8 %3189, i8* %26, align 1, !tbaa !2447
  %3190 = zext i1 %3178 to i8
  store i8 %3190, i8* %29, align 1, !tbaa !2448
  %3191 = lshr i32 %3175, 31
  %3192 = trunc i32 %3191 to i8
  store i8 %3192, i8* %32, align 1, !tbaa !2449
  %3193 = lshr i32 %3174, 31
  %3194 = xor i32 %3191, %3193
  %3195 = add nuw nsw i32 %3194, %3191
  %3196 = icmp eq i32 %3195, 2
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %38, align 1, !tbaa !2450
  %3198 = add i64 %3171, 9
  store i64 %3198, i64* %PC, align 8
  store i32 %3175, i32* %3173, align 4
  %3199 = load i64, i64* %PC, align 8
  %3200 = add i64 %3199, -52
  store i64 %3200, i64* %PC, align 8, !tbaa !2428
  br label %block_400e12

block_401218:                                     ; preds = %block_401204, %block_4011ee
  %3201 = phi i32 [ %.pre259, %block_401204 ], [ %57, %block_4011ee ]
  %3202 = phi i64 [ %.pre258, %block_401204 ], [ %59, %block_4011ee ]
  %MEMORY.42 = phi %struct.Memory* [ %3531, %block_401204 ], [ %56, %block_4011ee ]
  %3203 = zext i32 %3201 to i64
  store i64 %3203, i64* %RDI, align 8, !tbaa !2428
  %3204 = add i64 %3202, -2680
  %3205 = add i64 %3202, 12
  %3206 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3207 = add i64 %3206, -8
  %3208 = inttoptr i64 %3207 to i64*
  store i64 %3205, i64* %3208, align 8
  store i64 %3207, i64* %RSP, align 8, !tbaa !2428
  store i64 %3204, i64* %PC, align 8, !tbaa !2428
  %3209 = tail call %struct.Memory* @sub_4007a0_Trial_renamed_(%struct.State* nonnull %0, i64 %3204, %struct.Memory* %MEMORY.42)
  %3210 = load i32, i32* %EAX, align 4
  %3211 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3212 = and i32 %3210, 255
  %3213 = tail call i32 @llvm.ctpop.i32(i32 %3212) #12
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  store i8 %3216, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3217 = icmp eq i32 %3210, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %29, align 1, !tbaa !2448
  %3219 = lshr i32 %3210, 31
  %3220 = trunc i32 %3219 to i8
  store i8 %3220, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3221 = add i64 %3211, 34
  %3222 = add i64 %3211, 9
  %3223 = select i1 %3217, i64 %3222, i64 %3221
  store i64 %3223, i64* %PC, align 8, !tbaa !2428
  br i1 %3217, label %block_40122d, label %block_401246

block_400c16:                                     ; preds = %block_400bf9, %block_400c84
  %3224 = phi i64 [ %.pre231, %block_400bf9 ], [ %2216, %block_400c84 ]
  %3225 = load i64, i64* %RBP, align 8
  %3226 = add i64 %3225, -4
  %3227 = add i64 %3224, 4
  store i64 %3227, i64* %PC, align 8
  %3228 = inttoptr i64 %3226 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = add i32 %3229, -3
  %3231 = icmp ult i32 %3229, 3
  %3232 = zext i1 %3231 to i8
  store i8 %3232, i8* %13, align 1, !tbaa !2432
  %3233 = and i32 %3230, 255
  %3234 = tail call i32 @llvm.ctpop.i32(i32 %3233) #12
  %3235 = trunc i32 %3234 to i8
  %3236 = and i8 %3235, 1
  %3237 = xor i8 %3236, 1
  store i8 %3237, i8* %20, align 1, !tbaa !2446
  %3238 = xor i32 %3230, %3229
  %3239 = lshr i32 %3238, 4
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  store i8 %3241, i8* %26, align 1, !tbaa !2447
  %3242 = icmp eq i32 %3230, 0
  %3243 = zext i1 %3242 to i8
  store i8 %3243, i8* %29, align 1, !tbaa !2448
  %3244 = lshr i32 %3230, 31
  %3245 = trunc i32 %3244 to i8
  store i8 %3245, i8* %32, align 1, !tbaa !2449
  %3246 = lshr i32 %3229, 31
  %3247 = xor i32 %3244, %3246
  %3248 = add nuw nsw i32 %3247, %3246
  %3249 = icmp eq i32 %3248, 2
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %38, align 1, !tbaa !2450
  %3251 = icmp ne i8 %3245, 0
  %3252 = xor i1 %3251, %3249
  %.demorgan284 = or i1 %3242, %3252
  %.v325 = select i1 %.demorgan284, i64 10, i64 129
  %3253 = add i64 %3224, %.v325
  store i64 %3253, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan284, label %block_400c20, label %block_400c97

block_400bf9:                                     ; preds = %block_400b78
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 12) to i32*), align 4
  store i32 25, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 12) to i32*), align 4
  %3254 = add i64 %1091, 29
  store i64 %3254, i64* %PC, align 8
  store i32 0, i32* %1066, align 4
  %.pre231 = load i64, i64* %PC, align 8
  br label %block_400c16

block_400e12:                                     ; preds = %block_400e0b, %block_400e1c
  %3255 = phi i64 [ %.pre242, %block_400e0b ], [ %3200, %block_400e1c ]
  %3256 = load i64, i64* %RBP, align 8
  %3257 = add i64 %3256, -12
  %3258 = add i64 %3255, 4
  store i64 %3258, i64* %PC, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3261 = and i32 %3260, 255
  %3262 = tail call i32 @llvm.ctpop.i32(i32 %3261) #12
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  store i8 %3265, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3266 = icmp eq i32 %3260, 0
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %29, align 1, !tbaa !2448
  %3268 = lshr i32 %3260, 31
  %3269 = trunc i32 %3268 to i8
  store i8 %3269, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3270 = xor i1 %3266, true
  %3271 = icmp eq i8 %3269, 0
  %3272 = and i1 %3271, %3270
  %.v296 = select i1 %3272, i64 57, i64 10
  %3273 = add i64 %3255, %.v296
  store i64 %3273, i64* %PC, align 8, !tbaa !2428
  br i1 %3272, label %block_400e4b, label %block_400e1c

block_401079:                                     ; preds = %block_401072, %block_4010c3
  %3274 = phi i64 [ %.pre253, %block_401072 ], [ %1607, %block_4010c3 ]
  %3275 = load i64, i64* %RBP, align 8
  %3276 = add i64 %3275, -8
  %3277 = add i64 %3274, 4
  store i64 %3277, i64* %PC, align 8
  %3278 = inttoptr i64 %3276 to i32*
  %3279 = load i32, i32* %3278, align 4
  %3280 = add i32 %3279, -1
  %3281 = icmp eq i32 %3279, 0
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %13, align 1, !tbaa !2432
  %3283 = and i32 %3280, 255
  %3284 = tail call i32 @llvm.ctpop.i32(i32 %3283) #12
  %3285 = trunc i32 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = xor i8 %3286, 1
  store i8 %3287, i8* %20, align 1, !tbaa !2446
  %3288 = xor i32 %3280, %3279
  %3289 = lshr i32 %3288, 4
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  store i8 %3291, i8* %26, align 1, !tbaa !2447
  %3292 = icmp eq i32 %3280, 0
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %29, align 1, !tbaa !2448
  %3294 = lshr i32 %3280, 31
  %3295 = trunc i32 %3294 to i8
  store i8 %3295, i8* %32, align 1, !tbaa !2449
  %3296 = lshr i32 %3279, 31
  %3297 = xor i32 %3294, %3296
  %3298 = add nuw nsw i32 %3297, %3296
  %3299 = icmp eq i32 %3298, 2
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %38, align 1, !tbaa !2450
  %3301 = icmp ne i8 %3295, 0
  %3302 = xor i1 %3301, %3299
  %.demorgan309 = or i1 %3292, %3302
  %.v312 = select i1 %.demorgan309, i64 10, i64 93
  %3303 = add i64 %3274, %.v312
  store i64 %3303, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan309, label %block_401083, label %block_4010d6

block_400dad:                                     ; preds = %block_400d74
  %3304 = add i64 %1729, -8
  %3305 = add i64 %1746, 8
  store i64 %3305, i64* %PC, align 8
  %3306 = inttoptr i64 %3304 to i32*
  %3307 = load i32, i32* %3306, align 4
  %3308 = add i32 %3307, 1
  %3309 = zext i32 %3308 to i64
  store i64 %3309, i64* %RAX, align 8, !tbaa !2428
  %3310 = icmp eq i32 %3307, -1
  %3311 = icmp eq i32 %3308, 0
  %3312 = or i1 %3310, %3311
  %3313 = zext i1 %3312 to i8
  store i8 %3313, i8* %13, align 1, !tbaa !2432
  %3314 = and i32 %3308, 255
  %3315 = tail call i32 @llvm.ctpop.i32(i32 %3314) #12
  %3316 = trunc i32 %3315 to i8
  %3317 = and i8 %3316, 1
  %3318 = xor i8 %3317, 1
  store i8 %3318, i8* %20, align 1, !tbaa !2446
  %3319 = xor i32 %3308, %3307
  %3320 = lshr i32 %3319, 4
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  store i8 %3322, i8* %26, align 1, !tbaa !2447
  %3323 = zext i1 %3311 to i8
  store i8 %3323, i8* %29, align 1, !tbaa !2448
  %3324 = lshr i32 %3308, 31
  %3325 = trunc i32 %3324 to i8
  store i8 %3325, i8* %32, align 1, !tbaa !2449
  %3326 = lshr i32 %3307, 31
  %3327 = xor i32 %3324, %3326
  %3328 = add nuw nsw i32 %3327, %3324
  %3329 = icmp eq i32 %3328, 2
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %38, align 1, !tbaa !2450
  %3331 = add i64 %1746, 14
  store i64 %3331, i64* %PC, align 8
  store i32 %3308, i32* %3306, align 4
  %3332 = load i64, i64* %PC, align 8
  %3333 = add i64 %3332, -88
  store i64 %3333, i64* %PC, align 8, !tbaa !2428
  br label %block_400d63

block_401270.sink.split:                          ; preds = %block_40122d, %block_401257
  %.sink119 = phi i64 [ %3222, %block_40122d ], [ %654, %block_401257 ]
  %.sink112 = phi i64 [ %3001, %block_40122d ], [ %2721, %block_401257 ]
  %.sink111 = phi i64 [ -24, %block_40122d ], [ -28, %block_401257 ]
  %.sink5.ph = phi i64 [ 47, %block_40122d ], [ 5, %block_401257 ]
  %3334 = add i64 %.sink119, 17
  %3335 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3336 = add i64 %3335, -8
  %3337 = inttoptr i64 %3336 to i64*
  store i64 %3334, i64* %3337, align 8
  store i64 %3336, i64* %RSP, align 8, !tbaa !2428
  store i64 %.sink112, i64* %PC, align 8, !tbaa !2428
  %3338 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3209)
  %3339 = load i64, i64* %RBP, align 8
  %3340 = add i64 %3339, %.sink111
  %.sink = load i32, i32* %EAX, align 4
  %3341 = load i64, i64* %PC, align 8
  %3342 = add i64 %3341, 3
  store i64 %3342, i64* %PC, align 8
  %3343 = inttoptr i64 %3340 to i32*
  store i32 %.sink, i32* %3343, align 4
  %.pre260 = load i64, i64* %PC, align 8
  br label %block_401270

block_401270:                                     ; preds = %block_401270.sink.split, %block_401246
  %3344 = phi i64 [ %654, %block_401246 ], [ %.pre260, %block_401270.sink.split ]
  %.sink5 = phi i64 [ 5, %block_401246 ], [ %.sink5.ph, %block_401270.sink.split ]
  %MEMORY.46 = phi %struct.Memory* [ %3209, %block_401246 ], [ %3338, %block_401270.sink.split ]
  %3345 = add i64 %3344, %.sink5
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %3346 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3348 = add i64 %3345, -3664
  %3349 = add i64 %3345, 24
  %3350 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3351 = add i64 %3350, -8
  %3352 = inttoptr i64 %3351 to i64*
  store i64 %3349, i64* %3352, align 8
  store i64 %3351, i64* %RSP, align 8, !tbaa !2428
  store i64 %3348, i64* %PC, align 8, !tbaa !2428
  %3353 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.46)
  %3354 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %3355 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %3356 = zext i32 %3355 to i64
  store i64 %3356, i64* %RSI, align 8, !tbaa !2428
  %3357 = load i64, i64* %RBP, align 8
  %3358 = add i64 %3357, -32
  %3359 = load i32, i32* %EAX, align 4
  %3360 = add i64 %3354, 20
  store i64 %3360, i64* %PC, align 8
  %3361 = inttoptr i64 %3358 to i32*
  store i32 %3359, i32* %3361, align 4
  %3362 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3363 = add i64 %3362, -3708
  %3364 = add i64 %3362, 7
  %3365 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3366 = add i64 %3365, -8
  %3367 = inttoptr i64 %3366 to i64*
  store i64 %3364, i64* %3367, align 8
  store i64 %3366, i64* %RSP, align 8, !tbaa !2428
  store i64 %3363, i64* %PC, align 8, !tbaa !2428
  %3368 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3353)
  %3369 = load i64, i64* %RBP, align 8
  %3370 = add i64 %3369, -36
  %3371 = load i32, i32* %EAX, align 4
  %3372 = load i64, i64* %PC, align 8
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %PC, align 8
  %3374 = inttoptr i64 %3370 to i32*
  store i32 %3371, i32* %3374, align 4
  %3375 = load i64, i64* %RSP, align 8
  %3376 = load i64, i64* %PC, align 8
  %3377 = add i64 %3375, 48
  store i64 %3377, i64* %RSP, align 8, !tbaa !2428
  %3378 = icmp ugt i64 %3375, -49
  %3379 = zext i1 %3378 to i8
  store i8 %3379, i8* %13, align 1, !tbaa !2432
  %3380 = trunc i64 %3377 to i32
  %3381 = and i32 %3380, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381) #12
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %20, align 1, !tbaa !2446
  %3386 = xor i64 %3375, 16
  %3387 = xor i64 %3386, %3377
  %3388 = lshr i64 %3387, 4
  %3389 = trunc i64 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1, !tbaa !2447
  %3391 = icmp eq i64 %3377, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1, !tbaa !2448
  %3393 = lshr i64 %3377, 63
  %3394 = trunc i64 %3393 to i8
  store i8 %3394, i8* %32, align 1, !tbaa !2449
  %3395 = lshr i64 %3375, 63
  %3396 = xor i64 %3393, %3395
  %3397 = add nuw nsw i64 %3396, %3393
  %3398 = icmp eq i64 %3397, 2
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %38, align 1, !tbaa !2450
  %3400 = add i64 %3376, 5
  store i64 %3400, i64* %PC, align 8
  %3401 = add i64 %3375, 56
  %3402 = inttoptr i64 %3377 to i64*
  %3403 = load i64, i64* %3402, align 8
  store i64 %3403, i64* %RBP, align 8, !tbaa !2428
  store i64 %3401, i64* %RSP, align 8, !tbaa !2428
  %3404 = add i64 %3376, 6
  store i64 %3404, i64* %PC, align 8
  %3405 = inttoptr i64 %3401 to i64*
  %3406 = load i64, i64* %3405, align 8
  store i64 %3406, i64* %PC, align 8, !tbaa !2428
  %3407 = add i64 %3375, 64
  store i64 %3407, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %3368

block_400a0c:                                     ; preds = %block_4009af
  %3408 = add i64 %686, -4
  %3409 = add i64 %714, 8
  store i64 %3409, i64* %PC, align 8
  %3410 = inttoptr i64 %3408 to i32*
  %3411 = load i32, i32* %3410, align 4
  %3412 = add i32 %3411, 1
  %3413 = zext i32 %3412 to i64
  store i64 %3413, i64* %RAX, align 8, !tbaa !2428
  %3414 = icmp eq i32 %3411, -1
  %3415 = icmp eq i32 %3412, 0
  %3416 = or i1 %3414, %3415
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %13, align 1, !tbaa !2432
  %3418 = and i32 %3412, 255
  %3419 = tail call i32 @llvm.ctpop.i32(i32 %3418) #12
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = xor i8 %3421, 1
  store i8 %3422, i8* %20, align 1, !tbaa !2446
  %3423 = xor i32 %3412, %3411
  %3424 = lshr i32 %3423, 4
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  store i8 %3426, i8* %26, align 1, !tbaa !2447
  %3427 = zext i1 %3415 to i8
  store i8 %3427, i8* %29, align 1, !tbaa !2448
  %3428 = lshr i32 %3412, 31
  %3429 = trunc i32 %3428 to i8
  store i8 %3429, i8* %32, align 1, !tbaa !2449
  %3430 = lshr i32 %3411, 31
  %3431 = xor i32 %3428, %3430
  %3432 = add nuw nsw i32 %3431, %3428
  %3433 = icmp eq i32 %3432, 2
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %38, align 1, !tbaa !2450
  %3435 = add i64 %714, 14
  store i64 %3435, i64* %PC, align 8
  store i32 %3412, i32* %3410, align 4
  %3436 = load i64, i64* %PC, align 8
  %3437 = add i64 %3436, -124
  store i64 %3437, i64* %PC, align 8, !tbaa !2428
  br label %block_40099e

block_400e0b:                                     ; preds = %block_400e01
  %3438 = add i64 %3569, -12
  %3439 = add i64 %3597, 7
  store i64 %3439, i64* %PC, align 8
  %3440 = inttoptr i64 %3438 to i32*
  store i32 0, i32* %3440, align 4
  %.pre242 = load i64, i64* %PC, align 8
  br label %block_400e12

block_400b06:                                     ; preds = %block_400afc
  %3441 = add i64 %2054, -4
  %3442 = add i64 %2082, 3
  store i64 %3442, i64* %PC, align 8
  %3443 = inttoptr i64 %3441 to i32*
  %3444 = load i32, i32* %3443, align 4
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RAX, align 8, !tbaa !2428
  %3446 = add i64 %2054, -8
  %3447 = add i64 %2082, 6
  store i64 %3447, i64* %PC, align 8
  %3448 = inttoptr i64 %3446 to i32*
  %3449 = load i32, i32* %3448, align 4
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RCX, align 8, !tbaa !2428
  %3451 = add i64 %2082, 9
  store i64 %3451, i64* %PC, align 8
  %3452 = load i32, i32* %2057, align 4
  %3453 = shl i32 %3452, 3
  %3454 = zext i32 %3453 to i64
  store i64 %3454, i64* %RDX, align 8, !tbaa !2428
  %3455 = add i32 %3453, %3449
  %3456 = shl i32 %3455, 3
  %3457 = zext i32 %3456 to i64
  store i64 %3457, i64* %RCX, align 8, !tbaa !2428
  %3458 = load i64, i64* %RAX, align 8
  %3459 = trunc i64 %3458 to i32
  %3460 = add i32 %3456, %3459
  %3461 = zext i32 %3460 to i64
  store i64 %3461, i64* %RAX, align 8, !tbaa !2428
  %3462 = icmp ult i32 %3460, %3459
  %3463 = icmp ult i32 %3460, %3456
  %3464 = or i1 %3462, %3463
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %13, align 1, !tbaa !2432
  %3466 = and i32 %3460, 255
  %3467 = tail call i32 @llvm.ctpop.i32(i32 %3466) #12
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  store i8 %3470, i8* %20, align 1, !tbaa !2446
  %3471 = xor i64 %3457, %3458
  %3472 = trunc i64 %3471 to i32
  %3473 = xor i32 %3472, %3460
  %3474 = lshr i32 %3473, 4
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  store i8 %3476, i8* %26, align 1, !tbaa !2447
  %3477 = icmp eq i32 %3460, 0
  %3478 = zext i1 %3477 to i8
  store i8 %3478, i8* %29, align 1, !tbaa !2448
  %3479 = lshr i32 %3460, 31
  %3480 = trunc i32 %3479 to i8
  store i8 %3480, i8* %32, align 1, !tbaa !2449
  %3481 = lshr i32 %3459, 31
  %3482 = lshr i32 %3455, 28
  %3483 = and i32 %3482, 1
  %3484 = xor i32 %3479, %3481
  %3485 = xor i32 %3479, %3483
  %3486 = add nuw nsw i32 %3484, %3485
  %3487 = icmp eq i32 %3486, 2
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %38, align 1, !tbaa !2450
  %3489 = sext i32 %3460 to i64
  store i64 %3489, i64* %RSI, align 8, !tbaa !2428
  %3490 = shl nsw i64 %3489, 2
  %3491 = add i64 %3490, add (i64 ptrtoint (%p_type* @p to i64), i64 4096)
  %3492 = add i64 %2082, 33
  store i64 %3492, i64* %PC, align 8
  %3493 = inttoptr i64 %3491 to i32*
  store i32 1, i32* %3493, align 4
  %3494 = load i64, i64* %RBP, align 8
  %3495 = add i64 %3494, -12
  %3496 = load i64, i64* %PC, align 8
  %3497 = add i64 %3496, 3
  store i64 %3497, i64* %PC, align 8
  %3498 = inttoptr i64 %3495 to i32*
  %3499 = load i32, i32* %3498, align 4
  %3500 = add i32 %3499, 1
  %3501 = zext i32 %3500 to i64
  store i64 %3501, i64* %RAX, align 8, !tbaa !2428
  %3502 = icmp eq i32 %3499, -1
  %3503 = icmp eq i32 %3500, 0
  %3504 = or i1 %3502, %3503
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %13, align 1, !tbaa !2432
  %3506 = and i32 %3500, 255
  %3507 = tail call i32 @llvm.ctpop.i32(i32 %3506) #12
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  store i8 %3510, i8* %20, align 1, !tbaa !2446
  %3511 = xor i32 %3500, %3499
  %3512 = lshr i32 %3511, 4
  %3513 = trunc i32 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %26, align 1, !tbaa !2447
  %3515 = zext i1 %3503 to i8
  store i8 %3515, i8* %29, align 1, !tbaa !2448
  %3516 = lshr i32 %3500, 31
  %3517 = trunc i32 %3516 to i8
  store i8 %3517, i8* %32, align 1, !tbaa !2449
  %3518 = lshr i32 %3499, 31
  %3519 = xor i32 %3516, %3518
  %3520 = add nuw nsw i32 %3519, %3516
  %3521 = icmp eq i32 %3520, 2
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %38, align 1, !tbaa !2450
  %3523 = add i64 %3496, 9
  store i64 %3523, i64* %PC, align 8
  store i32 %3500, i32* %3498, align 4
  %3524 = load i64, i64* %PC, align 8
  %3525 = add i64 %3524, -52
  store i64 %3525, i64* %PC, align 8, !tbaa !2428
  br label %block_400afc

block_401204:                                     ; preds = %block_401187
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3526 = add i64 %1950, -3556
  %3527 = add i64 %1950, 17
  %3528 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3529 = add i64 %3528, -8
  %3530 = inttoptr i64 %3529 to i64*
  store i64 %3527, i64* %3530, align 8
  store i64 %3529, i64* %RSP, align 8, !tbaa !2428
  store i64 %3526, i64* %PC, align 8, !tbaa !2428
  %3531 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %1938)
  %3532 = load i64, i64* %RBP, align 8
  %3533 = add i64 %3532, -20
  %3534 = load i32, i32* %EAX, align 4
  %3535 = load i64, i64* %PC, align 8
  %3536 = add i64 %3535, 3
  store i64 %3536, i64* %PC, align 8
  %3537 = inttoptr i64 %3533 to i32*
  store i32 %3534, i32* %3537, align 4
  %.pre258 = load i64, i64* %PC, align 8
  %.pre259 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  br label %block_401218

block_400b35:                                     ; preds = %block_400afc
  %3538 = add i64 %2054, -8
  %3539 = add i64 %2082, 8
  store i64 %3539, i64* %PC, align 8
  %3540 = inttoptr i64 %3538 to i32*
  %3541 = load i32, i32* %3540, align 4
  %3542 = add i32 %3541, 1
  %3543 = zext i32 %3542 to i64
  store i64 %3543, i64* %RAX, align 8, !tbaa !2428
  %3544 = icmp eq i32 %3541, -1
  %3545 = icmp eq i32 %3542, 0
  %3546 = or i1 %3544, %3545
  %3547 = zext i1 %3546 to i8
  store i8 %3547, i8* %13, align 1, !tbaa !2432
  %3548 = and i32 %3542, 255
  %3549 = tail call i32 @llvm.ctpop.i32(i32 %3548) #12
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  store i8 %3552, i8* %20, align 1, !tbaa !2446
  %3553 = xor i32 %3542, %3541
  %3554 = lshr i32 %3553, 4
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  store i8 %3556, i8* %26, align 1, !tbaa !2447
  %3557 = zext i1 %3545 to i8
  store i8 %3557, i8* %29, align 1, !tbaa !2448
  %3558 = lshr i32 %3542, 31
  %3559 = trunc i32 %3558 to i8
  store i8 %3559, i8* %32, align 1, !tbaa !2449
  %3560 = lshr i32 %3541, 31
  %3561 = xor i32 %3558, %3560
  %3562 = add nuw nsw i32 %3561, %3558
  %3563 = icmp eq i32 %3562, 2
  %3564 = zext i1 %3563 to i8
  store i8 %3564, i8* %38, align 1, !tbaa !2450
  %3565 = add i64 %2082, 14
  store i64 %3565, i64* %PC, align 8
  store i32 %3542, i32* %3540, align 4
  %3566 = load i64, i64* %PC, align 8
  %3567 = add i64 %3566, -88
  store i64 %3567, i64* %PC, align 8, !tbaa !2428
  br label %block_400aeb

block_400e01:                                     ; preds = %block_400e4b, %block_400dfa
  %3568 = phi i64 [ %2803, %block_400e4b ], [ %.pre241, %block_400dfa ]
  %3569 = load i64, i64* %RBP, align 8
  %3570 = add i64 %3569, -8
  %3571 = add i64 %3568, 4
  store i64 %3571, i64* %PC, align 8
  %3572 = inttoptr i64 %3570 to i32*
  %3573 = load i32, i32* %3572, align 4
  %3574 = add i32 %3573, -2
  %3575 = icmp ult i32 %3573, 2
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %13, align 1, !tbaa !2432
  %3577 = and i32 %3574, 255
  %3578 = tail call i32 @llvm.ctpop.i32(i32 %3577) #12
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = xor i8 %3580, 1
  store i8 %3581, i8* %20, align 1, !tbaa !2446
  %3582 = xor i32 %3574, %3573
  %3583 = lshr i32 %3582, 4
  %3584 = trunc i32 %3583 to i8
  %3585 = and i8 %3584, 1
  store i8 %3585, i8* %26, align 1, !tbaa !2447
  %3586 = icmp eq i32 %3574, 0
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %29, align 1, !tbaa !2448
  %3588 = lshr i32 %3574, 31
  %3589 = trunc i32 %3588 to i8
  store i8 %3589, i8* %32, align 1, !tbaa !2449
  %3590 = lshr i32 %3573, 31
  %3591 = xor i32 %3588, %3590
  %3592 = add nuw nsw i32 %3591, %3590
  %3593 = icmp eq i32 %3592, 2
  %3594 = zext i1 %3593 to i8
  store i8 %3594, i8* %38, align 1, !tbaa !2450
  %3595 = icmp ne i8 %3589, 0
  %3596 = xor i1 %3595, %3593
  %.demorgan295 = or i1 %3586, %3596
  %.v297 = select i1 %.demorgan295, i64 10, i64 93
  %3597 = add i64 %3568, %.v297
  store i64 %3597, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan295, label %block_400e0b, label %block_400e5e

block_4009ca:                                     ; preds = %block_4009c0
  %3598 = add i64 %2366, -4
  %3599 = add i64 %2383, 3
  store i64 %3599, i64* %PC, align 8
  %3600 = inttoptr i64 %3598 to i32*
  %3601 = load i32, i32* %3600, align 4
  %3602 = zext i32 %3601 to i64
  store i64 %3602, i64* %RAX, align 8, !tbaa !2428
  %3603 = add i64 %2366, -8
  %3604 = add i64 %2383, 6
  store i64 %3604, i64* %PC, align 8
  %3605 = inttoptr i64 %3603 to i32*
  %3606 = load i32, i32* %3605, align 4
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RCX, align 8, !tbaa !2428
  %3608 = add i64 %2383, 9
  store i64 %3608, i64* %PC, align 8
  %3609 = load i32, i32* %2369, align 4
  %3610 = shl i32 %3609, 3
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RDX, align 8, !tbaa !2428
  %3612 = add i32 %3610, %3606
  %3613 = shl i32 %3612, 3
  %3614 = zext i32 %3613 to i64
  store i64 %3614, i64* %RCX, align 8, !tbaa !2428
  %3615 = load i64, i64* %RAX, align 8
  %3616 = trunc i64 %3615 to i32
  %3617 = add i32 %3613, %3616
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RAX, align 8, !tbaa !2428
  %3619 = icmp ult i32 %3617, %3616
  %3620 = icmp ult i32 %3617, %3613
  %3621 = or i1 %3619, %3620
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %13, align 1, !tbaa !2432
  %3623 = and i32 %3617, 255
  %3624 = tail call i32 @llvm.ctpop.i32(i32 %3623) #12
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  %3627 = xor i8 %3626, 1
  store i8 %3627, i8* %20, align 1, !tbaa !2446
  %3628 = xor i64 %3614, %3615
  %3629 = trunc i64 %3628 to i32
  %3630 = xor i32 %3629, %3617
  %3631 = lshr i32 %3630, 4
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  store i8 %3633, i8* %26, align 1, !tbaa !2447
  %3634 = icmp eq i32 %3617, 0
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %29, align 1, !tbaa !2448
  %3636 = lshr i32 %3617, 31
  %3637 = trunc i32 %3636 to i8
  store i8 %3637, i8* %32, align 1, !tbaa !2449
  %3638 = lshr i32 %3616, 31
  %3639 = lshr i32 %3612, 28
  %3640 = and i32 %3639, 1
  %3641 = xor i32 %3636, %3638
  %3642 = xor i32 %3636, %3640
  %3643 = add nuw nsw i32 %3641, %3642
  %3644 = icmp eq i32 %3643, 2
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %38, align 1, !tbaa !2450
  %3646 = sext i32 %3617 to i64
  store i64 %3646, i64* %RSI, align 8, !tbaa !2428
  %3647 = shl nsw i64 %3646, 2
  %3648 = add i64 %3647, ptrtoint (%p_type* @p to i64)
  %3649 = add i64 %2383, 33
  store i64 %3649, i64* %PC, align 8
  %3650 = inttoptr i64 %3648 to i32*
  store i32 1, i32* %3650, align 4
  %3651 = load i64, i64* %RBP, align 8
  %3652 = add i64 %3651, -12
  %3653 = load i64, i64* %PC, align 8
  %3654 = add i64 %3653, 3
  store i64 %3654, i64* %PC, align 8
  %3655 = inttoptr i64 %3652 to i32*
  %3656 = load i32, i32* %3655, align 4
  %3657 = add i32 %3656, 1
  %3658 = zext i32 %3657 to i64
  store i64 %3658, i64* %RAX, align 8, !tbaa !2428
  %3659 = icmp eq i32 %3656, -1
  %3660 = icmp eq i32 %3657, 0
  %3661 = or i1 %3659, %3660
  %3662 = zext i1 %3661 to i8
  store i8 %3662, i8* %13, align 1, !tbaa !2432
  %3663 = and i32 %3657, 255
  %3664 = tail call i32 @llvm.ctpop.i32(i32 %3663) #12
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  store i8 %3667, i8* %20, align 1, !tbaa !2446
  %3668 = xor i32 %3657, %3656
  %3669 = lshr i32 %3668, 4
  %3670 = trunc i32 %3669 to i8
  %3671 = and i8 %3670, 1
  store i8 %3671, i8* %26, align 1, !tbaa !2447
  %3672 = zext i1 %3660 to i8
  store i8 %3672, i8* %29, align 1, !tbaa !2448
  %3673 = lshr i32 %3657, 31
  %3674 = trunc i32 %3673 to i8
  store i8 %3674, i8* %32, align 1, !tbaa !2449
  %3675 = lshr i32 %3656, 31
  %3676 = xor i32 %3673, %3675
  %3677 = add nuw nsw i32 %3676, %3673
  %3678 = icmp eq i32 %3677, 2
  %3679 = zext i1 %3678 to i8
  store i8 %3679, i8* %38, align 1, !tbaa !2450
  %3680 = add i64 %3653, 9
  store i64 %3680, i64* %PC, align 8
  store i32 %3657, i32* %3655, align 4
  %3681 = load i64, i64* %PC, align 8
  %3682 = add i64 %3681, -52
  store i64 %3682, i64* %PC, align 8, !tbaa !2428
  br label %block_4009c0
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400510_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400510_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400510_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4004e0___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_4004e0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401360___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401360;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401360___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401360___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4012f0___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
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

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory* readnone) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4012b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
define dllexport void @Fit() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400580;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Fit_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400580_Fit(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Remove() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400700;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Remove_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400700_Remove(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Place() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400610;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Place_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400610_Place(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Rand() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Rand_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400540_Rand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Trial() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @Trial_wrapper(%struct.State*, i64, %struct.Memory* readnone) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007a0_Trial(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Initrand() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_400520_Initrand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401364;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_401364__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_4003f0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Puzzle() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @Puzzle_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400870_Puzzle(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4012f0___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_401360___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { nounwind }

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
