; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400ef0__rodata_type = type <{ [40 x i8], [2 x i8], [15 x i8] }>
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
@seg_400ef0__rodata = internal constant %seg_400ef0__rodata_type <{ [40 x i8] c"\01\00\02\00\00\00\80?\00\00\00F\00\00\80@\DB\0FI@\00\00\80\BF\00\00\00@\00\00\80=\00\00 A\00\00\A0A", [2 x i8] c"\0A\00", [15 x i8] c"  %15.3f%15.3f\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400500_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004d0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer
@fixed = local_unnamed_addr global %fixed_type zeroinitializer
@imb = local_unnamed_addr global %imb_type zeroinitializer
@n = local_unnamed_addr global %n_type zeroinitializer
@p = local_unnamed_addr global %p_type zeroinitializer
@imr = local_unnamed_addr global %imr_type zeroinitializer
@rmr = local_unnamed_addr global %rmr_type zeroinitializer
@z = global %z_type zeroinitializer
@puzzl = local_unnamed_addr global %puzzl_type zeroinitializer
@rmb = local_unnamed_addr global %rmb_type zeroinitializer
@zi = global %zi_type zeroinitializer
@cellspace = local_unnamed_addr global %cellspace_type zeroinitializer
@seed = local_unnamed_addr global %seed_type zeroinitializer
@movesdone = local_unnamed_addr global %movesdone_type zeroinitializer
@piecemax = local_unnamed_addr global %piecemax_type zeroinitializer
@sortlist = local_unnamed_addr global %sortlist_type zeroinitializer
@value = local_unnamed_addr global %value_type zeroinitializer
@top = local_unnamed_addr global %top_type zeroinitializer
@floated = local_unnamed_addr global %floated_type zeroinitializer
@pctr = local_unnamed_addr global %pctr_type zeroinitializer
@zr = global %zr_type zeroinitializer
@ima = local_unnamed_addr global %ima_type zeroinitializer
@littlest = local_unnamed_addr global %littlest_type zeroinitializer
@e = global %e_type zeroinitializer
@freelist = local_unnamed_addr global %freelist_type zeroinitializer
@w = global %w_type zeroinitializer
@permarray = local_unnamed_addr global %permarray_type zeroinitializer
@biggest = local_unnamed_addr global %biggest_type zeroinitializer
@rma = local_unnamed_addr global %rma_type zeroinitializer
@kount = local_unnamed_addr global %kount_type zeroinitializer
@tree = local_unnamed_addr global %tree_type zeroinitializer
@stack = local_unnamed_addr global %stack_type zeroinitializer
@piececount = local_unnamed_addr global %piececount_type zeroinitializer
@class = local_unnamed_addr global %class_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004d0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ee0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400e70___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Exptab_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Cos_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Oscar_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Initrand_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Printcomplex_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Uniform11_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Rand_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Fft_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Min0_wrapper
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

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a30_Fft(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a30:
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
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14, align 8
  store i64 %13, i64* %11, align 8, !tbaa !2428
  %15 = load i64, i64* %PC, align 8
  store i64 %13, i64* %RBP, align 8, !tbaa !2428
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %16 = add i64 %12, -12
  %17 = load i32, i32* %EDI, align 4
  %18 = add i64 %15, 11
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %RBP, align 8
  %21 = add i64 %20, -16
  %22 = load i64, i64* %RSI, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -24
  %28 = load i64, i64* %RDX, align 8
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -32
  %34 = load i64, i64* %RCX, align 8
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -36
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 5
  store i64 %41, i64* %PC, align 8
  %42 = bitcast [32 x %union.VectorReg]* %6 to <2 x float>*
  %43 = load <2 x float>, <2 x float>* %42, align 1
  %44 = extractelement <2 x float> %43, i32 0
  %45 = inttoptr i64 %39 to float*
  store float %44, float* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RDI, align 8, !tbaa !2428
  %53 = add i64 %46, -64
  %54 = load i32, i32* %EAX, align 4
  %55 = add i64 %48, 6
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %EDI, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %PC, align 8
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %61 = sext i32 %57 to i64
  %62 = lshr i64 %61, 32
  store i64 %62, i64* %60, align 8, !tbaa !2428
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -64
  %65 = add i64 %59, 6
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RDI, align 8, !tbaa !2428
  %69 = add i64 %59, 8
  store i64 %69, i64* %PC, align 8
  %70 = sext i32 %67 to i64
  %71 = shl nuw i64 %62, 32
  %72 = or i64 %71, %58
  %73 = sdiv i64 %72, %70
  %74 = shl i64 %73, 32
  %75 = ashr exact i64 %74, 32
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %block_400a30
  %78 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %69, %struct.Memory* %2) #12
  %.pre = load i64, i64* %RBP, align 8
  %.pre28 = load i32, i32* %EAX, align 4
  %.pre29 = load i64, i64* %PC, align 8
  %.pre38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:79:                                     ; preds = %block_400a30
  %80 = srem i64 %72, %70
  %81 = and i64 %73, 4294967295
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = and i64 %80, 4294967295
  store i64 %82, i64* %RDX, align 8, !tbaa !2428
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %83, align 1, !tbaa !2432
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %84, align 1, !tbaa !2446
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %85, align 1, !tbaa !2447
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %86, align 1, !tbaa !2448
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %87, align 1, !tbaa !2449
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %88, align 1, !tbaa !2450
  %89 = trunc i64 %73 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %79, %77
  %.pre-phi48 = phi i8* [ %88, %79 ], [ %.pre47, %77 ]
  %.pre-phi46 = phi i8* [ %87, %79 ], [ %.pre45, %77 ]
  %.pre-phi44 = phi i8* [ %86, %79 ], [ %.pre43, %77 ]
  %.pre-phi42 = phi i8* [ %85, %79 ], [ %.pre41, %77 ]
  %.pre-phi40 = phi i8* [ %84, %79 ], [ %.pre39, %77 ]
  %.pre-phi = phi i8* [ %83, %79 ], [ %.pre38, %77 ]
  %90 = phi i64 [ %69, %79 ], [ %.pre29, %77 ]
  %91 = phi i32 [ %89, %79 ], [ %.pre28, %77 ]
  %92 = phi i64 [ %63, %79 ], [ %.pre, %77 ]
  %93 = phi %struct.Memory* [ %2, %79 ], [ %78, %77 ]
  %94 = add i64 %92, -56
  %95 = add i64 %90, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 %91, i32* %96, align 4
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -52
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 1, i32* %101, align 4
  %102 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %103 = bitcast [32 x %union.VectorReg]* %6 to float*
  %104 = bitcast [32 x %union.VectorReg]* %6 to i32*
  %105 = getelementptr inbounds i8, i8* %102, i64 4
  %106 = bitcast i8* %105 to float*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %108 = bitcast i64* %107 to float*
  %109 = getelementptr inbounds i8, i8* %102, i64 12
  %110 = bitcast i8* %109 to float*
  %111 = bitcast i64* %107 to <2 x i32>*
  %112 = bitcast i8* %105 to i32*
  %113 = bitcast i64* %107 to i32*
  %114 = bitcast i8* %109 to i32*
  %115 = bitcast %union.VectorReg* %7 to i8*
  %116 = bitcast %union.VectorReg* %7 to float*
  %117 = bitcast %union.VectorReg* %7 to i32*
  %118 = getelementptr inbounds i8, i8* %115, i64 4
  %119 = bitcast i8* %118 to float*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %121 = bitcast i64* %120 to float*
  %122 = getelementptr inbounds i8, i8* %115, i64 12
  %123 = bitcast i8* %122 to float*
  %124 = bitcast %union.VectorReg* %7 to <2 x float>*
  %125 = bitcast i64* %120 to <2 x i32>*
  %126 = bitcast i8* %118 to i32*
  %127 = bitcast i64* %120 to i32*
  %128 = bitcast i8* %122 to i32*
  %129 = bitcast %union.VectorReg* %8 to i8*
  %130 = bitcast %union.VectorReg* %8 to float*
  %131 = bitcast %union.VectorReg* %8 to i32*
  %132 = getelementptr inbounds i8, i8* %129, i64 4
  %133 = bitcast i8* %132 to float*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %135 = bitcast i64* %134 to float*
  %136 = getelementptr inbounds i8, i8* %129, i64 12
  %137 = bitcast i8* %136 to float*
  %138 = bitcast %union.VectorReg* %8 to <2 x float>*
  %139 = bitcast i64* %134 to <2 x i32>*
  %140 = bitcast i8* %132 to i32*
  %141 = bitcast i64* %134 to i32*
  %142 = bitcast i8* %136 to i32*
  %.pre30 = load i64, i64* %RBP, align 8
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400a65

block_400bff:                                     ; preds = %block_400a7e
  %143 = add i64 %1227, 3
  store i64 %143, i64* %PC, align 8
  %144 = load i32, i32* %1198, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = add i64 %1189, -48
  %147 = add i64 %1227, 6
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  store i32 %144, i32* %148, align 4
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -48
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = add i64 %149, -52
  %157 = add i64 %151, 6
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, %154
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = icmp ult i32 %160, %154
  %163 = icmp ult i32 %160, %159
  %164 = or i1 %162, %163
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %.pre-phi, align 1, !tbaa !2432
  %166 = and i32 %160, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #9
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %.pre-phi40, align 1, !tbaa !2446
  %171 = xor i32 %159, %154
  %172 = xor i32 %171, %160
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %.pre-phi42, align 1, !tbaa !2447
  %176 = icmp eq i32 %160, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %.pre-phi44, align 1, !tbaa !2448
  %178 = lshr i32 %160, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %.pre-phi46, align 1, !tbaa !2449
  %180 = lshr i32 %154, 31
  %181 = lshr i32 %159, 31
  %182 = xor i32 %178, %180
  %183 = xor i32 %178, %181
  %184 = add nuw nsw i32 %182, %183
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %.pre-phi48, align 1, !tbaa !2450
  %187 = add i64 %149, -44
  %188 = add i64 %151, 9
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 %160, i32* %189, align 4
  %190 = load i64, i64* %RBP, align 8
  %191 = add i64 %190, -44
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = add i64 %190, -56
  %198 = add i64 %192, 6
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = sub i32 %195, %200
  %202 = icmp ult i32 %195, %200
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %.pre-phi, align 1, !tbaa !2432
  %204 = and i32 %201, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204) #9
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %.pre-phi40, align 1, !tbaa !2446
  %209 = xor i32 %200, %195
  %210 = xor i32 %209, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %.pre-phi42, align 1, !tbaa !2447
  %214 = icmp eq i32 %201, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %.pre-phi44, align 1, !tbaa !2448
  %216 = lshr i32 %201, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %.pre-phi46, align 1, !tbaa !2449
  %218 = lshr i32 %195, 31
  %219 = lshr i32 %200, 31
  %220 = xor i32 %219, %218
  %221 = xor i32 %216, %218
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %.pre-phi48, align 1, !tbaa !2450
  %225 = icmp ne i8 %217, 0
  %226 = xor i1 %225, %223
  %227 = or i1 %214, %226
  %.v49 = select i1 %227, i64 -405, i64 12
  %228 = add i64 %192, %.v49
  store i64 %228, i64* %PC, align 8, !tbaa !2428
  br i1 %227, label %block_400a79, label %block_400c1a

block_400a79:                                     ; preds = %block_400a65, %block_400bff
  %.pre33 = phi i64 [ %.pre33.pre, %block_400a65 ], [ %190, %block_400bff ]
  %229 = phi i64 [ %.pre32, %block_400a65 ], [ %228, %block_400bff ]
  %230 = add i64 %229, 5
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7e

block_400c76:                                     ; preds = %block_400c6a
  %231 = add i64 %1315, -36
  %232 = add i64 %1351, 5
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  store float 0.000000e+00, float* %108, align 1, !tbaa !2451
  store float 0.000000e+00, float* %110, align 1, !tbaa !2451
  %235 = add i64 %1315, -16
  %236 = add i64 %1351, 9
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = add i64 %1351, 13
  store i64 %239, i64* %PC, align 8
  %240 = load i32, i32* %1318, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %RCX, align 8, !tbaa !2428
  %242 = shl nsw i64 %241, 3
  %243 = add i64 %242, %238
  %244 = add i64 %1351, 18
  store i64 %244, i64* %PC, align 8
  %245 = load <2 x float>, <2 x float>* %42, align 1
  %246 = load <2 x i32>, <2 x i32>* %111, align 1
  %247 = inttoptr i64 %243 to float*
  %248 = load float, float* %247, align 4
  %249 = extractelement <2 x float> %245, i32 0
  %250 = fmul float %249, %248
  store float %250, float* %103, align 1, !tbaa !2451
  %251 = bitcast <2 x float> %245 to <2 x i32>
  %252 = extractelement <2 x i32> %251, i32 1
  store i32 %252, i32* %112, align 1, !tbaa !2451
  %253 = extractelement <2 x i32> %246, i32 0
  store i32 %253, i32* %113, align 1, !tbaa !2451
  %254 = extractelement <2 x i32> %246, i32 1
  store i32 %254, i32* %114, align 1, !tbaa !2451
  %255 = add i64 %1351, 22
  store i64 %255, i64* %PC, align 8
  %256 = load i64, i64* %237, align 8
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = add i64 %1351, 26
  store i64 %257, i64* %PC, align 8
  %258 = load i32, i32* %1318, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX, align 8, !tbaa !2428
  %260 = shl nsw i64 %259, 3
  %261 = add i64 %260, %256
  %262 = add i64 %1351, 31
  store i64 %262, i64* %PC, align 8
  %263 = load <2 x float>, <2 x float>* %42, align 1
  %264 = extractelement <2 x float> %263, i32 0
  %265 = inttoptr i64 %261 to float*
  store float %264, float* %265, align 4
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -36
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  %272 = load i64, i64* %1375, align 1
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %EDX, align 1, !tbaa !2453
  store i32 0, i32* %1377, align 1, !tbaa !2453
  %274 = load i64, i64* %RDX, align 8
  %275 = xor i64 %274, -2147483648
  %276 = trunc i64 %275 to i32
  %277 = and i64 %275, 4294967295
  store i64 %277, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %.pre-phi, align 1, !tbaa !2432
  %278 = and i32 %276, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278) #9
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %.pre-phi40, align 1, !tbaa !2446
  %283 = icmp eq i32 %276, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %.pre-phi44, align 1, !tbaa !2448
  %285 = lshr i32 %276, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %.pre-phi46, align 1, !tbaa !2449
  store i8 0, i8* %.pre-phi48, align 1, !tbaa !2450
  store i8 0, i8* %.pre-phi42, align 1, !tbaa !2447
  %287 = trunc i64 %275 to i32
  store i32 %287, i32* %104, align 1, !tbaa !2453
  store i32 0, i32* %112, align 1, !tbaa !2453
  store i32 0, i32* %113, align 1, !tbaa !2453
  store i32 0, i32* %114, align 1, !tbaa !2453
  %288 = add i64 %266, -16
  %289 = add i64 %268, 23
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RAX, align 8, !tbaa !2428
  %292 = add i64 %266, -40
  %293 = add i64 %268, 27
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX, align 8, !tbaa !2428
  %297 = shl nsw i64 %296, 3
  %298 = add i64 %291, 4
  %299 = add i64 %298, %297
  %300 = add i64 %268, 33
  store i64 %300, i64* %PC, align 8
  %301 = load <2 x float>, <2 x float>* %42, align 1
  %302 = load <2 x i32>, <2 x i32>* %111, align 1
  %303 = inttoptr i64 %299 to float*
  %304 = load float, float* %303, align 4
  %305 = extractelement <2 x float> %301, i32 0
  %306 = fmul float %305, %304
  store float %306, float* %103, align 1, !tbaa !2451
  %307 = bitcast <2 x float> %301 to <2 x i32>
  %308 = extractelement <2 x i32> %307, i32 1
  store i32 %308, i32* %112, align 1, !tbaa !2451
  %309 = extractelement <2 x i32> %302, i32 0
  store i32 %309, i32* %113, align 1, !tbaa !2451
  %310 = extractelement <2 x i32> %302, i32 1
  store i32 %310, i32* %114, align 1, !tbaa !2451
  %311 = add i64 %268, 37
  store i64 %311, i64* %PC, align 8
  %312 = load i64, i64* %290, align 8
  store i64 %312, i64* %RAX, align 8, !tbaa !2428
  %313 = add i64 %268, 41
  store i64 %313, i64* %PC, align 8
  %314 = load i32, i32* %294, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RCX, align 8, !tbaa !2428
  %316 = shl nsw i64 %315, 3
  %317 = add i64 %312, 4
  %318 = add i64 %317, %316
  %319 = add i64 %268, 47
  store i64 %319, i64* %PC, align 8
  %320 = load <2 x float>, <2 x float>* %42, align 1
  %321 = extractelement <2 x float> %320, i32 0
  %322 = inttoptr i64 %318 to float*
  store float %321, float* %322, align 4
  %323 = load i64, i64* %RBP, align 8
  %324 = add i64 %323, -40
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %324 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, 1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp eq i32 %328, -1
  %332 = icmp eq i32 %329, 0
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %.pre-phi, align 1, !tbaa !2432
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #9
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %.pre-phi40, align 1, !tbaa !2446
  %340 = xor i32 %329, %328
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %.pre-phi42, align 1, !tbaa !2447
  %344 = zext i1 %332 to i8
  store i8 %344, i8* %.pre-phi44, align 1, !tbaa !2448
  %345 = lshr i32 %329, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %.pre-phi46, align 1, !tbaa !2449
  %347 = lshr i32 %328, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %345
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %.pre-phi48, align 1, !tbaa !2450
  %352 = add i64 %325, 9
  store i64 %352, i64* %PC, align 8
  store i32 %329, i32* %327, align 4
  %353 = load i64, i64* %PC, align 8
  %354 = add i64 %353, -99
  store i64 %354, i64* %PC, align 8, !tbaa !2428
  br label %block_400c6a

block_400a7e:                                     ; preds = %block_400a7e, %block_400a79
  %355 = phi i64 [ %1227, %block_400a7e ], [ %230, %block_400a79 ]
  %356 = phi i64 [ %1189, %block_400a7e ], [ %.pre33, %block_400a79 ]
  %357 = add i64 %356, -16
  %358 = add i64 %355, 4
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RAX, align 8, !tbaa !2428
  %361 = add i64 %356, -40
  %362 = add i64 %355, 8
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RCX, align 8, !tbaa !2428
  %366 = shl nsw i64 %365, 3
  %367 = add i64 %366, %360
  %368 = add i64 %355, 13
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  store float 0.000000e+00, float* %108, align 1, !tbaa !2451
  store float 0.000000e+00, float* %110, align 1, !tbaa !2451
  %371 = add i64 %355, 17
  store i64 %371, i64* %PC, align 8
  %372 = load i64, i64* %359, align 8
  store i64 %372, i64* %RAX, align 8, !tbaa !2428
  %373 = add i64 %356, -56
  %374 = add i64 %355, 20
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RDX, align 8, !tbaa !2428
  %378 = add i64 %355, 23
  store i64 %378, i64* %PC, align 8
  %379 = load i32, i32* %363, align 4
  %380 = add i32 %379, %376
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RDX, align 8, !tbaa !2428
  %382 = icmp ult i32 %380, %376
  %383 = icmp ult i32 %380, %379
  %384 = or i1 %382, %383
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %.pre-phi, align 1, !tbaa !2432
  %386 = and i32 %380, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386) #9
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %.pre-phi40, align 1, !tbaa !2446
  %391 = xor i32 %379, %376
  %392 = xor i32 %391, %380
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %.pre-phi42, align 1, !tbaa !2447
  %396 = icmp eq i32 %380, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %.pre-phi44, align 1, !tbaa !2448
  %398 = lshr i32 %380, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %.pre-phi46, align 1, !tbaa !2449
  %400 = lshr i32 %376, 31
  %401 = lshr i32 %379, 31
  %402 = xor i32 %398, %400
  %403 = xor i32 %398, %401
  %404 = add nuw nsw i32 %402, %403
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %.pre-phi48, align 1, !tbaa !2450
  %407 = sext i32 %380 to i64
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = shl nsw i64 %407, 3
  %409 = add i64 %372, %408
  %410 = add i64 %355, 31
  store i64 %410, i64* %PC, align 8
  %411 = load <2 x float>, <2 x float>* %42, align 1
  %412 = load <2 x i32>, <2 x i32>* %111, align 1
  %413 = inttoptr i64 %409 to float*
  %414 = load float, float* %413, align 4
  %415 = extractelement <2 x float> %411, i32 0
  %416 = fadd float %415, %414
  store float %416, float* %103, align 1, !tbaa !2451
  %417 = bitcast <2 x float> %411 to <2 x i32>
  %418 = extractelement <2 x i32> %417, i32 1
  store i32 %418, i32* %112, align 1, !tbaa !2451
  %419 = extractelement <2 x i32> %412, i32 0
  store i32 %419, i32* %113, align 1, !tbaa !2451
  %420 = extractelement <2 x i32> %412, i32 1
  store i32 %420, i32* %114, align 1, !tbaa !2451
  %421 = add i64 %356, -24
  %422 = add i64 %355, 35
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i64*
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %RAX, align 8, !tbaa !2428
  %425 = load i64, i64* %RBP, align 8
  %426 = add i64 %425, -40
  %427 = add i64 %355, 38
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RDX, align 8, !tbaa !2428
  %431 = add i64 %425, -48
  %432 = add i64 %355, 41
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %434, %429
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RDX, align 8, !tbaa !2428
  %437 = icmp ult i32 %435, %429
  %438 = icmp ult i32 %435, %434
  %439 = or i1 %437, %438
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %.pre-phi, align 1, !tbaa !2432
  %441 = and i32 %435, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #9
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %.pre-phi40, align 1, !tbaa !2446
  %446 = xor i32 %434, %429
  %447 = xor i32 %446, %435
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %.pre-phi42, align 1, !tbaa !2447
  %451 = icmp eq i32 %435, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %.pre-phi44, align 1, !tbaa !2448
  %453 = lshr i32 %435, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %.pre-phi46, align 1, !tbaa !2449
  %455 = lshr i32 %429, 31
  %456 = lshr i32 %434, 31
  %457 = xor i32 %453, %455
  %458 = xor i32 %453, %456
  %459 = add nuw nsw i32 %457, %458
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %.pre-phi48, align 1, !tbaa !2450
  %462 = sext i32 %435 to i64
  store i64 %462, i64* %RCX, align 8, !tbaa !2428
  %463 = shl nsw i64 %462, 3
  %464 = add i64 %424, %463
  %465 = add i64 %355, 49
  store i64 %465, i64* %PC, align 8
  %466 = load <2 x float>, <2 x float>* %42, align 1
  %467 = extractelement <2 x float> %466, i32 0
  %468 = inttoptr i64 %464 to float*
  store float %467, float* %468, align 4
  %469 = load i64, i64* %RBP, align 8
  %470 = add i64 %469, -16
  %471 = load i64, i64* %PC, align 8
  %472 = add i64 %471, 4
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %470 to i64*
  %474 = load i64, i64* %473, align 8
  store i64 %474, i64* %RAX, align 8, !tbaa !2428
  %475 = add i64 %469, -40
  %476 = add i64 %471, 8
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  store i64 %479, i64* %RCX, align 8, !tbaa !2428
  %480 = shl nsw i64 %479, 3
  %481 = add i64 %474, 4
  %482 = add i64 %481, %480
  %483 = add i64 %471, 14
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  store i32 %485, i32* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  store float 0.000000e+00, float* %108, align 1, !tbaa !2451
  store float 0.000000e+00, float* %110, align 1, !tbaa !2451
  %486 = add i64 %471, 18
  store i64 %486, i64* %PC, align 8
  %487 = load i64, i64* %473, align 8
  store i64 %487, i64* %RAX, align 8, !tbaa !2428
  %488 = add i64 %469, -56
  %489 = add i64 %471, 21
  store i64 %489, i64* %PC, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RDX, align 8, !tbaa !2428
  %493 = add i64 %471, 24
  store i64 %493, i64* %PC, align 8
  %494 = load i32, i32* %477, align 4
  %495 = add i32 %494, %491
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RDX, align 8, !tbaa !2428
  %497 = icmp ult i32 %495, %491
  %498 = icmp ult i32 %495, %494
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %.pre-phi, align 1, !tbaa !2432
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501) #9
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %.pre-phi40, align 1, !tbaa !2446
  %506 = xor i32 %494, %491
  %507 = xor i32 %506, %495
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %.pre-phi42, align 1, !tbaa !2447
  %511 = icmp eq i32 %495, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %.pre-phi44, align 1, !tbaa !2448
  %513 = lshr i32 %495, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %.pre-phi46, align 1, !tbaa !2449
  %515 = lshr i32 %491, 31
  %516 = lshr i32 %494, 31
  %517 = xor i32 %513, %515
  %518 = xor i32 %513, %516
  %519 = add nuw nsw i32 %517, %518
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %.pre-phi48, align 1, !tbaa !2450
  %522 = sext i32 %495 to i64
  store i64 %522, i64* %RCX, align 8, !tbaa !2428
  %523 = shl nsw i64 %522, 3
  %524 = or i64 %523, 4
  %525 = add i64 %524, %487
  %526 = add i64 %471, 33
  store i64 %526, i64* %PC, align 8
  %527 = load <2 x float>, <2 x float>* %42, align 1
  %528 = load <2 x i32>, <2 x i32>* %111, align 1
  %529 = inttoptr i64 %525 to float*
  %530 = load float, float* %529, align 4
  %531 = extractelement <2 x float> %527, i32 0
  %532 = fadd float %531, %530
  store float %532, float* %103, align 1, !tbaa !2451
  %533 = bitcast <2 x float> %527 to <2 x i32>
  %534 = extractelement <2 x i32> %533, i32 1
  store i32 %534, i32* %112, align 1, !tbaa !2451
  %535 = extractelement <2 x i32> %528, i32 0
  store i32 %535, i32* %113, align 1, !tbaa !2451
  %536 = extractelement <2 x i32> %528, i32 1
  store i32 %536, i32* %114, align 1, !tbaa !2451
  %537 = add i64 %469, -24
  %538 = add i64 %471, 37
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RAX, align 8, !tbaa !2428
  %541 = load i64, i64* %RBP, align 8
  %542 = add i64 %541, -40
  %543 = add i64 %471, 40
  store i64 %543, i64* %PC, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RDX, align 8, !tbaa !2428
  %547 = add i64 %541, -48
  %548 = add i64 %471, 43
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = add i32 %550, %545
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RDX, align 8, !tbaa !2428
  %553 = icmp ult i32 %551, %545
  %554 = icmp ult i32 %551, %550
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %.pre-phi, align 1, !tbaa !2432
  %557 = and i32 %551, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557) #9
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %.pre-phi40, align 1, !tbaa !2446
  %562 = xor i32 %550, %545
  %563 = xor i32 %562, %551
  %564 = lshr i32 %563, 4
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  store i8 %566, i8* %.pre-phi42, align 1, !tbaa !2447
  %567 = icmp eq i32 %551, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %.pre-phi44, align 1, !tbaa !2448
  %569 = lshr i32 %551, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %.pre-phi46, align 1, !tbaa !2449
  %571 = lshr i32 %545, 31
  %572 = lshr i32 %550, 31
  %573 = xor i32 %569, %571
  %574 = xor i32 %569, %572
  %575 = add nuw nsw i32 %573, %574
  %576 = icmp eq i32 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %.pre-phi48, align 1, !tbaa !2450
  %578 = sext i32 %551 to i64
  store i64 %578, i64* %RCX, align 8, !tbaa !2428
  %579 = shl nsw i64 %578, 3
  %580 = or i64 %579, 4
  %581 = add i64 %580, %540
  %582 = add i64 %471, 52
  store i64 %582, i64* %PC, align 8
  %583 = load <2 x float>, <2 x float>* %42, align 1
  %584 = extractelement <2 x float> %583, i32 0
  %585 = inttoptr i64 %581 to float*
  store float %584, float* %585, align 4
  %586 = load i64, i64* %RBP, align 8
  %587 = add i64 %586, -32
  %588 = load i64, i64* %PC, align 8
  %589 = add i64 %588, 4
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %587 to i64*
  %591 = load i64, i64* %590, align 8
  store i64 %591, i64* %RAX, align 8, !tbaa !2428
  %592 = add i64 %586, -48
  %593 = add i64 %588, 7
  store i64 %593, i64* %PC, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = add i32 %595, 1
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RDX, align 8, !tbaa !2428
  %598 = icmp eq i32 %595, -1
  %599 = icmp eq i32 %596, 0
  %600 = or i1 %598, %599
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %.pre-phi, align 1, !tbaa !2432
  %602 = and i32 %596, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602) #9
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %.pre-phi40, align 1, !tbaa !2446
  %607 = xor i32 %596, %595
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %.pre-phi42, align 1, !tbaa !2447
  %611 = zext i1 %599 to i8
  store i8 %611, i8* %.pre-phi44, align 1, !tbaa !2448
  %612 = lshr i32 %596, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %.pre-phi46, align 1, !tbaa !2449
  %614 = lshr i32 %595, 31
  %615 = xor i32 %612, %614
  %616 = add nuw nsw i32 %615, %612
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %.pre-phi48, align 1, !tbaa !2450
  %619 = sext i32 %596 to i64
  store i64 %619, i64* %RCX, align 8, !tbaa !2428
  %620 = shl nsw i64 %619, 3
  %621 = add i64 %591, %620
  %622 = add i64 %588, 18
  store i64 %622, i64* %PC, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  store i32 %624, i32* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  store float 0.000000e+00, float* %108, align 1, !tbaa !2451
  store float 0.000000e+00, float* %110, align 1, !tbaa !2451
  %625 = add i64 %586, -16
  %626 = add i64 %588, 22
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RAX, align 8, !tbaa !2428
  %629 = add i64 %586, -40
  %630 = add i64 %588, 26
  store i64 %630, i64* %PC, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  store i64 %633, i64* %RCX, align 8, !tbaa !2428
  %634 = shl nsw i64 %633, 3
  %635 = add i64 %634, %628
  %636 = add i64 %588, 31
  store i64 %636, i64* %PC, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  store i32 %638, i32* %117, align 1, !tbaa !2451
  store float 0.000000e+00, float* %119, align 1, !tbaa !2451
  store float 0.000000e+00, float* %121, align 1, !tbaa !2451
  store float 0.000000e+00, float* %123, align 1, !tbaa !2451
  %639 = add i64 %588, 35
  store i64 %639, i64* %PC, align 8
  %640 = load i64, i64* %627, align 8
  store i64 %640, i64* %RAX, align 8, !tbaa !2428
  %641 = add i64 %588, 38
  store i64 %641, i64* %PC, align 8
  %642 = load i32, i32* %631, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX, align 8, !tbaa !2428
  %644 = add i64 %586, -56
  %645 = add i64 %588, 41
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = add i32 %647, %642
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RDX, align 8, !tbaa !2428
  %650 = icmp ult i32 %648, %642
  %651 = icmp ult i32 %648, %647
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %.pre-phi, align 1, !tbaa !2432
  %654 = and i32 %648, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654) #9
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %.pre-phi40, align 1, !tbaa !2446
  %659 = xor i32 %647, %642
  %660 = xor i32 %659, %648
  %661 = lshr i32 %660, 4
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %.pre-phi42, align 1, !tbaa !2447
  %664 = icmp eq i32 %648, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %.pre-phi44, align 1, !tbaa !2448
  %666 = lshr i32 %648, 31
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %.pre-phi46, align 1, !tbaa !2449
  %668 = lshr i32 %642, 31
  %669 = lshr i32 %647, 31
  %670 = xor i32 %666, %668
  %671 = xor i32 %666, %669
  %672 = add nuw nsw i32 %670, %671
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %.pre-phi48, align 1, !tbaa !2450
  %675 = sext i32 %648 to i64
  store i64 %675, i64* %RCX, align 8, !tbaa !2428
  %676 = shl nsw i64 %675, 3
  %677 = add i64 %640, %676
  %678 = add i64 %588, 49
  store i64 %678, i64* %PC, align 8
  %679 = load <2 x float>, <2 x float>* %124, align 1
  %680 = load <2 x i32>, <2 x i32>* %125, align 1
  %681 = inttoptr i64 %677 to float*
  %682 = load float, float* %681, align 4
  %683 = extractelement <2 x float> %679, i32 0
  %684 = fsub float %683, %682
  store float %684, float* %116, align 1, !tbaa !2451
  %685 = bitcast <2 x float> %679 to <2 x i32>
  %686 = extractelement <2 x i32> %685, i32 1
  store i32 %686, i32* %126, align 1, !tbaa !2451
  %687 = extractelement <2 x i32> %680, i32 0
  store i32 %687, i32* %127, align 1, !tbaa !2451
  %688 = extractelement <2 x i32> %680, i32 1
  store i32 %688, i32* %128, align 1, !tbaa !2451
  %689 = load <2 x float>, <2 x float>* %42, align 1
  %690 = load <2 x i32>, <2 x i32>* %111, align 1
  %691 = load <2 x float>, <2 x float>* %124, align 1
  %692 = extractelement <2 x float> %689, i32 0
  %693 = extractelement <2 x float> %691, i32 0
  %694 = fmul float %692, %693
  store float %694, float* %103, align 1, !tbaa !2451
  %695 = bitcast <2 x float> %689 to <2 x i32>
  %696 = extractelement <2 x i32> %695, i32 1
  store i32 %696, i32* %112, align 1, !tbaa !2451
  %697 = extractelement <2 x i32> %690, i32 0
  store i32 %697, i32* %113, align 1, !tbaa !2451
  %698 = extractelement <2 x i32> %690, i32 1
  store i32 %698, i32* %114, align 1, !tbaa !2451
  %699 = load i64, i64* %RBP, align 8
  %700 = add i64 %699, -32
  %701 = add i64 %588, 57
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %RAX, align 8, !tbaa !2428
  %704 = add i64 %699, -48
  %705 = add i64 %588, 60
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = add i32 %707, 1
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RDX, align 8, !tbaa !2428
  %710 = icmp eq i32 %707, -1
  %711 = icmp eq i32 %708, 0
  %712 = or i1 %710, %711
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %.pre-phi, align 1, !tbaa !2432
  %714 = and i32 %708, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714) #9
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %.pre-phi40, align 1, !tbaa !2446
  %719 = xor i32 %708, %707
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %.pre-phi42, align 1, !tbaa !2447
  %723 = zext i1 %711 to i8
  store i8 %723, i8* %.pre-phi44, align 1, !tbaa !2448
  %724 = lshr i32 %708, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %.pre-phi46, align 1, !tbaa !2449
  %726 = lshr i32 %707, 31
  %727 = xor i32 %724, %726
  %728 = add nuw nsw i32 %727, %724
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %.pre-phi48, align 1, !tbaa !2450
  %731 = sext i32 %708 to i64
  store i64 %731, i64* %RCX, align 8, !tbaa !2428
  %732 = shl nsw i64 %731, 3
  %733 = or i64 %732, 4
  %734 = add i64 %733, %703
  %735 = add i64 %588, 72
  store i64 %735, i64* %PC, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  store i32 %737, i32* %117, align 1, !tbaa !2451
  store float 0.000000e+00, float* %119, align 1, !tbaa !2451
  store float 0.000000e+00, float* %121, align 1, !tbaa !2451
  store float 0.000000e+00, float* %123, align 1, !tbaa !2451
  %738 = add i64 %699, -16
  %739 = add i64 %588, 76
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX, align 8, !tbaa !2428
  %742 = add i64 %699, -40
  %743 = add i64 %588, 80
  store i64 %743, i64* %PC, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = sext i32 %745 to i64
  store i64 %746, i64* %RCX, align 8, !tbaa !2428
  %747 = shl nsw i64 %746, 3
  %748 = add i64 %741, 4
  %749 = add i64 %748, %747
  %750 = add i64 %588, 86
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  store i32 %752, i32* %131, align 1, !tbaa !2451
  store float 0.000000e+00, float* %133, align 1, !tbaa !2451
  store float 0.000000e+00, float* %135, align 1, !tbaa !2451
  store float 0.000000e+00, float* %137, align 1, !tbaa !2451
  %753 = add i64 %588, 90
  store i64 %753, i64* %PC, align 8
  %754 = load i64, i64* %740, align 8
  store i64 %754, i64* %RAX, align 8, !tbaa !2428
  %755 = add i64 %588, 93
  store i64 %755, i64* %PC, align 8
  %756 = load i32, i32* %744, align 4
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RDX, align 8, !tbaa !2428
  %758 = add i64 %699, -56
  %759 = add i64 %588, 96
  store i64 %759, i64* %PC, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = add i32 %761, %756
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RDX, align 8, !tbaa !2428
  %764 = icmp ult i32 %762, %756
  %765 = icmp ult i32 %762, %761
  %766 = or i1 %764, %765
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %.pre-phi, align 1, !tbaa !2432
  %768 = and i32 %762, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768) #9
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %.pre-phi40, align 1, !tbaa !2446
  %773 = xor i32 %761, %756
  %774 = xor i32 %773, %762
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %.pre-phi42, align 1, !tbaa !2447
  %778 = icmp eq i32 %762, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %.pre-phi44, align 1, !tbaa !2448
  %780 = lshr i32 %762, 31
  %781 = trunc i32 %780 to i8
  store i8 %781, i8* %.pre-phi46, align 1, !tbaa !2449
  %782 = lshr i32 %756, 31
  %783 = lshr i32 %761, 31
  %784 = xor i32 %780, %782
  %785 = xor i32 %780, %783
  %786 = add nuw nsw i32 %784, %785
  %787 = icmp eq i32 %786, 2
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %.pre-phi48, align 1, !tbaa !2450
  %789 = sext i32 %762 to i64
  store i64 %789, i64* %RCX, align 8, !tbaa !2428
  %790 = shl nsw i64 %789, 3
  %791 = or i64 %790, 4
  %792 = add i64 %791, %754
  %793 = add i64 %588, 105
  store i64 %793, i64* %PC, align 8
  %794 = load <2 x float>, <2 x float>* %138, align 1
  %795 = load <2 x i32>, <2 x i32>* %139, align 1
  %796 = inttoptr i64 %792 to float*
  %797 = load float, float* %796, align 4
  %798 = extractelement <2 x float> %794, i32 0
  %799 = fsub float %798, %797
  store float %799, float* %130, align 1, !tbaa !2451
  %800 = bitcast <2 x float> %794 to <2 x i32>
  %801 = extractelement <2 x i32> %800, i32 1
  store i32 %801, i32* %140, align 1, !tbaa !2451
  %802 = extractelement <2 x i32> %795, i32 0
  store i32 %802, i32* %141, align 1, !tbaa !2451
  %803 = extractelement <2 x i32> %795, i32 1
  store i32 %803, i32* %142, align 1, !tbaa !2451
  %804 = load <2 x float>, <2 x float>* %124, align 1
  %805 = load <2 x i32>, <2 x i32>* %125, align 1
  %806 = load <2 x float>, <2 x float>* %138, align 1
  %807 = extractelement <2 x float> %804, i32 0
  %808 = extractelement <2 x float> %806, i32 0
  %809 = fmul float %807, %808
  store float %809, float* %116, align 1, !tbaa !2451
  %810 = bitcast <2 x float> %804 to <2 x i32>
  %811 = extractelement <2 x i32> %810, i32 1
  store i32 %811, i32* %126, align 1, !tbaa !2451
  %812 = extractelement <2 x i32> %805, i32 0
  store i32 %812, i32* %127, align 1, !tbaa !2451
  %813 = extractelement <2 x i32> %805, i32 1
  store i32 %813, i32* %128, align 1, !tbaa !2451
  %814 = load <2 x float>, <2 x float>* %42, align 1
  %815 = load <2 x i32>, <2 x i32>* %111, align 1
  %816 = load <2 x float>, <2 x float>* %124, align 1
  %817 = extractelement <2 x float> %814, i32 0
  %818 = extractelement <2 x float> %816, i32 0
  %819 = fsub float %817, %818
  store float %819, float* %103, align 1, !tbaa !2451
  %820 = bitcast <2 x float> %814 to <2 x i32>
  %821 = extractelement <2 x i32> %820, i32 1
  store i32 %821, i32* %112, align 1, !tbaa !2451
  %822 = extractelement <2 x i32> %815, i32 0
  store i32 %822, i32* %113, align 1, !tbaa !2451
  %823 = extractelement <2 x i32> %815, i32 1
  store i32 %823, i32* %114, align 1, !tbaa !2451
  %824 = load i64, i64* %RBP, align 8
  %825 = add i64 %824, -24
  %826 = add i64 %588, 117
  store i64 %826, i64* %PC, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %RAX, align 8, !tbaa !2428
  %829 = add i64 %824, -40
  %830 = add i64 %588, 120
  store i64 %830, i64* %PC, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RDX, align 8, !tbaa !2428
  %834 = add i64 %824, -44
  %835 = add i64 %588, 123
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = add i32 %837, %832
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RDX, align 8, !tbaa !2428
  %840 = icmp ult i32 %838, %832
  %841 = icmp ult i32 %838, %837
  %842 = or i1 %840, %841
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %.pre-phi, align 1, !tbaa !2432
  %844 = and i32 %838, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844) #9
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %.pre-phi40, align 1, !tbaa !2446
  %849 = xor i32 %837, %832
  %850 = xor i32 %849, %838
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %.pre-phi42, align 1, !tbaa !2447
  %854 = icmp eq i32 %838, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %.pre-phi44, align 1, !tbaa !2448
  %856 = lshr i32 %838, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %.pre-phi46, align 1, !tbaa !2449
  %858 = lshr i32 %832, 31
  %859 = lshr i32 %837, 31
  %860 = xor i32 %856, %858
  %861 = xor i32 %856, %859
  %862 = add nuw nsw i32 %860, %861
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %.pre-phi48, align 1, !tbaa !2450
  %865 = sext i32 %838 to i64
  store i64 %865, i64* %RCX, align 8, !tbaa !2428
  %866 = shl nsw i64 %865, 3
  %867 = add i64 %828, %866
  %868 = add i64 %588, 131
  store i64 %868, i64* %PC, align 8
  %869 = load <2 x float>, <2 x float>* %42, align 1
  %870 = extractelement <2 x float> %869, i32 0
  %871 = inttoptr i64 %867 to float*
  store float %870, float* %871, align 4
  %872 = load i64, i64* %RBP, align 8
  %873 = add i64 %872, -32
  %874 = load i64, i64* %PC, align 8
  %875 = add i64 %874, 4
  store i64 %875, i64* %PC, align 8
  %876 = inttoptr i64 %873 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX, align 8, !tbaa !2428
  %878 = add i64 %872, -48
  %879 = add i64 %874, 7
  store i64 %879, i64* %PC, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = add i32 %881, 1
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RDX, align 8, !tbaa !2428
  %884 = icmp eq i32 %881, -1
  %885 = icmp eq i32 %882, 0
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %.pre-phi, align 1, !tbaa !2432
  %888 = and i32 %882, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888) #9
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %.pre-phi40, align 1, !tbaa !2446
  %893 = xor i32 %882, %881
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %.pre-phi42, align 1, !tbaa !2447
  %897 = zext i1 %885 to i8
  store i8 %897, i8* %.pre-phi44, align 1, !tbaa !2448
  %898 = lshr i32 %882, 31
  %899 = trunc i32 %898 to i8
  store i8 %899, i8* %.pre-phi46, align 1, !tbaa !2449
  %900 = lshr i32 %881, 31
  %901 = xor i32 %898, %900
  %902 = add nuw nsw i32 %901, %898
  %903 = icmp eq i32 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %.pre-phi48, align 1, !tbaa !2450
  %905 = sext i32 %882 to i64
  store i64 %905, i64* %RCX, align 8, !tbaa !2428
  %906 = shl nsw i64 %905, 3
  %907 = add i64 %877, %906
  %908 = add i64 %874, 18
  store i64 %908, i64* %PC, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  store i32 %910, i32* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  store float 0.000000e+00, float* %108, align 1, !tbaa !2451
  store float 0.000000e+00, float* %110, align 1, !tbaa !2451
  %911 = add i64 %872, -16
  %912 = add i64 %874, 22
  store i64 %912, i64* %PC, align 8
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %RAX, align 8, !tbaa !2428
  %915 = add i64 %872, -40
  %916 = add i64 %874, 26
  store i64 %916, i64* %PC, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = sext i32 %918 to i64
  store i64 %919, i64* %RCX, align 8, !tbaa !2428
  %920 = shl nsw i64 %919, 3
  %921 = add i64 %914, 4
  %922 = add i64 %921, %920
  %923 = add i64 %874, 32
  store i64 %923, i64* %PC, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  store i32 %925, i32* %117, align 1, !tbaa !2451
  store float 0.000000e+00, float* %119, align 1, !tbaa !2451
  store float 0.000000e+00, float* %121, align 1, !tbaa !2451
  store float 0.000000e+00, float* %123, align 1, !tbaa !2451
  %926 = add i64 %874, 36
  store i64 %926, i64* %PC, align 8
  %927 = load i64, i64* %913, align 8
  store i64 %927, i64* %RAX, align 8, !tbaa !2428
  %928 = add i64 %874, 39
  store i64 %928, i64* %PC, align 8
  %929 = load i32, i32* %917, align 4
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RDX, align 8, !tbaa !2428
  %931 = add i64 %872, -56
  %932 = add i64 %874, 42
  store i64 %932, i64* %PC, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = add i32 %934, %929
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RDX, align 8, !tbaa !2428
  %937 = icmp ult i32 %935, %929
  %938 = icmp ult i32 %935, %934
  %939 = or i1 %937, %938
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %.pre-phi, align 1, !tbaa !2432
  %941 = and i32 %935, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941) #9
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %.pre-phi40, align 1, !tbaa !2446
  %946 = xor i32 %934, %929
  %947 = xor i32 %946, %935
  %948 = lshr i32 %947, 4
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %.pre-phi42, align 1, !tbaa !2447
  %951 = icmp eq i32 %935, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %.pre-phi44, align 1, !tbaa !2448
  %953 = lshr i32 %935, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %.pre-phi46, align 1, !tbaa !2449
  %955 = lshr i32 %929, 31
  %956 = lshr i32 %934, 31
  %957 = xor i32 %953, %955
  %958 = xor i32 %953, %956
  %959 = add nuw nsw i32 %957, %958
  %960 = icmp eq i32 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %.pre-phi48, align 1, !tbaa !2450
  %962 = sext i32 %935 to i64
  store i64 %962, i64* %RCX, align 8, !tbaa !2428
  %963 = shl nsw i64 %962, 3
  %964 = or i64 %963, 4
  %965 = add i64 %964, %927
  %966 = add i64 %874, 51
  store i64 %966, i64* %PC, align 8
  %967 = load <2 x float>, <2 x float>* %124, align 1
  %968 = load <2 x i32>, <2 x i32>* %125, align 1
  %969 = inttoptr i64 %965 to float*
  %970 = load float, float* %969, align 4
  %971 = extractelement <2 x float> %967, i32 0
  %972 = fsub float %971, %970
  store float %972, float* %116, align 1, !tbaa !2451
  %973 = bitcast <2 x float> %967 to <2 x i32>
  %974 = extractelement <2 x i32> %973, i32 1
  store i32 %974, i32* %126, align 1, !tbaa !2451
  %975 = extractelement <2 x i32> %968, i32 0
  store i32 %975, i32* %127, align 1, !tbaa !2451
  %976 = extractelement <2 x i32> %968, i32 1
  store i32 %976, i32* %128, align 1, !tbaa !2451
  %977 = load <2 x float>, <2 x float>* %42, align 1
  %978 = load <2 x i32>, <2 x i32>* %111, align 1
  %979 = load <2 x float>, <2 x float>* %124, align 1
  %980 = extractelement <2 x float> %977, i32 0
  %981 = extractelement <2 x float> %979, i32 0
  %982 = fmul float %980, %981
  store float %982, float* %103, align 1, !tbaa !2451
  %983 = bitcast <2 x float> %977 to <2 x i32>
  %984 = extractelement <2 x i32> %983, i32 1
  store i32 %984, i32* %112, align 1, !tbaa !2451
  %985 = extractelement <2 x i32> %978, i32 0
  store i32 %985, i32* %113, align 1, !tbaa !2451
  %986 = extractelement <2 x i32> %978, i32 1
  store i32 %986, i32* %114, align 1, !tbaa !2451
  %987 = load i64, i64* %RBP, align 8
  %988 = add i64 %987, -32
  %989 = add i64 %874, 59
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %988 to i64*
  %991 = load i64, i64* %990, align 8
  store i64 %991, i64* %RAX, align 8, !tbaa !2428
  %992 = add i64 %987, -48
  %993 = add i64 %874, 62
  store i64 %993, i64* %PC, align 8
  %994 = inttoptr i64 %992 to i32*
  %995 = load i32, i32* %994, align 4
  %996 = add i32 %995, 1
  %997 = zext i32 %996 to i64
  store i64 %997, i64* %RDX, align 8, !tbaa !2428
  %998 = icmp eq i32 %995, -1
  %999 = icmp eq i32 %996, 0
  %1000 = or i1 %998, %999
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %.pre-phi, align 1, !tbaa !2432
  %1002 = and i32 %996, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002) #9
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %.pre-phi40, align 1, !tbaa !2446
  %1007 = xor i32 %996, %995
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %.pre-phi42, align 1, !tbaa !2447
  %1011 = zext i1 %999 to i8
  store i8 %1011, i8* %.pre-phi44, align 1, !tbaa !2448
  %1012 = lshr i32 %996, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %.pre-phi46, align 1, !tbaa !2449
  %1014 = lshr i32 %995, 31
  %1015 = xor i32 %1012, %1014
  %1016 = add nuw nsw i32 %1015, %1012
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %.pre-phi48, align 1, !tbaa !2450
  %1019 = sext i32 %996 to i64
  store i64 %1019, i64* %RCX, align 8, !tbaa !2428
  %1020 = shl nsw i64 %1019, 3
  %1021 = or i64 %1020, 4
  %1022 = add i64 %1021, %991
  %1023 = add i64 %874, 74
  store i64 %1023, i64* %PC, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  store i32 %1025, i32* %117, align 1, !tbaa !2451
  store float 0.000000e+00, float* %119, align 1, !tbaa !2451
  store float 0.000000e+00, float* %121, align 1, !tbaa !2451
  store float 0.000000e+00, float* %123, align 1, !tbaa !2451
  %1026 = add i64 %987, -16
  %1027 = add i64 %874, 78
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %RAX, align 8, !tbaa !2428
  %1030 = add i64 %987, -40
  %1031 = add i64 %874, 82
  store i64 %1031, i64* %PC, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  store i64 %1034, i64* %RCX, align 8, !tbaa !2428
  %1035 = shl nsw i64 %1034, 3
  %1036 = add i64 %1035, %1029
  %1037 = add i64 %874, 87
  store i64 %1037, i64* %PC, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  store i32 %1039, i32* %131, align 1, !tbaa !2451
  store float 0.000000e+00, float* %133, align 1, !tbaa !2451
  store float 0.000000e+00, float* %135, align 1, !tbaa !2451
  store float 0.000000e+00, float* %137, align 1, !tbaa !2451
  %1040 = add i64 %874, 91
  store i64 %1040, i64* %PC, align 8
  %1041 = load i64, i64* %1028, align 8
  store i64 %1041, i64* %RAX, align 8, !tbaa !2428
  %1042 = add i64 %874, 94
  store i64 %1042, i64* %PC, align 8
  %1043 = load i32, i32* %1032, align 4
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RDX, align 8, !tbaa !2428
  %1045 = add i64 %987, -56
  %1046 = add i64 %874, 97
  store i64 %1046, i64* %PC, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = add i32 %1048, %1043
  %1050 = zext i32 %1049 to i64
  store i64 %1050, i64* %RDX, align 8, !tbaa !2428
  %1051 = icmp ult i32 %1049, %1043
  %1052 = icmp ult i32 %1049, %1048
  %1053 = or i1 %1051, %1052
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %.pre-phi, align 1, !tbaa !2432
  %1055 = and i32 %1049, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055) #9
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %.pre-phi40, align 1, !tbaa !2446
  %1060 = xor i32 %1048, %1043
  %1061 = xor i32 %1060, %1049
  %1062 = lshr i32 %1061, 4
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  store i8 %1064, i8* %.pre-phi42, align 1, !tbaa !2447
  %1065 = icmp eq i32 %1049, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %.pre-phi44, align 1, !tbaa !2448
  %1067 = lshr i32 %1049, 31
  %1068 = trunc i32 %1067 to i8
  store i8 %1068, i8* %.pre-phi46, align 1, !tbaa !2449
  %1069 = lshr i32 %1043, 31
  %1070 = lshr i32 %1048, 31
  %1071 = xor i32 %1067, %1069
  %1072 = xor i32 %1067, %1070
  %1073 = add nuw nsw i32 %1071, %1072
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %.pre-phi48, align 1, !tbaa !2450
  %1076 = sext i32 %1049 to i64
  store i64 %1076, i64* %RCX, align 8, !tbaa !2428
  %1077 = shl nsw i64 %1076, 3
  %1078 = add i64 %1041, %1077
  %1079 = add i64 %874, 105
  store i64 %1079, i64* %PC, align 8
  %1080 = load <2 x float>, <2 x float>* %138, align 1
  %1081 = load <2 x i32>, <2 x i32>* %139, align 1
  %1082 = inttoptr i64 %1078 to float*
  %1083 = load float, float* %1082, align 4
  %1084 = extractelement <2 x float> %1080, i32 0
  %1085 = fsub float %1084, %1083
  store float %1085, float* %130, align 1, !tbaa !2451
  %1086 = bitcast <2 x float> %1080 to <2 x i32>
  %1087 = extractelement <2 x i32> %1086, i32 1
  store i32 %1087, i32* %140, align 1, !tbaa !2451
  %1088 = extractelement <2 x i32> %1081, i32 0
  store i32 %1088, i32* %141, align 1, !tbaa !2451
  %1089 = extractelement <2 x i32> %1081, i32 1
  store i32 %1089, i32* %142, align 1, !tbaa !2451
  %1090 = load <2 x float>, <2 x float>* %124, align 1
  %1091 = load <2 x i32>, <2 x i32>* %125, align 1
  %1092 = load <2 x float>, <2 x float>* %138, align 1
  %1093 = extractelement <2 x float> %1090, i32 0
  %1094 = extractelement <2 x float> %1092, i32 0
  %1095 = fmul float %1093, %1094
  store float %1095, float* %116, align 1, !tbaa !2451
  %1096 = bitcast <2 x float> %1090 to <2 x i32>
  %1097 = extractelement <2 x i32> %1096, i32 1
  store i32 %1097, i32* %126, align 1, !tbaa !2451
  %1098 = extractelement <2 x i32> %1091, i32 0
  store i32 %1098, i32* %127, align 1, !tbaa !2451
  %1099 = extractelement <2 x i32> %1091, i32 1
  store i32 %1099, i32* %128, align 1, !tbaa !2451
  %1100 = load <2 x float>, <2 x float>* %42, align 1
  %1101 = load <2 x i32>, <2 x i32>* %111, align 1
  %1102 = load <2 x float>, <2 x float>* %124, align 1
  %1103 = extractelement <2 x float> %1100, i32 0
  %1104 = extractelement <2 x float> %1102, i32 0
  %1105 = fadd float %1103, %1104
  store float %1105, float* %103, align 1, !tbaa !2451
  %1106 = bitcast <2 x float> %1100 to <2 x i32>
  %1107 = extractelement <2 x i32> %1106, i32 1
  store i32 %1107, i32* %112, align 1, !tbaa !2451
  %1108 = extractelement <2 x i32> %1101, i32 0
  store i32 %1108, i32* %113, align 1, !tbaa !2451
  %1109 = extractelement <2 x i32> %1101, i32 1
  store i32 %1109, i32* %114, align 1, !tbaa !2451
  %1110 = load i64, i64* %RBP, align 8
  %1111 = add i64 %1110, -24
  %1112 = add i64 %874, 117
  store i64 %1112, i64* %PC, align 8
  %1113 = inttoptr i64 %1111 to i64*
  %1114 = load i64, i64* %1113, align 8
  store i64 %1114, i64* %RAX, align 8, !tbaa !2428
  %1115 = add i64 %1110, -40
  %1116 = add i64 %874, 120
  store i64 %1116, i64* %PC, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RDX, align 8, !tbaa !2428
  %1120 = add i64 %1110, -44
  %1121 = add i64 %874, 123
  store i64 %1121, i64* %PC, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = add i32 %1123, %1118
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RDX, align 8, !tbaa !2428
  %1126 = icmp ult i32 %1124, %1118
  %1127 = icmp ult i32 %1124, %1123
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %.pre-phi, align 1, !tbaa !2432
  %1130 = and i32 %1124, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130) #9
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %.pre-phi40, align 1, !tbaa !2446
  %1135 = xor i32 %1123, %1118
  %1136 = xor i32 %1135, %1124
  %1137 = lshr i32 %1136, 4
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %.pre-phi42, align 1, !tbaa !2447
  %1140 = icmp eq i32 %1124, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %.pre-phi44, align 1, !tbaa !2448
  %1142 = lshr i32 %1124, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %.pre-phi46, align 1, !tbaa !2449
  %1144 = lshr i32 %1118, 31
  %1145 = lshr i32 %1123, 31
  %1146 = xor i32 %1142, %1144
  %1147 = xor i32 %1142, %1145
  %1148 = add nuw nsw i32 %1146, %1147
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %.pre-phi48, align 1, !tbaa !2450
  %1151 = sext i32 %1124 to i64
  store i64 %1151, i64* %RCX, align 8, !tbaa !2428
  %1152 = shl nsw i64 %1151, 3
  %1153 = or i64 %1152, 4
  %1154 = add i64 %1153, %1114
  %1155 = add i64 %874, 132
  store i64 %1155, i64* %PC, align 8
  %1156 = load <2 x float>, <2 x float>* %42, align 1
  %1157 = extractelement <2 x float> %1156, i32 0
  %1158 = inttoptr i64 %1154 to float*
  store float %1157, float* %1158, align 4
  %1159 = load i64, i64* %RBP, align 8
  %1160 = add i64 %1159, -40
  %1161 = load i64, i64* %PC, align 8
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = add i32 %1164, 1
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RDX, align 8, !tbaa !2428
  %1167 = icmp eq i32 %1164, -1
  %1168 = icmp eq i32 %1165, 0
  %1169 = or i1 %1167, %1168
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %.pre-phi, align 1, !tbaa !2432
  %1171 = and i32 %1165, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171) #9
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %.pre-phi40, align 1, !tbaa !2446
  %1176 = xor i32 %1165, %1164
  %1177 = lshr i32 %1176, 4
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %.pre-phi42, align 1, !tbaa !2447
  %1180 = zext i1 %1168 to i8
  store i8 %1180, i8* %.pre-phi44, align 1, !tbaa !2448
  %1181 = lshr i32 %1165, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %.pre-phi46, align 1, !tbaa !2449
  %1183 = lshr i32 %1164, 31
  %1184 = xor i32 %1181, %1183
  %1185 = add nuw nsw i32 %1184, %1181
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %.pre-phi48, align 1, !tbaa !2450
  %1188 = add i64 %1161, 9
  store i64 %1188, i64* %PC, align 8
  store i32 %1165, i32* %1163, align 4
  %1189 = load i64, i64* %RBP, align 8
  %1190 = add i64 %1189, -40
  %1191 = load i64, i64* %PC, align 8
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RAX, align 8, !tbaa !2428
  %1196 = add i64 %1189, -44
  %1197 = add i64 %1191, 6
  store i64 %1197, i64* %PC, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = sub i32 %1194, %1199
  %1201 = icmp ult i32 %1194, %1199
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %.pre-phi, align 1, !tbaa !2432
  %1203 = and i32 %1200, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203) #9
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %.pre-phi40, align 1, !tbaa !2446
  %1208 = xor i32 %1199, %1194
  %1209 = xor i32 %1208, %1200
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  store i8 %1212, i8* %.pre-phi42, align 1, !tbaa !2447
  %1213 = icmp eq i32 %1200, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %.pre-phi44, align 1, !tbaa !2448
  %1215 = lshr i32 %1200, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %.pre-phi46, align 1, !tbaa !2449
  %1217 = lshr i32 %1194, 31
  %1218 = lshr i32 %1199, 31
  %1219 = xor i32 %1218, %1217
  %1220 = xor i32 %1215, %1217
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %.pre-phi48, align 1, !tbaa !2450
  %1224 = icmp ne i8 %1216, 0
  %1225 = xor i1 %1224, %1222
  %1226 = or i1 %1213, %1225
  %.v = select i1 %1226, i64 -373, i64 12
  %1227 = add i64 %1191, %.v
  store i64 %1227, i64* %PC, align 8, !tbaa !2428
  br i1 %1226, label %block_400a7e, label %block_400bff

block_400c1a:                                     ; preds = %block_400bff
  %1228 = add i64 %190, -60
  %1229 = add i64 %228, 7
  store i64 %1229, i64* %PC, align 8
  %1230 = inttoptr i64 %1228 to i32*
  store i32 1, i32* %1230, align 4
  %.pre34 = load i64, i64* %RBP, align 8
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400c21

block_400c4e:                                     ; preds = %block_400c21
  %1231 = add i64 %1435, -52
  %1232 = add i64 %1473, 3
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RAX, align 8, !tbaa !2428
  %1236 = add i64 %1473, 6
  store i64 %1236, i64* %PC, align 8
  %1237 = load i32, i32* %1233, align 4
  %1238 = add i32 %1237, %1234
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RAX, align 8, !tbaa !2428
  %1240 = icmp ult i32 %1238, %1234
  %1241 = icmp ult i32 %1238, %1237
  %1242 = or i1 %1240, %1241
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %.pre-phi, align 1, !tbaa !2432
  %1244 = and i32 %1238, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244) #9
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %.pre-phi40, align 1, !tbaa !2446
  %1249 = xor i32 %1237, %1234
  %1250 = xor i32 %1249, %1238
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %.pre-phi42, align 1, !tbaa !2447
  %1254 = icmp eq i32 %1238, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %.pre-phi44, align 1, !tbaa !2448
  %1256 = lshr i32 %1238, 31
  %1257 = trunc i32 %1256 to i8
  store i8 %1257, i8* %.pre-phi46, align 1, !tbaa !2449
  %1258 = lshr i32 %1234, 31
  %1259 = lshr i32 %1237, 31
  %1260 = xor i32 %1256, %1258
  %1261 = xor i32 %1256, %1259
  %1262 = add nuw nsw i32 %1260, %1261
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %.pre-phi48, align 1, !tbaa !2450
  %1265 = add i64 %1473, 9
  store i64 %1265, i64* %PC, align 8
  store i32 %1238, i32* %1233, align 4
  %1266 = load i64, i64* %RBP, align 8
  %1267 = add i64 %1266, -52
  %1268 = load i64, i64* %PC, align 8
  %1269 = add i64 %1268, 3
  store i64 %1269, i64* %PC, align 8
  %1270 = inttoptr i64 %1267 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RAX, align 8, !tbaa !2428
  %1273 = add i64 %1266, -56
  %1274 = add i64 %1268, 6
  store i64 %1274, i64* %PC, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = sub i32 %1271, %1276
  %1278 = icmp ult i32 %1271, %1276
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %.pre-phi, align 1, !tbaa !2432
  %1280 = and i32 %1277, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280) #9
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %.pre-phi40, align 1, !tbaa !2446
  %1285 = xor i32 %1276, %1271
  %1286 = xor i32 %1285, %1277
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %.pre-phi42, align 1, !tbaa !2447
  %1290 = icmp eq i32 %1277, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %.pre-phi44, align 1, !tbaa !2448
  %1292 = lshr i32 %1277, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %.pre-phi46, align 1, !tbaa !2449
  %1294 = lshr i32 %1271, 31
  %1295 = lshr i32 %1276, 31
  %1296 = xor i32 %1295, %1294
  %1297 = xor i32 %1292, %1294
  %1298 = add nuw nsw i32 %1297, %1296
  %1299 = icmp eq i32 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %.pre-phi48, align 1, !tbaa !2450
  %1301 = icmp ne i8 %1293, 0
  %1302 = xor i1 %1301, %1299
  %1303 = or i1 %1290, %1302
  %.v51 = select i1 %1303, i64 -498, i64 12
  %1304 = add i64 %1268, %.v51
  store i64 %1304, i64* %PC, align 8, !tbaa !2428
  br i1 %1303, label %block_400a65, label %block_400c63

block_400cd2:                                     ; preds = %block_400c6a
  %1305 = add i64 %1351, 1
  store i64 %1305, i64* %PC, align 8
  %1306 = load i64, i64* %11, align 8, !tbaa !2428
  %1307 = add i64 %1306, 8
  %1308 = inttoptr i64 %1306 to i64*
  %1309 = load i64, i64* %1308, align 8
  store i64 %1309, i64* %RBP, align 8, !tbaa !2428
  store i64 %1307, i64* %11, align 8, !tbaa !2428
  %1310 = add i64 %1351, 2
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1307 to i64*
  %1312 = load i64, i64* %1311, align 8
  store i64 %1312, i64* %PC, align 8, !tbaa !2428
  %1313 = add i64 %1306, 16
  store i64 %1313, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %93

block_400c6a:                                     ; preds = %block_400c63, %block_400c76
  %1314 = phi i64 [ %.pre36, %block_400c63 ], [ %354, %block_400c76 ]
  %1315 = load i64, i64* %RBP, align 8
  %1316 = add i64 %1315, -40
  %1317 = add i64 %1314, 3
  store i64 %1317, i64* %PC, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX, align 8, !tbaa !2428
  %1321 = add i64 %1315, -4
  %1322 = add i64 %1314, 6
  store i64 %1322, i64* %PC, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = sub i32 %1319, %1324
  %1326 = icmp ult i32 %1319, %1324
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %.pre-phi, align 1, !tbaa !2432
  %1328 = and i32 %1325, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328) #9
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %.pre-phi40, align 1, !tbaa !2446
  %1333 = xor i32 %1324, %1319
  %1334 = xor i32 %1333, %1325
  %1335 = lshr i32 %1334, 4
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  store i8 %1337, i8* %.pre-phi42, align 1, !tbaa !2447
  %1338 = icmp eq i32 %1325, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %.pre-phi44, align 1, !tbaa !2448
  %1340 = lshr i32 %1325, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %.pre-phi46, align 1, !tbaa !2449
  %1342 = lshr i32 %1319, 31
  %1343 = lshr i32 %1324, 31
  %1344 = xor i32 %1343, %1342
  %1345 = xor i32 %1340, %1342
  %1346 = add nuw nsw i32 %1345, %1344
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %.pre-phi48, align 1, !tbaa !2450
  %1349 = icmp ne i8 %1341, 0
  %1350 = xor i1 %1349, %1347
  %.demorgan = or i1 %1338, %1350
  %.v52 = select i1 %.demorgan, i64 12, i64 104
  %1351 = add i64 %1314, %.v52
  store i64 %1351, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400c76, label %block_400cd2

block_400a65:                                     ; preds = %block_400c4e, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %1352 = phi i64 [ %1304, %block_400c4e ], [ %.pre31, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %1353 = phi i64 [ %1266, %block_400c4e ], [ %.pre30, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %1354 = add i64 %1353, -48
  %1355 = add i64 %1352, 7
  store i64 %1355, i64* %PC, align 8
  %1356 = inttoptr i64 %1354 to i32*
  store i32 0, i32* %1356, align 4
  %1357 = load i64, i64* %RBP, align 8
  %1358 = add i64 %1357, -52
  %1359 = load i64, i64* %PC, align 8
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC, align 8
  %1361 = inttoptr i64 %1358 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX, align 8, !tbaa !2428
  %1364 = add i64 %1357, -44
  %1365 = add i64 %1359, 6
  store i64 %1365, i64* %PC, align 8
  %1366 = inttoptr i64 %1364 to i32*
  store i32 %1362, i32* %1366, align 4
  %1367 = load i64, i64* %RBP, align 8
  %1368 = add i64 %1367, -40
  %1369 = load i64, i64* %PC, align 8
  %1370 = add i64 %1369, 7
  store i64 %1370, i64* %PC, align 8
  %1371 = inttoptr i64 %1368 to i32*
  store i32 1, i32* %1371, align 4
  %.pre32 = load i64, i64* %PC, align 8
  %.pre33.pre = load i64, i64* %RBP, align 8
  br label %block_400a79

block_400c63:                                     ; preds = %block_400c4e
  %1372 = add i64 %1266, -40
  %1373 = add i64 %1304, 7
  store i64 %1373, i64* %PC, align 8
  %1374 = inttoptr i64 %1372 to i32*
  store i32 1, i32* %1374, align 4
  %1375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1376 = bitcast %union.anon* %4 to [2 x i32]*
  %1377 = getelementptr inbounds [2 x i32], [2 x i32]* %1376, i64 0, i64 1
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_400c6a

block_400c21:                                     ; preds = %block_400c21, %block_400c1a
  %1378 = phi i64 [ %1473, %block_400c21 ], [ %.pre35, %block_400c1a ]
  %1379 = phi i64 [ %1435, %block_400c21 ], [ %.pre34, %block_400c1a ]
  %1380 = add i64 %1379, -16
  %1381 = add i64 %1378, 4
  store i64 %1381, i64* %PC, align 8
  %1382 = inttoptr i64 %1380 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RAX, align 8, !tbaa !2428
  %1384 = add i64 %1379, -60
  %1385 = add i64 %1378, 8
  store i64 %1385, i64* %PC, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = sext i32 %1387 to i64
  store i64 %1388, i64* %RCX, align 8, !tbaa !2428
  %1389 = add i64 %1379, -24
  %1390 = add i64 %1378, 12
  store i64 %1390, i64* %PC, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RDX, align 8, !tbaa !2428
  %1393 = add i64 %1378, 16
  store i64 %1393, i64* %PC, align 8
  %1394 = load i32, i32* %1386, align 4
  %1395 = sext i32 %1394 to i64
  store i64 %1395, i64* %RSI, align 8, !tbaa !2428
  %1396 = shl nsw i64 %1395, 3
  %1397 = add i64 %1396, %1392
  %1398 = add i64 %1378, 20
  store i64 %1398, i64* %PC, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RDX, align 8, !tbaa !2428
  %1401 = shl nsw i64 %1388, 3
  %1402 = add i64 %1401, %1383
  %1403 = add i64 %1378, 24
  store i64 %1403, i64* %PC, align 8
  %1404 = inttoptr i64 %1402 to i64*
  store i64 %1400, i64* %1404, align 8
  %1405 = load i64, i64* %RBP, align 8
  %1406 = add i64 %1405, -60
  %1407 = load i64, i64* %PC, align 8
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC, align 8
  %1409 = inttoptr i64 %1406 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = add i32 %1410, 1
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RDI, align 8, !tbaa !2428
  %1413 = icmp eq i32 %1410, -1
  %1414 = icmp eq i32 %1411, 0
  %1415 = or i1 %1413, %1414
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %.pre-phi, align 1, !tbaa !2432
  %1417 = and i32 %1411, 255
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417) #9
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %.pre-phi40, align 1, !tbaa !2446
  %1422 = xor i32 %1411, %1410
  %1423 = lshr i32 %1422, 4
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  store i8 %1425, i8* %.pre-phi42, align 1, !tbaa !2447
  %1426 = zext i1 %1414 to i8
  store i8 %1426, i8* %.pre-phi44, align 1, !tbaa !2448
  %1427 = lshr i32 %1411, 31
  %1428 = trunc i32 %1427 to i8
  store i8 %1428, i8* %.pre-phi46, align 1, !tbaa !2449
  %1429 = lshr i32 %1410, 31
  %1430 = xor i32 %1427, %1429
  %1431 = add nuw nsw i32 %1430, %1427
  %1432 = icmp eq i32 %1431, 2
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %.pre-phi48, align 1, !tbaa !2450
  %1434 = add i64 %1407, 9
  store i64 %1434, i64* %PC, align 8
  store i32 %1411, i32* %1409, align 4
  %1435 = load i64, i64* %RBP, align 8
  %1436 = add i64 %1435, -60
  %1437 = load i64, i64* %PC, align 8
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC, align 8
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX, align 8, !tbaa !2428
  %1442 = add i64 %1435, -4
  %1443 = add i64 %1437, 6
  store i64 %1443, i64* %PC, align 8
  %1444 = inttoptr i64 %1442 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = sub i32 %1440, %1445
  %1447 = icmp ult i32 %1440, %1445
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %.pre-phi, align 1, !tbaa !2432
  %1449 = and i32 %1446, 255
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449) #9
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %.pre-phi40, align 1, !tbaa !2446
  %1454 = xor i32 %1445, %1440
  %1455 = xor i32 %1454, %1446
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %.pre-phi42, align 1, !tbaa !2447
  %1459 = icmp eq i32 %1446, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %.pre-phi44, align 1, !tbaa !2448
  %1461 = lshr i32 %1446, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %.pre-phi46, align 1, !tbaa !2449
  %1463 = lshr i32 %1440, 31
  %1464 = lshr i32 %1445, 31
  %1465 = xor i32 %1464, %1463
  %1466 = xor i32 %1461, %1463
  %1467 = add nuw nsw i32 %1466, %1465
  %1468 = icmp eq i32 %1467, 2
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %.pre-phi48, align 1, !tbaa !2450
  %1470 = icmp ne i8 %1462, 0
  %1471 = xor i1 %1470, %1468
  %1472 = or i1 %1459, %1471
  %.v50 = select i1 %1472, i64 -33, i64 12
  %1473 = add i64 %1437, %.v50
  store i64 %1473, i64* %PC, align 8, !tbaa !2428
  br i1 %1472, label %block_400c21, label %block_400c4e
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400740_Uniform11(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400740:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %12 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %13 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 8) to i32*), align 8
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1, !tbaa !2451
  %15 = getelementptr inbounds i8, i8* %12, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1, !tbaa !2451
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1, !tbaa !2451
  %19 = getelementptr inbounds i8, i8* %12, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1, !tbaa !2451
  %21 = add i64 %8, -16
  %22 = load i64, i64* %RDI, align 8
  %23 = add i64 %11, 15
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -16
  %27 = load i64, i64* %RSI, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -8
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %32 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %RSI, align 8, !tbaa !2428
  %37 = add i64 %33, 10
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %39, 4855
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %47 = add i32 %40, 1731
  %48 = and i32 %47, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #9
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = and i32 %47, 8191
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %41, align 1, !tbaa !2432
  store i8 %52, i8* %42, align 1, !tbaa !2446
  %55 = icmp eq i32 %53, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %44, align 1, !tbaa !2448
  store i8 0, i8* %45, align 1, !tbaa !2449
  store i8 0, i8* %46, align 1, !tbaa !2450
  store i8 0, i8* %43, align 1, !tbaa !2447
  %57 = add i64 %33, 24
  store i64 %57, i64* %PC, align 8
  %58 = load i64, i64* %35, align 8
  store i64 %58, i64* %RSI, align 8, !tbaa !2428
  %59 = add i64 %33, 26
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  store i32 %53, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -8
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RSI, align 8, !tbaa !2428
  %67 = bitcast %union.VectorReg* %4 to i8*
  %68 = add i64 %63, 8
  store i64 %68, i64* %PC, align 8
  %69 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %70 = load <2 x i32>, <2 x i32>* %69, align 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %72 = bitcast i64* %71 to <2 x i32>*
  %73 = load <2 x i32>, <2 x i32>* %72, align 1
  %74 = inttoptr i64 %66 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to float
  %77 = bitcast %union.VectorReg* %4 to float*
  store float %76, float* %77, align 1, !tbaa !2451
  %78 = extractelement <2 x i32> %70, i32 1
  %79 = getelementptr inbounds i8, i8* %67, i64 4
  %80 = bitcast i8* %79 to i32*
  store i32 %78, i32* %80, align 1, !tbaa !2451
  %81 = extractelement <2 x i32> %73, i32 0
  %82 = bitcast i64* %71 to i32*
  store i32 %81, i32* %82, align 1, !tbaa !2451
  %83 = extractelement <2 x i32> %73, i32 1
  %84 = getelementptr inbounds i8, i8* %67, i64 12
  %85 = bitcast i8* %84 to i32*
  store i32 %83, i32* %85, align 1, !tbaa !2451
  %86 = bitcast %union.VectorReg* %4 to <2 x float>*
  %87 = load <2 x float>, <2 x float>* %86, align 1
  %88 = load <2 x i32>, <2 x i32>* %72, align 1
  %89 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %90 = load <2 x float>, <2 x float>* %89, align 1
  %91 = extractelement <2 x float> %87, i32 0
  %92 = extractelement <2 x float> %90, i32 0
  %93 = fdiv float %91, %92
  store float %93, float* %77, align 1, !tbaa !2451
  %94 = bitcast <2 x float> %87 to <2 x i32>
  %95 = extractelement <2 x i32> %94, i32 1
  store i32 %95, i32* %80, align 1, !tbaa !2451
  %96 = extractelement <2 x i32> %88, i32 0
  store i32 %96, i32* %82, align 1, !tbaa !2451
  %97 = extractelement <2 x i32> %88, i32 1
  store i32 %97, i32* %85, align 1, !tbaa !2451
  %98 = add i64 %61, -16
  %99 = add i64 %63, 16
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RSI, align 8, !tbaa !2428
  %102 = add i64 %63, 20
  store i64 %102, i64* %PC, align 8
  %103 = load <2 x float>, <2 x float>* %86, align 1
  %104 = extractelement <2 x float> %103, i32 0
  %105 = inttoptr i64 %101 to float*
  store float %104, float* %105, align 4
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %PC, align 8
  %108 = load i64, i64* %7, align 8, !tbaa !2428
  %109 = add i64 %108, 8
  %110 = inttoptr i64 %108 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %RBP, align 8, !tbaa !2428
  store i64 %109, i64* %7, align 8, !tbaa !2428
  %112 = add i64 %106, 2
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %109 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %PC, align 8, !tbaa !2428
  %115 = add i64 %108, 16
  store i64 %115, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400570_Cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400570:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %13 = bitcast %union.VectorReg* %4 to i8*
  %14 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 4) to i32*), align 4
  %15 = bitcast %union.VectorReg* %4 to float*
  %16 = bitcast %union.VectorReg* %4 to i32*
  store i32 %14, i32* %16, align 1, !tbaa !2451
  %17 = getelementptr inbounds i8, i8* %13, i64 4
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1, !tbaa !2451
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to float*
  store float 0.000000e+00, float* %20, align 1, !tbaa !2451
  %21 = getelementptr inbounds i8, i8* %13, i64 12
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1, !tbaa !2451
  %23 = add i64 %9, -12
  %24 = add i64 %12, 16
  store i64 %24, i64* %PC, align 8
  %25 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %26 = load <2 x float>, <2 x float>* %25, align 1
  %27 = extractelement <2 x float> %26, i32 0
  %28 = inttoptr i64 %23 to float*
  store float %27, float* %28, align 4
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -16
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC, align 8
  %33 = bitcast %union.VectorReg* %4 to <2 x float>*
  %34 = load <2 x float>, <2 x float>* %33, align 1
  %35 = extractelement <2 x float> %34, i32 0
  %36 = inttoptr i64 %30 to float*
  store float %35, float* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -12
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 7
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i32*
  store i32 1, i32* %41, align 4
  %42 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 5
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = bitcast [32 x %union.VectorReg]* %3 to float*
  %50 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %48, i32* %50, align 1, !tbaa !2451
  %51 = getelementptr inbounds i8, i8* %42, i64 4
  %52 = bitcast i8* %51 to float*
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %54 = bitcast i64* %53 to float*
  store float 0.000000e+00, float* %54, align 1, !tbaa !2451
  %55 = getelementptr inbounds i8, i8* %42, i64 12
  %56 = bitcast i8* %55 to float*
  store float 0.000000e+00, float* %56, align 1, !tbaa !2451
  %57 = add i64 %43, -20
  %58 = add i64 %45, 10
  store i64 %58, i64* %PC, align 8
  %59 = load <2 x float>, <2 x float>* %25, align 1
  %60 = extractelement <2 x float> %59, i32 0
  %61 = inttoptr i64 %57 to float*
  store float %60, float* %61, align 4
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 2, i32* %66, align 4
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %73 = bitcast i64* %53 to <2 x i32>*
  %74 = bitcast i8* %51 to i32*
  %75 = bitcast i64* %53 to i32*
  %76 = bitcast i8* %55 to i32*
  %77 = bitcast %union.VectorReg* %5 to i8*
  %78 = bitcast %union.VectorReg* %5 to <2 x i32>*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %80 = bitcast i64* %79 to <2 x i32>*
  %81 = bitcast %union.VectorReg* %5 to float*
  %82 = getelementptr inbounds i8, i8* %77, i64 4
  %83 = bitcast i8* %82 to i32*
  %84 = bitcast i64* %79 to i32*
  %85 = getelementptr inbounds i8, i8* %77, i64 12
  %86 = bitcast i8* %85 to i32*
  %87 = bitcast i64* %19 to <2 x i32>*
  %88 = bitcast %union.VectorReg* %5 to <2 x float>*
  %89 = bitcast i8* %17 to i32*
  %90 = bitcast i64* %19 to i32*
  %91 = bitcast i8* %21 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40059e

block_40059e:                                     ; preds = %block_400621, %block_400570
  %92 = phi i64 [ %286, %block_400621 ], [ %.pre, %block_400570 ]
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -8
  %95 = add i64 %92, 4
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, -10
  %99 = icmp ult i32 %97, 10
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %67, align 1, !tbaa !2432
  %101 = and i32 %98, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #9
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %68, align 1, !tbaa !2446
  %106 = xor i32 %98, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %69, align 1, !tbaa !2447
  %110 = icmp eq i32 %98, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %70, align 1, !tbaa !2448
  %112 = lshr i32 %98, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %71, align 1, !tbaa !2449
  %114 = lshr i32 %97, 31
  %115 = xor i32 %112, %114
  %116 = add nuw nsw i32 %115, %114
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %72, align 1, !tbaa !2450
  %119 = icmp ne i8 %113, 0
  %120 = xor i1 %119, %117
  %.demorgan = or i1 %110, %120
  %.v8 = select i1 %.demorgan, i64 10, i64 150
  %121 = add i64 %92, %.v8
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4005a8, label %block_400634

block_40061c:                                     ; preds = %block_400600, %block_4005df
  %122 = phi i64 [ %.pre5, %block_400600 ], [ %192, %block_4005df ]
  %123 = add i64 %122, 5
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %.pre6 = load i64, i64* %RBP, align 8
  br label %block_400621

block_400634:                                     ; preds = %block_40059e
  %124 = add i64 %93, -16
  %125 = add i64 %121, 5
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  store float 0.000000e+00, float* %54, align 1, !tbaa !2451
  store float 0.000000e+00, float* %56, align 1, !tbaa !2451
  %128 = add i64 %121, 6
  store i64 %128, i64* %PC, align 8
  %129 = load i64, i64* %8, align 8, !tbaa !2428
  %130 = add i64 %129, 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RBP, align 8, !tbaa !2428
  store i64 %130, i64* %8, align 8, !tbaa !2428
  %133 = add i64 %121, 7
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %130 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %PC, align 8, !tbaa !2428
  %136 = add i64 %129, 16
  store i64 %136, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005d0:                                     ; preds = %block_4005a8
  %137 = add i64 %254, 3
  store i64 %137, i64* %PC, align 8
  %138 = load i32, i32* %244, align 4
  %139 = and i32 %138, 3
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = icmp eq i32 %139, 0
  %142 = zext i1 %141 to i8
  store i8 0, i8* %67, align 1, !tbaa !2432
  %143 = tail call i32 @llvm.ctpop.i32(i32 %139) #9
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %68, align 1, !tbaa !2446
  store i8 0, i8* %69, align 1, !tbaa !2447
  store i8 %142, i8* %70, align 1, !tbaa !2448
  store i8 0, i8* %71, align 1, !tbaa !2449
  store i8 0, i8* %72, align 1, !tbaa !2450
  %.v = select i1 %141, i64 15, i64 48
  %147 = add i64 %254, %.v
  %148 = add i64 %240, -16
  %149 = add i64 %147, 5
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  store float 0.000000e+00, float* %54, align 1, !tbaa !2451
  store float 0.000000e+00, float* %56, align 1, !tbaa !2451
  %152 = add i64 %240, -20
  %153 = add i64 %147, 10
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %16, align 1, !tbaa !2451
  store float 0.000000e+00, float* %18, align 1, !tbaa !2451
  store float 0.000000e+00, float* %20, align 1, !tbaa !2451
  store float 0.000000e+00, float* %22, align 1, !tbaa !2451
  %156 = add i64 %240, -12
  %157 = add i64 %147, 15
  store i64 %157, i64* %PC, align 8
  %158 = load <2 x i32>, <2 x i32>* %78, align 1
  %159 = load <2 x i32>, <2 x i32>* %80, align 1
  %160 = inttoptr i64 %156 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = sitofp i32 %161 to float
  store float %162, float* %81, align 1, !tbaa !2451
  %163 = extractelement <2 x i32> %158, i32 1
  store i32 %163, i32* %83, align 1, !tbaa !2451
  %164 = extractelement <2 x i32> %159, i32 0
  store i32 %164, i32* %84, align 1, !tbaa !2451
  %165 = extractelement <2 x i32> %159, i32 1
  store i32 %165, i32* %86, align 1, !tbaa !2451
  %166 = load <2 x float>, <2 x float>* %33, align 1
  %167 = load <2 x i32>, <2 x i32>* %87, align 1
  %168 = load <2 x float>, <2 x float>* %88, align 1
  %169 = extractelement <2 x float> %166, i32 0
  %170 = extractelement <2 x float> %168, i32 0
  %171 = fdiv float %169, %170
  store float %171, float* %15, align 1, !tbaa !2451
  %172 = bitcast <2 x float> %166 to <2 x i32>
  %173 = extractelement <2 x i32> %172, i32 1
  store i32 %173, i32* %89, align 1, !tbaa !2451
  %174 = extractelement <2 x i32> %167, i32 0
  store i32 %174, i32* %90, align 1, !tbaa !2451
  %175 = extractelement <2 x i32> %167, i32 1
  store i32 %175, i32* %91, align 1, !tbaa !2451
  %176 = add i64 %147, 23
  store i64 %176, i64* %PC, align 8
  %177 = load <2 x float>, <2 x float>* %25, align 1
  %178 = load <2 x i32>, <2 x i32>* %73, align 1
  %179 = load <2 x float>, <2 x float>* %33, align 1
  %180 = extractelement <2 x float> %177, i32 0
  %181 = extractelement <2 x float> %179, i32 0
  br i1 %141, label %block_4005df, label %block_400600

block_4005df:                                     ; preds = %block_4005d0
  %182 = fadd float %180, %181
  store float %182, float* %49, align 1, !tbaa !2451
  %183 = bitcast <2 x float> %177 to <2 x i32>
  %184 = extractelement <2 x i32> %183, i32 1
  store i32 %184, i32* %74, align 1, !tbaa !2451
  %185 = extractelement <2 x i32> %178, i32 0
  store i32 %185, i32* %75, align 1, !tbaa !2451
  %186 = extractelement <2 x i32> %178, i32 1
  store i32 %186, i32* %76, align 1, !tbaa !2451
  %187 = add i64 %147, 28
  store i64 %187, i64* %PC, align 8
  %188 = load <2 x float>, <2 x float>* %25, align 1
  %189 = extractelement <2 x float> %188, i32 0
  %190 = inttoptr i64 %148 to float*
  store float %189, float* %190, align 4
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, 33
  store i64 %192, i64* %PC, align 8, !tbaa !2428
  br label %block_40061c

block_4005a8:                                     ; preds = %block_40059e
  %193 = add i64 %93, -12
  %194 = add i64 %121, 3
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX, align 8, !tbaa !2428
  %198 = add i64 %121, 7
  store i64 %198, i64* %PC, align 8
  %199 = load i32, i32* %96, align 4
  %200 = sext i32 %196 to i64
  %201 = sext i32 %199 to i64
  %202 = mul nsw i64 %201, %200
  %203 = trunc i64 %202 to i32
  %204 = and i64 %202, 4294967295
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = shl i64 %202, 32
  %206 = ashr exact i64 %205, 32
  %207 = icmp ne i64 %206, %202
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %67, align 1, !tbaa !2432
  %209 = and i32 %203, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #9
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %68, align 1, !tbaa !2446
  store i8 0, i8* %69, align 1, !tbaa !2447
  store i8 0, i8* %70, align 1, !tbaa !2448
  %214 = lshr i32 %203, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %71, align 1, !tbaa !2449
  store i8 %208, i8* %72, align 1, !tbaa !2450
  %216 = trunc i64 %202 to i32
  %217 = add i64 %121, 10
  store i64 %217, i64* %PC, align 8
  store i32 %216, i32* %195, align 4
  %218 = load i64, i64* %RBP, align 8
  %219 = add i64 %218, -20
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 5
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  store float 0.000000e+00, float* %54, align 1, !tbaa !2451
  store float 0.000000e+00, float* %56, align 1, !tbaa !2451
  %224 = add i64 %218, -4
  %225 = add i64 %220, 10
  store i64 %225, i64* %PC, align 8
  %226 = load <2 x float>, <2 x float>* %25, align 1
  %227 = load <2 x i32>, <2 x i32>* %73, align 1
  %228 = inttoptr i64 %224 to float*
  %229 = load float, float* %228, align 4
  %230 = extractelement <2 x float> %226, i32 0
  %231 = fmul float %230, %229
  store float %231, float* %49, align 1, !tbaa !2451
  %232 = bitcast <2 x float> %226 to <2 x i32>
  %233 = extractelement <2 x i32> %232, i32 1
  store i32 %233, i32* %74, align 1, !tbaa !2451
  %234 = extractelement <2 x i32> %227, i32 0
  store i32 %234, i32* %75, align 1, !tbaa !2451
  %235 = extractelement <2 x i32> %227, i32 1
  store i32 %235, i32* %76, align 1, !tbaa !2451
  %236 = add i64 %220, 15
  store i64 %236, i64* %PC, align 8
  %237 = load <2 x float>, <2 x float>* %25, align 1
  %238 = extractelement <2 x float> %237, i32 0
  %239 = inttoptr i64 %219 to float*
  store float %238, float* %239, align 4
  %240 = load i64, i64* %RBP, align 8
  %241 = add i64 %240, -8
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, 3
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 1
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %67, align 1, !tbaa !2432
  %248 = tail call i32 @llvm.ctpop.i32(i32 %246) #9
  %249 = trunc i32 %248 to i8
  %250 = xor i8 %249, 1
  store i8 %250, i8* %68, align 1, !tbaa !2446
  store i8 0, i8* %69, align 1, !tbaa !2447
  %251 = trunc i32 %246 to i8
  %252 = xor i8 %251, 1
  store i8 %252, i8* %70, align 1, !tbaa !2448
  store i8 0, i8* %71, align 1, !tbaa !2449
  store i8 0, i8* %72, align 1, !tbaa !2450
  %253 = icmp eq i8 %252, 0
  %.v7 = select i1 %253, i64 96, i64 15
  %254 = add i64 %242, %.v7
  store i64 %254, i64* %PC, align 8, !tbaa !2428
  br i1 %253, label %block_400621, label %block_4005d0

block_400621:                                     ; preds = %block_4005a8, %block_40061c
  %255 = phi i64 [ %240, %block_4005a8 ], [ %.pre6, %block_40061c ]
  %256 = phi i64 [ %254, %block_4005a8 ], [ %123, %block_40061c ]
  %257 = add i64 %255, -8
  %258 = add i64 %256, 8
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, 1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX, align 8, !tbaa !2428
  %263 = icmp eq i32 %260, -1
  %264 = icmp eq i32 %261, 0
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %67, align 1, !tbaa !2432
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #9
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %68, align 1, !tbaa !2446
  %272 = xor i32 %261, %260
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %69, align 1, !tbaa !2447
  %276 = zext i1 %264 to i8
  store i8 %276, i8* %70, align 1, !tbaa !2448
  %277 = lshr i32 %261, 31
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %71, align 1, !tbaa !2449
  %279 = lshr i32 %260, 31
  %280 = xor i32 %277, %279
  %281 = add nuw nsw i32 %280, %277
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %72, align 1, !tbaa !2450
  %284 = add i64 %256, 14
  store i64 %284, i64* %PC, align 8
  store i32 %261, i32* %259, align 4
  %285 = load i64, i64* %PC, align 8
  %286 = add i64 %285, -145
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  br label %block_40059e

block_400600:                                     ; preds = %block_4005d0
  %287 = fsub float %180, %181
  store float %287, float* %49, align 1, !tbaa !2451
  %288 = bitcast <2 x float> %177 to <2 x i32>
  %289 = extractelement <2 x i32> %288, i32 1
  store i32 %289, i32* %74, align 1, !tbaa !2451
  %290 = extractelement <2 x i32> %178, i32 0
  store i32 %290, i32* %75, align 1, !tbaa !2451
  %291 = extractelement <2 x i32> %178, i32 1
  store i32 %291, i32* %76, align 1, !tbaa !2451
  %292 = add i64 %147, 28
  store i64 %292, i64* %PC, align 8
  %293 = load <2 x float>, <2 x float>* %25, align 1
  %294 = extractelement <2 x float> %293, i32 0
  %295 = inttoptr i64 %148 to float*
  store float %294, float* %295, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_40061c
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400670_Printcomplex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %9, i64* %13, align 8
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -56
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 48
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #9
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 %12, 16
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2449
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2450
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
  %44 = add i64 %11, -16
  %45 = load i64, i64* %RDI, align 8
  %46 = add i64 %14, 21
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -12
  %50 = load i32, i32* %ESI, align 4
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -16
  %56 = load i32, i32* %EDX, align 4
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -20
  %62 = load i32, i32* %ECX, align 4
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %RAX, align 8
  %67 = load i64, i64* %PC, align 8
  store i64 %66, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %68 = add i64 %67, -639
  %69 = add i64 %67, 10
  %70 = load i64, i64* %RSP, align 8, !tbaa !2428
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %69, i64* %72, align 8
  store i64 %71, i64* %RSP, align 8, !tbaa !2428
  store i64 %68, i64* %PC, align 8, !tbaa !2428
  %73 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -12
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %75 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RCX, align 8, !tbaa !2428
  %81 = add i64 %74, -24
  %82 = add i64 %76, 6
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  store i32 %79, i32* %83, align 4
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -28
  %86 = load i32, i32* %EAX, align 4
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %89, align 4
  %90 = bitcast [32 x %union.VectorReg]* %7 to double*
  %91 = bitcast %union.VectorReg* %8 to double*
  %.pre = load i64, i64* %PC, align 8
  %.pre3 = load i64, i64* %RBP, align 8
  br label %block_4006a2

block_400732:                                     ; preds = %block_4006a2
  %92 = load i64, i64* %RSP, align 8
  %93 = add i64 %92, 48
  store i64 %93, i64* %RSP, align 8, !tbaa !2428
  %94 = icmp ugt i64 %92, -49
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %18, align 1, !tbaa !2432
  %96 = trunc i64 %93 to i32
  %97 = and i32 %96, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97) #9
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %25, align 1, !tbaa !2446
  %102 = xor i64 %92, 16
  %103 = xor i64 %102, %93
  %104 = lshr i64 %103, 4
  %105 = trunc i64 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %31, align 1, !tbaa !2447
  %107 = icmp eq i64 %93, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %34, align 1, !tbaa !2448
  %109 = lshr i64 %93, 63
  %110 = trunc i64 %109 to i8
  store i8 %110, i8* %37, align 1, !tbaa !2449
  %111 = lshr i64 %92, 63
  %112 = xor i64 %109, %111
  %113 = add nuw nsw i64 %112, %109
  %114 = icmp eq i64 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %43, align 1, !tbaa !2450
  %116 = add i64 %334, 5
  store i64 %116, i64* %PC, align 8
  %117 = add i64 %92, 56
  %118 = inttoptr i64 %93 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RBP, align 8, !tbaa !2428
  store i64 %117, i64* %RSP, align 8, !tbaa !2428
  %120 = add i64 %334, 6
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %117 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %PC, align 8, !tbaa !2428
  %123 = add i64 %92, 64
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %250

block_4006a2:                                     ; preds = %block_4006a2, %block_400670
  %124 = phi i64 [ %.pre3, %block_400670 ], [ %296, %block_4006a2 ]
  %125 = phi i64 [ %.pre, %block_400670 ], [ %334, %block_4006a2 ]
  %MEMORY.0 = phi %struct.Memory* [ %73, %block_400670 ], [ %250, %block_4006a2 ]
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2428
  %126 = add i64 %124, -8
  %127 = add i64 %125, 14
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  %130 = add i64 %124, -24
  %131 = add i64 %125, 18
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %RCX, align 8, !tbaa !2428
  %135 = shl nsw i64 %134, 3
  %136 = add i64 %135, %129
  %137 = add i64 %125, 23
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %136 to float*
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  store double %140, double* %90, align 1, !tbaa !2455
  %141 = add i64 %125, 27
  store i64 %141, i64* %PC, align 8
  %142 = load i64, i64* %128, align 8
  store i64 %142, i64* %RAX, align 8, !tbaa !2428
  %143 = add i64 %125, 31
  store i64 %143, i64* %PC, align 8
  %144 = load i32, i32* %132, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  %146 = shl nsw i64 %145, 3
  %147 = add i64 %142, 4
  %148 = add i64 %147, %146
  %149 = add i64 %125, 37
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to float*
  %151 = load float, float* %150, align 4
  %152 = fpext float %151 to double
  store double %152, double* %91, align 1, !tbaa !2455
  store i8 2, i8* %AL, align 1, !tbaa !2454
  %153 = add i64 %125, -658
  %154 = add i64 %125, 44
  %155 = load i64, i64* %RSP, align 8, !tbaa !2428
  %156 = add i64 %155, -8
  %157 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %157, align 8
  store i64 %156, i64* %RSP, align 8, !tbaa !2428
  store i64 %153, i64* %PC, align 8, !tbaa !2428
  %158 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %159 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2428
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -24
  %162 = add i64 %159, 13
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RDX, align 8, !tbaa !2428
  %166 = add i64 %160, -20
  %167 = add i64 %159, 16
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, %164
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RDX, align 8, !tbaa !2428
  %172 = icmp ult i32 %170, %164
  %173 = icmp ult i32 %170, %169
  %174 = or i1 %172, %173
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %18, align 1, !tbaa !2432
  %176 = and i32 %170, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #9
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %25, align 1, !tbaa !2446
  %181 = xor i32 %169, %164
  %182 = xor i32 %181, %170
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %31, align 1, !tbaa !2447
  %186 = icmp eq i32 %170, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %34, align 1, !tbaa !2448
  %188 = lshr i32 %170, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %37, align 1, !tbaa !2449
  %190 = lshr i32 %164, 31
  %191 = lshr i32 %169, 31
  %192 = xor i32 %188, %190
  %193 = xor i32 %188, %191
  %194 = add nuw nsw i32 %192, %193
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %43, align 1, !tbaa !2450
  %197 = add i64 %159, 19
  store i64 %197, i64* %PC, align 8
  store i32 %170, i32* %163, align 4
  %198 = load i64, i64* %RBP, align 8
  %199 = add i64 %198, -8
  %200 = load i64, i64* %PC, align 8
  %201 = add i64 %200, 4
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %199 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RCX, align 8, !tbaa !2428
  %204 = add i64 %198, -24
  %205 = add i64 %200, 8
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %RSI, align 8, !tbaa !2428
  %209 = shl nsw i64 %208, 3
  %210 = add i64 %209, %203
  %211 = add i64 %200, 13
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to float*
  %213 = load float, float* %212, align 4
  %214 = fpext float %213 to double
  store double %214, double* %90, align 1, !tbaa !2455
  %215 = add i64 %200, 17
  store i64 %215, i64* %PC, align 8
  %216 = load i64, i64* %202, align 8
  store i64 %216, i64* %RCX, align 8, !tbaa !2428
  %217 = add i64 %200, 21
  store i64 %217, i64* %PC, align 8
  %218 = load i32, i32* %206, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %RSI, align 8, !tbaa !2428
  %220 = shl nsw i64 %219, 3
  %221 = add i64 %216, 4
  %222 = add i64 %221, %220
  %223 = add i64 %200, 27
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to float*
  %225 = load float, float* %224, align 4
  %226 = fpext float %225 to double
  store double %226, double* %91, align 1, !tbaa !2455
  %227 = add i64 %198, -32
  %228 = load i32, i32* %EAX, align 4
  %229 = add i64 %200, 30
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %230, align 4
  %231 = load i64, i64* %PC, align 8
  store i8 2, i8* %AL, align 1, !tbaa !2454
  %232 = add i64 %231, -751
  %233 = add i64 %231, 7
  %234 = load i64, i64* %RSP, align 8, !tbaa !2428
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %236, align 8
  store i64 %235, i64* %RSP, align 8, !tbaa !2428
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  %237 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %158)
  %238 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %239 = load i64, i64* %RBP, align 8
  %240 = add i64 %239, -36
  %241 = load i32, i32* %EAX, align 4
  %242 = add i64 %238, 13
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %240 to i32*
  store i32 %241, i32* %243, align 4
  %244 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %245 = add i64 %244, -771
  %246 = add i64 %244, 7
  %247 = load i64, i64* %RSP, align 8, !tbaa !2428
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %RSP, align 8, !tbaa !2428
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  %250 = tail call fastcc %struct.Memory* @ext_619238_printf(%struct.State* nonnull %0, %struct.Memory* %237)
  %251 = load i64, i64* %RBP, align 8
  %252 = add i64 %251, -24
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %252 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RDX, align 8, !tbaa !2428
  %258 = add i64 %251, -20
  %259 = add i64 %253, 6
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = add i32 %261, %256
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RDX, align 8, !tbaa !2428
  %264 = icmp ult i32 %262, %256
  %265 = icmp ult i32 %262, %261
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %18, align 1, !tbaa !2432
  %268 = and i32 %262, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268) #9
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %25, align 1, !tbaa !2446
  %273 = xor i32 %261, %256
  %274 = xor i32 %273, %262
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %31, align 1, !tbaa !2447
  %278 = icmp eq i32 %262, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %34, align 1, !tbaa !2448
  %280 = lshr i32 %262, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %37, align 1, !tbaa !2449
  %282 = lshr i32 %256, 31
  %283 = lshr i32 %261, 31
  %284 = xor i32 %280, %282
  %285 = xor i32 %280, %283
  %286 = add nuw nsw i32 %284, %285
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %43, align 1, !tbaa !2450
  %289 = add i64 %253, 9
  store i64 %289, i64* %PC, align 8
  store i32 %262, i32* %255, align 4
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -40
  %292 = load i32, i32* %EAX, align 4
  %293 = load i64, i64* %PC, align 8
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %295, align 4
  %296 = load i64, i64* %RBP, align 8
  %297 = add i64 %296, -24
  %298 = load i64, i64* %PC, align 8
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %297 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX, align 8, !tbaa !2428
  %303 = add i64 %296, -16
  %304 = add i64 %298, 6
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = sub i32 %301, %306
  %308 = icmp ult i32 %301, %306
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %18, align 1, !tbaa !2432
  %310 = and i32 %307, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310) #9
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %25, align 1, !tbaa !2446
  %315 = xor i32 %306, %301
  %316 = xor i32 %315, %307
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %31, align 1, !tbaa !2447
  %320 = icmp eq i32 %307, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %34, align 1, !tbaa !2448
  %322 = lshr i32 %307, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %37, align 1, !tbaa !2449
  %324 = lshr i32 %301, 31
  %325 = lshr i32 %306, 31
  %326 = xor i32 %325, %324
  %327 = xor i32 %322, %324
  %328 = add nuw nsw i32 %327, %326
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %43, align 1, !tbaa !2450
  %331 = icmp ne i8 %323, 0
  %332 = xor i1 %331, %329
  %333 = or i1 %320, %332
  %.v = select i1 %333, i64 -132, i64 12
  %334 = add i64 %298, %.v
  store i64 %334, i64* %PC, align 8, !tbaa !2428
  br i1 %333, label %block_4006a2, label %block_400732
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
define %struct.Memory* @sub_400640_Min0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400640:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %23 = add i64 %22, -8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %23 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %RSI, align 8, !tbaa !2428
  %29 = add i64 %22, -12
  %30 = add i64 %24, 6
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %29 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %27, %32
  %34 = icmp ult i32 %27, %32
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %35, i8* %36, align 1, !tbaa !2432
  %37 = and i32 %33, 255
  %38 = tail call i32 @llvm.ctpop.i32(i32 %37) #9
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = xor i8 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %42, align 1, !tbaa !2446
  %43 = xor i32 %32, %27
  %44 = xor i32 %43, %33
  %45 = lshr i32 %44, 4
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %47, i8* %48, align 1, !tbaa !2447
  %49 = icmp eq i32 %33, 0
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %50, i8* %51, align 1, !tbaa !2448
  %52 = lshr i32 %33, 31
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %53, i8* %54, align 1, !tbaa !2449
  %55 = lshr i32 %27, 31
  %56 = lshr i32 %32, 31
  %57 = xor i32 %56, %55
  %58 = xor i32 %52, %55
  %59 = add nuw nsw i32 %58, %57
  %60 = icmp eq i32 %59, 2
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %61, i8* %62, align 1, !tbaa !2450
  %63 = icmp ne i8 %53, 0
  %64 = xor i1 %63, %60
  %.v = select i1 %64, i64 12, i64 23
  %65 = add i64 %24, %.v
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC, align 8
  br i1 %64, label %block_400656, label %block_400661

block_400656:                                     ; preds = %block_400640
  %67 = load i32, i32* %26, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = add i64 %22, -4
  %70 = add i64 %65, 6
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %69 to i32*
  store i32 %67, i32* %71, align 4
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 11
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  br label %block_400667

block_400667:                                     ; preds = %block_400661, %block_400656
  %74 = phi i64 [ %.pre, %block_400661 ], [ %73, %block_400656 ]
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -4
  %77 = add i64 %74, 3
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = add i64 %74, 4
  store i64 %81, i64* %PC, align 8
  %82 = load i64, i64* %7, align 8, !tbaa !2428
  %83 = add i64 %82, 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RBP, align 8, !tbaa !2428
  store i64 %83, i64* %7, align 8, !tbaa !2428
  %86 = add i64 %74, 5
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %83 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %PC, align 8, !tbaa !2428
  %89 = add i64 %82, 16
  store i64 %89, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400661:                                     ; preds = %block_400640
  %90 = load i32, i32* %31, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX, align 8, !tbaa !2428
  %92 = add i64 %22, -4
  %93 = add i64 %65, 6
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %90, i32* %94, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400667
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400ee0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400ee0:
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
  store i8 %21, i8* %11, align 1, !tbaa !2454
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2454
  store i8 0, i8* %13, align 1, !tbaa !2454
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2454
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2454
  store i8 0, i8* %16, align 1, !tbaa !2454
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
define %struct.Memory* @sub_400e30_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400e30:
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
  br label %block_400e46

block_400e63:                                     ; preds = %block_400e46
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

block_400e46:                                     ; preds = %block_400e50, %block_400e30
  %78 = phi i64 [ %.pre, %block_400e30 ], [ %145, %block_400e50 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400e30 ], [ %113, %block_400e50 ]
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -8
  %81 = add i64 %78, 4
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, -10
  %85 = icmp ult i32 %83, 10
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
  br i1 %106, label %block_400e50, label %block_400e63

block_400e50:                                     ; preds = %block_400e46
  %108 = add i64 %107, -368
  %109 = add i64 %107, 5
  %110 = load i64, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %113 = tail call %struct.Memory* @sub_400ce0_Oscar(%struct.State* nonnull %0, i64 %108, %struct.Memory* %MEMORY.0)
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
  br label %block_400e46
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
  store i64 ptrtoint (void ()* @callback_sub_400ee0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_400e70___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400ce0_Oscar(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400ce0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -24
  %13 = icmp ult i64 %9, 16
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
  %23 = xor i64 %9, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
  store i64 256, i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%e_type* @e to i64), i64* %RSI, align 8, !tbaa !2428
  %41 = add i64 %11, -1361
  %42 = add i64 %11, 27
  %43 = add i64 %8, -32
  %44 = inttoptr i64 %43 to i64*
  store i64 %42, i64* %44, align 8
  store i64 %43, i64* %RSP, align 8, !tbaa !2428
  store i64 %41, i64* %PC, align 8, !tbaa !2428
  %45 = tail call %struct.Memory* @sub_400790_Exptab(%struct.State* nonnull %0, i64 %41, %struct.Memory* %2)
  %46 = load i64, i64* %PC, align 8
  store i64 5767, i64* bitcast (%seed_type* @seed to i64*), align 8
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -4
  %49 = add i64 %46, 19
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  store i32 1, i32* %50, align 4
  %51 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %52 = bitcast [32 x %union.VectorReg]* %3 to i32*
  %53 = getelementptr inbounds i8, i8* %51, i64 4
  %54 = bitcast i8* %53 to float*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to float*
  %57 = getelementptr inbounds i8, i8* %51, i64 12
  %58 = bitcast i8* %57 to float*
  %59 = bitcast %union.VectorReg* %4 to i8*
  %60 = bitcast %union.VectorReg* %4 to float*
  %61 = bitcast %union.VectorReg* %4 to i32*
  %62 = getelementptr inbounds i8, i8* %59, i64 4
  %63 = bitcast i8* %62 to float*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %65 = bitcast i64* %64 to float*
  %66 = getelementptr inbounds i8, i8* %59, i64 12
  %67 = bitcast i8* %66 to float*
  %68 = bitcast %union.VectorReg* %5 to i8*
  %69 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %70 = bitcast i64* %64 to <2 x i32>*
  %71 = bitcast %union.VectorReg* %5 to i32*
  %72 = getelementptr inbounds i8, i8* %68, i64 4
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %75 = bitcast i64* %74 to i32*
  %76 = getelementptr inbounds i8, i8* %68, i64 12
  %77 = bitcast i8* %76 to i32*
  %78 = bitcast %union.VectorReg* %5 to <2 x float>*
  %79 = bitcast i64* %74 to <2 x i32>*
  %80 = bitcast %union.VectorReg* %5 to float*
  %81 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %82 = bitcast %union.VectorReg* %4 to <2 x float>*
  %83 = bitcast i8* %62 to i32*
  %84 = bitcast i64* %64 to i32*
  %85 = bitcast i8* %66 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400d0f

block_400d1c:                                     ; preds = %block_400d0f
  %86 = add i64 %222, -8
  store i64 %86, i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%zr_type* @zr to i64), i64* %RSI, align 8, !tbaa !2428
  %87 = load i64, i64* bitcast (%seed_type* @seed to i64*), align 8
  store i64 %87, i64* %RAX, align 8, !tbaa !2428
  %88 = trunc i64 %87 to i32
  %89 = and i64 %87, 4294967295
  store i64 %89, i64* %RCX, align 8, !tbaa !2428
  %90 = add i64 %250, 27
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %86 to i32*
  store i32 %88, i32* %91, align 4
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, -1527
  %94 = add i64 %92, 5
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call %struct.Memory* @sub_400740_Uniform11(%struct.State* nonnull %0, i64 %93, %struct.Memory* %45)
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -8
  %101 = load i64, i64* %PC, align 8
  store i64 %100, i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%zi_type* @zi to i64), i64* %RSI, align 8, !tbaa !2428
  %102 = add i64 %101, 18
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %100 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %RAX, align 8, !tbaa !2428
  store i64 %105, i64* bitcast (%seed_type* @seed to i64*), align 8
  %106 = add i64 %101, -1532
  %107 = add i64 %101, 31
  %108 = load i64, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %108, -8
  %110 = inttoptr i64 %109 to i64*
  store i64 %107, i64* %110, align 8
  store i64 %109, i64* %RSP, align 8, !tbaa !2428
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  %111 = tail call %struct.Memory* @sub_400740_Uniform11(%struct.State* nonnull %0, i64 %106, %struct.Memory* %45)
  %112 = load i64, i64* %PC, align 8
  %113 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 32) to i32*), align 16
  store i32 %113, i32* %52, align 1, !tbaa !2451
  store float 0.000000e+00, float* %54, align 1, !tbaa !2451
  store float 0.000000e+00, float* %56, align 1, !tbaa !2451
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  %114 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 36) to i32*), align 4
  store i32 %114, i32* %61, align 1, !tbaa !2451
  store float 0.000000e+00, float* %63, align 1, !tbaa !2451
  store float 0.000000e+00, float* %65, align 1, !tbaa !2451
  store float 0.000000e+00, float* %67, align 1, !tbaa !2451
  %115 = load i64, i64* %RBP, align 8
  %116 = add i64 %115, -8
  %117 = add i64 %112, 20
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  store i64 %120, i64* bitcast (%seed_type* @seed to i64*), align 8
  %121 = load <2 x i32>, <2 x i32>* %69, align 1
  %122 = load <2 x i32>, <2 x i32>* %70, align 1
  %123 = extractelement <2 x i32> %121, i32 0
  store i32 %123, i32* %71, align 1, !tbaa !2451
  %124 = extractelement <2 x i32> %121, i32 1
  store i32 %124, i32* %73, align 1, !tbaa !2451
  %125 = extractelement <2 x i32> %122, i32 0
  store i32 %125, i32* %75, align 1, !tbaa !2451
  %126 = extractelement <2 x i32> %122, i32 1
  store i32 %126, i32* %77, align 1, !tbaa !2451
  %127 = load <2 x float>, <2 x float>* %78, align 1
  %128 = load <2 x i32>, <2 x i32>* %79, align 1
  %129 = load float, float* bitcast (%zr_type* @zr to float*), align 8
  %130 = extractelement <2 x float> %127, i32 0
  %131 = fmul float %130, %129
  store float %131, float* %80, align 1, !tbaa !2451
  %132 = bitcast <2 x float> %127 to <2 x i32>
  %133 = extractelement <2 x i32> %132, i32 1
  store i32 %133, i32* %73, align 1, !tbaa !2451
  %134 = extractelement <2 x i32> %128, i32 0
  store i32 %134, i32* %75, align 1, !tbaa !2451
  %135 = extractelement <2 x i32> %128, i32 1
  store i32 %135, i32* %77, align 1, !tbaa !2451
  %136 = load <2 x float>, <2 x float>* %78, align 1
  %137 = load <2 x i32>, <2 x i32>* %79, align 1
  %138 = load <2 x float>, <2 x float>* %81, align 1
  %139 = extractelement <2 x float> %136, i32 0
  %140 = extractelement <2 x float> %138, i32 0
  %141 = fsub float %139, %140
  store float %141, float* %80, align 1, !tbaa !2451
  %142 = bitcast <2 x float> %136 to <2 x i32>
  %143 = extractelement <2 x i32> %142, i32 1
  store i32 %143, i32* %73, align 1, !tbaa !2451
  %144 = extractelement <2 x i32> %137, i32 0
  store i32 %144, i32* %75, align 1, !tbaa !2451
  %145 = extractelement <2 x i32> %137, i32 1
  store i32 %145, i32* %77, align 1, !tbaa !2451
  %146 = add i64 %115, -4
  %147 = add i64 %112, 48
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  %151 = shl nsw i64 %150, 3
  %152 = add i64 %151, ptrtoint (%z_type* @z to i64)
  %153 = add i64 %112, 57
  store i64 %153, i64* %PC, align 8
  %154 = load <2 x float>, <2 x float>* %78, align 1
  %155 = extractelement <2 x float> %154, i32 0
  %156 = inttoptr i64 %152 to float*
  store float %155, float* %156, align 8
  %157 = load i64, i64* %PC, align 8
  %158 = load <2 x float>, <2 x float>* %82, align 1
  %159 = load <2 x i32>, <2 x i32>* %70, align 1
  %160 = load float, float* bitcast (%zi_type* @zi to float*), align 8
  %161 = extractelement <2 x float> %158, i32 0
  %162 = fmul float %161, %160
  store float %162, float* %60, align 1, !tbaa !2451
  %163 = bitcast <2 x float> %158 to <2 x i32>
  %164 = extractelement <2 x i32> %163, i32 1
  store i32 %164, i32* %83, align 1, !tbaa !2451
  %165 = extractelement <2 x i32> %159, i32 0
  store i32 %165, i32* %84, align 1, !tbaa !2451
  %166 = extractelement <2 x i32> %159, i32 1
  store i32 %166, i32* %85, align 1, !tbaa !2451
  %167 = load <2 x float>, <2 x float>* %82, align 1
  %168 = load <2 x i32>, <2 x i32>* %70, align 1
  %169 = load <2 x float>, <2 x float>* %81, align 1
  %170 = extractelement <2 x float> %167, i32 0
  %171 = extractelement <2 x float> %169, i32 0
  %172 = fsub float %170, %171
  store float %172, float* %60, align 1, !tbaa !2451
  %173 = bitcast <2 x float> %167 to <2 x i32>
  %174 = extractelement <2 x i32> %173, i32 1
  store i32 %174, i32* %83, align 1, !tbaa !2451
  %175 = extractelement <2 x i32> %168, i32 0
  store i32 %175, i32* %84, align 1, !tbaa !2451
  %176 = extractelement <2 x i32> %168, i32 1
  store i32 %176, i32* %85, align 1, !tbaa !2451
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -4
  %179 = add i64 %157, 17
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %RAX, align 8, !tbaa !2428
  %183 = shl nsw i64 %182, 3
  %184 = add i64 %183, add (i64 ptrtoint (%z_type* @z to i64), i64 4)
  %185 = add i64 %157, 26
  store i64 %185, i64* %PC, align 8
  %186 = load <2 x float>, <2 x float>* %82, align 1
  %187 = extractelement <2 x float> %186, i32 0
  %188 = inttoptr i64 %184 to float*
  store float %187, float* %188, align 4
  %189 = load i64, i64* %RBP, align 8
  %190 = add i64 %189, -4
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = add i32 %194, 1
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = icmp eq i32 %194, -1
  %198 = icmp eq i32 %195, 0
  %199 = or i1 %197, %198
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %15, align 1, !tbaa !2432
  %201 = and i32 %195, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #9
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %22, align 1, !tbaa !2446
  %206 = xor i32 %195, %194
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %28, align 1, !tbaa !2447
  %210 = zext i1 %198 to i8
  store i8 %210, i8* %31, align 1, !tbaa !2448
  %211 = lshr i32 %195, 31
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %34, align 1, !tbaa !2449
  %213 = lshr i32 %194, 31
  %214 = xor i32 %211, %213
  %215 = add nuw nsw i32 %214, %211
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %40, align 1, !tbaa !2450
  %218 = add i64 %191, 9
  store i64 %218, i64* %PC, align 8
  store i32 %195, i32* %193, align 4
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, -168
  store i64 %220, i64* %PC, align 8, !tbaa !2428
  br label %block_400d0f

block_400d0f:                                     ; preds = %block_400d1c, %block_400ce0
  %221 = phi i64 [ %220, %block_400d1c ], [ %.pre, %block_400ce0 ]
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -4
  %224 = add i64 %221, 7
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = add i32 %226, -256
  %228 = icmp ult i32 %226, 256
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %15, align 1, !tbaa !2432
  %230 = and i32 %227, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #9
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %22, align 1, !tbaa !2446
  %235 = xor i32 %227, %226
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %28, align 1, !tbaa !2447
  %239 = icmp eq i32 %227, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %31, align 1, !tbaa !2448
  %241 = lshr i32 %227, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %34, align 1, !tbaa !2449
  %243 = lshr i32 %226, 31
  %244 = xor i32 %241, %243
  %245 = add nuw nsw i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %40, align 1, !tbaa !2450
  %248 = icmp ne i8 %242, 0
  %249 = xor i1 %248, %246
  %.demorgan = or i1 %239, %249
  %.v = select i1 %.demorgan, i64 13, i64 173
  %250 = add i64 %221, %.v
  store i64 %250, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400d1c, label %block_400dbc

block_400dcd:                                     ; preds = %block_400dc3
  store i64 256, i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%z_type* @z to i64), i64* %RSI, align 8, !tbaa !2428
  store i64 ptrtoint (%w_type* @w to i64), i64* %RDX, align 8, !tbaa !2428
  store i64 ptrtoint (%e_type* @e to i64), i64* %RCX, align 8, !tbaa !2428
  %251 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 28) to i32*), align 4
  store i32 %251, i32* %52, align 1, !tbaa !2451
  store float 0.000000e+00, float* %54, align 1, !tbaa !2451
  store float 0.000000e+00, float* %56, align 1, !tbaa !2451
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  %252 = add i64 %359, -925
  %253 = add i64 %359, 48
  %254 = load i64, i64* %RSP, align 8, !tbaa !2428
  %255 = add i64 %254, -8
  %256 = inttoptr i64 %255 to i64*
  store i64 %253, i64* %256, align 8
  store i64 %255, i64* %RSP, align 8, !tbaa !2428
  store i64 %252, i64* %PC, align 8, !tbaa !2428
  %257 = tail call %struct.Memory* @sub_400a30_Fft(%struct.State* nonnull %0, i64 %252, %struct.Memory* %MEMORY.1)
  %258 = load i64, i64* %RBP, align 8
  %259 = add i64 %258, -4
  %260 = load i64, i64* %PC, align 8
  %261 = add i64 %260, 3
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = add i32 %263, 1
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX, align 8, !tbaa !2428
  %266 = icmp eq i32 %263, -1
  %267 = icmp eq i32 %264, 0
  %268 = or i1 %266, %267
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %15, align 1, !tbaa !2432
  %270 = and i32 %264, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270) #9
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %22, align 1, !tbaa !2446
  %275 = xor i32 %264, %263
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %28, align 1, !tbaa !2447
  %279 = zext i1 %267 to i8
  store i8 %279, i8* %31, align 1, !tbaa !2448
  %280 = lshr i32 %264, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %34, align 1, !tbaa !2449
  %282 = lshr i32 %263, 31
  %283 = xor i32 %280, %282
  %284 = add nuw nsw i32 %283, %280
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %40, align 1, !tbaa !2450
  %287 = add i64 %260, 9
  store i64 %287, i64* %PC, align 8
  store i32 %264, i32* %262, align 4
  %288 = load i64, i64* %PC, align 8
  %289 = add i64 %288, -67
  store i64 %289, i64* %PC, align 8, !tbaa !2428
  br label %block_400dc3

block_400e0b:                                     ; preds = %block_400dc3
  store i64 ptrtoint (%z_type* @z to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  store i64 17, i64* %RCX, align 8, !tbaa !2428
  %290 = add i64 %359, -1947
  %291 = add i64 %359, 30
  %292 = load i64, i64* %RSP, align 8, !tbaa !2428
  %293 = add i64 %292, -8
  %294 = inttoptr i64 %293 to i64*
  store i64 %291, i64* %294, align 8
  store i64 %293, i64* %RSP, align 8, !tbaa !2428
  store i64 %290, i64* %PC, align 8, !tbaa !2428
  %295 = tail call %struct.Memory* @sub_400670_Printcomplex(%struct.State* nonnull %0, i64 %290, %struct.Memory* %MEMORY.1)
  %296 = load i64, i64* %RSP, align 8
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %296, 16
  store i64 %298, i64* %RSP, align 8, !tbaa !2428
  %299 = icmp ugt i64 %296, -17
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %15, align 1, !tbaa !2432
  %301 = trunc i64 %298 to i32
  %302 = and i32 %301, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #9
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %22, align 1, !tbaa !2446
  %307 = xor i64 %296, 16
  %308 = xor i64 %307, %298
  %309 = lshr i64 %308, 4
  %310 = trunc i64 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %28, align 1, !tbaa !2447
  %312 = icmp eq i64 %298, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %31, align 1, !tbaa !2448
  %314 = lshr i64 %298, 63
  %315 = trunc i64 %314 to i8
  store i8 %315, i8* %34, align 1, !tbaa !2449
  %316 = lshr i64 %296, 63
  %317 = xor i64 %314, %316
  %318 = add nuw nsw i64 %317, %314
  %319 = icmp eq i64 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %40, align 1, !tbaa !2450
  %321 = add i64 %297, 5
  store i64 %321, i64* %PC, align 8
  %322 = add i64 %296, 24
  %323 = inttoptr i64 %298 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RBP, align 8, !tbaa !2428
  store i64 %322, i64* %RSP, align 8, !tbaa !2428
  %325 = add i64 %297, 6
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %322 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %PC, align 8, !tbaa !2428
  %328 = add i64 %296, 32
  store i64 %328, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %295

block_400dc3:                                     ; preds = %block_400dbc, %block_400dcd
  %329 = phi i64 [ %.pre6, %block_400dbc ], [ %289, %block_400dcd ]
  %MEMORY.1 = phi %struct.Memory* [ %45, %block_400dbc ], [ %257, %block_400dcd ]
  %330 = load i64, i64* %RBP, align 8
  %331 = add i64 %330, -4
  %332 = add i64 %329, 4
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = add i32 %334, -20
  %336 = icmp ult i32 %334, 20
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %15, align 1, !tbaa !2432
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338) #9
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %22, align 1, !tbaa !2446
  %343 = xor i32 %334, 16
  %344 = xor i32 %343, %335
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %28, align 1, !tbaa !2447
  %348 = icmp eq i32 %335, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %31, align 1, !tbaa !2448
  %350 = lshr i32 %335, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %34, align 1, !tbaa !2449
  %352 = lshr i32 %334, 31
  %353 = xor i32 %350, %352
  %354 = add nuw nsw i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %40, align 1, !tbaa !2450
  %357 = icmp ne i8 %351, 0
  %358 = xor i1 %357, %355
  %.demorgan7 = or i1 %348, %358
  %.v8 = select i1 %.demorgan7, i64 10, i64 72
  %359 = add i64 %329, %.v8
  store i64 %359, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan7, label %block_400dcd, label %block_400e0b

block_400dbc:                                     ; preds = %block_400d0f
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %360 = add i64 %250, 7
  store i64 %360, i64* %PC, align 8
  store i32 1, i32* %225, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400dc3
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
define %struct.Memory* @sub_400ee4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400ee4:
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
define %struct.Memory* @sub_400e70___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400e70:
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
  store i8 %51, i8* %43, align 1, !tbaa !2454
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2454
  store i8 0, i8* %45, align 1, !tbaa !2454
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2454
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2454
  store i8 0, i8* %48, align 1, !tbaa !2454
  %63 = add i64 %38, -2731
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
  br i1 %76, label %block_400ec6, label %block_400ea6

block_400ec6.loopexit:                            ; preds = %block_400eb0
  br label %block_400ec6

block_400ec6:                                     ; preds = %block_400ec6.loopexit, %block_400e70
  %81 = phi i64 [ %80, %block_400e70 ], [ %179, %block_400ec6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_400e70 ], [ %149, %block_400ec6.loopexit ]
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

block_400ea6:                                     ; preds = %block_400e70
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_400eb0

block_400eb0:                                     ; preds = %block_400eb0, %block_400ea6
  %134 = phi i64 [ 0, %block_400ea6 ], [ %152, %block_400eb0 ]
  %135 = phi i64 [ %133, %block_400ea6 ], [ %179, %block_400eb0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_400ea6 ], [ %149, %block_400eb0 ]
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
  br i1 %169, label %block_400ec6.loopexit, label %block_400eb0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400790_Exptab(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400790:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %9, i64* %13, align 8
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -168
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 160
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #9
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 %12, %15
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = icmp eq i64 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %15, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2449
  %37 = lshr i64 %12, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2450
  %43 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %44 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 12) to i32*), align 4
  %45 = bitcast [32 x %union.VectorReg]* %6 to float*
  %46 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %44, i32* %46, align 1, !tbaa !2451
  %47 = getelementptr inbounds i8, i8* %43, i64 4
  %48 = bitcast i8* %47 to float*
  store float 0.000000e+00, float* %48, align 1, !tbaa !2451
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %50 = bitcast i64* %49 to float*
  store float 0.000000e+00, float* %50, align 1, !tbaa !2451
  %51 = getelementptr inbounds i8, i8* %43, i64 12
  %52 = bitcast i8* %51 to float*
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  %53 = bitcast %union.VectorReg* %7 to i8*
  %54 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 16) to i32*), align 16
  %55 = bitcast %union.VectorReg* %7 to float*
  %56 = bitcast %union.VectorReg* %7 to i32*
  store i32 %54, i32* %56, align 1, !tbaa !2451
  %57 = getelementptr inbounds i8, i8* %53, i64 4
  %58 = bitcast i8* %57 to float*
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %60 = bitcast i64* %59 to float*
  store float 0.000000e+00, float* %60, align 1, !tbaa !2451
  %61 = getelementptr inbounds i8, i8* %53, i64 12
  %62 = bitcast i8* %61 to float*
  store float 0.000000e+00, float* %62, align 1, !tbaa !2451
  %63 = add i64 %11, -12
  %64 = load i32, i32* %EDI, align 4
  %65 = add i64 %14, 29
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -16
  %69 = load i64, i64* %RSI, align 8
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -20
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 5
  store i64 %76, i64* %PC, align 8
  %77 = bitcast %union.VectorReg* %7 to <2 x float>*
  %78 = load <2 x float>, <2 x float>* %77, align 1
  %79 = extractelement <2 x float> %78, i32 0
  %80 = inttoptr i64 %74 to float*
  store float %79, float* %80, align 4
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -24
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC, align 8
  %85 = bitcast [32 x %union.VectorReg]* %6 to <2 x float>*
  %86 = load <2 x float>, <2 x float>* %85, align 1
  %87 = extractelement <2 x float> %86, i32 0
  %88 = inttoptr i64 %82 to float*
  store float %87, float* %88, align 4
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -132
  %91 = load i64, i64* %PC, align 8
  %92 = add i64 %91, 10
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %90 to i32*
  store i32 1, i32* %93, align 4
  %94 = bitcast i64* %49 to <2 x i32>*
  %95 = bitcast i8* %47 to i32*
  %96 = bitcast i64* %49 to i32*
  %97 = bitcast i8* %51 to i32*
  %98 = bitcast %union.VectorReg* %8 to i8*
  %99 = bitcast %union.VectorReg* %8 to float*
  %100 = bitcast %union.VectorReg* %8 to i32*
  %101 = getelementptr inbounds i8, i8* %98, i64 4
  %102 = bitcast i8* %101 to float*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast i64* %103 to float*
  %105 = getelementptr inbounds i8, i8* %98, i64 12
  %106 = bitcast i8* %105 to float*
  %107 = bitcast %union.VectorReg* %8 to <2 x float>*
  %108 = bitcast i64* %103 to <2 x i32>*
  %109 = bitcast i8* %101 to i32*
  %110 = bitcast i64* %103 to i32*
  %111 = bitcast i8* %105 to i32*
  %112 = bitcast i64* %59 to <2 x i32>*
  %113 = bitcast i8* %57 to i32*
  %114 = bitcast i64* %59 to i32*
  %115 = bitcast i8* %61 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4007c6

block_4007d3:                                     ; preds = %block_4007c6
  %116 = add i64 %1053, -20
  %117 = add i64 %1082, 5
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %46, align 1, !tbaa !2451
  store float 0.000000e+00, float* %48, align 1, !tbaa !2451
  store float 0.000000e+00, float* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  %120 = add i64 %1053, -24
  %121 = add i64 %1082, 10
  store i64 %121, i64* %PC, align 8
  %122 = load <2 x float>, <2 x float>* %85, align 1
  %123 = load <2 x i32>, <2 x i32>* %94, align 1
  %124 = inttoptr i64 %120 to float*
  %125 = load float, float* %124, align 4
  %126 = extractelement <2 x float> %122, i32 0
  %127 = fdiv float %126, %125
  store float %127, float* %45, align 1, !tbaa !2451
  %128 = bitcast <2 x float> %122 to <2 x i32>
  %129 = extractelement <2 x i32> %128, i32 1
  store i32 %129, i32* %95, align 1, !tbaa !2451
  %130 = extractelement <2 x i32> %123, i32 0
  store i32 %130, i32* %96, align 1, !tbaa !2451
  %131 = extractelement <2 x i32> %123, i32 1
  store i32 %131, i32* %97, align 1, !tbaa !2451
  %132 = add i64 %1082, -611
  %133 = add i64 %1082, 15
  %134 = load i64, i64* %RSP, align 8, !tbaa !2428
  %135 = add i64 %134, -8
  %136 = inttoptr i64 %135 to i64*
  store i64 %133, i64* %136, align 8
  store i64 %135, i64* %RSP, align 8, !tbaa !2428
  store i64 %132, i64* %PC, align 8, !tbaa !2428
  %137 = tail call %struct.Memory* @sub_400570_Cos(%struct.State* nonnull %0, i64 %132, %struct.Memory* %2)
  %138 = load i64, i64* %PC, align 8
  %139 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 4) to i32*), align 4
  store i32 %139, i32* %56, align 1, !tbaa !2451
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  store float 0.000000e+00, float* %60, align 1, !tbaa !2451
  store float 0.000000e+00, float* %62, align 1, !tbaa !2451
  %140 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 24) to i32*), align 8
  store i32 %140, i32* %100, align 1, !tbaa !2451
  store float 0.000000e+00, float* %102, align 1, !tbaa !2451
  store float 0.000000e+00, float* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  %141 = load <2 x float>, <2 x float>* %107, align 1
  %142 = load <2 x i32>, <2 x i32>* %108, align 1
  %143 = load <2 x float>, <2 x float>* %85, align 1
  %144 = extractelement <2 x float> %141, i32 0
  %145 = extractelement <2 x float> %143, i32 0
  %146 = fmul float %144, %145
  store float %146, float* %99, align 1, !tbaa !2451
  %147 = bitcast <2 x float> %141 to <2 x i32>
  %148 = extractelement <2 x i32> %147, i32 1
  store i32 %148, i32* %109, align 1, !tbaa !2451
  %149 = extractelement <2 x i32> %142, i32 0
  store i32 %149, i32* %110, align 1, !tbaa !2451
  %150 = extractelement <2 x i32> %142, i32 1
  store i32 %150, i32* %111, align 1, !tbaa !2451
  %151 = load <2 x float>, <2 x float>* %77, align 1
  %152 = load <2 x i32>, <2 x i32>* %112, align 1
  %153 = load <2 x float>, <2 x float>* %107, align 1
  %154 = extractelement <2 x float> %151, i32 0
  %155 = extractelement <2 x float> %153, i32 0
  %156 = fdiv float %154, %155
  store float %156, float* %55, align 1, !tbaa !2451
  %157 = bitcast <2 x float> %151 to <2 x i32>
  %158 = extractelement <2 x i32> %157, i32 1
  store i32 %158, i32* %113, align 1, !tbaa !2451
  %159 = extractelement <2 x i32> %152, i32 0
  store i32 %159, i32* %114, align 1, !tbaa !2451
  %160 = extractelement <2 x i32> %152, i32 1
  store i32 %160, i32* %115, align 1, !tbaa !2451
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -132
  %163 = add i64 %138, 31
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %RAX, align 8, !tbaa !2428
  %167 = shl nsw i64 %166, 2
  %168 = add i64 %161, -128
  %169 = add i64 %168, %167
  %170 = add i64 %138, 37
  store i64 %170, i64* %PC, align 8
  %171 = load <2 x float>, <2 x float>* %77, align 1
  %172 = extractelement <2 x float> %171, i32 0
  %173 = inttoptr i64 %169 to float*
  store float %172, float* %173, align 4
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -24
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 5
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %46, align 1, !tbaa !2451
  store float 0.000000e+00, float* %48, align 1, !tbaa !2451
  store float 0.000000e+00, float* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  %180 = add i64 %176, 10
  store i64 %180, i64* %PC, align 8
  %181 = load <2 x float>, <2 x float>* %85, align 1
  %182 = load <2 x i32>, <2 x i32>* %94, align 1
  %183 = inttoptr i64 %175 to float*
  %184 = load float, float* %183, align 4
  %185 = extractelement <2 x float> %181, i32 0
  %186 = fadd float %185, %184
  store float %186, float* %45, align 1, !tbaa !2451
  %187 = bitcast <2 x float> %181 to <2 x i32>
  %188 = extractelement <2 x i32> %187, i32 1
  store i32 %188, i32* %95, align 1, !tbaa !2451
  %189 = extractelement <2 x i32> %182, i32 0
  store i32 %189, i32* %96, align 1, !tbaa !2451
  %190 = extractelement <2 x i32> %182, i32 1
  store i32 %190, i32* %97, align 1, !tbaa !2451
  %191 = add i64 %176, 15
  store i64 %191, i64* %PC, align 8
  %192 = load <2 x float>, <2 x float>* %85, align 1
  %193 = extractelement <2 x float> %192, i32 0
  store float %193, float* %183, align 4
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -132
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, 1
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = icmp eq i32 %199, -1
  %203 = icmp eq i32 %200, 0
  %204 = or i1 %202, %203
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %18, align 1, !tbaa !2432
  %206 = and i32 %200, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206) #9
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %25, align 1, !tbaa !2446
  %211 = xor i32 %200, %199
  %212 = lshr i32 %211, 4
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %30, align 1, !tbaa !2447
  %215 = zext i1 %203 to i8
  store i8 %215, i8* %33, align 1, !tbaa !2448
  %216 = lshr i32 %200, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %36, align 1, !tbaa !2449
  %218 = lshr i32 %199, 31
  %219 = xor i32 %216, %218
  %220 = add nuw nsw i32 %219, %216
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %42, align 1, !tbaa !2450
  %223 = add i64 %196, 15
  store i64 %223, i64* %PC, align 8
  store i32 %200, i32* %198, align 4
  %224 = load i64, i64* %PC, align 8
  %225 = add i64 %224, -95
  store i64 %225, i64* %PC, align 8, !tbaa !2428
  br label %block_4007c6

block_40082a:                                     ; preds = %block_4007c6
  %ECX = bitcast %union.anon* %4 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %226 = bitcast [32 x %union.VectorReg]* %6 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %226, align 1, !tbaa !2453
  %227 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 20) to i32*), align 4
  store i32 %227, i32* %56, align 1, !tbaa !2451
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  store float 0.000000e+00, float* %60, align 1, !tbaa !2451
  store float 0.000000e+00, float* %62, align 1, !tbaa !2451
  %228 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 4) to i32*), align 4
  store i32 %228, i32* %100, align 1, !tbaa !2451
  store float 0.000000e+00, float* %102, align 1, !tbaa !2451
  store float 0.000000e+00, float* %104, align 1, !tbaa !2451
  store float 0.000000e+00, float* %106, align 1, !tbaa !2451
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %229 = add i64 %1053, -4
  %230 = add i64 %1082, 27
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RCX, align 8, !tbaa !2428
  %234 = add i64 %1053, -152
  %235 = add i64 %1082, 33
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 2, i32* %236, align 4
  %237 = load i32, i32* %ECX, align 4
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %PC, align 8
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %240 = sext i32 %237 to i64
  %241 = lshr i64 %240, 32
  store i64 %241, i64* %RDX, align 8, !tbaa !2428
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -152
  %244 = add i64 %239, 9
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RCX, align 8, !tbaa !2428
  %248 = add i64 %239, 11
  store i64 %248, i64* %PC, align 8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %250 = sext i32 %246 to i64
  %251 = shl nuw i64 %241, 32
  %252 = or i64 %251, %238
  %253 = sdiv i64 %252, %250
  %254 = shl i64 %253, 32
  %255 = ashr exact i64 %254, 32
  %256 = icmp eq i64 %253, %255
  br i1 %256, label %259, label %257

; <label>:257:                                    ; preds = %block_40082a
  %258 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %248, %struct.Memory* %2) #12
  %.pre9 = load i64, i64* %RBP, align 8
  %.pre10 = load i32, i32* %EAX, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:259:                                    ; preds = %block_40082a
  %260 = srem i64 %252, %250
  %261 = and i64 %253, 4294967295
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = getelementptr inbounds %union.anon, %union.anon* %249, i64 0, i32 0
  %263 = and i64 %260, 4294967295
  store i64 %263, i64* %262, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %264 = trunc i64 %253 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %259, %257
  %265 = phi i64 [ %.pre11, %257 ], [ %248, %259 ]
  %266 = phi i32 [ %.pre10, %257 ], [ %264, %259 ]
  %267 = phi i64 [ %.pre9, %257 ], [ %242, %259 ]
  %268 = phi %struct.Memory* [ %258, %257 ], [ %2, %259 ]
  %269 = add i64 %267, -148
  %270 = add i64 %265, 6
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i32*
  store i32 %266, i32* %271, align 4
  %272 = load i64, i64* %RBP, align 8
  %273 = add i64 %272, -148
  %274 = load i64, i64* %PC, align 8
  %275 = add i64 %274, 6
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %273 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = sext i32 %277 to i64
  %280 = lshr i64 %279, 32
  store i64 %280, i64* %RDX, align 8, !tbaa !2428
  %281 = load i32, i32* %ECX, align 4
  %282 = add i64 %274, 9
  store i64 %282, i64* %PC, align 8
  %283 = sext i32 %281 to i64
  %284 = shl nuw i64 %280, 32
  %285 = or i64 %284, %278
  %286 = sdiv i64 %285, %283
  %287 = shl i64 %286, 32
  %288 = ashr exact i64 %287, 32
  %289 = icmp eq i64 %286, %288
  br i1 %289, label %292, label %290

; <label>:290:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %291 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %282, %struct.Memory* %268) #12
  %.pre12 = load i64, i64* %RBP, align 8
  %.pre13 = load i32, i32* %EAX, align 4
  %.pre14 = load i64, i64* %PC, align 8
  %.pre22 = getelementptr inbounds %union.anon, %union.anon* %249, i64 0, i32 0
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:292:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %293 = srem i64 %285, %283
  %294 = and i64 %286, 4294967295
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = getelementptr inbounds %union.anon, %union.anon* %249, i64 0, i32 0
  %296 = and i64 %293, 4294967295
  store i64 %296, i64* %295, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %297 = trunc i64 %286 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %292, %290
  %.pre-phi = phi i64* [ %295, %292 ], [ %.pre22, %290 ]
  %298 = phi i64 [ %282, %292 ], [ %.pre14, %290 ]
  %299 = phi i32 [ %297, %292 ], [ %.pre13, %290 ]
  %300 = phi i64 [ %272, %292 ], [ %.pre12, %290 ]
  %301 = phi %struct.Memory* [ %268, %292 ], [ %291, %290 ]
  %302 = add i64 %300, -144
  %303 = add i64 %298, 6
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 %299, i32* %304, align 4
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -136
  %307 = load i64, i64* %PC, align 8
  %308 = add i64 %307, 10
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %306 to i32*
  store i32 1, i32* %309, align 4
  %310 = load i64, i64* %RBP, align 8
  %311 = add i64 %310, -16
  %312 = load i64, i64* %PC, align 8
  %313 = add i64 %312, 4
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %311 to i64*
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %RSI, align 8, !tbaa !2428
  %316 = add i64 %315, 8
  %317 = add i64 %312, 9
  store i64 %317, i64* %PC, align 8
  %318 = load <2 x float>, <2 x float>* %107, align 1
  %319 = extractelement <2 x float> %318, i32 0
  %320 = inttoptr i64 %316 to float*
  store float %319, float* %320, align 4
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -16
  %323 = load i64, i64* %PC, align 8
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %322 to i64*
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %RSI, align 8, !tbaa !2428
  %327 = add i64 %326, 12
  %328 = add i64 %323, 9
  store i64 %328, i64* %PC, align 8
  %329 = load <2 x float>, <2 x float>* %85, align 1
  %330 = extractelement <2 x float> %329, i32 0
  %331 = inttoptr i64 %327 to float*
  store float %330, float* %331, align 4
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -16
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %333 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RSI, align 8, !tbaa !2428
  %338 = add i64 %332, -144
  %339 = add i64 %334, 10
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = add i32 %341, 1
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = icmp eq i32 %341, -1
  %345 = icmp eq i32 %342, 0
  %346 = or i1 %344, %345
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %18, align 1, !tbaa !2432
  %348 = and i32 %342, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #9
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %25, align 1, !tbaa !2446
  %353 = xor i32 %342, %341
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %30, align 1, !tbaa !2447
  %357 = zext i1 %345 to i8
  store i8 %357, i8* %33, align 1, !tbaa !2448
  %358 = lshr i32 %342, 31
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %36, align 1, !tbaa !2449
  %360 = lshr i32 %341, 31
  %361 = xor i32 %358, %360
  %362 = add nuw nsw i32 %361, %358
  %363 = icmp eq i32 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %42, align 1, !tbaa !2450
  %365 = sext i32 %342 to i64
  store i64 %365, i64* %RDI, align 8, !tbaa !2428
  %366 = shl nsw i64 %365, 3
  %367 = add i64 %337, %366
  %368 = add i64 %334, 21
  store i64 %368, i64* %PC, align 8
  %369 = load <2 x float>, <2 x float>* %85, align 1
  %370 = extractelement <2 x float> %369, i32 0
  %371 = inttoptr i64 %367 to float*
  store float %370, float* %371, align 4
  %372 = load i64, i64* %RBP, align 8
  %373 = add i64 %372, -16
  %374 = load i64, i64* %PC, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %373 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RSI, align 8, !tbaa !2428
  %378 = add i64 %372, -144
  %379 = add i64 %374, 10
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = add i32 %381, 1
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RAX, align 8, !tbaa !2428
  %384 = icmp eq i32 %381, -1
  %385 = icmp eq i32 %382, 0
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %18, align 1, !tbaa !2432
  %388 = and i32 %382, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388) #9
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %25, align 1, !tbaa !2446
  %393 = xor i32 %382, %381
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  store i8 %396, i8* %30, align 1, !tbaa !2447
  %397 = zext i1 %385 to i8
  store i8 %397, i8* %33, align 1, !tbaa !2448
  %398 = lshr i32 %382, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %36, align 1, !tbaa !2449
  %400 = lshr i32 %381, 31
  %401 = xor i32 %398, %400
  %402 = add nuw nsw i32 %401, %398
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %42, align 1, !tbaa !2450
  %405 = sext i32 %382 to i64
  store i64 %405, i64* %RDI, align 8, !tbaa !2428
  %406 = shl nsw i64 %405, 3
  %407 = or i64 %406, 4
  %408 = add i64 %407, %377
  %409 = add i64 %374, 22
  store i64 %409, i64* %PC, align 8
  %410 = load <2 x float>, <2 x float>* %107, align 1
  %411 = extractelement <2 x float> %410, i32 0
  %412 = inttoptr i64 %408 to float*
  store float %411, float* %412, align 4
  %413 = load i64, i64* %RBP, align 8
  %414 = add i64 %413, -16
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %414 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RSI, align 8, !tbaa !2428
  %419 = add i64 %413, -148
  %420 = add i64 %415, 10
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = add i32 %422, 1
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX, align 8, !tbaa !2428
  %425 = icmp eq i32 %422, -1
  %426 = icmp eq i32 %423, 0
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %18, align 1, !tbaa !2432
  %429 = and i32 %423, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429) #9
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %25, align 1, !tbaa !2446
  %434 = xor i32 %423, %422
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  store i8 %437, i8* %30, align 1, !tbaa !2447
  %438 = zext i1 %426 to i8
  store i8 %438, i8* %33, align 1, !tbaa !2448
  %439 = lshr i32 %423, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %36, align 1, !tbaa !2449
  %441 = lshr i32 %422, 31
  %442 = xor i32 %439, %441
  %443 = add nuw nsw i32 %442, %439
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %42, align 1, !tbaa !2450
  %446 = sext i32 %423 to i64
  store i64 %446, i64* %RDI, align 8, !tbaa !2428
  %447 = shl nsw i64 %446, 3
  %448 = add i64 %418, %447
  %449 = add i64 %415, 21
  store i64 %449, i64* %PC, align 8
  %450 = load <2 x float>, <2 x float>* %77, align 1
  %451 = extractelement <2 x float> %450, i32 0
  %452 = inttoptr i64 %448 to float*
  store float %451, float* %452, align 4
  %453 = load i64, i64* %RBP, align 8
  %454 = add i64 %453, -16
  %455 = load i64, i64* %PC, align 8
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RSI, align 8, !tbaa !2428
  %459 = add i64 %453, -148
  %460 = add i64 %455, 10
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = add i32 %462, 1
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RAX, align 8, !tbaa !2428
  %465 = icmp eq i32 %462, -1
  %466 = icmp eq i32 %463, 0
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %18, align 1, !tbaa !2432
  %469 = and i32 %463, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469) #9
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %25, align 1, !tbaa !2446
  %474 = xor i32 %463, %462
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %30, align 1, !tbaa !2447
  %478 = zext i1 %466 to i8
  store i8 %478, i8* %33, align 1, !tbaa !2448
  %479 = lshr i32 %463, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %36, align 1, !tbaa !2449
  %481 = lshr i32 %462, 31
  %482 = xor i32 %479, %481
  %483 = add nuw nsw i32 %482, %479
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %42, align 1, !tbaa !2450
  %486 = sext i32 %463 to i64
  store i64 %486, i64* %RDI, align 8, !tbaa !2428
  %487 = shl nsw i64 %486, 3
  %488 = or i64 %487, 4
  %489 = add i64 %488, %458
  %490 = add i64 %455, 22
  store i64 %490, i64* %PC, align 8
  %491 = load <2 x float>, <2 x float>* %85, align 1
  %492 = extractelement <2 x float> %491, i32 0
  %493 = inttoptr i64 %489 to float*
  store float %492, float* %493, align 4
  %.pre15 = load i64, i64* %PC, align 8
  %.pre16 = load i64, i64* %RBP, align 8
  br label %block_4008dd

block_400a1e:                                     ; preds = %block_4009ea
  %494 = load i64, i64* %RSP, align 8
  %495 = add i64 %494, 160
  store i64 %495, i64* %RSP, align 8, !tbaa !2428
  %496 = icmp ugt i64 %494, -161
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %18, align 1, !tbaa !2432
  %498 = trunc i64 %495 to i32
  %499 = and i32 %498, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499) #9
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %25, align 1, !tbaa !2446
  %504 = xor i64 %495, %494
  %505 = lshr i64 %504, 4
  %506 = trunc i64 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %30, align 1, !tbaa !2447
  %508 = icmp eq i64 %495, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %33, align 1, !tbaa !2448
  %510 = lshr i64 %495, 63
  %511 = trunc i64 %510 to i8
  store i8 %511, i8* %36, align 1, !tbaa !2449
  %512 = lshr i64 %494, 63
  %513 = xor i64 %510, %512
  %514 = add nuw nsw i64 %513, %510
  %515 = icmp eq i64 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %42, align 1, !tbaa !2450
  %517 = add i64 %998, 8
  store i64 %517, i64* %PC, align 8
  %518 = add i64 %494, 168
  %519 = inttoptr i64 %495 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RBP, align 8, !tbaa !2428
  store i64 %518, i64* %RSP, align 8, !tbaa !2428
  %521 = add i64 %998, 9
  store i64 %521, i64* %PC, align 8
  %522 = inttoptr i64 %518 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %PC, align 8, !tbaa !2428
  %524 = add i64 %494, 176
  store i64 %524, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %952

block_40090b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_40090b
  %525 = phi i64 [ %.pre21, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %919, %block_40090b ]
  %526 = phi i64 [ %.pre20, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %881, %block_40090b ]
  %527 = add i64 %526, -136
  %528 = add i64 %525, 7
  store i64 %528, i64* %PC, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RAX, align 8, !tbaa !2428
  %532 = shl nsw i64 %531, 2
  %533 = add i64 %526, -128
  %534 = add i64 %533, %532
  %535 = add i64 %525, 13
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  store i32 %537, i32* %46, align 1, !tbaa !2451
  store float 0.000000e+00, float* %48, align 1, !tbaa !2451
  store float 0.000000e+00, float* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  %538 = add i64 %526, -16
  %539 = add i64 %525, 17
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RAX, align 8, !tbaa !2428
  %542 = add i64 %526, -140
  %543 = add i64 %525, 23
  store i64 %543, i64* %PC, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RCX, align 8, !tbaa !2428
  %547 = add i64 %526, -132
  %548 = add i64 %525, 29
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = add i32 %550, %545
  %552 = lshr i32 %551, 31
  %553 = add i32 %551, 1
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RCX, align 8, !tbaa !2428
  %555 = icmp eq i32 %551, -1
  %556 = icmp eq i32 %553, 0
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %18, align 1, !tbaa !2432
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559) #9
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %25, align 1, !tbaa !2446
  %564 = xor i32 %553, %551
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %30, align 1, !tbaa !2447
  %568 = zext i1 %556 to i8
  store i8 %568, i8* %33, align 1, !tbaa !2448
  %569 = lshr i32 %553, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %36, align 1, !tbaa !2449
  %571 = xor i32 %569, %552
  %572 = add nuw nsw i32 %571, %569
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %42, align 1, !tbaa !2450
  %575 = sext i32 %553 to i64
  store i64 %575, i64* %RDX, align 8, !tbaa !2428
  %576 = shl nsw i64 %575, 3
  %577 = add i64 %541, %576
  %578 = add i64 %525, 40
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  store i32 %580, i32* %56, align 1, !tbaa !2451
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  store float 0.000000e+00, float* %60, align 1, !tbaa !2451
  store float 0.000000e+00, float* %62, align 1, !tbaa !2451
  %581 = load i64, i64* %RBP, align 8
  %582 = add i64 %581, -16
  %583 = add i64 %525, 44
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %RAX, align 8, !tbaa !2428
  %586 = add i64 %581, -140
  %587 = add i64 %525, 50
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RCX, align 8, !tbaa !2428
  %591 = add i64 %581, -132
  %592 = add i64 %525, 56
  store i64 %592, i64* %PC, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = sub i32 %589, %594
  %596 = lshr i32 %595, 31
  %597 = add i32 %595, 1
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RCX, align 8, !tbaa !2428
  %599 = icmp eq i32 %595, -1
  %600 = icmp eq i32 %597, 0
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %18, align 1, !tbaa !2432
  %603 = and i32 %597, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603) #9
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %25, align 1, !tbaa !2446
  %608 = xor i32 %597, %595
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %30, align 1, !tbaa !2447
  %612 = zext i1 %600 to i8
  store i8 %612, i8* %33, align 1, !tbaa !2448
  %613 = lshr i32 %597, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %36, align 1, !tbaa !2449
  %615 = xor i32 %613, %596
  %616 = add nuw nsw i32 %615, %613
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %42, align 1, !tbaa !2450
  %619 = sext i32 %597 to i64
  store i64 %619, i64* %RDX, align 8, !tbaa !2428
  %620 = shl nsw i64 %619, 3
  %621 = add i64 %585, %620
  %622 = add i64 %525, 67
  store i64 %622, i64* %PC, align 8
  %623 = load <2 x float>, <2 x float>* %77, align 1
  %624 = load <2 x i32>, <2 x i32>* %112, align 1
  %625 = inttoptr i64 %621 to float*
  %626 = load float, float* %625, align 4
  %627 = extractelement <2 x float> %623, i32 0
  %628 = fadd float %627, %626
  store float %628, float* %55, align 1, !tbaa !2451
  %629 = bitcast <2 x float> %623 to <2 x i32>
  %630 = extractelement <2 x i32> %629, i32 1
  store i32 %630, i32* %113, align 1, !tbaa !2451
  %631 = extractelement <2 x i32> %624, i32 0
  store i32 %631, i32* %114, align 1, !tbaa !2451
  %632 = extractelement <2 x i32> %624, i32 1
  store i32 %632, i32* %115, align 1, !tbaa !2451
  %633 = load <2 x float>, <2 x float>* %85, align 1
  %634 = load <2 x i32>, <2 x i32>* %94, align 1
  %635 = load <2 x float>, <2 x float>* %77, align 1
  %636 = extractelement <2 x float> %633, i32 0
  %637 = extractelement <2 x float> %635, i32 0
  %638 = fmul float %636, %637
  store float %638, float* %45, align 1, !tbaa !2451
  %639 = bitcast <2 x float> %633 to <2 x i32>
  %640 = extractelement <2 x i32> %639, i32 1
  store i32 %640, i32* %95, align 1, !tbaa !2451
  %641 = extractelement <2 x i32> %634, i32 0
  store i32 %641, i32* %96, align 1, !tbaa !2451
  %642 = extractelement <2 x i32> %634, i32 1
  store i32 %642, i32* %97, align 1, !tbaa !2451
  %643 = load i64, i64* %RBP, align 8
  %644 = add i64 %643, -16
  %645 = add i64 %525, 75
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = add i64 %643, -140
  %649 = add i64 %525, 81
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = add i32 %651, 1
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RCX, align 8, !tbaa !2428
  %654 = icmp eq i32 %651, -1
  %655 = icmp eq i32 %652, 0
  %656 = or i1 %654, %655
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %18, align 1, !tbaa !2432
  %658 = and i32 %652, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658) #9
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %25, align 1, !tbaa !2446
  %663 = xor i32 %652, %651
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %30, align 1, !tbaa !2447
  %667 = zext i1 %655 to i8
  store i8 %667, i8* %33, align 1, !tbaa !2448
  %668 = lshr i32 %652, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %36, align 1, !tbaa !2449
  %670 = lshr i32 %651, 31
  %671 = xor i32 %668, %670
  %672 = add nuw nsw i32 %671, %668
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %42, align 1, !tbaa !2450
  %675 = sext i32 %652 to i64
  store i64 %675, i64* %RDX, align 8, !tbaa !2428
  %676 = shl nsw i64 %675, 3
  %677 = add i64 %647, %676
  %678 = add i64 %525, 92
  store i64 %678, i64* %PC, align 8
  %679 = load <2 x float>, <2 x float>* %85, align 1
  %680 = extractelement <2 x float> %679, i32 0
  %681 = inttoptr i64 %677 to float*
  store float %680, float* %681, align 4
  %682 = load i64, i64* %RBP, align 8
  %683 = add i64 %682, -136
  %684 = load i64, i64* %PC, align 8
  %685 = add i64 %684, 7
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %683 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RAX, align 8, !tbaa !2428
  %689 = shl nsw i64 %688, 2
  %690 = add i64 %682, -128
  %691 = add i64 %690, %689
  %692 = add i64 %684, 13
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  store i32 %694, i32* %46, align 1, !tbaa !2451
  store float 0.000000e+00, float* %48, align 1, !tbaa !2451
  store float 0.000000e+00, float* %50, align 1, !tbaa !2451
  store float 0.000000e+00, float* %52, align 1, !tbaa !2451
  %695 = add i64 %682, -16
  %696 = add i64 %684, 17
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RAX, align 8, !tbaa !2428
  %699 = add i64 %682, -140
  %700 = add i64 %684, 23
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RCX, align 8, !tbaa !2428
  %704 = add i64 %682, -132
  %705 = add i64 %684, 29
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = add i32 %707, %702
  %709 = lshr i32 %708, 31
  %710 = add i32 %708, 1
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RCX, align 8, !tbaa !2428
  %712 = icmp eq i32 %708, -1
  %713 = icmp eq i32 %710, 0
  %714 = or i1 %712, %713
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %18, align 1, !tbaa !2432
  %716 = and i32 %710, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716) #9
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %25, align 1, !tbaa !2446
  %721 = xor i32 %710, %708
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %30, align 1, !tbaa !2447
  %725 = zext i1 %713 to i8
  store i8 %725, i8* %33, align 1, !tbaa !2448
  %726 = lshr i32 %710, 31
  %727 = trunc i32 %726 to i8
  store i8 %727, i8* %36, align 1, !tbaa !2449
  %728 = xor i32 %726, %709
  %729 = add nuw nsw i32 %728, %726
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %42, align 1, !tbaa !2450
  %732 = sext i32 %710 to i64
  store i64 %732, i64* %RDX, align 8, !tbaa !2428
  %733 = shl nsw i64 %732, 3
  %734 = or i64 %733, 4
  %735 = add i64 %734, %698
  %736 = add i64 %684, 41
  store i64 %736, i64* %PC, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  store i32 %738, i32* %56, align 1, !tbaa !2451
  store float 0.000000e+00, float* %58, align 1, !tbaa !2451
  store float 0.000000e+00, float* %60, align 1, !tbaa !2451
  store float 0.000000e+00, float* %62, align 1, !tbaa !2451
  %739 = load i64, i64* %RBP, align 8
  %740 = add i64 %739, -16
  %741 = add i64 %684, 45
  store i64 %741, i64* %PC, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RAX, align 8, !tbaa !2428
  %744 = add i64 %739, -140
  %745 = add i64 %684, 51
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RCX, align 8, !tbaa !2428
  %749 = add i64 %739, -132
  %750 = add i64 %684, 57
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = sub i32 %747, %752
  %754 = lshr i32 %753, 31
  %755 = add i32 %753, 1
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RCX, align 8, !tbaa !2428
  %757 = icmp eq i32 %753, -1
  %758 = icmp eq i32 %755, 0
  %759 = or i1 %757, %758
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %18, align 1, !tbaa !2432
  %761 = and i32 %755, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761) #9
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %25, align 1, !tbaa !2446
  %766 = xor i32 %755, %753
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %30, align 1, !tbaa !2447
  %770 = zext i1 %758 to i8
  store i8 %770, i8* %33, align 1, !tbaa !2448
  %771 = lshr i32 %755, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %36, align 1, !tbaa !2449
  %773 = xor i32 %771, %754
  %774 = add nuw nsw i32 %773, %771
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %42, align 1, !tbaa !2450
  %777 = sext i32 %755 to i64
  store i64 %777, i64* %RDX, align 8, !tbaa !2428
  %778 = shl nsw i64 %777, 3
  %779 = or i64 %778, 4
  %780 = add i64 %779, %743
  %781 = add i64 %684, 69
  store i64 %781, i64* %PC, align 8
  %782 = load <2 x float>, <2 x float>* %77, align 1
  %783 = load <2 x i32>, <2 x i32>* %112, align 1
  %784 = inttoptr i64 %780 to float*
  %785 = load float, float* %784, align 4
  %786 = extractelement <2 x float> %782, i32 0
  %787 = fadd float %786, %785
  store float %787, float* %55, align 1, !tbaa !2451
  %788 = bitcast <2 x float> %782 to <2 x i32>
  %789 = extractelement <2 x i32> %788, i32 1
  store i32 %789, i32* %113, align 1, !tbaa !2451
  %790 = extractelement <2 x i32> %783, i32 0
  store i32 %790, i32* %114, align 1, !tbaa !2451
  %791 = extractelement <2 x i32> %783, i32 1
  store i32 %791, i32* %115, align 1, !tbaa !2451
  %792 = load <2 x float>, <2 x float>* %85, align 1
  %793 = load <2 x i32>, <2 x i32>* %94, align 1
  %794 = load <2 x float>, <2 x float>* %77, align 1
  %795 = extractelement <2 x float> %792, i32 0
  %796 = extractelement <2 x float> %794, i32 0
  %797 = fmul float %795, %796
  store float %797, float* %45, align 1, !tbaa !2451
  %798 = bitcast <2 x float> %792 to <2 x i32>
  %799 = extractelement <2 x i32> %798, i32 1
  store i32 %799, i32* %95, align 1, !tbaa !2451
  %800 = extractelement <2 x i32> %793, i32 0
  store i32 %800, i32* %96, align 1, !tbaa !2451
  %801 = extractelement <2 x i32> %793, i32 1
  store i32 %801, i32* %97, align 1, !tbaa !2451
  %802 = load i64, i64* %RBP, align 8
  %803 = add i64 %802, -16
  %804 = add i64 %684, 77
  store i64 %804, i64* %PC, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX, align 8, !tbaa !2428
  %807 = add i64 %802, -140
  %808 = add i64 %684, 83
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = add i32 %810, 1
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RCX, align 8, !tbaa !2428
  %813 = icmp eq i32 %810, -1
  %814 = icmp eq i32 %811, 0
  %815 = or i1 %813, %814
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %18, align 1, !tbaa !2432
  %817 = and i32 %811, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817) #9
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %25, align 1, !tbaa !2446
  %822 = xor i32 %811, %810
  %823 = lshr i32 %822, 4
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %30, align 1, !tbaa !2447
  %826 = zext i1 %814 to i8
  store i8 %826, i8* %33, align 1, !tbaa !2448
  %827 = lshr i32 %811, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %36, align 1, !tbaa !2449
  %829 = lshr i32 %810, 31
  %830 = xor i32 %827, %829
  %831 = add nuw nsw i32 %830, %827
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %42, align 1, !tbaa !2450
  %834 = sext i32 %811 to i64
  store i64 %834, i64* %RDX, align 8, !tbaa !2428
  %835 = shl nsw i64 %834, 3
  %836 = or i64 %835, 4
  %837 = add i64 %836, %806
  %838 = add i64 %684, 95
  store i64 %838, i64* %PC, align 8
  %839 = load <2 x float>, <2 x float>* %85, align 1
  %840 = extractelement <2 x float> %839, i32 0
  %841 = inttoptr i64 %837 to float*
  store float %840, float* %841, align 4
  %842 = load i64, i64* %RBP, align 8
  %843 = add i64 %842, -140
  %844 = load i64, i64* %PC, align 8
  %845 = add i64 %844, 6
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RCX, align 8, !tbaa !2428
  %849 = add i64 %842, -144
  %850 = add i64 %844, 12
  store i64 %850, i64* %PC, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = add i32 %852, %847
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RCX, align 8, !tbaa !2428
  %855 = icmp ult i32 %853, %847
  %856 = icmp ult i32 %853, %852
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %18, align 1, !tbaa !2432
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859) #9
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %25, align 1, !tbaa !2446
  %864 = xor i32 %852, %847
  %865 = xor i32 %864, %853
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %30, align 1, !tbaa !2447
  %869 = icmp eq i32 %853, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %33, align 1, !tbaa !2448
  %871 = lshr i32 %853, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %36, align 1, !tbaa !2449
  %873 = lshr i32 %847, 31
  %874 = lshr i32 %852, 31
  %875 = xor i32 %871, %873
  %876 = xor i32 %871, %874
  %877 = add nuw nsw i32 %875, %876
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %42, align 1, !tbaa !2450
  %880 = add i64 %844, 18
  store i64 %880, i64* %PC, align 8
  store i32 %853, i32* %846, align 4
  %881 = load i64, i64* %RBP, align 8
  %882 = add i64 %881, -140
  %883 = load i64, i64* %PC, align 8
  %884 = add i64 %883, 6
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %882 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RAX, align 8, !tbaa !2428
  %888 = add i64 %881, -148
  %889 = add i64 %883, 12
  store i64 %889, i64* %PC, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = sub i32 %886, %891
  %893 = icmp ult i32 %886, %891
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %18, align 1, !tbaa !2432
  %895 = and i32 %892, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895) #9
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %25, align 1, !tbaa !2446
  %900 = xor i32 %891, %886
  %901 = xor i32 %900, %892
  %902 = lshr i32 %901, 4
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  store i8 %904, i8* %30, align 1, !tbaa !2447
  %905 = icmp eq i32 %892, 0
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %33, align 1, !tbaa !2448
  %907 = lshr i32 %892, 31
  %908 = trunc i32 %907 to i8
  store i8 %908, i8* %36, align 1, !tbaa !2449
  %909 = lshr i32 %886, 31
  %910 = lshr i32 %891, 31
  %911 = xor i32 %910, %909
  %912 = xor i32 %907, %909
  %913 = add nuw nsw i32 %912, %911
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %42, align 1, !tbaa !2450
  %916 = icmp ne i8 %908, 0
  %917 = xor i1 %916, %914
  %918 = or i1 %905, %917
  %.v24 = select i1 %918, i64 -205, i64 18
  %919 = add i64 %883, %.v24
  store i64 %919, i64* %PC, align 8, !tbaa !2428
  br i1 %918, label %block_40090b, label %block_4009ea

block_4009ea:                                     ; preds = %block_40090b
  store i64 25, i64* %RSI, align 8, !tbaa !2428
  %920 = add i64 %881, -136
  %921 = add i64 %919, 11
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, 1
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX, align 8, !tbaa !2428
  %926 = icmp eq i32 %923, -1
  %927 = icmp eq i32 %924, 0
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %18, align 1, !tbaa !2432
  %930 = and i32 %924, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930) #9
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %25, align 1, !tbaa !2446
  %935 = xor i32 %924, %923
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %30, align 1, !tbaa !2447
  %939 = zext i1 %927 to i8
  store i8 %939, i8* %33, align 1, !tbaa !2448
  %940 = lshr i32 %924, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %36, align 1, !tbaa !2449
  %942 = lshr i32 %923, 31
  %943 = xor i32 %940, %942
  %944 = add nuw nsw i32 %943, %940
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %42, align 1, !tbaa !2450
  store i64 %925, i64* %RDI, align 8, !tbaa !2428
  %947 = add i64 %919, -938
  %948 = add i64 %919, 21
  %949 = load i64, i64* %RSP, align 8, !tbaa !2428
  %950 = add i64 %949, -8
  %951 = inttoptr i64 %950 to i64*
  store i64 %948, i64* %951, align 8
  store i64 %950, i64* %RSP, align 8, !tbaa !2428
  store i64 %947, i64* %PC, align 8, !tbaa !2428
  %952 = tail call %struct.Memory* @sub_400640_Min0(%struct.State* nonnull %0, i64 %947, %struct.Memory* %1038)
  %953 = load i64, i64* %RBP, align 8
  %954 = add i64 %953, -136
  %955 = load i32, i32* %EAX, align 4
  %956 = load i64, i64* %PC, align 8
  %957 = add i64 %956, 6
  store i64 %957, i64* %PC, align 8
  %958 = inttoptr i64 %954 to i32*
  store i32 %955, i32* %958, align 4
  %959 = load i64, i64* %RBP, align 8
  %960 = add i64 %959, -132
  %961 = load i64, i64* %PC, align 8
  %962 = add i64 %961, 6
  store i64 %962, i64* %PC, align 8
  %963 = inttoptr i64 %960 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RAX, align 8, !tbaa !2428
  %966 = add i64 %959, -144
  %967 = add i64 %961, 12
  store i64 %967, i64* %PC, align 8
  %968 = inttoptr i64 %966 to i32*
  store i32 %964, i32* %968, align 4
  %969 = load i64, i64* %RBP, align 8
  %970 = add i64 %969, -144
  %971 = load i64, i64* %PC, align 8
  %972 = add i64 %971, 7
  store i64 %972, i64* %PC, align 8
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = add i32 %974, -1
  %976 = icmp eq i32 %974, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %18, align 1, !tbaa !2432
  %978 = and i32 %975, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978) #9
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %25, align 1, !tbaa !2446
  %983 = xor i32 %975, %974
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %30, align 1, !tbaa !2447
  %987 = icmp eq i32 %975, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %33, align 1, !tbaa !2448
  %989 = lshr i32 %975, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %36, align 1, !tbaa !2449
  %991 = lshr i32 %974, 31
  %992 = xor i32 %989, %991
  %993 = add nuw nsw i32 %992, %991
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %42, align 1, !tbaa !2450
  %996 = icmp ne i8 %990, 0
  %997 = xor i1 %996, %994
  %.demorgan23 = or i1 %987, %997
  %.v25 = select i1 %.demorgan23, i64 13, i64 -308
  %998 = add i64 %971, %.v25
  store i64 %998, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan23, label %block_400a1e, label %block_4008dd

block_4008dd:                                     ; preds = %block_4009ea, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %999 = phi i64 [ %.pre16, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %969, %block_4009ea ]
  %1000 = phi i64 [ %.pre15, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %998, %block_4009ea ]
  %MEMORY.1 = phi %struct.Memory* [ %301, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %952, %block_4009ea ]
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %1001 = add i64 %999, -144
  %1002 = add i64 %1000, 11
  store i64 %1002, i64* %PC, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RCX, align 8, !tbaa !2428
  %1006 = add i64 %999, -156
  %1007 = add i64 %1000, 17
  store i64 %1007, i64* %PC, align 8
  %1008 = inttoptr i64 %1006 to i32*
  store i32 2, i32* %1008, align 4
  %1009 = load i32, i32* %ECX, align 4
  %1010 = zext i32 %1009 to i64
  %1011 = load i64, i64* %PC, align 8
  store i64 %1010, i64* %RAX, align 8, !tbaa !2428
  %1012 = sext i32 %1009 to i64
  %1013 = lshr i64 %1012, 32
  store i64 %1013, i64* %RDX, align 8, !tbaa !2428
  %1014 = load i64, i64* %RBP, align 8
  %1015 = add i64 %1014, -156
  %1016 = add i64 %1011, 9
  store i64 %1016, i64* %PC, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RCX, align 8, !tbaa !2428
  %1020 = add i64 %1011, 11
  store i64 %1020, i64* %PC, align 8
  %1021 = sext i32 %1018 to i64
  %1022 = shl nuw i64 %1013, 32
  %1023 = or i64 %1022, %1010
  %1024 = sdiv i64 %1023, %1021
  %1025 = shl i64 %1024, 32
  %1026 = ashr exact i64 %1025, 32
  %1027 = icmp eq i64 %1024, %1026
  br i1 %1027, label %1030, label %1028

; <label>:1028:                                   ; preds = %block_4008dd
  %1029 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1020, %struct.Memory* %MEMORY.1) #12
  %.pre17 = load i64, i64* %RBP, align 8
  %.pre18 = load i32, i32* %EAX, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1030:                                   ; preds = %block_4008dd
  %1031 = srem i64 %1023, %1021
  %1032 = and i64 %1024, 4294967295
  store i64 %1032, i64* %RAX, align 8, !tbaa !2428
  %1033 = and i64 %1031, 4294967295
  store i64 %1033, i64* %.pre-phi, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %1034 = trunc i64 %1024 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1030, %1028
  %1035 = phi i64 [ %.pre19, %1028 ], [ %1020, %1030 ]
  %1036 = phi i32 [ %.pre18, %1028 ], [ %1034, %1030 ]
  %1037 = phi i64 [ %.pre17, %1028 ], [ %1014, %1030 ]
  %1038 = phi %struct.Memory* [ %1029, %1028 ], [ %MEMORY.1, %1030 ]
  %1039 = add i64 %1037, -132
  %1040 = add i64 %1035, 6
  store i64 %1040, i64* %PC, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 %1036, i32* %1041, align 4
  %1042 = load i64, i64* %RBP, align 8
  %1043 = add i64 %1042, -132
  %1044 = load i64, i64* %PC, align 8
  %1045 = add i64 %1044, 6
  store i64 %1045, i64* %PC, align 8
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX, align 8, !tbaa !2428
  %1049 = add i64 %1042, -140
  %1050 = add i64 %1044, 12
  store i64 %1050, i64* %PC, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %1047, i32* %1051, align 4
  %.pre20 = load i64, i64* %RBP, align 8
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_40090b

block_4007c6:                                     ; preds = %block_4007d3, %block_400790
  %1052 = phi i64 [ %225, %block_4007d3 ], [ %.pre, %block_400790 ]
  %1053 = load i64, i64* %RBP, align 8
  %1054 = add i64 %1053, -132
  %1055 = add i64 %1052, 7
  store i64 %1055, i64* %PC, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i32 %1057, -25
  %1059 = icmp ult i32 %1057, 25
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %18, align 1, !tbaa !2432
  %1061 = and i32 %1058, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061) #9
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %25, align 1, !tbaa !2446
  %1066 = xor i32 %1057, 16
  %1067 = xor i32 %1066, %1058
  %1068 = lshr i32 %1067, 4
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  store i8 %1070, i8* %30, align 1, !tbaa !2447
  %1071 = icmp eq i32 %1058, 0
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %33, align 1, !tbaa !2448
  %1073 = lshr i32 %1058, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %36, align 1, !tbaa !2449
  %1075 = lshr i32 %1057, 31
  %1076 = xor i32 %1073, %1075
  %1077 = add nuw nsw i32 %1076, %1075
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %42, align 1, !tbaa !2450
  %1080 = icmp ne i8 %1074, 0
  %1081 = xor i1 %1080, %1078
  %.demorgan = or i1 %1071, %1081
  %.v = select i1 %.demorgan, i64 13, i64 100
  %1082 = add i64 %1052, %.v
  store i64 %1082, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4007d3, label %block_40082a
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

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_619238_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400ee0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ee0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_400ee0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ee0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400e70___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e70;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400e70___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400e70___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400e30_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_619230___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Exptab() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Exptab_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400790_Exptab(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Cos() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Cos_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400570_Cos(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
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
define dllexport void @Oscar() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ce0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Oscar_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ce0_Oscar(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Initrand() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @Initrand_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
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
define dllexport void @Printcomplex() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Printcomplex_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400670_Printcomplex(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Uniform11() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400740;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Uniform11_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400740_Uniform11(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ee4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400ee4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Fft() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Fft_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a30_Fft(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Min0() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @Min0_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400640_Min0(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_400ee0___libc_csu_fini()
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
  tail call void @callback_sub_400e70___libc_csu_init()
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
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"float", !2430, i64 0}
!2453 = !{!2445, !2445, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"double", !2430, i64 0}
