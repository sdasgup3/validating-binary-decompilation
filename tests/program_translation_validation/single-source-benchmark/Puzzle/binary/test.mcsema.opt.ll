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

declare %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400840_Puzzle_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006d0_Remove_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %.pre = load i64, i64* %PC, align 8
  br label %block_400561

block_4005bb:                                     ; preds = %block_400598
  %33 = add i64 %155, 5
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br label %block_4005c0

block_400575:                                     ; preds = %block_400561
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %34 = add i64 %199, 14
  store i64 %34, i64* %PC, align 8
  %35 = load i32, i32* %165, align 4
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 11
  store i64 %37, i64* %RCX, align 8, !tbaa !2428
  %38 = lshr i64 %36, 52
  %39 = and i64 %38, 1
  %40 = add i64 %37, ptrtoint (%p_type* @p to i64)
  store i64 %40, i64* %RAX, align 8, !tbaa !2428
  %41 = icmp ult i64 %40, ptrtoint (%p_type* @p to i64)
  %42 = icmp ult i64 %40, %37
  %43 = or i1 %41, %42
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %27, align 1, !tbaa !2432
  %45 = trunc i64 %40 to i32
  %46 = and i32 %45, 240
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #8
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  store i8 %50, i8* %28, align 1, !tbaa !2446
  %51 = xor i64 %40, ptrtoint (%p_type* @p to i64)
  %52 = lshr exact i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, i8* %29, align 1, !tbaa !2447
  %55 = icmp eq i64 %40, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %30, align 1, !tbaa !2448
  %57 = lshr i64 %40, 63
  %58 = trunc i64 %57 to i8
  store i8 %58, i8* %31, align 1, !tbaa !2449
  %59 = xor i64 %57, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %60 = xor i64 %57, %39
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
  %68 = add i64 %67, %40
  %69 = add i64 %199, 29
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #8
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
  %.v3 = select i1 %77, i64 75, i64 35
  %81 = add i64 %199, %.v3
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  br i1 %77, label %block_4005c0, label %block_400598

block_4005d3:                                     ; preds = %block_400561
  %82 = add i64 %157, -4
  %83 = add i64 %199, 7
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  store i32 1, i32* %84, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4005da

block_4005af:                                     ; preds = %block_400598
  %85 = add i64 %157, -4
  %86 = add i64 %155, 7
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 0, i32* %87, align 4
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 36
  store i64 %89, i64* %PC, align 8, !tbaa !2428
  br label %block_4005da

block_4005da:                                     ; preds = %block_4005af, %block_4005d3
  %90 = phi i64 [ %89, %block_4005af ], [ %.pre2, %block_4005d3 ]
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

block_400598:                                     ; preds = %block_400575
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
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #8
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
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #8
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
  %.v4 = select i1 %151, i64 35, i64 23
  %155 = add i64 %81, %.v4
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  br i1 %151, label %block_4005bb, label %block_4005af

block_400561:                                     ; preds = %block_4005c0, %block_400550
  %156 = phi i64 [ %.pre, %block_400550 ], [ %228, %block_4005c0 ]
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
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #8
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
  br i1 %.demorgan, label %block_400575, label %block_4005d3

block_4005c0:                                     ; preds = %block_400575, %block_4005bb
  %200 = phi i64 [ %81, %block_400575 ], [ %33, %block_4005bb ]
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
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #8
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %28, align 1, !tbaa !2446
  %214 = xor i32 %202, %203
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
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_400470_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
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
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #8
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %13, align 1, !tbaa !2446
  %35 = xor i32 %23, %24
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
  br label %block_400793

block_40079d:                                     ; preds = %block_400793
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
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #8
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
  %.v6 = select i1 %70, i64 120, i64 26
  %74 = add i64 %142, %.v6
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  br i1 %70, label %block_400815, label %block_4007b7

block_400815:                                     ; preds = %block_400810, %block_40079d
  %75 = phi i64 [ %114, %block_40079d ], [ %.pre4, %block_400810 ]
  %76 = phi i64 [ %74, %block_40079d ], [ %144, %block_400810 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40079d ], [ %MEMORY.3, %block_400810 ]
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
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %13, align 1, !tbaa !2446
  %92 = xor i32 %80, %81
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
  br label %block_400793

block_4007f4:                                     ; preds = %block_4007ea, %block_4007cb
  %107 = phi i64 [ %271, %block_4007ea ], [ %231, %block_4007cb ]
  %108 = add i64 %.pre3, -4
  %109 = add i64 %107, 7
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 1, i32* %110, align 4
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, 52
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  br label %block_40082f

block_400793:                                     ; preds = %block_400815, %block_400770
  %113 = phi i64 [ %.pre, %block_400770 ], [ %106, %block_400815 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400770 ], [ %MEMORY.0, %block_400815 ]
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
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #8
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %13, align 1, !tbaa !2446
  %127 = xor i32 %118, %119
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
  br i1 %.demorgan, label %block_40079d, label %block_400828

block_400810:                                     ; preds = %block_400800, %block_4007b7
  %143 = phi i64 [ %257, %block_4007b7 ], [ %292, %block_400800 ]
  %MEMORY.3 = phi %struct.Memory* [ %245, %block_4007b7 ], [ %290, %block_400800 ]
  %144 = add i64 %143, 5
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  %.pre4 = load i64, i64* %RBP, align 8
  br label %block_400815

block_40082f:                                     ; preds = %block_400828, %block_4007f4
  %145 = phi i64 [ %.pre5, %block_400828 ], [ %112, %block_4007f4 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_400828 ], [ %219, %block_4007f4 ]
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
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157) #8
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

block_4007cb:                                     ; preds = %block_4007b7
  %184 = load i64, i64* %RBP, align 8
  %185 = add i64 %184, -12
  %186 = add i64 %257, 3
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  %190 = add i64 %184, -8
  %191 = add i64 %257, 6
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RSI, align 8, !tbaa !2428
  %195 = add i64 %257, -491
  %196 = add i64 %257, 11
  %197 = load i64, i64* %RSP, align 8, !tbaa !2428
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %RSP, align 8, !tbaa !2428
  store i64 %195, i64* %PC, align 8, !tbaa !2428
  %200 = tail call %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* nonnull %0, i64 %195, %struct.Memory* %245)
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
  %219 = tail call %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* nonnull %0, i64 %214, %struct.Memory* %200)
  %220 = load i32, i32* %EAX, align 4
  %221 = load i64, i64* %PC, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %222 = and i32 %220, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #8
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
  %.v8 = select i1 %227, i64 9, i64 19
  %231 = add i64 %221, %.v8
  store i64 %231, i64* %PC, align 8, !tbaa !2428
  %.pre3 = load i64, i64* %RBP, align 8
  br i1 %227, label %block_4007ea, label %block_4007f4

block_4007b7:                                     ; preds = %block_40079d
  %232 = add i64 %74, 3
  store i64 %232, i64* %PC, align 8
  %233 = load i32, i32* %117, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RDI, align 8, !tbaa !2428
  %235 = add i64 %114, -8
  %236 = add i64 %74, 6
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RSI, align 8, !tbaa !2428
  %240 = add i64 %74, -615
  %241 = add i64 %74, 11
  %242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %RSP, align 8, !tbaa !2428
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  %245 = tail call %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* nonnull %0, i64 %240, %struct.Memory* %MEMORY.2)
  %246 = load i32, i32* %EAX, align 4
  %247 = load i64, i64* %PC, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %248 = and i32 %246, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248) #8
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %253 = icmp eq i32 %246, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %15, align 1, !tbaa !2448
  %255 = lshr i32 %246, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v7 = select i1 %253, i64 78, i64 9
  %257 = add i64 %247, %.v7
  store i64 %257, i64* %PC, align 8, !tbaa !2428
  br i1 %253, label %block_400810, label %block_4007cb

block_4007ea:                                     ; preds = %block_4007cb
  %258 = add i64 %.pre3, -16
  %259 = add i64 %231, 4
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  store i8 0, i8* %12, align 1, !tbaa !2432
  %262 = and i32 %261, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #8
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %267 = icmp eq i32 %261, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %15, align 1, !tbaa !2448
  %269 = lshr i32 %261, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v9 = select i1 %267, i64 10, i64 22
  %271 = add i64 %231, %.v9
  store i64 %271, i64* %PC, align 8, !tbaa !2428
  br i1 %267, label %block_4007f4, label %block_400800

block_400828:                                     ; preds = %block_400793
  %272 = add i64 %114, -4
  %273 = add i64 %142, 7
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 0, i32* %274, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400800:                                     ; preds = %block_4007ea
  %275 = add i64 %.pre3, -12
  %276 = add i64 %271, 3
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RDI, align 8, !tbaa !2428
  %280 = add i64 %.pre3, -8
  %281 = add i64 %271, 6
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = add i64 %271, -304
  %286 = add i64 %271, 11
  %287 = load i64, i64* %RSP, align 8, !tbaa !2428
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %286, i64* %289, align 8
  store i64 %288, i64* %RSP, align 8, !tbaa !2428
  store i64 %285, i64* %PC, align 8, !tbaa !2428
  %290 = tail call %struct.Memory* @sub_4006d0_Remove_renamed_(%struct.State* nonnull %0, i64 %285, %struct.Memory* %219)
  %291 = load i64, i64* %PC, align 8
  %292 = add i64 %291, 5
  store i64 %292, i64* %PC, align 8, !tbaa !2428
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
  %39 = add i64 %6, -24
  %40 = add i64 %9, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40084f

block_4011fd:                                     ; preds = %block_4011e8
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 22), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %42 = add i64 %208, -3597
  %43 = add i64 %208, 17
  %44 = load i64, i64* %RSP, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %46, align 8
  store i64 %45, i64* %RSP, align 8, !tbaa !2428
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %47 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %196)
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -24
  %50 = load i32, i32* %EAX, align 4
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 47
  br label %block_401240

block_400bf7:                                     ; preds = %block_400bf0, %block_400c41
  %56 = phi i64 [ %.pre22, %block_400bf0 ], [ %2996, %block_400c41 ]
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -8
  %59 = add i64 %56, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #8
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %67 = icmp eq i32 %61, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %29, align 1, !tbaa !2448
  %69 = lshr i32 %61, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %71 = xor i1 %67, true
  %72 = icmp eq i8 %70, 0
  %73 = and i1 %72, %71
  %.v84 = select i1 %73, i64 93, i64 10
  %74 = add i64 %56, %.v84
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  br i1 %73, label %block_400c54, label %block_400c01

block_400ff5:                                     ; preds = %block_400fbc
  %75 = add i64 %289, -8
  %76 = add i64 %317, 8
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %78, 1
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = icmp eq i32 %78, -1
  %82 = icmp eq i32 %79, 0
  %83 = or i1 %81, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %13, align 1, !tbaa !2432
  %85 = and i32 %79, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #8
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %20, align 1, !tbaa !2446
  %90 = xor i32 %78, %79
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %26, align 1, !tbaa !2447
  %94 = zext i1 %82 to i8
  store i8 %94, i8* %29, align 1, !tbaa !2448
  %95 = lshr i32 %79, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %32, align 1, !tbaa !2449
  %97 = lshr i32 %78, 31
  %98 = xor i32 %95, %97
  %99 = add nuw nsw i32 %98, %95
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %38, align 1, !tbaa !2450
  %102 = add i64 %317, 14
  store i64 %102, i64* %PC, align 8
  store i32 %79, i32* %77, align 4
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, -88
  store i64 %104, i64* %PC, align 8, !tbaa !2428
  br label %block_400fab

block_400dec:                                     ; preds = %block_400de2
  %105 = add i64 %1703, -4
  %106 = add i64 %1720, 3
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = add i64 %1703, -8
  %111 = add i64 %1720, 6
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RCX, align 8, !tbaa !2428
  %115 = add i64 %1720, 9
  store i64 %115, i64* %PC, align 8
  %116 = load i32, i32* %1706, align 4
  %117 = shl i32 %116, 3
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RDX, align 8, !tbaa !2428
  %119 = add i32 %117, %113
  %120 = shl i32 %119, 3
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = lshr i32 %119, 28
  %123 = and i32 %122, 1
  %124 = add i32 %120, %108
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  %126 = icmp ult i32 %124, %108
  %127 = icmp ult i32 %124, %120
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %13, align 1, !tbaa !2432
  %130 = and i32 %124, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #8
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %20, align 1, !tbaa !2446
  %135 = xor i64 %121, %109
  %136 = trunc i64 %135 to i32
  %137 = xor i32 %136, %124
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %26, align 1, !tbaa !2447
  %141 = icmp eq i32 %124, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %29, align 1, !tbaa !2448
  %143 = lshr i32 %124, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %32, align 1, !tbaa !2449
  %145 = lshr i32 %108, 31
  %146 = xor i32 %143, %145
  %147 = xor i32 %143, %123
  %148 = add nuw nsw i32 %146, %147
  %149 = icmp eq i32 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %38, align 1, !tbaa !2450
  %151 = sext i32 %124 to i64
  store i64 %151, i64* %RSI, align 8, !tbaa !2428
  %152 = shl nsw i64 %151, 2
  %153 = add i64 %152, add (i64 ptrtoint (%p_type* @p to i64), i64 14336)
  %154 = add i64 %1720, 33
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 1, i32* %155, align 4
  %156 = load i64, i64* %RBP, align 8
  %157 = add i64 %156, -12
  %158 = load i64, i64* %PC, align 8
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %157 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %161, 1
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = icmp eq i32 %161, -1
  %165 = icmp eq i32 %162, 0
  %166 = or i1 %164, %165
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %13, align 1, !tbaa !2432
  %168 = and i32 %162, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168) #8
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %20, align 1, !tbaa !2446
  %173 = xor i32 %161, %162
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %26, align 1, !tbaa !2447
  %177 = zext i1 %165 to i8
  store i8 %177, i8* %29, align 1, !tbaa !2448
  %178 = lshr i32 %162, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %32, align 1, !tbaa !2449
  %180 = lshr i32 %161, 31
  %181 = xor i32 %178, %180
  %182 = add nuw nsw i32 %181, %178
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %38, align 1, !tbaa !2450
  %185 = add i64 %158, 9
  store i64 %185, i64* %PC, align 8
  store i32 %162, i32* %160, align 4
  %186 = load i64, i64* %PC, align 8
  %187 = add i64 %186, -52
  store i64 %187, i64* %PC, align 8, !tbaa !2428
  br label %block_400de2

block_4011e8:                                     ; preds = %block_4011d4, %block_4011be
  %188 = phi i32 [ %.pre49, %block_4011d4 ], [ %284, %block_4011be ]
  %189 = phi i64 [ %.pre48, %block_4011d4 ], [ %286, %block_4011be ]
  %MEMORY.1 = phi %struct.Memory* [ %1478, %block_4011d4 ], [ %283, %block_4011be ]
  %190 = zext i32 %188 to i64
  store i64 %190, i64* %RDI, align 8, !tbaa !2428
  %191 = add i64 %189, -2680
  %192 = add i64 %189, 12
  %193 = load i64, i64* %RSP, align 8, !tbaa !2428
  %194 = add i64 %193, -8
  %195 = inttoptr i64 %194 to i64*
  store i64 %192, i64* %195, align 8
  store i64 %194, i64* %RSP, align 8, !tbaa !2428
  store i64 %191, i64* %PC, align 8, !tbaa !2428
  %196 = tail call %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* nonnull %0, i64 %191, %struct.Memory* %MEMORY.1)
  %197 = load i32, i32* %EAX, align 4
  %198 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %199 = and i32 %197, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #8
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %204 = icmp eq i32 %197, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %29, align 1, !tbaa !2448
  %206 = lshr i32 %197, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v126 = select i1 %204, i64 9, i64 34
  %208 = add i64 %198, %.v126
  store i64 %208, i64* %PC, align 8, !tbaa !2428
  br i1 %204, label %block_4011fd, label %block_401216

block_400be6:                                     ; preds = %block_400c54, %block_400bc9
  %209 = phi i64 [ %2730, %block_400c54 ], [ %.pre21, %block_400bc9 ]
  %210 = load i64, i64* %RBP, align 8
  %211 = add i64 %210, -4
  %212 = add i64 %209, 4
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %214, -3
  %216 = icmp ult i32 %214, 3
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %13, align 1, !tbaa !2432
  %218 = and i32 %215, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #8
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %20, align 1, !tbaa !2446
  %223 = xor i32 %214, %215
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %26, align 1, !tbaa !2447
  %227 = icmp eq i32 %215, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %29, align 1, !tbaa !2448
  %229 = lshr i32 %215, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %32, align 1, !tbaa !2449
  %231 = lshr i32 %214, 31
  %232 = xor i32 %229, %231
  %233 = add nuw nsw i32 %232, %231
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %38, align 1, !tbaa !2450
  %236 = icmp ne i8 %230, 0
  %237 = xor i1 %236, %234
  %.demorgan82 = or i1 %227, %237
  %.v83 = select i1 %.demorgan82, i64 10, i64 129
  %238 = add i64 %209, %.v83
  store i64 %238, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan82, label %block_400bf0, label %block_400c67

block_4010a6:                                     ; preds = %block_401049
  %239 = add i64 %2856, -4
  %240 = add i64 %2884, 8
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, 1
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  %245 = icmp eq i32 %242, -1
  %246 = icmp eq i32 %243, 0
  %247 = or i1 %245, %246
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %13, align 1, !tbaa !2432
  %249 = and i32 %243, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249) #8
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %20, align 1, !tbaa !2446
  %254 = xor i32 %242, %243
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %26, align 1, !tbaa !2447
  %258 = zext i1 %246 to i8
  store i8 %258, i8* %29, align 1, !tbaa !2448
  %259 = lshr i32 %243, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %32, align 1, !tbaa !2449
  %261 = lshr i32 %242, 31
  %262 = xor i32 %259, %261
  %263 = add nuw nsw i32 %262, %259
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %38, align 1, !tbaa !2450
  %266 = add i64 %2884, 14
  store i64 %266, i64* %PC, align 8
  store i32 %243, i32* %241, align 4
  %267 = load i64, i64* %PC, align 8
  %268 = add i64 %267, -124
  store i64 %268, i64* %PC, align 8, !tbaa !2428
  br label %block_401038

block_400ddb:                                     ; preds = %block_400dd1
  %269 = add i64 %3266, -12
  %270 = add i64 %3294, 7
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i32*
  store i32 0, i32* %271, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400de2

block_4011be:                                     ; preds = %block_401157
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %272 = load i64, i64* %RBP, align 8
  %273 = add i64 %272, -16
  %274 = add i64 %3024, 5
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI, align 8, !tbaa !2428
  %278 = add i64 %3024, -3038
  %279 = add i64 %3024, 10
  %280 = load i64, i64* %RSP, align 8, !tbaa !2428
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %RSP, align 8, !tbaa !2428
  store i64 %278, i64* %PC, align 8, !tbaa !2428
  %283 = tail call %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* nonnull %0, i64 %278, %struct.Memory* %3012)
  %284 = load i32, i32* %EAX, align 4
  %285 = load i64, i64* %PC, align 8
  store i32 %284, i32* bitcast (%n_type* @n to i32*), align 8
  %286 = add i64 %285, 32
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  br label %block_4011e8

block_400da3:                                     ; preds = %block_400d22
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 24) to i32*), align 8
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 24) to i32*), align 8
  %287 = add i64 %1066, 29
  store i64 %287, i64* %PC, align 8
  store i32 0, i32* %1041, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400dc0

block_400fbc:                                     ; preds = %block_400fb5, %block_400fc6
  %288 = phi i64 [ %.pre41, %block_400fb5 ], [ %3231, %block_400fc6 ]
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -12
  %291 = add i64 %288, 4
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, -1
  %295 = icmp eq i32 %293, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %13, align 1, !tbaa !2432
  %297 = and i32 %294, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297) #8
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %20, align 1, !tbaa !2446
  %302 = xor i32 %293, %294
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %26, align 1, !tbaa !2447
  %306 = icmp eq i32 %294, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %29, align 1, !tbaa !2448
  %308 = lshr i32 %294, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %32, align 1, !tbaa !2449
  %310 = lshr i32 %293, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %310
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %38, align 1, !tbaa !2450
  %315 = icmp ne i8 %309, 0
  %316 = xor i1 %315, %313
  %.demorgan112 = or i1 %306, %316
  %.v113 = select i1 %.demorgan112, i64 10, i64 57
  %317 = add i64 %288, %.v113
  store i64 %317, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan112, label %block_400fc6, label %block_400ff5

block_400bb6:                                     ; preds = %block_400b59
  %318 = add i64 %3411, -4
  %319 = add i64 %3439, 8
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, 1
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = icmp eq i32 %321, -1
  %325 = icmp eq i32 %322, 0
  %326 = or i1 %324, %325
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %13, align 1, !tbaa !2432
  %328 = and i32 %322, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328) #8
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %20, align 1, !tbaa !2446
  %333 = xor i32 %321, %322
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  store i8 %336, i8* %26, align 1, !tbaa !2447
  %337 = zext i1 %325 to i8
  store i8 %337, i8* %29, align 1, !tbaa !2448
  %338 = lshr i32 %322, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %32, align 1, !tbaa !2449
  %340 = lshr i32 %321, 31
  %341 = xor i32 %338, %340
  %342 = add nuw nsw i32 %341, %338
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %38, align 1, !tbaa !2450
  %345 = add i64 %3439, 14
  store i64 %345, i64* %PC, align 8
  store i32 %322, i32* %320, align 4
  %346 = load i64, i64* %PC, align 8
  %347 = add i64 %346, -124
  store i64 %347, i64* %PC, align 8, !tbaa !2428
  br label %block_400b48

block_4010d6:                                     ; preds = %block_4010b9, %block_401144
  %348 = phi i64 [ %.pre45, %block_4010b9 ], [ %1371, %block_401144 ]
  %349 = load i64, i64* %RBP, align 8
  %350 = add i64 %349, -4
  %351 = add i64 %348, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, -1
  %355 = icmp eq i32 %353, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %13, align 1, !tbaa !2432
  %357 = and i32 %354, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357) #8
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %20, align 1, !tbaa !2446
  %362 = xor i32 %353, %354
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %26, align 1, !tbaa !2447
  %366 = icmp eq i32 %354, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %29, align 1, !tbaa !2448
  %368 = lshr i32 %354, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %32, align 1, !tbaa !2449
  %370 = lshr i32 %353, 31
  %371 = xor i32 %368, %370
  %372 = add nuw nsw i32 %371, %370
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %38, align 1, !tbaa !2450
  %375 = icmp ne i8 %369, 0
  %376 = xor i1 %375, %373
  %.demorgan119 = or i1 %366, %376
  %.v120 = select i1 %.demorgan119, i64 10, i64 129
  %377 = add i64 %348, %.v120
  store i64 %377, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan119, label %block_4010e0, label %block_401157

block_400f9a:                                     ; preds = %block_401008, %block_400f7d
  %378 = phi i64 [ %3148, %block_401008 ], [ %.pre39, %block_400f7d ]
  %379 = load i64, i64* %RBP, align 8
  %380 = add i64 %379, -4
  %381 = add i64 %378, 4
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = add i32 %383, -1
  %385 = icmp eq i32 %383, 0
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %13, align 1, !tbaa !2432
  %387 = and i32 %384, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387) #8
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %20, align 1, !tbaa !2446
  %392 = xor i32 %383, %384
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %26, align 1, !tbaa !2447
  %396 = icmp eq i32 %384, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %29, align 1, !tbaa !2448
  %398 = lshr i32 %384, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %32, align 1, !tbaa !2449
  %400 = lshr i32 %383, 31
  %401 = xor i32 %398, %400
  %402 = add nuw nsw i32 %401, %400
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %38, align 1, !tbaa !2450
  %405 = icmp ne i8 %399, 0
  %406 = xor i1 %405, %403
  %.demorgan109 = or i1 %396, %406
  %.v110 = select i1 %.demorgan109, i64 10, i64 129
  %407 = add i64 %378, %.v110
  store i64 %407, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan109, label %block_400fa4, label %block_40101b

block_400d90:                                     ; preds = %block_400d33
  %408 = add i64 %2458, -4
  %409 = add i64 %2475, 8
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, 1
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX, align 8, !tbaa !2428
  %414 = icmp eq i32 %411, -1
  %415 = icmp eq i32 %412, 0
  %416 = or i1 %414, %415
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %13, align 1, !tbaa !2432
  %418 = and i32 %412, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418) #8
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %20, align 1, !tbaa !2446
  %423 = xor i32 %411, %412
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %26, align 1, !tbaa !2447
  %427 = zext i1 %415 to i8
  store i8 %427, i8* %29, align 1, !tbaa !2448
  %428 = lshr i32 %412, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %32, align 1, !tbaa !2449
  %430 = lshr i32 %411, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %428
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %38, align 1, !tbaa !2450
  %435 = add i64 %2475, 14
  store i64 %435, i64* %PC, align 8
  store i32 %412, i32* %410, align 4
  %436 = load i64, i64* %PC, align 8
  %437 = add i64 %436, -124
  store i64 %437, i64* %PC, align 8, !tbaa !2428
  br label %block_400d22

block_400989:                                     ; preds = %block_40097f
  %438 = add i64 %1068, -12
  %439 = add i64 %1096, 7
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 0, i32* %440, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400990

block_4009dc:                                     ; preds = %block_40097f
  %441 = add i64 %1068, -4
  %442 = add i64 %1096, 8
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = add i32 %444, 1
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX, align 8, !tbaa !2428
  %447 = icmp eq i32 %444, -1
  %448 = icmp eq i32 %445, 0
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %13, align 1, !tbaa !2432
  %451 = and i32 %445, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451) #8
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %20, align 1, !tbaa !2446
  %456 = xor i32 %444, %445
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %26, align 1, !tbaa !2447
  %460 = zext i1 %448 to i8
  store i8 %460, i8* %29, align 1, !tbaa !2448
  %461 = lshr i32 %445, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %32, align 1, !tbaa !2449
  %463 = lshr i32 %444, 31
  %464 = xor i32 %461, %463
  %465 = add nuw nsw i32 %464, %461
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %38, align 1, !tbaa !2450
  %468 = add i64 %1096, 14
  store i64 %468, i64* %PC, align 8
  store i32 %445, i32* %443, align 4
  %469 = load i64, i64* %PC, align 8
  %470 = add i64 %469, -124
  store i64 %470, i64* %PC, align 8, !tbaa !2428
  br label %block_40096e

block_401240:                                     ; preds = %block_40123b, %block_4011fd
  %.sink = phi i64 [ %3029, %block_40123b ], [ %55, %block_4011fd ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.40, %block_40123b ], [ %47, %block_4011fd ]
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %471 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %473 = add i64 %.sink, -3664
  %474 = add i64 %.sink, 24
  %475 = load i64, i64* %RSP, align 8, !tbaa !2428
  %476 = add i64 %475, -8
  %477 = inttoptr i64 %476 to i64*
  store i64 %474, i64* %477, align 8
  store i64 %476, i64* %RSP, align 8, !tbaa !2428
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  %478 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %479 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %480 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RSI, align 8, !tbaa !2428
  %482 = load i64, i64* %RBP, align 8
  %483 = add i64 %482, -32
  %484 = load i32, i32* %EAX, align 4
  %485 = add i64 %479, 20
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %483 to i32*
  store i32 %484, i32* %486, align 4
  %487 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %488 = add i64 %487, -3708
  %489 = add i64 %487, 7
  %490 = load i64, i64* %RSP, align 8, !tbaa !2428
  %491 = add i64 %490, -8
  %492 = inttoptr i64 %491 to i64*
  store i64 %489, i64* %492, align 8
  store i64 %491, i64* %RSP, align 8, !tbaa !2428
  store i64 %488, i64* %PC, align 8, !tbaa !2428
  %493 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %478)
  %494 = load i64, i64* %RBP, align 8
  %495 = add i64 %494, -36
  %496 = load i32, i32* %EAX, align 4
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %495 to i32*
  store i32 %496, i32* %499, align 4
  %500 = load i64, i64* %RSP, align 8
  %501 = load i64, i64* %PC, align 8
  %502 = add i64 %500, 48
  store i64 %502, i64* %RSP, align 8, !tbaa !2428
  %503 = icmp ugt i64 %500, -49
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %13, align 1, !tbaa !2432
  %505 = trunc i64 %502 to i32
  %506 = and i32 %505, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506) #8
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %20, align 1, !tbaa !2446
  %511 = xor i64 %500, 16
  %512 = xor i64 %511, %502
  %513 = lshr i64 %512, 4
  %514 = trunc i64 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %26, align 1, !tbaa !2447
  %516 = icmp eq i64 %502, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %29, align 1, !tbaa !2448
  %518 = lshr i64 %502, 63
  %519 = trunc i64 %518 to i8
  store i8 %519, i8* %32, align 1, !tbaa !2449
  %520 = lshr i64 %500, 63
  %521 = xor i64 %518, %520
  %522 = add nuw nsw i64 %521, %518
  %523 = icmp eq i64 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %38, align 1, !tbaa !2450
  %525 = add i64 %501, 5
  store i64 %525, i64* %PC, align 8
  %526 = add i64 %500, 56
  %527 = inttoptr i64 %502 to i64*
  %528 = load i64, i64* %527, align 8
  store i64 %528, i64* %RBP, align 8, !tbaa !2428
  store i64 %526, i64* %RSP, align 8, !tbaa !2428
  %529 = add i64 %501, 6
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %526 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %PC, align 8, !tbaa !2428
  %532 = add i64 %500, 64
  store i64 %532, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %493

block_400f7d:                                     ; preds = %block_400efc
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 36) to i32*), align 4
  store i32 9, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 36) to i32*), align 4
  %533 = add i64 %1235, 29
  store i64 %533, i64* %PC, align 8
  store i32 0, i32* %1210, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400f9a

block_400b74:                                     ; preds = %block_400b6a
  %534 = add i64 %2323, -4
  %535 = add i64 %2340, 3
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX, align 8, !tbaa !2428
  %539 = add i64 %2323, -8
  %540 = add i64 %2340, 6
  store i64 %540, i64* %PC, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RCX, align 8, !tbaa !2428
  %544 = add i64 %2340, 9
  store i64 %544, i64* %PC, align 8
  %545 = load i32, i32* %2326, align 4
  %546 = shl i32 %545, 3
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RDX, align 8, !tbaa !2428
  %548 = add i32 %546, %542
  %549 = shl i32 %548, 3
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RCX, align 8, !tbaa !2428
  %551 = lshr i32 %548, 28
  %552 = and i32 %551, 1
  %553 = add i32 %549, %537
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX, align 8, !tbaa !2428
  %555 = icmp ult i32 %553, %537
  %556 = icmp ult i32 %553, %549
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %13, align 1, !tbaa !2432
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559) #8
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %20, align 1, !tbaa !2446
  %564 = xor i64 %550, %538
  %565 = trunc i64 %564 to i32
  %566 = xor i32 %565, %553
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %26, align 1, !tbaa !2447
  %570 = icmp eq i32 %553, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %29, align 1, !tbaa !2448
  %572 = lshr i32 %553, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %32, align 1, !tbaa !2449
  %574 = lshr i32 %537, 31
  %575 = xor i32 %572, %574
  %576 = xor i32 %572, %552
  %577 = add nuw nsw i32 %575, %576
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %38, align 1, !tbaa !2450
  %580 = sext i32 %553 to i64
  store i64 %580, i64* %RSI, align 8, !tbaa !2428
  %581 = shl nsw i64 %580, 2
  %582 = add i64 %581, add (i64 ptrtoint (%p_type* @p to i64), i64 6144)
  %583 = add i64 %2340, 33
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %582 to i32*
  store i32 1, i32* %584, align 4
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -12
  %587 = load i64, i64* %PC, align 8
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC, align 8
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = add i32 %590, 1
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX, align 8, !tbaa !2428
  %593 = icmp eq i32 %590, -1
  %594 = icmp eq i32 %591, 0
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %13, align 1, !tbaa !2432
  %597 = and i32 %591, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597) #8
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %20, align 1, !tbaa !2446
  %602 = xor i32 %590, %591
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %26, align 1, !tbaa !2447
  %606 = zext i1 %594 to i8
  store i8 %606, i8* %29, align 1, !tbaa !2448
  %607 = lshr i32 %591, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %32, align 1, !tbaa !2449
  %609 = lshr i32 %590, 31
  %610 = xor i32 %607, %609
  %611 = add nuw nsw i32 %610, %607
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %38, align 1, !tbaa !2450
  %614 = add i64 %587, 9
  store i64 %614, i64* %PC, align 8
  store i32 %591, i32* %589, align 4
  %615 = load i64, i64* %PC, align 8
  %616 = add i64 %615, -52
  store i64 %616, i64* %PC, align 8, !tbaa !2428
  br label %block_400b6a

block_400f6a:                                     ; preds = %block_400f0d
  %617 = add i64 %2938, -4
  %618 = add i64 %2966, 8
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = add i32 %620, 1
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX, align 8, !tbaa !2428
  %623 = icmp eq i32 %620, -1
  %624 = icmp eq i32 %621, 0
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %13, align 1, !tbaa !2432
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627) #8
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %20, align 1, !tbaa !2446
  %632 = xor i32 %620, %621
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %26, align 1, !tbaa !2447
  %636 = zext i1 %624 to i8
  store i8 %636, i8* %29, align 1, !tbaa !2448
  %637 = lshr i32 %621, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %32, align 1, !tbaa !2449
  %639 = lshr i32 %620, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %637
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %38, align 1, !tbaa !2450
  %644 = add i64 %2966, 14
  store i64 %644, i64* %PC, align 8
  store i32 %621, i32* %619, align 4
  %645 = load i64, i64* %PC, align 8
  %646 = add i64 %645, -124
  store i64 %646, i64* %PC, align 8, !tbaa !2428
  br label %block_400efc

block_400967:                                     ; preds = %block_400908
  %647 = add i64 %2699, 7
  store i64 %647, i64* %PC, align 8
  store i32 0, i32* %2674, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_40096e

block_400b63:                                     ; preds = %block_400b59
  %648 = add i64 %3411, -12
  %649 = add i64 %3439, 7
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i32*
  store i32 0, i32* %650, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400b6a

block_400954:                                     ; preds = %block_400919
  %651 = add i64 %2209, -4
  %652 = add i64 %2238, 8
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = add i32 %654, 1
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RAX, align 8, !tbaa !2428
  %657 = icmp eq i32 %654, -1
  %658 = icmp eq i32 %655, 0
  %659 = or i1 %657, %658
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %13, align 1, !tbaa !2432
  %661 = and i32 %655, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661) #8
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %20, align 1, !tbaa !2446
  %666 = xor i32 %654, %655
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %26, align 1, !tbaa !2447
  %670 = zext i1 %658 to i8
  store i8 %670, i8* %29, align 1, !tbaa !2448
  %671 = lshr i32 %655, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %32, align 1, !tbaa !2449
  %673 = lshr i32 %654, 31
  %674 = xor i32 %671, %673
  %675 = add nuw nsw i32 %674, %671
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %38, align 1, !tbaa !2450
  %678 = add i64 %2238, 14
  store i64 %678, i64* %PC, align 8
  store i32 %655, i32* %653, align 4
  %679 = load i64, i64* %PC, align 8
  %680 = add i64 %679, -90
  store i64 %680, i64* %PC, align 8, !tbaa !2428
  br label %block_400908

block_401038:                                     ; preds = %block_40101b, %block_4010a6
  %681 = phi i64 [ %.pre42, %block_40101b ], [ %268, %block_4010a6 ]
  %682 = load i64, i64* %RBP, align 8
  %683 = add i64 %682, -4
  %684 = add i64 %681, 4
  store i64 %684, i64* %PC, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %687 = and i32 %686, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687) #8
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %692 = icmp eq i32 %686, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %29, align 1, !tbaa !2448
  %694 = lshr i32 %686, 31
  %695 = trunc i32 %694 to i8
  store i8 %695, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %696 = xor i1 %692, true
  %697 = icmp eq i8 %695, 0
  %698 = and i1 %697, %696
  %.v114 = select i1 %698, i64 129, i64 10
  %699 = add i64 %681, %.v114
  store i64 %699, i64* %PC, align 8, !tbaa !2428
  br i1 %698, label %block_4010b9, label %block_401042

block_400d4e:                                     ; preds = %block_400d44
  %700 = add i64 %1131, -4
  %701 = add i64 %1148, 3
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RAX, align 8, !tbaa !2428
  %705 = add i64 %1131, -8
  %706 = add i64 %1148, 6
  store i64 %706, i64* %PC, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RCX, align 8, !tbaa !2428
  %710 = add i64 %1148, 9
  store i64 %710, i64* %PC, align 8
  %711 = load i32, i32* %1134, align 4
  %712 = shl i32 %711, 3
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RDX, align 8, !tbaa !2428
  %714 = add i32 %712, %708
  %715 = shl i32 %714, 3
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RCX, align 8, !tbaa !2428
  %717 = lshr i32 %714, 28
  %718 = and i32 %717, 1
  %719 = add i32 %715, %703
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = icmp ult i32 %719, %703
  %722 = icmp ult i32 %719, %715
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %13, align 1, !tbaa !2432
  %725 = and i32 %719, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725) #8
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %20, align 1, !tbaa !2446
  %730 = xor i64 %716, %704
  %731 = trunc i64 %730 to i32
  %732 = xor i32 %731, %719
  %733 = lshr i32 %732, 4
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %26, align 1, !tbaa !2447
  %736 = icmp eq i32 %719, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1, !tbaa !2448
  %738 = lshr i32 %719, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %32, align 1, !tbaa !2449
  %740 = lshr i32 %703, 31
  %741 = xor i32 %738, %740
  %742 = xor i32 %738, %718
  %743 = add nuw nsw i32 %741, %742
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %38, align 1, !tbaa !2450
  %746 = sext i32 %719 to i64
  store i64 %746, i64* %RSI, align 8, !tbaa !2428
  %747 = shl nsw i64 %746, 2
  %748 = add i64 %747, add (i64 ptrtoint (%p_type* @p to i64), i64 12288)
  %749 = add i64 %1148, 33
  store i64 %749, i64* %PC, align 8
  %750 = inttoptr i64 %748 to i32*
  store i32 1, i32* %750, align 4
  %751 = load i64, i64* %RBP, align 8
  %752 = add i64 %751, -12
  %753 = load i64, i64* %PC, align 8
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC, align 8
  %755 = inttoptr i64 %752 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = add i32 %756, 1
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RAX, align 8, !tbaa !2428
  %759 = icmp eq i32 %756, -1
  %760 = icmp eq i32 %757, 0
  %761 = or i1 %759, %760
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %13, align 1, !tbaa !2432
  %763 = and i32 %757, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763) #8
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %20, align 1, !tbaa !2446
  %768 = xor i32 %756, %757
  %769 = lshr i32 %768, 4
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %26, align 1, !tbaa !2447
  %772 = zext i1 %760 to i8
  store i8 %772, i8* %29, align 1, !tbaa !2448
  %773 = lshr i32 %757, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %32, align 1, !tbaa !2449
  %775 = lshr i32 %756, 31
  %776 = xor i32 %773, %775
  %777 = add nuw nsw i32 %776, %773
  %778 = icmp eq i32 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %38, align 1, !tbaa !2450
  %780 = add i64 %753, 9
  store i64 %780, i64* %PC, align 8
  store i32 %757, i32* %755, align 4
  %781 = load i64, i64* %PC, align 8
  %782 = add i64 %781, -52
  store i64 %782, i64* %PC, align 8, !tbaa !2428
  br label %block_400d44

block_400dca:                                     ; preds = %block_400dc0
  %783 = add i64 %1422, -8
  %784 = add i64 %1439, 7
  store i64 %784, i64* %PC, align 8
  %785 = inttoptr i64 %783 to i32*
  store i32 0, i32* %785, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400dd1

block_400e8a:                                     ; preds = %block_400e80
  %786 = add i64 %2424, -4
  %787 = add i64 %2452, 3
  store i64 %787, i64* %PC, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RAX, align 8, !tbaa !2428
  %791 = add i64 %2424, -8
  %792 = add i64 %2452, 6
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RCX, align 8, !tbaa !2428
  %796 = add i64 %2452, 9
  store i64 %796, i64* %PC, align 8
  %797 = load i32, i32* %2427, align 4
  %798 = shl i32 %797, 3
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %RDX, align 8, !tbaa !2428
  %800 = add i32 %798, %794
  %801 = shl i32 %800, 3
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RCX, align 8, !tbaa !2428
  %803 = lshr i32 %800, 28
  %804 = and i32 %803, 1
  %805 = add i32 %801, %789
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RAX, align 8, !tbaa !2428
  %807 = icmp ult i32 %805, %789
  %808 = icmp ult i32 %805, %801
  %809 = or i1 %807, %808
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %13, align 1, !tbaa !2432
  %811 = and i32 %805, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811) #8
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %20, align 1, !tbaa !2446
  %816 = xor i64 %802, %790
  %817 = trunc i64 %816 to i32
  %818 = xor i32 %817, %805
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %26, align 1, !tbaa !2447
  %822 = icmp eq i32 %805, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %29, align 1, !tbaa !2448
  %824 = lshr i32 %805, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %32, align 1, !tbaa !2449
  %826 = lshr i32 %789, 31
  %827 = xor i32 %824, %826
  %828 = xor i32 %824, %804
  %829 = add nuw nsw i32 %827, %828
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %38, align 1, !tbaa !2450
  %832 = sext i32 %805 to i64
  store i64 %832, i64* %RSI, align 8, !tbaa !2428
  %833 = shl nsw i64 %832, 2
  %834 = add i64 %833, add (i64 ptrtoint (%p_type* @p to i64), i64 16384)
  %835 = add i64 %2452, 33
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i32*
  store i32 1, i32* %836, align 4
  %837 = load i64, i64* %RBP, align 8
  %838 = add i64 %837, -12
  %839 = load i64, i64* %PC, align 8
  %840 = add i64 %839, 3
  store i64 %840, i64* %PC, align 8
  %841 = inttoptr i64 %838 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = add i32 %842, 1
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RAX, align 8, !tbaa !2428
  %845 = icmp eq i32 %842, -1
  %846 = icmp eq i32 %843, 0
  %847 = or i1 %845, %846
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %13, align 1, !tbaa !2432
  %849 = and i32 %843, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849) #8
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %20, align 1, !tbaa !2446
  %854 = xor i32 %842, %843
  %855 = lshr i32 %854, 4
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  store i8 %857, i8* %26, align 1, !tbaa !2447
  %858 = zext i1 %846 to i8
  store i8 %858, i8* %29, align 1, !tbaa !2448
  %859 = lshr i32 %843, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %32, align 1, !tbaa !2449
  %861 = lshr i32 %842, 31
  %862 = xor i32 %859, %861
  %863 = add nuw nsw i32 %862, %859
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %38, align 1, !tbaa !2450
  %866 = add i64 %839, 9
  store i64 %866, i64* %PC, align 8
  store i32 %843, i32* %841, align 4
  %867 = load i64, i64* %PC, align 8
  %868 = add i64 %867, -52
  store i64 %868, i64* %PC, align 8, !tbaa !2428
  br label %block_400e80

block_400b48:                                     ; preds = %block_400b2b, %block_400bb6
  %869 = phi i64 [ %.pre18, %block_400b2b ], [ %347, %block_400bb6 ]
  %870 = load i64, i64* %RBP, align 8
  %871 = add i64 %870, -4
  %872 = add i64 %869, 4
  store i64 %872, i64* %PC, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = add i32 %874, -1
  %876 = icmp eq i32 %874, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %13, align 1, !tbaa !2432
  %878 = and i32 %875, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878) #8
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %20, align 1, !tbaa !2446
  %883 = xor i32 %874, %875
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %26, align 1, !tbaa !2447
  %887 = icmp eq i32 %875, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %29, align 1, !tbaa !2448
  %889 = lshr i32 %875, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %32, align 1, !tbaa !2449
  %891 = lshr i32 %874, 31
  %892 = xor i32 %889, %891
  %893 = add nuw nsw i32 %892, %891
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %38, align 1, !tbaa !2450
  %896 = icmp ne i8 %890, 0
  %897 = xor i1 %896, %894
  %.demorgan77 = or i1 %887, %897
  %.v78 = select i1 %.demorgan77, i64 10, i64 129
  %898 = add i64 %869, %.v78
  store i64 %898, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan77, label %block_400b52, label %block_400bc9

block_4010e0:                                     ; preds = %block_4010d6
  %899 = add i64 %349, -8
  %900 = add i64 %377, 7
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %899 to i32*
  store i32 0, i32* %901, align 4
  %.pre46 = load i64, i64* %PC, align 8
  br label %block_4010e7

block_400d3d:                                     ; preds = %block_400d33
  %902 = add i64 %2458, -12
  %903 = add i64 %2475, 7
  store i64 %903, i64* %PC, align 8
  %904 = inttoptr i64 %902 to i32*
  store i32 0, i32* %904, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400d44

block_401131:                                     ; preds = %block_4010f8
  %905 = add i64 %1238, -8
  %906 = add i64 %1266, 8
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, 1
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RAX, align 8, !tbaa !2428
  %911 = icmp eq i32 %908, -1
  %912 = icmp eq i32 %909, 0
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %13, align 1, !tbaa !2432
  %915 = and i32 %909, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915) #8
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %20, align 1, !tbaa !2446
  %920 = xor i32 %908, %909
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %26, align 1, !tbaa !2447
  %924 = zext i1 %912 to i8
  store i8 %924, i8* %29, align 1, !tbaa !2448
  %925 = lshr i32 %909, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %32, align 1, !tbaa !2449
  %927 = lshr i32 %908, 31
  %928 = xor i32 %925, %927
  %929 = add nuw nsw i32 %928, %925
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %38, align 1, !tbaa !2450
  %932 = add i64 %1266, 14
  store i64 %932, i64* %PC, align 8
  store i32 %909, i32* %907, align 4
  %933 = load i64, i64* %PC, align 8
  %934 = add i64 %933, -88
  store i64 %934, i64* %PC, align 8, !tbaa !2428
  br label %block_4010e7

block_400990:                                     ; preds = %block_40099a, %block_400989
  %935 = phi i64 [ %1980, %block_40099a ], [ %.pre11, %block_400989 ]
  %936 = load i64, i64* %RBP, align 8
  %937 = add i64 %936, -12
  %938 = add i64 %935, 4
  store i64 %938, i64* %PC, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %941 = and i32 %940, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941) #8
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %946 = icmp eq i32 %940, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %29, align 1, !tbaa !2448
  %948 = lshr i32 %940, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %950 = xor i1 %946, true
  %951 = icmp eq i8 %949, 0
  %952 = and i1 %951, %950
  %.v66 = select i1 %952, i64 57, i64 10
  %953 = add i64 %935, %.v66
  store i64 %953, i64* %PC, align 8, !tbaa !2428
  br i1 %952, label %block_4009c9, label %block_40099a

block_400f28:                                     ; preds = %block_400f1e
  %954 = add i64 %1187, -4
  %955 = add i64 %1204, 3
  store i64 %955, i64* %PC, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RAX, align 8, !tbaa !2428
  %959 = add i64 %1187, -8
  %960 = add i64 %1204, 6
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RCX, align 8, !tbaa !2428
  %964 = add i64 %1204, 9
  store i64 %964, i64* %PC, align 8
  %965 = load i32, i32* %1190, align 4
  %966 = shl i32 %965, 3
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RDX, align 8, !tbaa !2428
  %968 = add i32 %966, %962
  %969 = shl i32 %968, 3
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RCX, align 8, !tbaa !2428
  %971 = lshr i32 %968, 28
  %972 = and i32 %971, 1
  %973 = add i32 %969, %957
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX, align 8, !tbaa !2428
  %975 = icmp ult i32 %973, %957
  %976 = icmp ult i32 %973, %969
  %977 = or i1 %975, %976
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %13, align 1, !tbaa !2432
  %979 = and i32 %973, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979) #8
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %20, align 1, !tbaa !2446
  %984 = xor i64 %970, %958
  %985 = trunc i64 %984 to i32
  %986 = xor i32 %985, %973
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %26, align 1, !tbaa !2447
  %990 = icmp eq i32 %973, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %29, align 1, !tbaa !2448
  %992 = lshr i32 %973, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %32, align 1, !tbaa !2449
  %994 = lshr i32 %957, 31
  %995 = xor i32 %992, %994
  %996 = xor i32 %992, %972
  %997 = add nuw nsw i32 %995, %996
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %38, align 1, !tbaa !2450
  %1000 = sext i32 %973 to i64
  store i64 %1000, i64* %RSI, align 8, !tbaa !2428
  %1001 = shl nsw i64 %1000, 2
  %1002 = add i64 %1001, add (i64 ptrtoint (%p_type* @p to i64), i64 18432)
  %1003 = add i64 %1204, 33
  store i64 %1003, i64* %PC, align 8
  %1004 = inttoptr i64 %1002 to i32*
  store i32 1, i32* %1004, align 4
  %1005 = load i64, i64* %RBP, align 8
  %1006 = add i64 %1005, -12
  %1007 = load i64, i64* %PC, align 8
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC, align 8
  %1009 = inttoptr i64 %1006 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = add i32 %1010, 1
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RAX, align 8, !tbaa !2428
  %1013 = icmp eq i32 %1010, -1
  %1014 = icmp eq i32 %1011, 0
  %1015 = or i1 %1013, %1014
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %13, align 1, !tbaa !2432
  %1017 = and i32 %1011, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017) #8
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %20, align 1, !tbaa !2446
  %1022 = xor i32 %1010, %1011
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %26, align 1, !tbaa !2447
  %1026 = zext i1 %1014 to i8
  store i8 %1026, i8* %29, align 1, !tbaa !2448
  %1027 = lshr i32 %1011, 31
  %1028 = trunc i32 %1027 to i8
  store i8 %1028, i8* %32, align 1, !tbaa !2449
  %1029 = lshr i32 %1010, 31
  %1030 = xor i32 %1027, %1029
  %1031 = add nuw nsw i32 %1030, %1027
  %1032 = icmp eq i32 %1031, 2
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %38, align 1, !tbaa !2450
  %1034 = add i64 %1007, 9
  store i64 %1034, i64* %PC, align 8
  store i32 %1011, i32* %1009, align 4
  %1035 = load i64, i64* %PC, align 8
  %1036 = add i64 %1035, -52
  store i64 %1036, i64* %PC, align 8, !tbaa !2428
  br label %block_400f1e

block_400d22:                                     ; preds = %block_400d05, %block_400d90
  %1037 = phi i64 [ %.pre27, %block_400d05 ], [ %437, %block_400d90 ]
  %1038 = load i64, i64* %RBP, align 8
  %1039 = add i64 %1038, -4
  %1040 = add i64 %1037, 4
  store i64 %1040, i64* %PC, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = add i32 %1042, -2
  %1044 = icmp ult i32 %1042, 2
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %13, align 1, !tbaa !2432
  %1046 = and i32 %1043, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046) #8
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %20, align 1, !tbaa !2446
  %1051 = xor i32 %1042, %1043
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %26, align 1, !tbaa !2447
  %1055 = icmp eq i32 %1043, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %29, align 1, !tbaa !2448
  %1057 = lshr i32 %1043, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %32, align 1, !tbaa !2449
  %1059 = lshr i32 %1042, 31
  %1060 = xor i32 %1057, %1059
  %1061 = add nuw nsw i32 %1060, %1059
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %38, align 1, !tbaa !2450
  %1064 = icmp ne i8 %1058, 0
  %1065 = xor i1 %1064, %1062
  %.demorgan92 = or i1 %1055, %1065
  %.v93 = select i1 %.demorgan92, i64 10, i64 129
  %1066 = add i64 %1037, %.v93
  store i64 %1066, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan92, label %block_400d2c, label %block_400da3

block_40097f:                                     ; preds = %block_4009c9, %block_400978
  %1067 = phi i64 [ %2010, %block_4009c9 ], [ %.pre10, %block_400978 ]
  %1068 = load i64, i64* %RBP, align 8
  %1069 = add i64 %1068, -8
  %1070 = add i64 %1067, 4
  store i64 %1070, i64* %PC, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = add i32 %1072, -1
  %1074 = icmp eq i32 %1072, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %13, align 1, !tbaa !2432
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076) #8
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %20, align 1, !tbaa !2446
  %1081 = xor i32 %1072, %1073
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %26, align 1, !tbaa !2447
  %1085 = icmp eq i32 %1073, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %29, align 1, !tbaa !2448
  %1087 = lshr i32 %1073, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %32, align 1, !tbaa !2449
  %1089 = lshr i32 %1072, 31
  %1090 = xor i32 %1087, %1089
  %1091 = add nuw nsw i32 %1090, %1089
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %38, align 1, !tbaa !2450
  %1094 = icmp ne i8 %1088, 0
  %1095 = xor i1 %1094, %1092
  %.demorgan64 = or i1 %1085, %1095
  %.v65 = select i1 %.demorgan64, i64 10, i64 93
  %1096 = add i64 %1067, %.v65
  store i64 %1096, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan64, label %block_400989, label %block_4009dc

block_400f17:                                     ; preds = %block_400f0d
  %1097 = add i64 %2938, -12
  %1098 = add i64 %2966, 7
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1097 to i32*
  store i32 0, i32* %1099, align 4
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400f1e

block_400e2e:                                     ; preds = %block_400dd1
  %1100 = add i64 %3266, -4
  %1101 = add i64 %3294, 8
  store i64 %1101, i64* %PC, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = add i32 %1103, 1
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RAX, align 8, !tbaa !2428
  %1106 = icmp eq i32 %1103, -1
  %1107 = icmp eq i32 %1104, 0
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %13, align 1, !tbaa !2432
  %1110 = and i32 %1104, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110) #8
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %20, align 1, !tbaa !2446
  %1115 = xor i32 %1103, %1104
  %1116 = lshr i32 %1115, 4
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  store i8 %1118, i8* %26, align 1, !tbaa !2447
  %1119 = zext i1 %1107 to i8
  store i8 %1119, i8* %29, align 1, !tbaa !2448
  %1120 = lshr i32 %1104, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %32, align 1, !tbaa !2449
  %1122 = lshr i32 %1103, 31
  %1123 = xor i32 %1120, %1122
  %1124 = add nuw nsw i32 %1123, %1120
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %38, align 1, !tbaa !2450
  %1127 = add i64 %3294, 14
  store i64 %1127, i64* %PC, align 8
  store i32 %1104, i32* %1102, align 4
  %1128 = load i64, i64* %PC, align 8
  %1129 = add i64 %1128, -124
  store i64 %1129, i64* %PC, align 8, !tbaa !2428
  br label %block_400dc0

block_400d44:                                     ; preds = %block_400d3d, %block_400d4e
  %1130 = phi i64 [ %.pre29, %block_400d3d ], [ %782, %block_400d4e ]
  %1131 = load i64, i64* %RBP, align 8
  %1132 = add i64 %1131, -12
  %1133 = add i64 %1130, 4
  store i64 %1133, i64* %PC, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1136 = and i32 %1135, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136) #8
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1141 = icmp eq i32 %1135, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %29, align 1, !tbaa !2448
  %1143 = lshr i32 %1135, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1145 = xor i1 %1141, true
  %1146 = icmp eq i8 %1144, 0
  %1147 = and i1 %1146, %1145
  %.v95 = select i1 %1147, i64 57, i64 10
  %1148 = add i64 %1130, %.v95
  store i64 %1148, i64* %PC, align 8, !tbaa !2428
  br i1 %1147, label %block_400d7d, label %block_400d4e

block_400b2b:                                     ; preds = %block_400aaa
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 8) to i32*), align 8
  store i32 88, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 8) to i32*), align 8
  %1149 = add i64 %2903, 29
  store i64 %1149, i64* %PC, align 8
  store i32 0, i32* %2889, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_400b48

block_400912:                                     ; preds = %block_400908
  %1150 = add i64 %2671, -16
  %1151 = add i64 %2699, 7
  store i64 %1151, i64* %PC, align 8
  %1152 = inttoptr i64 %1150 to i32*
  store i32 0, i32* %1152, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400919

block_40096e:                                     ; preds = %block_400967, %block_4009dc
  %1153 = phi i64 [ %.pre9, %block_400967 ], [ %470, %block_4009dc ]
  %1154 = load i64, i64* %RBP, align 8
  %1155 = add i64 %1154, -4
  %1156 = add i64 %1153, 4
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = add i32 %1158, -3
  %1160 = icmp ult i32 %1158, 3
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %13, align 1, !tbaa !2432
  %1162 = and i32 %1159, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162) #8
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %20, align 1, !tbaa !2446
  %1167 = xor i32 %1158, %1159
  %1168 = lshr i32 %1167, 4
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %26, align 1, !tbaa !2447
  %1171 = icmp eq i32 %1159, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %29, align 1, !tbaa !2448
  %1173 = lshr i32 %1159, 31
  %1174 = trunc i32 %1173 to i8
  store i8 %1174, i8* %32, align 1, !tbaa !2449
  %1175 = lshr i32 %1158, 31
  %1176 = xor i32 %1173, %1175
  %1177 = add nuw nsw i32 %1176, %1175
  %1178 = icmp eq i32 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %38, align 1, !tbaa !2450
  %1180 = icmp ne i8 %1174, 0
  %1181 = xor i1 %1180, %1178
  %.demorgan62 = or i1 %1171, %1181
  %.v63 = select i1 %.demorgan62, i64 10, i64 129
  %1182 = add i64 %1153, %.v63
  store i64 %1182, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan62, label %block_400978, label %block_4009ef

block_400f06:                                     ; preds = %block_400efc
  %1183 = add i64 %1207, -8
  %1184 = add i64 %1235, 7
  store i64 %1184, i64* %PC, align 8
  %1185 = inttoptr i64 %1183 to i32*
  store i32 0, i32* %1185, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_400f0d

block_400f1e:                                     ; preds = %block_400f17, %block_400f28
  %1186 = phi i64 [ %.pre38, %block_400f17 ], [ %1036, %block_400f28 ]
  %1187 = load i64, i64* %RBP, align 8
  %1188 = add i64 %1187, -12
  %1189 = add i64 %1186, 4
  store i64 %1189, i64* %PC, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1192 = and i32 %1191, 255
  %1193 = tail call i32 @llvm.ctpop.i32(i32 %1192) #8
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  store i8 %1196, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1197 = icmp eq i32 %1191, 0
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %29, align 1, !tbaa !2448
  %1199 = lshr i32 %1191, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1201 = xor i1 %1197, true
  %1202 = icmp eq i8 %1200, 0
  %1203 = and i1 %1202, %1201
  %.v108 = select i1 %1203, i64 57, i64 10
  %1204 = add i64 %1186, %.v108
  store i64 %1204, i64* %PC, align 8, !tbaa !2428
  br i1 %1203, label %block_400f57, label %block_400f28

block_400d05:                                     ; preds = %block_400c84
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 20) to i32*), align 4
  store i32 200, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 20) to i32*), align 4
  %1205 = add i64 %2177, 29
  store i64 %1205, i64* %PC, align 8
  store i32 0, i32* %2163, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_400d22

block_400efc:                                     ; preds = %block_400edf, %block_400f6a
  %1206 = phi i64 [ %.pre36, %block_400edf ], [ %646, %block_400f6a ]
  %1207 = load i64, i64* %RBP, align 8
  %1208 = add i64 %1207, -4
  %1209 = add i64 %1206, 4
  store i64 %1209, i64* %PC, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = add i32 %1211, -1
  %1213 = icmp eq i32 %1211, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %13, align 1, !tbaa !2432
  %1215 = and i32 %1212, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215) #8
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %20, align 1, !tbaa !2446
  %1220 = xor i32 %1211, %1212
  %1221 = lshr i32 %1220, 4
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %26, align 1, !tbaa !2447
  %1224 = icmp eq i32 %1212, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %29, align 1, !tbaa !2448
  %1226 = lshr i32 %1212, 31
  %1227 = trunc i32 %1226 to i8
  store i8 %1227, i8* %32, align 1, !tbaa !2449
  %1228 = lshr i32 %1211, 31
  %1229 = xor i32 %1226, %1228
  %1230 = add nuw nsw i32 %1229, %1228
  %1231 = icmp eq i32 %1230, 2
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %38, align 1, !tbaa !2450
  %1233 = icmp ne i8 %1227, 0
  %1234 = xor i1 %1233, %1231
  %.demorgan104 = or i1 %1224, %1234
  %.v105 = select i1 %.demorgan104, i64 10, i64 129
  %1235 = add i64 %1206, %.v105
  store i64 %1235, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan104, label %block_400f06, label %block_400f7d

block_400edf:                                     ; preds = %block_400e5e
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 32) to i32*), align 16
  store i32 128, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 32) to i32*), align 16
  %1236 = add i64 %2638, 29
  store i64 %1236, i64* %PC, align 8
  store i32 0, i32* %2624, align 4
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_400efc

block_4010f8:                                     ; preds = %block_4010f1, %block_401102
  %1237 = phi i64 [ %.pre47, %block_4010f1 ], [ %2321, %block_401102 ]
  %1238 = load i64, i64* %RBP, align 8
  %1239 = add i64 %1238, -12
  %1240 = add i64 %1237, 4
  store i64 %1240, i64* %PC, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = add i32 %1242, -1
  %1244 = icmp eq i32 %1242, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %13, align 1, !tbaa !2432
  %1246 = and i32 %1243, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246) #8
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %20, align 1, !tbaa !2446
  %1251 = xor i32 %1242, %1243
  %1252 = lshr i32 %1251, 4
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  store i8 %1254, i8* %26, align 1, !tbaa !2447
  %1255 = icmp eq i32 %1243, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %29, align 1, !tbaa !2448
  %1257 = lshr i32 %1243, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %32, align 1, !tbaa !2449
  %1259 = lshr i32 %1242, 31
  %1260 = xor i32 %1257, %1259
  %1261 = add nuw nsw i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %38, align 1, !tbaa !2450
  %1264 = icmp ne i8 %1258, 0
  %1265 = xor i1 %1264, %1262
  %.demorgan123 = or i1 %1255, %1265
  %.v124 = select i1 %.demorgan123, i64 10, i64 57
  %1266 = add i64 %1237, %.v124
  store i64 %1266, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan123, label %block_401102, label %block_401131

block_400978:                                     ; preds = %block_40096e
  %1267 = add i64 %1154, -8
  %1268 = add i64 %1182, 7
  store i64 %1268, i64* %PC, align 8
  %1269 = inttoptr i64 %1267 to i32*
  store i32 0, i32* %1269, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_40097f

block_400cf2:                                     ; preds = %block_400c95
  %1270 = add i64 %2012, -4
  %1271 = add i64 %2040, 8
  store i64 %1271, i64* %PC, align 8
  %1272 = inttoptr i64 %1270 to i32*
  %1273 = load i32, i32* %1272, align 4
  %1274 = add i32 %1273, 1
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RAX, align 8, !tbaa !2428
  %1276 = icmp eq i32 %1273, -1
  %1277 = icmp eq i32 %1274, 0
  %1278 = or i1 %1276, %1277
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %13, align 1, !tbaa !2432
  %1280 = and i32 %1274, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280) #8
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %20, align 1, !tbaa !2446
  %1285 = xor i32 %1273, %1274
  %1286 = lshr i32 %1285, 4
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %26, align 1, !tbaa !2447
  %1289 = zext i1 %1277 to i8
  store i8 %1289, i8* %29, align 1, !tbaa !2448
  %1290 = lshr i32 %1274, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %32, align 1, !tbaa !2449
  %1292 = lshr i32 %1273, 31
  %1293 = xor i32 %1290, %1292
  %1294 = add nuw nsw i32 %1293, %1290
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %38, align 1, !tbaa !2450
  %1297 = add i64 %2040, 14
  store i64 %1297, i64* %PC, align 8
  store i32 %1274, i32* %1272, align 4
  %1298 = load i64, i64* %PC, align 8
  %1299 = add i64 %1298, -124
  store i64 %1299, i64* %PC, align 8, !tbaa !2428
  br label %block_400c84

block_4008ee:                                     ; preds = %block_400891
  %1300 = add i64 %2905, -4
  %1301 = add i64 %2933, 8
  store i64 %1301, i64* %PC, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = add i32 %1303, 1
  %1305 = zext i32 %1304 to i64
  store i64 %1305, i64* %RAX, align 8, !tbaa !2428
  %1306 = icmp eq i32 %1303, -1
  %1307 = icmp eq i32 %1304, 0
  %1308 = or i1 %1306, %1307
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %13, align 1, !tbaa !2432
  %1310 = and i32 %1304, 255
  %1311 = tail call i32 @llvm.ctpop.i32(i32 %1310) #8
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = xor i8 %1313, 1
  store i8 %1314, i8* %20, align 1, !tbaa !2446
  %1315 = xor i32 %1303, %1304
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  store i8 %1318, i8* %26, align 1, !tbaa !2447
  %1319 = zext i1 %1307 to i8
  store i8 %1319, i8* %29, align 1, !tbaa !2448
  %1320 = lshr i32 %1304, 31
  %1321 = trunc i32 %1320 to i8
  store i8 %1321, i8* %32, align 1, !tbaa !2449
  %1322 = lshr i32 %1303, 31
  %1323 = xor i32 %1320, %1322
  %1324 = add nuw nsw i32 %1323, %1320
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %38, align 1, !tbaa !2450
  %1327 = add i64 %2933, 14
  store i64 %1327, i64* %PC, align 8
  store i32 %1304, i32* %1302, align 4
  %1328 = load i64, i64* %PC, align 8
  %1329 = add i64 %1328, -124
  store i64 %1329, i64* %PC, align 8, !tbaa !2428
  br label %block_400880

block_401227:                                     ; preds = %block_401216
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 41), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1330 = add i64 %2158, -3639
  %1331 = add i64 %2158, 17
  %1332 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1333 = add i64 %1332, -8
  %1334 = inttoptr i64 %1333 to i64*
  store i64 %1331, i64* %1334, align 8
  store i64 %1333, i64* %RSP, align 8, !tbaa !2428
  store i64 %1330, i64* %PC, align 8, !tbaa !2428
  %1335 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %196)
  %1336 = load i64, i64* %RBP, align 8
  %1337 = add i64 %1336, -28
  %1338 = load i32, i32* %EAX, align 4
  %1339 = load i64, i64* %PC, align 8
  %1340 = add i64 %1339, 3
  store i64 %1340, i64* %PC, align 8
  %1341 = inttoptr i64 %1337 to i32*
  store i32 %1338, i32* %1341, align 4
  %.pre50 = load i64, i64* %PC, align 8
  br label %block_40123b

block_401144:                                     ; preds = %block_4010e7
  %1342 = add i64 %3348, -4
  %1343 = add i64 %3376, 8
  store i64 %1343, i64* %PC, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = add i32 %1345, 1
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RAX, align 8, !tbaa !2428
  %1348 = icmp eq i32 %1345, -1
  %1349 = icmp eq i32 %1346, 0
  %1350 = or i1 %1348, %1349
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %13, align 1, !tbaa !2432
  %1352 = and i32 %1346, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352) #8
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %20, align 1, !tbaa !2446
  %1357 = xor i32 %1345, %1346
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %26, align 1, !tbaa !2447
  %1361 = zext i1 %1349 to i8
  store i8 %1361, i8* %29, align 1, !tbaa !2448
  %1362 = lshr i32 %1346, 31
  %1363 = trunc i32 %1362 to i8
  store i8 %1363, i8* %32, align 1, !tbaa !2449
  %1364 = lshr i32 %1345, 31
  %1365 = xor i32 %1362, %1364
  %1366 = add nuw nsw i32 %1365, %1362
  %1367 = icmp eq i32 %1366, 2
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %38, align 1, !tbaa !2450
  %1369 = add i64 %3376, 14
  store i64 %1369, i64* %PC, align 8
  store i32 %1346, i32* %1344, align 4
  %1370 = load i64, i64* %PC, align 8
  %1371 = add i64 %1370, -124
  store i64 %1371, i64* %PC, align 8, !tbaa !2428
  br label %block_4010d6

block_400fab:                                     ; preds = %block_400fa4, %block_400ff5
  %1372 = phi i64 [ %.pre40, %block_400fa4 ], [ %104, %block_400ff5 ]
  %1373 = load i64, i64* %RBP, align 8
  %1374 = add i64 %1373, -8
  %1375 = add i64 %1372, 4
  store i64 %1375, i64* %PC, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1378 = and i32 %1377, 255
  %1379 = tail call i32 @llvm.ctpop.i32(i32 %1378) #8
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1383 = icmp eq i32 %1377, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %29, align 1, !tbaa !2448
  %1385 = lshr i32 %1377, 31
  %1386 = trunc i32 %1385 to i8
  store i8 %1386, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1387 = xor i1 %1383, true
  %1388 = icmp eq i8 %1386, 0
  %1389 = and i1 %1388, %1387
  %.v111 = select i1 %1389, i64 93, i64 10
  %1390 = add i64 %1372, %.v111
  store i64 %1390, i64* %PC, align 8, !tbaa !2428
  br i1 %1389, label %block_401008, label %block_400fb5

block_400cdf:                                     ; preds = %block_400ca6
  %1391 = add i64 %2072, -8
  %1392 = add i64 %2100, 8
  store i64 %1392, i64* %PC, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = add i32 %1394, 1
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RAX, align 8, !tbaa !2428
  %1397 = icmp eq i32 %1394, -1
  %1398 = icmp eq i32 %1395, 0
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %13, align 1, !tbaa !2432
  %1401 = and i32 %1395, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401) #8
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %20, align 1, !tbaa !2446
  %1406 = xor i32 %1394, %1395
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %26, align 1, !tbaa !2447
  %1410 = zext i1 %1398 to i8
  store i8 %1410, i8* %29, align 1, !tbaa !2448
  %1411 = lshr i32 %1395, 31
  %1412 = trunc i32 %1411 to i8
  store i8 %1412, i8* %32, align 1, !tbaa !2449
  %1413 = lshr i32 %1394, 31
  %1414 = xor i32 %1411, %1413
  %1415 = add nuw nsw i32 %1414, %1411
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %38, align 1, !tbaa !2450
  %1418 = add i64 %2100, 14
  store i64 %1418, i64* %PC, align 8
  store i32 %1395, i32* %1393, align 4
  %1419 = load i64, i64* %PC, align 8
  %1420 = add i64 %1419, -88
  store i64 %1420, i64* %PC, align 8, !tbaa !2428
  br label %block_400c95

block_400dc0:                                     ; preds = %block_400e2e, %block_400da3
  %1421 = phi i64 [ %1129, %block_400e2e ], [ %.pre30, %block_400da3 ]
  %1422 = load i64, i64* %RBP, align 8
  %1423 = add i64 %1422, -4
  %1424 = add i64 %1421, 4
  store i64 %1424, i64* %PC, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1427 = and i32 %1426, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427) #8
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1432 = icmp eq i32 %1426, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %29, align 1, !tbaa !2448
  %1434 = lshr i32 %1426, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1436 = xor i1 %1432, true
  %1437 = icmp eq i8 %1435, 0
  %1438 = and i1 %1437, %1436
  %.v96 = select i1 %1438, i64 129, i64 10
  %1439 = add i64 %1421, %.v96
  store i64 %1439, i64* %PC, align 8, !tbaa !2428
  br i1 %1438, label %block_400e41, label %block_400dca

block_4008db:                                     ; preds = %block_4008a2
  %1440 = add i64 %2762, -8
  %1441 = add i64 %2790, 8
  store i64 %1441, i64* %PC, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = add i32 %1443, 1
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RAX, align 8, !tbaa !2428
  %1446 = icmp eq i32 %1443, -1
  %1447 = icmp eq i32 %1444, 0
  %1448 = or i1 %1446, %1447
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %13, align 1, !tbaa !2432
  %1450 = and i32 %1444, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450) #8
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %20, align 1, !tbaa !2446
  %1455 = xor i32 %1443, %1444
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %26, align 1, !tbaa !2447
  %1459 = zext i1 %1447 to i8
  store i8 %1459, i8* %29, align 1, !tbaa !2448
  %1460 = lshr i32 %1444, 31
  %1461 = trunc i32 %1460 to i8
  store i8 %1461, i8* %32, align 1, !tbaa !2449
  %1462 = lshr i32 %1443, 31
  %1463 = xor i32 %1460, %1462
  %1464 = add nuw nsw i32 %1463, %1460
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %38, align 1, !tbaa !2450
  %1467 = add i64 %2790, 14
  store i64 %1467, i64* %PC, align 8
  store i32 %1444, i32* %1442, align 4
  %1468 = load i64, i64* %PC, align 8
  %1469 = add i64 %1468, -88
  store i64 %1469, i64* %PC, align 8, !tbaa !2428
  br label %block_400891

block_400879:                                     ; preds = %block_40084f
  %1470 = add i64 %2795, -4
  %1471 = add i64 %2824, 7
  store i64 %1471, i64* %PC, align 8
  %1472 = inttoptr i64 %1470 to i32*
  store i32 1, i32* %1472, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400880

block_4011d4:                                     ; preds = %block_401157
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1473 = add i64 %3024, -3556
  %1474 = add i64 %3024, 17
  %1475 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1476 = add i64 %1475, -8
  %1477 = inttoptr i64 %1476 to i64*
  store i64 %1474, i64* %1477, align 8
  store i64 %1476, i64* %RSP, align 8, !tbaa !2428
  store i64 %1473, i64* %PC, align 8, !tbaa !2428
  %1478 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3012)
  %1479 = load i64, i64* %RBP, align 8
  %1480 = add i64 %1479, -20
  %1481 = load i32, i32* %EAX, align 4
  %1482 = load i64, i64* %PC, align 8
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC, align 8
  %1484 = inttoptr i64 %1480 to i32*
  store i32 %1481, i32* %1484, align 4
  %.pre48 = load i64, i64* %PC, align 8
  %.pre49 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  br label %block_4011e8

block_400ad6:                                     ; preds = %block_400acc
  %1485 = add i64 %2508, -4
  %1486 = add i64 %2536, 3
  store i64 %1486, i64* %PC, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX, align 8, !tbaa !2428
  %1490 = add i64 %2508, -8
  %1491 = add i64 %2536, 6
  store i64 %1491, i64* %PC, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RCX, align 8, !tbaa !2428
  %1495 = add i64 %2536, 9
  store i64 %1495, i64* %PC, align 8
  %1496 = load i32, i32* %2511, align 4
  %1497 = shl i32 %1496, 3
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDX, align 8, !tbaa !2428
  %1499 = add i32 %1497, %1493
  %1500 = shl i32 %1499, 3
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RCX, align 8, !tbaa !2428
  %1502 = lshr i32 %1499, 28
  %1503 = and i32 %1502, 1
  %1504 = add i32 %1500, %1488
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX, align 8, !tbaa !2428
  %1506 = icmp ult i32 %1504, %1488
  %1507 = icmp ult i32 %1504, %1500
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %13, align 1, !tbaa !2432
  %1510 = and i32 %1504, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510) #8
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %20, align 1, !tbaa !2446
  %1515 = xor i64 %1501, %1489
  %1516 = trunc i64 %1515 to i32
  %1517 = xor i32 %1516, %1504
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %26, align 1, !tbaa !2447
  %1521 = icmp eq i32 %1504, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %29, align 1, !tbaa !2448
  %1523 = lshr i32 %1504, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %32, align 1, !tbaa !2449
  %1525 = lshr i32 %1488, 31
  %1526 = xor i32 %1523, %1525
  %1527 = xor i32 %1523, %1503
  %1528 = add nuw nsw i32 %1526, %1527
  %1529 = icmp eq i32 %1528, 2
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %38, align 1, !tbaa !2450
  %1531 = sext i32 %1504 to i64
  store i64 %1531, i64* %RSI, align 8, !tbaa !2428
  %1532 = shl nsw i64 %1531, 2
  %1533 = add i64 %1532, add (i64 ptrtoint (%p_type* @p to i64), i64 4096)
  %1534 = add i64 %2536, 33
  store i64 %1534, i64* %PC, align 8
  %1535 = inttoptr i64 %1533 to i32*
  store i32 1, i32* %1535, align 4
  %1536 = load i64, i64* %RBP, align 8
  %1537 = add i64 %1536, -12
  %1538 = load i64, i64* %PC, align 8
  %1539 = add i64 %1538, 3
  store i64 %1539, i64* %PC, align 8
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = add i32 %1541, 1
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX, align 8, !tbaa !2428
  %1544 = icmp eq i32 %1541, -1
  %1545 = icmp eq i32 %1542, 0
  %1546 = or i1 %1544, %1545
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %13, align 1, !tbaa !2432
  %1548 = and i32 %1542, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548) #8
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %20, align 1, !tbaa !2446
  %1553 = xor i32 %1541, %1542
  %1554 = lshr i32 %1553, 4
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %26, align 1, !tbaa !2447
  %1557 = zext i1 %1545 to i8
  store i8 %1557, i8* %29, align 1, !tbaa !2448
  %1558 = lshr i32 %1542, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %32, align 1, !tbaa !2449
  %1560 = lshr i32 %1541, 31
  %1561 = xor i32 %1558, %1560
  %1562 = add nuw nsw i32 %1561, %1558
  %1563 = icmp eq i32 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %38, align 1, !tbaa !2450
  %1565 = add i64 %1538, 9
  store i64 %1565, i64* %PC, align 8
  store i32 %1542, i32* %1540, align 4
  %1566 = load i64, i64* %PC, align 8
  %1567 = add i64 %1566, -52
  store i64 %1567, i64* %PC, align 8, !tbaa !2428
  br label %block_400acc

block_400b52:                                     ; preds = %block_400b48
  %1568 = add i64 %870, -8
  %1569 = add i64 %898, 7
  store i64 %1569, i64* %PC, align 8
  %1570 = inttoptr i64 %1568 to i32*
  store i32 0, i32* %1570, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400b59

block_400ecc:                                     ; preds = %block_400e6f
  %1571 = add i64 %2405, -4
  %1572 = add i64 %2422, 8
  store i64 %1572, i64* %PC, align 8
  %1573 = inttoptr i64 %1571 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = add i32 %1574, 1
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX, align 8, !tbaa !2428
  %1577 = icmp eq i32 %1574, -1
  %1578 = icmp eq i32 %1575, 0
  %1579 = or i1 %1577, %1578
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %13, align 1, !tbaa !2432
  %1581 = and i32 %1575, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581) #8
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %20, align 1, !tbaa !2446
  %1586 = xor i32 %1574, %1575
  %1587 = lshr i32 %1586, 4
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %26, align 1, !tbaa !2447
  %1590 = zext i1 %1578 to i8
  store i8 %1590, i8* %29, align 1, !tbaa !2448
  %1591 = lshr i32 %1575, 31
  %1592 = trunc i32 %1591 to i8
  store i8 %1592, i8* %32, align 1, !tbaa !2449
  %1593 = lshr i32 %1574, 31
  %1594 = xor i32 %1591, %1593
  %1595 = add nuw nsw i32 %1594, %1591
  %1596 = icmp eq i32 %1595, 2
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %38, align 1, !tbaa !2450
  %1598 = add i64 %2422, 14
  store i64 %1598, i64* %PC, align 8
  store i32 %1575, i32* %1573, align 4
  %1599 = load i64, i64* %PC, align 8
  %1600 = add i64 %1599, -124
  store i64 %1600, i64* %PC, align 8, !tbaa !2428
  br label %block_400e5e

block_400926:                                     ; preds = %block_400919
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %1601 = add i64 %2209, -4
  %1602 = add i64 %2238, 14
  store i64 %1602, i64* %PC, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = sext i32 %1604 to i64
  %1606 = shl nsw i64 %1605, 11
  store i64 %1606, i64* %RCX, align 8, !tbaa !2428
  %1607 = lshr i64 %1605, 52
  %1608 = and i64 %1607, 1
  %1609 = add i64 %1606, ptrtoint (%p_type* @p to i64)
  store i64 %1609, i64* %RAX, align 8, !tbaa !2428
  %1610 = icmp ult i64 %1609, ptrtoint (%p_type* @p to i64)
  %1611 = icmp ult i64 %1609, %1606
  %1612 = or i1 %1610, %1611
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %13, align 1, !tbaa !2432
  %1614 = trunc i64 %1609 to i32
  %1615 = and i32 %1614, 240
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615) #8
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %20, align 1, !tbaa !2446
  %1620 = xor i64 %1609, ptrtoint (%p_type* @p to i64)
  %1621 = lshr exact i64 %1620, 4
  %1622 = trunc i64 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %26, align 1, !tbaa !2447
  %1624 = icmp eq i64 %1609, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %29, align 1, !tbaa !2448
  %1626 = lshr i64 %1609, 63
  %1627 = trunc i64 %1626 to i8
  store i8 %1627, i8* %32, align 1, !tbaa !2449
  %1628 = xor i64 %1626, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %1629 = xor i64 %1626, %1608
  %1630 = add nuw nsw i64 %1628, %1629
  %1631 = icmp eq i64 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %38, align 1, !tbaa !2450
  %1633 = add i64 %2238, 25
  store i64 %1633, i64* %PC, align 8
  %1634 = load i32, i32* %2212, align 4
  %1635 = sext i32 %1634 to i64
  store i64 %1635, i64* %RCX, align 8, !tbaa !2428
  %1636 = shl nsw i64 %1635, 2
  %1637 = add i64 %1636, %1609
  %1638 = add i64 %2238, 32
  store i64 %1638, i64* %PC, align 8
  %1639 = inttoptr i64 %1637 to i32*
  store i32 0, i32* %1639, align 4
  %1640 = load i64, i64* %RBP, align 8
  %1641 = add i64 %1640, -16
  %1642 = load i64, i64* %PC, align 8
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC, align 8
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, 1
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RAX, align 8, !tbaa !2428
  %1648 = icmp eq i32 %1645, -1
  %1649 = icmp eq i32 %1646, 0
  %1650 = or i1 %1648, %1649
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %13, align 1, !tbaa !2432
  %1652 = and i32 %1646, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652) #8
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %20, align 1, !tbaa !2446
  %1657 = xor i32 %1645, %1646
  %1658 = lshr i32 %1657, 4
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  store i8 %1660, i8* %26, align 1, !tbaa !2447
  %1661 = zext i1 %1649 to i8
  store i8 %1661, i8* %29, align 1, !tbaa !2448
  %1662 = lshr i32 %1646, 31
  %1663 = trunc i32 %1662 to i8
  store i8 %1663, i8* %32, align 1, !tbaa !2449
  %1664 = lshr i32 %1645, 31
  %1665 = xor i32 %1662, %1664
  %1666 = add nuw nsw i32 %1665, %1662
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %38, align 1, !tbaa !2450
  %1669 = add i64 %1642, 9
  store i64 %1669, i64* %PC, align 8
  store i32 %1646, i32* %1644, align 4
  %1670 = load i64, i64* %PC, align 8
  %1671 = add i64 %1670, -54
  store i64 %1671, i64* %PC, align 8, !tbaa !2428
  br label %block_400919

block_400eb9:                                     ; preds = %block_400e80
  %1672 = add i64 %2424, -8
  %1673 = add i64 %2452, 8
  store i64 %1673, i64* %PC, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = add i32 %1675, 1
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RAX, align 8, !tbaa !2428
  %1678 = icmp eq i32 %1675, -1
  %1679 = icmp eq i32 %1676, 0
  %1680 = or i1 %1678, %1679
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %13, align 1, !tbaa !2432
  %1682 = and i32 %1676, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682) #8
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %20, align 1, !tbaa !2446
  %1687 = xor i32 %1675, %1676
  %1688 = lshr i32 %1687, 4
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  store i8 %1690, i8* %26, align 1, !tbaa !2447
  %1691 = zext i1 %1679 to i8
  store i8 %1691, i8* %29, align 1, !tbaa !2448
  %1692 = lshr i32 %1676, 31
  %1693 = trunc i32 %1692 to i8
  store i8 %1693, i8* %32, align 1, !tbaa !2449
  %1694 = lshr i32 %1675, 31
  %1695 = xor i32 %1692, %1694
  %1696 = add nuw nsw i32 %1695, %1692
  %1697 = icmp eq i32 %1696, 2
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %38, align 1, !tbaa !2450
  %1699 = add i64 %2452, 14
  store i64 %1699, i64* %PC, align 8
  store i32 %1676, i32* %1674, align 4
  %1700 = load i64, i64* %PC, align 8
  %1701 = add i64 %1700, -88
  store i64 %1701, i64* %PC, align 8, !tbaa !2428
  br label %block_400e6f

block_400de2:                                     ; preds = %block_400ddb, %block_400dec
  %1702 = phi i64 [ %.pre32, %block_400ddb ], [ %187, %block_400dec ]
  %1703 = load i64, i64* %RBP, align 8
  %1704 = add i64 %1703, -12
  %1705 = add i64 %1702, 4
  store i64 %1705, i64* %PC, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1708 = and i32 %1707, 255
  %1709 = tail call i32 @llvm.ctpop.i32(i32 %1708) #8
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = xor i8 %1711, 1
  store i8 %1712, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1713 = icmp eq i32 %1707, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %29, align 1, !tbaa !2448
  %1715 = lshr i32 %1707, 31
  %1716 = trunc i32 %1715 to i8
  store i8 %1716, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1717 = xor i1 %1713, true
  %1718 = icmp eq i8 %1716, 0
  %1719 = and i1 %1718, %1717
  %.v99 = select i1 %1719, i64 57, i64 10
  %1720 = add i64 %1702, %.v99
  store i64 %1720, i64* %PC, align 8, !tbaa !2428
  br i1 %1719, label %block_400e1b, label %block_400dec

block_400bc9:                                     ; preds = %block_400b48
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 12) to i32*), align 4
  store i32 25, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 12) to i32*), align 4
  %1721 = add i64 %898, 29
  store i64 %1721, i64* %PC, align 8
  store i32 0, i32* %873, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400be6

block_400cb0:                                     ; preds = %block_400ca6
  %1722 = add i64 %2072, -4
  %1723 = add i64 %2100, 3
  store i64 %1723, i64* %PC, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = zext i32 %1725 to i64
  store i64 %1726, i64* %RAX, align 8, !tbaa !2428
  %1727 = add i64 %2072, -8
  %1728 = add i64 %2100, 6
  store i64 %1728, i64* %PC, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RCX, align 8, !tbaa !2428
  %1732 = add i64 %2100, 9
  store i64 %1732, i64* %PC, align 8
  %1733 = load i32, i32* %2075, align 4
  %1734 = shl i32 %1733, 3
  %1735 = zext i32 %1734 to i64
  store i64 %1735, i64* %RDX, align 8, !tbaa !2428
  %1736 = add i32 %1734, %1730
  %1737 = shl i32 %1736, 3
  %1738 = zext i32 %1737 to i64
  store i64 %1738, i64* %RCX, align 8, !tbaa !2428
  %1739 = lshr i32 %1736, 28
  %1740 = and i32 %1739, 1
  %1741 = add i32 %1737, %1725
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RAX, align 8, !tbaa !2428
  %1743 = icmp ult i32 %1741, %1725
  %1744 = icmp ult i32 %1741, %1737
  %1745 = or i1 %1743, %1744
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %13, align 1, !tbaa !2432
  %1747 = and i32 %1741, 255
  %1748 = tail call i32 @llvm.ctpop.i32(i32 %1747) #8
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = xor i8 %1750, 1
  store i8 %1751, i8* %20, align 1, !tbaa !2446
  %1752 = xor i64 %1738, %1726
  %1753 = trunc i64 %1752 to i32
  %1754 = xor i32 %1753, %1741
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  store i8 %1757, i8* %26, align 1, !tbaa !2447
  %1758 = icmp eq i32 %1741, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %29, align 1, !tbaa !2448
  %1760 = lshr i32 %1741, 31
  %1761 = trunc i32 %1760 to i8
  store i8 %1761, i8* %32, align 1, !tbaa !2449
  %1762 = lshr i32 %1725, 31
  %1763 = xor i32 %1760, %1762
  %1764 = xor i32 %1760, %1740
  %1765 = add nuw nsw i32 %1763, %1764
  %1766 = icmp eq i32 %1765, 2
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %38, align 1, !tbaa !2450
  %1768 = sext i32 %1741 to i64
  store i64 %1768, i64* %RSI, align 8, !tbaa !2428
  %1769 = shl nsw i64 %1768, 2
  %1770 = add i64 %1769, add (i64 ptrtoint (%p_type* @p to i64), i64 10240)
  %1771 = add i64 %2100, 33
  store i64 %1771, i64* %PC, align 8
  %1772 = inttoptr i64 %1770 to i32*
  store i32 1, i32* %1772, align 4
  %1773 = load i64, i64* %RBP, align 8
  %1774 = add i64 %1773, -12
  %1775 = load i64, i64* %PC, align 8
  %1776 = add i64 %1775, 3
  store i64 %1776, i64* %PC, align 8
  %1777 = inttoptr i64 %1774 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = add i32 %1778, 1
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RAX, align 8, !tbaa !2428
  %1781 = icmp eq i32 %1778, -1
  %1782 = icmp eq i32 %1779, 0
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %13, align 1, !tbaa !2432
  %1785 = and i32 %1779, 255
  %1786 = tail call i32 @llvm.ctpop.i32(i32 %1785) #8
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %20, align 1, !tbaa !2446
  %1790 = xor i32 %1778, %1779
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %26, align 1, !tbaa !2447
  %1794 = zext i1 %1782 to i8
  store i8 %1794, i8* %29, align 1, !tbaa !2448
  %1795 = lshr i32 %1779, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %32, align 1, !tbaa !2449
  %1797 = lshr i32 %1778, 31
  %1798 = xor i32 %1795, %1797
  %1799 = add nuw nsw i32 %1798, %1795
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %38, align 1, !tbaa !2450
  %1802 = add i64 %1775, 9
  store i64 %1802, i64* %PC, align 8
  store i32 %1779, i32* %1777, align 4
  %1803 = load i64, i64* %PC, align 8
  %1804 = add i64 %1803, -52
  store i64 %1804, i64* %PC, align 8, !tbaa !2428
  br label %block_400ca6

block_400ac5:                                     ; preds = %block_400abb
  %1805 = add i64 %2732, -12
  %1806 = add i64 %2760, 7
  store i64 %1806, i64* %PC, align 8
  %1807 = inttoptr i64 %1805 to i32*
  store i32 0, i32* %1807, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_400acc

block_4008ac:                                     ; preds = %block_4008a2
  %1808 = add i64 %2762, -4
  %1809 = add i64 %2790, 3
  store i64 %1809, i64* %PC, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %RAX, align 8, !tbaa !2428
  %1813 = add i64 %2762, -8
  %1814 = add i64 %2790, 6
  store i64 %1814, i64* %PC, align 8
  %1815 = inttoptr i64 %1813 to i32*
  %1816 = load i32, i32* %1815, align 4
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RCX, align 8, !tbaa !2428
  %1818 = add i64 %2790, 9
  store i64 %1818, i64* %PC, align 8
  %1819 = load i32, i32* %2765, align 4
  %1820 = shl i32 %1819, 3
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RDX, align 8, !tbaa !2428
  %1822 = add i32 %1820, %1816
  %1823 = shl i32 %1822, 3
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %RCX, align 8, !tbaa !2428
  %1825 = lshr i32 %1822, 28
  %1826 = and i32 %1825, 1
  %1827 = add i32 %1823, %1811
  %1828 = zext i32 %1827 to i64
  store i64 %1828, i64* %RAX, align 8, !tbaa !2428
  %1829 = icmp ult i32 %1827, %1811
  %1830 = icmp ult i32 %1827, %1823
  %1831 = or i1 %1829, %1830
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %13, align 1, !tbaa !2432
  %1833 = and i32 %1827, 255
  %1834 = tail call i32 @llvm.ctpop.i32(i32 %1833) #8
  %1835 = trunc i32 %1834 to i8
  %1836 = and i8 %1835, 1
  %1837 = xor i8 %1836, 1
  store i8 %1837, i8* %20, align 1, !tbaa !2446
  %1838 = xor i64 %1824, %1812
  %1839 = trunc i64 %1838 to i32
  %1840 = xor i32 %1839, %1827
  %1841 = lshr i32 %1840, 4
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %26, align 1, !tbaa !2447
  %1844 = icmp eq i32 %1827, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %29, align 1, !tbaa !2448
  %1846 = lshr i32 %1827, 31
  %1847 = trunc i32 %1846 to i8
  store i8 %1847, i8* %32, align 1, !tbaa !2449
  %1848 = lshr i32 %1811, 31
  %1849 = xor i32 %1846, %1848
  %1850 = xor i32 %1846, %1826
  %1851 = add nuw nsw i32 %1849, %1850
  %1852 = icmp eq i32 %1851, 2
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %38, align 1, !tbaa !2450
  %1854 = sext i32 %1827 to i64
  store i64 %1854, i64* %RSI, align 8, !tbaa !2428
  %1855 = shl nsw i64 %1854, 2
  %1856 = add i64 %1855, ptrtoint (%puzzl_type* @puzzl to i64)
  %1857 = add i64 %2790, 33
  store i64 %1857, i64* %PC, align 8
  %1858 = inttoptr i64 %1856 to i32*
  store i32 0, i32* %1858, align 4
  %1859 = load i64, i64* %RBP, align 8
  %1860 = add i64 %1859, -12
  %1861 = load i64, i64* %PC, align 8
  %1862 = add i64 %1861, 3
  store i64 %1862, i64* %PC, align 8
  %1863 = inttoptr i64 %1860 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = add i32 %1864, 1
  %1866 = zext i32 %1865 to i64
  store i64 %1866, i64* %RAX, align 8, !tbaa !2428
  %1867 = icmp eq i32 %1864, -1
  %1868 = icmp eq i32 %1865, 0
  %1869 = or i1 %1867, %1868
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %13, align 1, !tbaa !2432
  %1871 = and i32 %1865, 255
  %1872 = tail call i32 @llvm.ctpop.i32(i32 %1871) #8
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  store i8 %1875, i8* %20, align 1, !tbaa !2446
  %1876 = xor i32 %1864, %1865
  %1877 = lshr i32 %1876, 4
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  store i8 %1879, i8* %26, align 1, !tbaa !2447
  %1880 = zext i1 %1868 to i8
  store i8 %1880, i8* %29, align 1, !tbaa !2448
  %1881 = lshr i32 %1865, 31
  %1882 = trunc i32 %1881 to i8
  store i8 %1882, i8* %32, align 1, !tbaa !2449
  %1883 = lshr i32 %1864, 31
  %1884 = xor i32 %1881, %1883
  %1885 = add nuw nsw i32 %1884, %1881
  %1886 = icmp eq i32 %1885, 2
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %38, align 1, !tbaa !2450
  %1888 = add i64 %1861, 9
  store i64 %1888, i64* %PC, align 8
  store i32 %1865, i32* %1863, align 4
  %1889 = load i64, i64* %PC, align 8
  %1890 = add i64 %1889, -52
  store i64 %1890, i64* %PC, align 8, !tbaa !2428
  br label %block_4008a2

block_400d2c:                                     ; preds = %block_400d22
  %1891 = add i64 %1038, -8
  %1892 = add i64 %1066, 7
  store i64 %1892, i64* %PC, align 8
  %1893 = inttoptr i64 %1891 to i32*
  store i32 0, i32* %1893, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400d33

block_40101b:                                     ; preds = %block_400f9a
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 40) to i32*), align 8
  store i32 65, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 40) to i32*), align 8
  %1894 = add i64 %407, 29
  store i64 %1894, i64* %PC, align 8
  store i32 0, i32* %382, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_401038

block_400c9f:                                     ; preds = %block_400c95
  %1895 = add i64 %2012, -12
  %1896 = add i64 %2040, 7
  store i64 %1896, i64* %PC, align 8
  %1897 = inttoptr i64 %1895 to i32*
  store i32 0, i32* %1897, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400ca6

block_40099a:                                     ; preds = %block_400990
  %1898 = add i64 %936, -4
  %1899 = add i64 %953, 3
  store i64 %1899, i64* %PC, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = zext i32 %1901 to i64
  store i64 %1902, i64* %RAX, align 8, !tbaa !2428
  %1903 = add i64 %936, -8
  %1904 = add i64 %953, 6
  store i64 %1904, i64* %PC, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RCX, align 8, !tbaa !2428
  %1908 = add i64 %953, 9
  store i64 %1908, i64* %PC, align 8
  %1909 = load i32, i32* %939, align 4
  %1910 = shl i32 %1909, 3
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RDX, align 8, !tbaa !2428
  %1912 = add i32 %1910, %1906
  %1913 = shl i32 %1912, 3
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RCX, align 8, !tbaa !2428
  %1915 = lshr i32 %1912, 28
  %1916 = and i32 %1915, 1
  %1917 = add i32 %1913, %1901
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RAX, align 8, !tbaa !2428
  %1919 = icmp ult i32 %1917, %1901
  %1920 = icmp ult i32 %1917, %1913
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %13, align 1, !tbaa !2432
  %1923 = and i32 %1917, 255
  %1924 = tail call i32 @llvm.ctpop.i32(i32 %1923) #8
  %1925 = trunc i32 %1924 to i8
  %1926 = and i8 %1925, 1
  %1927 = xor i8 %1926, 1
  store i8 %1927, i8* %20, align 1, !tbaa !2446
  %1928 = xor i64 %1914, %1902
  %1929 = trunc i64 %1928 to i32
  %1930 = xor i32 %1929, %1917
  %1931 = lshr i32 %1930, 4
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  store i8 %1933, i8* %26, align 1, !tbaa !2447
  %1934 = icmp eq i32 %1917, 0
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %29, align 1, !tbaa !2448
  %1936 = lshr i32 %1917, 31
  %1937 = trunc i32 %1936 to i8
  store i8 %1937, i8* %32, align 1, !tbaa !2449
  %1938 = lshr i32 %1901, 31
  %1939 = xor i32 %1936, %1938
  %1940 = xor i32 %1936, %1916
  %1941 = add nuw nsw i32 %1939, %1940
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %38, align 1, !tbaa !2450
  %1944 = sext i32 %1917 to i64
  store i64 %1944, i64* %RSI, align 8, !tbaa !2428
  %1945 = shl nsw i64 %1944, 2
  %1946 = add i64 %1945, ptrtoint (%p_type* @p to i64)
  %1947 = add i64 %953, 33
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1946 to i32*
  store i32 1, i32* %1948, align 4
  %1949 = load i64, i64* %RBP, align 8
  %1950 = add i64 %1949, -12
  %1951 = load i64, i64* %PC, align 8
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %PC, align 8
  %1953 = inttoptr i64 %1950 to i32*
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
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961) #8
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %20, align 1, !tbaa !2446
  %1966 = xor i32 %1954, %1955
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
  %1978 = add i64 %1951, 9
  store i64 %1978, i64* %PC, align 8
  store i32 %1955, i32* %1953, align 4
  %1979 = load i64, i64* %PC, align 8
  %1980 = add i64 %1979, -52
  store i64 %1980, i64* %PC, align 8, !tbaa !2428
  br label %block_400990

block_4009c9:                                     ; preds = %block_400990
  %1981 = add i64 %936, -8
  %1982 = add i64 %953, 8
  store i64 %1982, i64* %PC, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = add i32 %1984, 1
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RAX, align 8, !tbaa !2428
  %1987 = icmp eq i32 %1984, -1
  %1988 = icmp eq i32 %1985, 0
  %1989 = or i1 %1987, %1988
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %13, align 1, !tbaa !2432
  %1991 = and i32 %1985, 255
  %1992 = tail call i32 @llvm.ctpop.i32(i32 %1991) #8
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %20, align 1, !tbaa !2446
  %1996 = xor i32 %1984, %1985
  %1997 = lshr i32 %1996, 4
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  store i8 %1999, i8* %26, align 1, !tbaa !2447
  %2000 = zext i1 %1988 to i8
  store i8 %2000, i8* %29, align 1, !tbaa !2448
  %2001 = lshr i32 %1985, 31
  %2002 = trunc i32 %2001 to i8
  store i8 %2002, i8* %32, align 1, !tbaa !2449
  %2003 = lshr i32 %1984, 31
  %2004 = xor i32 %2001, %2003
  %2005 = add nuw nsw i32 %2004, %2001
  %2006 = icmp eq i32 %2005, 2
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %38, align 1, !tbaa !2450
  %2008 = add i64 %953, 14
  store i64 %2008, i64* %PC, align 8
  store i32 %1985, i32* %1983, align 4
  %2009 = load i64, i64* %PC, align 8
  %2010 = add i64 %2009, -88
  store i64 %2010, i64* %PC, align 8, !tbaa !2428
  br label %block_40097f

block_400c95:                                     ; preds = %block_400c8e, %block_400cdf
  %2011 = phi i64 [ %.pre25, %block_400c8e ], [ %1420, %block_400cdf ]
  %2012 = load i64, i64* %RBP, align 8
  %2013 = add i64 %2012, -8
  %2014 = add i64 %2011, 4
  store i64 %2014, i64* %PC, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = add i32 %2016, -1
  %2018 = icmp eq i32 %2016, 0
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %13, align 1, !tbaa !2432
  %2020 = and i32 %2017, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020) #8
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %20, align 1, !tbaa !2446
  %2025 = xor i32 %2016, %2017
  %2026 = lshr i32 %2025, 4
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  store i8 %2028, i8* %26, align 1, !tbaa !2447
  %2029 = icmp eq i32 %2017, 0
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %29, align 1, !tbaa !2448
  %2031 = lshr i32 %2017, 31
  %2032 = trunc i32 %2031 to i8
  store i8 %2032, i8* %32, align 1, !tbaa !2449
  %2033 = lshr i32 %2016, 31
  %2034 = xor i32 %2031, %2033
  %2035 = add nuw nsw i32 %2034, %2033
  %2036 = icmp eq i32 %2035, 2
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %38, align 1, !tbaa !2450
  %2038 = icmp ne i8 %2032, 0
  %2039 = xor i1 %2038, %2036
  %.demorgan88 = or i1 %2029, %2039
  %.v89 = select i1 %.demorgan88, i64 10, i64 93
  %2040 = add i64 %2011, %.v89
  store i64 %2040, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan88, label %block_400c9f, label %block_400cf2

block_401093:                                     ; preds = %block_40105a
  %2041 = add i64 %2641, -8
  %2042 = add i64 %2669, 8
  store i64 %2042, i64* %PC, align 8
  %2043 = inttoptr i64 %2041 to i32*
  %2044 = load i32, i32* %2043, align 4
  %2045 = add i32 %2044, 1
  %2046 = zext i32 %2045 to i64
  store i64 %2046, i64* %RAX, align 8, !tbaa !2428
  %2047 = icmp eq i32 %2044, -1
  %2048 = icmp eq i32 %2045, 0
  %2049 = or i1 %2047, %2048
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %13, align 1, !tbaa !2432
  %2051 = and i32 %2045, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051) #8
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %20, align 1, !tbaa !2446
  %2056 = xor i32 %2044, %2045
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %26, align 1, !tbaa !2447
  %2060 = zext i1 %2048 to i8
  store i8 %2060, i8* %29, align 1, !tbaa !2448
  %2061 = lshr i32 %2045, 31
  %2062 = trunc i32 %2061 to i8
  store i8 %2062, i8* %32, align 1, !tbaa !2449
  %2063 = lshr i32 %2044, 31
  %2064 = xor i32 %2061, %2063
  %2065 = add nuw nsw i32 %2064, %2061
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %38, align 1, !tbaa !2450
  %2068 = add i64 %2669, 14
  store i64 %2068, i64* %PC, align 8
  store i32 %2045, i32* %2043, align 4
  %2069 = load i64, i64* %PC, align 8
  %2070 = add i64 %2069, -88
  store i64 %2070, i64* %PC, align 8, !tbaa !2428
  br label %block_401049

block_400ca6:                                     ; preds = %block_400c9f, %block_400cb0
  %2071 = phi i64 [ %.pre26, %block_400c9f ], [ %1804, %block_400cb0 ]
  %2072 = load i64, i64* %RBP, align 8
  %2073 = add i64 %2072, -12
  %2074 = add i64 %2071, 4
  store i64 %2074, i64* %PC, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = add i32 %2076, -3
  %2078 = icmp ult i32 %2076, 3
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %13, align 1, !tbaa !2432
  %2080 = and i32 %2077, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080) #8
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %20, align 1, !tbaa !2446
  %2085 = xor i32 %2076, %2077
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %26, align 1, !tbaa !2447
  %2089 = icmp eq i32 %2077, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %29, align 1, !tbaa !2448
  %2091 = lshr i32 %2077, 31
  %2092 = trunc i32 %2091 to i8
  store i8 %2092, i8* %32, align 1, !tbaa !2449
  %2093 = lshr i32 %2076, 31
  %2094 = xor i32 %2091, %2093
  %2095 = add nuw nsw i32 %2094, %2093
  %2096 = icmp eq i32 %2095, 2
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %38, align 1, !tbaa !2450
  %2098 = icmp ne i8 %2092, 0
  %2099 = xor i1 %2098, %2096
  %.demorgan90 = or i1 %2089, %2099
  %.v91 = select i1 %.demorgan90, i64 10, i64 57
  %2100 = add i64 %2071, %.v91
  store i64 %2100, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan90, label %block_400cb0, label %block_400cdf

block_400a8d:                                     ; preds = %block_400a0c
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 4) to i32*), align 4
  store i32 193, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 4) to i32*), align 4
  %2101 = add i64 %3600, 29
  store i64 %2101, i64* %PC, align 8
  store i32 0, i32* %3575, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400aaa

block_40088a:                                     ; preds = %block_400880
  %2102 = add i64 %2179, -8
  %2103 = add i64 %2207, 7
  store i64 %2103, i64* %PC, align 8
  %2104 = inttoptr i64 %2102 to i32*
  store i32 1, i32* %2104, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400891

block_400b18:                                     ; preds = %block_400abb
  %2105 = add i64 %2732, -4
  %2106 = add i64 %2760, 8
  store i64 %2106, i64* %PC, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = add i32 %2108, 1
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RAX, align 8, !tbaa !2428
  %2111 = icmp eq i32 %2108, -1
  %2112 = icmp eq i32 %2109, 0
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %13, align 1, !tbaa !2432
  %2115 = and i32 %2109, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115) #8
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %20, align 1, !tbaa !2446
  %2120 = xor i32 %2108, %2109
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %26, align 1, !tbaa !2447
  %2124 = zext i1 %2112 to i8
  store i8 %2124, i8* %29, align 1, !tbaa !2448
  %2125 = lshr i32 %2109, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %32, align 1, !tbaa !2449
  %2127 = lshr i32 %2108, 31
  %2128 = xor i32 %2125, %2127
  %2129 = add nuw nsw i32 %2128, %2125
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %38, align 1, !tbaa !2450
  %2132 = add i64 %2760, 14
  store i64 %2132, i64* %PC, align 8
  store i32 %2109, i32* %2107, align 4
  %2133 = load i64, i64* %PC, align 8
  %2134 = add i64 %2133, -124
  store i64 %2134, i64* %PC, align 8, !tbaa !2428
  br label %block_400aaa

block_401216:                                     ; preds = %block_4011e8
  %2135 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %2136 = add i32 %2135, -2005
  %2137 = icmp ult i32 %2135, 2005
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %13, align 1, !tbaa !2432
  %2139 = and i32 %2136, 255
  %2140 = tail call i32 @llvm.ctpop.i32(i32 %2139) #8
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %20, align 1, !tbaa !2446
  %2144 = xor i32 %2135, 16
  %2145 = xor i32 %2144, %2136
  %2146 = lshr i32 %2145, 4
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  store i8 %2148, i8* %26, align 1, !tbaa !2447
  %2149 = icmp eq i32 %2136, 0
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %29, align 1, !tbaa !2448
  %2151 = lshr i32 %2136, 31
  %2152 = trunc i32 %2151 to i8
  store i8 %2152, i8* %32, align 1, !tbaa !2449
  %2153 = lshr i32 %2135, 31
  %2154 = xor i32 %2151, %2153
  %2155 = add nuw nsw i32 %2154, %2153
  %2156 = icmp eq i32 %2155, 2
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %38, align 1, !tbaa !2450
  %.v127 = select i1 %2149, i64 37, i64 17
  %2158 = add i64 %208, %.v127
  store i64 %2158, i64* %PC, align 8, !tbaa !2428
  br i1 %2149, label %block_40123b, label %block_401227

block_400c84:                                     ; preds = %block_400c67, %block_400cf2
  %2159 = phi i64 [ %.pre24, %block_400c67 ], [ %1299, %block_400cf2 ]
  %2160 = load i64, i64* %RBP, align 8
  %2161 = add i64 %2160, -4
  %2162 = add i64 %2159, 4
  store i64 %2162, i64* %PC, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2165 = and i32 %2164, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165) #8
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2170 = icmp eq i32 %2164, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %29, align 1, !tbaa !2448
  %2172 = lshr i32 %2164, 31
  %2173 = trunc i32 %2172 to i8
  store i8 %2173, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2174 = xor i1 %2170, true
  %2175 = icmp eq i8 %2173, 0
  %2176 = and i1 %2175, %2174
  %.v87 = select i1 %2176, i64 129, i64 10
  %2177 = add i64 %2159, %.v87
  store i64 %2177, i64* %PC, align 8, !tbaa !2428
  br i1 %2176, label %block_400d05, label %block_400c8e

block_400880:                                     ; preds = %block_400879, %block_4008ee
  %2178 = phi i64 [ %.pre4, %block_400879 ], [ %1329, %block_4008ee ]
  %2179 = load i64, i64* %RBP, align 8
  %2180 = add i64 %2179, -4
  %2181 = add i64 %2178, 4
  store i64 %2181, i64* %PC, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = add i32 %2183, -5
  %2185 = icmp ult i32 %2183, 5
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %13, align 1, !tbaa !2432
  %2187 = and i32 %2184, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187) #8
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %20, align 1, !tbaa !2446
  %2192 = xor i32 %2183, %2184
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  store i8 %2195, i8* %26, align 1, !tbaa !2447
  %2196 = icmp eq i32 %2184, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %29, align 1, !tbaa !2448
  %2198 = lshr i32 %2184, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %32, align 1, !tbaa !2449
  %2200 = lshr i32 %2183, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2200
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %38, align 1, !tbaa !2450
  %2205 = icmp ne i8 %2199, 0
  %2206 = xor i1 %2205, %2203
  %.demorgan52 = or i1 %2196, %2206
  %.v53 = select i1 %.demorgan52, i64 10, i64 129
  %2207 = add i64 %2178, %.v53
  store i64 %2207, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan52, label %block_40088a, label %block_400901

block_400919:                                     ; preds = %block_400926, %block_400912
  %2208 = phi i64 [ %1671, %block_400926 ], [ %.pre8, %block_400912 ]
  %2209 = load i64, i64* %RBP, align 8
  %2210 = add i64 %2209, -16
  %2211 = add i64 %2208, 7
  store i64 %2211, i64* %PC, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = add i32 %2213, -511
  %2215 = icmp ult i32 %2213, 511
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %13, align 1, !tbaa !2432
  %2217 = and i32 %2214, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217) #8
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %20, align 1, !tbaa !2446
  %2222 = xor i32 %2213, 16
  %2223 = xor i32 %2222, %2214
  %2224 = lshr i32 %2223, 4
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  store i8 %2226, i8* %26, align 1, !tbaa !2447
  %2227 = icmp eq i32 %2214, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %29, align 1, !tbaa !2448
  %2229 = lshr i32 %2214, 31
  %2230 = trunc i32 %2229 to i8
  store i8 %2230, i8* %32, align 1, !tbaa !2449
  %2231 = lshr i32 %2213, 31
  %2232 = xor i32 %2229, %2231
  %2233 = add nuw nsw i32 %2232, %2231
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %38, align 1, !tbaa !2450
  %2236 = icmp ne i8 %2230, 0
  %2237 = xor i1 %2236, %2234
  %.demorgan60 = or i1 %2227, %2237
  %.v61 = select i1 %.demorgan60, i64 13, i64 59
  %2238 = add i64 %2208, %.v61
  store i64 %2238, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan60, label %block_400926, label %block_400954

block_401102:                                     ; preds = %block_4010f8
  %2239 = add i64 %1238, -4
  %2240 = add i64 %1266, 3
  store i64 %2240, i64* %PC, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RAX, align 8, !tbaa !2428
  %2244 = add i64 %1238, -8
  %2245 = add i64 %1266, 6
  store i64 %2245, i64* %PC, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RCX, align 8, !tbaa !2428
  %2249 = add i64 %1266, 9
  store i64 %2249, i64* %PC, align 8
  %2250 = load i32, i32* %1241, align 4
  %2251 = shl i32 %2250, 3
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RDX, align 8, !tbaa !2428
  %2253 = add i32 %2251, %2247
  %2254 = shl i32 %2253, 3
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RCX, align 8, !tbaa !2428
  %2256 = lshr i32 %2253, 28
  %2257 = and i32 %2256, 1
  %2258 = add i32 %2254, %2242
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RAX, align 8, !tbaa !2428
  %2260 = icmp ult i32 %2258, %2242
  %2261 = icmp ult i32 %2258, %2254
  %2262 = or i1 %2260, %2261
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %13, align 1, !tbaa !2432
  %2264 = and i32 %2258, 255
  %2265 = tail call i32 @llvm.ctpop.i32(i32 %2264) #8
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = xor i8 %2267, 1
  store i8 %2268, i8* %20, align 1, !tbaa !2446
  %2269 = xor i64 %2255, %2243
  %2270 = trunc i64 %2269 to i32
  %2271 = xor i32 %2270, %2258
  %2272 = lshr i32 %2271, 4
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  store i8 %2274, i8* %26, align 1, !tbaa !2447
  %2275 = icmp eq i32 %2258, 0
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %29, align 1, !tbaa !2448
  %2277 = lshr i32 %2258, 31
  %2278 = trunc i32 %2277 to i8
  store i8 %2278, i8* %32, align 1, !tbaa !2449
  %2279 = lshr i32 %2242, 31
  %2280 = xor i32 %2277, %2279
  %2281 = xor i32 %2277, %2257
  %2282 = add nuw nsw i32 %2280, %2281
  %2283 = icmp eq i32 %2282, 2
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %38, align 1, !tbaa !2450
  %2285 = sext i32 %2258 to i64
  store i64 %2285, i64* %RSI, align 8, !tbaa !2428
  %2286 = shl nsw i64 %2285, 2
  %2287 = add i64 %2286, add (i64 ptrtoint (%p_type* @p to i64), i64 24576)
  %2288 = add i64 %1266, 33
  store i64 %2288, i64* %PC, align 8
  %2289 = inttoptr i64 %2287 to i32*
  store i32 1, i32* %2289, align 4
  %2290 = load i64, i64* %RBP, align 8
  %2291 = add i64 %2290, -12
  %2292 = load i64, i64* %PC, align 8
  %2293 = add i64 %2292, 3
  store i64 %2293, i64* %PC, align 8
  %2294 = inttoptr i64 %2291 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = add i32 %2295, 1
  %2297 = zext i32 %2296 to i64
  store i64 %2297, i64* %RAX, align 8, !tbaa !2428
  %2298 = icmp eq i32 %2295, -1
  %2299 = icmp eq i32 %2296, 0
  %2300 = or i1 %2298, %2299
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %13, align 1, !tbaa !2432
  %2302 = and i32 %2296, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302) #8
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %20, align 1, !tbaa !2446
  %2307 = xor i32 %2295, %2296
  %2308 = lshr i32 %2307, 4
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %26, align 1, !tbaa !2447
  %2311 = zext i1 %2299 to i8
  store i8 %2311, i8* %29, align 1, !tbaa !2448
  %2312 = lshr i32 %2296, 31
  %2313 = trunc i32 %2312 to i8
  store i8 %2313, i8* %32, align 1, !tbaa !2449
  %2314 = lshr i32 %2295, 31
  %2315 = xor i32 %2312, %2314
  %2316 = add nuw nsw i32 %2315, %2312
  %2317 = icmp eq i32 %2316, 2
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %38, align 1, !tbaa !2450
  %2319 = add i64 %2292, 9
  store i64 %2319, i64* %PC, align 8
  store i32 %2296, i32* %2294, align 4
  %2320 = load i64, i64* %PC, align 8
  %2321 = add i64 %2320, -52
  store i64 %2321, i64* %PC, align 8, !tbaa !2428
  br label %block_4010f8

block_400b6a:                                     ; preds = %block_400b63, %block_400b74
  %2322 = phi i64 [ %.pre20, %block_400b63 ], [ %616, %block_400b74 ]
  %2323 = load i64, i64* %RBP, align 8
  %2324 = add i64 %2323, -12
  %2325 = add i64 %2322, 4
  store i64 %2325, i64* %PC, align 8
  %2326 = inttoptr i64 %2324 to i32*
  %2327 = load i32, i32* %2326, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2328 = and i32 %2327, 255
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328) #8
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2333 = icmp eq i32 %2327, 0
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %29, align 1, !tbaa !2448
  %2335 = lshr i32 %2327, 31
  %2336 = trunc i32 %2335 to i8
  store i8 %2336, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2337 = xor i1 %2333, true
  %2338 = icmp eq i8 %2336, 0
  %2339 = and i1 %2338, %2337
  %.v81 = select i1 %2339, i64 57, i64 10
  %2340 = add i64 %2322, %.v81
  store i64 %2340, i64* %PC, align 8, !tbaa !2428
  br i1 %2339, label %block_400ba3, label %block_400b74

block_400a7a:                                     ; preds = %block_400a1d
  %2341 = add i64 %3329, -4
  %2342 = add i64 %3346, 8
  store i64 %2342, i64* %PC, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = add i32 %2344, 1
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RAX, align 8, !tbaa !2428
  %2347 = icmp eq i32 %2344, -1
  %2348 = icmp eq i32 %2345, 0
  %2349 = or i1 %2347, %2348
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %13, align 1, !tbaa !2432
  %2351 = and i32 %2345, 255
  %2352 = tail call i32 @llvm.ctpop.i32(i32 %2351) #8
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  store i8 %2355, i8* %20, align 1, !tbaa !2446
  %2356 = xor i32 %2344, %2345
  %2357 = lshr i32 %2356, 4
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  store i8 %2359, i8* %26, align 1, !tbaa !2447
  %2360 = zext i1 %2348 to i8
  store i8 %2360, i8* %29, align 1, !tbaa !2448
  %2361 = lshr i32 %2345, 31
  %2362 = trunc i32 %2361 to i8
  store i8 %2362, i8* %32, align 1, !tbaa !2449
  %2363 = lshr i32 %2344, 31
  %2364 = xor i32 %2361, %2363
  %2365 = add nuw nsw i32 %2364, %2361
  %2366 = icmp eq i32 %2365, 2
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %38, align 1, !tbaa !2450
  %2368 = add i64 %3346, 14
  store i64 %2368, i64* %PC, align 8
  store i32 %2345, i32* %2343, align 4
  %2369 = load i64, i64* %PC, align 8
  %2370 = add i64 %2369, -124
  store i64 %2370, i64* %PC, align 8, !tbaa !2428
  br label %block_400a0c

block_400e79:                                     ; preds = %block_400e6f
  %2371 = add i64 %2405, -12
  %2372 = add i64 %2422, 7
  store i64 %2372, i64* %PC, align 8
  %2373 = inttoptr i64 %2371 to i32*
  store i32 0, i32* %2373, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400e80

block_400ba3:                                     ; preds = %block_400b6a
  %2374 = add i64 %2323, -8
  %2375 = add i64 %2340, 8
  store i64 %2375, i64* %PC, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = add i32 %2377, 1
  %2379 = zext i32 %2378 to i64
  store i64 %2379, i64* %RAX, align 8, !tbaa !2428
  %2380 = icmp eq i32 %2377, -1
  %2381 = icmp eq i32 %2378, 0
  %2382 = or i1 %2380, %2381
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %13, align 1, !tbaa !2432
  %2384 = and i32 %2378, 255
  %2385 = tail call i32 @llvm.ctpop.i32(i32 %2384) #8
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %20, align 1, !tbaa !2446
  %2389 = xor i32 %2377, %2378
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %26, align 1, !tbaa !2447
  %2393 = zext i1 %2381 to i8
  store i8 %2393, i8* %29, align 1, !tbaa !2448
  %2394 = lshr i32 %2378, 31
  %2395 = trunc i32 %2394 to i8
  store i8 %2395, i8* %32, align 1, !tbaa !2449
  %2396 = lshr i32 %2377, 31
  %2397 = xor i32 %2394, %2396
  %2398 = add nuw nsw i32 %2397, %2394
  %2399 = icmp eq i32 %2398, 2
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %38, align 1, !tbaa !2450
  %2401 = add i64 %2340, 14
  store i64 %2401, i64* %PC, align 8
  store i32 %2378, i32* %2376, align 4
  %2402 = load i64, i64* %PC, align 8
  %2403 = add i64 %2402, -88
  store i64 %2403, i64* %PC, align 8, !tbaa !2428
  br label %block_400b59

block_400e6f:                                     ; preds = %block_400e68, %block_400eb9
  %2404 = phi i64 [ %.pre34, %block_400e68 ], [ %1701, %block_400eb9 ]
  %2405 = load i64, i64* %RBP, align 8
  %2406 = add i64 %2405, -8
  %2407 = add i64 %2404, 4
  store i64 %2407, i64* %PC, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2410 = and i32 %2409, 255
  %2411 = tail call i32 @llvm.ctpop.i32(i32 %2410) #8
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  store i8 %2414, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2415 = icmp eq i32 %2409, 0
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %29, align 1, !tbaa !2448
  %2417 = lshr i32 %2409, 31
  %2418 = trunc i32 %2417 to i8
  store i8 %2418, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2419 = xor i1 %2415, true
  %2420 = icmp eq i8 %2418, 0
  %2421 = and i1 %2420, %2419
  %.v101 = select i1 %2421, i64 93, i64 10
  %2422 = add i64 %2404, %.v101
  store i64 %2422, i64* %PC, align 8, !tbaa !2428
  br i1 %2421, label %block_400ecc, label %block_400e79

block_400e80:                                     ; preds = %block_400e79, %block_400e8a
  %2423 = phi i64 [ %.pre35, %block_400e79 ], [ %868, %block_400e8a ]
  %2424 = load i64, i64* %RBP, align 8
  %2425 = add i64 %2424, -12
  %2426 = add i64 %2423, 4
  store i64 %2426, i64* %PC, align 8
  %2427 = inttoptr i64 %2425 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = add i32 %2428, -2
  %2430 = icmp ult i32 %2428, 2
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %13, align 1, !tbaa !2432
  %2432 = and i32 %2429, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432) #8
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %20, align 1, !tbaa !2446
  %2437 = xor i32 %2428, %2429
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %26, align 1, !tbaa !2447
  %2441 = icmp eq i32 %2429, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %29, align 1, !tbaa !2448
  %2443 = lshr i32 %2429, 31
  %2444 = trunc i32 %2443 to i8
  store i8 %2444, i8* %32, align 1, !tbaa !2449
  %2445 = lshr i32 %2428, 31
  %2446 = xor i32 %2443, %2445
  %2447 = add nuw nsw i32 %2446, %2445
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %38, align 1, !tbaa !2450
  %2450 = icmp ne i8 %2444, 0
  %2451 = xor i1 %2450, %2448
  %.demorgan102 = or i1 %2441, %2451
  %.v103 = select i1 %.demorgan102, i64 10, i64 57
  %2452 = add i64 %2423, %.v103
  store i64 %2452, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan102, label %block_400e8a, label %block_400eb9

block_400c67:                                     ; preds = %block_400be6
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 16) to i32*), align 16
  store i32 67, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 16) to i32*), align 16
  %2453 = add i64 %238, 29
  store i64 %2453, i64* %PC, align 8
  store i32 0, i32* %213, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400c84

block_400e68:                                     ; preds = %block_400e5e
  %2454 = add i64 %2621, -8
  %2455 = add i64 %2638, 7
  store i64 %2455, i64* %PC, align 8
  %2456 = inttoptr i64 %2454 to i32*
  store i32 0, i32* %2456, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400e6f

block_400d33:                                     ; preds = %block_400d7d, %block_400d2c
  %2457 = phi i64 [ %2854, %block_400d7d ], [ %.pre28, %block_400d2c ]
  %2458 = load i64, i64* %RBP, align 8
  %2459 = add i64 %2458, -8
  %2460 = add i64 %2457, 4
  store i64 %2460, i64* %PC, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2463 = and i32 %2462, 255
  %2464 = tail call i32 @llvm.ctpop.i32(i32 %2463) #8
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2468 = icmp eq i32 %2462, 0
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %29, align 1, !tbaa !2448
  %2470 = lshr i32 %2462, 31
  %2471 = trunc i32 %2470 to i8
  store i8 %2471, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2472 = xor i1 %2468, true
  %2473 = icmp eq i8 %2471, 0
  %2474 = and i1 %2473, %2472
  %.v94 = select i1 %2474, i64 93, i64 10
  %2475 = add i64 %2457, %.v94
  store i64 %2475, i64* %PC, align 8, !tbaa !2428
  br i1 %2474, label %block_400d90, label %block_400d3d

block_400901:                                     ; preds = %block_400880
  %2476 = add i64 %2207, 7
  store i64 %2476, i64* %PC, align 8
  store i32 0, i32* %2182, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400908

block_400a67:                                     ; preds = %block_400a2e
  %2477 = add i64 %3233, -8
  %2478 = add i64 %3261, 8
  store i64 %2478, i64* %PC, align 8
  %2479 = inttoptr i64 %2477 to i32*
  %2480 = load i32, i32* %2479, align 4
  %2481 = add i32 %2480, 1
  %2482 = zext i32 %2481 to i64
  store i64 %2482, i64* %RAX, align 8, !tbaa !2428
  %2483 = icmp eq i32 %2480, -1
  %2484 = icmp eq i32 %2481, 0
  %2485 = or i1 %2483, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %13, align 1, !tbaa !2432
  %2487 = and i32 %2481, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487) #8
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %20, align 1, !tbaa !2446
  %2492 = xor i32 %2480, %2481
  %2493 = lshr i32 %2492, 4
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %26, align 1, !tbaa !2447
  %2496 = zext i1 %2484 to i8
  store i8 %2496, i8* %29, align 1, !tbaa !2448
  %2497 = lshr i32 %2481, 31
  %2498 = trunc i32 %2497 to i8
  store i8 %2498, i8* %32, align 1, !tbaa !2449
  %2499 = lshr i32 %2480, 31
  %2500 = xor i32 %2497, %2499
  %2501 = add nuw nsw i32 %2500, %2497
  %2502 = icmp eq i32 %2501, 2
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %38, align 1, !tbaa !2450
  %2504 = add i64 %3261, 14
  store i64 %2504, i64* %PC, align 8
  store i32 %2481, i32* %2479, align 4
  %2505 = load i64, i64* %PC, align 8
  %2506 = add i64 %2505, -88
  store i64 %2506, i64* %PC, align 8, !tbaa !2428
  br label %block_400a1d

block_400acc:                                     ; preds = %block_400ac5, %block_400ad6
  %2507 = phi i64 [ %.pre17, %block_400ac5 ], [ %1567, %block_400ad6 ]
  %2508 = load i64, i64* %RBP, align 8
  %2509 = add i64 %2508, -12
  %2510 = add i64 %2507, 4
  store i64 %2510, i64* %PC, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  %2513 = add i32 %2512, -1
  %2514 = icmp eq i32 %2512, 0
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %13, align 1, !tbaa !2432
  %2516 = and i32 %2513, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516) #8
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %20, align 1, !tbaa !2446
  %2521 = xor i32 %2512, %2513
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %26, align 1, !tbaa !2447
  %2525 = icmp eq i32 %2513, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %29, align 1, !tbaa !2448
  %2527 = lshr i32 %2513, 31
  %2528 = trunc i32 %2527 to i8
  store i8 %2528, i8* %32, align 1, !tbaa !2449
  %2529 = lshr i32 %2512, 31
  %2530 = xor i32 %2527, %2529
  %2531 = add nuw nsw i32 %2530, %2529
  %2532 = icmp eq i32 %2531, 2
  %2533 = zext i1 %2532 to i8
  store i8 %2533, i8* %38, align 1, !tbaa !2450
  %2534 = icmp ne i8 %2528, 0
  %2535 = xor i1 %2534, %2532
  %.demorgan75 = or i1 %2525, %2535
  %.v76 = select i1 %.demorgan75, i64 10, i64 57
  %2536 = add i64 %2507, %.v76
  store i64 %2536, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan75, label %block_400ad6, label %block_400b05

block_401064:                                     ; preds = %block_40105a
  %2537 = add i64 %2641, -4
  %2538 = add i64 %2669, 3
  store i64 %2538, i64* %PC, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RAX, align 8, !tbaa !2428
  %2542 = add i64 %2641, -8
  %2543 = add i64 %2669, 6
  store i64 %2543, i64* %PC, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = zext i32 %2545 to i64
  store i64 %2546, i64* %RCX, align 8, !tbaa !2428
  %2547 = add i64 %2669, 9
  store i64 %2547, i64* %PC, align 8
  %2548 = load i32, i32* %2644, align 4
  %2549 = shl i32 %2548, 3
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RDX, align 8, !tbaa !2428
  %2551 = add i32 %2549, %2545
  %2552 = shl i32 %2551, 3
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %RCX, align 8, !tbaa !2428
  %2554 = lshr i32 %2551, 28
  %2555 = and i32 %2554, 1
  %2556 = add i32 %2552, %2540
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RAX, align 8, !tbaa !2428
  %2558 = icmp ult i32 %2556, %2540
  %2559 = icmp ult i32 %2556, %2552
  %2560 = or i1 %2558, %2559
  %2561 = zext i1 %2560 to i8
  store i8 %2561, i8* %13, align 1, !tbaa !2432
  %2562 = and i32 %2556, 255
  %2563 = tail call i32 @llvm.ctpop.i32(i32 %2562) #8
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  store i8 %2566, i8* %20, align 1, !tbaa !2446
  %2567 = xor i64 %2553, %2541
  %2568 = trunc i64 %2567 to i32
  %2569 = xor i32 %2568, %2556
  %2570 = lshr i32 %2569, 4
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  store i8 %2572, i8* %26, align 1, !tbaa !2447
  %2573 = icmp eq i32 %2556, 0
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %29, align 1, !tbaa !2448
  %2575 = lshr i32 %2556, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %32, align 1, !tbaa !2449
  %2577 = lshr i32 %2540, 31
  %2578 = xor i32 %2575, %2577
  %2579 = xor i32 %2575, %2555
  %2580 = add nuw nsw i32 %2578, %2579
  %2581 = icmp eq i32 %2580, 2
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %38, align 1, !tbaa !2450
  %2583 = sext i32 %2556 to i64
  store i64 %2583, i64* %RSI, align 8, !tbaa !2428
  %2584 = shl nsw i64 %2583, 2
  %2585 = add i64 %2584, add (i64 ptrtoint (%p_type* @p to i64), i64 22528)
  %2586 = add i64 %2669, 33
  store i64 %2586, i64* %PC, align 8
  %2587 = inttoptr i64 %2585 to i32*
  store i32 1, i32* %2587, align 4
  %2588 = load i64, i64* %RBP, align 8
  %2589 = add i64 %2588, -12
  %2590 = load i64, i64* %PC, align 8
  %2591 = add i64 %2590, 3
  store i64 %2591, i64* %PC, align 8
  %2592 = inttoptr i64 %2589 to i32*
  %2593 = load i32, i32* %2592, align 4
  %2594 = add i32 %2593, 1
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RAX, align 8, !tbaa !2428
  %2596 = icmp eq i32 %2593, -1
  %2597 = icmp eq i32 %2594, 0
  %2598 = or i1 %2596, %2597
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %13, align 1, !tbaa !2432
  %2600 = and i32 %2594, 255
  %2601 = tail call i32 @llvm.ctpop.i32(i32 %2600) #8
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  %2604 = xor i8 %2603, 1
  store i8 %2604, i8* %20, align 1, !tbaa !2446
  %2605 = xor i32 %2593, %2594
  %2606 = lshr i32 %2605, 4
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  store i8 %2608, i8* %26, align 1, !tbaa !2447
  %2609 = zext i1 %2597 to i8
  store i8 %2609, i8* %29, align 1, !tbaa !2448
  %2610 = lshr i32 %2594, 31
  %2611 = trunc i32 %2610 to i8
  store i8 %2611, i8* %32, align 1, !tbaa !2449
  %2612 = lshr i32 %2593, 31
  %2613 = xor i32 %2610, %2612
  %2614 = add nuw nsw i32 %2613, %2610
  %2615 = icmp eq i32 %2614, 2
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %38, align 1, !tbaa !2450
  %2617 = add i64 %2590, 9
  store i64 %2617, i64* %PC, align 8
  store i32 %2594, i32* %2592, align 4
  %2618 = load i64, i64* %PC, align 8
  %2619 = add i64 %2618, -52
  store i64 %2619, i64* %PC, align 8, !tbaa !2428
  br label %block_40105a

block_400e5e:                                     ; preds = %block_400e41, %block_400ecc
  %2620 = phi i64 [ %.pre33, %block_400e41 ], [ %1600, %block_400ecc ]
  %2621 = load i64, i64* %RBP, align 8
  %2622 = add i64 %2621, -4
  %2623 = add i64 %2620, 4
  store i64 %2623, i64* %PC, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2626 = and i32 %2625, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626) #8
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2631 = icmp eq i32 %2625, 0
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %29, align 1, !tbaa !2448
  %2633 = lshr i32 %2625, 31
  %2634 = trunc i32 %2633 to i8
  store i8 %2634, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2635 = xor i1 %2631, true
  %2636 = icmp eq i8 %2634, 0
  %2637 = and i1 %2636, %2635
  %.v100 = select i1 %2637, i64 129, i64 10
  %2638 = add i64 %2620, %.v100
  store i64 %2638, i64* %PC, align 8, !tbaa !2428
  br i1 %2637, label %block_400edf, label %block_400e68

block_400e41:                                     ; preds = %block_400dc0
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 28) to i32*), align 4
  store i32 16, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 28) to i32*), align 4
  %2639 = add i64 %1439, 29
  store i64 %2639, i64* %PC, align 8
  store i32 0, i32* %1425, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400e5e

block_40105a:                                     ; preds = %block_401053, %block_401064
  %2640 = phi i64 [ %.pre44, %block_401053 ], [ %2619, %block_401064 ]
  %2641 = load i64, i64* %RBP, align 8
  %2642 = add i64 %2641, -12
  %2643 = add i64 %2640, 4
  store i64 %2643, i64* %PC, align 8
  %2644 = inttoptr i64 %2642 to i32*
  %2645 = load i32, i32* %2644, align 4
  %2646 = add i32 %2645, -1
  %2647 = icmp eq i32 %2645, 0
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %13, align 1, !tbaa !2432
  %2649 = and i32 %2646, 255
  %2650 = tail call i32 @llvm.ctpop.i32(i32 %2649) #8
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  store i8 %2653, i8* %20, align 1, !tbaa !2446
  %2654 = xor i32 %2645, %2646
  %2655 = lshr i32 %2654, 4
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %26, align 1, !tbaa !2447
  %2658 = icmp eq i32 %2646, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %29, align 1, !tbaa !2448
  %2660 = lshr i32 %2646, 31
  %2661 = trunc i32 %2660 to i8
  store i8 %2661, i8* %32, align 1, !tbaa !2449
  %2662 = lshr i32 %2645, 31
  %2663 = xor i32 %2660, %2662
  %2664 = add nuw nsw i32 %2663, %2662
  %2665 = icmp eq i32 %2664, 2
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %38, align 1, !tbaa !2450
  %2667 = icmp ne i8 %2661, 0
  %2668 = xor i1 %2667, %2665
  %.demorgan117 = or i1 %2658, %2668
  %.v118 = select i1 %.demorgan117, i64 10, i64 57
  %2669 = add i64 %2640, %.v118
  store i64 %2669, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan117, label %block_401064, label %block_401093

block_400908:                                     ; preds = %block_400901, %block_400954
  %2670 = phi i64 [ %.pre7, %block_400901 ], [ %680, %block_400954 ]
  %2671 = load i64, i64* %RBP, align 8
  %2672 = add i64 %2671, -4
  %2673 = add i64 %2670, 4
  store i64 %2673, i64* %PC, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  %2676 = add i32 %2675, -12
  %2677 = icmp ult i32 %2675, 12
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %13, align 1, !tbaa !2432
  %2679 = and i32 %2676, 255
  %2680 = tail call i32 @llvm.ctpop.i32(i32 %2679) #8
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  store i8 %2683, i8* %20, align 1, !tbaa !2446
  %2684 = xor i32 %2675, %2676
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %26, align 1, !tbaa !2447
  %2688 = icmp eq i32 %2676, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %29, align 1, !tbaa !2448
  %2690 = lshr i32 %2676, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %32, align 1, !tbaa !2449
  %2692 = lshr i32 %2675, 31
  %2693 = xor i32 %2690, %2692
  %2694 = add nuw nsw i32 %2693, %2692
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %38, align 1, !tbaa !2450
  %2697 = icmp ne i8 %2691, 0
  %2698 = xor i1 %2697, %2695
  %.demorgan58 = or i1 %2688, %2698
  %.v59 = select i1 %.demorgan58, i64 10, i64 95
  %2699 = add i64 %2670, %.v59
  store i64 %2699, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan58, label %block_400912, label %block_400967

block_4010b9:                                     ; preds = %block_401038
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 44) to i32*), align 4
  store i32 72, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 44) to i32*), align 4
  %2700 = add i64 %699, 29
  store i64 %2700, i64* %PC, align 8
  store i32 0, i32* %685, align 4
  %.pre45 = load i64, i64* %PC, align 8
  br label %block_4010d6

block_400c54:                                     ; preds = %block_400bf7
  %2701 = add i64 %57, -4
  %2702 = add i64 %74, 8
  store i64 %2702, i64* %PC, align 8
  %2703 = inttoptr i64 %2701 to i32*
  %2704 = load i32, i32* %2703, align 4
  %2705 = add i32 %2704, 1
  %2706 = zext i32 %2705 to i64
  store i64 %2706, i64* %RAX, align 8, !tbaa !2428
  %2707 = icmp eq i32 %2704, -1
  %2708 = icmp eq i32 %2705, 0
  %2709 = or i1 %2707, %2708
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %13, align 1, !tbaa !2432
  %2711 = and i32 %2705, 255
  %2712 = tail call i32 @llvm.ctpop.i32(i32 %2711) #8
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  store i8 %2715, i8* %20, align 1, !tbaa !2446
  %2716 = xor i32 %2704, %2705
  %2717 = lshr i32 %2716, 4
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  store i8 %2719, i8* %26, align 1, !tbaa !2447
  %2720 = zext i1 %2708 to i8
  store i8 %2720, i8* %29, align 1, !tbaa !2448
  %2721 = lshr i32 %2705, 31
  %2722 = trunc i32 %2721 to i8
  store i8 %2722, i8* %32, align 1, !tbaa !2449
  %2723 = lshr i32 %2704, 31
  %2724 = xor i32 %2721, %2723
  %2725 = add nuw nsw i32 %2724, %2721
  %2726 = icmp eq i32 %2725, 2
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %38, align 1, !tbaa !2450
  %2728 = add i64 %74, 14
  store i64 %2728, i64* %PC, align 8
  store i32 %2705, i32* %2703, align 4
  %2729 = load i64, i64* %PC, align 8
  %2730 = add i64 %2729, -124
  store i64 %2730, i64* %PC, align 8, !tbaa !2428
  br label %block_400be6

block_400abb:                                     ; preds = %block_400b05, %block_400ab4
  %2731 = phi i64 [ %3324, %block_400b05 ], [ %.pre16, %block_400ab4 ]
  %2732 = load i64, i64* %RBP, align 8
  %2733 = add i64 %2732, -8
  %2734 = add i64 %2731, 4
  store i64 %2734, i64* %PC, align 8
  %2735 = inttoptr i64 %2733 to i32*
  %2736 = load i32, i32* %2735, align 4
  %2737 = add i32 %2736, -3
  %2738 = icmp ult i32 %2736, 3
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %13, align 1, !tbaa !2432
  %2740 = and i32 %2737, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740) #8
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %20, align 1, !tbaa !2446
  %2745 = xor i32 %2736, %2737
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %26, align 1, !tbaa !2447
  %2749 = icmp eq i32 %2737, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %29, align 1, !tbaa !2448
  %2751 = lshr i32 %2737, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %32, align 1, !tbaa !2449
  %2753 = lshr i32 %2736, 31
  %2754 = xor i32 %2751, %2753
  %2755 = add nuw nsw i32 %2754, %2753
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %38, align 1, !tbaa !2450
  %2758 = icmp ne i8 %2752, 0
  %2759 = xor i1 %2758, %2756
  %.demorgan73 = or i1 %2749, %2759
  %.v74 = select i1 %.demorgan73, i64 10, i64 93
  %2760 = add i64 %2731, %.v74
  store i64 %2760, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan73, label %block_400ac5, label %block_400b18

block_4008a2:                                     ; preds = %block_40089b, %block_4008ac
  %2761 = phi i64 [ %.pre6, %block_40089b ], [ %1890, %block_4008ac ]
  %2762 = load i64, i64* %RBP, align 8
  %2763 = add i64 %2762, -12
  %2764 = add i64 %2761, 4
  store i64 %2764, i64* %PC, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = add i32 %2766, -5
  %2768 = icmp ult i32 %2766, 5
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %13, align 1, !tbaa !2432
  %2770 = and i32 %2767, 255
  %2771 = tail call i32 @llvm.ctpop.i32(i32 %2770) #8
  %2772 = trunc i32 %2771 to i8
  %2773 = and i8 %2772, 1
  %2774 = xor i8 %2773, 1
  store i8 %2774, i8* %20, align 1, !tbaa !2446
  %2775 = xor i32 %2766, %2767
  %2776 = lshr i32 %2775, 4
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  store i8 %2778, i8* %26, align 1, !tbaa !2447
  %2779 = icmp eq i32 %2767, 0
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %29, align 1, !tbaa !2448
  %2781 = lshr i32 %2767, 31
  %2782 = trunc i32 %2781 to i8
  store i8 %2782, i8* %32, align 1, !tbaa !2449
  %2783 = lshr i32 %2766, 31
  %2784 = xor i32 %2781, %2783
  %2785 = add nuw nsw i32 %2784, %2783
  %2786 = icmp eq i32 %2785, 2
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %38, align 1, !tbaa !2450
  %2788 = icmp ne i8 %2782, 0
  %2789 = xor i1 %2788, %2786
  %.demorgan56 = or i1 %2779, %2789
  %.v57 = select i1 %.demorgan56, i64 10, i64 57
  %2790 = add i64 %2761, %.v57
  store i64 %2790, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan56, label %block_4008ac, label %block_4008db

block_401053:                                     ; preds = %block_401049
  %2791 = add i64 %2856, -12
  %2792 = add i64 %2884, 7
  store i64 %2792, i64* %PC, align 8
  %2793 = inttoptr i64 %2791 to i32*
  store i32 0, i32* %2793, align 4
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_40105a

block_40084f:                                     ; preds = %block_40085c, %block_400840
  %2794 = phi i64 [ %3567, %block_40085c ], [ %.pre, %block_400840 ]
  %2795 = load i64, i64* %RBP, align 8
  %2796 = add i64 %2795, -16
  %2797 = add i64 %2794, 7
  store i64 %2797, i64* %PC, align 8
  %2798 = inttoptr i64 %2796 to i32*
  %2799 = load i32, i32* %2798, align 4
  %2800 = add i32 %2799, -511
  %2801 = icmp ult i32 %2799, 511
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %13, align 1, !tbaa !2432
  %2803 = and i32 %2800, 255
  %2804 = tail call i32 @llvm.ctpop.i32(i32 %2803) #8
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = xor i8 %2806, 1
  store i8 %2807, i8* %20, align 1, !tbaa !2446
  %2808 = xor i32 %2799, 16
  %2809 = xor i32 %2808, %2800
  %2810 = lshr i32 %2809, 4
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  store i8 %2812, i8* %26, align 1, !tbaa !2447
  %2813 = icmp eq i32 %2800, 0
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %29, align 1, !tbaa !2448
  %2815 = lshr i32 %2800, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %32, align 1, !tbaa !2449
  %2817 = lshr i32 %2799, 31
  %2818 = xor i32 %2815, %2817
  %2819 = add nuw nsw i32 %2818, %2817
  %2820 = icmp eq i32 %2819, 2
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %38, align 1, !tbaa !2450
  %2822 = icmp ne i8 %2816, 0
  %2823 = xor i1 %2822, %2820
  %.demorgan = or i1 %2813, %2823
  %.v = select i1 %.demorgan, i64 13, i64 42
  %2824 = add i64 %2794, %.v
  store i64 %2824, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40085c, label %block_400879

block_400d7d:                                     ; preds = %block_400d44
  %2825 = add i64 %1131, -8
  %2826 = add i64 %1148, 8
  store i64 %2826, i64* %PC, align 8
  %2827 = inttoptr i64 %2825 to i32*
  %2828 = load i32, i32* %2827, align 4
  %2829 = add i32 %2828, 1
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RAX, align 8, !tbaa !2428
  %2831 = icmp eq i32 %2828, -1
  %2832 = icmp eq i32 %2829, 0
  %2833 = or i1 %2831, %2832
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %13, align 1, !tbaa !2432
  %2835 = and i32 %2829, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835) #8
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %20, align 1, !tbaa !2446
  %2840 = xor i32 %2828, %2829
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %26, align 1, !tbaa !2447
  %2844 = zext i1 %2832 to i8
  store i8 %2844, i8* %29, align 1, !tbaa !2448
  %2845 = lshr i32 %2829, 31
  %2846 = trunc i32 %2845 to i8
  store i8 %2846, i8* %32, align 1, !tbaa !2449
  %2847 = lshr i32 %2828, 31
  %2848 = xor i32 %2845, %2847
  %2849 = add nuw nsw i32 %2848, %2845
  %2850 = icmp eq i32 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %38, align 1, !tbaa !2450
  %2852 = add i64 %1148, 14
  store i64 %2852, i64* %PC, align 8
  store i32 %2829, i32* %2827, align 4
  %2853 = load i64, i64* %PC, align 8
  %2854 = add i64 %2853, -88
  store i64 %2854, i64* %PC, align 8, !tbaa !2428
  br label %block_400d33

block_401049:                                     ; preds = %block_401042, %block_401093
  %2855 = phi i64 [ %.pre43, %block_401042 ], [ %2070, %block_401093 ]
  %2856 = load i64, i64* %RBP, align 8
  %2857 = add i64 %2856, -8
  %2858 = add i64 %2855, 4
  store i64 %2858, i64* %PC, align 8
  %2859 = inttoptr i64 %2857 to i32*
  %2860 = load i32, i32* %2859, align 4
  %2861 = add i32 %2860, -1
  %2862 = icmp eq i32 %2860, 0
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %13, align 1, !tbaa !2432
  %2864 = and i32 %2861, 255
  %2865 = tail call i32 @llvm.ctpop.i32(i32 %2864) #8
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %20, align 1, !tbaa !2446
  %2869 = xor i32 %2860, %2861
  %2870 = lshr i32 %2869, 4
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  store i8 %2872, i8* %26, align 1, !tbaa !2447
  %2873 = icmp eq i32 %2861, 0
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %29, align 1, !tbaa !2448
  %2875 = lshr i32 %2861, 31
  %2876 = trunc i32 %2875 to i8
  store i8 %2876, i8* %32, align 1, !tbaa !2449
  %2877 = lshr i32 %2860, 31
  %2878 = xor i32 %2875, %2877
  %2879 = add nuw nsw i32 %2878, %2877
  %2880 = icmp eq i32 %2879, 2
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %38, align 1, !tbaa !2450
  %2882 = icmp ne i8 %2876, 0
  %2883 = xor i1 %2882, %2880
  %.demorgan115 = or i1 %2873, %2883
  %.v116 = select i1 %.demorgan115, i64 10, i64 93
  %2884 = add i64 %2855, %.v116
  store i64 %2884, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan115, label %block_401053, label %block_4010a6

block_400aaa:                                     ; preds = %block_400b18, %block_400a8d
  %2885 = phi i64 [ %2134, %block_400b18 ], [ %.pre15, %block_400a8d ]
  %2886 = load i64, i64* %RBP, align 8
  %2887 = add i64 %2886, -4
  %2888 = add i64 %2885, 4
  store i64 %2888, i64* %PC, align 8
  %2889 = inttoptr i64 %2887 to i32*
  %2890 = load i32, i32* %2889, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2891 = and i32 %2890, 255
  %2892 = tail call i32 @llvm.ctpop.i32(i32 %2891) #8
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  store i8 %2895, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2896 = icmp eq i32 %2890, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %29, align 1, !tbaa !2448
  %2898 = lshr i32 %2890, 31
  %2899 = trunc i32 %2898 to i8
  store i8 %2899, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2900 = xor i1 %2896, true
  %2901 = icmp eq i8 %2899, 0
  %2902 = and i1 %2901, %2900
  %.v72 = select i1 %2902, i64 129, i64 10
  %2903 = add i64 %2885, %.v72
  store i64 %2903, i64* %PC, align 8, !tbaa !2428
  br i1 %2902, label %block_400b2b, label %block_400ab4

block_400891:                                     ; preds = %block_40088a, %block_4008db
  %2904 = phi i64 [ %.pre5, %block_40088a ], [ %1469, %block_4008db ]
  %2905 = load i64, i64* %RBP, align 8
  %2906 = add i64 %2905, -8
  %2907 = add i64 %2904, 4
  store i64 %2907, i64* %PC, align 8
  %2908 = inttoptr i64 %2906 to i32*
  %2909 = load i32, i32* %2908, align 4
  %2910 = add i32 %2909, -5
  %2911 = icmp ult i32 %2909, 5
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %13, align 1, !tbaa !2432
  %2913 = and i32 %2910, 255
  %2914 = tail call i32 @llvm.ctpop.i32(i32 %2913) #8
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  store i8 %2917, i8* %20, align 1, !tbaa !2446
  %2918 = xor i32 %2909, %2910
  %2919 = lshr i32 %2918, 4
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  store i8 %2921, i8* %26, align 1, !tbaa !2447
  %2922 = icmp eq i32 %2910, 0
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %29, align 1, !tbaa !2448
  %2924 = lshr i32 %2910, 31
  %2925 = trunc i32 %2924 to i8
  store i8 %2925, i8* %32, align 1, !tbaa !2449
  %2926 = lshr i32 %2909, 31
  %2927 = xor i32 %2924, %2926
  %2928 = add nuw nsw i32 %2927, %2926
  %2929 = icmp eq i32 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %38, align 1, !tbaa !2450
  %2931 = icmp ne i8 %2925, 0
  %2932 = xor i1 %2931, %2929
  %.demorgan54 = or i1 %2922, %2932
  %.v55 = select i1 %.demorgan54, i64 10, i64 93
  %2933 = add i64 %2904, %.v55
  store i64 %2933, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan54, label %block_40089b, label %block_4008ee

block_401042:                                     ; preds = %block_401038
  %2934 = add i64 %682, -8
  %2935 = add i64 %699, 7
  store i64 %2935, i64* %PC, align 8
  %2936 = inttoptr i64 %2934 to i32*
  store i32 0, i32* %2936, align 4
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_401049

block_400f0d:                                     ; preds = %block_400f57, %block_400f06
  %2937 = phi i64 [ %3630, %block_400f57 ], [ %.pre37, %block_400f06 ]
  %2938 = load i64, i64* %RBP, align 8
  %2939 = add i64 %2938, -8
  %2940 = add i64 %2937, 4
  store i64 %2940, i64* %PC, align 8
  %2941 = inttoptr i64 %2939 to i32*
  %2942 = load i32, i32* %2941, align 4
  %2943 = add i32 %2942, -1
  %2944 = icmp eq i32 %2942, 0
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %13, align 1, !tbaa !2432
  %2946 = and i32 %2943, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946) #8
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %20, align 1, !tbaa !2446
  %2951 = xor i32 %2942, %2943
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
  %.demorgan106 = or i1 %2955, %2965
  %.v107 = select i1 %.demorgan106, i64 10, i64 93
  %2966 = add i64 %2937, %.v107
  store i64 %2966, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan106, label %block_400f17, label %block_400f6a

block_400c41:                                     ; preds = %block_400c08
  %2967 = add i64 %3633, -8
  %2968 = add i64 %3661, 8
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
  %2978 = tail call i32 @llvm.ctpop.i32(i32 %2977) #8
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  store i8 %2981, i8* %20, align 1, !tbaa !2446
  %2982 = xor i32 %2970, %2971
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
  %2994 = add i64 %3661, 14
  store i64 %2994, i64* %PC, align 8
  store i32 %2971, i32* %2969, align 4
  %2995 = load i64, i64* %PC, align 8
  %2996 = add i64 %2995, -88
  store i64 %2996, i64* %PC, align 8, !tbaa !2428
  br label %block_400bf7

block_401157:                                     ; preds = %block_4010d6
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
  %2997 = add i64 %349, -16
  %2998 = add i64 %377, 75
  store i64 %2998, i64* %PC, align 8
  %2999 = inttoptr i64 %2997 to i32*
  store i32 73, i32* %2999, align 4
  %3000 = load i64, i64* %PC, align 8
  store i32 0, i32* bitcast (%kount_type* @kount to i32*), align 8
  %3001 = load i64, i64* %RBP, align 8
  %3002 = add i64 %3001, -16
  %3003 = add i64 %3000, 14
  store i64 %3003, i64* %PC, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = zext i32 %3005 to i64
  store i64 %3006, i64* %RSI, align 8, !tbaa !2428
  %3007 = add i64 %3000, -3154
  %3008 = add i64 %3000, 19
  %3009 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3010 = add i64 %3009, -8
  %3011 = inttoptr i64 %3010 to i64*
  store i64 %3008, i64* %3011, align 8
  store i64 %3010, i64* %RSP, align 8, !tbaa !2428
  store i64 %3007, i64* %PC, align 8, !tbaa !2428
  %3012 = tail call %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* nonnull %0, i64 %3007, %struct.Memory* %2)
  %3013 = load i32, i32* %EAX, align 4
  %3014 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3015 = and i32 %3013, 255
  %3016 = tail call i32 @llvm.ctpop.i32(i32 %3015) #8
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  store i8 %3019, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3020 = icmp eq i32 %3013, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %29, align 1, !tbaa !2448
  %3022 = lshr i32 %3013, 31
  %3023 = trunc i32 %3022 to i8
  store i8 %3023, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v125 = select i1 %3020, i64 31, i64 9
  %3024 = add i64 %3014, %.v125
  store i64 %3024, i64* %PC, align 8, !tbaa !2428
  br i1 %3020, label %block_4011d4, label %block_4011be

block_400bf0:                                     ; preds = %block_400be6
  %3025 = add i64 %210, -8
  %3026 = add i64 %238, 7
  store i64 %3026, i64* %PC, align 8
  %3027 = inttoptr i64 %3025 to i32*
  store i32 0, i32* %3027, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400bf7

block_40123b:                                     ; preds = %block_401216, %block_401227
  %3028 = phi i64 [ %2158, %block_401216 ], [ %.pre50, %block_401227 ]
  %MEMORY.40 = phi %struct.Memory* [ %196, %block_401216 ], [ %1335, %block_401227 ]
  %3029 = add i64 %3028, 5
  br label %block_401240

block_400a38:                                     ; preds = %block_400a2e
  %3030 = add i64 %3233, -4
  %3031 = add i64 %3261, 3
  store i64 %3031, i64* %PC, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RAX, align 8, !tbaa !2428
  %3035 = add i64 %3233, -8
  %3036 = add i64 %3261, 6
  store i64 %3036, i64* %PC, align 8
  %3037 = inttoptr i64 %3035 to i32*
  %3038 = load i32, i32* %3037, align 4
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RCX, align 8, !tbaa !2428
  %3040 = add i64 %3261, 9
  store i64 %3040, i64* %PC, align 8
  %3041 = load i32, i32* %3236, align 4
  %3042 = shl i32 %3041, 3
  %3043 = zext i32 %3042 to i64
  store i64 %3043, i64* %RDX, align 8, !tbaa !2428
  %3044 = add i32 %3042, %3038
  %3045 = shl i32 %3044, 3
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RCX, align 8, !tbaa !2428
  %3047 = lshr i32 %3044, 28
  %3048 = and i32 %3047, 1
  %3049 = add i32 %3045, %3033
  %3050 = zext i32 %3049 to i64
  store i64 %3050, i64* %RAX, align 8, !tbaa !2428
  %3051 = icmp ult i32 %3049, %3033
  %3052 = icmp ult i32 %3049, %3045
  %3053 = or i1 %3051, %3052
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %13, align 1, !tbaa !2432
  %3055 = and i32 %3049, 255
  %3056 = tail call i32 @llvm.ctpop.i32(i32 %3055) #8
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  %3059 = xor i8 %3058, 1
  store i8 %3059, i8* %20, align 1, !tbaa !2446
  %3060 = xor i64 %3046, %3034
  %3061 = trunc i64 %3060 to i32
  %3062 = xor i32 %3061, %3049
  %3063 = lshr i32 %3062, 4
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  store i8 %3065, i8* %26, align 1, !tbaa !2447
  %3066 = icmp eq i32 %3049, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %29, align 1, !tbaa !2448
  %3068 = lshr i32 %3049, 31
  %3069 = trunc i32 %3068 to i8
  store i8 %3069, i8* %32, align 1, !tbaa !2449
  %3070 = lshr i32 %3033, 31
  %3071 = xor i32 %3068, %3070
  %3072 = xor i32 %3068, %3048
  %3073 = add nuw nsw i32 %3071, %3072
  %3074 = icmp eq i32 %3073, 2
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %38, align 1, !tbaa !2450
  %3076 = sext i32 %3049 to i64
  store i64 %3076, i64* %RSI, align 8, !tbaa !2428
  %3077 = shl nsw i64 %3076, 2
  %3078 = add i64 %3077, add (i64 ptrtoint (%p_type* @p to i64), i64 2048)
  %3079 = add i64 %3261, 33
  store i64 %3079, i64* %PC, align 8
  %3080 = inttoptr i64 %3078 to i32*
  store i32 1, i32* %3080, align 4
  %3081 = load i64, i64* %RBP, align 8
  %3082 = add i64 %3081, -12
  %3083 = load i64, i64* %PC, align 8
  %3084 = add i64 %3083, 3
  store i64 %3084, i64* %PC, align 8
  %3085 = inttoptr i64 %3082 to i32*
  %3086 = load i32, i32* %3085, align 4
  %3087 = add i32 %3086, 1
  %3088 = zext i32 %3087 to i64
  store i64 %3088, i64* %RAX, align 8, !tbaa !2428
  %3089 = icmp eq i32 %3086, -1
  %3090 = icmp eq i32 %3087, 0
  %3091 = or i1 %3089, %3090
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %13, align 1, !tbaa !2432
  %3093 = and i32 %3087, 255
  %3094 = tail call i32 @llvm.ctpop.i32(i32 %3093) #8
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  store i8 %3097, i8* %20, align 1, !tbaa !2446
  %3098 = xor i32 %3086, %3087
  %3099 = lshr i32 %3098, 4
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  store i8 %3101, i8* %26, align 1, !tbaa !2447
  %3102 = zext i1 %3090 to i8
  store i8 %3102, i8* %29, align 1, !tbaa !2448
  %3103 = lshr i32 %3087, 31
  %3104 = trunc i32 %3103 to i8
  store i8 %3104, i8* %32, align 1, !tbaa !2449
  %3105 = lshr i32 %3086, 31
  %3106 = xor i32 %3103, %3105
  %3107 = add nuw nsw i32 %3106, %3103
  %3108 = icmp eq i32 %3107, 2
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %38, align 1, !tbaa !2450
  %3110 = add i64 %3083, 9
  store i64 %3110, i64* %PC, align 8
  store i32 %3087, i32* %3085, align 4
  %3111 = load i64, i64* %PC, align 8
  %3112 = add i64 %3111, -52
  store i64 %3112, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2e

block_400ab4:                                     ; preds = %block_400aaa
  %3113 = add i64 %2886, -8
  %3114 = add i64 %2903, 7
  store i64 %3114, i64* %PC, align 8
  %3115 = inttoptr i64 %3113 to i32*
  store i32 0, i32* %3115, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400abb

block_40089b:                                     ; preds = %block_400891
  %3116 = add i64 %2905, -12
  %3117 = add i64 %2933, 7
  store i64 %3117, i64* %PC, align 8
  %3118 = inttoptr i64 %3116 to i32*
  store i32 1, i32* %3118, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4008a2

block_401008:                                     ; preds = %block_400fab
  %3119 = add i64 %1373, -4
  %3120 = add i64 %1390, 8
  store i64 %3120, i64* %PC, align 8
  %3121 = inttoptr i64 %3119 to i32*
  %3122 = load i32, i32* %3121, align 4
  %3123 = add i32 %3122, 1
  %3124 = zext i32 %3123 to i64
  store i64 %3124, i64* %RAX, align 8, !tbaa !2428
  %3125 = icmp eq i32 %3122, -1
  %3126 = icmp eq i32 %3123, 0
  %3127 = or i1 %3125, %3126
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %13, align 1, !tbaa !2432
  %3129 = and i32 %3123, 255
  %3130 = tail call i32 @llvm.ctpop.i32(i32 %3129) #8
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  store i8 %3133, i8* %20, align 1, !tbaa !2446
  %3134 = xor i32 %3122, %3123
  %3135 = lshr i32 %3134, 4
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  store i8 %3137, i8* %26, align 1, !tbaa !2447
  %3138 = zext i1 %3126 to i8
  store i8 %3138, i8* %29, align 1, !tbaa !2448
  %3139 = lshr i32 %3123, 31
  %3140 = trunc i32 %3139 to i8
  store i8 %3140, i8* %32, align 1, !tbaa !2449
  %3141 = lshr i32 %3122, 31
  %3142 = xor i32 %3139, %3141
  %3143 = add nuw nsw i32 %3142, %3139
  %3144 = icmp eq i32 %3143, 2
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %38, align 1, !tbaa !2450
  %3146 = add i64 %1390, 14
  store i64 %3146, i64* %PC, align 8
  store i32 %3123, i32* %3121, align 4
  %3147 = load i64, i64* %PC, align 8
  %3148 = add i64 %3147, -124
  store i64 %3148, i64* %PC, align 8, !tbaa !2428
  br label %block_400f9a

block_400fc6:                                     ; preds = %block_400fbc
  %3149 = add i64 %289, -4
  %3150 = add i64 %317, 3
  store i64 %3150, i64* %PC, align 8
  %3151 = inttoptr i64 %3149 to i32*
  %3152 = load i32, i32* %3151, align 4
  %3153 = zext i32 %3152 to i64
  store i64 %3153, i64* %RAX, align 8, !tbaa !2428
  %3154 = add i64 %289, -8
  %3155 = add i64 %317, 6
  store i64 %3155, i64* %PC, align 8
  %3156 = inttoptr i64 %3154 to i32*
  %3157 = load i32, i32* %3156, align 4
  %3158 = zext i32 %3157 to i64
  store i64 %3158, i64* %RCX, align 8, !tbaa !2428
  %3159 = add i64 %317, 9
  store i64 %3159, i64* %PC, align 8
  %3160 = load i32, i32* %292, align 4
  %3161 = shl i32 %3160, 3
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RDX, align 8, !tbaa !2428
  %3163 = add i32 %3161, %3157
  %3164 = shl i32 %3163, 3
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RCX, align 8, !tbaa !2428
  %3166 = lshr i32 %3163, 28
  %3167 = and i32 %3166, 1
  %3168 = add i32 %3164, %3152
  %3169 = zext i32 %3168 to i64
  store i64 %3169, i64* %RAX, align 8, !tbaa !2428
  %3170 = icmp ult i32 %3168, %3152
  %3171 = icmp ult i32 %3168, %3164
  %3172 = or i1 %3170, %3171
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %13, align 1, !tbaa !2432
  %3174 = and i32 %3168, 255
  %3175 = tail call i32 @llvm.ctpop.i32(i32 %3174) #8
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  %3178 = xor i8 %3177, 1
  store i8 %3178, i8* %20, align 1, !tbaa !2446
  %3179 = xor i64 %3165, %3153
  %3180 = trunc i64 %3179 to i32
  %3181 = xor i32 %3180, %3168
  %3182 = lshr i32 %3181, 4
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  store i8 %3184, i8* %26, align 1, !tbaa !2447
  %3185 = icmp eq i32 %3168, 0
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %29, align 1, !tbaa !2448
  %3187 = lshr i32 %3168, 31
  %3188 = trunc i32 %3187 to i8
  store i8 %3188, i8* %32, align 1, !tbaa !2449
  %3189 = lshr i32 %3152, 31
  %3190 = xor i32 %3187, %3189
  %3191 = xor i32 %3187, %3167
  %3192 = add nuw nsw i32 %3190, %3191
  %3193 = icmp eq i32 %3192, 2
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %38, align 1, !tbaa !2450
  %3195 = sext i32 %3168 to i64
  store i64 %3195, i64* %RSI, align 8, !tbaa !2428
  %3196 = shl nsw i64 %3195, 2
  %3197 = add i64 %3196, add (i64 ptrtoint (%p_type* @p to i64), i64 20480)
  %3198 = add i64 %317, 33
  store i64 %3198, i64* %PC, align 8
  %3199 = inttoptr i64 %3197 to i32*
  store i32 1, i32* %3199, align 4
  %3200 = load i64, i64* %RBP, align 8
  %3201 = add i64 %3200, -12
  %3202 = load i64, i64* %PC, align 8
  %3203 = add i64 %3202, 3
  store i64 %3203, i64* %PC, align 8
  %3204 = inttoptr i64 %3201 to i32*
  %3205 = load i32, i32* %3204, align 4
  %3206 = add i32 %3205, 1
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RAX, align 8, !tbaa !2428
  %3208 = icmp eq i32 %3205, -1
  %3209 = icmp eq i32 %3206, 0
  %3210 = or i1 %3208, %3209
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %13, align 1, !tbaa !2432
  %3212 = and i32 %3206, 255
  %3213 = tail call i32 @llvm.ctpop.i32(i32 %3212) #8
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  store i8 %3216, i8* %20, align 1, !tbaa !2446
  %3217 = xor i32 %3205, %3206
  %3218 = lshr i32 %3217, 4
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  store i8 %3220, i8* %26, align 1, !tbaa !2447
  %3221 = zext i1 %3209 to i8
  store i8 %3221, i8* %29, align 1, !tbaa !2448
  %3222 = lshr i32 %3206, 31
  %3223 = trunc i32 %3222 to i8
  store i8 %3223, i8* %32, align 1, !tbaa !2449
  %3224 = lshr i32 %3205, 31
  %3225 = xor i32 %3222, %3224
  %3226 = add nuw nsw i32 %3225, %3222
  %3227 = icmp eq i32 %3226, 2
  %3228 = zext i1 %3227 to i8
  store i8 %3228, i8* %38, align 1, !tbaa !2450
  %3229 = add i64 %3202, 9
  store i64 %3229, i64* %PC, align 8
  store i32 %3206, i32* %3204, align 4
  %3230 = load i64, i64* %PC, align 8
  %3231 = add i64 %3230, -52
  store i64 %3231, i64* %PC, align 8, !tbaa !2428
  br label %block_400fbc

block_400a2e:                                     ; preds = %block_400a27, %block_400a38
  %3232 = phi i64 [ %.pre14, %block_400a27 ], [ %3112, %block_400a38 ]
  %3233 = load i64, i64* %RBP, align 8
  %3234 = add i64 %3233, -12
  %3235 = add i64 %3232, 4
  store i64 %3235, i64* %PC, align 8
  %3236 = inttoptr i64 %3234 to i32*
  %3237 = load i32, i32* %3236, align 4
  %3238 = add i32 %3237, -3
  %3239 = icmp ult i32 %3237, 3
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %13, align 1, !tbaa !2432
  %3241 = and i32 %3238, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241) #8
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %20, align 1, !tbaa !2446
  %3246 = xor i32 %3237, %3238
  %3247 = lshr i32 %3246, 4
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  store i8 %3249, i8* %26, align 1, !tbaa !2447
  %3250 = icmp eq i32 %3238, 0
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %29, align 1, !tbaa !2448
  %3252 = lshr i32 %3238, 31
  %3253 = trunc i32 %3252 to i8
  store i8 %3253, i8* %32, align 1, !tbaa !2449
  %3254 = lshr i32 %3237, 31
  %3255 = xor i32 %3252, %3254
  %3256 = add nuw nsw i32 %3255, %3254
  %3257 = icmp eq i32 %3256, 2
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %38, align 1, !tbaa !2450
  %3259 = icmp ne i8 %3253, 0
  %3260 = xor i1 %3259, %3257
  %.demorgan70 = or i1 %3250, %3260
  %.v71 = select i1 %.demorgan70, i64 10, i64 57
  %3261 = add i64 %3232, %.v71
  store i64 %3261, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan70, label %block_400a38, label %block_400a67

block_400a27:                                     ; preds = %block_400a1d
  %3262 = add i64 %3329, -12
  %3263 = add i64 %3346, 7
  store i64 %3263, i64* %PC, align 8
  %3264 = inttoptr i64 %3262 to i32*
  store i32 0, i32* %3264, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400a2e

block_400dd1:                                     ; preds = %block_400e1b, %block_400dca
  %3265 = phi i64 [ %3406, %block_400e1b ], [ %.pre31, %block_400dca ]
  %3266 = load i64, i64* %RBP, align 8
  %3267 = add i64 %3266, -8
  %3268 = add i64 %3265, 4
  store i64 %3268, i64* %PC, align 8
  %3269 = inttoptr i64 %3267 to i32*
  %3270 = load i32, i32* %3269, align 4
  %3271 = add i32 %3270, -2
  %3272 = icmp ult i32 %3270, 2
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %13, align 1, !tbaa !2432
  %3274 = and i32 %3271, 255
  %3275 = tail call i32 @llvm.ctpop.i32(i32 %3274) #8
  %3276 = trunc i32 %3275 to i8
  %3277 = and i8 %3276, 1
  %3278 = xor i8 %3277, 1
  store i8 %3278, i8* %20, align 1, !tbaa !2446
  %3279 = xor i32 %3270, %3271
  %3280 = lshr i32 %3279, 4
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  store i8 %3282, i8* %26, align 1, !tbaa !2447
  %3283 = icmp eq i32 %3271, 0
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %29, align 1, !tbaa !2448
  %3285 = lshr i32 %3271, 31
  %3286 = trunc i32 %3285 to i8
  store i8 %3286, i8* %32, align 1, !tbaa !2449
  %3287 = lshr i32 %3270, 31
  %3288 = xor i32 %3285, %3287
  %3289 = add nuw nsw i32 %3288, %3287
  %3290 = icmp eq i32 %3289, 2
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %38, align 1, !tbaa !2450
  %3292 = icmp ne i8 %3286, 0
  %3293 = xor i1 %3292, %3290
  %.demorgan97 = or i1 %3283, %3293
  %.v98 = select i1 %.demorgan97, i64 10, i64 93
  %3294 = add i64 %3265, %.v98
  store i64 %3294, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan97, label %block_400ddb, label %block_400e2e

block_400b05:                                     ; preds = %block_400acc
  %3295 = add i64 %2508, -8
  %3296 = add i64 %2536, 8
  store i64 %3296, i64* %PC, align 8
  %3297 = inttoptr i64 %3295 to i32*
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
  %3306 = tail call i32 @llvm.ctpop.i32(i32 %3305) #8
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  store i8 %3309, i8* %20, align 1, !tbaa !2446
  %3310 = xor i32 %3298, %3299
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
  %3322 = add i64 %2536, 14
  store i64 %3322, i64* %PC, align 8
  store i32 %3299, i32* %3297, align 4
  %3323 = load i64, i64* %PC, align 8
  %3324 = add i64 %3323, -88
  store i64 %3324, i64* %PC, align 8, !tbaa !2428
  br label %block_400abb

block_400fb5:                                     ; preds = %block_400fab
  %3325 = add i64 %1373, -12
  %3326 = add i64 %1390, 7
  store i64 %3326, i64* %PC, align 8
  %3327 = inttoptr i64 %3325 to i32*
  store i32 0, i32* %3327, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400fbc

block_400a1d:                                     ; preds = %block_400a16, %block_400a67
  %3328 = phi i64 [ %.pre13, %block_400a16 ], [ %2506, %block_400a67 ]
  %3329 = load i64, i64* %RBP, align 8
  %3330 = add i64 %3329, -8
  %3331 = add i64 %3328, 4
  store i64 %3331, i64* %PC, align 8
  %3332 = inttoptr i64 %3330 to i32*
  %3333 = load i32, i32* %3332, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3334 = and i32 %3333, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334) #8
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3339 = icmp eq i32 %3333, 0
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %29, align 1, !tbaa !2448
  %3341 = lshr i32 %3333, 31
  %3342 = trunc i32 %3341 to i8
  store i8 %3342, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3343 = xor i1 %3339, true
  %3344 = icmp eq i8 %3342, 0
  %3345 = and i1 %3344, %3343
  %.v69 = select i1 %3345, i64 93, i64 10
  %3346 = add i64 %3328, %.v69
  store i64 %3346, i64* %PC, align 8, !tbaa !2428
  br i1 %3345, label %block_400a7a, label %block_400a27

block_4010e7:                                     ; preds = %block_401131, %block_4010e0
  %3347 = phi i64 [ %934, %block_401131 ], [ %.pre46, %block_4010e0 ]
  %3348 = load i64, i64* %RBP, align 8
  %3349 = add i64 %3348, -8
  %3350 = add i64 %3347, 4
  store i64 %3350, i64* %PC, align 8
  %3351 = inttoptr i64 %3349 to i32*
  %3352 = load i32, i32* %3351, align 4
  %3353 = add i32 %3352, -1
  %3354 = icmp eq i32 %3352, 0
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %13, align 1, !tbaa !2432
  %3356 = and i32 %3353, 255
  %3357 = tail call i32 @llvm.ctpop.i32(i32 %3356) #8
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  store i8 %3360, i8* %20, align 1, !tbaa !2446
  %3361 = xor i32 %3352, %3353
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  store i8 %3364, i8* %26, align 1, !tbaa !2447
  %3365 = icmp eq i32 %3353, 0
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %29, align 1, !tbaa !2448
  %3367 = lshr i32 %3353, 31
  %3368 = trunc i32 %3367 to i8
  store i8 %3368, i8* %32, align 1, !tbaa !2449
  %3369 = lshr i32 %3352, 31
  %3370 = xor i32 %3367, %3369
  %3371 = add nuw nsw i32 %3370, %3369
  %3372 = icmp eq i32 %3371, 2
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %38, align 1, !tbaa !2450
  %3374 = icmp ne i8 %3368, 0
  %3375 = xor i1 %3374, %3372
  %.demorgan121 = or i1 %3365, %3375
  %.v122 = select i1 %.demorgan121, i64 10, i64 93
  %3376 = add i64 %3347, %.v122
  store i64 %3376, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan121, label %block_4010f1, label %block_401144

block_400e1b:                                     ; preds = %block_400de2
  %3377 = add i64 %1703, -8
  %3378 = add i64 %1720, 8
  store i64 %3378, i64* %PC, align 8
  %3379 = inttoptr i64 %3377 to i32*
  %3380 = load i32, i32* %3379, align 4
  %3381 = add i32 %3380, 1
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RAX, align 8, !tbaa !2428
  %3383 = icmp eq i32 %3380, -1
  %3384 = icmp eq i32 %3381, 0
  %3385 = or i1 %3383, %3384
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %13, align 1, !tbaa !2432
  %3387 = and i32 %3381, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387) #8
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %20, align 1, !tbaa !2446
  %3392 = xor i32 %3380, %3381
  %3393 = lshr i32 %3392, 4
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  store i8 %3395, i8* %26, align 1, !tbaa !2447
  %3396 = zext i1 %3384 to i8
  store i8 %3396, i8* %29, align 1, !tbaa !2448
  %3397 = lshr i32 %3381, 31
  %3398 = trunc i32 %3397 to i8
  store i8 %3398, i8* %32, align 1, !tbaa !2449
  %3399 = lshr i32 %3380, 31
  %3400 = xor i32 %3397, %3399
  %3401 = add nuw nsw i32 %3400, %3397
  %3402 = icmp eq i32 %3401, 2
  %3403 = zext i1 %3402 to i8
  store i8 %3403, i8* %38, align 1, !tbaa !2450
  %3404 = add i64 %1720, 14
  store i64 %3404, i64* %PC, align 8
  store i32 %3381, i32* %3379, align 4
  %3405 = load i64, i64* %PC, align 8
  %3406 = add i64 %3405, -88
  store i64 %3406, i64* %PC, align 8, !tbaa !2428
  br label %block_400dd1

block_4010f1:                                     ; preds = %block_4010e7
  %3407 = add i64 %3348, -12
  %3408 = add i64 %3376, 7
  store i64 %3408, i64* %PC, align 8
  %3409 = inttoptr i64 %3407 to i32*
  store i32 0, i32* %3409, align 4
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_4010f8

block_400b59:                                     ; preds = %block_400ba3, %block_400b52
  %3410 = phi i64 [ %2403, %block_400ba3 ], [ %.pre19, %block_400b52 ]
  %3411 = load i64, i64* %RBP, align 8
  %3412 = add i64 %3411, -8
  %3413 = add i64 %3410, 4
  store i64 %3413, i64* %PC, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = add i32 %3415, -3
  %3417 = icmp ult i32 %3415, 3
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %13, align 1, !tbaa !2432
  %3419 = and i32 %3416, 255
  %3420 = tail call i32 @llvm.ctpop.i32(i32 %3419) #8
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  %3423 = xor i8 %3422, 1
  store i8 %3423, i8* %20, align 1, !tbaa !2446
  %3424 = xor i32 %3415, %3416
  %3425 = lshr i32 %3424, 4
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  store i8 %3427, i8* %26, align 1, !tbaa !2447
  %3428 = icmp eq i32 %3416, 0
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %29, align 1, !tbaa !2448
  %3430 = lshr i32 %3416, 31
  %3431 = trunc i32 %3430 to i8
  store i8 %3431, i8* %32, align 1, !tbaa !2449
  %3432 = lshr i32 %3415, 31
  %3433 = xor i32 %3430, %3432
  %3434 = add nuw nsw i32 %3433, %3432
  %3435 = icmp eq i32 %3434, 2
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %38, align 1, !tbaa !2450
  %3437 = icmp ne i8 %3431, 0
  %3438 = xor i1 %3437, %3435
  %.demorgan79 = or i1 %3428, %3438
  %.v80 = select i1 %.demorgan79, i64 10, i64 93
  %3439 = add i64 %3410, %.v80
  store i64 %3439, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan79, label %block_400b63, label %block_400bb6

block_400a16:                                     ; preds = %block_400a0c
  %3440 = add i64 %3572, -8
  %3441 = add i64 %3600, 7
  store i64 %3441, i64* %PC, align 8
  %3442 = inttoptr i64 %3440 to i32*
  store i32 0, i32* %3442, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400a1d

block_400c12:                                     ; preds = %block_400c08
  %3443 = add i64 %3633, -4
  %3444 = add i64 %3661, 3
  store i64 %3444, i64* %PC, align 8
  %3445 = inttoptr i64 %3443 to i32*
  %3446 = load i32, i32* %3445, align 4
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RAX, align 8, !tbaa !2428
  %3448 = add i64 %3633, -8
  %3449 = add i64 %3661, 6
  store i64 %3449, i64* %PC, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RCX, align 8, !tbaa !2428
  %3453 = add i64 %3661, 9
  store i64 %3453, i64* %PC, align 8
  %3454 = load i32, i32* %3636, align 4
  %3455 = shl i32 %3454, 3
  %3456 = zext i32 %3455 to i64
  store i64 %3456, i64* %RDX, align 8, !tbaa !2428
  %3457 = add i32 %3455, %3451
  %3458 = shl i32 %3457, 3
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %RCX, align 8, !tbaa !2428
  %3460 = lshr i32 %3457, 28
  %3461 = and i32 %3460, 1
  %3462 = add i32 %3458, %3446
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RAX, align 8, !tbaa !2428
  %3464 = icmp ult i32 %3462, %3446
  %3465 = icmp ult i32 %3462, %3458
  %3466 = or i1 %3464, %3465
  %3467 = zext i1 %3466 to i8
  store i8 %3467, i8* %13, align 1, !tbaa !2432
  %3468 = and i32 %3462, 255
  %3469 = tail call i32 @llvm.ctpop.i32(i32 %3468) #8
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  store i8 %3472, i8* %20, align 1, !tbaa !2446
  %3473 = xor i64 %3459, %3447
  %3474 = trunc i64 %3473 to i32
  %3475 = xor i32 %3474, %3462
  %3476 = lshr i32 %3475, 4
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  store i8 %3478, i8* %26, align 1, !tbaa !2447
  %3479 = icmp eq i32 %3462, 0
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %29, align 1, !tbaa !2448
  %3481 = lshr i32 %3462, 31
  %3482 = trunc i32 %3481 to i8
  store i8 %3482, i8* %32, align 1, !tbaa !2449
  %3483 = lshr i32 %3446, 31
  %3484 = xor i32 %3481, %3483
  %3485 = xor i32 %3481, %3461
  %3486 = add nuw nsw i32 %3484, %3485
  %3487 = icmp eq i32 %3486, 2
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %38, align 1, !tbaa !2450
  %3489 = sext i32 %3462 to i64
  store i64 %3489, i64* %RSI, align 8, !tbaa !2428
  %3490 = shl nsw i64 %3489, 2
  %3491 = add i64 %3490, add (i64 ptrtoint (%p_type* @p to i64), i64 8192)
  %3492 = add i64 %3661, 33
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
  %3507 = tail call i32 @llvm.ctpop.i32(i32 %3506) #8
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  store i8 %3510, i8* %20, align 1, !tbaa !2446
  %3511 = xor i32 %3499, %3500
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
  br label %block_400c08

block_400c8e:                                     ; preds = %block_400c84
  %3526 = add i64 %2160, -8
  %3527 = add i64 %2177, 7
  store i64 %3527, i64* %PC, align 8
  %3528 = inttoptr i64 %3526 to i32*
  store i32 0, i32* %3528, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400c95

block_40085c:                                     ; preds = %block_40084f
  %3529 = add i64 %2824, 4
  store i64 %3529, i64* %PC, align 8
  %3530 = load i32, i32* %2798, align 4
  %3531 = sext i32 %3530 to i64
  store i64 %3531, i64* %RAX, align 8, !tbaa !2428
  %3532 = shl nsw i64 %3531, 2
  %3533 = add i64 %3532, ptrtoint (%puzzl_type* @puzzl to i64)
  %3534 = add i64 %2824, 15
  store i64 %3534, i64* %PC, align 8
  %3535 = inttoptr i64 %3533 to i32*
  store i32 1, i32* %3535, align 4
  %3536 = load i64, i64* %RBP, align 8
  %3537 = add i64 %3536, -16
  %3538 = load i64, i64* %PC, align 8
  %3539 = add i64 %3538, 3
  store i64 %3539, i64* %PC, align 8
  %3540 = inttoptr i64 %3537 to i32*
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
  %3549 = tail call i32 @llvm.ctpop.i32(i32 %3548) #8
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  store i8 %3552, i8* %20, align 1, !tbaa !2446
  %3553 = xor i32 %3541, %3542
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
  %3565 = add i64 %3538, 9
  store i64 %3565, i64* %PC, align 8
  store i32 %3542, i32* %3540, align 4
  %3566 = load i64, i64* %PC, align 8
  %3567 = add i64 %3566, -37
  store i64 %3567, i64* %PC, align 8, !tbaa !2428
  br label %block_40084f

block_400fa4:                                     ; preds = %block_400f9a
  %3568 = add i64 %379, -8
  %3569 = add i64 %407, 7
  store i64 %3569, i64* %PC, align 8
  %3570 = inttoptr i64 %3568 to i32*
  store i32 0, i32* %3570, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400fab

block_400a0c:                                     ; preds = %block_4009ef, %block_400a7a
  %3571 = phi i64 [ %.pre12, %block_4009ef ], [ %2370, %block_400a7a ]
  %3572 = load i64, i64* %RBP, align 8
  %3573 = add i64 %3572, -4
  %3574 = add i64 %3571, 4
  store i64 %3574, i64* %PC, align 8
  %3575 = inttoptr i64 %3573 to i32*
  %3576 = load i32, i32* %3575, align 4
  %3577 = add i32 %3576, -1
  %3578 = icmp eq i32 %3576, 0
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %13, align 1, !tbaa !2432
  %3580 = and i32 %3577, 255
  %3581 = tail call i32 @llvm.ctpop.i32(i32 %3580) #8
  %3582 = trunc i32 %3581 to i8
  %3583 = and i8 %3582, 1
  %3584 = xor i8 %3583, 1
  store i8 %3584, i8* %20, align 1, !tbaa !2446
  %3585 = xor i32 %3576, %3577
  %3586 = lshr i32 %3585, 4
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  store i8 %3588, i8* %26, align 1, !tbaa !2447
  %3589 = icmp eq i32 %3577, 0
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %29, align 1, !tbaa !2448
  %3591 = lshr i32 %3577, 31
  %3592 = trunc i32 %3591 to i8
  store i8 %3592, i8* %32, align 1, !tbaa !2449
  %3593 = lshr i32 %3576, 31
  %3594 = xor i32 %3591, %3593
  %3595 = add nuw nsw i32 %3594, %3593
  %3596 = icmp eq i32 %3595, 2
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %38, align 1, !tbaa !2450
  %3598 = icmp ne i8 %3592, 0
  %3599 = xor i1 %3598, %3596
  %.demorgan67 = or i1 %3589, %3599
  %.v68 = select i1 %.demorgan67, i64 10, i64 129
  %3600 = add i64 %3571, %.v68
  store i64 %3600, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan67, label %block_400a16, label %block_400a8d

block_400f57:                                     ; preds = %block_400f1e
  %3601 = add i64 %1187, -8
  %3602 = add i64 %1204, 8
  store i64 %3602, i64* %PC, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = add i32 %3604, 1
  %3606 = zext i32 %3605 to i64
  store i64 %3606, i64* %RAX, align 8, !tbaa !2428
  %3607 = icmp eq i32 %3604, -1
  %3608 = icmp eq i32 %3605, 0
  %3609 = or i1 %3607, %3608
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %13, align 1, !tbaa !2432
  %3611 = and i32 %3605, 255
  %3612 = tail call i32 @llvm.ctpop.i32(i32 %3611) #8
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = xor i8 %3614, 1
  store i8 %3615, i8* %20, align 1, !tbaa !2446
  %3616 = xor i32 %3604, %3605
  %3617 = lshr i32 %3616, 4
  %3618 = trunc i32 %3617 to i8
  %3619 = and i8 %3618, 1
  store i8 %3619, i8* %26, align 1, !tbaa !2447
  %3620 = zext i1 %3608 to i8
  store i8 %3620, i8* %29, align 1, !tbaa !2448
  %3621 = lshr i32 %3605, 31
  %3622 = trunc i32 %3621 to i8
  store i8 %3622, i8* %32, align 1, !tbaa !2449
  %3623 = lshr i32 %3604, 31
  %3624 = xor i32 %3621, %3623
  %3625 = add nuw nsw i32 %3624, %3621
  %3626 = icmp eq i32 %3625, 2
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %38, align 1, !tbaa !2450
  %3628 = add i64 %1204, 14
  store i64 %3628, i64* %PC, align 8
  store i32 %3605, i32* %3603, align 4
  %3629 = load i64, i64* %PC, align 8
  %3630 = add i64 %3629, -88
  store i64 %3630, i64* %PC, align 8, !tbaa !2428
  br label %block_400f0d

block_4009ef:                                     ; preds = %block_40096e
  store i32 0, i32* bitcast (%class_type* @class to i32*), align 16
  store i32 11, i32* bitcast (%piecemax_type* @piecemax to i32*), align 16
  %3631 = add i64 %1182, 29
  store i64 %3631, i64* %PC, align 8
  store i32 0, i32* %1157, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400a0c

block_400c08:                                     ; preds = %block_400c01, %block_400c12
  %3632 = phi i64 [ %.pre23, %block_400c01 ], [ %3525, %block_400c12 ]
  %3633 = load i64, i64* %RBP, align 8
  %3634 = add i64 %3633, -12
  %3635 = add i64 %3632, 4
  store i64 %3635, i64* %PC, align 8
  %3636 = inttoptr i64 %3634 to i32*
  %3637 = load i32, i32* %3636, align 4
  %3638 = add i32 %3637, -1
  %3639 = icmp eq i32 %3637, 0
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %13, align 1, !tbaa !2432
  %3641 = and i32 %3638, 255
  %3642 = tail call i32 @llvm.ctpop.i32(i32 %3641) #8
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  store i8 %3645, i8* %20, align 1, !tbaa !2446
  %3646 = xor i32 %3637, %3638
  %3647 = lshr i32 %3646, 4
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  store i8 %3649, i8* %26, align 1, !tbaa !2447
  %3650 = icmp eq i32 %3638, 0
  %3651 = zext i1 %3650 to i8
  store i8 %3651, i8* %29, align 1, !tbaa !2448
  %3652 = lshr i32 %3638, 31
  %3653 = trunc i32 %3652 to i8
  store i8 %3653, i8* %32, align 1, !tbaa !2449
  %3654 = lshr i32 %3637, 31
  %3655 = xor i32 %3652, %3654
  %3656 = add nuw nsw i32 %3655, %3654
  %3657 = icmp eq i32 %3656, 2
  %3658 = zext i1 %3657 to i8
  store i8 %3658, i8* %38, align 1, !tbaa !2450
  %3659 = icmp ne i8 %3653, 0
  %3660 = xor i1 %3659, %3657
  %.demorgan85 = or i1 %3650, %3660
  %.v86 = select i1 %.demorgan85, i64 10, i64 57
  %3661 = add i64 %3632, %.v86
  store i64 %3661, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan85, label %block_400c12, label %block_400c41

block_400c01:                                     ; preds = %block_400bf7
  %3662 = add i64 %57, -12
  %3663 = add i64 %74, 7
  store i64 %3663, i64* %PC, align 8
  %3664 = inttoptr i64 %3662 to i32*
  store i32 0, i32* %3664, align 4
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
  %.pre = load i64, i64* %PC, align 8
  br label %block_4005f1

block_40069d:                                     ; preds = %block_40068b
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
  br label %block_4006c2

block_40063c:                                     ; preds = %block_400605, %block_400628
  %41 = phi i64 [ %316, %block_400605 ], [ %.pre3, %block_400628 ]
  %42 = phi i64 [ %267, %block_400605 ], [ %.pre2, %block_400628 ]
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
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %28, align 1, !tbaa !2446
  %58 = xor i32 %46, %47
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
  br label %block_4005f1

block_4006bb:                                     ; preds = %block_40067e
  %73 = add i64 %269, -4
  %74 = add i64 %298, 7
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  store i32 0, i32* %75, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_4006c2

block_4006a8:                                     ; preds = %block_40068b
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
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #8
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %28, align 1, !tbaa !2446
  %89 = xor i32 %77, %78
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
  br label %block_40067e

block_40064f:                                     ; preds = %block_4005f1
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
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #8
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %28, align 1, !tbaa !2446
  %127 = xor i32 %117, %118
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
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_40067e

block_40068b:                                     ; preds = %block_40067e
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
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #8
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
  %.v9 = select i1 %176, i64 18, i64 29
  %180 = add i64 %298, %.v9
  store i64 %180, i64* %PC, align 8, !tbaa !2428
  br i1 %176, label %block_40069d, label %block_4006a8

block_400628:                                     ; preds = %block_400605
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
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #8
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
  %.pre2 = load i64, i64* %PC, align 8
  %.pre3 = load i64, i64* %RBP, align 8
  br label %block_40063c

block_400605:                                     ; preds = %block_4005f1
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %220 = add i64 %358, 14
  store i64 %220, i64* %PC, align 8
  %221 = load i32, i32* %324, align 4
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 11
  store i64 %223, i64* %RCX, align 8, !tbaa !2428
  %224 = lshr i64 %222, 52
  %225 = and i64 %224, 1
  %226 = add i64 %223, ptrtoint (%p_type* @p to i64)
  store i64 %226, i64* %RAX, align 8, !tbaa !2428
  %227 = icmp ult i64 %226, ptrtoint (%p_type* @p to i64)
  %228 = icmp ult i64 %226, %223
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %27, align 1, !tbaa !2432
  %231 = trunc i64 %226 to i32
  %232 = and i32 %231, 240
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232) #8
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %28, align 1, !tbaa !2446
  %237 = xor i64 %226, ptrtoint (%p_type* @p to i64)
  %238 = lshr exact i64 %237, 4
  %239 = trunc i64 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %29, align 1, !tbaa !2447
  %241 = icmp eq i64 %226, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %30, align 1, !tbaa !2448
  %243 = lshr i64 %226, 63
  %244 = trunc i64 %243 to i8
  store i8 %244, i8* %31, align 1, !tbaa !2449
  %245 = xor i64 %243, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %246 = xor i64 %243, %225
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
  %254 = add i64 %253, %226
  %255 = add i64 %358, 29
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %258 = and i32 %257, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258) #8
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
  %.v6 = select i1 %263, i64 55, i64 35
  %267 = add i64 %358, %.v6
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br i1 %263, label %block_40063c, label %block_400628

block_40067e:                                     ; preds = %block_40064f, %block_4006a8
  %268 = phi i64 [ %.pre4, %block_40064f ], [ %103, %block_4006a8 ]
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
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277) #8
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
  %.demorgan7 = or i1 %287, %297
  %.v8 = select i1 %.demorgan7, i64 13, i64 61
  %298 = add i64 %268, %.v8
  store i64 %298, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan7, label %block_40068b, label %block_4006bb

block_4006c2:                                     ; preds = %block_4006bb, %block_40069d
  %299 = phi i64 [ %.pre5, %block_4006bb ], [ %40, %block_40069d ]
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

block_4005f1:                                     ; preds = %block_40063c, %block_4005e0
  %315 = phi i64 [ %.pre, %block_4005e0 ], [ %72, %block_40063c ]
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
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #8
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
  %.v = select i1 %.demorgan, i64 20, i64 94
  %358 = add i64 %315, %.v
  store i64 %358, i64* %PC, align 8, !tbaa !2428
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
  store i64 %19, i64* %RCX, align 8, !tbaa !2428
  store i64 %19, i64* %RAX, align 8, !tbaa !2428
  %27 = add i64 %9, 48
  store i64 %27, i64* %PC, align 8
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %29 = add i64 %9, 49
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %6 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %PC, align 8, !tbaa !2428
  %32 = add i64 %7, 16
  store i64 %32, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400430__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400430:
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
define %struct.Memory* @sub_401280_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401280:
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
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #8
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
  br label %block_401296

block_4012b3:                                     ; preds = %block_401296
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP, align 8
  %47 = add i64 %46, 16
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  %48 = icmp ugt i64 %46, -17
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %12, align 1, !tbaa !2432
  %50 = trunc i64 %47 to i32
  %51 = and i32 %50, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #8
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

block_401296:                                     ; preds = %block_4012a0, %block_401280
  %78 = phi i64 [ %.pre, %block_401280 ], [ %145, %block_4012a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401280 ], [ %113, %block_4012a0 ]
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
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %19, align 1, !tbaa !2446
  %92 = xor i32 %83, %84
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
  br i1 %106, label %block_4012a0, label %block_4012b3

block_4012a0:                                     ; preds = %block_401296
  %108 = add i64 %107, -2656
  %109 = add i64 %107, 5
  %110 = load i64, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %113 = tail call %struct.Memory* @sub_400840_Puzzle_renamed_(%struct.State* nonnull %0, i64 %108, %struct.Memory* %MEMORY.0)
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
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #8
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %19, align 1, !tbaa !2446
  %131 = xor i32 %119, %120
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
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_619230___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
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
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4004b9, label %block_4004d0

block_4004d0:                                     ; preds = %block_4004b0
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

block_4004b9:                                     ; preds = %block_4004b0
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
  %36 = tail call %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4003c8.block_4003da_crit_edge, label %block_4003d8

block_4003c8.block_4003da_crit_edge:              ; preds = %block_4003c8
  br label %block_4003da

block_4003d8:                                     ; preds = %block_4003c8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4003da

block_4003da:                                     ; preds = %block_4003c8.block_4003da_crit_edge, %block_4003d8
  %27 = phi i64 [ %22, %block_4003c8.block_4003da_crit_edge ], [ %.pre1, %block_4003d8 ]
  %28 = phi i64 [ %4, %block_4003c8.block_4003da_crit_edge ], [ %.pre, %block_4003d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003c8.block_4003da_crit_edge ], [ %26, %block_4003d8 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
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
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_401330___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401330:
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
  %13 = inttoptr i64 %6 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %PC, align 8, !tbaa !2428
  %15 = add i64 %6, 8
  store i64 %15, i64* %5, align 8, !tbaa !2428
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
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006e1

block_40073f:                                     ; preds = %block_4006e1
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
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %28, align 1, !tbaa !2446
  %58 = xor i32 %46, %47
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

block_4006f5:                                     ; preds = %block_4006e1
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %93 = add i64 %255, 14
  store i64 %93, i64* %PC, align 8
  %94 = load i32, i32* %221, align 4
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 11
  store i64 %96, i64* %RCX, align 8, !tbaa !2428
  %97 = lshr i64 %95, 52
  %98 = and i64 %97, 1
  %99 = add i64 %96, ptrtoint (%p_type* @p to i64)
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = icmp ult i64 %99, ptrtoint (%p_type* @p to i64)
  %101 = icmp ult i64 %99, %96
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %27, align 1, !tbaa !2432
  %104 = trunc i64 %99 to i32
  %105 = and i32 %104, 240
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105) #8
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %28, align 1, !tbaa !2446
  %110 = xor i64 %99, ptrtoint (%p_type* @p to i64)
  %111 = lshr exact i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %29, align 1, !tbaa !2447
  %114 = icmp eq i64 %99, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %30, align 1, !tbaa !2448
  %116 = lshr i64 %99, 63
  %117 = trunc i64 %116 to i8
  store i8 %117, i8* %31, align 1, !tbaa !2449
  %118 = xor i64 %116, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %119 = xor i64 %116, %98
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
  %127 = add i64 %126, %99
  %128 = add i64 %255, 29
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  store i8 0, i8* %27, align 1, !tbaa !2432
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #8
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
  %.v3 = select i1 %136, i64 55, i64 35
  %140 = add i64 %255, %.v3
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  br i1 %136, label %block_40072c, label %block_400718

block_40072c:                                     ; preds = %block_400718, %block_4006f5
  %141 = phi i64 [ %.pre2, %block_400718 ], [ %213, %block_4006f5 ]
  %142 = phi i64 [ %.pre1, %block_400718 ], [ %140, %block_4006f5 ]
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
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #8
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %28, align 1, !tbaa !2446
  %158 = xor i32 %146, %147
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
  br label %block_4006e1

block_400718:                                     ; preds = %block_4006f5
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
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #8
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
  %.pre1 = load i64, i64* %PC, align 8
  %.pre2 = load i64, i64* %RBP, align 8
  br label %block_40072c

block_4006e1:                                     ; preds = %block_40072c, %block_4006d0
  %212 = phi i64 [ %.pre, %block_4006d0 ], [ %172, %block_40072c ]
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
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232) #8
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
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
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
  %63 = add i64 %38, -3859
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
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
  br i1 %76, label %block_401316, label %block_4012f6

block_401316:                                     ; preds = %block_401300, %block_4012c0
  %81 = phi i64 [ %80, %block_4012c0 ], [ %179, %block_401300 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4012c0 ], [ %149, %block_401300 ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
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

block_4012f6:                                     ; preds = %block_4012c0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401300

block_401300:                                     ; preds = %block_401300, %block_4012f6
  %134 = phi i64 [ 0, %block_4012f6 ], [ %152, %block_401300 ]
  %135 = phi i64 [ %133, %block_4012f6 ], [ %179, %block_401300 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4012f6 ], [ %149, %block_401300 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #8
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
  br i1 %169, label %block_401316, label %block_401300
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
  %20 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400468, label %block_400451

block_400451:                                     ; preds = %block_400440
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %21 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %21, i64* %PC, align 8, !tbaa !2428
  br label %block_400468

block_400468:                                     ; preds = %block_400451, %block_400440
  %22 = phi i64 [ %21, %block_400451 ], [ %20, %block_400440 ]
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %25 = add i64 %22, 2
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %6 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  %28 = add i64 %6, 8
  store i64 %28, i64* %5, align 8, !tbaa !2428
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
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4004a8, label %block_400493

block_400493:                                     ; preds = %block_400470
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %35 = add i64 %34, 21
  store i64 %35, i64* %PC, align 8, !tbaa !2428
  br label %block_4004a8

block_4004a8:                                     ; preds = %block_400493, %block_400470
  %36 = phi i64 [ %35, %block_400493 ], [ %34, %block_400470 ]
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC, align 8
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %39 = add i64 %36, 2
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %6 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %PC, align 8, !tbaa !2428
  %42 = add i64 %7, 16
  store i64 %42, i64* %5, align 8, !tbaa !2428
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
