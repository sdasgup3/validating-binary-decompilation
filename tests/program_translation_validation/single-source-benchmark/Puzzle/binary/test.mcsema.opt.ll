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

declare %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400840_Puzzle_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006d0_Remove_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %42 = add i64 %210, -3597
  %43 = add i64 %210, 17
  %44 = load i64, i64* %RSP, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %46, align 8
  store i64 %45, i64* %RSP, align 8, !tbaa !2428
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %47 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %198)
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
  %56 = phi i64 [ %.pre22, %block_400bf0 ], [ %3018, %block_400c41 ]
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
  %75 = add i64 %291, -8
  %76 = add i64 %319, 8
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
  %102 = add i64 %319, 14
  store i64 %102, i64* %PC, align 8
  store i32 %79, i32* %77, align 4
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, -88
  store i64 %104, i64* %PC, align 8, !tbaa !2428
  br label %block_400fab

block_400dec:                                     ; preds = %block_400de2
  %105 = add i64 %1715, -4
  %106 = add i64 %1732, 3
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = add i64 %1715, -8
  %111 = add i64 %1732, 6
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RCX, align 8, !tbaa !2428
  %115 = add i64 %1732, 9
  store i64 %115, i64* %PC, align 8
  %116 = load i32, i32* %1718, align 4
  %117 = shl i32 %116, 3
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RDX, align 8, !tbaa !2428
  %119 = add i32 %117, %113
  %120 = shl i32 %119, 3
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = lshr i32 %119, 28
  %123 = and i32 %122, 1
  %124 = load i64, i64* %RAX, align 8
  %125 = trunc i64 %124 to i32
  %126 = add i32 %120, %125
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = icmp ult i32 %126, %125
  %129 = icmp ult i32 %126, %120
  %130 = or i1 %128, %129
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %13, align 1, !tbaa !2432
  %132 = and i32 %126, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132) #8
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %20, align 1, !tbaa !2446
  %137 = xor i64 %121, %124
  %138 = trunc i64 %137 to i32
  %139 = xor i32 %138, %126
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, i8* %26, align 1, !tbaa !2447
  %143 = icmp eq i32 %126, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %29, align 1, !tbaa !2448
  %145 = lshr i32 %126, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %32, align 1, !tbaa !2449
  %147 = lshr i32 %125, 31
  %148 = xor i32 %145, %147
  %149 = xor i32 %145, %123
  %150 = add nuw nsw i32 %148, %149
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %38, align 1, !tbaa !2450
  %153 = sext i32 %126 to i64
  store i64 %153, i64* %RSI, align 8, !tbaa !2428
  %154 = shl nsw i64 %153, 2
  %155 = add i64 %154, add (i64 ptrtoint (%p_type* @p to i64), i64 14336)
  %156 = add i64 %1732, 33
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 1, i32* %157, align 4
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -12
  %160 = load i64, i64* %PC, align 8
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %159 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, 1
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = icmp eq i32 %163, -1
  %167 = icmp eq i32 %164, 0
  %168 = or i1 %166, %167
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %13, align 1, !tbaa !2432
  %170 = and i32 %164, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170) #8
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %20, align 1, !tbaa !2446
  %175 = xor i32 %163, %164
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %26, align 1, !tbaa !2447
  %179 = zext i1 %167 to i8
  store i8 %179, i8* %29, align 1, !tbaa !2448
  %180 = lshr i32 %164, 31
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %32, align 1, !tbaa !2449
  %182 = lshr i32 %163, 31
  %183 = xor i32 %180, %182
  %184 = add nuw nsw i32 %183, %180
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %38, align 1, !tbaa !2450
  %187 = add i64 %160, 9
  store i64 %187, i64* %PC, align 8
  store i32 %164, i32* %162, align 4
  %188 = load i64, i64* %PC, align 8
  %189 = add i64 %188, -52
  store i64 %189, i64* %PC, align 8, !tbaa !2428
  br label %block_400de2

block_4011e8:                                     ; preds = %block_4011d4, %block_4011be
  %190 = phi i32 [ %.pre49, %block_4011d4 ], [ %286, %block_4011be ]
  %191 = phi i64 [ %.pre48, %block_4011d4 ], [ %288, %block_4011be ]
  %MEMORY.1 = phi %struct.Memory* [ %1488, %block_4011d4 ], [ %285, %block_4011be ]
  %192 = zext i32 %190 to i64
  store i64 %192, i64* %RDI, align 8, !tbaa !2428
  %193 = add i64 %191, -2680
  %194 = add i64 %191, 12
  %195 = load i64, i64* %RSP, align 8, !tbaa !2428
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %RSP, align 8, !tbaa !2428
  store i64 %193, i64* %PC, align 8, !tbaa !2428
  %198 = tail call %struct.Memory* @sub_400770_Trial_renamed_(%struct.State* nonnull %0, i64 %193, %struct.Memory* %MEMORY.1)
  %199 = load i32, i32* %EAX, align 4
  %200 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %201 = and i32 %199, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #8
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %206 = icmp eq i32 %199, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %29, align 1, !tbaa !2448
  %208 = lshr i32 %199, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v126 = select i1 %206, i64 9, i64 34
  %210 = add i64 %200, %.v126
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  br i1 %206, label %block_4011fd, label %block_401216

block_400be6:                                     ; preds = %block_400c54, %block_400bc9
  %211 = phi i64 [ %2752, %block_400c54 ], [ %.pre21, %block_400bc9 ]
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -4
  %214 = add i64 %211, 4
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, -3
  %218 = icmp ult i32 %216, 3
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %13, align 1, !tbaa !2432
  %220 = and i32 %217, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #8
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %20, align 1, !tbaa !2446
  %225 = xor i32 %216, %217
  %226 = lshr i32 %225, 4
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %26, align 1, !tbaa !2447
  %229 = icmp eq i32 %217, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %29, align 1, !tbaa !2448
  %231 = lshr i32 %217, 31
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %32, align 1, !tbaa !2449
  %233 = lshr i32 %216, 31
  %234 = xor i32 %231, %233
  %235 = add nuw nsw i32 %234, %233
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %38, align 1, !tbaa !2450
  %238 = icmp ne i8 %232, 0
  %239 = xor i1 %238, %236
  %.demorgan82 = or i1 %229, %239
  %.v83 = select i1 %.demorgan82, i64 10, i64 129
  %240 = add i64 %211, %.v83
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan82, label %block_400bf0, label %block_400c67

block_4010a6:                                     ; preds = %block_401049
  %241 = add i64 %2878, -4
  %242 = add i64 %2906, 8
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i32*
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
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251) #8
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %20, align 1, !tbaa !2446
  %256 = xor i32 %244, %245
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %26, align 1, !tbaa !2447
  %260 = zext i1 %248 to i8
  store i8 %260, i8* %29, align 1, !tbaa !2448
  %261 = lshr i32 %245, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %32, align 1, !tbaa !2449
  %263 = lshr i32 %244, 31
  %264 = xor i32 %261, %263
  %265 = add nuw nsw i32 %264, %261
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %38, align 1, !tbaa !2450
  %268 = add i64 %2906, 14
  store i64 %268, i64* %PC, align 8
  store i32 %245, i32* %243, align 4
  %269 = load i64, i64* %PC, align 8
  %270 = add i64 %269, -124
  store i64 %270, i64* %PC, align 8, !tbaa !2428
  br label %block_401038

block_400ddb:                                     ; preds = %block_400dd1
  %271 = add i64 %3292, -12
  %272 = add i64 %3320, 7
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i32*
  store i32 0, i32* %273, align 4
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
  %274 = load i64, i64* %RBP, align 8
  %275 = add i64 %274, -16
  %276 = add i64 %3046, 5
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RSI, align 8, !tbaa !2428
  %280 = add i64 %3046, -3038
  %281 = add i64 %3046, 10
  %282 = load i64, i64* %RSP, align 8, !tbaa !2428
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %281, i64* %284, align 8
  store i64 %283, i64* %RSP, align 8, !tbaa !2428
  store i64 %280, i64* %PC, align 8, !tbaa !2428
  %285 = tail call %struct.Memory* @sub_4005e0_Place_renamed_(%struct.State* nonnull %0, i64 %280, %struct.Memory* %3034)
  %286 = load i32, i32* %EAX, align 4
  %287 = load i64, i64* %PC, align 8
  store i32 %286, i32* bitcast (%n_type* @n to i32*), align 8
  %288 = add i64 %287, 32
  store i64 %288, i64* %PC, align 8, !tbaa !2428
  br label %block_4011e8

block_400da3:                                     ; preds = %block_400d22
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 24) to i32*), align 8
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 24) to i32*), align 8
  %289 = add i64 %1076, 29
  store i64 %289, i64* %PC, align 8
  store i32 0, i32* %1051, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400dc0

block_400fbc:                                     ; preds = %block_400fb5, %block_400fc6
  %290 = phi i64 [ %.pre41, %block_400fb5 ], [ %3257, %block_400fc6 ]
  %291 = load i64, i64* %RBP, align 8
  %292 = add i64 %291, -12
  %293 = add i64 %290, 4
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, -1
  %297 = icmp eq i32 %295, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %13, align 1, !tbaa !2432
  %299 = and i32 %296, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #8
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %20, align 1, !tbaa !2446
  %304 = xor i32 %295, %296
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %26, align 1, !tbaa !2447
  %308 = icmp eq i32 %296, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %29, align 1, !tbaa !2448
  %310 = lshr i32 %296, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %32, align 1, !tbaa !2449
  %312 = lshr i32 %295, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %312
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %38, align 1, !tbaa !2450
  %317 = icmp ne i8 %311, 0
  %318 = xor i1 %317, %315
  %.demorgan112 = or i1 %308, %318
  %.v113 = select i1 %.demorgan112, i64 10, i64 57
  %319 = add i64 %290, %.v113
  store i64 %319, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan112, label %block_400fc6, label %block_400ff5

block_400bb6:                                     ; preds = %block_400b59
  %320 = add i64 %3437, -4
  %321 = add i64 %3465, 8
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = add i32 %323, 1
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp eq i32 %323, -1
  %327 = icmp eq i32 %324, 0
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %13, align 1, !tbaa !2432
  %330 = and i32 %324, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #8
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %20, align 1, !tbaa !2446
  %335 = xor i32 %323, %324
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %26, align 1, !tbaa !2447
  %339 = zext i1 %327 to i8
  store i8 %339, i8* %29, align 1, !tbaa !2448
  %340 = lshr i32 %324, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %32, align 1, !tbaa !2449
  %342 = lshr i32 %323, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %340
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %38, align 1, !tbaa !2450
  %347 = add i64 %3465, 14
  store i64 %347, i64* %PC, align 8
  store i32 %324, i32* %322, align 4
  %348 = load i64, i64* %PC, align 8
  %349 = add i64 %348, -124
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  br label %block_400b48

block_4010d6:                                     ; preds = %block_4010b9, %block_401144
  %350 = phi i64 [ %.pre45, %block_4010b9 ], [ %1381, %block_401144 ]
  %351 = load i64, i64* %RBP, align 8
  %352 = add i64 %351, -4
  %353 = add i64 %350, 4
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i32 %355, -1
  %357 = icmp eq i32 %355, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %13, align 1, !tbaa !2432
  %359 = and i32 %356, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359) #8
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %20, align 1, !tbaa !2446
  %364 = xor i32 %355, %356
  %365 = lshr i32 %364, 4
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %26, align 1, !tbaa !2447
  %368 = icmp eq i32 %356, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %29, align 1, !tbaa !2448
  %370 = lshr i32 %356, 31
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %32, align 1, !tbaa !2449
  %372 = lshr i32 %355, 31
  %373 = xor i32 %370, %372
  %374 = add nuw nsw i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %38, align 1, !tbaa !2450
  %377 = icmp ne i8 %371, 0
  %378 = xor i1 %377, %375
  %.demorgan119 = or i1 %368, %378
  %.v120 = select i1 %.demorgan119, i64 10, i64 129
  %379 = add i64 %350, %.v120
  store i64 %379, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan119, label %block_4010e0, label %block_401157

block_400f9a:                                     ; preds = %block_401008, %block_400f7d
  %380 = phi i64 [ %3172, %block_401008 ], [ %.pre39, %block_400f7d ]
  %381 = load i64, i64* %RBP, align 8
  %382 = add i64 %381, -4
  %383 = add i64 %380, 4
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, -1
  %387 = icmp eq i32 %385, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %13, align 1, !tbaa !2432
  %389 = and i32 %386, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389) #8
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %20, align 1, !tbaa !2446
  %394 = xor i32 %385, %386
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %26, align 1, !tbaa !2447
  %398 = icmp eq i32 %386, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %29, align 1, !tbaa !2448
  %400 = lshr i32 %386, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %32, align 1, !tbaa !2449
  %402 = lshr i32 %385, 31
  %403 = xor i32 %400, %402
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %38, align 1, !tbaa !2450
  %407 = icmp ne i8 %401, 0
  %408 = xor i1 %407, %405
  %.demorgan109 = or i1 %398, %408
  %.v110 = select i1 %.demorgan109, i64 10, i64 129
  %409 = add i64 %380, %.v110
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan109, label %block_400fa4, label %block_40101b

block_400d90:                                     ; preds = %block_400d33
  %410 = add i64 %2478, -4
  %411 = add i64 %2495, 8
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = add i32 %413, 1
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX, align 8, !tbaa !2428
  %416 = icmp eq i32 %413, -1
  %417 = icmp eq i32 %414, 0
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %13, align 1, !tbaa !2432
  %420 = and i32 %414, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #8
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %20, align 1, !tbaa !2446
  %425 = xor i32 %413, %414
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %26, align 1, !tbaa !2447
  %429 = zext i1 %417 to i8
  store i8 %429, i8* %29, align 1, !tbaa !2448
  %430 = lshr i32 %414, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %32, align 1, !tbaa !2449
  %432 = lshr i32 %413, 31
  %433 = xor i32 %430, %432
  %434 = add nuw nsw i32 %433, %430
  %435 = icmp eq i32 %434, 2
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %38, align 1, !tbaa !2450
  %437 = add i64 %2495, 14
  store i64 %437, i64* %PC, align 8
  store i32 %414, i32* %412, align 4
  %438 = load i64, i64* %PC, align 8
  %439 = add i64 %438, -124
  store i64 %439, i64* %PC, align 8, !tbaa !2428
  br label %block_400d22

block_400989:                                     ; preds = %block_40097f
  %440 = add i64 %1078, -12
  %441 = add i64 %1106, 7
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i32*
  store i32 0, i32* %442, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400990

block_4009dc:                                     ; preds = %block_40097f
  %443 = add i64 %1078, -4
  %444 = add i64 %1106, 8
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = add i32 %446, 1
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RAX, align 8, !tbaa !2428
  %449 = icmp eq i32 %446, -1
  %450 = icmp eq i32 %447, 0
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %13, align 1, !tbaa !2432
  %453 = and i32 %447, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453) #8
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %20, align 1, !tbaa !2446
  %458 = xor i32 %446, %447
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %26, align 1, !tbaa !2447
  %462 = zext i1 %450 to i8
  store i8 %462, i8* %29, align 1, !tbaa !2448
  %463 = lshr i32 %447, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %32, align 1, !tbaa !2449
  %465 = lshr i32 %446, 31
  %466 = xor i32 %463, %465
  %467 = add nuw nsw i32 %466, %463
  %468 = icmp eq i32 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %38, align 1, !tbaa !2450
  %470 = add i64 %1106, 14
  store i64 %470, i64* %PC, align 8
  store i32 %447, i32* %445, align 4
  %471 = load i64, i64* %PC, align 8
  %472 = add i64 %471, -124
  store i64 %472, i64* %PC, align 8, !tbaa !2428
  br label %block_40096e

block_401240:                                     ; preds = %block_40123b, %block_4011fd
  %.sink = phi i64 [ %3051, %block_40123b ], [ %55, %block_4011fd ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.40, %block_40123b ], [ %47, %block_4011fd ]
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %473 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %475 = add i64 %.sink, -3664
  %476 = add i64 %.sink, 24
  %477 = load i64, i64* %RSP, align 8, !tbaa !2428
  %478 = add i64 %477, -8
  %479 = inttoptr i64 %478 to i64*
  store i64 %476, i64* %479, align 8
  store i64 %478, i64* %RSP, align 8, !tbaa !2428
  store i64 %475, i64* %PC, align 8, !tbaa !2428
  %480 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %481 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2428
  %482 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RSI, align 8, !tbaa !2428
  %484 = load i64, i64* %RBP, align 8
  %485 = add i64 %484, -32
  %486 = load i32, i32* %EAX, align 4
  %487 = add i64 %481, 20
  store i64 %487, i64* %PC, align 8
  %488 = inttoptr i64 %485 to i32*
  store i32 %486, i32* %488, align 4
  %489 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %490 = add i64 %489, -3708
  %491 = add i64 %489, 7
  %492 = load i64, i64* %RSP, align 8, !tbaa !2428
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %491, i64* %494, align 8
  store i64 %493, i64* %RSP, align 8, !tbaa !2428
  store i64 %490, i64* %PC, align 8, !tbaa !2428
  %495 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %480)
  %496 = load i64, i64* %RBP, align 8
  %497 = add i64 %496, -36
  %498 = load i32, i32* %EAX, align 4
  %499 = load i64, i64* %PC, align 8
  %500 = add i64 %499, 3
  store i64 %500, i64* %PC, align 8
  %501 = inttoptr i64 %497 to i32*
  store i32 %498, i32* %501, align 4
  %502 = load i64, i64* %RSP, align 8
  %503 = load i64, i64* %PC, align 8
  %504 = add i64 %502, 48
  store i64 %504, i64* %RSP, align 8, !tbaa !2428
  %505 = icmp ugt i64 %502, -49
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %13, align 1, !tbaa !2432
  %507 = trunc i64 %504 to i32
  %508 = and i32 %507, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508) #8
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %20, align 1, !tbaa !2446
  %513 = xor i64 %502, 16
  %514 = xor i64 %513, %504
  %515 = lshr i64 %514, 4
  %516 = trunc i64 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %26, align 1, !tbaa !2447
  %518 = icmp eq i64 %504, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %29, align 1, !tbaa !2448
  %520 = lshr i64 %504, 63
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %32, align 1, !tbaa !2449
  %522 = lshr i64 %502, 63
  %523 = xor i64 %520, %522
  %524 = add nuw nsw i64 %523, %520
  %525 = icmp eq i64 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %38, align 1, !tbaa !2450
  %527 = add i64 %503, 5
  store i64 %527, i64* %PC, align 8
  %528 = add i64 %502, 56
  %529 = inttoptr i64 %504 to i64*
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %RBP, align 8, !tbaa !2428
  store i64 %528, i64* %RSP, align 8, !tbaa !2428
  %531 = add i64 %503, 6
  store i64 %531, i64* %PC, align 8
  %532 = inttoptr i64 %528 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %PC, align 8, !tbaa !2428
  %534 = add i64 %502, 64
  store i64 %534, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %495

block_400f7d:                                     ; preds = %block_400efc
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 36) to i32*), align 4
  store i32 9, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 36) to i32*), align 4
  %535 = add i64 %1245, 29
  store i64 %535, i64* %PC, align 8
  store i32 0, i32* %1220, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400f9a

block_400b74:                                     ; preds = %block_400b6a
  %536 = add i64 %2343, -4
  %537 = add i64 %2360, 3
  store i64 %537, i64* %PC, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RAX, align 8, !tbaa !2428
  %541 = add i64 %2343, -8
  %542 = add i64 %2360, 6
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RCX, align 8, !tbaa !2428
  %546 = add i64 %2360, 9
  store i64 %546, i64* %PC, align 8
  %547 = load i32, i32* %2346, align 4
  %548 = shl i32 %547, 3
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RDX, align 8, !tbaa !2428
  %550 = add i32 %548, %544
  %551 = shl i32 %550, 3
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RCX, align 8, !tbaa !2428
  %553 = lshr i32 %550, 28
  %554 = and i32 %553, 1
  %555 = load i64, i64* %RAX, align 8
  %556 = trunc i64 %555 to i32
  %557 = add i32 %551, %556
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX, align 8, !tbaa !2428
  %559 = icmp ult i32 %557, %556
  %560 = icmp ult i32 %557, %551
  %561 = or i1 %559, %560
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %13, align 1, !tbaa !2432
  %563 = and i32 %557, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #8
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %20, align 1, !tbaa !2446
  %568 = xor i64 %552, %555
  %569 = trunc i64 %568 to i32
  %570 = xor i32 %569, %557
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %26, align 1, !tbaa !2447
  %574 = icmp eq i32 %557, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %29, align 1, !tbaa !2448
  %576 = lshr i32 %557, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %32, align 1, !tbaa !2449
  %578 = lshr i32 %556, 31
  %579 = xor i32 %576, %578
  %580 = xor i32 %576, %554
  %581 = add nuw nsw i32 %579, %580
  %582 = icmp eq i32 %581, 2
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %38, align 1, !tbaa !2450
  %584 = sext i32 %557 to i64
  store i64 %584, i64* %RSI, align 8, !tbaa !2428
  %585 = shl nsw i64 %584, 2
  %586 = add i64 %585, add (i64 ptrtoint (%p_type* @p to i64), i64 6144)
  %587 = add i64 %2360, 33
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i32*
  store i32 1, i32* %588, align 4
  %589 = load i64, i64* %RBP, align 8
  %590 = add i64 %589, -12
  %591 = load i64, i64* %PC, align 8
  %592 = add i64 %591, 3
  store i64 %592, i64* %PC, align 8
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = add i32 %594, 1
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX, align 8, !tbaa !2428
  %597 = icmp eq i32 %594, -1
  %598 = icmp eq i32 %595, 0
  %599 = or i1 %597, %598
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %13, align 1, !tbaa !2432
  %601 = and i32 %595, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601) #8
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %20, align 1, !tbaa !2446
  %606 = xor i32 %594, %595
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %26, align 1, !tbaa !2447
  %610 = zext i1 %598 to i8
  store i8 %610, i8* %29, align 1, !tbaa !2448
  %611 = lshr i32 %595, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %32, align 1, !tbaa !2449
  %613 = lshr i32 %594, 31
  %614 = xor i32 %611, %613
  %615 = add nuw nsw i32 %614, %611
  %616 = icmp eq i32 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %38, align 1, !tbaa !2450
  %618 = add i64 %591, 9
  store i64 %618, i64* %PC, align 8
  store i32 %595, i32* %593, align 4
  %619 = load i64, i64* %PC, align 8
  %620 = add i64 %619, -52
  store i64 %620, i64* %PC, align 8, !tbaa !2428
  br label %block_400b6a

block_400f6a:                                     ; preds = %block_400f0d
  %621 = add i64 %2960, -4
  %622 = add i64 %2988, 8
  store i64 %622, i64* %PC, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = add i32 %624, 1
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX, align 8, !tbaa !2428
  %627 = icmp eq i32 %624, -1
  %628 = icmp eq i32 %625, 0
  %629 = or i1 %627, %628
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %13, align 1, !tbaa !2432
  %631 = and i32 %625, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631) #8
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %20, align 1, !tbaa !2446
  %636 = xor i32 %624, %625
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %26, align 1, !tbaa !2447
  %640 = zext i1 %628 to i8
  store i8 %640, i8* %29, align 1, !tbaa !2448
  %641 = lshr i32 %625, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %32, align 1, !tbaa !2449
  %643 = lshr i32 %624, 31
  %644 = xor i32 %641, %643
  %645 = add nuw nsw i32 %644, %641
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %38, align 1, !tbaa !2450
  %648 = add i64 %2988, 14
  store i64 %648, i64* %PC, align 8
  store i32 %625, i32* %623, align 4
  %649 = load i64, i64* %PC, align 8
  %650 = add i64 %649, -124
  store i64 %650, i64* %PC, align 8, !tbaa !2428
  br label %block_400efc

block_400967:                                     ; preds = %block_400908
  %651 = add i64 %2721, 7
  store i64 %651, i64* %PC, align 8
  store i32 0, i32* %2696, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_40096e

block_400b63:                                     ; preds = %block_400b59
  %652 = add i64 %3437, -12
  %653 = add i64 %3465, 7
  store i64 %653, i64* %PC, align 8
  %654 = inttoptr i64 %652 to i32*
  store i32 0, i32* %654, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400b6a

block_400954:                                     ; preds = %block_400919
  %655 = add i64 %2227, -4
  %656 = add i64 %2256, 8
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
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665) #8
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %20, align 1, !tbaa !2446
  %670 = xor i32 %658, %659
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
  %682 = add i64 %2256, 14
  store i64 %682, i64* %PC, align 8
  store i32 %659, i32* %657, align 4
  %683 = load i64, i64* %PC, align 8
  %684 = add i64 %683, -90
  store i64 %684, i64* %PC, align 8, !tbaa !2428
  br label %block_400908

block_401038:                                     ; preds = %block_40101b, %block_4010a6
  %685 = phi i64 [ %.pre42, %block_40101b ], [ %270, %block_4010a6 ]
  %686 = load i64, i64* %RBP, align 8
  %687 = add i64 %686, -4
  %688 = add i64 %685, 4
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %691 = and i32 %690, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691) #8
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %696 = icmp eq i32 %690, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %29, align 1, !tbaa !2448
  %698 = lshr i32 %690, 31
  %699 = trunc i32 %698 to i8
  store i8 %699, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %700 = xor i1 %696, true
  %701 = icmp eq i8 %699, 0
  %702 = and i1 %701, %700
  %.v114 = select i1 %702, i64 129, i64 10
  %703 = add i64 %685, %.v114
  store i64 %703, i64* %PC, align 8, !tbaa !2428
  br i1 %702, label %block_4010b9, label %block_401042

block_400d4e:                                     ; preds = %block_400d44
  %704 = add i64 %1141, -4
  %705 = add i64 %1158, 3
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RAX, align 8, !tbaa !2428
  %709 = add i64 %1141, -8
  %710 = add i64 %1158, 6
  store i64 %710, i64* %PC, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RCX, align 8, !tbaa !2428
  %714 = add i64 %1158, 9
  store i64 %714, i64* %PC, align 8
  %715 = load i32, i32* %1144, align 4
  %716 = shl i32 %715, 3
  %717 = zext i32 %716 to i64
  store i64 %717, i64* %RDX, align 8, !tbaa !2428
  %718 = add i32 %716, %712
  %719 = shl i32 %718, 3
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RCX, align 8, !tbaa !2428
  %721 = lshr i32 %718, 28
  %722 = and i32 %721, 1
  %723 = load i64, i64* %RAX, align 8
  %724 = trunc i64 %723 to i32
  %725 = add i32 %719, %724
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RAX, align 8, !tbaa !2428
  %727 = icmp ult i32 %725, %724
  %728 = icmp ult i32 %725, %719
  %729 = or i1 %727, %728
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %13, align 1, !tbaa !2432
  %731 = and i32 %725, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #8
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %20, align 1, !tbaa !2446
  %736 = xor i64 %720, %723
  %737 = trunc i64 %736 to i32
  %738 = xor i32 %737, %725
  %739 = lshr i32 %738, 4
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %26, align 1, !tbaa !2447
  %742 = icmp eq i32 %725, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %29, align 1, !tbaa !2448
  %744 = lshr i32 %725, 31
  %745 = trunc i32 %744 to i8
  store i8 %745, i8* %32, align 1, !tbaa !2449
  %746 = lshr i32 %724, 31
  %747 = xor i32 %744, %746
  %748 = xor i32 %744, %722
  %749 = add nuw nsw i32 %747, %748
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %38, align 1, !tbaa !2450
  %752 = sext i32 %725 to i64
  store i64 %752, i64* %RSI, align 8, !tbaa !2428
  %753 = shl nsw i64 %752, 2
  %754 = add i64 %753, add (i64 ptrtoint (%p_type* @p to i64), i64 12288)
  %755 = add i64 %1158, 33
  store i64 %755, i64* %PC, align 8
  %756 = inttoptr i64 %754 to i32*
  store i32 1, i32* %756, align 4
  %757 = load i64, i64* %RBP, align 8
  %758 = add i64 %757, -12
  %759 = load i64, i64* %PC, align 8
  %760 = add i64 %759, 3
  store i64 %760, i64* %PC, align 8
  %761 = inttoptr i64 %758 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = add i32 %762, 1
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX, align 8, !tbaa !2428
  %765 = icmp eq i32 %762, -1
  %766 = icmp eq i32 %763, 0
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %13, align 1, !tbaa !2432
  %769 = and i32 %763, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769) #8
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %20, align 1, !tbaa !2446
  %774 = xor i32 %762, %763
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %26, align 1, !tbaa !2447
  %778 = zext i1 %766 to i8
  store i8 %778, i8* %29, align 1, !tbaa !2448
  %779 = lshr i32 %763, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %32, align 1, !tbaa !2449
  %781 = lshr i32 %762, 31
  %782 = xor i32 %779, %781
  %783 = add nuw nsw i32 %782, %779
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %38, align 1, !tbaa !2450
  %786 = add i64 %759, 9
  store i64 %786, i64* %PC, align 8
  store i32 %763, i32* %761, align 4
  %787 = load i64, i64* %PC, align 8
  %788 = add i64 %787, -52
  store i64 %788, i64* %PC, align 8, !tbaa !2428
  br label %block_400d44

block_400dca:                                     ; preds = %block_400dc0
  %789 = add i64 %1432, -8
  %790 = add i64 %1449, 7
  store i64 %790, i64* %PC, align 8
  %791 = inttoptr i64 %789 to i32*
  store i32 0, i32* %791, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400dd1

block_400e8a:                                     ; preds = %block_400e80
  %792 = add i64 %2444, -4
  %793 = add i64 %2472, 3
  store i64 %793, i64* %PC, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX, align 8, !tbaa !2428
  %797 = add i64 %2444, -8
  %798 = add i64 %2472, 6
  store i64 %798, i64* %PC, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RCX, align 8, !tbaa !2428
  %802 = add i64 %2472, 9
  store i64 %802, i64* %PC, align 8
  %803 = load i32, i32* %2447, align 4
  %804 = shl i32 %803, 3
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RDX, align 8, !tbaa !2428
  %806 = add i32 %804, %800
  %807 = shl i32 %806, 3
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RCX, align 8, !tbaa !2428
  %809 = lshr i32 %806, 28
  %810 = and i32 %809, 1
  %811 = load i64, i64* %RAX, align 8
  %812 = trunc i64 %811 to i32
  %813 = add i32 %807, %812
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RAX, align 8, !tbaa !2428
  %815 = icmp ult i32 %813, %812
  %816 = icmp ult i32 %813, %807
  %817 = or i1 %815, %816
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %13, align 1, !tbaa !2432
  %819 = and i32 %813, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819) #8
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %20, align 1, !tbaa !2446
  %824 = xor i64 %808, %811
  %825 = trunc i64 %824 to i32
  %826 = xor i32 %825, %813
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %26, align 1, !tbaa !2447
  %830 = icmp eq i32 %813, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1, !tbaa !2448
  %832 = lshr i32 %813, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %32, align 1, !tbaa !2449
  %834 = lshr i32 %812, 31
  %835 = xor i32 %832, %834
  %836 = xor i32 %832, %810
  %837 = add nuw nsw i32 %835, %836
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %38, align 1, !tbaa !2450
  %840 = sext i32 %813 to i64
  store i64 %840, i64* %RSI, align 8, !tbaa !2428
  %841 = shl nsw i64 %840, 2
  %842 = add i64 %841, add (i64 ptrtoint (%p_type* @p to i64), i64 16384)
  %843 = add i64 %2472, 33
  store i64 %843, i64* %PC, align 8
  %844 = inttoptr i64 %842 to i32*
  store i32 1, i32* %844, align 4
  %845 = load i64, i64* %RBP, align 8
  %846 = add i64 %845, -12
  %847 = load i64, i64* %PC, align 8
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC, align 8
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = add i32 %850, 1
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RAX, align 8, !tbaa !2428
  %853 = icmp eq i32 %850, -1
  %854 = icmp eq i32 %851, 0
  %855 = or i1 %853, %854
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %13, align 1, !tbaa !2432
  %857 = and i32 %851, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857) #8
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %20, align 1, !tbaa !2446
  %862 = xor i32 %850, %851
  %863 = lshr i32 %862, 4
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  store i8 %865, i8* %26, align 1, !tbaa !2447
  %866 = zext i1 %854 to i8
  store i8 %866, i8* %29, align 1, !tbaa !2448
  %867 = lshr i32 %851, 31
  %868 = trunc i32 %867 to i8
  store i8 %868, i8* %32, align 1, !tbaa !2449
  %869 = lshr i32 %850, 31
  %870 = xor i32 %867, %869
  %871 = add nuw nsw i32 %870, %867
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %38, align 1, !tbaa !2450
  %874 = add i64 %847, 9
  store i64 %874, i64* %PC, align 8
  store i32 %851, i32* %849, align 4
  %875 = load i64, i64* %PC, align 8
  %876 = add i64 %875, -52
  store i64 %876, i64* %PC, align 8, !tbaa !2428
  br label %block_400e80

block_400b48:                                     ; preds = %block_400b2b, %block_400bb6
  %877 = phi i64 [ %.pre18, %block_400b2b ], [ %349, %block_400bb6 ]
  %878 = load i64, i64* %RBP, align 8
  %879 = add i64 %878, -4
  %880 = add i64 %877, 4
  store i64 %880, i64* %PC, align 8
  %881 = inttoptr i64 %879 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = add i32 %882, -1
  %884 = icmp eq i32 %882, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %13, align 1, !tbaa !2432
  %886 = and i32 %883, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886) #8
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %20, align 1, !tbaa !2446
  %891 = xor i32 %882, %883
  %892 = lshr i32 %891, 4
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %26, align 1, !tbaa !2447
  %895 = icmp eq i32 %883, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %29, align 1, !tbaa !2448
  %897 = lshr i32 %883, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %32, align 1, !tbaa !2449
  %899 = lshr i32 %882, 31
  %900 = xor i32 %897, %899
  %901 = add nuw nsw i32 %900, %899
  %902 = icmp eq i32 %901, 2
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %38, align 1, !tbaa !2450
  %904 = icmp ne i8 %898, 0
  %905 = xor i1 %904, %902
  %.demorgan77 = or i1 %895, %905
  %.v78 = select i1 %.demorgan77, i64 10, i64 129
  %906 = add i64 %877, %.v78
  store i64 %906, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan77, label %block_400b52, label %block_400bc9

block_4010e0:                                     ; preds = %block_4010d6
  %907 = add i64 %351, -8
  %908 = add i64 %379, 7
  store i64 %908, i64* %PC, align 8
  %909 = inttoptr i64 %907 to i32*
  store i32 0, i32* %909, align 4
  %.pre46 = load i64, i64* %PC, align 8
  br label %block_4010e7

block_400d3d:                                     ; preds = %block_400d33
  %910 = add i64 %2478, -12
  %911 = add i64 %2495, 7
  store i64 %911, i64* %PC, align 8
  %912 = inttoptr i64 %910 to i32*
  store i32 0, i32* %912, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400d44

block_401131:                                     ; preds = %block_4010f8
  %913 = add i64 %1248, -8
  %914 = add i64 %1276, 8
  store i64 %914, i64* %PC, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, 1
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX, align 8, !tbaa !2428
  %919 = icmp eq i32 %916, -1
  %920 = icmp eq i32 %917, 0
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %13, align 1, !tbaa !2432
  %923 = and i32 %917, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923) #8
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %20, align 1, !tbaa !2446
  %928 = xor i32 %916, %917
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %26, align 1, !tbaa !2447
  %932 = zext i1 %920 to i8
  store i8 %932, i8* %29, align 1, !tbaa !2448
  %933 = lshr i32 %917, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %32, align 1, !tbaa !2449
  %935 = lshr i32 %916, 31
  %936 = xor i32 %933, %935
  %937 = add nuw nsw i32 %936, %933
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %38, align 1, !tbaa !2450
  %940 = add i64 %1276, 14
  store i64 %940, i64* %PC, align 8
  store i32 %917, i32* %915, align 4
  %941 = load i64, i64* %PC, align 8
  %942 = add i64 %941, -88
  store i64 %942, i64* %PC, align 8, !tbaa !2428
  br label %block_4010e7

block_400990:                                     ; preds = %block_40099a, %block_400989
  %943 = phi i64 [ %1998, %block_40099a ], [ %.pre11, %block_400989 ]
  %944 = load i64, i64* %RBP, align 8
  %945 = add i64 %944, -12
  %946 = add i64 %943, 4
  store i64 %946, i64* %PC, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %949 = and i32 %948, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949) #8
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %954 = icmp eq i32 %948, 0
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %29, align 1, !tbaa !2448
  %956 = lshr i32 %948, 31
  %957 = trunc i32 %956 to i8
  store i8 %957, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %958 = xor i1 %954, true
  %959 = icmp eq i8 %957, 0
  %960 = and i1 %959, %958
  %.v66 = select i1 %960, i64 57, i64 10
  %961 = add i64 %943, %.v66
  store i64 %961, i64* %PC, align 8, !tbaa !2428
  br i1 %960, label %block_4009c9, label %block_40099a

block_400f28:                                     ; preds = %block_400f1e
  %962 = add i64 %1197, -4
  %963 = add i64 %1214, 3
  store i64 %963, i64* %PC, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RAX, align 8, !tbaa !2428
  %967 = add i64 %1197, -8
  %968 = add i64 %1214, 6
  store i64 %968, i64* %PC, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = zext i32 %970 to i64
  store i64 %971, i64* %RCX, align 8, !tbaa !2428
  %972 = add i64 %1214, 9
  store i64 %972, i64* %PC, align 8
  %973 = load i32, i32* %1200, align 4
  %974 = shl i32 %973, 3
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RDX, align 8, !tbaa !2428
  %976 = add i32 %974, %970
  %977 = shl i32 %976, 3
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RCX, align 8, !tbaa !2428
  %979 = lshr i32 %976, 28
  %980 = and i32 %979, 1
  %981 = load i64, i64* %RAX, align 8
  %982 = trunc i64 %981 to i32
  %983 = add i32 %977, %982
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RAX, align 8, !tbaa !2428
  %985 = icmp ult i32 %983, %982
  %986 = icmp ult i32 %983, %977
  %987 = or i1 %985, %986
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %13, align 1, !tbaa !2432
  %989 = and i32 %983, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989) #8
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %20, align 1, !tbaa !2446
  %994 = xor i64 %978, %981
  %995 = trunc i64 %994 to i32
  %996 = xor i32 %995, %983
  %997 = lshr i32 %996, 4
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  store i8 %999, i8* %26, align 1, !tbaa !2447
  %1000 = icmp eq i32 %983, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %29, align 1, !tbaa !2448
  %1002 = lshr i32 %983, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %32, align 1, !tbaa !2449
  %1004 = lshr i32 %982, 31
  %1005 = xor i32 %1002, %1004
  %1006 = xor i32 %1002, %980
  %1007 = add nuw nsw i32 %1005, %1006
  %1008 = icmp eq i32 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %38, align 1, !tbaa !2450
  %1010 = sext i32 %983 to i64
  store i64 %1010, i64* %RSI, align 8, !tbaa !2428
  %1011 = shl nsw i64 %1010, 2
  %1012 = add i64 %1011, add (i64 ptrtoint (%p_type* @p to i64), i64 18432)
  %1013 = add i64 %1214, 33
  store i64 %1013, i64* %PC, align 8
  %1014 = inttoptr i64 %1012 to i32*
  store i32 1, i32* %1014, align 4
  %1015 = load i64, i64* %RBP, align 8
  %1016 = add i64 %1015, -12
  %1017 = load i64, i64* %PC, align 8
  %1018 = add i64 %1017, 3
  store i64 %1018, i64* %PC, align 8
  %1019 = inttoptr i64 %1016 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = add i32 %1020, 1
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RAX, align 8, !tbaa !2428
  %1023 = icmp eq i32 %1020, -1
  %1024 = icmp eq i32 %1021, 0
  %1025 = or i1 %1023, %1024
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %13, align 1, !tbaa !2432
  %1027 = and i32 %1021, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027) #8
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %20, align 1, !tbaa !2446
  %1032 = xor i32 %1020, %1021
  %1033 = lshr i32 %1032, 4
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  store i8 %1035, i8* %26, align 1, !tbaa !2447
  %1036 = zext i1 %1024 to i8
  store i8 %1036, i8* %29, align 1, !tbaa !2448
  %1037 = lshr i32 %1021, 31
  %1038 = trunc i32 %1037 to i8
  store i8 %1038, i8* %32, align 1, !tbaa !2449
  %1039 = lshr i32 %1020, 31
  %1040 = xor i32 %1037, %1039
  %1041 = add nuw nsw i32 %1040, %1037
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %38, align 1, !tbaa !2450
  %1044 = add i64 %1017, 9
  store i64 %1044, i64* %PC, align 8
  store i32 %1021, i32* %1019, align 4
  %1045 = load i64, i64* %PC, align 8
  %1046 = add i64 %1045, -52
  store i64 %1046, i64* %PC, align 8, !tbaa !2428
  br label %block_400f1e

block_400d22:                                     ; preds = %block_400d05, %block_400d90
  %1047 = phi i64 [ %.pre27, %block_400d05 ], [ %439, %block_400d90 ]
  %1048 = load i64, i64* %RBP, align 8
  %1049 = add i64 %1048, -4
  %1050 = add i64 %1047, 4
  store i64 %1050, i64* %PC, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = add i32 %1052, -2
  %1054 = icmp ult i32 %1052, 2
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %13, align 1, !tbaa !2432
  %1056 = and i32 %1053, 255
  %1057 = tail call i32 @llvm.ctpop.i32(i32 %1056) #8
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  store i8 %1060, i8* %20, align 1, !tbaa !2446
  %1061 = xor i32 %1052, %1053
  %1062 = lshr i32 %1061, 4
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  store i8 %1064, i8* %26, align 1, !tbaa !2447
  %1065 = icmp eq i32 %1053, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %29, align 1, !tbaa !2448
  %1067 = lshr i32 %1053, 31
  %1068 = trunc i32 %1067 to i8
  store i8 %1068, i8* %32, align 1, !tbaa !2449
  %1069 = lshr i32 %1052, 31
  %1070 = xor i32 %1067, %1069
  %1071 = add nuw nsw i32 %1070, %1069
  %1072 = icmp eq i32 %1071, 2
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %38, align 1, !tbaa !2450
  %1074 = icmp ne i8 %1068, 0
  %1075 = xor i1 %1074, %1072
  %.demorgan92 = or i1 %1065, %1075
  %.v93 = select i1 %.demorgan92, i64 10, i64 129
  %1076 = add i64 %1047, %.v93
  store i64 %1076, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan92, label %block_400d2c, label %block_400da3

block_40097f:                                     ; preds = %block_4009c9, %block_400978
  %1077 = phi i64 [ %2028, %block_4009c9 ], [ %.pre10, %block_400978 ]
  %1078 = load i64, i64* %RBP, align 8
  %1079 = add i64 %1078, -8
  %1080 = add i64 %1077, 4
  store i64 %1080, i64* %PC, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = add i32 %1082, -1
  %1084 = icmp eq i32 %1082, 0
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %13, align 1, !tbaa !2432
  %1086 = and i32 %1083, 255
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086) #8
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %20, align 1, !tbaa !2446
  %1091 = xor i32 %1082, %1083
  %1092 = lshr i32 %1091, 4
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %26, align 1, !tbaa !2447
  %1095 = icmp eq i32 %1083, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %29, align 1, !tbaa !2448
  %1097 = lshr i32 %1083, 31
  %1098 = trunc i32 %1097 to i8
  store i8 %1098, i8* %32, align 1, !tbaa !2449
  %1099 = lshr i32 %1082, 31
  %1100 = xor i32 %1097, %1099
  %1101 = add nuw nsw i32 %1100, %1099
  %1102 = icmp eq i32 %1101, 2
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %38, align 1, !tbaa !2450
  %1104 = icmp ne i8 %1098, 0
  %1105 = xor i1 %1104, %1102
  %.demorgan64 = or i1 %1095, %1105
  %.v65 = select i1 %.demorgan64, i64 10, i64 93
  %1106 = add i64 %1077, %.v65
  store i64 %1106, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan64, label %block_400989, label %block_4009dc

block_400f17:                                     ; preds = %block_400f0d
  %1107 = add i64 %2960, -12
  %1108 = add i64 %2988, 7
  store i64 %1108, i64* %PC, align 8
  %1109 = inttoptr i64 %1107 to i32*
  store i32 0, i32* %1109, align 4
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400f1e

block_400e2e:                                     ; preds = %block_400dd1
  %1110 = add i64 %3292, -4
  %1111 = add i64 %3320, 8
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = add i32 %1113, 1
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RAX, align 8, !tbaa !2428
  %1116 = icmp eq i32 %1113, -1
  %1117 = icmp eq i32 %1114, 0
  %1118 = or i1 %1116, %1117
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %13, align 1, !tbaa !2432
  %1120 = and i32 %1114, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120) #8
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %20, align 1, !tbaa !2446
  %1125 = xor i32 %1113, %1114
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %26, align 1, !tbaa !2447
  %1129 = zext i1 %1117 to i8
  store i8 %1129, i8* %29, align 1, !tbaa !2448
  %1130 = lshr i32 %1114, 31
  %1131 = trunc i32 %1130 to i8
  store i8 %1131, i8* %32, align 1, !tbaa !2449
  %1132 = lshr i32 %1113, 31
  %1133 = xor i32 %1130, %1132
  %1134 = add nuw nsw i32 %1133, %1130
  %1135 = icmp eq i32 %1134, 2
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %38, align 1, !tbaa !2450
  %1137 = add i64 %3320, 14
  store i64 %1137, i64* %PC, align 8
  store i32 %1114, i32* %1112, align 4
  %1138 = load i64, i64* %PC, align 8
  %1139 = add i64 %1138, -124
  store i64 %1139, i64* %PC, align 8, !tbaa !2428
  br label %block_400dc0

block_400d44:                                     ; preds = %block_400d3d, %block_400d4e
  %1140 = phi i64 [ %.pre29, %block_400d3d ], [ %788, %block_400d4e ]
  %1141 = load i64, i64* %RBP, align 8
  %1142 = add i64 %1141, -12
  %1143 = add i64 %1140, 4
  store i64 %1143, i64* %PC, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1146 = and i32 %1145, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146) #8
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1151 = icmp eq i32 %1145, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %29, align 1, !tbaa !2448
  %1153 = lshr i32 %1145, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1155 = xor i1 %1151, true
  %1156 = icmp eq i8 %1154, 0
  %1157 = and i1 %1156, %1155
  %.v95 = select i1 %1157, i64 57, i64 10
  %1158 = add i64 %1140, %.v95
  store i64 %1158, i64* %PC, align 8, !tbaa !2428
  br i1 %1157, label %block_400d7d, label %block_400d4e

block_400b2b:                                     ; preds = %block_400aaa
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 8) to i32*), align 8
  store i32 88, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 8) to i32*), align 8
  %1159 = add i64 %2925, 29
  store i64 %1159, i64* %PC, align 8
  store i32 0, i32* %2911, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_400b48

block_400912:                                     ; preds = %block_400908
  %1160 = add i64 %2693, -16
  %1161 = add i64 %2721, 7
  store i64 %1161, i64* %PC, align 8
  %1162 = inttoptr i64 %1160 to i32*
  store i32 0, i32* %1162, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400919

block_40096e:                                     ; preds = %block_400967, %block_4009dc
  %1163 = phi i64 [ %.pre9, %block_400967 ], [ %472, %block_4009dc ]
  %1164 = load i64, i64* %RBP, align 8
  %1165 = add i64 %1164, -4
  %1166 = add i64 %1163, 4
  store i64 %1166, i64* %PC, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = add i32 %1168, -3
  %1170 = icmp ult i32 %1168, 3
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %13, align 1, !tbaa !2432
  %1172 = and i32 %1169, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172) #8
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %20, align 1, !tbaa !2446
  %1177 = xor i32 %1168, %1169
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %26, align 1, !tbaa !2447
  %1181 = icmp eq i32 %1169, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %29, align 1, !tbaa !2448
  %1183 = lshr i32 %1169, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %32, align 1, !tbaa !2449
  %1185 = lshr i32 %1168, 31
  %1186 = xor i32 %1183, %1185
  %1187 = add nuw nsw i32 %1186, %1185
  %1188 = icmp eq i32 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %38, align 1, !tbaa !2450
  %1190 = icmp ne i8 %1184, 0
  %1191 = xor i1 %1190, %1188
  %.demorgan62 = or i1 %1181, %1191
  %.v63 = select i1 %.demorgan62, i64 10, i64 129
  %1192 = add i64 %1163, %.v63
  store i64 %1192, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan62, label %block_400978, label %block_4009ef

block_400f06:                                     ; preds = %block_400efc
  %1193 = add i64 %1217, -8
  %1194 = add i64 %1245, 7
  store i64 %1194, i64* %PC, align 8
  %1195 = inttoptr i64 %1193 to i32*
  store i32 0, i32* %1195, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_400f0d

block_400f1e:                                     ; preds = %block_400f17, %block_400f28
  %1196 = phi i64 [ %.pre38, %block_400f17 ], [ %1046, %block_400f28 ]
  %1197 = load i64, i64* %RBP, align 8
  %1198 = add i64 %1197, -12
  %1199 = add i64 %1196, 4
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1202 = and i32 %1201, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202) #8
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1207 = icmp eq i32 %1201, 0
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %29, align 1, !tbaa !2448
  %1209 = lshr i32 %1201, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1211 = xor i1 %1207, true
  %1212 = icmp eq i8 %1210, 0
  %1213 = and i1 %1212, %1211
  %.v108 = select i1 %1213, i64 57, i64 10
  %1214 = add i64 %1196, %.v108
  store i64 %1214, i64* %PC, align 8, !tbaa !2428
  br i1 %1213, label %block_400f57, label %block_400f28

block_400d05:                                     ; preds = %block_400c84
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 20) to i32*), align 4
  store i32 200, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 20) to i32*), align 4
  %1215 = add i64 %2195, 29
  store i64 %1215, i64* %PC, align 8
  store i32 0, i32* %2181, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_400d22

block_400efc:                                     ; preds = %block_400edf, %block_400f6a
  %1216 = phi i64 [ %.pre36, %block_400edf ], [ %650, %block_400f6a ]
  %1217 = load i64, i64* %RBP, align 8
  %1218 = add i64 %1217, -4
  %1219 = add i64 %1216, 4
  store i64 %1219, i64* %PC, align 8
  %1220 = inttoptr i64 %1218 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = add i32 %1221, -1
  %1223 = icmp eq i32 %1221, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %13, align 1, !tbaa !2432
  %1225 = and i32 %1222, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225) #8
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %20, align 1, !tbaa !2446
  %1230 = xor i32 %1221, %1222
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %26, align 1, !tbaa !2447
  %1234 = icmp eq i32 %1222, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %29, align 1, !tbaa !2448
  %1236 = lshr i32 %1222, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %32, align 1, !tbaa !2449
  %1238 = lshr i32 %1221, 31
  %1239 = xor i32 %1236, %1238
  %1240 = add nuw nsw i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %38, align 1, !tbaa !2450
  %1243 = icmp ne i8 %1237, 0
  %1244 = xor i1 %1243, %1241
  %.demorgan104 = or i1 %1234, %1244
  %.v105 = select i1 %.demorgan104, i64 10, i64 129
  %1245 = add i64 %1216, %.v105
  store i64 %1245, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan104, label %block_400f06, label %block_400f7d

block_400edf:                                     ; preds = %block_400e5e
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 32) to i32*), align 16
  store i32 128, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 32) to i32*), align 16
  %1246 = add i64 %2660, 29
  store i64 %1246, i64* %PC, align 8
  store i32 0, i32* %2646, align 4
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_400efc

block_4010f8:                                     ; preds = %block_4010f1, %block_401102
  %1247 = phi i64 [ %.pre47, %block_4010f1 ], [ %2341, %block_401102 ]
  %1248 = load i64, i64* %RBP, align 8
  %1249 = add i64 %1248, -12
  %1250 = add i64 %1247, 4
  store i64 %1250, i64* %PC, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = add i32 %1252, -1
  %1254 = icmp eq i32 %1252, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %13, align 1, !tbaa !2432
  %1256 = and i32 %1253, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256) #8
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %20, align 1, !tbaa !2446
  %1261 = xor i32 %1252, %1253
  %1262 = lshr i32 %1261, 4
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %26, align 1, !tbaa !2447
  %1265 = icmp eq i32 %1253, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %29, align 1, !tbaa !2448
  %1267 = lshr i32 %1253, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %32, align 1, !tbaa !2449
  %1269 = lshr i32 %1252, 31
  %1270 = xor i32 %1267, %1269
  %1271 = add nuw nsw i32 %1270, %1269
  %1272 = icmp eq i32 %1271, 2
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %38, align 1, !tbaa !2450
  %1274 = icmp ne i8 %1268, 0
  %1275 = xor i1 %1274, %1272
  %.demorgan123 = or i1 %1265, %1275
  %.v124 = select i1 %.demorgan123, i64 10, i64 57
  %1276 = add i64 %1247, %.v124
  store i64 %1276, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan123, label %block_401102, label %block_401131

block_400978:                                     ; preds = %block_40096e
  %1277 = add i64 %1164, -8
  %1278 = add i64 %1192, 7
  store i64 %1278, i64* %PC, align 8
  %1279 = inttoptr i64 %1277 to i32*
  store i32 0, i32* %1279, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_40097f

block_400cf2:                                     ; preds = %block_400c95
  %1280 = add i64 %2030, -4
  %1281 = add i64 %2058, 8
  store i64 %1281, i64* %PC, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = add i32 %1283, 1
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RAX, align 8, !tbaa !2428
  %1286 = icmp eq i32 %1283, -1
  %1287 = icmp eq i32 %1284, 0
  %1288 = or i1 %1286, %1287
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %13, align 1, !tbaa !2432
  %1290 = and i32 %1284, 255
  %1291 = tail call i32 @llvm.ctpop.i32(i32 %1290) #8
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  store i8 %1294, i8* %20, align 1, !tbaa !2446
  %1295 = xor i32 %1283, %1284
  %1296 = lshr i32 %1295, 4
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  store i8 %1298, i8* %26, align 1, !tbaa !2447
  %1299 = zext i1 %1287 to i8
  store i8 %1299, i8* %29, align 1, !tbaa !2448
  %1300 = lshr i32 %1284, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %32, align 1, !tbaa !2449
  %1302 = lshr i32 %1283, 31
  %1303 = xor i32 %1300, %1302
  %1304 = add nuw nsw i32 %1303, %1300
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %38, align 1, !tbaa !2450
  %1307 = add i64 %2058, 14
  store i64 %1307, i64* %PC, align 8
  store i32 %1284, i32* %1282, align 4
  %1308 = load i64, i64* %PC, align 8
  %1309 = add i64 %1308, -124
  store i64 %1309, i64* %PC, align 8, !tbaa !2428
  br label %block_400c84

block_4008ee:                                     ; preds = %block_400891
  %1310 = add i64 %2927, -4
  %1311 = add i64 %2955, 8
  store i64 %1311, i64* %PC, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = add i32 %1313, 1
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RAX, align 8, !tbaa !2428
  %1316 = icmp eq i32 %1313, -1
  %1317 = icmp eq i32 %1314, 0
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %13, align 1, !tbaa !2432
  %1320 = and i32 %1314, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320) #8
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %20, align 1, !tbaa !2446
  %1325 = xor i32 %1313, %1314
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %26, align 1, !tbaa !2447
  %1329 = zext i1 %1317 to i8
  store i8 %1329, i8* %29, align 1, !tbaa !2448
  %1330 = lshr i32 %1314, 31
  %1331 = trunc i32 %1330 to i8
  store i8 %1331, i8* %32, align 1, !tbaa !2449
  %1332 = lshr i32 %1313, 31
  %1333 = xor i32 %1330, %1332
  %1334 = add nuw nsw i32 %1333, %1330
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %38, align 1, !tbaa !2450
  %1337 = add i64 %2955, 14
  store i64 %1337, i64* %PC, align 8
  store i32 %1314, i32* %1312, align 4
  %1338 = load i64, i64* %PC, align 8
  %1339 = add i64 %1338, -124
  store i64 %1339, i64* %PC, align 8, !tbaa !2428
  br label %block_400880

block_401227:                                     ; preds = %block_401216
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 41), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1340 = add i64 %2176, -3639
  %1341 = add i64 %2176, 17
  %1342 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1343 = add i64 %1342, -8
  %1344 = inttoptr i64 %1343 to i64*
  store i64 %1341, i64* %1344, align 8
  store i64 %1343, i64* %RSP, align 8, !tbaa !2428
  store i64 %1340, i64* %PC, align 8, !tbaa !2428
  %1345 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %198)
  %1346 = load i64, i64* %RBP, align 8
  %1347 = add i64 %1346, -28
  %1348 = load i32, i32* %EAX, align 4
  %1349 = load i64, i64* %PC, align 8
  %1350 = add i64 %1349, 3
  store i64 %1350, i64* %PC, align 8
  %1351 = inttoptr i64 %1347 to i32*
  store i32 %1348, i32* %1351, align 4
  %.pre50 = load i64, i64* %PC, align 8
  br label %block_40123b

block_401144:                                     ; preds = %block_4010e7
  %1352 = add i64 %3374, -4
  %1353 = add i64 %3402, 8
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = add i32 %1355, 1
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RAX, align 8, !tbaa !2428
  %1358 = icmp eq i32 %1355, -1
  %1359 = icmp eq i32 %1356, 0
  %1360 = or i1 %1358, %1359
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %13, align 1, !tbaa !2432
  %1362 = and i32 %1356, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362) #8
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %20, align 1, !tbaa !2446
  %1367 = xor i32 %1355, %1356
  %1368 = lshr i32 %1367, 4
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  store i8 %1370, i8* %26, align 1, !tbaa !2447
  %1371 = zext i1 %1359 to i8
  store i8 %1371, i8* %29, align 1, !tbaa !2448
  %1372 = lshr i32 %1356, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %32, align 1, !tbaa !2449
  %1374 = lshr i32 %1355, 31
  %1375 = xor i32 %1372, %1374
  %1376 = add nuw nsw i32 %1375, %1372
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %38, align 1, !tbaa !2450
  %1379 = add i64 %3402, 14
  store i64 %1379, i64* %PC, align 8
  store i32 %1356, i32* %1354, align 4
  %1380 = load i64, i64* %PC, align 8
  %1381 = add i64 %1380, -124
  store i64 %1381, i64* %PC, align 8, !tbaa !2428
  br label %block_4010d6

block_400fab:                                     ; preds = %block_400fa4, %block_400ff5
  %1382 = phi i64 [ %.pre40, %block_400fa4 ], [ %104, %block_400ff5 ]
  %1383 = load i64, i64* %RBP, align 8
  %1384 = add i64 %1383, -8
  %1385 = add i64 %1382, 4
  store i64 %1385, i64* %PC, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1388 = and i32 %1387, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388) #8
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1393 = icmp eq i32 %1387, 0
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %29, align 1, !tbaa !2448
  %1395 = lshr i32 %1387, 31
  %1396 = trunc i32 %1395 to i8
  store i8 %1396, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1397 = xor i1 %1393, true
  %1398 = icmp eq i8 %1396, 0
  %1399 = and i1 %1398, %1397
  %.v111 = select i1 %1399, i64 93, i64 10
  %1400 = add i64 %1382, %.v111
  store i64 %1400, i64* %PC, align 8, !tbaa !2428
  br i1 %1399, label %block_401008, label %block_400fb5

block_400cdf:                                     ; preds = %block_400ca6
  %1401 = add i64 %2090, -8
  %1402 = add i64 %2118, 8
  store i64 %1402, i64* %PC, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = add i32 %1404, 1
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RAX, align 8, !tbaa !2428
  %1407 = icmp eq i32 %1404, -1
  %1408 = icmp eq i32 %1405, 0
  %1409 = or i1 %1407, %1408
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %13, align 1, !tbaa !2432
  %1411 = and i32 %1405, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411) #8
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %20, align 1, !tbaa !2446
  %1416 = xor i32 %1404, %1405
  %1417 = lshr i32 %1416, 4
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  store i8 %1419, i8* %26, align 1, !tbaa !2447
  %1420 = zext i1 %1408 to i8
  store i8 %1420, i8* %29, align 1, !tbaa !2448
  %1421 = lshr i32 %1405, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %32, align 1, !tbaa !2449
  %1423 = lshr i32 %1404, 31
  %1424 = xor i32 %1421, %1423
  %1425 = add nuw nsw i32 %1424, %1421
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %38, align 1, !tbaa !2450
  %1428 = add i64 %2118, 14
  store i64 %1428, i64* %PC, align 8
  store i32 %1405, i32* %1403, align 4
  %1429 = load i64, i64* %PC, align 8
  %1430 = add i64 %1429, -88
  store i64 %1430, i64* %PC, align 8, !tbaa !2428
  br label %block_400c95

block_400dc0:                                     ; preds = %block_400e2e, %block_400da3
  %1431 = phi i64 [ %1139, %block_400e2e ], [ %.pre30, %block_400da3 ]
  %1432 = load i64, i64* %RBP, align 8
  %1433 = add i64 %1432, -4
  %1434 = add i64 %1431, 4
  store i64 %1434, i64* %PC, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1437 = and i32 %1436, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437) #8
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1442 = icmp eq i32 %1436, 0
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %29, align 1, !tbaa !2448
  %1444 = lshr i32 %1436, 31
  %1445 = trunc i32 %1444 to i8
  store i8 %1445, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1446 = xor i1 %1442, true
  %1447 = icmp eq i8 %1445, 0
  %1448 = and i1 %1447, %1446
  %.v96 = select i1 %1448, i64 129, i64 10
  %1449 = add i64 %1431, %.v96
  store i64 %1449, i64* %PC, align 8, !tbaa !2428
  br i1 %1448, label %block_400e41, label %block_400dca

block_4008db:                                     ; preds = %block_4008a2
  %1450 = add i64 %2784, -8
  %1451 = add i64 %2812, 8
  store i64 %1451, i64* %PC, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = add i32 %1453, 1
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX, align 8, !tbaa !2428
  %1456 = icmp eq i32 %1453, -1
  %1457 = icmp eq i32 %1454, 0
  %1458 = or i1 %1456, %1457
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %13, align 1, !tbaa !2432
  %1460 = and i32 %1454, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460) #8
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %20, align 1, !tbaa !2446
  %1465 = xor i32 %1453, %1454
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %26, align 1, !tbaa !2447
  %1469 = zext i1 %1457 to i8
  store i8 %1469, i8* %29, align 1, !tbaa !2448
  %1470 = lshr i32 %1454, 31
  %1471 = trunc i32 %1470 to i8
  store i8 %1471, i8* %32, align 1, !tbaa !2449
  %1472 = lshr i32 %1453, 31
  %1473 = xor i32 %1470, %1472
  %1474 = add nuw nsw i32 %1473, %1470
  %1475 = icmp eq i32 %1474, 2
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %38, align 1, !tbaa !2450
  %1477 = add i64 %2812, 14
  store i64 %1477, i64* %PC, align 8
  store i32 %1454, i32* %1452, align 4
  %1478 = load i64, i64* %PC, align 8
  %1479 = add i64 %1478, -88
  store i64 %1479, i64* %PC, align 8, !tbaa !2428
  br label %block_400891

block_400879:                                     ; preds = %block_40084f
  %1480 = add i64 %2817, -4
  %1481 = add i64 %2846, 7
  store i64 %1481, i64* %PC, align 8
  %1482 = inttoptr i64 %1480 to i32*
  store i32 1, i32* %1482, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400880

block_4011d4:                                     ; preds = %block_401157
  store i64 add (i64 ptrtoint (%seg_401340__rodata_type* @seg_401340__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1483 = add i64 %3046, -3556
  %1484 = add i64 %3046, 17
  %1485 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1486 = add i64 %1485, -8
  %1487 = inttoptr i64 %1486 to i64*
  store i64 %1484, i64* %1487, align 8
  store i64 %1486, i64* %RSP, align 8, !tbaa !2428
  store i64 %1483, i64* %PC, align 8, !tbaa !2428
  %1488 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %3034)
  %1489 = load i64, i64* %RBP, align 8
  %1490 = add i64 %1489, -20
  %1491 = load i32, i32* %EAX, align 4
  %1492 = load i64, i64* %PC, align 8
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %PC, align 8
  %1494 = inttoptr i64 %1490 to i32*
  store i32 %1491, i32* %1494, align 4
  %.pre48 = load i64, i64* %PC, align 8
  %.pre49 = load i32, i32* bitcast (%n_type* @n to i32*), align 8
  br label %block_4011e8

block_400ad6:                                     ; preds = %block_400acc
  %1495 = add i64 %2528, -4
  %1496 = add i64 %2556, 3
  store i64 %1496, i64* %PC, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX, align 8, !tbaa !2428
  %1500 = add i64 %2528, -8
  %1501 = add i64 %2556, 6
  store i64 %1501, i64* %PC, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = zext i32 %1503 to i64
  store i64 %1504, i64* %RCX, align 8, !tbaa !2428
  %1505 = add i64 %2556, 9
  store i64 %1505, i64* %PC, align 8
  %1506 = load i32, i32* %2531, align 4
  %1507 = shl i32 %1506, 3
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RDX, align 8, !tbaa !2428
  %1509 = add i32 %1507, %1503
  %1510 = shl i32 %1509, 3
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RCX, align 8, !tbaa !2428
  %1512 = lshr i32 %1509, 28
  %1513 = and i32 %1512, 1
  %1514 = load i64, i64* %RAX, align 8
  %1515 = trunc i64 %1514 to i32
  %1516 = add i32 %1510, %1515
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX, align 8, !tbaa !2428
  %1518 = icmp ult i32 %1516, %1515
  %1519 = icmp ult i32 %1516, %1510
  %1520 = or i1 %1518, %1519
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %13, align 1, !tbaa !2432
  %1522 = and i32 %1516, 255
  %1523 = tail call i32 @llvm.ctpop.i32(i32 %1522) #8
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  store i8 %1526, i8* %20, align 1, !tbaa !2446
  %1527 = xor i64 %1511, %1514
  %1528 = trunc i64 %1527 to i32
  %1529 = xor i32 %1528, %1516
  %1530 = lshr i32 %1529, 4
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %26, align 1, !tbaa !2447
  %1533 = icmp eq i32 %1516, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %29, align 1, !tbaa !2448
  %1535 = lshr i32 %1516, 31
  %1536 = trunc i32 %1535 to i8
  store i8 %1536, i8* %32, align 1, !tbaa !2449
  %1537 = lshr i32 %1515, 31
  %1538 = xor i32 %1535, %1537
  %1539 = xor i32 %1535, %1513
  %1540 = add nuw nsw i32 %1538, %1539
  %1541 = icmp eq i32 %1540, 2
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %38, align 1, !tbaa !2450
  %1543 = sext i32 %1516 to i64
  store i64 %1543, i64* %RSI, align 8, !tbaa !2428
  %1544 = shl nsw i64 %1543, 2
  %1545 = add i64 %1544, add (i64 ptrtoint (%p_type* @p to i64), i64 4096)
  %1546 = add i64 %2556, 33
  store i64 %1546, i64* %PC, align 8
  %1547 = inttoptr i64 %1545 to i32*
  store i32 1, i32* %1547, align 4
  %1548 = load i64, i64* %RBP, align 8
  %1549 = add i64 %1548, -12
  %1550 = load i64, i64* %PC, align 8
  %1551 = add i64 %1550, 3
  store i64 %1551, i64* %PC, align 8
  %1552 = inttoptr i64 %1549 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = add i32 %1553, 1
  %1555 = zext i32 %1554 to i64
  store i64 %1555, i64* %RAX, align 8, !tbaa !2428
  %1556 = icmp eq i32 %1553, -1
  %1557 = icmp eq i32 %1554, 0
  %1558 = or i1 %1556, %1557
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %13, align 1, !tbaa !2432
  %1560 = and i32 %1554, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560) #8
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %20, align 1, !tbaa !2446
  %1565 = xor i32 %1553, %1554
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %26, align 1, !tbaa !2447
  %1569 = zext i1 %1557 to i8
  store i8 %1569, i8* %29, align 1, !tbaa !2448
  %1570 = lshr i32 %1554, 31
  %1571 = trunc i32 %1570 to i8
  store i8 %1571, i8* %32, align 1, !tbaa !2449
  %1572 = lshr i32 %1553, 31
  %1573 = xor i32 %1570, %1572
  %1574 = add nuw nsw i32 %1573, %1570
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %38, align 1, !tbaa !2450
  %1577 = add i64 %1550, 9
  store i64 %1577, i64* %PC, align 8
  store i32 %1554, i32* %1552, align 4
  %1578 = load i64, i64* %PC, align 8
  %1579 = add i64 %1578, -52
  store i64 %1579, i64* %PC, align 8, !tbaa !2428
  br label %block_400acc

block_400b52:                                     ; preds = %block_400b48
  %1580 = add i64 %878, -8
  %1581 = add i64 %906, 7
  store i64 %1581, i64* %PC, align 8
  %1582 = inttoptr i64 %1580 to i32*
  store i32 0, i32* %1582, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400b59

block_400ecc:                                     ; preds = %block_400e6f
  %1583 = add i64 %2425, -4
  %1584 = add i64 %2442, 8
  store i64 %1584, i64* %PC, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  %1587 = add i32 %1586, 1
  %1588 = zext i32 %1587 to i64
  store i64 %1588, i64* %RAX, align 8, !tbaa !2428
  %1589 = icmp eq i32 %1586, -1
  %1590 = icmp eq i32 %1587, 0
  %1591 = or i1 %1589, %1590
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %13, align 1, !tbaa !2432
  %1593 = and i32 %1587, 255
  %1594 = tail call i32 @llvm.ctpop.i32(i32 %1593) #8
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  store i8 %1597, i8* %20, align 1, !tbaa !2446
  %1598 = xor i32 %1586, %1587
  %1599 = lshr i32 %1598, 4
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  store i8 %1601, i8* %26, align 1, !tbaa !2447
  %1602 = zext i1 %1590 to i8
  store i8 %1602, i8* %29, align 1, !tbaa !2448
  %1603 = lshr i32 %1587, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %32, align 1, !tbaa !2449
  %1605 = lshr i32 %1586, 31
  %1606 = xor i32 %1603, %1605
  %1607 = add nuw nsw i32 %1606, %1603
  %1608 = icmp eq i32 %1607, 2
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %38, align 1, !tbaa !2450
  %1610 = add i64 %2442, 14
  store i64 %1610, i64* %PC, align 8
  store i32 %1587, i32* %1585, align 4
  %1611 = load i64, i64* %PC, align 8
  %1612 = add i64 %1611, -124
  store i64 %1612, i64* %PC, align 8, !tbaa !2428
  br label %block_400e5e

block_400926:                                     ; preds = %block_400919
  store i64 ptrtoint (%p_type* @p to i64), i64* %RAX, align 8, !tbaa !2428
  %1613 = add i64 %2227, -4
  %1614 = add i64 %2256, 14
  store i64 %1614, i64* %PC, align 8
  %1615 = inttoptr i64 %1613 to i32*
  %1616 = load i32, i32* %1615, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = shl nsw i64 %1617, 11
  store i64 %1618, i64* %RCX, align 8, !tbaa !2428
  %1619 = lshr i64 %1617, 52
  %1620 = and i64 %1619, 1
  %1621 = add i64 %1618, ptrtoint (%p_type* @p to i64)
  store i64 %1621, i64* %RAX, align 8, !tbaa !2428
  %1622 = icmp ult i64 %1621, ptrtoint (%p_type* @p to i64)
  %1623 = icmp ult i64 %1621, %1618
  %1624 = or i1 %1622, %1623
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %13, align 1, !tbaa !2432
  %1626 = trunc i64 %1621 to i32
  %1627 = and i32 %1626, 240
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627) #8
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %20, align 1, !tbaa !2446
  %1632 = xor i64 %1621, ptrtoint (%p_type* @p to i64)
  %1633 = lshr exact i64 %1632, 4
  %1634 = trunc i64 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %26, align 1, !tbaa !2447
  %1636 = icmp eq i64 %1621, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %29, align 1, !tbaa !2448
  %1638 = lshr i64 %1621, 63
  %1639 = trunc i64 %1638 to i8
  store i8 %1639, i8* %32, align 1, !tbaa !2449
  %1640 = xor i64 %1638, lshr (i64 ptrtoint (%p_type* @p to i64), i64 63)
  %1641 = xor i64 %1638, %1620
  %1642 = add nuw nsw i64 %1640, %1641
  %1643 = icmp eq i64 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %38, align 1, !tbaa !2450
  %1645 = add i64 %2256, 25
  store i64 %1645, i64* %PC, align 8
  %1646 = load i32, i32* %2230, align 4
  %1647 = sext i32 %1646 to i64
  store i64 %1647, i64* %RCX, align 8, !tbaa !2428
  %1648 = shl nsw i64 %1647, 2
  %1649 = add i64 %1648, %1621
  %1650 = add i64 %2256, 32
  store i64 %1650, i64* %PC, align 8
  %1651 = inttoptr i64 %1649 to i32*
  store i32 0, i32* %1651, align 4
  %1652 = load i64, i64* %RBP, align 8
  %1653 = add i64 %1652, -16
  %1654 = load i64, i64* %PC, align 8
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC, align 8
  %1656 = inttoptr i64 %1653 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = add i32 %1657, 1
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RAX, align 8, !tbaa !2428
  %1660 = icmp eq i32 %1657, -1
  %1661 = icmp eq i32 %1658, 0
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %13, align 1, !tbaa !2432
  %1664 = and i32 %1658, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664) #8
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %20, align 1, !tbaa !2446
  %1669 = xor i32 %1657, %1658
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  store i8 %1672, i8* %26, align 1, !tbaa !2447
  %1673 = zext i1 %1661 to i8
  store i8 %1673, i8* %29, align 1, !tbaa !2448
  %1674 = lshr i32 %1658, 31
  %1675 = trunc i32 %1674 to i8
  store i8 %1675, i8* %32, align 1, !tbaa !2449
  %1676 = lshr i32 %1657, 31
  %1677 = xor i32 %1674, %1676
  %1678 = add nuw nsw i32 %1677, %1674
  %1679 = icmp eq i32 %1678, 2
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %38, align 1, !tbaa !2450
  %1681 = add i64 %1654, 9
  store i64 %1681, i64* %PC, align 8
  store i32 %1658, i32* %1656, align 4
  %1682 = load i64, i64* %PC, align 8
  %1683 = add i64 %1682, -54
  store i64 %1683, i64* %PC, align 8, !tbaa !2428
  br label %block_400919

block_400eb9:                                     ; preds = %block_400e80
  %1684 = add i64 %2444, -8
  %1685 = add i64 %2472, 8
  store i64 %1685, i64* %PC, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = add i32 %1687, 1
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RAX, align 8, !tbaa !2428
  %1690 = icmp eq i32 %1687, -1
  %1691 = icmp eq i32 %1688, 0
  %1692 = or i1 %1690, %1691
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %13, align 1, !tbaa !2432
  %1694 = and i32 %1688, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694) #8
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %20, align 1, !tbaa !2446
  %1699 = xor i32 %1687, %1688
  %1700 = lshr i32 %1699, 4
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  store i8 %1702, i8* %26, align 1, !tbaa !2447
  %1703 = zext i1 %1691 to i8
  store i8 %1703, i8* %29, align 1, !tbaa !2448
  %1704 = lshr i32 %1688, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %32, align 1, !tbaa !2449
  %1706 = lshr i32 %1687, 31
  %1707 = xor i32 %1704, %1706
  %1708 = add nuw nsw i32 %1707, %1704
  %1709 = icmp eq i32 %1708, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %38, align 1, !tbaa !2450
  %1711 = add i64 %2472, 14
  store i64 %1711, i64* %PC, align 8
  store i32 %1688, i32* %1686, align 4
  %1712 = load i64, i64* %PC, align 8
  %1713 = add i64 %1712, -88
  store i64 %1713, i64* %PC, align 8, !tbaa !2428
  br label %block_400e6f

block_400de2:                                     ; preds = %block_400ddb, %block_400dec
  %1714 = phi i64 [ %.pre32, %block_400ddb ], [ %189, %block_400dec ]
  %1715 = load i64, i64* %RBP, align 8
  %1716 = add i64 %1715, -12
  %1717 = add i64 %1714, 4
  store i64 %1717, i64* %PC, align 8
  %1718 = inttoptr i64 %1716 to i32*
  %1719 = load i32, i32* %1718, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %1720 = and i32 %1719, 255
  %1721 = tail call i32 @llvm.ctpop.i32(i32 %1720) #8
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = xor i8 %1723, 1
  store i8 %1724, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %1725 = icmp eq i32 %1719, 0
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %29, align 1, !tbaa !2448
  %1727 = lshr i32 %1719, 31
  %1728 = trunc i32 %1727 to i8
  store i8 %1728, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %1729 = xor i1 %1725, true
  %1730 = icmp eq i8 %1728, 0
  %1731 = and i1 %1730, %1729
  %.v99 = select i1 %1731, i64 57, i64 10
  %1732 = add i64 %1714, %.v99
  store i64 %1732, i64* %PC, align 8, !tbaa !2428
  br i1 %1731, label %block_400e1b, label %block_400dec

block_400bc9:                                     ; preds = %block_400b48
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 12) to i32*), align 4
  store i32 25, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 12) to i32*), align 4
  %1733 = add i64 %906, 29
  store i64 %1733, i64* %PC, align 8
  store i32 0, i32* %881, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400be6

block_400cb0:                                     ; preds = %block_400ca6
  %1734 = add i64 %2090, -4
  %1735 = add i64 %2118, 3
  store i64 %1735, i64* %PC, align 8
  %1736 = inttoptr i64 %1734 to i32*
  %1737 = load i32, i32* %1736, align 4
  %1738 = zext i32 %1737 to i64
  store i64 %1738, i64* %RAX, align 8, !tbaa !2428
  %1739 = add i64 %2090, -8
  %1740 = add i64 %2118, 6
  store i64 %1740, i64* %PC, align 8
  %1741 = inttoptr i64 %1739 to i32*
  %1742 = load i32, i32* %1741, align 4
  %1743 = zext i32 %1742 to i64
  store i64 %1743, i64* %RCX, align 8, !tbaa !2428
  %1744 = add i64 %2118, 9
  store i64 %1744, i64* %PC, align 8
  %1745 = load i32, i32* %2093, align 4
  %1746 = shl i32 %1745, 3
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RDX, align 8, !tbaa !2428
  %1748 = add i32 %1746, %1742
  %1749 = shl i32 %1748, 3
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RCX, align 8, !tbaa !2428
  %1751 = lshr i32 %1748, 28
  %1752 = and i32 %1751, 1
  %1753 = load i64, i64* %RAX, align 8
  %1754 = trunc i64 %1753 to i32
  %1755 = add i32 %1749, %1754
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RAX, align 8, !tbaa !2428
  %1757 = icmp ult i32 %1755, %1754
  %1758 = icmp ult i32 %1755, %1749
  %1759 = or i1 %1757, %1758
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %13, align 1, !tbaa !2432
  %1761 = and i32 %1755, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761) #8
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %20, align 1, !tbaa !2446
  %1766 = xor i64 %1750, %1753
  %1767 = trunc i64 %1766 to i32
  %1768 = xor i32 %1767, %1755
  %1769 = lshr i32 %1768, 4
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %26, align 1, !tbaa !2447
  %1772 = icmp eq i32 %1755, 0
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %29, align 1, !tbaa !2448
  %1774 = lshr i32 %1755, 31
  %1775 = trunc i32 %1774 to i8
  store i8 %1775, i8* %32, align 1, !tbaa !2449
  %1776 = lshr i32 %1754, 31
  %1777 = xor i32 %1774, %1776
  %1778 = xor i32 %1774, %1752
  %1779 = add nuw nsw i32 %1777, %1778
  %1780 = icmp eq i32 %1779, 2
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %38, align 1, !tbaa !2450
  %1782 = sext i32 %1755 to i64
  store i64 %1782, i64* %RSI, align 8, !tbaa !2428
  %1783 = shl nsw i64 %1782, 2
  %1784 = add i64 %1783, add (i64 ptrtoint (%p_type* @p to i64), i64 10240)
  %1785 = add i64 %2118, 33
  store i64 %1785, i64* %PC, align 8
  %1786 = inttoptr i64 %1784 to i32*
  store i32 1, i32* %1786, align 4
  %1787 = load i64, i64* %RBP, align 8
  %1788 = add i64 %1787, -12
  %1789 = load i64, i64* %PC, align 8
  %1790 = add i64 %1789, 3
  store i64 %1790, i64* %PC, align 8
  %1791 = inttoptr i64 %1788 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = add i32 %1792, 1
  %1794 = zext i32 %1793 to i64
  store i64 %1794, i64* %RAX, align 8, !tbaa !2428
  %1795 = icmp eq i32 %1792, -1
  %1796 = icmp eq i32 %1793, 0
  %1797 = or i1 %1795, %1796
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %13, align 1, !tbaa !2432
  %1799 = and i32 %1793, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799) #8
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %20, align 1, !tbaa !2446
  %1804 = xor i32 %1792, %1793
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %26, align 1, !tbaa !2447
  %1808 = zext i1 %1796 to i8
  store i8 %1808, i8* %29, align 1, !tbaa !2448
  %1809 = lshr i32 %1793, 31
  %1810 = trunc i32 %1809 to i8
  store i8 %1810, i8* %32, align 1, !tbaa !2449
  %1811 = lshr i32 %1792, 31
  %1812 = xor i32 %1809, %1811
  %1813 = add nuw nsw i32 %1812, %1809
  %1814 = icmp eq i32 %1813, 2
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %38, align 1, !tbaa !2450
  %1816 = add i64 %1789, 9
  store i64 %1816, i64* %PC, align 8
  store i32 %1793, i32* %1791, align 4
  %1817 = load i64, i64* %PC, align 8
  %1818 = add i64 %1817, -52
  store i64 %1818, i64* %PC, align 8, !tbaa !2428
  br label %block_400ca6

block_400ac5:                                     ; preds = %block_400abb
  %1819 = add i64 %2754, -12
  %1820 = add i64 %2782, 7
  store i64 %1820, i64* %PC, align 8
  %1821 = inttoptr i64 %1819 to i32*
  store i32 0, i32* %1821, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_400acc

block_4008ac:                                     ; preds = %block_4008a2
  %1822 = add i64 %2784, -4
  %1823 = add i64 %2812, 3
  store i64 %1823, i64* %PC, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = zext i32 %1825 to i64
  store i64 %1826, i64* %RAX, align 8, !tbaa !2428
  %1827 = add i64 %2784, -8
  %1828 = add i64 %2812, 6
  store i64 %1828, i64* %PC, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RCX, align 8, !tbaa !2428
  %1832 = add i64 %2812, 9
  store i64 %1832, i64* %PC, align 8
  %1833 = load i32, i32* %2787, align 4
  %1834 = shl i32 %1833, 3
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RDX, align 8, !tbaa !2428
  %1836 = add i32 %1834, %1830
  %1837 = shl i32 %1836, 3
  %1838 = zext i32 %1837 to i64
  store i64 %1838, i64* %RCX, align 8, !tbaa !2428
  %1839 = lshr i32 %1836, 28
  %1840 = and i32 %1839, 1
  %1841 = load i64, i64* %RAX, align 8
  %1842 = trunc i64 %1841 to i32
  %1843 = add i32 %1837, %1842
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RAX, align 8, !tbaa !2428
  %1845 = icmp ult i32 %1843, %1842
  %1846 = icmp ult i32 %1843, %1837
  %1847 = or i1 %1845, %1846
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %13, align 1, !tbaa !2432
  %1849 = and i32 %1843, 255
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849) #8
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %20, align 1, !tbaa !2446
  %1854 = xor i64 %1838, %1841
  %1855 = trunc i64 %1854 to i32
  %1856 = xor i32 %1855, %1843
  %1857 = lshr i32 %1856, 4
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %26, align 1, !tbaa !2447
  %1860 = icmp eq i32 %1843, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %29, align 1, !tbaa !2448
  %1862 = lshr i32 %1843, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %32, align 1, !tbaa !2449
  %1864 = lshr i32 %1842, 31
  %1865 = xor i32 %1862, %1864
  %1866 = xor i32 %1862, %1840
  %1867 = add nuw nsw i32 %1865, %1866
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %38, align 1, !tbaa !2450
  %1870 = sext i32 %1843 to i64
  store i64 %1870, i64* %RSI, align 8, !tbaa !2428
  %1871 = shl nsw i64 %1870, 2
  %1872 = add i64 %1871, ptrtoint (%puzzl_type* @puzzl to i64)
  %1873 = add i64 %2812, 33
  store i64 %1873, i64* %PC, align 8
  %1874 = inttoptr i64 %1872 to i32*
  store i32 0, i32* %1874, align 4
  %1875 = load i64, i64* %RBP, align 8
  %1876 = add i64 %1875, -12
  %1877 = load i64, i64* %PC, align 8
  %1878 = add i64 %1877, 3
  store i64 %1878, i64* %PC, align 8
  %1879 = inttoptr i64 %1876 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = add i32 %1880, 1
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RAX, align 8, !tbaa !2428
  %1883 = icmp eq i32 %1880, -1
  %1884 = icmp eq i32 %1881, 0
  %1885 = or i1 %1883, %1884
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %13, align 1, !tbaa !2432
  %1887 = and i32 %1881, 255
  %1888 = tail call i32 @llvm.ctpop.i32(i32 %1887) #8
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  store i8 %1891, i8* %20, align 1, !tbaa !2446
  %1892 = xor i32 %1880, %1881
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  store i8 %1895, i8* %26, align 1, !tbaa !2447
  %1896 = zext i1 %1884 to i8
  store i8 %1896, i8* %29, align 1, !tbaa !2448
  %1897 = lshr i32 %1881, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %32, align 1, !tbaa !2449
  %1899 = lshr i32 %1880, 31
  %1900 = xor i32 %1897, %1899
  %1901 = add nuw nsw i32 %1900, %1897
  %1902 = icmp eq i32 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %38, align 1, !tbaa !2450
  %1904 = add i64 %1877, 9
  store i64 %1904, i64* %PC, align 8
  store i32 %1881, i32* %1879, align 4
  %1905 = load i64, i64* %PC, align 8
  %1906 = add i64 %1905, -52
  store i64 %1906, i64* %PC, align 8, !tbaa !2428
  br label %block_4008a2

block_400d2c:                                     ; preds = %block_400d22
  %1907 = add i64 %1048, -8
  %1908 = add i64 %1076, 7
  store i64 %1908, i64* %PC, align 8
  %1909 = inttoptr i64 %1907 to i32*
  store i32 0, i32* %1909, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400d33

block_40101b:                                     ; preds = %block_400f9a
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 40) to i32*), align 8
  store i32 65, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 40) to i32*), align 8
  %1910 = add i64 %409, 29
  store i64 %1910, i64* %PC, align 8
  store i32 0, i32* %384, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_401038

block_400c9f:                                     ; preds = %block_400c95
  %1911 = add i64 %2030, -12
  %1912 = add i64 %2058, 7
  store i64 %1912, i64* %PC, align 8
  %1913 = inttoptr i64 %1911 to i32*
  store i32 0, i32* %1913, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400ca6

block_40099a:                                     ; preds = %block_400990
  %1914 = add i64 %944, -4
  %1915 = add i64 %961, 3
  store i64 %1915, i64* %PC, align 8
  %1916 = inttoptr i64 %1914 to i32*
  %1917 = load i32, i32* %1916, align 4
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RAX, align 8, !tbaa !2428
  %1919 = add i64 %944, -8
  %1920 = add i64 %961, 6
  store i64 %1920, i64* %PC, align 8
  %1921 = inttoptr i64 %1919 to i32*
  %1922 = load i32, i32* %1921, align 4
  %1923 = zext i32 %1922 to i64
  store i64 %1923, i64* %RCX, align 8, !tbaa !2428
  %1924 = add i64 %961, 9
  store i64 %1924, i64* %PC, align 8
  %1925 = load i32, i32* %947, align 4
  %1926 = shl i32 %1925, 3
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RDX, align 8, !tbaa !2428
  %1928 = add i32 %1926, %1922
  %1929 = shl i32 %1928, 3
  %1930 = zext i32 %1929 to i64
  store i64 %1930, i64* %RCX, align 8, !tbaa !2428
  %1931 = lshr i32 %1928, 28
  %1932 = and i32 %1931, 1
  %1933 = load i64, i64* %RAX, align 8
  %1934 = trunc i64 %1933 to i32
  %1935 = add i32 %1929, %1934
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RAX, align 8, !tbaa !2428
  %1937 = icmp ult i32 %1935, %1934
  %1938 = icmp ult i32 %1935, %1929
  %1939 = or i1 %1937, %1938
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %13, align 1, !tbaa !2432
  %1941 = and i32 %1935, 255
  %1942 = tail call i32 @llvm.ctpop.i32(i32 %1941) #8
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  store i8 %1945, i8* %20, align 1, !tbaa !2446
  %1946 = xor i64 %1930, %1933
  %1947 = trunc i64 %1946 to i32
  %1948 = xor i32 %1947, %1935
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %26, align 1, !tbaa !2447
  %1952 = icmp eq i32 %1935, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %29, align 1, !tbaa !2448
  %1954 = lshr i32 %1935, 31
  %1955 = trunc i32 %1954 to i8
  store i8 %1955, i8* %32, align 1, !tbaa !2449
  %1956 = lshr i32 %1934, 31
  %1957 = xor i32 %1954, %1956
  %1958 = xor i32 %1954, %1932
  %1959 = add nuw nsw i32 %1957, %1958
  %1960 = icmp eq i32 %1959, 2
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %38, align 1, !tbaa !2450
  %1962 = sext i32 %1935 to i64
  store i64 %1962, i64* %RSI, align 8, !tbaa !2428
  %1963 = shl nsw i64 %1962, 2
  %1964 = add i64 %1963, ptrtoint (%p_type* @p to i64)
  %1965 = add i64 %961, 33
  store i64 %1965, i64* %PC, align 8
  %1966 = inttoptr i64 %1964 to i32*
  store i32 1, i32* %1966, align 4
  %1967 = load i64, i64* %RBP, align 8
  %1968 = add i64 %1967, -12
  %1969 = load i64, i64* %PC, align 8
  %1970 = add i64 %1969, 3
  store i64 %1970, i64* %PC, align 8
  %1971 = inttoptr i64 %1968 to i32*
  %1972 = load i32, i32* %1971, align 4
  %1973 = add i32 %1972, 1
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RAX, align 8, !tbaa !2428
  %1975 = icmp eq i32 %1972, -1
  %1976 = icmp eq i32 %1973, 0
  %1977 = or i1 %1975, %1976
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %13, align 1, !tbaa !2432
  %1979 = and i32 %1973, 255
  %1980 = tail call i32 @llvm.ctpop.i32(i32 %1979) #8
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  %1983 = xor i8 %1982, 1
  store i8 %1983, i8* %20, align 1, !tbaa !2446
  %1984 = xor i32 %1972, %1973
  %1985 = lshr i32 %1984, 4
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %26, align 1, !tbaa !2447
  %1988 = zext i1 %1976 to i8
  store i8 %1988, i8* %29, align 1, !tbaa !2448
  %1989 = lshr i32 %1973, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %32, align 1, !tbaa !2449
  %1991 = lshr i32 %1972, 31
  %1992 = xor i32 %1989, %1991
  %1993 = add nuw nsw i32 %1992, %1989
  %1994 = icmp eq i32 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %38, align 1, !tbaa !2450
  %1996 = add i64 %1969, 9
  store i64 %1996, i64* %PC, align 8
  store i32 %1973, i32* %1971, align 4
  %1997 = load i64, i64* %PC, align 8
  %1998 = add i64 %1997, -52
  store i64 %1998, i64* %PC, align 8, !tbaa !2428
  br label %block_400990

block_4009c9:                                     ; preds = %block_400990
  %1999 = add i64 %944, -8
  %2000 = add i64 %961, 8
  store i64 %2000, i64* %PC, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = add i32 %2002, 1
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX, align 8, !tbaa !2428
  %2005 = icmp eq i32 %2002, -1
  %2006 = icmp eq i32 %2003, 0
  %2007 = or i1 %2005, %2006
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %13, align 1, !tbaa !2432
  %2009 = and i32 %2003, 255
  %2010 = tail call i32 @llvm.ctpop.i32(i32 %2009) #8
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  store i8 %2013, i8* %20, align 1, !tbaa !2446
  %2014 = xor i32 %2002, %2003
  %2015 = lshr i32 %2014, 4
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  store i8 %2017, i8* %26, align 1, !tbaa !2447
  %2018 = zext i1 %2006 to i8
  store i8 %2018, i8* %29, align 1, !tbaa !2448
  %2019 = lshr i32 %2003, 31
  %2020 = trunc i32 %2019 to i8
  store i8 %2020, i8* %32, align 1, !tbaa !2449
  %2021 = lshr i32 %2002, 31
  %2022 = xor i32 %2019, %2021
  %2023 = add nuw nsw i32 %2022, %2019
  %2024 = icmp eq i32 %2023, 2
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %38, align 1, !tbaa !2450
  %2026 = add i64 %961, 14
  store i64 %2026, i64* %PC, align 8
  store i32 %2003, i32* %2001, align 4
  %2027 = load i64, i64* %PC, align 8
  %2028 = add i64 %2027, -88
  store i64 %2028, i64* %PC, align 8, !tbaa !2428
  br label %block_40097f

block_400c95:                                     ; preds = %block_400c8e, %block_400cdf
  %2029 = phi i64 [ %.pre25, %block_400c8e ], [ %1430, %block_400cdf ]
  %2030 = load i64, i64* %RBP, align 8
  %2031 = add i64 %2030, -8
  %2032 = add i64 %2029, 4
  store i64 %2032, i64* %PC, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = add i32 %2034, -1
  %2036 = icmp eq i32 %2034, 0
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %13, align 1, !tbaa !2432
  %2038 = and i32 %2035, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038) #8
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %20, align 1, !tbaa !2446
  %2043 = xor i32 %2034, %2035
  %2044 = lshr i32 %2043, 4
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %26, align 1, !tbaa !2447
  %2047 = icmp eq i32 %2035, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %29, align 1, !tbaa !2448
  %2049 = lshr i32 %2035, 31
  %2050 = trunc i32 %2049 to i8
  store i8 %2050, i8* %32, align 1, !tbaa !2449
  %2051 = lshr i32 %2034, 31
  %2052 = xor i32 %2049, %2051
  %2053 = add nuw nsw i32 %2052, %2051
  %2054 = icmp eq i32 %2053, 2
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %38, align 1, !tbaa !2450
  %2056 = icmp ne i8 %2050, 0
  %2057 = xor i1 %2056, %2054
  %.demorgan88 = or i1 %2047, %2057
  %.v89 = select i1 %.demorgan88, i64 10, i64 93
  %2058 = add i64 %2029, %.v89
  store i64 %2058, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan88, label %block_400c9f, label %block_400cf2

block_401093:                                     ; preds = %block_40105a
  %2059 = add i64 %2663, -8
  %2060 = add i64 %2691, 8
  store i64 %2060, i64* %PC, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  %2063 = add i32 %2062, 1
  %2064 = zext i32 %2063 to i64
  store i64 %2064, i64* %RAX, align 8, !tbaa !2428
  %2065 = icmp eq i32 %2062, -1
  %2066 = icmp eq i32 %2063, 0
  %2067 = or i1 %2065, %2066
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %13, align 1, !tbaa !2432
  %2069 = and i32 %2063, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069) #8
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %20, align 1, !tbaa !2446
  %2074 = xor i32 %2062, %2063
  %2075 = lshr i32 %2074, 4
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %26, align 1, !tbaa !2447
  %2078 = zext i1 %2066 to i8
  store i8 %2078, i8* %29, align 1, !tbaa !2448
  %2079 = lshr i32 %2063, 31
  %2080 = trunc i32 %2079 to i8
  store i8 %2080, i8* %32, align 1, !tbaa !2449
  %2081 = lshr i32 %2062, 31
  %2082 = xor i32 %2079, %2081
  %2083 = add nuw nsw i32 %2082, %2079
  %2084 = icmp eq i32 %2083, 2
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %38, align 1, !tbaa !2450
  %2086 = add i64 %2691, 14
  store i64 %2086, i64* %PC, align 8
  store i32 %2063, i32* %2061, align 4
  %2087 = load i64, i64* %PC, align 8
  %2088 = add i64 %2087, -88
  store i64 %2088, i64* %PC, align 8, !tbaa !2428
  br label %block_401049

block_400ca6:                                     ; preds = %block_400c9f, %block_400cb0
  %2089 = phi i64 [ %.pre26, %block_400c9f ], [ %1818, %block_400cb0 ]
  %2090 = load i64, i64* %RBP, align 8
  %2091 = add i64 %2090, -12
  %2092 = add i64 %2089, 4
  store i64 %2092, i64* %PC, align 8
  %2093 = inttoptr i64 %2091 to i32*
  %2094 = load i32, i32* %2093, align 4
  %2095 = add i32 %2094, -3
  %2096 = icmp ult i32 %2094, 3
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %13, align 1, !tbaa !2432
  %2098 = and i32 %2095, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098) #8
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %20, align 1, !tbaa !2446
  %2103 = xor i32 %2094, %2095
  %2104 = lshr i32 %2103, 4
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %26, align 1, !tbaa !2447
  %2107 = icmp eq i32 %2095, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %29, align 1, !tbaa !2448
  %2109 = lshr i32 %2095, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %32, align 1, !tbaa !2449
  %2111 = lshr i32 %2094, 31
  %2112 = xor i32 %2109, %2111
  %2113 = add nuw nsw i32 %2112, %2111
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1, !tbaa !2450
  %2116 = icmp ne i8 %2110, 0
  %2117 = xor i1 %2116, %2114
  %.demorgan90 = or i1 %2107, %2117
  %.v91 = select i1 %.demorgan90, i64 10, i64 57
  %2118 = add i64 %2089, %.v91
  store i64 %2118, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan90, label %block_400cb0, label %block_400cdf

block_400a8d:                                     ; preds = %block_400a0c
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 4) to i32*), align 4
  store i32 193, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 4) to i32*), align 4
  %2119 = add i64 %3628, 29
  store i64 %2119, i64* %PC, align 8
  store i32 0, i32* %3603, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400aaa

block_40088a:                                     ; preds = %block_400880
  %2120 = add i64 %2197, -8
  %2121 = add i64 %2225, 7
  store i64 %2121, i64* %PC, align 8
  %2122 = inttoptr i64 %2120 to i32*
  store i32 1, i32* %2122, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400891

block_400b18:                                     ; preds = %block_400abb
  %2123 = add i64 %2754, -4
  %2124 = add i64 %2782, 8
  store i64 %2124, i64* %PC, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = add i32 %2126, 1
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RAX, align 8, !tbaa !2428
  %2129 = icmp eq i32 %2126, -1
  %2130 = icmp eq i32 %2127, 0
  %2131 = or i1 %2129, %2130
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %13, align 1, !tbaa !2432
  %2133 = and i32 %2127, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133) #8
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %20, align 1, !tbaa !2446
  %2138 = xor i32 %2126, %2127
  %2139 = lshr i32 %2138, 4
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  store i8 %2141, i8* %26, align 1, !tbaa !2447
  %2142 = zext i1 %2130 to i8
  store i8 %2142, i8* %29, align 1, !tbaa !2448
  %2143 = lshr i32 %2127, 31
  %2144 = trunc i32 %2143 to i8
  store i8 %2144, i8* %32, align 1, !tbaa !2449
  %2145 = lshr i32 %2126, 31
  %2146 = xor i32 %2143, %2145
  %2147 = add nuw nsw i32 %2146, %2143
  %2148 = icmp eq i32 %2147, 2
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %38, align 1, !tbaa !2450
  %2150 = add i64 %2782, 14
  store i64 %2150, i64* %PC, align 8
  store i32 %2127, i32* %2125, align 4
  %2151 = load i64, i64* %PC, align 8
  %2152 = add i64 %2151, -124
  store i64 %2152, i64* %PC, align 8, !tbaa !2428
  br label %block_400aaa

block_401216:                                     ; preds = %block_4011e8
  %2153 = load i32, i32* bitcast (%kount_type* @kount to i32*), align 8
  %2154 = add i32 %2153, -2005
  %2155 = icmp ult i32 %2153, 2005
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %13, align 1, !tbaa !2432
  %2157 = and i32 %2154, 255
  %2158 = tail call i32 @llvm.ctpop.i32(i32 %2157) #8
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  %2161 = xor i8 %2160, 1
  store i8 %2161, i8* %20, align 1, !tbaa !2446
  %2162 = xor i32 %2153, 16
  %2163 = xor i32 %2162, %2154
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  store i8 %2166, i8* %26, align 1, !tbaa !2447
  %2167 = icmp eq i32 %2154, 0
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %29, align 1, !tbaa !2448
  %2169 = lshr i32 %2154, 31
  %2170 = trunc i32 %2169 to i8
  store i8 %2170, i8* %32, align 1, !tbaa !2449
  %2171 = lshr i32 %2153, 31
  %2172 = xor i32 %2169, %2171
  %2173 = add nuw nsw i32 %2172, %2171
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %38, align 1, !tbaa !2450
  %.v127 = select i1 %2167, i64 37, i64 17
  %2176 = add i64 %210, %.v127
  store i64 %2176, i64* %PC, align 8, !tbaa !2428
  br i1 %2167, label %block_40123b, label %block_401227

block_400c84:                                     ; preds = %block_400c67, %block_400cf2
  %2177 = phi i64 [ %.pre24, %block_400c67 ], [ %1309, %block_400cf2 ]
  %2178 = load i64, i64* %RBP, align 8
  %2179 = add i64 %2178, -4
  %2180 = add i64 %2177, 4
  store i64 %2180, i64* %PC, align 8
  %2181 = inttoptr i64 %2179 to i32*
  %2182 = load i32, i32* %2181, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2183 = and i32 %2182, 255
  %2184 = tail call i32 @llvm.ctpop.i32(i32 %2183) #8
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  store i8 %2187, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2188 = icmp eq i32 %2182, 0
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %29, align 1, !tbaa !2448
  %2190 = lshr i32 %2182, 31
  %2191 = trunc i32 %2190 to i8
  store i8 %2191, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2192 = xor i1 %2188, true
  %2193 = icmp eq i8 %2191, 0
  %2194 = and i1 %2193, %2192
  %.v87 = select i1 %2194, i64 129, i64 10
  %2195 = add i64 %2177, %.v87
  store i64 %2195, i64* %PC, align 8, !tbaa !2428
  br i1 %2194, label %block_400d05, label %block_400c8e

block_400880:                                     ; preds = %block_400879, %block_4008ee
  %2196 = phi i64 [ %.pre4, %block_400879 ], [ %1339, %block_4008ee ]
  %2197 = load i64, i64* %RBP, align 8
  %2198 = add i64 %2197, -4
  %2199 = add i64 %2196, 4
  store i64 %2199, i64* %PC, align 8
  %2200 = inttoptr i64 %2198 to i32*
  %2201 = load i32, i32* %2200, align 4
  %2202 = add i32 %2201, -5
  %2203 = icmp ult i32 %2201, 5
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %13, align 1, !tbaa !2432
  %2205 = and i32 %2202, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205) #8
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %20, align 1, !tbaa !2446
  %2210 = xor i32 %2201, %2202
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %26, align 1, !tbaa !2447
  %2214 = icmp eq i32 %2202, 0
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %29, align 1, !tbaa !2448
  %2216 = lshr i32 %2202, 31
  %2217 = trunc i32 %2216 to i8
  store i8 %2217, i8* %32, align 1, !tbaa !2449
  %2218 = lshr i32 %2201, 31
  %2219 = xor i32 %2216, %2218
  %2220 = add nuw nsw i32 %2219, %2218
  %2221 = icmp eq i32 %2220, 2
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %38, align 1, !tbaa !2450
  %2223 = icmp ne i8 %2217, 0
  %2224 = xor i1 %2223, %2221
  %.demorgan52 = or i1 %2214, %2224
  %.v53 = select i1 %.demorgan52, i64 10, i64 129
  %2225 = add i64 %2196, %.v53
  store i64 %2225, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan52, label %block_40088a, label %block_400901

block_400919:                                     ; preds = %block_400926, %block_400912
  %2226 = phi i64 [ %1683, %block_400926 ], [ %.pre8, %block_400912 ]
  %2227 = load i64, i64* %RBP, align 8
  %2228 = add i64 %2227, -16
  %2229 = add i64 %2226, 7
  store i64 %2229, i64* %PC, align 8
  %2230 = inttoptr i64 %2228 to i32*
  %2231 = load i32, i32* %2230, align 4
  %2232 = add i32 %2231, -511
  %2233 = icmp ult i32 %2231, 511
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %13, align 1, !tbaa !2432
  %2235 = and i32 %2232, 255
  %2236 = tail call i32 @llvm.ctpop.i32(i32 %2235) #8
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  store i8 %2239, i8* %20, align 1, !tbaa !2446
  %2240 = xor i32 %2231, 16
  %2241 = xor i32 %2240, %2232
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %26, align 1, !tbaa !2447
  %2245 = icmp eq i32 %2232, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %29, align 1, !tbaa !2448
  %2247 = lshr i32 %2232, 31
  %2248 = trunc i32 %2247 to i8
  store i8 %2248, i8* %32, align 1, !tbaa !2449
  %2249 = lshr i32 %2231, 31
  %2250 = xor i32 %2247, %2249
  %2251 = add nuw nsw i32 %2250, %2249
  %2252 = icmp eq i32 %2251, 2
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %38, align 1, !tbaa !2450
  %2254 = icmp ne i8 %2248, 0
  %2255 = xor i1 %2254, %2252
  %.demorgan60 = or i1 %2245, %2255
  %.v61 = select i1 %.demorgan60, i64 13, i64 59
  %2256 = add i64 %2226, %.v61
  store i64 %2256, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan60, label %block_400926, label %block_400954

block_401102:                                     ; preds = %block_4010f8
  %2257 = add i64 %1248, -4
  %2258 = add i64 %1276, 3
  store i64 %2258, i64* %PC, align 8
  %2259 = inttoptr i64 %2257 to i32*
  %2260 = load i32, i32* %2259, align 4
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RAX, align 8, !tbaa !2428
  %2262 = add i64 %1248, -8
  %2263 = add i64 %1276, 6
  store i64 %2263, i64* %PC, align 8
  %2264 = inttoptr i64 %2262 to i32*
  %2265 = load i32, i32* %2264, align 4
  %2266 = zext i32 %2265 to i64
  store i64 %2266, i64* %RCX, align 8, !tbaa !2428
  %2267 = add i64 %1276, 9
  store i64 %2267, i64* %PC, align 8
  %2268 = load i32, i32* %1251, align 4
  %2269 = shl i32 %2268, 3
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RDX, align 8, !tbaa !2428
  %2271 = add i32 %2269, %2265
  %2272 = shl i32 %2271, 3
  %2273 = zext i32 %2272 to i64
  store i64 %2273, i64* %RCX, align 8, !tbaa !2428
  %2274 = lshr i32 %2271, 28
  %2275 = and i32 %2274, 1
  %2276 = load i64, i64* %RAX, align 8
  %2277 = trunc i64 %2276 to i32
  %2278 = add i32 %2272, %2277
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RAX, align 8, !tbaa !2428
  %2280 = icmp ult i32 %2278, %2277
  %2281 = icmp ult i32 %2278, %2272
  %2282 = or i1 %2280, %2281
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %13, align 1, !tbaa !2432
  %2284 = and i32 %2278, 255
  %2285 = tail call i32 @llvm.ctpop.i32(i32 %2284) #8
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  store i8 %2288, i8* %20, align 1, !tbaa !2446
  %2289 = xor i64 %2273, %2276
  %2290 = trunc i64 %2289 to i32
  %2291 = xor i32 %2290, %2278
  %2292 = lshr i32 %2291, 4
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  store i8 %2294, i8* %26, align 1, !tbaa !2447
  %2295 = icmp eq i32 %2278, 0
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %29, align 1, !tbaa !2448
  %2297 = lshr i32 %2278, 31
  %2298 = trunc i32 %2297 to i8
  store i8 %2298, i8* %32, align 1, !tbaa !2449
  %2299 = lshr i32 %2277, 31
  %2300 = xor i32 %2297, %2299
  %2301 = xor i32 %2297, %2275
  %2302 = add nuw nsw i32 %2300, %2301
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %38, align 1, !tbaa !2450
  %2305 = sext i32 %2278 to i64
  store i64 %2305, i64* %RSI, align 8, !tbaa !2428
  %2306 = shl nsw i64 %2305, 2
  %2307 = add i64 %2306, add (i64 ptrtoint (%p_type* @p to i64), i64 24576)
  %2308 = add i64 %1276, 33
  store i64 %2308, i64* %PC, align 8
  %2309 = inttoptr i64 %2307 to i32*
  store i32 1, i32* %2309, align 4
  %2310 = load i64, i64* %RBP, align 8
  %2311 = add i64 %2310, -12
  %2312 = load i64, i64* %PC, align 8
  %2313 = add i64 %2312, 3
  store i64 %2313, i64* %PC, align 8
  %2314 = inttoptr i64 %2311 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = add i32 %2315, 1
  %2317 = zext i32 %2316 to i64
  store i64 %2317, i64* %RAX, align 8, !tbaa !2428
  %2318 = icmp eq i32 %2315, -1
  %2319 = icmp eq i32 %2316, 0
  %2320 = or i1 %2318, %2319
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %13, align 1, !tbaa !2432
  %2322 = and i32 %2316, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322) #8
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %20, align 1, !tbaa !2446
  %2327 = xor i32 %2315, %2316
  %2328 = lshr i32 %2327, 4
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %26, align 1, !tbaa !2447
  %2331 = zext i1 %2319 to i8
  store i8 %2331, i8* %29, align 1, !tbaa !2448
  %2332 = lshr i32 %2316, 31
  %2333 = trunc i32 %2332 to i8
  store i8 %2333, i8* %32, align 1, !tbaa !2449
  %2334 = lshr i32 %2315, 31
  %2335 = xor i32 %2332, %2334
  %2336 = add nuw nsw i32 %2335, %2332
  %2337 = icmp eq i32 %2336, 2
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %38, align 1, !tbaa !2450
  %2339 = add i64 %2312, 9
  store i64 %2339, i64* %PC, align 8
  store i32 %2316, i32* %2314, align 4
  %2340 = load i64, i64* %PC, align 8
  %2341 = add i64 %2340, -52
  store i64 %2341, i64* %PC, align 8, !tbaa !2428
  br label %block_4010f8

block_400b6a:                                     ; preds = %block_400b63, %block_400b74
  %2342 = phi i64 [ %.pre20, %block_400b63 ], [ %620, %block_400b74 ]
  %2343 = load i64, i64* %RBP, align 8
  %2344 = add i64 %2343, -12
  %2345 = add i64 %2342, 4
  store i64 %2345, i64* %PC, align 8
  %2346 = inttoptr i64 %2344 to i32*
  %2347 = load i32, i32* %2346, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2348 = and i32 %2347, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348) #8
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2353 = icmp eq i32 %2347, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %29, align 1, !tbaa !2448
  %2355 = lshr i32 %2347, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2357 = xor i1 %2353, true
  %2358 = icmp eq i8 %2356, 0
  %2359 = and i1 %2358, %2357
  %.v81 = select i1 %2359, i64 57, i64 10
  %2360 = add i64 %2342, %.v81
  store i64 %2360, i64* %PC, align 8, !tbaa !2428
  br i1 %2359, label %block_400ba3, label %block_400b74

block_400a7a:                                     ; preds = %block_400a1d
  %2361 = add i64 %3355, -4
  %2362 = add i64 %3372, 8
  store i64 %2362, i64* %PC, align 8
  %2363 = inttoptr i64 %2361 to i32*
  %2364 = load i32, i32* %2363, align 4
  %2365 = add i32 %2364, 1
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RAX, align 8, !tbaa !2428
  %2367 = icmp eq i32 %2364, -1
  %2368 = icmp eq i32 %2365, 0
  %2369 = or i1 %2367, %2368
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %13, align 1, !tbaa !2432
  %2371 = and i32 %2365, 255
  %2372 = tail call i32 @llvm.ctpop.i32(i32 %2371) #8
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  store i8 %2375, i8* %20, align 1, !tbaa !2446
  %2376 = xor i32 %2364, %2365
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  store i8 %2379, i8* %26, align 1, !tbaa !2447
  %2380 = zext i1 %2368 to i8
  store i8 %2380, i8* %29, align 1, !tbaa !2448
  %2381 = lshr i32 %2365, 31
  %2382 = trunc i32 %2381 to i8
  store i8 %2382, i8* %32, align 1, !tbaa !2449
  %2383 = lshr i32 %2364, 31
  %2384 = xor i32 %2381, %2383
  %2385 = add nuw nsw i32 %2384, %2381
  %2386 = icmp eq i32 %2385, 2
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %38, align 1, !tbaa !2450
  %2388 = add i64 %3372, 14
  store i64 %2388, i64* %PC, align 8
  store i32 %2365, i32* %2363, align 4
  %2389 = load i64, i64* %PC, align 8
  %2390 = add i64 %2389, -124
  store i64 %2390, i64* %PC, align 8, !tbaa !2428
  br label %block_400a0c

block_400e79:                                     ; preds = %block_400e6f
  %2391 = add i64 %2425, -12
  %2392 = add i64 %2442, 7
  store i64 %2392, i64* %PC, align 8
  %2393 = inttoptr i64 %2391 to i32*
  store i32 0, i32* %2393, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400e80

block_400ba3:                                     ; preds = %block_400b6a
  %2394 = add i64 %2343, -8
  %2395 = add i64 %2360, 8
  store i64 %2395, i64* %PC, align 8
  %2396 = inttoptr i64 %2394 to i32*
  %2397 = load i32, i32* %2396, align 4
  %2398 = add i32 %2397, 1
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RAX, align 8, !tbaa !2428
  %2400 = icmp eq i32 %2397, -1
  %2401 = icmp eq i32 %2398, 0
  %2402 = or i1 %2400, %2401
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %13, align 1, !tbaa !2432
  %2404 = and i32 %2398, 255
  %2405 = tail call i32 @llvm.ctpop.i32(i32 %2404) #8
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  %2408 = xor i8 %2407, 1
  store i8 %2408, i8* %20, align 1, !tbaa !2446
  %2409 = xor i32 %2397, %2398
  %2410 = lshr i32 %2409, 4
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  store i8 %2412, i8* %26, align 1, !tbaa !2447
  %2413 = zext i1 %2401 to i8
  store i8 %2413, i8* %29, align 1, !tbaa !2448
  %2414 = lshr i32 %2398, 31
  %2415 = trunc i32 %2414 to i8
  store i8 %2415, i8* %32, align 1, !tbaa !2449
  %2416 = lshr i32 %2397, 31
  %2417 = xor i32 %2414, %2416
  %2418 = add nuw nsw i32 %2417, %2414
  %2419 = icmp eq i32 %2418, 2
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %38, align 1, !tbaa !2450
  %2421 = add i64 %2360, 14
  store i64 %2421, i64* %PC, align 8
  store i32 %2398, i32* %2396, align 4
  %2422 = load i64, i64* %PC, align 8
  %2423 = add i64 %2422, -88
  store i64 %2423, i64* %PC, align 8, !tbaa !2428
  br label %block_400b59

block_400e6f:                                     ; preds = %block_400e68, %block_400eb9
  %2424 = phi i64 [ %.pre34, %block_400e68 ], [ %1713, %block_400eb9 ]
  %2425 = load i64, i64* %RBP, align 8
  %2426 = add i64 %2425, -8
  %2427 = add i64 %2424, 4
  store i64 %2427, i64* %PC, align 8
  %2428 = inttoptr i64 %2426 to i32*
  %2429 = load i32, i32* %2428, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2430 = and i32 %2429, 255
  %2431 = tail call i32 @llvm.ctpop.i32(i32 %2430) #8
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  store i8 %2434, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2435 = icmp eq i32 %2429, 0
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %29, align 1, !tbaa !2448
  %2437 = lshr i32 %2429, 31
  %2438 = trunc i32 %2437 to i8
  store i8 %2438, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2439 = xor i1 %2435, true
  %2440 = icmp eq i8 %2438, 0
  %2441 = and i1 %2440, %2439
  %.v101 = select i1 %2441, i64 93, i64 10
  %2442 = add i64 %2424, %.v101
  store i64 %2442, i64* %PC, align 8, !tbaa !2428
  br i1 %2441, label %block_400ecc, label %block_400e79

block_400e80:                                     ; preds = %block_400e79, %block_400e8a
  %2443 = phi i64 [ %.pre35, %block_400e79 ], [ %876, %block_400e8a ]
  %2444 = load i64, i64* %RBP, align 8
  %2445 = add i64 %2444, -12
  %2446 = add i64 %2443, 4
  store i64 %2446, i64* %PC, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = add i32 %2448, -2
  %2450 = icmp ult i32 %2448, 2
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %13, align 1, !tbaa !2432
  %2452 = and i32 %2449, 255
  %2453 = tail call i32 @llvm.ctpop.i32(i32 %2452) #8
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  store i8 %2456, i8* %20, align 1, !tbaa !2446
  %2457 = xor i32 %2448, %2449
  %2458 = lshr i32 %2457, 4
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  store i8 %2460, i8* %26, align 1, !tbaa !2447
  %2461 = icmp eq i32 %2449, 0
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %29, align 1, !tbaa !2448
  %2463 = lshr i32 %2449, 31
  %2464 = trunc i32 %2463 to i8
  store i8 %2464, i8* %32, align 1, !tbaa !2449
  %2465 = lshr i32 %2448, 31
  %2466 = xor i32 %2463, %2465
  %2467 = add nuw nsw i32 %2466, %2465
  %2468 = icmp eq i32 %2467, 2
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %38, align 1, !tbaa !2450
  %2470 = icmp ne i8 %2464, 0
  %2471 = xor i1 %2470, %2468
  %.demorgan102 = or i1 %2461, %2471
  %.v103 = select i1 %.demorgan102, i64 10, i64 57
  %2472 = add i64 %2443, %.v103
  store i64 %2472, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan102, label %block_400e8a, label %block_400eb9

block_400c67:                                     ; preds = %block_400be6
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 16) to i32*), align 16
  store i32 67, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 16) to i32*), align 16
  %2473 = add i64 %240, 29
  store i64 %2473, i64* %PC, align 8
  store i32 0, i32* %215, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400c84

block_400e68:                                     ; preds = %block_400e5e
  %2474 = add i64 %2643, -8
  %2475 = add i64 %2660, 7
  store i64 %2475, i64* %PC, align 8
  %2476 = inttoptr i64 %2474 to i32*
  store i32 0, i32* %2476, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400e6f

block_400d33:                                     ; preds = %block_400d7d, %block_400d2c
  %2477 = phi i64 [ %2876, %block_400d7d ], [ %.pre28, %block_400d2c ]
  %2478 = load i64, i64* %RBP, align 8
  %2479 = add i64 %2478, -8
  %2480 = add i64 %2477, 4
  store i64 %2480, i64* %PC, align 8
  %2481 = inttoptr i64 %2479 to i32*
  %2482 = load i32, i32* %2481, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2483 = and i32 %2482, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483) #8
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2488 = icmp eq i32 %2482, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %29, align 1, !tbaa !2448
  %2490 = lshr i32 %2482, 31
  %2491 = trunc i32 %2490 to i8
  store i8 %2491, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2492 = xor i1 %2488, true
  %2493 = icmp eq i8 %2491, 0
  %2494 = and i1 %2493, %2492
  %.v94 = select i1 %2494, i64 93, i64 10
  %2495 = add i64 %2477, %.v94
  store i64 %2495, i64* %PC, align 8, !tbaa !2428
  br i1 %2494, label %block_400d90, label %block_400d3d

block_400901:                                     ; preds = %block_400880
  %2496 = add i64 %2225, 7
  store i64 %2496, i64* %PC, align 8
  store i32 0, i32* %2200, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400908

block_400a67:                                     ; preds = %block_400a2e
  %2497 = add i64 %3259, -8
  %2498 = add i64 %3287, 8
  store i64 %2498, i64* %PC, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = add i32 %2500, 1
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RAX, align 8, !tbaa !2428
  %2503 = icmp eq i32 %2500, -1
  %2504 = icmp eq i32 %2501, 0
  %2505 = or i1 %2503, %2504
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %13, align 1, !tbaa !2432
  %2507 = and i32 %2501, 255
  %2508 = tail call i32 @llvm.ctpop.i32(i32 %2507) #8
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  store i8 %2511, i8* %20, align 1, !tbaa !2446
  %2512 = xor i32 %2500, %2501
  %2513 = lshr i32 %2512, 4
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  store i8 %2515, i8* %26, align 1, !tbaa !2447
  %2516 = zext i1 %2504 to i8
  store i8 %2516, i8* %29, align 1, !tbaa !2448
  %2517 = lshr i32 %2501, 31
  %2518 = trunc i32 %2517 to i8
  store i8 %2518, i8* %32, align 1, !tbaa !2449
  %2519 = lshr i32 %2500, 31
  %2520 = xor i32 %2517, %2519
  %2521 = add nuw nsw i32 %2520, %2517
  %2522 = icmp eq i32 %2521, 2
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %38, align 1, !tbaa !2450
  %2524 = add i64 %3287, 14
  store i64 %2524, i64* %PC, align 8
  store i32 %2501, i32* %2499, align 4
  %2525 = load i64, i64* %PC, align 8
  %2526 = add i64 %2525, -88
  store i64 %2526, i64* %PC, align 8, !tbaa !2428
  br label %block_400a1d

block_400acc:                                     ; preds = %block_400ac5, %block_400ad6
  %2527 = phi i64 [ %.pre17, %block_400ac5 ], [ %1579, %block_400ad6 ]
  %2528 = load i64, i64* %RBP, align 8
  %2529 = add i64 %2528, -12
  %2530 = add i64 %2527, 4
  store i64 %2530, i64* %PC, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = add i32 %2532, -1
  %2534 = icmp eq i32 %2532, 0
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %13, align 1, !tbaa !2432
  %2536 = and i32 %2533, 255
  %2537 = tail call i32 @llvm.ctpop.i32(i32 %2536) #8
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  %2540 = xor i8 %2539, 1
  store i8 %2540, i8* %20, align 1, !tbaa !2446
  %2541 = xor i32 %2532, %2533
  %2542 = lshr i32 %2541, 4
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  store i8 %2544, i8* %26, align 1, !tbaa !2447
  %2545 = icmp eq i32 %2533, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %29, align 1, !tbaa !2448
  %2547 = lshr i32 %2533, 31
  %2548 = trunc i32 %2547 to i8
  store i8 %2548, i8* %32, align 1, !tbaa !2449
  %2549 = lshr i32 %2532, 31
  %2550 = xor i32 %2547, %2549
  %2551 = add nuw nsw i32 %2550, %2549
  %2552 = icmp eq i32 %2551, 2
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %38, align 1, !tbaa !2450
  %2554 = icmp ne i8 %2548, 0
  %2555 = xor i1 %2554, %2552
  %.demorgan75 = or i1 %2545, %2555
  %.v76 = select i1 %.demorgan75, i64 10, i64 57
  %2556 = add i64 %2527, %.v76
  store i64 %2556, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan75, label %block_400ad6, label %block_400b05

block_401064:                                     ; preds = %block_40105a
  %2557 = add i64 %2663, -4
  %2558 = add i64 %2691, 3
  store i64 %2558, i64* %PC, align 8
  %2559 = inttoptr i64 %2557 to i32*
  %2560 = load i32, i32* %2559, align 4
  %2561 = zext i32 %2560 to i64
  store i64 %2561, i64* %RAX, align 8, !tbaa !2428
  %2562 = add i64 %2663, -8
  %2563 = add i64 %2691, 6
  store i64 %2563, i64* %PC, align 8
  %2564 = inttoptr i64 %2562 to i32*
  %2565 = load i32, i32* %2564, align 4
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RCX, align 8, !tbaa !2428
  %2567 = add i64 %2691, 9
  store i64 %2567, i64* %PC, align 8
  %2568 = load i32, i32* %2666, align 4
  %2569 = shl i32 %2568, 3
  %2570 = zext i32 %2569 to i64
  store i64 %2570, i64* %RDX, align 8, !tbaa !2428
  %2571 = add i32 %2569, %2565
  %2572 = shl i32 %2571, 3
  %2573 = zext i32 %2572 to i64
  store i64 %2573, i64* %RCX, align 8, !tbaa !2428
  %2574 = lshr i32 %2571, 28
  %2575 = and i32 %2574, 1
  %2576 = load i64, i64* %RAX, align 8
  %2577 = trunc i64 %2576 to i32
  %2578 = add i32 %2572, %2577
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RAX, align 8, !tbaa !2428
  %2580 = icmp ult i32 %2578, %2577
  %2581 = icmp ult i32 %2578, %2572
  %2582 = or i1 %2580, %2581
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %13, align 1, !tbaa !2432
  %2584 = and i32 %2578, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584) #8
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %20, align 1, !tbaa !2446
  %2589 = xor i64 %2573, %2576
  %2590 = trunc i64 %2589 to i32
  %2591 = xor i32 %2590, %2578
  %2592 = lshr i32 %2591, 4
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  store i8 %2594, i8* %26, align 1, !tbaa !2447
  %2595 = icmp eq i32 %2578, 0
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %29, align 1, !tbaa !2448
  %2597 = lshr i32 %2578, 31
  %2598 = trunc i32 %2597 to i8
  store i8 %2598, i8* %32, align 1, !tbaa !2449
  %2599 = lshr i32 %2577, 31
  %2600 = xor i32 %2597, %2599
  %2601 = xor i32 %2597, %2575
  %2602 = add nuw nsw i32 %2600, %2601
  %2603 = icmp eq i32 %2602, 2
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %38, align 1, !tbaa !2450
  %2605 = sext i32 %2578 to i64
  store i64 %2605, i64* %RSI, align 8, !tbaa !2428
  %2606 = shl nsw i64 %2605, 2
  %2607 = add i64 %2606, add (i64 ptrtoint (%p_type* @p to i64), i64 22528)
  %2608 = add i64 %2691, 33
  store i64 %2608, i64* %PC, align 8
  %2609 = inttoptr i64 %2607 to i32*
  store i32 1, i32* %2609, align 4
  %2610 = load i64, i64* %RBP, align 8
  %2611 = add i64 %2610, -12
  %2612 = load i64, i64* %PC, align 8
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC, align 8
  %2614 = inttoptr i64 %2611 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = add i32 %2615, 1
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RAX, align 8, !tbaa !2428
  %2618 = icmp eq i32 %2615, -1
  %2619 = icmp eq i32 %2616, 0
  %2620 = or i1 %2618, %2619
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %13, align 1, !tbaa !2432
  %2622 = and i32 %2616, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622) #8
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %20, align 1, !tbaa !2446
  %2627 = xor i32 %2615, %2616
  %2628 = lshr i32 %2627, 4
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  store i8 %2630, i8* %26, align 1, !tbaa !2447
  %2631 = zext i1 %2619 to i8
  store i8 %2631, i8* %29, align 1, !tbaa !2448
  %2632 = lshr i32 %2616, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %32, align 1, !tbaa !2449
  %2634 = lshr i32 %2615, 31
  %2635 = xor i32 %2632, %2634
  %2636 = add nuw nsw i32 %2635, %2632
  %2637 = icmp eq i32 %2636, 2
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %38, align 1, !tbaa !2450
  %2639 = add i64 %2612, 9
  store i64 %2639, i64* %PC, align 8
  store i32 %2616, i32* %2614, align 4
  %2640 = load i64, i64* %PC, align 8
  %2641 = add i64 %2640, -52
  store i64 %2641, i64* %PC, align 8, !tbaa !2428
  br label %block_40105a

block_400e5e:                                     ; preds = %block_400e41, %block_400ecc
  %2642 = phi i64 [ %.pre33, %block_400e41 ], [ %1612, %block_400ecc ]
  %2643 = load i64, i64* %RBP, align 8
  %2644 = add i64 %2643, -4
  %2645 = add i64 %2642, 4
  store i64 %2645, i64* %PC, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2648 = and i32 %2647, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648) #8
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2653 = icmp eq i32 %2647, 0
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %29, align 1, !tbaa !2448
  %2655 = lshr i32 %2647, 31
  %2656 = trunc i32 %2655 to i8
  store i8 %2656, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2657 = xor i1 %2653, true
  %2658 = icmp eq i8 %2656, 0
  %2659 = and i1 %2658, %2657
  %.v100 = select i1 %2659, i64 129, i64 10
  %2660 = add i64 %2642, %.v100
  store i64 %2660, i64* %PC, align 8, !tbaa !2428
  br i1 %2659, label %block_400edf, label %block_400e68

block_400e41:                                     ; preds = %block_400dc0
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 28) to i32*), align 4
  store i32 16, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 28) to i32*), align 4
  %2661 = add i64 %1449, 29
  store i64 %2661, i64* %PC, align 8
  store i32 0, i32* %1435, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400e5e

block_40105a:                                     ; preds = %block_401053, %block_401064
  %2662 = phi i64 [ %.pre44, %block_401053 ], [ %2641, %block_401064 ]
  %2663 = load i64, i64* %RBP, align 8
  %2664 = add i64 %2663, -12
  %2665 = add i64 %2662, 4
  store i64 %2665, i64* %PC, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = add i32 %2667, -1
  %2669 = icmp eq i32 %2667, 0
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %13, align 1, !tbaa !2432
  %2671 = and i32 %2668, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671) #8
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %20, align 1, !tbaa !2446
  %2676 = xor i32 %2667, %2668
  %2677 = lshr i32 %2676, 4
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %26, align 1, !tbaa !2447
  %2680 = icmp eq i32 %2668, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %29, align 1, !tbaa !2448
  %2682 = lshr i32 %2668, 31
  %2683 = trunc i32 %2682 to i8
  store i8 %2683, i8* %32, align 1, !tbaa !2449
  %2684 = lshr i32 %2667, 31
  %2685 = xor i32 %2682, %2684
  %2686 = add nuw nsw i32 %2685, %2684
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %38, align 1, !tbaa !2450
  %2689 = icmp ne i8 %2683, 0
  %2690 = xor i1 %2689, %2687
  %.demorgan117 = or i1 %2680, %2690
  %.v118 = select i1 %.demorgan117, i64 10, i64 57
  %2691 = add i64 %2662, %.v118
  store i64 %2691, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan117, label %block_401064, label %block_401093

block_400908:                                     ; preds = %block_400901, %block_400954
  %2692 = phi i64 [ %.pre7, %block_400901 ], [ %684, %block_400954 ]
  %2693 = load i64, i64* %RBP, align 8
  %2694 = add i64 %2693, -4
  %2695 = add i64 %2692, 4
  store i64 %2695, i64* %PC, align 8
  %2696 = inttoptr i64 %2694 to i32*
  %2697 = load i32, i32* %2696, align 4
  %2698 = add i32 %2697, -12
  %2699 = icmp ult i32 %2697, 12
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %13, align 1, !tbaa !2432
  %2701 = and i32 %2698, 255
  %2702 = tail call i32 @llvm.ctpop.i32(i32 %2701) #8
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = xor i8 %2704, 1
  store i8 %2705, i8* %20, align 1, !tbaa !2446
  %2706 = xor i32 %2697, %2698
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %26, align 1, !tbaa !2447
  %2710 = icmp eq i32 %2698, 0
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %29, align 1, !tbaa !2448
  %2712 = lshr i32 %2698, 31
  %2713 = trunc i32 %2712 to i8
  store i8 %2713, i8* %32, align 1, !tbaa !2449
  %2714 = lshr i32 %2697, 31
  %2715 = xor i32 %2712, %2714
  %2716 = add nuw nsw i32 %2715, %2714
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %38, align 1, !tbaa !2450
  %2719 = icmp ne i8 %2713, 0
  %2720 = xor i1 %2719, %2717
  %.demorgan58 = or i1 %2710, %2720
  %.v59 = select i1 %.demorgan58, i64 10, i64 95
  %2721 = add i64 %2692, %.v59
  store i64 %2721, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan58, label %block_400912, label %block_400967

block_4010b9:                                     ; preds = %block_401038
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%class_type* @class to i64), i64 44) to i32*), align 4
  store i32 72, i32* inttoptr (i64 add (i64 ptrtoint (%piecemax_type* @piecemax to i64), i64 44) to i32*), align 4
  %2722 = add i64 %703, 29
  store i64 %2722, i64* %PC, align 8
  store i32 0, i32* %689, align 4
  %.pre45 = load i64, i64* %PC, align 8
  br label %block_4010d6

block_400c54:                                     ; preds = %block_400bf7
  %2723 = add i64 %57, -4
  %2724 = add i64 %74, 8
  store i64 %2724, i64* %PC, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = add i32 %2726, 1
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RAX, align 8, !tbaa !2428
  %2729 = icmp eq i32 %2726, -1
  %2730 = icmp eq i32 %2727, 0
  %2731 = or i1 %2729, %2730
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %13, align 1, !tbaa !2432
  %2733 = and i32 %2727, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733) #8
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %20, align 1, !tbaa !2446
  %2738 = xor i32 %2726, %2727
  %2739 = lshr i32 %2738, 4
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  store i8 %2741, i8* %26, align 1, !tbaa !2447
  %2742 = zext i1 %2730 to i8
  store i8 %2742, i8* %29, align 1, !tbaa !2448
  %2743 = lshr i32 %2727, 31
  %2744 = trunc i32 %2743 to i8
  store i8 %2744, i8* %32, align 1, !tbaa !2449
  %2745 = lshr i32 %2726, 31
  %2746 = xor i32 %2743, %2745
  %2747 = add nuw nsw i32 %2746, %2743
  %2748 = icmp eq i32 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %38, align 1, !tbaa !2450
  %2750 = add i64 %74, 14
  store i64 %2750, i64* %PC, align 8
  store i32 %2727, i32* %2725, align 4
  %2751 = load i64, i64* %PC, align 8
  %2752 = add i64 %2751, -124
  store i64 %2752, i64* %PC, align 8, !tbaa !2428
  br label %block_400be6

block_400abb:                                     ; preds = %block_400b05, %block_400ab4
  %2753 = phi i64 [ %3350, %block_400b05 ], [ %.pre16, %block_400ab4 ]
  %2754 = load i64, i64* %RBP, align 8
  %2755 = add i64 %2754, -8
  %2756 = add i64 %2753, 4
  store i64 %2756, i64* %PC, align 8
  %2757 = inttoptr i64 %2755 to i32*
  %2758 = load i32, i32* %2757, align 4
  %2759 = add i32 %2758, -3
  %2760 = icmp ult i32 %2758, 3
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %13, align 1, !tbaa !2432
  %2762 = and i32 %2759, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762) #8
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %20, align 1, !tbaa !2446
  %2767 = xor i32 %2758, %2759
  %2768 = lshr i32 %2767, 4
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  store i8 %2770, i8* %26, align 1, !tbaa !2447
  %2771 = icmp eq i32 %2759, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %29, align 1, !tbaa !2448
  %2773 = lshr i32 %2759, 31
  %2774 = trunc i32 %2773 to i8
  store i8 %2774, i8* %32, align 1, !tbaa !2449
  %2775 = lshr i32 %2758, 31
  %2776 = xor i32 %2773, %2775
  %2777 = add nuw nsw i32 %2776, %2775
  %2778 = icmp eq i32 %2777, 2
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %38, align 1, !tbaa !2450
  %2780 = icmp ne i8 %2774, 0
  %2781 = xor i1 %2780, %2778
  %.demorgan73 = or i1 %2771, %2781
  %.v74 = select i1 %.demorgan73, i64 10, i64 93
  %2782 = add i64 %2753, %.v74
  store i64 %2782, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan73, label %block_400ac5, label %block_400b18

block_4008a2:                                     ; preds = %block_40089b, %block_4008ac
  %2783 = phi i64 [ %.pre6, %block_40089b ], [ %1906, %block_4008ac ]
  %2784 = load i64, i64* %RBP, align 8
  %2785 = add i64 %2784, -12
  %2786 = add i64 %2783, 4
  store i64 %2786, i64* %PC, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = add i32 %2788, -5
  %2790 = icmp ult i32 %2788, 5
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %13, align 1, !tbaa !2432
  %2792 = and i32 %2789, 255
  %2793 = tail call i32 @llvm.ctpop.i32(i32 %2792) #8
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  store i8 %2796, i8* %20, align 1, !tbaa !2446
  %2797 = xor i32 %2788, %2789
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  store i8 %2800, i8* %26, align 1, !tbaa !2447
  %2801 = icmp eq i32 %2789, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %29, align 1, !tbaa !2448
  %2803 = lshr i32 %2789, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %32, align 1, !tbaa !2449
  %2805 = lshr i32 %2788, 31
  %2806 = xor i32 %2803, %2805
  %2807 = add nuw nsw i32 %2806, %2805
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %38, align 1, !tbaa !2450
  %2810 = icmp ne i8 %2804, 0
  %2811 = xor i1 %2810, %2808
  %.demorgan56 = or i1 %2801, %2811
  %.v57 = select i1 %.demorgan56, i64 10, i64 57
  %2812 = add i64 %2783, %.v57
  store i64 %2812, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan56, label %block_4008ac, label %block_4008db

block_401053:                                     ; preds = %block_401049
  %2813 = add i64 %2878, -12
  %2814 = add i64 %2906, 7
  store i64 %2814, i64* %PC, align 8
  %2815 = inttoptr i64 %2813 to i32*
  store i32 0, i32* %2815, align 4
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_40105a

block_40084f:                                     ; preds = %block_40085c, %block_400840
  %2816 = phi i64 [ %3595, %block_40085c ], [ %.pre, %block_400840 ]
  %2817 = load i64, i64* %RBP, align 8
  %2818 = add i64 %2817, -16
  %2819 = add i64 %2816, 7
  store i64 %2819, i64* %PC, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = add i32 %2821, -511
  %2823 = icmp ult i32 %2821, 511
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %13, align 1, !tbaa !2432
  %2825 = and i32 %2822, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825) #8
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %20, align 1, !tbaa !2446
  %2830 = xor i32 %2821, 16
  %2831 = xor i32 %2830, %2822
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %26, align 1, !tbaa !2447
  %2835 = icmp eq i32 %2822, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %29, align 1, !tbaa !2448
  %2837 = lshr i32 %2822, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %32, align 1, !tbaa !2449
  %2839 = lshr i32 %2821, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2839
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %38, align 1, !tbaa !2450
  %2844 = icmp ne i8 %2838, 0
  %2845 = xor i1 %2844, %2842
  %.demorgan = or i1 %2835, %2845
  %.v = select i1 %.demorgan, i64 13, i64 42
  %2846 = add i64 %2816, %.v
  store i64 %2846, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40085c, label %block_400879

block_400d7d:                                     ; preds = %block_400d44
  %2847 = add i64 %1141, -8
  %2848 = add i64 %1158, 8
  store i64 %2848, i64* %PC, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = add i32 %2850, 1
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RAX, align 8, !tbaa !2428
  %2853 = icmp eq i32 %2850, -1
  %2854 = icmp eq i32 %2851, 0
  %2855 = or i1 %2853, %2854
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %13, align 1, !tbaa !2432
  %2857 = and i32 %2851, 255
  %2858 = tail call i32 @llvm.ctpop.i32(i32 %2857) #8
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  %2861 = xor i8 %2860, 1
  store i8 %2861, i8* %20, align 1, !tbaa !2446
  %2862 = xor i32 %2850, %2851
  %2863 = lshr i32 %2862, 4
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  store i8 %2865, i8* %26, align 1, !tbaa !2447
  %2866 = zext i1 %2854 to i8
  store i8 %2866, i8* %29, align 1, !tbaa !2448
  %2867 = lshr i32 %2851, 31
  %2868 = trunc i32 %2867 to i8
  store i8 %2868, i8* %32, align 1, !tbaa !2449
  %2869 = lshr i32 %2850, 31
  %2870 = xor i32 %2867, %2869
  %2871 = add nuw nsw i32 %2870, %2867
  %2872 = icmp eq i32 %2871, 2
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %38, align 1, !tbaa !2450
  %2874 = add i64 %1158, 14
  store i64 %2874, i64* %PC, align 8
  store i32 %2851, i32* %2849, align 4
  %2875 = load i64, i64* %PC, align 8
  %2876 = add i64 %2875, -88
  store i64 %2876, i64* %PC, align 8, !tbaa !2428
  br label %block_400d33

block_401049:                                     ; preds = %block_401042, %block_401093
  %2877 = phi i64 [ %.pre43, %block_401042 ], [ %2088, %block_401093 ]
  %2878 = load i64, i64* %RBP, align 8
  %2879 = add i64 %2878, -8
  %2880 = add i64 %2877, 4
  store i64 %2880, i64* %PC, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = add i32 %2882, -1
  %2884 = icmp eq i32 %2882, 0
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %13, align 1, !tbaa !2432
  %2886 = and i32 %2883, 255
  %2887 = tail call i32 @llvm.ctpop.i32(i32 %2886) #8
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  %2890 = xor i8 %2889, 1
  store i8 %2890, i8* %20, align 1, !tbaa !2446
  %2891 = xor i32 %2882, %2883
  %2892 = lshr i32 %2891, 4
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  store i8 %2894, i8* %26, align 1, !tbaa !2447
  %2895 = icmp eq i32 %2883, 0
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %29, align 1, !tbaa !2448
  %2897 = lshr i32 %2883, 31
  %2898 = trunc i32 %2897 to i8
  store i8 %2898, i8* %32, align 1, !tbaa !2449
  %2899 = lshr i32 %2882, 31
  %2900 = xor i32 %2897, %2899
  %2901 = add nuw nsw i32 %2900, %2899
  %2902 = icmp eq i32 %2901, 2
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %38, align 1, !tbaa !2450
  %2904 = icmp ne i8 %2898, 0
  %2905 = xor i1 %2904, %2902
  %.demorgan115 = or i1 %2895, %2905
  %.v116 = select i1 %.demorgan115, i64 10, i64 93
  %2906 = add i64 %2877, %.v116
  store i64 %2906, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan115, label %block_401053, label %block_4010a6

block_400aaa:                                     ; preds = %block_400b18, %block_400a8d
  %2907 = phi i64 [ %2152, %block_400b18 ], [ %.pre15, %block_400a8d ]
  %2908 = load i64, i64* %RBP, align 8
  %2909 = add i64 %2908, -4
  %2910 = add i64 %2907, 4
  store i64 %2910, i64* %PC, align 8
  %2911 = inttoptr i64 %2909 to i32*
  %2912 = load i32, i32* %2911, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %2913 = and i32 %2912, 255
  %2914 = tail call i32 @llvm.ctpop.i32(i32 %2913) #8
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  store i8 %2917, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %2918 = icmp eq i32 %2912, 0
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %29, align 1, !tbaa !2448
  %2920 = lshr i32 %2912, 31
  %2921 = trunc i32 %2920 to i8
  store i8 %2921, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %2922 = xor i1 %2918, true
  %2923 = icmp eq i8 %2921, 0
  %2924 = and i1 %2923, %2922
  %.v72 = select i1 %2924, i64 129, i64 10
  %2925 = add i64 %2907, %.v72
  store i64 %2925, i64* %PC, align 8, !tbaa !2428
  br i1 %2924, label %block_400b2b, label %block_400ab4

block_400891:                                     ; preds = %block_40088a, %block_4008db
  %2926 = phi i64 [ %.pre5, %block_40088a ], [ %1479, %block_4008db ]
  %2927 = load i64, i64* %RBP, align 8
  %2928 = add i64 %2927, -8
  %2929 = add i64 %2926, 4
  store i64 %2929, i64* %PC, align 8
  %2930 = inttoptr i64 %2928 to i32*
  %2931 = load i32, i32* %2930, align 4
  %2932 = add i32 %2931, -5
  %2933 = icmp ult i32 %2931, 5
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %13, align 1, !tbaa !2432
  %2935 = and i32 %2932, 255
  %2936 = tail call i32 @llvm.ctpop.i32(i32 %2935) #8
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  %2939 = xor i8 %2938, 1
  store i8 %2939, i8* %20, align 1, !tbaa !2446
  %2940 = xor i32 %2931, %2932
  %2941 = lshr i32 %2940, 4
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  store i8 %2943, i8* %26, align 1, !tbaa !2447
  %2944 = icmp eq i32 %2932, 0
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %29, align 1, !tbaa !2448
  %2946 = lshr i32 %2932, 31
  %2947 = trunc i32 %2946 to i8
  store i8 %2947, i8* %32, align 1, !tbaa !2449
  %2948 = lshr i32 %2931, 31
  %2949 = xor i32 %2946, %2948
  %2950 = add nuw nsw i32 %2949, %2948
  %2951 = icmp eq i32 %2950, 2
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %38, align 1, !tbaa !2450
  %2953 = icmp ne i8 %2947, 0
  %2954 = xor i1 %2953, %2951
  %.demorgan54 = or i1 %2944, %2954
  %.v55 = select i1 %.demorgan54, i64 10, i64 93
  %2955 = add i64 %2926, %.v55
  store i64 %2955, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan54, label %block_40089b, label %block_4008ee

block_401042:                                     ; preds = %block_401038
  %2956 = add i64 %686, -8
  %2957 = add i64 %703, 7
  store i64 %2957, i64* %PC, align 8
  %2958 = inttoptr i64 %2956 to i32*
  store i32 0, i32* %2958, align 4
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_401049

block_400f0d:                                     ; preds = %block_400f57, %block_400f06
  %2959 = phi i64 [ %3658, %block_400f57 ], [ %.pre37, %block_400f06 ]
  %2960 = load i64, i64* %RBP, align 8
  %2961 = add i64 %2960, -8
  %2962 = add i64 %2959, 4
  store i64 %2962, i64* %PC, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = add i32 %2964, -1
  %2966 = icmp eq i32 %2964, 0
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %13, align 1, !tbaa !2432
  %2968 = and i32 %2965, 255
  %2969 = tail call i32 @llvm.ctpop.i32(i32 %2968) #8
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = xor i8 %2971, 1
  store i8 %2972, i8* %20, align 1, !tbaa !2446
  %2973 = xor i32 %2964, %2965
  %2974 = lshr i32 %2973, 4
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  store i8 %2976, i8* %26, align 1, !tbaa !2447
  %2977 = icmp eq i32 %2965, 0
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %29, align 1, !tbaa !2448
  %2979 = lshr i32 %2965, 31
  %2980 = trunc i32 %2979 to i8
  store i8 %2980, i8* %32, align 1, !tbaa !2449
  %2981 = lshr i32 %2964, 31
  %2982 = xor i32 %2979, %2981
  %2983 = add nuw nsw i32 %2982, %2981
  %2984 = icmp eq i32 %2983, 2
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %38, align 1, !tbaa !2450
  %2986 = icmp ne i8 %2980, 0
  %2987 = xor i1 %2986, %2984
  %.demorgan106 = or i1 %2977, %2987
  %.v107 = select i1 %.demorgan106, i64 10, i64 93
  %2988 = add i64 %2959, %.v107
  store i64 %2988, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan106, label %block_400f17, label %block_400f6a

block_400c41:                                     ; preds = %block_400c08
  %2989 = add i64 %3661, -8
  %2990 = add i64 %3689, 8
  store i64 %2990, i64* %PC, align 8
  %2991 = inttoptr i64 %2989 to i32*
  %2992 = load i32, i32* %2991, align 4
  %2993 = add i32 %2992, 1
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RAX, align 8, !tbaa !2428
  %2995 = icmp eq i32 %2992, -1
  %2996 = icmp eq i32 %2993, 0
  %2997 = or i1 %2995, %2996
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %13, align 1, !tbaa !2432
  %2999 = and i32 %2993, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999) #8
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %20, align 1, !tbaa !2446
  %3004 = xor i32 %2992, %2993
  %3005 = lshr i32 %3004, 4
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  store i8 %3007, i8* %26, align 1, !tbaa !2447
  %3008 = zext i1 %2996 to i8
  store i8 %3008, i8* %29, align 1, !tbaa !2448
  %3009 = lshr i32 %2993, 31
  %3010 = trunc i32 %3009 to i8
  store i8 %3010, i8* %32, align 1, !tbaa !2449
  %3011 = lshr i32 %2992, 31
  %3012 = xor i32 %3009, %3011
  %3013 = add nuw nsw i32 %3012, %3009
  %3014 = icmp eq i32 %3013, 2
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %38, align 1, !tbaa !2450
  %3016 = add i64 %3689, 14
  store i64 %3016, i64* %PC, align 8
  store i32 %2993, i32* %2991, align 4
  %3017 = load i64, i64* %PC, align 8
  %3018 = add i64 %3017, -88
  store i64 %3018, i64* %PC, align 8, !tbaa !2428
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
  %3019 = add i64 %351, -16
  %3020 = add i64 %379, 75
  store i64 %3020, i64* %PC, align 8
  %3021 = inttoptr i64 %3019 to i32*
  store i32 73, i32* %3021, align 4
  %3022 = load i64, i64* %PC, align 8
  store i32 0, i32* bitcast (%kount_type* @kount to i32*), align 8
  %3023 = load i64, i64* %RBP, align 8
  %3024 = add i64 %3023, -16
  %3025 = add i64 %3022, 14
  store i64 %3025, i64* %PC, align 8
  %3026 = inttoptr i64 %3024 to i32*
  %3027 = load i32, i32* %3026, align 4
  %3028 = zext i32 %3027 to i64
  store i64 %3028, i64* %RSI, align 8, !tbaa !2428
  %3029 = add i64 %3022, -3154
  %3030 = add i64 %3022, 19
  %3031 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3032 = add i64 %3031, -8
  %3033 = inttoptr i64 %3032 to i64*
  store i64 %3030, i64* %3033, align 8
  store i64 %3032, i64* %RSP, align 8, !tbaa !2428
  store i64 %3029, i64* %PC, align 8, !tbaa !2428
  %3034 = tail call %struct.Memory* @sub_400550_Fit_renamed_(%struct.State* nonnull %0, i64 %3029, %struct.Memory* %2)
  %3035 = load i32, i32* %EAX, align 4
  %3036 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3037 = and i32 %3035, 255
  %3038 = tail call i32 @llvm.ctpop.i32(i32 %3037) #8
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  store i8 %3041, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3042 = icmp eq i32 %3035, 0
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %29, align 1, !tbaa !2448
  %3044 = lshr i32 %3035, 31
  %3045 = trunc i32 %3044 to i8
  store i8 %3045, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v125 = select i1 %3042, i64 31, i64 9
  %3046 = add i64 %3036, %.v125
  store i64 %3046, i64* %PC, align 8, !tbaa !2428
  br i1 %3042, label %block_4011d4, label %block_4011be

block_400bf0:                                     ; preds = %block_400be6
  %3047 = add i64 %212, -8
  %3048 = add i64 %240, 7
  store i64 %3048, i64* %PC, align 8
  %3049 = inttoptr i64 %3047 to i32*
  store i32 0, i32* %3049, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400bf7

block_40123b:                                     ; preds = %block_401216, %block_401227
  %3050 = phi i64 [ %2176, %block_401216 ], [ %.pre50, %block_401227 ]
  %MEMORY.40 = phi %struct.Memory* [ %198, %block_401216 ], [ %1345, %block_401227 ]
  %3051 = add i64 %3050, 5
  br label %block_401240

block_400a38:                                     ; preds = %block_400a2e
  %3052 = add i64 %3259, -4
  %3053 = add i64 %3287, 3
  store i64 %3053, i64* %PC, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = zext i32 %3055 to i64
  store i64 %3056, i64* %RAX, align 8, !tbaa !2428
  %3057 = add i64 %3259, -8
  %3058 = add i64 %3287, 6
  store i64 %3058, i64* %PC, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RCX, align 8, !tbaa !2428
  %3062 = add i64 %3287, 9
  store i64 %3062, i64* %PC, align 8
  %3063 = load i32, i32* %3262, align 4
  %3064 = shl i32 %3063, 3
  %3065 = zext i32 %3064 to i64
  store i64 %3065, i64* %RDX, align 8, !tbaa !2428
  %3066 = add i32 %3064, %3060
  %3067 = shl i32 %3066, 3
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RCX, align 8, !tbaa !2428
  %3069 = lshr i32 %3066, 28
  %3070 = and i32 %3069, 1
  %3071 = load i64, i64* %RAX, align 8
  %3072 = trunc i64 %3071 to i32
  %3073 = add i32 %3067, %3072
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RAX, align 8, !tbaa !2428
  %3075 = icmp ult i32 %3073, %3072
  %3076 = icmp ult i32 %3073, %3067
  %3077 = or i1 %3075, %3076
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %13, align 1, !tbaa !2432
  %3079 = and i32 %3073, 255
  %3080 = tail call i32 @llvm.ctpop.i32(i32 %3079) #8
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %20, align 1, !tbaa !2446
  %3084 = xor i64 %3068, %3071
  %3085 = trunc i64 %3084 to i32
  %3086 = xor i32 %3085, %3073
  %3087 = lshr i32 %3086, 4
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  store i8 %3089, i8* %26, align 1, !tbaa !2447
  %3090 = icmp eq i32 %3073, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %29, align 1, !tbaa !2448
  %3092 = lshr i32 %3073, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %32, align 1, !tbaa !2449
  %3094 = lshr i32 %3072, 31
  %3095 = xor i32 %3092, %3094
  %3096 = xor i32 %3092, %3070
  %3097 = add nuw nsw i32 %3095, %3096
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %38, align 1, !tbaa !2450
  %3100 = sext i32 %3073 to i64
  store i64 %3100, i64* %RSI, align 8, !tbaa !2428
  %3101 = shl nsw i64 %3100, 2
  %3102 = add i64 %3101, add (i64 ptrtoint (%p_type* @p to i64), i64 2048)
  %3103 = add i64 %3287, 33
  store i64 %3103, i64* %PC, align 8
  %3104 = inttoptr i64 %3102 to i32*
  store i32 1, i32* %3104, align 4
  %3105 = load i64, i64* %RBP, align 8
  %3106 = add i64 %3105, -12
  %3107 = load i64, i64* %PC, align 8
  %3108 = add i64 %3107, 3
  store i64 %3108, i64* %PC, align 8
  %3109 = inttoptr i64 %3106 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = add i32 %3110, 1
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RAX, align 8, !tbaa !2428
  %3113 = icmp eq i32 %3110, -1
  %3114 = icmp eq i32 %3111, 0
  %3115 = or i1 %3113, %3114
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %13, align 1, !tbaa !2432
  %3117 = and i32 %3111, 255
  %3118 = tail call i32 @llvm.ctpop.i32(i32 %3117) #8
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = xor i8 %3120, 1
  store i8 %3121, i8* %20, align 1, !tbaa !2446
  %3122 = xor i32 %3110, %3111
  %3123 = lshr i32 %3122, 4
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  store i8 %3125, i8* %26, align 1, !tbaa !2447
  %3126 = zext i1 %3114 to i8
  store i8 %3126, i8* %29, align 1, !tbaa !2448
  %3127 = lshr i32 %3111, 31
  %3128 = trunc i32 %3127 to i8
  store i8 %3128, i8* %32, align 1, !tbaa !2449
  %3129 = lshr i32 %3110, 31
  %3130 = xor i32 %3127, %3129
  %3131 = add nuw nsw i32 %3130, %3127
  %3132 = icmp eq i32 %3131, 2
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %38, align 1, !tbaa !2450
  %3134 = add i64 %3107, 9
  store i64 %3134, i64* %PC, align 8
  store i32 %3111, i32* %3109, align 4
  %3135 = load i64, i64* %PC, align 8
  %3136 = add i64 %3135, -52
  store i64 %3136, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2e

block_400ab4:                                     ; preds = %block_400aaa
  %3137 = add i64 %2908, -8
  %3138 = add i64 %2925, 7
  store i64 %3138, i64* %PC, align 8
  %3139 = inttoptr i64 %3137 to i32*
  store i32 0, i32* %3139, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400abb

block_40089b:                                     ; preds = %block_400891
  %3140 = add i64 %2927, -12
  %3141 = add i64 %2955, 7
  store i64 %3141, i64* %PC, align 8
  %3142 = inttoptr i64 %3140 to i32*
  store i32 1, i32* %3142, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4008a2

block_401008:                                     ; preds = %block_400fab
  %3143 = add i64 %1383, -4
  %3144 = add i64 %1400, 8
  store i64 %3144, i64* %PC, align 8
  %3145 = inttoptr i64 %3143 to i32*
  %3146 = load i32, i32* %3145, align 4
  %3147 = add i32 %3146, 1
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RAX, align 8, !tbaa !2428
  %3149 = icmp eq i32 %3146, -1
  %3150 = icmp eq i32 %3147, 0
  %3151 = or i1 %3149, %3150
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %13, align 1, !tbaa !2432
  %3153 = and i32 %3147, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153) #8
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %20, align 1, !tbaa !2446
  %3158 = xor i32 %3146, %3147
  %3159 = lshr i32 %3158, 4
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  store i8 %3161, i8* %26, align 1, !tbaa !2447
  %3162 = zext i1 %3150 to i8
  store i8 %3162, i8* %29, align 1, !tbaa !2448
  %3163 = lshr i32 %3147, 31
  %3164 = trunc i32 %3163 to i8
  store i8 %3164, i8* %32, align 1, !tbaa !2449
  %3165 = lshr i32 %3146, 31
  %3166 = xor i32 %3163, %3165
  %3167 = add nuw nsw i32 %3166, %3163
  %3168 = icmp eq i32 %3167, 2
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %38, align 1, !tbaa !2450
  %3170 = add i64 %1400, 14
  store i64 %3170, i64* %PC, align 8
  store i32 %3147, i32* %3145, align 4
  %3171 = load i64, i64* %PC, align 8
  %3172 = add i64 %3171, -124
  store i64 %3172, i64* %PC, align 8, !tbaa !2428
  br label %block_400f9a

block_400fc6:                                     ; preds = %block_400fbc
  %3173 = add i64 %291, -4
  %3174 = add i64 %319, 3
  store i64 %3174, i64* %PC, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RAX, align 8, !tbaa !2428
  %3178 = add i64 %291, -8
  %3179 = add i64 %319, 6
  store i64 %3179, i64* %PC, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RCX, align 8, !tbaa !2428
  %3183 = add i64 %319, 9
  store i64 %3183, i64* %PC, align 8
  %3184 = load i32, i32* %294, align 4
  %3185 = shl i32 %3184, 3
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RDX, align 8, !tbaa !2428
  %3187 = add i32 %3185, %3181
  %3188 = shl i32 %3187, 3
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RCX, align 8, !tbaa !2428
  %3190 = lshr i32 %3187, 28
  %3191 = and i32 %3190, 1
  %3192 = load i64, i64* %RAX, align 8
  %3193 = trunc i64 %3192 to i32
  %3194 = add i32 %3188, %3193
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RAX, align 8, !tbaa !2428
  %3196 = icmp ult i32 %3194, %3193
  %3197 = icmp ult i32 %3194, %3188
  %3198 = or i1 %3196, %3197
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %13, align 1, !tbaa !2432
  %3200 = and i32 %3194, 255
  %3201 = tail call i32 @llvm.ctpop.i32(i32 %3200) #8
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  %3204 = xor i8 %3203, 1
  store i8 %3204, i8* %20, align 1, !tbaa !2446
  %3205 = xor i64 %3189, %3192
  %3206 = trunc i64 %3205 to i32
  %3207 = xor i32 %3206, %3194
  %3208 = lshr i32 %3207, 4
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  store i8 %3210, i8* %26, align 1, !tbaa !2447
  %3211 = icmp eq i32 %3194, 0
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %29, align 1, !tbaa !2448
  %3213 = lshr i32 %3194, 31
  %3214 = trunc i32 %3213 to i8
  store i8 %3214, i8* %32, align 1, !tbaa !2449
  %3215 = lshr i32 %3193, 31
  %3216 = xor i32 %3213, %3215
  %3217 = xor i32 %3213, %3191
  %3218 = add nuw nsw i32 %3216, %3217
  %3219 = icmp eq i32 %3218, 2
  %3220 = zext i1 %3219 to i8
  store i8 %3220, i8* %38, align 1, !tbaa !2450
  %3221 = sext i32 %3194 to i64
  store i64 %3221, i64* %RSI, align 8, !tbaa !2428
  %3222 = shl nsw i64 %3221, 2
  %3223 = add i64 %3222, add (i64 ptrtoint (%p_type* @p to i64), i64 20480)
  %3224 = add i64 %319, 33
  store i64 %3224, i64* %PC, align 8
  %3225 = inttoptr i64 %3223 to i32*
  store i32 1, i32* %3225, align 4
  %3226 = load i64, i64* %RBP, align 8
  %3227 = add i64 %3226, -12
  %3228 = load i64, i64* %PC, align 8
  %3229 = add i64 %3228, 3
  store i64 %3229, i64* %PC, align 8
  %3230 = inttoptr i64 %3227 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = add i32 %3231, 1
  %3233 = zext i32 %3232 to i64
  store i64 %3233, i64* %RAX, align 8, !tbaa !2428
  %3234 = icmp eq i32 %3231, -1
  %3235 = icmp eq i32 %3232, 0
  %3236 = or i1 %3234, %3235
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %13, align 1, !tbaa !2432
  %3238 = and i32 %3232, 255
  %3239 = tail call i32 @llvm.ctpop.i32(i32 %3238) #8
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = xor i8 %3241, 1
  store i8 %3242, i8* %20, align 1, !tbaa !2446
  %3243 = xor i32 %3231, %3232
  %3244 = lshr i32 %3243, 4
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  store i8 %3246, i8* %26, align 1, !tbaa !2447
  %3247 = zext i1 %3235 to i8
  store i8 %3247, i8* %29, align 1, !tbaa !2448
  %3248 = lshr i32 %3232, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %32, align 1, !tbaa !2449
  %3250 = lshr i32 %3231, 31
  %3251 = xor i32 %3248, %3250
  %3252 = add nuw nsw i32 %3251, %3248
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %38, align 1, !tbaa !2450
  %3255 = add i64 %3228, 9
  store i64 %3255, i64* %PC, align 8
  store i32 %3232, i32* %3230, align 4
  %3256 = load i64, i64* %PC, align 8
  %3257 = add i64 %3256, -52
  store i64 %3257, i64* %PC, align 8, !tbaa !2428
  br label %block_400fbc

block_400a2e:                                     ; preds = %block_400a27, %block_400a38
  %3258 = phi i64 [ %.pre14, %block_400a27 ], [ %3136, %block_400a38 ]
  %3259 = load i64, i64* %RBP, align 8
  %3260 = add i64 %3259, -12
  %3261 = add i64 %3258, 4
  store i64 %3261, i64* %PC, align 8
  %3262 = inttoptr i64 %3260 to i32*
  %3263 = load i32, i32* %3262, align 4
  %3264 = add i32 %3263, -3
  %3265 = icmp ult i32 %3263, 3
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %13, align 1, !tbaa !2432
  %3267 = and i32 %3264, 255
  %3268 = tail call i32 @llvm.ctpop.i32(i32 %3267) #8
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  store i8 %3271, i8* %20, align 1, !tbaa !2446
  %3272 = xor i32 %3263, %3264
  %3273 = lshr i32 %3272, 4
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  store i8 %3275, i8* %26, align 1, !tbaa !2447
  %3276 = icmp eq i32 %3264, 0
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %29, align 1, !tbaa !2448
  %3278 = lshr i32 %3264, 31
  %3279 = trunc i32 %3278 to i8
  store i8 %3279, i8* %32, align 1, !tbaa !2449
  %3280 = lshr i32 %3263, 31
  %3281 = xor i32 %3278, %3280
  %3282 = add nuw nsw i32 %3281, %3280
  %3283 = icmp eq i32 %3282, 2
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %38, align 1, !tbaa !2450
  %3285 = icmp ne i8 %3279, 0
  %3286 = xor i1 %3285, %3283
  %.demorgan70 = or i1 %3276, %3286
  %.v71 = select i1 %.demorgan70, i64 10, i64 57
  %3287 = add i64 %3258, %.v71
  store i64 %3287, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan70, label %block_400a38, label %block_400a67

block_400a27:                                     ; preds = %block_400a1d
  %3288 = add i64 %3355, -12
  %3289 = add i64 %3372, 7
  store i64 %3289, i64* %PC, align 8
  %3290 = inttoptr i64 %3288 to i32*
  store i32 0, i32* %3290, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400a2e

block_400dd1:                                     ; preds = %block_400e1b, %block_400dca
  %3291 = phi i64 [ %3432, %block_400e1b ], [ %.pre31, %block_400dca ]
  %3292 = load i64, i64* %RBP, align 8
  %3293 = add i64 %3292, -8
  %3294 = add i64 %3291, 4
  store i64 %3294, i64* %PC, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = add i32 %3296, -2
  %3298 = icmp ult i32 %3296, 2
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %13, align 1, !tbaa !2432
  %3300 = and i32 %3297, 255
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300) #8
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %20, align 1, !tbaa !2446
  %3305 = xor i32 %3296, %3297
  %3306 = lshr i32 %3305, 4
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  store i8 %3308, i8* %26, align 1, !tbaa !2447
  %3309 = icmp eq i32 %3297, 0
  %3310 = zext i1 %3309 to i8
  store i8 %3310, i8* %29, align 1, !tbaa !2448
  %3311 = lshr i32 %3297, 31
  %3312 = trunc i32 %3311 to i8
  store i8 %3312, i8* %32, align 1, !tbaa !2449
  %3313 = lshr i32 %3296, 31
  %3314 = xor i32 %3311, %3313
  %3315 = add nuw nsw i32 %3314, %3313
  %3316 = icmp eq i32 %3315, 2
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %38, align 1, !tbaa !2450
  %3318 = icmp ne i8 %3312, 0
  %3319 = xor i1 %3318, %3316
  %.demorgan97 = or i1 %3309, %3319
  %.v98 = select i1 %.demorgan97, i64 10, i64 93
  %3320 = add i64 %3291, %.v98
  store i64 %3320, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan97, label %block_400ddb, label %block_400e2e

block_400b05:                                     ; preds = %block_400acc
  %3321 = add i64 %2528, -8
  %3322 = add i64 %2556, 8
  store i64 %3322, i64* %PC, align 8
  %3323 = inttoptr i64 %3321 to i32*
  %3324 = load i32, i32* %3323, align 4
  %3325 = add i32 %3324, 1
  %3326 = zext i32 %3325 to i64
  store i64 %3326, i64* %RAX, align 8, !tbaa !2428
  %3327 = icmp eq i32 %3324, -1
  %3328 = icmp eq i32 %3325, 0
  %3329 = or i1 %3327, %3328
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %13, align 1, !tbaa !2432
  %3331 = and i32 %3325, 255
  %3332 = tail call i32 @llvm.ctpop.i32(i32 %3331) #8
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  %3335 = xor i8 %3334, 1
  store i8 %3335, i8* %20, align 1, !tbaa !2446
  %3336 = xor i32 %3324, %3325
  %3337 = lshr i32 %3336, 4
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  store i8 %3339, i8* %26, align 1, !tbaa !2447
  %3340 = zext i1 %3328 to i8
  store i8 %3340, i8* %29, align 1, !tbaa !2448
  %3341 = lshr i32 %3325, 31
  %3342 = trunc i32 %3341 to i8
  store i8 %3342, i8* %32, align 1, !tbaa !2449
  %3343 = lshr i32 %3324, 31
  %3344 = xor i32 %3341, %3343
  %3345 = add nuw nsw i32 %3344, %3341
  %3346 = icmp eq i32 %3345, 2
  %3347 = zext i1 %3346 to i8
  store i8 %3347, i8* %38, align 1, !tbaa !2450
  %3348 = add i64 %2556, 14
  store i64 %3348, i64* %PC, align 8
  store i32 %3325, i32* %3323, align 4
  %3349 = load i64, i64* %PC, align 8
  %3350 = add i64 %3349, -88
  store i64 %3350, i64* %PC, align 8, !tbaa !2428
  br label %block_400abb

block_400fb5:                                     ; preds = %block_400fab
  %3351 = add i64 %1383, -12
  %3352 = add i64 %1400, 7
  store i64 %3352, i64* %PC, align 8
  %3353 = inttoptr i64 %3351 to i32*
  store i32 0, i32* %3353, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400fbc

block_400a1d:                                     ; preds = %block_400a16, %block_400a67
  %3354 = phi i64 [ %.pre13, %block_400a16 ], [ %2526, %block_400a67 ]
  %3355 = load i64, i64* %RBP, align 8
  %3356 = add i64 %3355, -8
  %3357 = add i64 %3354, 4
  store i64 %3357, i64* %PC, align 8
  %3358 = inttoptr i64 %3356 to i32*
  %3359 = load i32, i32* %3358, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %3360 = and i32 %3359, 255
  %3361 = tail call i32 @llvm.ctpop.i32(i32 %3360) #8
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  store i8 %3364, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %3365 = icmp eq i32 %3359, 0
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %29, align 1, !tbaa !2448
  %3367 = lshr i32 %3359, 31
  %3368 = trunc i32 %3367 to i8
  store i8 %3368, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %3369 = xor i1 %3365, true
  %3370 = icmp eq i8 %3368, 0
  %3371 = and i1 %3370, %3369
  %.v69 = select i1 %3371, i64 93, i64 10
  %3372 = add i64 %3354, %.v69
  store i64 %3372, i64* %PC, align 8, !tbaa !2428
  br i1 %3371, label %block_400a7a, label %block_400a27

block_4010e7:                                     ; preds = %block_401131, %block_4010e0
  %3373 = phi i64 [ %942, %block_401131 ], [ %.pre46, %block_4010e0 ]
  %3374 = load i64, i64* %RBP, align 8
  %3375 = add i64 %3374, -8
  %3376 = add i64 %3373, 4
  store i64 %3376, i64* %PC, align 8
  %3377 = inttoptr i64 %3375 to i32*
  %3378 = load i32, i32* %3377, align 4
  %3379 = add i32 %3378, -1
  %3380 = icmp eq i32 %3378, 0
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %13, align 1, !tbaa !2432
  %3382 = and i32 %3379, 255
  %3383 = tail call i32 @llvm.ctpop.i32(i32 %3382) #8
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  store i8 %3386, i8* %20, align 1, !tbaa !2446
  %3387 = xor i32 %3378, %3379
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1, !tbaa !2447
  %3391 = icmp eq i32 %3379, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1, !tbaa !2448
  %3393 = lshr i32 %3379, 31
  %3394 = trunc i32 %3393 to i8
  store i8 %3394, i8* %32, align 1, !tbaa !2449
  %3395 = lshr i32 %3378, 31
  %3396 = xor i32 %3393, %3395
  %3397 = add nuw nsw i32 %3396, %3395
  %3398 = icmp eq i32 %3397, 2
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %38, align 1, !tbaa !2450
  %3400 = icmp ne i8 %3394, 0
  %3401 = xor i1 %3400, %3398
  %.demorgan121 = or i1 %3391, %3401
  %.v122 = select i1 %.demorgan121, i64 10, i64 93
  %3402 = add i64 %3373, %.v122
  store i64 %3402, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan121, label %block_4010f1, label %block_401144

block_400e1b:                                     ; preds = %block_400de2
  %3403 = add i64 %1715, -8
  %3404 = add i64 %1732, 8
  store i64 %3404, i64* %PC, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  %3407 = add i32 %3406, 1
  %3408 = zext i32 %3407 to i64
  store i64 %3408, i64* %RAX, align 8, !tbaa !2428
  %3409 = icmp eq i32 %3406, -1
  %3410 = icmp eq i32 %3407, 0
  %3411 = or i1 %3409, %3410
  %3412 = zext i1 %3411 to i8
  store i8 %3412, i8* %13, align 1, !tbaa !2432
  %3413 = and i32 %3407, 255
  %3414 = tail call i32 @llvm.ctpop.i32(i32 %3413) #8
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  store i8 %3417, i8* %20, align 1, !tbaa !2446
  %3418 = xor i32 %3406, %3407
  %3419 = lshr i32 %3418, 4
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  store i8 %3421, i8* %26, align 1, !tbaa !2447
  %3422 = zext i1 %3410 to i8
  store i8 %3422, i8* %29, align 1, !tbaa !2448
  %3423 = lshr i32 %3407, 31
  %3424 = trunc i32 %3423 to i8
  store i8 %3424, i8* %32, align 1, !tbaa !2449
  %3425 = lshr i32 %3406, 31
  %3426 = xor i32 %3423, %3425
  %3427 = add nuw nsw i32 %3426, %3423
  %3428 = icmp eq i32 %3427, 2
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %38, align 1, !tbaa !2450
  %3430 = add i64 %1732, 14
  store i64 %3430, i64* %PC, align 8
  store i32 %3407, i32* %3405, align 4
  %3431 = load i64, i64* %PC, align 8
  %3432 = add i64 %3431, -88
  store i64 %3432, i64* %PC, align 8, !tbaa !2428
  br label %block_400dd1

block_4010f1:                                     ; preds = %block_4010e7
  %3433 = add i64 %3374, -12
  %3434 = add i64 %3402, 7
  store i64 %3434, i64* %PC, align 8
  %3435 = inttoptr i64 %3433 to i32*
  store i32 0, i32* %3435, align 4
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_4010f8

block_400b59:                                     ; preds = %block_400ba3, %block_400b52
  %3436 = phi i64 [ %2423, %block_400ba3 ], [ %.pre19, %block_400b52 ]
  %3437 = load i64, i64* %RBP, align 8
  %3438 = add i64 %3437, -8
  %3439 = add i64 %3436, 4
  store i64 %3439, i64* %PC, align 8
  %3440 = inttoptr i64 %3438 to i32*
  %3441 = load i32, i32* %3440, align 4
  %3442 = add i32 %3441, -3
  %3443 = icmp ult i32 %3441, 3
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %13, align 1, !tbaa !2432
  %3445 = and i32 %3442, 255
  %3446 = tail call i32 @llvm.ctpop.i32(i32 %3445) #8
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  %3449 = xor i8 %3448, 1
  store i8 %3449, i8* %20, align 1, !tbaa !2446
  %3450 = xor i32 %3441, %3442
  %3451 = lshr i32 %3450, 4
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  store i8 %3453, i8* %26, align 1, !tbaa !2447
  %3454 = icmp eq i32 %3442, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %29, align 1, !tbaa !2448
  %3456 = lshr i32 %3442, 31
  %3457 = trunc i32 %3456 to i8
  store i8 %3457, i8* %32, align 1, !tbaa !2449
  %3458 = lshr i32 %3441, 31
  %3459 = xor i32 %3456, %3458
  %3460 = add nuw nsw i32 %3459, %3458
  %3461 = icmp eq i32 %3460, 2
  %3462 = zext i1 %3461 to i8
  store i8 %3462, i8* %38, align 1, !tbaa !2450
  %3463 = icmp ne i8 %3457, 0
  %3464 = xor i1 %3463, %3461
  %.demorgan79 = or i1 %3454, %3464
  %.v80 = select i1 %.demorgan79, i64 10, i64 93
  %3465 = add i64 %3436, %.v80
  store i64 %3465, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan79, label %block_400b63, label %block_400bb6

block_400a16:                                     ; preds = %block_400a0c
  %3466 = add i64 %3600, -8
  %3467 = add i64 %3628, 7
  store i64 %3467, i64* %PC, align 8
  %3468 = inttoptr i64 %3466 to i32*
  store i32 0, i32* %3468, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400a1d

block_400c12:                                     ; preds = %block_400c08
  %3469 = add i64 %3661, -4
  %3470 = add i64 %3689, 3
  store i64 %3470, i64* %PC, align 8
  %3471 = inttoptr i64 %3469 to i32*
  %3472 = load i32, i32* %3471, align 4
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %RAX, align 8, !tbaa !2428
  %3474 = add i64 %3661, -8
  %3475 = add i64 %3689, 6
  store i64 %3475, i64* %PC, align 8
  %3476 = inttoptr i64 %3474 to i32*
  %3477 = load i32, i32* %3476, align 4
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RCX, align 8, !tbaa !2428
  %3479 = add i64 %3689, 9
  store i64 %3479, i64* %PC, align 8
  %3480 = load i32, i32* %3664, align 4
  %3481 = shl i32 %3480, 3
  %3482 = zext i32 %3481 to i64
  store i64 %3482, i64* %RDX, align 8, !tbaa !2428
  %3483 = add i32 %3481, %3477
  %3484 = shl i32 %3483, 3
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RCX, align 8, !tbaa !2428
  %3486 = lshr i32 %3483, 28
  %3487 = and i32 %3486, 1
  %3488 = load i64, i64* %RAX, align 8
  %3489 = trunc i64 %3488 to i32
  %3490 = add i32 %3484, %3489
  %3491 = zext i32 %3490 to i64
  store i64 %3491, i64* %RAX, align 8, !tbaa !2428
  %3492 = icmp ult i32 %3490, %3489
  %3493 = icmp ult i32 %3490, %3484
  %3494 = or i1 %3492, %3493
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %13, align 1, !tbaa !2432
  %3496 = and i32 %3490, 255
  %3497 = tail call i32 @llvm.ctpop.i32(i32 %3496) #8
  %3498 = trunc i32 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = xor i8 %3499, 1
  store i8 %3500, i8* %20, align 1, !tbaa !2446
  %3501 = xor i64 %3485, %3488
  %3502 = trunc i64 %3501 to i32
  %3503 = xor i32 %3502, %3490
  %3504 = lshr i32 %3503, 4
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  store i8 %3506, i8* %26, align 1, !tbaa !2447
  %3507 = icmp eq i32 %3490, 0
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %29, align 1, !tbaa !2448
  %3509 = lshr i32 %3490, 31
  %3510 = trunc i32 %3509 to i8
  store i8 %3510, i8* %32, align 1, !tbaa !2449
  %3511 = lshr i32 %3489, 31
  %3512 = xor i32 %3509, %3511
  %3513 = xor i32 %3509, %3487
  %3514 = add nuw nsw i32 %3512, %3513
  %3515 = icmp eq i32 %3514, 2
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %38, align 1, !tbaa !2450
  %3517 = sext i32 %3490 to i64
  store i64 %3517, i64* %RSI, align 8, !tbaa !2428
  %3518 = shl nsw i64 %3517, 2
  %3519 = add i64 %3518, add (i64 ptrtoint (%p_type* @p to i64), i64 8192)
  %3520 = add i64 %3689, 33
  store i64 %3520, i64* %PC, align 8
  %3521 = inttoptr i64 %3519 to i32*
  store i32 1, i32* %3521, align 4
  %3522 = load i64, i64* %RBP, align 8
  %3523 = add i64 %3522, -12
  %3524 = load i64, i64* %PC, align 8
  %3525 = add i64 %3524, 3
  store i64 %3525, i64* %PC, align 8
  %3526 = inttoptr i64 %3523 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = add i32 %3527, 1
  %3529 = zext i32 %3528 to i64
  store i64 %3529, i64* %RAX, align 8, !tbaa !2428
  %3530 = icmp eq i32 %3527, -1
  %3531 = icmp eq i32 %3528, 0
  %3532 = or i1 %3530, %3531
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %13, align 1, !tbaa !2432
  %3534 = and i32 %3528, 255
  %3535 = tail call i32 @llvm.ctpop.i32(i32 %3534) #8
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  %3538 = xor i8 %3537, 1
  store i8 %3538, i8* %20, align 1, !tbaa !2446
  %3539 = xor i32 %3527, %3528
  %3540 = lshr i32 %3539, 4
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  store i8 %3542, i8* %26, align 1, !tbaa !2447
  %3543 = zext i1 %3531 to i8
  store i8 %3543, i8* %29, align 1, !tbaa !2448
  %3544 = lshr i32 %3528, 31
  %3545 = trunc i32 %3544 to i8
  store i8 %3545, i8* %32, align 1, !tbaa !2449
  %3546 = lshr i32 %3527, 31
  %3547 = xor i32 %3544, %3546
  %3548 = add nuw nsw i32 %3547, %3544
  %3549 = icmp eq i32 %3548, 2
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %38, align 1, !tbaa !2450
  %3551 = add i64 %3524, 9
  store i64 %3551, i64* %PC, align 8
  store i32 %3528, i32* %3526, align 4
  %3552 = load i64, i64* %PC, align 8
  %3553 = add i64 %3552, -52
  store i64 %3553, i64* %PC, align 8, !tbaa !2428
  br label %block_400c08

block_400c8e:                                     ; preds = %block_400c84
  %3554 = add i64 %2178, -8
  %3555 = add i64 %2195, 7
  store i64 %3555, i64* %PC, align 8
  %3556 = inttoptr i64 %3554 to i32*
  store i32 0, i32* %3556, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400c95

block_40085c:                                     ; preds = %block_40084f
  %3557 = add i64 %2846, 4
  store i64 %3557, i64* %PC, align 8
  %3558 = load i32, i32* %2820, align 4
  %3559 = sext i32 %3558 to i64
  store i64 %3559, i64* %RAX, align 8, !tbaa !2428
  %3560 = shl nsw i64 %3559, 2
  %3561 = add i64 %3560, ptrtoint (%puzzl_type* @puzzl to i64)
  %3562 = add i64 %2846, 15
  store i64 %3562, i64* %PC, align 8
  %3563 = inttoptr i64 %3561 to i32*
  store i32 1, i32* %3563, align 4
  %3564 = load i64, i64* %RBP, align 8
  %3565 = add i64 %3564, -16
  %3566 = load i64, i64* %PC, align 8
  %3567 = add i64 %3566, 3
  store i64 %3567, i64* %PC, align 8
  %3568 = inttoptr i64 %3565 to i32*
  %3569 = load i32, i32* %3568, align 4
  %3570 = add i32 %3569, 1
  %3571 = zext i32 %3570 to i64
  store i64 %3571, i64* %RAX, align 8, !tbaa !2428
  %3572 = icmp eq i32 %3569, -1
  %3573 = icmp eq i32 %3570, 0
  %3574 = or i1 %3572, %3573
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %13, align 1, !tbaa !2432
  %3576 = and i32 %3570, 255
  %3577 = tail call i32 @llvm.ctpop.i32(i32 %3576) #8
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %20, align 1, !tbaa !2446
  %3581 = xor i32 %3569, %3570
  %3582 = lshr i32 %3581, 4
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  store i8 %3584, i8* %26, align 1, !tbaa !2447
  %3585 = zext i1 %3573 to i8
  store i8 %3585, i8* %29, align 1, !tbaa !2448
  %3586 = lshr i32 %3570, 31
  %3587 = trunc i32 %3586 to i8
  store i8 %3587, i8* %32, align 1, !tbaa !2449
  %3588 = lshr i32 %3569, 31
  %3589 = xor i32 %3586, %3588
  %3590 = add nuw nsw i32 %3589, %3586
  %3591 = icmp eq i32 %3590, 2
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %38, align 1, !tbaa !2450
  %3593 = add i64 %3566, 9
  store i64 %3593, i64* %PC, align 8
  store i32 %3570, i32* %3568, align 4
  %3594 = load i64, i64* %PC, align 8
  %3595 = add i64 %3594, -37
  store i64 %3595, i64* %PC, align 8, !tbaa !2428
  br label %block_40084f

block_400fa4:                                     ; preds = %block_400f9a
  %3596 = add i64 %381, -8
  %3597 = add i64 %409, 7
  store i64 %3597, i64* %PC, align 8
  %3598 = inttoptr i64 %3596 to i32*
  store i32 0, i32* %3598, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400fab

block_400a0c:                                     ; preds = %block_4009ef, %block_400a7a
  %3599 = phi i64 [ %.pre12, %block_4009ef ], [ %2390, %block_400a7a ]
  %3600 = load i64, i64* %RBP, align 8
  %3601 = add i64 %3600, -4
  %3602 = add i64 %3599, 4
  store i64 %3602, i64* %PC, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = add i32 %3604, -1
  %3606 = icmp eq i32 %3604, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %13, align 1, !tbaa !2432
  %3608 = and i32 %3605, 255
  %3609 = tail call i32 @llvm.ctpop.i32(i32 %3608) #8
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  %3612 = xor i8 %3611, 1
  store i8 %3612, i8* %20, align 1, !tbaa !2446
  %3613 = xor i32 %3604, %3605
  %3614 = lshr i32 %3613, 4
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  store i8 %3616, i8* %26, align 1, !tbaa !2447
  %3617 = icmp eq i32 %3605, 0
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %29, align 1, !tbaa !2448
  %3619 = lshr i32 %3605, 31
  %3620 = trunc i32 %3619 to i8
  store i8 %3620, i8* %32, align 1, !tbaa !2449
  %3621 = lshr i32 %3604, 31
  %3622 = xor i32 %3619, %3621
  %3623 = add nuw nsw i32 %3622, %3621
  %3624 = icmp eq i32 %3623, 2
  %3625 = zext i1 %3624 to i8
  store i8 %3625, i8* %38, align 1, !tbaa !2450
  %3626 = icmp ne i8 %3620, 0
  %3627 = xor i1 %3626, %3624
  %.demorgan67 = or i1 %3617, %3627
  %.v68 = select i1 %.demorgan67, i64 10, i64 129
  %3628 = add i64 %3599, %.v68
  store i64 %3628, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan67, label %block_400a16, label %block_400a8d

block_400f57:                                     ; preds = %block_400f1e
  %3629 = add i64 %1197, -8
  %3630 = add i64 %1214, 8
  store i64 %3630, i64* %PC, align 8
  %3631 = inttoptr i64 %3629 to i32*
  %3632 = load i32, i32* %3631, align 4
  %3633 = add i32 %3632, 1
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %RAX, align 8, !tbaa !2428
  %3635 = icmp eq i32 %3632, -1
  %3636 = icmp eq i32 %3633, 0
  %3637 = or i1 %3635, %3636
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %13, align 1, !tbaa !2432
  %3639 = and i32 %3633, 255
  %3640 = tail call i32 @llvm.ctpop.i32(i32 %3639) #8
  %3641 = trunc i32 %3640 to i8
  %3642 = and i8 %3641, 1
  %3643 = xor i8 %3642, 1
  store i8 %3643, i8* %20, align 1, !tbaa !2446
  %3644 = xor i32 %3632, %3633
  %3645 = lshr i32 %3644, 4
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  store i8 %3647, i8* %26, align 1, !tbaa !2447
  %3648 = zext i1 %3636 to i8
  store i8 %3648, i8* %29, align 1, !tbaa !2448
  %3649 = lshr i32 %3633, 31
  %3650 = trunc i32 %3649 to i8
  store i8 %3650, i8* %32, align 1, !tbaa !2449
  %3651 = lshr i32 %3632, 31
  %3652 = xor i32 %3649, %3651
  %3653 = add nuw nsw i32 %3652, %3649
  %3654 = icmp eq i32 %3653, 2
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %38, align 1, !tbaa !2450
  %3656 = add i64 %1214, 14
  store i64 %3656, i64* %PC, align 8
  store i32 %3633, i32* %3631, align 4
  %3657 = load i64, i64* %PC, align 8
  %3658 = add i64 %3657, -88
  store i64 %3658, i64* %PC, align 8, !tbaa !2428
  br label %block_400f0d

block_4009ef:                                     ; preds = %block_40096e
  store i32 0, i32* bitcast (%class_type* @class to i32*), align 16
  store i32 11, i32* bitcast (%piecemax_type* @piecemax to i32*), align 16
  %3659 = add i64 %1192, 29
  store i64 %3659, i64* %PC, align 8
  store i32 0, i32* %1167, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400a0c

block_400c08:                                     ; preds = %block_400c01, %block_400c12
  %3660 = phi i64 [ %.pre23, %block_400c01 ], [ %3553, %block_400c12 ]
  %3661 = load i64, i64* %RBP, align 8
  %3662 = add i64 %3661, -12
  %3663 = add i64 %3660, 4
  store i64 %3663, i64* %PC, align 8
  %3664 = inttoptr i64 %3662 to i32*
  %3665 = load i32, i32* %3664, align 4
  %3666 = add i32 %3665, -1
  %3667 = icmp eq i32 %3665, 0
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %13, align 1, !tbaa !2432
  %3669 = and i32 %3666, 255
  %3670 = tail call i32 @llvm.ctpop.i32(i32 %3669) #8
  %3671 = trunc i32 %3670 to i8
  %3672 = and i8 %3671, 1
  %3673 = xor i8 %3672, 1
  store i8 %3673, i8* %20, align 1, !tbaa !2446
  %3674 = xor i32 %3665, %3666
  %3675 = lshr i32 %3674, 4
  %3676 = trunc i32 %3675 to i8
  %3677 = and i8 %3676, 1
  store i8 %3677, i8* %26, align 1, !tbaa !2447
  %3678 = icmp eq i32 %3666, 0
  %3679 = zext i1 %3678 to i8
  store i8 %3679, i8* %29, align 1, !tbaa !2448
  %3680 = lshr i32 %3666, 31
  %3681 = trunc i32 %3680 to i8
  store i8 %3681, i8* %32, align 1, !tbaa !2449
  %3682 = lshr i32 %3665, 31
  %3683 = xor i32 %3680, %3682
  %3684 = add nuw nsw i32 %3683, %3682
  %3685 = icmp eq i32 %3684, 2
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %38, align 1, !tbaa !2450
  %3687 = icmp ne i8 %3681, 0
  %3688 = xor i1 %3687, %3685
  %.demorgan85 = or i1 %3678, %3688
  %.v86 = select i1 %.demorgan85, i64 10, i64 57
  %3689 = add i64 %3660, %.v86
  store i64 %3689, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan85, label %block_400c12, label %block_400c41

block_400c01:                                     ; preds = %block_400bf7
  %3690 = add i64 %57, -12
  %3691 = add i64 %74, 7
  store i64 %3691, i64* %PC, align 8
  %3692 = inttoptr i64 %3690 to i32*
  store i32 0, i32* %3692, align 4
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
  %28 = load i64, i64* %5, align 8, !tbaa !2428
  %29 = add i64 %28, 8
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %RBP, align 8, !tbaa !2428
  store i64 %29, i64* %5, align 8, !tbaa !2428
  %32 = add i64 %9, 49
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %29 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %28, 16
  store i64 %35, i64* %5, align 8, !tbaa !2428
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
  %.pre-phi = phi i64* [ %RSP, %block_4003c8.block_4003da_crit_edge ], [ %RSP, %block_4003d8 ]
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
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
  %38 = load i64, i64* %5, align 8, !tbaa !2428
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RBP, align 8, !tbaa !2428
  store i64 %39, i64* %5, align 8, !tbaa !2428
  %42 = add i64 %36, 2
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
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
