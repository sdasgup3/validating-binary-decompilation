; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401d90__rodata_type = type <{ [40 x i8], [34 x i8], [30 x i8], [29 x i8], [13 x i8], [3 x i8], [3 x i8], [2 x i8], [2 x i8], [3 x i8], [3 x i8], [28 x i8] }>
%seg_602df0__init_array_type = type <{ i64, i64 }>
%seg_602ff0__got_type = type <{ i64, i64 }>
%omega_type = type <{ [4 x i8] }>
%seg_603060__bss_type = type <{ [4 x i8], [4 x i8], [8 x i8] }>
%b_type = type <{ [24 x i8] }>
%p_type = type <{ [24 x i8] }>
%wrk2_type = type <{ [24 x i8] }>
%c_type = type <{ [24 x i8] }>
%a_type = type <{ [24 x i8] }>
%wrk1_type = type <{ [24 x i8] }>
%bnd_type = type <{ [24 x i8] }>
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
@seg_401d90__rodata = internal constant %seg_401d90__rodata_type <{ [40 x i8] c"\01\00\02\00\00\00\80?\AB\AA*>\00\00\00\00\00\00\00\00\00\00A@\8D\ED\B5\A0\F7\C6\B0>\00\00\00\00\80\84.A", [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", [29 x i8] c" Loop executed for %d times\0A\00", [13 x i8] c" Gosa : %e \0A\00", [3 x i8] c"XS\00", [3 x i8] c"xs\00", [2 x i8] c"M\00", [2 x i8] c"m\00", [3 x i8] c"XL\00", [3 x i8] c"xl\00", [28 x i8] c"Invalid input character !!\0A\00" }>
@seg_602df0__init_array = internal global %seg_602df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400650_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400620___do_global_dtors_aux to i64) }>
@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@omega = local_unnamed_addr global %omega_type <{ [4 x i8] c"\CD\CCL?" }>
@seg_603060__bss = internal global %seg_603060__bss_type zeroinitializer
@b = global %b_type zeroinitializer
@p = global %p_type zeroinitializer
@wrk2 = global %wrk2_type zeroinitializer
@c = global %c_type zeroinitializer
@a = global %a_type zeroinitializer
@wrk1 = global %wrk1_type zeroinitializer
@bnd = global %bnd_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400650_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400620___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401d80___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401d10___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mat_set_init_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mat_set_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newMat_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mflops_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @second_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @fflop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @jacobi_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @clearMat_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @set_param_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400af0_mat_set_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004e0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400cd0_jacobi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400bf0_mat_set(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400bf0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %18 = load i32, i32* %ESI, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 5
  store i64 %25, i64* %PC, align 8
  %26 = bitcast %union.VectorReg* %4 to <2 x float>*
  %27 = load <2 x float>, <2 x float>* %26, align 1
  %28 = extractelement <2 x float> %27, i32 0
  %29 = inttoptr i64 %23 to float*
  store float %28, float* %29, align 4
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -20
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 7
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %31 to i32*
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %41 = bitcast %union.VectorReg* %4 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = bitcast i8* %42 to float*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %45 = bitcast i64* %44 to float*
  %46 = getelementptr inbounds i8, i8* %41, i64 12
  %47 = bitcast i8* %46 to float*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c07

block_400c35:                                     ; preds = %block_400c45, %block_400c2e
  %48 = phi i64 [ %510, %block_400c45 ], [ %.pre2, %block_400c2e ]
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -28
  %51 = add i64 %48, 3
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = add i64 %49, -8
  %56 = add i64 %48, 7
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %RCX, align 8, !tbaa !2428
  %59 = add i64 %58, 20
  %60 = add i64 %48, 10
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %53, %62
  %64 = icmp ult i32 %53, %62
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %35, align 1, !tbaa !2432
  %66 = and i32 %63, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #8
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %36, align 1, !tbaa !2446
  %71 = xor i32 %62, %53
  %72 = xor i32 %71, %63
  %73 = lshr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %37, align 1, !tbaa !2447
  %76 = icmp eq i32 %63, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %38, align 1, !tbaa !2448
  %78 = lshr i32 %63, 31
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %39, align 1, !tbaa !2449
  %80 = lshr i32 %53, 31
  %81 = lshr i32 %62, 31
  %82 = xor i32 %81, %80
  %83 = xor i32 %78, %80
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %40, align 1, !tbaa !2450
  %87 = icmp ne i8 %79, 0
  %88 = xor i1 %87, %85
  %.v4 = select i1 %88, i64 16, i64 114
  %89 = add i64 %48, %.v4
  store i64 %89, i64* %PC, align 8, !tbaa !2428
  br i1 %88, label %block_400c45, label %block_400ca7

block_400c17:                                     ; preds = %block_400c07
  %90 = add i64 %106, -24
  %91 = add i64 %146, 7
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 0, i32* %92, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400c1e

block_400ccd:                                     ; preds = %block_400c07
  %93 = add i64 %146, 1
  store i64 %93, i64* %PC, align 8
  %94 = load i64, i64* %7, align 8, !tbaa !2428
  %95 = add i64 %94, 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RBP, align 8, !tbaa !2428
  store i64 %95, i64* %7, align 8, !tbaa !2428
  %98 = add i64 %146, 2
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %95 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  %101 = add i64 %94, 16
  store i64 %101, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400c2e:                                     ; preds = %block_400c1e
  %102 = add i64 %178, -28
  %103 = add i64 %218, 7
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i32*
  store i32 0, i32* %104, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400c35

block_400c07:                                     ; preds = %block_400cba, %block_400bf0
  %105 = phi i64 [ %248, %block_400cba ], [ %.pre, %block_400bf0 ]
  %106 = load i64, i64* %RBP, align 8
  %107 = add i64 %106, -20
  %108 = add i64 %105, 3
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX, align 8, !tbaa !2428
  %112 = add i64 %106, -8
  %113 = add i64 %105, 7
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RCX, align 8, !tbaa !2428
  %116 = add i64 %115, 12
  %117 = add i64 %105, 10
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = sub i32 %110, %119
  %121 = icmp ult i32 %110, %119
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %35, align 1, !tbaa !2432
  %123 = and i32 %120, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %36, align 1, !tbaa !2446
  %128 = xor i32 %119, %110
  %129 = xor i32 %128, %120
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %37, align 1, !tbaa !2447
  %133 = icmp eq i32 %120, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %38, align 1, !tbaa !2448
  %135 = lshr i32 %120, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %39, align 1, !tbaa !2449
  %137 = lshr i32 %110, 31
  %138 = lshr i32 %119, 31
  %139 = xor i32 %138, %137
  %140 = xor i32 %135, %137
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %40, align 1, !tbaa !2450
  %144 = icmp ne i8 %136, 0
  %145 = xor i1 %144, %142
  %.v = select i1 %145, i64 16, i64 198
  %146 = add i64 %105, %.v
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  br i1 %145, label %block_400c17, label %block_400ccd

block_400ca7:                                     ; preds = %block_400c35
  %147 = add i64 %49, -24
  %148 = add i64 %89, 8
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %150, 1
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RAX, align 8, !tbaa !2428
  %153 = icmp eq i32 %150, -1
  %154 = icmp eq i32 %151, 0
  %155 = or i1 %153, %154
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %35, align 1, !tbaa !2432
  %157 = and i32 %151, 255
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157) #8
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %36, align 1, !tbaa !2446
  %162 = xor i32 %150, %151
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %37, align 1, !tbaa !2447
  %166 = zext i1 %154 to i8
  store i8 %166, i8* %38, align 1, !tbaa !2448
  %167 = lshr i32 %151, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %39, align 1, !tbaa !2449
  %169 = lshr i32 %150, 31
  %170 = xor i32 %167, %169
  %171 = add nuw nsw i32 %170, %167
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %40, align 1, !tbaa !2450
  %174 = add i64 %89, 14
  store i64 %174, i64* %PC, align 8
  store i32 %151, i32* %149, align 4
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, -151
  store i64 %176, i64* %PC, align 8, !tbaa !2428
  br label %block_400c1e

block_400c1e:                                     ; preds = %block_400ca7, %block_400c17
  %177 = phi i64 [ %176, %block_400ca7 ], [ %.pre1, %block_400c17 ]
  %178 = load i64, i64* %RBP, align 8
  %179 = add i64 %178, -24
  %180 = add i64 %177, 3
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = add i64 %178, -8
  %185 = add i64 %177, 7
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = add i64 %187, 16
  %189 = add i64 %177, 10
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = sub i32 %182, %191
  %193 = icmp ult i32 %182, %191
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %35, align 1, !tbaa !2432
  %195 = and i32 %192, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #8
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %36, align 1, !tbaa !2446
  %200 = xor i32 %191, %182
  %201 = xor i32 %200, %192
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %37, align 1, !tbaa !2447
  %205 = icmp eq i32 %192, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %38, align 1, !tbaa !2448
  %207 = lshr i32 %192, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %39, align 1, !tbaa !2449
  %209 = lshr i32 %182, 31
  %210 = lshr i32 %191, 31
  %211 = xor i32 %210, %209
  %212 = xor i32 %207, %209
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %40, align 1, !tbaa !2450
  %216 = icmp ne i8 %208, 0
  %217 = xor i1 %216, %214
  %.v3 = select i1 %217, i64 16, i64 156
  %218 = add i64 %177, %.v3
  store i64 %218, i64* %PC, align 8, !tbaa !2428
  br i1 %217, label %block_400c2e, label %block_400cba

block_400cba:                                     ; preds = %block_400c1e
  %219 = add i64 %178, -20
  %220 = add i64 %218, 8
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %222, 1
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = icmp eq i32 %222, -1
  %226 = icmp eq i32 %223, 0
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %35, align 1, !tbaa !2432
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229) #8
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %36, align 1, !tbaa !2446
  %234 = xor i32 %222, %223
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %37, align 1, !tbaa !2447
  %238 = zext i1 %226 to i8
  store i8 %238, i8* %38, align 1, !tbaa !2448
  %239 = lshr i32 %223, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %39, align 1, !tbaa !2449
  %241 = lshr i32 %222, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %239
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %40, align 1, !tbaa !2450
  %246 = add i64 %218, 14
  store i64 %246, i64* %PC, align 8
  store i32 %223, i32* %221, align 4
  %247 = load i64, i64* %PC, align 8
  %248 = add i64 %247, -193
  store i64 %248, i64* %PC, align 8, !tbaa !2428
  br label %block_400c07

block_400c45:                                     ; preds = %block_400c35
  %249 = add i64 %49, -16
  %250 = add i64 %89, 5
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = bitcast %union.VectorReg* %4 to i32*
  store i32 %252, i32* %253, align 1, !tbaa !2451
  store float 0.000000e+00, float* %43, align 1, !tbaa !2451
  store float 0.000000e+00, float* %45, align 1, !tbaa !2451
  store float 0.000000e+00, float* %47, align 1, !tbaa !2451
  %254 = add i64 %89, 9
  store i64 %254, i64* %PC, align 8
  %255 = load i64, i64* %57, align 8
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = add i64 %89, 12
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = add i64 %49, -12
  %260 = add i64 %89, 15
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RCX, align 8, !tbaa !2428
  %264 = add i64 %89, 19
  store i64 %264, i64* %PC, align 8
  %265 = load i64, i64* %57, align 8
  store i64 %265, i64* %RDX, align 8, !tbaa !2428
  %266 = add i64 %265, 12
  %267 = add i64 %89, 23
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %262 to i64
  %271 = sext i32 %269 to i64
  %272 = mul nsw i64 %271, %270
  %273 = trunc i64 %272 to i32
  %274 = and i64 %272, 4294967295
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = shl i64 %272, 32
  %276 = ashr exact i64 %275, 32
  %277 = icmp ne i64 %276, %272
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %35, align 1, !tbaa !2432
  %279 = and i32 %273, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279) #8
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %284 = lshr i32 %273, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %39, align 1, !tbaa !2449
  store i8 %278, i8* %40, align 1, !tbaa !2450
  %286 = add i64 %89, 27
  store i64 %286, i64* %PC, align 8
  %287 = load i64, i64* %57, align 8
  store i64 %287, i64* %RDX, align 8, !tbaa !2428
  %288 = add i64 %287, 16
  %289 = add i64 %89, 31
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %292, %276
  %294 = trunc i64 %293 to i32
  %295 = and i64 %293, 4294967295
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  %296 = shl i64 %293, 32
  %297 = ashr exact i64 %296, 32
  %298 = icmp ne i64 %297, %293
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %35, align 1, !tbaa !2432
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #8
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %305 = lshr i32 %294, 31
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %39, align 1, !tbaa !2449
  store i8 %299, i8* %40, align 1, !tbaa !2450
  %307 = add i64 %89, 35
  store i64 %307, i64* %PC, align 8
  %308 = load i64, i64* %57, align 8
  store i64 %308, i64* %RDX, align 8, !tbaa !2428
  %309 = add i64 %308, 20
  %310 = add i64 %89, 39
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, %297
  %315 = trunc i64 %314 to i32
  %316 = and i64 %314, 4294967295
  store i64 %316, i64* %RCX, align 8, !tbaa !2428
  %317 = shl i64 %314, 32
  %318 = ashr exact i64 %317, 32
  %319 = icmp ne i64 %318, %314
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %35, align 1, !tbaa !2432
  %321 = and i32 %315, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321) #8
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %326 = lshr i32 %315, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %39, align 1, !tbaa !2449
  store i8 %320, i8* %40, align 1, !tbaa !2450
  %328 = load i64, i64* %RBP, align 8
  %329 = add i64 %328, -20
  %330 = add i64 %89, 42
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RSI, align 8, !tbaa !2428
  %334 = add i64 %328, -8
  %335 = add i64 %89, 46
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RDX, align 8, !tbaa !2428
  %338 = add i64 %337, 16
  %339 = add i64 %89, 50
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %332 to i64
  %343 = sext i32 %341 to i64
  %344 = mul nsw i64 %343, %342
  %345 = trunc i64 %344 to i32
  %346 = and i64 %344, 4294967295
  store i64 %346, i64* %RSI, align 8, !tbaa !2428
  %347 = shl i64 %344, 32
  %348 = ashr exact i64 %347, 32
  %349 = icmp ne i64 %348, %344
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %35, align 1, !tbaa !2432
  %351 = and i32 %345, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351) #8
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %356 = lshr i32 %345, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %39, align 1, !tbaa !2449
  store i8 %350, i8* %40, align 1, !tbaa !2450
  %358 = add i64 %89, 54
  store i64 %358, i64* %PC, align 8
  %359 = load i64, i64* %336, align 8
  store i64 %359, i64* %RDX, align 8, !tbaa !2428
  %360 = add i64 %359, 20
  %361 = add i64 %89, 58
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = mul nsw i64 %364, %348
  %366 = and i64 %365, 4294967295
  store i64 %366, i64* %RSI, align 8, !tbaa !2428
  %367 = trunc i64 %365 to i32
  %368 = add i32 %367, %315
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RCX, align 8, !tbaa !2428
  %370 = icmp ult i32 %368, %315
  %371 = icmp ult i32 %368, %367
  %372 = or i1 %370, %371
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %35, align 1, !tbaa !2432
  %374 = and i32 %368, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #8
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %36, align 1, !tbaa !2446
  %379 = xor i64 %365, %314
  %380 = trunc i64 %379 to i32
  %381 = xor i32 %380, %368
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %37, align 1, !tbaa !2447
  %385 = icmp eq i32 %368, 0
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %38, align 1, !tbaa !2448
  %387 = lshr i32 %368, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %39, align 1, !tbaa !2449
  %389 = lshr i32 %367, 31
  %390 = xor i32 %387, %326
  %391 = xor i32 %387, %389
  %392 = add nuw nsw i32 %390, %391
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %40, align 1, !tbaa !2450
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -24
  %397 = add i64 %89, 63
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RSI, align 8, !tbaa !2428
  %401 = add i64 %395, -8
  %402 = add i64 %89, 67
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %RDX, align 8, !tbaa !2428
  %405 = add i64 %404, 20
  %406 = add i64 %89, 71
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %399 to i64
  %410 = sext i32 %408 to i64
  %411 = mul nsw i64 %410, %409
  %412 = and i64 %411, 4294967295
  store i64 %412, i64* %RSI, align 8, !tbaa !2428
  %413 = trunc i64 %411 to i32
  %414 = add i32 %413, %368
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = icmp ult i32 %414, %368
  %417 = icmp ult i32 %414, %413
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %35, align 1, !tbaa !2432
  %420 = and i32 %414, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #8
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %36, align 1, !tbaa !2446
  %425 = xor i64 %411, %369
  %426 = trunc i64 %425 to i32
  %427 = xor i32 %426, %414
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %37, align 1, !tbaa !2447
  %431 = icmp eq i32 %414, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %38, align 1, !tbaa !2448
  %433 = lshr i32 %414, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %39, align 1, !tbaa !2449
  %435 = lshr i32 %413, 31
  %436 = xor i32 %433, %387
  %437 = xor i32 %433, %435
  %438 = add nuw nsw i32 %436, %437
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %40, align 1, !tbaa !2450
  %441 = add i64 %395, -28
  %442 = add i64 %89, 76
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = add i32 %444, %414
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RCX, align 8, !tbaa !2428
  %447 = icmp ult i32 %445, %414
  %448 = icmp ult i32 %445, %444
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %35, align 1, !tbaa !2432
  %451 = and i32 %445, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451) #8
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %36, align 1, !tbaa !2446
  %456 = xor i32 %444, %414
  %457 = xor i32 %456, %445
  %458 = lshr i32 %457, 4
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %37, align 1, !tbaa !2447
  %461 = icmp eq i32 %445, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %38, align 1, !tbaa !2448
  %463 = lshr i32 %445, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %39, align 1, !tbaa !2449
  %465 = lshr i32 %444, 31
  %466 = xor i32 %463, %433
  %467 = xor i32 %463, %465
  %468 = add nuw nsw i32 %466, %467
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %40, align 1, !tbaa !2450
  %471 = sext i32 %445 to i64
  store i64 %471, i64* %RDX, align 8, !tbaa !2428
  %472 = load i64, i64* %RAX, align 8
  %473 = shl nsw i64 %471, 2
  %474 = add i64 %473, %472
  %475 = add i64 %89, 84
  store i64 %475, i64* %PC, align 8
  %476 = load <2 x float>, <2 x float>* %26, align 1
  %477 = extractelement <2 x float> %476, i32 0
  %478 = inttoptr i64 %474 to float*
  store float %477, float* %478, align 4
  %479 = load i64, i64* %RBP, align 8
  %480 = add i64 %479, -28
  %481 = load i64, i64* %PC, align 8
  %482 = add i64 %481, 3
  store i64 %482, i64* %PC, align 8
  %483 = inttoptr i64 %480 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = add i32 %484, 1
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = icmp eq i32 %484, -1
  %488 = icmp eq i32 %485, 0
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %35, align 1, !tbaa !2432
  %491 = and i32 %485, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #8
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %36, align 1, !tbaa !2446
  %496 = xor i32 %484, %485
  %497 = lshr i32 %496, 4
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  store i8 %499, i8* %37, align 1, !tbaa !2447
  %500 = zext i1 %488 to i8
  store i8 %500, i8* %38, align 1, !tbaa !2448
  %501 = lshr i32 %485, 31
  %502 = trunc i32 %501 to i8
  store i8 %502, i8* %39, align 1, !tbaa !2449
  %503 = lshr i32 %484, 31
  %504 = xor i32 %501, %503
  %505 = add nuw nsw i32 %504, %501
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %40, align 1, !tbaa !2450
  %508 = add i64 %481, 9
  store i64 %508, i64* %PC, align 8
  store i32 %485, i32* %483, align 4
  %509 = load i64, i64* %PC, align 8
  %510 = add i64 %509, -109
  store i64 %510, i64* %PC, align 8, !tbaa !2428
  br label %block_400c35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = icmp ult i64 %10, 176
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2446
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2449
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2450
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
  %42 = add i64 %9, -12
  %43 = add i64 %12, 27
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %EDI, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RSI, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -68
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 64, i32* %61, align 4
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -64
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 64, i32* %66, align 4
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -60
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 7
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i32*
  store i32 128, i32* %71, align 4
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -68
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RDI, align 8, !tbaa !2428
  %79 = add i64 %72, -48
  %80 = add i64 %74, 6
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 %77, i32* %81, align 4
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -64
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDI, align 8, !tbaa !2428
  %89 = add i64 %82, -52
  %90 = add i64 %84, 6
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 %87, i32* %91, align 4
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -60
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RDI, align 8, !tbaa !2428
  %99 = add i64 %92, -56
  %100 = add i64 %94, 6
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %99 to i32*
  store i32 %97, i32* %101, align 4
  %102 = load i64, i64* %RBP, align 8
  %103 = add i64 %102, -48
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, -1
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RDI, align 8, !tbaa !2428
  %110 = icmp eq i32 %107, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %16, align 1, !tbaa !2432
  %112 = and i32 %108, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112) #8
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %23, align 1, !tbaa !2446
  %117 = xor i32 %107, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %29, align 1, !tbaa !2447
  %121 = icmp eq i32 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %32, align 1, !tbaa !2448
  %123 = lshr i32 %108, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %35, align 1, !tbaa !2449
  %125 = lshr i32 %107, 31
  %126 = xor i32 %123, %125
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %41, align 1, !tbaa !2450
  %130 = add i64 %102, -36
  %131 = add i64 %104, 9
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i32*
  store i32 %108, i32* %132, align 4
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -52
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, -1
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RDI, align 8, !tbaa !2428
  %141 = icmp eq i32 %138, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %16, align 1, !tbaa !2432
  %143 = and i32 %139, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #8
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %23, align 1, !tbaa !2446
  %148 = xor i32 %138, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %29, align 1, !tbaa !2447
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %32, align 1, !tbaa !2448
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %35, align 1, !tbaa !2449
  %156 = lshr i32 %138, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %41, align 1, !tbaa !2450
  %161 = add i64 %133, -40
  %162 = add i64 %135, 9
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %139, i32* %163, align 4
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -56
  %166 = load i64, i64* %PC, align 8
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, -1
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RDI, align 8, !tbaa !2428
  %172 = icmp eq i32 %169, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %16, align 1, !tbaa !2432
  %174 = and i32 %170, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #8
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %23, align 1, !tbaa !2446
  %179 = xor i32 %169, %170
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %29, align 1, !tbaa !2447
  %183 = icmp eq i32 %170, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %32, align 1, !tbaa !2448
  %185 = lshr i32 %170, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %35, align 1, !tbaa !2449
  %187 = lshr i32 %169, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %41, align 1, !tbaa !2450
  %192 = add i64 %164, -44
  %193 = add i64 %166, 9
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 %170, i32* %194, align 4
  %195 = load i64, i64* %RBP, align 8
  %196 = add i64 %195, -48
  %197 = load i64, i64* %PC, align 8
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RSI, align 8, !tbaa !2428
  %202 = add i64 %195, -52
  %203 = add i64 %197, 6
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RDX, align 8, !tbaa !2428
  %207 = add i64 %195, -56
  %208 = add i64 %197, 9
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RCX, align 8, !tbaa !2428
  %212 = load i64, i64* %RAX, align 8
  store i64 %212, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %213 = add i64 %197, -421
  %214 = add i64 %197, 19
  %215 = load i64, i64* %RSP, align 8, !tbaa !2428
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  store i64 %213, i64* %PC, align 8, !tbaa !2428
  %218 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %219 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -36
  %222 = add i64 %219, 13
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RSI, align 8, !tbaa !2428
  %226 = add i64 %220, -40
  %227 = add i64 %219, 16
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RDX, align 8, !tbaa !2428
  %231 = add i64 %220, -44
  %232 = add i64 %219, 19
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RCX, align 8, !tbaa !2428
  %236 = add i64 %220, -108
  %237 = load i32, i32* %EAX, align 4
  %238 = add i64 %219, 22
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %236 to i32*
  store i32 %237, i32* %239, align 4
  %240 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %241 = add i64 %240, -462
  %242 = add i64 %240, 7
  %243 = load i64, i64* %RSP, align 8, !tbaa !2428
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %RSP, align 8, !tbaa !2428
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  %246 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %218)
  %247 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -48
  %250 = add i64 %247, 18
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RDX, align 8, !tbaa !2428
  %254 = add i64 %248, -52
  %255 = add i64 %247, 21
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  %259 = add i64 %248, -56
  %260 = add i64 %247, 25
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %R8, align 8, !tbaa !2428
  %264 = add i64 %248, -112
  %265 = load i32, i32* %EAX, align 4
  %266 = add i64 %247, 28
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %264 to i32*
  store i32 %265, i32* %267, align 4
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 847
  %270 = add i64 %268, 5
  %271 = load i64, i64* %RSP, align 8, !tbaa !2428
  %272 = add i64 %271, -8
  %273 = inttoptr i64 %272 to i64*
  store i64 %270, i64* %273, align 8
  store i64 %272, i64* %RSP, align 8, !tbaa !2428
  store i64 %269, i64* %PC, align 8, !tbaa !2428
  %274 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %269, %struct.Memory* %246)
  %275 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %276 = load i64, i64* %RBP, align 8
  %277 = add i64 %276, -48
  %278 = add i64 %275, 18
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RDX, align 8, !tbaa !2428
  %282 = add i64 %276, -52
  %283 = add i64 %275, 21
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RCX, align 8, !tbaa !2428
  %287 = add i64 %276, -56
  %288 = add i64 %275, 25
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %R8, align 8, !tbaa !2428
  %292 = add i64 %276, -116
  %293 = load i32, i32* %EAX, align 4
  %294 = add i64 %275, 28
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %295, align 4
  %296 = load i64, i64* %PC, align 8
  %297 = add i64 %296, 814
  %298 = add i64 %296, 5
  %299 = load i64, i64* %RSP, align 8, !tbaa !2428
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %RSP, align 8, !tbaa !2428
  store i64 %297, i64* %PC, align 8, !tbaa !2428
  %302 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %297, %struct.Memory* %274)
  %303 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %304 = load i64, i64* %RBP, align 8
  %305 = add i64 %304, -48
  %306 = add i64 %303, 18
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RDX, align 8, !tbaa !2428
  %310 = add i64 %304, -52
  %311 = add i64 %303, 21
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RCX, align 8, !tbaa !2428
  %315 = add i64 %304, -56
  %316 = add i64 %303, 25
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %R8, align 8, !tbaa !2428
  %320 = add i64 %304, -120
  %321 = load i32, i32* %EAX, align 4
  %322 = add i64 %303, 28
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %320 to i32*
  store i32 %321, i32* %323, align 4
  %324 = load i64, i64* %PC, align 8
  %325 = add i64 %324, 781
  %326 = add i64 %324, 5
  %327 = load i64, i64* %RSP, align 8, !tbaa !2428
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %326, i64* %329, align 8
  store i64 %328, i64* %RSP, align 8, !tbaa !2428
  store i64 %325, i64* %PC, align 8, !tbaa !2428
  %330 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %325, %struct.Memory* %302)
  %331 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -48
  %334 = add i64 %331, 18
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RDX, align 8, !tbaa !2428
  %338 = add i64 %332, -52
  %339 = add i64 %331, 21
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RCX, align 8, !tbaa !2428
  %343 = add i64 %332, -56
  %344 = add i64 %331, 25
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %R8, align 8, !tbaa !2428
  %348 = add i64 %332, -124
  %349 = load i32, i32* %EAX, align 4
  %350 = add i64 %331, 28
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %348 to i32*
  store i32 %349, i32* %351, align 4
  %352 = load i64, i64* %PC, align 8
  %353 = add i64 %352, 748
  %354 = add i64 %352, 5
  %355 = load i64, i64* %RSP, align 8, !tbaa !2428
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %354, i64* %357, align 8
  store i64 %356, i64* %RSP, align 8, !tbaa !2428
  store i64 %353, i64* %PC, align 8, !tbaa !2428
  %358 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %353, %struct.Memory* %330)
  %359 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -48
  %362 = add i64 %359, 18
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RDX, align 8, !tbaa !2428
  %366 = add i64 %360, -52
  %367 = add i64 %359, 21
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RCX, align 8, !tbaa !2428
  %371 = add i64 %360, -56
  %372 = add i64 %359, 25
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %R8, align 8, !tbaa !2428
  %376 = add i64 %360, -128
  %377 = load i32, i32* %EAX, align 4
  %378 = add i64 %359, 28
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %376 to i32*
  store i32 %377, i32* %379, align 4
  %380 = load i64, i64* %PC, align 8
  %381 = add i64 %380, 715
  %382 = add i64 %380, 5
  %383 = load i64, i64* %RSP, align 8, !tbaa !2428
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %382, i64* %385, align 8
  store i64 %384, i64* %RSP, align 8, !tbaa !2428
  store i64 %381, i64* %PC, align 8, !tbaa !2428
  %386 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %381, %struct.Memory* %358)
  %387 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -48
  %390 = add i64 %387, 18
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RDX, align 8, !tbaa !2428
  %394 = add i64 %388, -52
  %395 = add i64 %387, 21
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = add i64 %388, -56
  %400 = add i64 %387, 25
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %R8, align 8, !tbaa !2428
  %404 = add i64 %388, -132
  %405 = load i32, i32* %EAX, align 4
  %406 = add i64 %387, 31
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %404 to i32*
  store i32 %405, i32* %407, align 4
  %408 = load i64, i64* %PC, align 8
  %409 = add i64 %408, 679
  %410 = add i64 %408, 5
  %411 = load i64, i64* %RSP, align 8, !tbaa !2428
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %410, i64* %413, align 8
  store i64 %412, i64* %RSP, align 8, !tbaa !2428
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  %414 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %409, %struct.Memory* %386)
  %415 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %416 = load i64, i64* %RBP, align 8
  %417 = add i64 %416, -48
  %418 = add i64 %415, 18
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RDX, align 8, !tbaa !2428
  %422 = add i64 %416, -52
  %423 = add i64 %415, 21
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RCX, align 8, !tbaa !2428
  %427 = add i64 %416, -56
  %428 = add i64 %415, 25
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %R8, align 8, !tbaa !2428
  %432 = add i64 %416, -136
  %433 = load i32, i32* %EAX, align 4
  %434 = add i64 %415, 31
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %432 to i32*
  store i32 %433, i32* %435, align 4
  %436 = load i64, i64* %PC, align 8
  %437 = add i64 %436, 643
  %438 = add i64 %436, 5
  %439 = load i64, i64* %RSP, align 8, !tbaa !2428
  %440 = add i64 %439, -8
  %441 = inttoptr i64 %440 to i64*
  store i64 %438, i64* %441, align 8
  store i64 %440, i64* %RSP, align 8, !tbaa !2428
  store i64 %437, i64* %PC, align 8, !tbaa !2428
  %442 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %437, %struct.Memory* %414)
  %443 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  %444 = load i64, i64* %RBP, align 8
  %445 = add i64 %444, -140
  %446 = load i32, i32* %EAX, align 4
  %447 = add i64 %443, 16
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %445 to i32*
  store i32 %446, i32* %448, align 4
  %449 = load i64, i64* %PC, align 8
  %450 = add i64 %449, 766
  %451 = add i64 %449, 5
  %452 = load i64, i64* %RSP, align 8, !tbaa !2428
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %RSP, align 8, !tbaa !2428
  store i64 %450, i64* %PC, align 8, !tbaa !2428
  %455 = tail call %struct.Memory* @sub_400af0_mat_set_init_renamed_(%struct.State* nonnull %0, i64 %450, %struct.Memory* %442)
  %456 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %457 = bitcast %union.VectorReg* %6 to i8*
  %458 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %459 = bitcast %union.VectorReg* %6 to i32*
  store i32 %458, i32* %459, align 1, !tbaa !2451
  %460 = getelementptr inbounds i8, i8* %457, i64 4
  %461 = bitcast i8* %460 to float*
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %463 = bitcast i64* %462 to float*
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  %464 = getelementptr inbounds i8, i8* %457, i64 12
  %465 = bitcast i8* %464 to float*
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %466 = add i64 %456, 1017
  %467 = add i64 %456, 25
  %468 = load i64, i64* %RSP, align 8, !tbaa !2428
  %469 = add i64 %468, -8
  %470 = inttoptr i64 %469 to i64*
  store i64 %467, i64* %470, align 8
  store i64 %469, i64* %RSP, align 8, !tbaa !2428
  store i64 %466, i64* %PC, align 8, !tbaa !2428
  %471 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %466, %struct.Memory* %455)
  %472 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i32 0, i32* %459, align 1, !tbaa !2454
  %473 = bitcast i8* %460 to i32*
  store i32 0, i32* %473, align 1, !tbaa !2454
  %474 = bitcast i64* %462 to i32*
  store i32 0, i32* %474, align 1, !tbaa !2454
  %475 = bitcast i8* %464 to i32*
  store i32 0, i32* %475, align 1, !tbaa !2454
  %476 = add i64 %472, 992
  %477 = add i64 %472, 20
  %478 = load i64, i64* %RSP, align 8, !tbaa !2428
  %479 = add i64 %478, -8
  %480 = inttoptr i64 %479 to i64*
  store i64 %477, i64* %480, align 8
  store i64 %479, i64* %RSP, align 8, !tbaa !2428
  store i64 %476, i64* %PC, align 8, !tbaa !2428
  %481 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %476, %struct.Memory* %471)
  %482 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i32 0, i32* %459, align 1, !tbaa !2454
  store i32 0, i32* %473, align 1, !tbaa !2454
  store i32 0, i32* %474, align 1, !tbaa !2454
  store i32 0, i32* %475, align 1, !tbaa !2454
  %483 = add i64 %482, 972
  %484 = add i64 %482, 20
  %485 = load i64, i64* %RSP, align 8, !tbaa !2428
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %RSP, align 8, !tbaa !2428
  store i64 %483, i64* %PC, align 8, !tbaa !2428
  %488 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %483, %struct.Memory* %481)
  %489 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %490 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  store i32 %490, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %491 = add i64 %489, 952
  %492 = add i64 %489, 25
  %493 = load i64, i64* %RSP, align 8, !tbaa !2428
  %494 = add i64 %493, -8
  %495 = inttoptr i64 %494 to i64*
  store i64 %492, i64* %495, align 8
  store i64 %494, i64* %RSP, align 8, !tbaa !2428
  store i64 %491, i64* %PC, align 8, !tbaa !2428
  %496 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %491, %struct.Memory* %488)
  %497 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %498 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  store i32 %498, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %499 = add i64 %497, 927
  %500 = add i64 %497, 28
  %501 = load i64, i64* %RSP, align 8, !tbaa !2428
  %502 = add i64 %501, -8
  %503 = inttoptr i64 %502 to i64*
  store i64 %500, i64* %503, align 8
  store i64 %502, i64* %RSP, align 8, !tbaa !2428
  store i64 %499, i64* %PC, align 8, !tbaa !2428
  %504 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %499, %struct.Memory* %496)
  %505 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %506 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  store i32 %506, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %507 = add i64 %505, 899
  %508 = add i64 %505, 28
  %509 = load i64, i64* %RSP, align 8, !tbaa !2428
  %510 = add i64 %509, -8
  %511 = inttoptr i64 %510 to i64*
  store i64 %508, i64* %511, align 8
  store i64 %510, i64* %RSP, align 8, !tbaa !2428
  store i64 %507, i64* %PC, align 8, !tbaa !2428
  %512 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %507, %struct.Memory* %504)
  %513 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %514 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 8) to i32*), align 8
  store i32 %514, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %515 = add i64 %513, 871
  %516 = add i64 %513, 28
  %517 = load i64, i64* %RSP, align 8, !tbaa !2428
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %516, i64* %519, align 8
  store i64 %518, i64* %RSP, align 8, !tbaa !2428
  store i64 %515, i64* %PC, align 8, !tbaa !2428
  %520 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %515, %struct.Memory* %512)
  %521 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i32 0, i32* %459, align 1, !tbaa !2454
  store i32 0, i32* %473, align 1, !tbaa !2454
  store i32 0, i32* %474, align 1, !tbaa !2454
  store i32 0, i32* %475, align 1, !tbaa !2454
  %522 = add i64 %521, 843
  %523 = add i64 %521, 20
  %524 = load i64, i64* %RSP, align 8, !tbaa !2428
  %525 = add i64 %524, -8
  %526 = inttoptr i64 %525 to i64*
  store i64 %523, i64* %526, align 8
  store i64 %525, i64* %RSP, align 8, !tbaa !2428
  store i64 %522, i64* %PC, align 8, !tbaa !2428
  %527 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %522, %struct.Memory* %520)
  %528 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  store i32 0, i32* %459, align 1, !tbaa !2454
  store i32 0, i32* %473, align 1, !tbaa !2454
  store i32 0, i32* %474, align 1, !tbaa !2454
  store i32 0, i32* %475, align 1, !tbaa !2454
  %529 = add i64 %528, 823
  %530 = add i64 %528, 23
  %531 = load i64, i64* %RSP, align 8, !tbaa !2428
  %532 = add i64 %531, -8
  %533 = inttoptr i64 %532 to i64*
  store i64 %530, i64* %533, align 8
  store i64 %532, i64* %RSP, align 8, !tbaa !2428
  store i64 %529, i64* %PC, align 8, !tbaa !2428
  %534 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %529, %struct.Memory* %527)
  %535 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  store i32 0, i32* %459, align 1, !tbaa !2454
  store i32 0, i32* %473, align 1, !tbaa !2454
  store i32 0, i32* %474, align 1, !tbaa !2454
  store i32 0, i32* %475, align 1, !tbaa !2454
  %536 = add i64 %535, 800
  %537 = add i64 %535, 23
  %538 = load i64, i64* %RSP, align 8, !tbaa !2428
  %539 = add i64 %538, -8
  %540 = inttoptr i64 %539 to i64*
  store i64 %537, i64* %540, align 8
  store i64 %539, i64* %RSP, align 8, !tbaa !2428
  store i64 %536, i64* %PC, align 8, !tbaa !2428
  %541 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %536, %struct.Memory* %534)
  %542 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %543 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  store i32 %543, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %544 = add i64 %542, 777
  %545 = add i64 %542, 25
  %546 = load i64, i64* %RSP, align 8, !tbaa !2428
  %547 = add i64 %546, -8
  %548 = inttoptr i64 %547 to i64*
  store i64 %545, i64* %548, align 8
  store i64 %547, i64* %RSP, align 8, !tbaa !2428
  store i64 %544, i64* %PC, align 8, !tbaa !2428
  %549 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %544, %struct.Memory* %541)
  %550 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %551 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  store i32 %551, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %552 = add i64 %550, 752
  %553 = add i64 %550, 28
  %554 = load i64, i64* %RSP, align 8, !tbaa !2428
  %555 = add i64 %554, -8
  %556 = inttoptr i64 %555 to i64*
  store i64 %553, i64* %556, align 8
  store i64 %555, i64* %RSP, align 8, !tbaa !2428
  store i64 %552, i64* %PC, align 8, !tbaa !2428
  %557 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %552, %struct.Memory* %549)
  %558 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %559 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  store i32 %559, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %560 = add i64 %558, 724
  %561 = add i64 %558, 28
  %562 = load i64, i64* %RSP, align 8, !tbaa !2428
  %563 = add i64 %562, -8
  %564 = inttoptr i64 %563 to i64*
  store i64 %561, i64* %564, align 8
  store i64 %563, i64* %RSP, align 8, !tbaa !2428
  store i64 %560, i64* %PC, align 8, !tbaa !2428
  %565 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %560, %struct.Memory* %557)
  %566 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RSI, align 8, !tbaa !2428
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDX, align 8, !tbaa !2428
  store i64 ptrtoint (%c_type* @c to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (%p_type* @p to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %R9, align 8, !tbaa !2428
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %R10, align 8, !tbaa !2428
  %567 = load i64, i64* %RBP, align 8
  %568 = add i64 %567, -32
  %569 = add i64 %566, 77
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 64, i32* %570, align 4
  %571 = load i64, i64* %RBP, align 8
  %572 = add i64 %571, -32
  %573 = load i64, i64* %PC, align 8
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC, align 8
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX, align 8, !tbaa !2428
  %578 = add i64 %571, -152
  %579 = load i64, i64* %RDI, align 8
  %580 = add i64 %573, 10
  store i64 %580, i64* %PC, align 8
  %581 = inttoptr i64 %578 to i64*
  store i64 %579, i64* %581, align 8
  %582 = load i32, i32* %EAX, align 4
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC, align 8
  store i64 %583, i64* %RDI, align 8, !tbaa !2428
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -152
  %587 = add i64 %584, 9
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %R11, align 8, !tbaa !2428
  %590 = bitcast i64* %RSP to i64**
  %591 = load i64*, i64** %590, align 8
  %592 = add i64 %584, 13
  store i64 %592, i64* %PC, align 8
  store i64 %589, i64* %591, align 8
  %593 = load i64, i64* %RSP, align 8
  %594 = add i64 %593, 8
  %595 = load i64, i64* %R10, align 8
  %596 = load i64, i64* %PC, align 8
  %597 = add i64 %596, 5
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %594 to i64*
  store i64 %595, i64* %598, align 8
  %599 = load i64, i64* %PC, align 8
  %600 = add i64 %599, 815
  %601 = add i64 %599, 5
  %602 = load i64, i64* %RSP, align 8, !tbaa !2428
  %603 = add i64 %602, -8
  %604 = inttoptr i64 %603 to i64*
  store i64 %601, i64* %604, align 8
  store i64 %603, i64* %RSP, align 8, !tbaa !2428
  store i64 %600, i64* %PC, align 8, !tbaa !2428
  %605 = tail call %struct.Memory* @sub_400cd0_jacobi_renamed_(%struct.State* nonnull %0, i64 %600, %struct.Memory* %565)
  %606 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 104), i64* %RDI, align 8, !tbaa !2428
  %607 = load i64, i64* %RBP, align 8
  %608 = add i64 %607, -72
  %609 = add i64 %606, 15
  store i64 %609, i64* %PC, align 8
  %610 = bitcast %union.VectorReg* %6 to <2 x float>*
  %611 = load <2 x float>, <2 x float>* %610, align 1
  %612 = extractelement <2 x float> %611, i32 0
  %613 = inttoptr i64 %608 to float*
  store float %612, float* %613, align 4
  %614 = load i64, i64* %RBP, align 8
  %615 = add i64 %614, -32
  %616 = load i64, i64* %PC, align 8
  %617 = add i64 %616, 3
  store i64 %617, i64* %PC, align 8
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %621 = add i64 %616, -1173
  %622 = add i64 %616, 10
  %623 = load i64, i64* %RSP, align 8, !tbaa !2428
  %624 = add i64 %623, -8
  %625 = inttoptr i64 %624 to i64*
  store i64 %622, i64* %625, align 8
  store i64 %624, i64* %RSP, align 8, !tbaa !2428
  store i64 %621, i64* %PC, align 8, !tbaa !2428
  %626 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %605)
  %627 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 133), i64* %RDI, align 8, !tbaa !2428
  %628 = load i64, i64* %RBP, align 8
  %629 = add i64 %628, -72
  %630 = add i64 %627, 15
  store i64 %630, i64* %PC, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  store i32 %632, i32* %459, align 1, !tbaa !2451
  store float 0.000000e+00, float* %461, align 1, !tbaa !2451
  store float 0.000000e+00, float* %463, align 1, !tbaa !2451
  store float 0.000000e+00, float* %465, align 1, !tbaa !2451
  %633 = load <2 x float>, <2 x float>* %610, align 1
  %634 = extractelement <2 x float> %633, i32 0
  %635 = fpext float %634 to double
  %636 = bitcast %union.VectorReg* %6 to double*
  store double %635, double* %636, align 1, !tbaa !2455
  %637 = add i64 %628, -156
  %638 = load i32, i32* %EAX, align 4
  %639 = add i64 %627, 25
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %637 to i32*
  store i32 %638, i32* %640, align 4
  %641 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %642 = add i64 %641, -1208
  %643 = add i64 %641, 7
  %644 = load i64, i64* %RSP, align 8, !tbaa !2428
  %645 = add i64 %644, -8
  %646 = inttoptr i64 %645 to i64*
  store i64 %643, i64* %646, align 8
  store i64 %645, i64* %RSP, align 8, !tbaa !2428
  store i64 %642, i64* %PC, align 8, !tbaa !2428
  %647 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %626)
  %648 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  %649 = load i64, i64* %RBP, align 8
  %650 = add i64 %649, -160
  %651 = load i32, i32* %EAX, align 4
  %652 = add i64 %648, 16
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %650 to i32*
  store i32 %651, i32* %653, align 4
  %654 = load i64, i64* %PC, align 8
  %655 = add i64 %654, 3969
  %656 = add i64 %654, 5
  %657 = load i64, i64* %RSP, align 8, !tbaa !2428
  %658 = add i64 %657, -8
  %659 = inttoptr i64 %658 to i64*
  store i64 %656, i64* %659, align 8
  store i64 %658, i64* %RSP, align 8, !tbaa !2428
  store i64 %655, i64* %PC, align 8, !tbaa !2428
  %660 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %655, %struct.Memory* %647)
  %661 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  %662 = add i64 %661, 3964
  %663 = add i64 %661, 15
  %664 = load i64, i64* %RSP, align 8, !tbaa !2428
  %665 = add i64 %664, -8
  %666 = inttoptr i64 %665 to i64*
  store i64 %663, i64* %666, align 8
  store i64 %665, i64* %RSP, align 8, !tbaa !2428
  store i64 %662, i64* %PC, align 8, !tbaa !2428
  %667 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %662, %struct.Memory* %660)
  %668 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  %669 = add i64 %668, 3949
  %670 = add i64 %668, 15
  %671 = load i64, i64* %RSP, align 8, !tbaa !2428
  %672 = add i64 %671, -8
  %673 = inttoptr i64 %672 to i64*
  store i64 %670, i64* %673, align 8
  store i64 %672, i64* %RSP, align 8, !tbaa !2428
  store i64 %669, i64* %PC, align 8, !tbaa !2428
  %674 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %669, %struct.Memory* %667)
  %675 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  %676 = add i64 %675, 3934
  %677 = add i64 %675, 15
  %678 = load i64, i64* %RSP, align 8, !tbaa !2428
  %679 = add i64 %678, -8
  %680 = inttoptr i64 %679 to i64*
  store i64 %677, i64* %680, align 8
  store i64 %679, i64* %RSP, align 8, !tbaa !2428
  store i64 %676, i64* %PC, align 8, !tbaa !2428
  %681 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %676, %struct.Memory* %674)
  %682 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  %683 = add i64 %682, 3919
  %684 = add i64 %682, 15
  %685 = load i64, i64* %RSP, align 8, !tbaa !2428
  %686 = add i64 %685, -8
  %687 = inttoptr i64 %686 to i64*
  store i64 %684, i64* %687, align 8
  store i64 %686, i64* %RSP, align 8, !tbaa !2428
  store i64 %683, i64* %PC, align 8, !tbaa !2428
  %688 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %683, %struct.Memory* %681)
  %689 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  %690 = add i64 %689, 3904
  %691 = add i64 %689, 15
  %692 = load i64, i64* %RSP, align 8, !tbaa !2428
  %693 = add i64 %692, -8
  %694 = inttoptr i64 %693 to i64*
  store i64 %691, i64* %694, align 8
  store i64 %693, i64* %RSP, align 8, !tbaa !2428
  store i64 %690, i64* %PC, align 8, !tbaa !2428
  %695 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %690, %struct.Memory* %688)
  %696 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  %697 = add i64 %696, 3889
  %698 = add i64 %696, 15
  %699 = load i64, i64* %RSP, align 8, !tbaa !2428
  %700 = add i64 %699, -8
  %701 = inttoptr i64 %700 to i64*
  store i64 %698, i64* %701, align 8
  store i64 %700, i64* %RSP, align 8, !tbaa !2428
  store i64 %697, i64* %PC, align 8, !tbaa !2428
  %702 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %697, %struct.Memory* %695)
  %703 = load i64, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %704 = load i64, i64* %RSP, align 8
  %705 = add i64 %704, 176
  store i64 %705, i64* %RSP, align 8, !tbaa !2428
  %706 = icmp ugt i64 %704, -177
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %16, align 1, !tbaa !2432
  %708 = trunc i64 %705 to i32
  %709 = and i32 %708, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709) #8
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %23, align 1, !tbaa !2446
  %714 = xor i64 %704, 16
  %715 = xor i64 %714, %705
  %716 = lshr i64 %715, 4
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %29, align 1, !tbaa !2447
  %719 = icmp eq i64 %705, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %32, align 1, !tbaa !2448
  %721 = lshr i64 %705, 63
  %722 = trunc i64 %721 to i8
  store i8 %722, i8* %35, align 1, !tbaa !2449
  %723 = lshr i64 %704, 63
  %724 = xor i64 %721, %723
  %725 = add nuw nsw i64 %724, %721
  %726 = icmp eq i64 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %41, align 1, !tbaa !2450
  %728 = add i64 %703, 10
  store i64 %728, i64* %PC, align 8
  %729 = add i64 %704, 184
  %730 = inttoptr i64 %705 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RBP, align 8, !tbaa !2428
  store i64 %729, i64* %RSP, align 8, !tbaa !2428
  %732 = add i64 %703, 11
  store i64 %732, i64* %PC, align 8
  %733 = inttoptr i64 %729 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %PC, align 8, !tbaa !2428
  %735 = add i64 %704, 192
  store i64 %735, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %702
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %11 = sub i64 %9, ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)
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
  store i8 %22, i8* %12, align 1, !tbaa !2453
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2453
  store i8 0, i8* %14, align 1, !tbaa !2453
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2453
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_400618, label %block_400603

block_400618:                                     ; preds = %block_400603, %block_4005e0
  %35 = phi i64 [ %45, %block_400603 ], [ %34, %block_4005e0 ]
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

block_400603:                                     ; preds = %block_4005e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %45 = add i64 %34, 21
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  br label %block_400618
}

; Function Attrs: noinline
define %struct.Memory* @sub_401a70_set_param(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401a70:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
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
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -16
  %44 = load i64, i64* %RSI, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -16
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 146), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 146), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %54 = add i64 %50, -5440
  %55 = add i64 %50, 16
  %56 = load i64, i64* %RSP, align 8, !tbaa !2428
  %57 = add i64 %56, -8
  %58 = inttoptr i64 %57 to i64*
  store i64 %55, i64* %58, align 8
  store i64 %57, i64* %RSP, align 8, !tbaa !2428
  store i64 %54, i64* %PC, align 8, !tbaa !2428
  %59 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %2)
  %60 = load i32, i32* %EAX, align 4
  %61 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %62 = and i32 %60, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #8
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %67 = icmp eq i32 %60, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %28, align 1, !tbaa !2448
  %69 = lshr i32 %60, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %67, i64 34, i64 9
  %71 = add i64 %61, %.v
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  br i1 %67, label %block_401c51, label %block_401a99

block_401b9e:                                     ; preds = %block_401b85
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -16
  %74 = add i64 %334, 4
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 160), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 160), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %77 = add i64 %334, -5726
  %78 = add i64 %334, 16
  %79 = load i64, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %RSP, align 8, !tbaa !2428
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  %82 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %322)
  %83 = load i32, i32* %EAX, align 4
  %84 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %85 = and i32 %83, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #8
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %90 = icmp eq i32 %83, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %28, align 1, !tbaa !2448
  %92 = lshr i32 %83, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v44 = select i1 %90, i64 9, i64 46
  %94 = add i64 %84, %.v44
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_401c51, label %block_401bdc

block_401bdc:                                     ; preds = %block_401b9e
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -16
  %97 = add i64 %94, 4
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 156), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 156), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %100 = add i64 %94, -5788
  %101 = add i64 %94, 16
  %102 = load i64, i64* %RSP, align 8, !tbaa !2428
  %103 = add i64 %102, -8
  %104 = inttoptr i64 %103 to i64*
  store i64 %101, i64* %104, align 8
  store i64 %103, i64* %RSP, align 8, !tbaa !2428
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  %105 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %82)
  %106 = load i32, i32* %EAX, align 4
  %107 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %108 = and i32 %106, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %113 = icmp eq i32 %106, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %28, align 1, !tbaa !2448
  %115 = lshr i32 %106, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v45 = select i1 %113, i64 34, i64 9
  %117 = add i64 %107, %.v45
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %113, label %block_401c51, label %block_401bf5

block_401a99:                                     ; preds = %block_401a70
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -16
  %120 = add i64 %71, 4
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 149), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 149), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %123 = add i64 %71, -5465
  %124 = add i64 %71, 16
  %125 = load i64, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %128 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %59)
  %129 = load i32, i32* %EAX, align 4
  %130 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %131 = and i32 %129, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #8
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %136 = icmp eq i32 %129, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %28, align 1, !tbaa !2448
  %138 = lshr i32 %129, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v38 = select i1 %136, i64 9, i64 46
  %140 = add i64 %130, %.v38
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  br i1 %136, label %block_401c51, label %block_401ad7

block_401bf5:                                     ; preds = %block_401bdc
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -16
  %143 = add i64 %117, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 159), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 159), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %146 = add i64 %117, -5813
  %147 = add i64 %117, 16
  %148 = load i64, i64* %RSP, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %RSP, align 8, !tbaa !2428
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  %151 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %105)
  %152 = load i32, i32* %EAX, align 4
  %153 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %154 = and i32 %152, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #8
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %159 = icmp eq i32 %152, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %28, align 1, !tbaa !2448
  %161 = lshr i32 %152, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v46 = select i1 %159, i64 9, i64 46
  %163 = add i64 %153, %.v46
  store i64 %163, i64* %PC, align 8, !tbaa !2428
  br i1 %159, label %block_401c51, label %block_401c33

block_401c33:                                     ; preds = %block_401bf5
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 162), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %164 = add i64 %163, -5907
  %165 = add i64 %163, 17
  %166 = load i64, i64* %RSP, align 8, !tbaa !2428
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %165, i64* %168, align 8
  store i64 %167, i64* %RSP, align 8, !tbaa !2428
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  %169 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %151)
  %170 = load i64, i64* %PC, align 8
  store i64 6, i64* %RDI, align 8, !tbaa !2428
  %171 = load i64, i64* %RBP, align 8
  %172 = add i64 %171, -20
  %173 = load i32, i32* %EAX, align 4
  %174 = add i64 %170, 8
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %172 to i32*
  store i32 %173, i32* %175, align 4
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, -5868
  %178 = add i64 %176, 5
  %179 = load i64, i64* %RSP, align 8, !tbaa !2428
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %178, i64* %181, align 8
  store i64 %180, i64* %RSP, align 8, !tbaa !2428
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  %182 = tail call fastcc %struct.Memory* @ext_400560_exit(%struct.State* nonnull %0, %struct.Memory* %169)
  %183 = load i64, i64* %PC, align 8
  %184 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %183, %struct.Memory* %182)
  ret %struct.Memory* %184

block_401af0:                                     ; preds = %block_401ad7
  %185 = load i64, i64* %RBP, align 8
  %186 = add i64 %185, -16
  %187 = add i64 %230, 4
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 150), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 150), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %190 = add i64 %230, -5552
  %191 = add i64 %230, 16
  %192 = load i64, i64* %RSP, align 8, !tbaa !2428
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %RSP, align 8, !tbaa !2428
  store i64 %190, i64* %PC, align 8, !tbaa !2428
  %195 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %218)
  %196 = load i32, i32* %EAX, align 4
  %197 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %198 = and i32 %196, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198) #8
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %203 = icmp eq i32 %196, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %28, align 1, !tbaa !2448
  %205 = lshr i32 %196, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v40 = select i1 %203, i64 9, i64 46
  %207 = add i64 %197, %.v40
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br i1 %203, label %block_401c51, label %block_401b2e

block_401ad7:                                     ; preds = %block_401a99
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -16
  %210 = add i64 %140, 4
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 147), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 147), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %213 = add i64 %140, -5527
  %214 = add i64 %140, 16
  %215 = load i64, i64* %RSP, align 8, !tbaa !2428
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  store i64 %213, i64* %PC, align 8, !tbaa !2428
  %218 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %128)
  %219 = load i32, i32* %EAX, align 4
  %220 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %221 = and i32 %219, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221) #8
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %226 = icmp eq i32 %219, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %28, align 1, !tbaa !2448
  %228 = lshr i32 %219, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v39 = select i1 %226, i64 34, i64 9
  %230 = add i64 %220, %.v39
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  br i1 %226, label %block_401c51, label %block_401af0

block_401c51:                                     ; preds = %block_401bf5, %block_401b9e, %block_401b47, %block_401af0, %block_401a99, %block_401b2e, %block_401ad7, %block_401bdc, %block_401a70, %block_401b85
  %.sink36 = phi i64 [ %334, %block_401b85 ], [ %94, %block_401b9e ], [ %71, %block_401a70 ], [ %140, %block_401a99 ], [ %117, %block_401bdc ], [ %163, %block_401bf5 ], [ %230, %block_401ad7 ], [ %207, %block_401af0 ], [ %357, %block_401b2e ], [ %311, %block_401b47 ]
  %.sink27 = phi i32 [ 256, %block_401b85 ], [ 256, %block_401b9e ], [ 32, %block_401a70 ], [ 32, %block_401a99 ], [ 512, %block_401bdc ], [ 512, %block_401bf5 ], [ 64, %block_401ad7 ], [ 64, %block_401af0 ], [ 128, %block_401b2e ], [ 128, %block_401b47 ]
  %.sink = phi i32 [ 512, %block_401b85 ], [ 512, %block_401b9e ], [ 64, %block_401a70 ], [ 64, %block_401a99 ], [ 1024, %block_401bdc ], [ 1024, %block_401bf5 ], [ 128, %block_401ad7 ], [ 128, %block_401af0 ], [ 256, %block_401b2e ], [ 256, %block_401b47 ]
  %.sink3 = phi i64 [ 122, %block_401b85 ], [ 122, %block_401b9e ], [ 383, %block_401a70 ], [ 383, %block_401a99 ], [ 35, %block_401bdc ], [ 35, %block_401bf5 ], [ 296, %block_401ad7 ], [ 296, %block_401af0 ], [ 209, %block_401b2e ], [ 209, %block_401b47 ]
  %MEMORY.4 = phi %struct.Memory* [ %322, %block_401b85 ], [ %82, %block_401b9e ], [ %59, %block_401a70 ], [ %128, %block_401a99 ], [ %105, %block_401bdc ], [ %151, %block_401bf5 ], [ %218, %block_401ad7 ], [ %195, %block_401af0 ], [ %345, %block_401b2e ], [ %299, %block_401b47 ]
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -8
  %233 = add i64 %.sink36, 4
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = add i64 %.sink36, 10
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  store i32 %.sink27, i32* %237, align 4
  %238 = load i64, i64* %RBP, align 8
  %239 = add i64 %238, -8
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX, align 8, !tbaa !2428
  %244 = add i64 %243, 4
  %245 = add i64 %240, 11
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  store i32 %.sink27, i32* %246, align 4
  %247 = load i64, i64* %RBP, align 8
  %248 = add i64 %247, -8
  %249 = load i64, i64* %PC, align 8
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %248 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = add i64 %252, 8
  %254 = add i64 %249, 11
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  store i32 %.sink, i32* %255, align 4
  %256 = load i64, i64* %PC, align 8
  %257 = add i64 %256, %.sink3
  %258 = load i64, i64* %RSP, align 8
  %259 = add i64 %258, 32
  store i64 %259, i64* %RSP, align 8, !tbaa !2428
  %260 = icmp ugt i64 %258, -33
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %13, align 1, !tbaa !2432
  %262 = trunc i64 %259 to i32
  %263 = and i32 %262, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263) #8
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %20, align 1, !tbaa !2446
  %268 = xor i64 %258, %259
  %269 = lshr i64 %268, 4
  %270 = trunc i64 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %25, align 1, !tbaa !2447
  %272 = icmp eq i64 %259, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %28, align 1, !tbaa !2448
  %274 = lshr i64 %259, 63
  %275 = trunc i64 %274 to i8
  store i8 %275, i8* %31, align 1, !tbaa !2449
  %276 = lshr i64 %258, 63
  %277 = xor i64 %274, %276
  %278 = add nuw nsw i64 %277, %274
  %279 = icmp eq i64 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %37, align 1, !tbaa !2450
  %281 = add i64 %257, 5
  store i64 %281, i64* %PC, align 8
  %282 = add i64 %258, 40
  %283 = inttoptr i64 %259 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %RBP, align 8, !tbaa !2428
  store i64 %282, i64* %RSP, align 8, !tbaa !2428
  %285 = add i64 %257, 6
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %282 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %PC, align 8, !tbaa !2428
  %288 = add i64 %258, 48
  store i64 %288, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_401b47:                                     ; preds = %block_401b2e
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -16
  %291 = add i64 %357, 4
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 154), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 154), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %294 = add i64 %357, -5639
  %295 = add i64 %357, 16
  %296 = load i64, i64* %RSP, align 8, !tbaa !2428
  %297 = add i64 %296, -8
  %298 = inttoptr i64 %297 to i64*
  store i64 %295, i64* %298, align 8
  store i64 %297, i64* %RSP, align 8, !tbaa !2428
  store i64 %294, i64* %PC, align 8, !tbaa !2428
  %299 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %345)
  %300 = load i32, i32* %EAX, align 4
  %301 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %302 = and i32 %300, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #8
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %307 = icmp eq i32 %300, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %28, align 1, !tbaa !2448
  %309 = lshr i32 %300, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v42 = select i1 %307, i64 9, i64 46
  %311 = add i64 %301, %.v42
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br i1 %307, label %block_401c51, label %block_401b85

block_401b85:                                     ; preds = %block_401b47
  %312 = load i64, i64* %RBP, align 8
  %313 = add i64 %312, -16
  %314 = add i64 %311, 4
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 157), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 157), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %317 = add i64 %311, -5701
  %318 = add i64 %311, 16
  %319 = load i64, i64* %RSP, align 8, !tbaa !2428
  %320 = add i64 %319, -8
  %321 = inttoptr i64 %320 to i64*
  store i64 %318, i64* %321, align 8
  store i64 %320, i64* %RSP, align 8, !tbaa !2428
  store i64 %317, i64* %PC, align 8, !tbaa !2428
  %322 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %299)
  %323 = load i32, i32* %EAX, align 4
  %324 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %325 = and i32 %323, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #8
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %330 = icmp eq i32 %323, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %28, align 1, !tbaa !2448
  %332 = lshr i32 %323, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v43 = select i1 %330, i64 34, i64 9
  %334 = add i64 %324, %.v43
  store i64 %334, i64* %PC, align 8, !tbaa !2428
  br i1 %330, label %block_401c51, label %block_401b9e

block_401b2e:                                     ; preds = %block_401af0
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -16
  %337 = add i64 %207, 4
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 152), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 152), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %340 = add i64 %207, -5614
  %341 = add i64 %207, 16
  %342 = load i64, i64* %RSP, align 8, !tbaa !2428
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %341, i64* %344, align 8
  store i64 %343, i64* %RSP, align 8, !tbaa !2428
  store i64 %340, i64* %PC, align 8, !tbaa !2428
  %345 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %195)
  %346 = load i32, i32* %EAX, align 4
  %347 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %348 = and i32 %346, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %353 = icmp eq i32 %346, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %28, align 1, !tbaa !2448
  %355 = lshr i32 %346, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v41 = select i1 %353, i64 34, i64 9
  %357 = add i64 %347, %.v41
  store i64 %357, i64* %PC, align 8, !tbaa !2428
  br i1 %353, label %block_401c51, label %block_401b47
}

; Function Attrs: noinline
define %struct.Memory* @sub_401a30_mflops(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401a30:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  store i64 %11, i64* %9, align 8, !tbaa !2428
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 24) to i64*), align 8
  %15 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %14, i64* %15, align 1, !tbaa !2455
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to double*
  store double 0.000000e+00, double* %17, align 1, !tbaa !2455
  %18 = add i64 %10, -12
  %19 = load i32, i32* %EDI, align 4
  %20 = add i64 %13, 14
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 5
  store i64 %25, i64* %PC, align 8
  %26 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %27 = load i64, i64* %26, align 1
  %28 = inttoptr i64 %23 to i64*
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -24
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC, align 8
  %33 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %34 = load i64, i64* %33, align 1
  %35 = inttoptr i64 %30 to i64*
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %RBP, align 8
  %37 = add i64 %36, -24
  %38 = load i64, i64* %PC, align 8
  %39 = add i64 %38, 5
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %37 to double*
  %41 = load double, double* %40, align 8
  %42 = bitcast [32 x %union.VectorReg]* %4 to double*
  store double %41, double* %42, align 1, !tbaa !2455
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = bitcast i64* %43 to double*
  store double 0.000000e+00, double* %44, align 1, !tbaa !2455
  %45 = add i64 %36, -16
  %46 = add i64 %38, 10
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %45 to double*
  %48 = load double, double* %47, align 8
  %49 = fdiv double %41, %48
  %50 = bitcast %union.VectorReg* %6 to double*
  %51 = load double, double* %50, align 1
  %52 = fmul double %49, %51
  store double %52, double* %42, align 1, !tbaa !2455
  store i64 0, i64* %43, align 1, !tbaa !2455
  %53 = add i64 %36, -4
  %54 = add i64 %38, 17
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RDI, align 8, !tbaa !2428
  %58 = sitofp i32 %56 to double
  %59 = bitcast %union.VectorReg* %5 to double*
  store double %58, double* %59, align 1, !tbaa !2455
  %60 = fmul double %52, %58
  store double %60, double* %42, align 1, !tbaa !2455
  store i64 0, i64* %43, align 1, !tbaa !2455
  %61 = add i64 %38, 26
  store i64 %61, i64* %PC, align 8
  %62 = load i64, i64* %9, align 8, !tbaa !2428
  %63 = add i64 %62, 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  store i64 %63, i64* %9, align 8, !tbaa !2428
  %66 = add i64 %38, 27
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %PC, align 8, !tbaa !2428
  %69 = add i64 %62, 16
  store i64 %69, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400cd0_jacobi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400cd0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  store i64 %11, i64* %9, align 8, !tbaa !2428
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, 16
  %15 = add i64 %13, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %RAX, align 8, !tbaa !2428
  %18 = add i64 %10, 8
  %19 = add i64 %13, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %18 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %R10, align 8, !tbaa !2428
  %22 = add i64 %10, -12
  %23 = load i32, i32* %EDI, align 4
  %24 = add i64 %13, 14
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -16
  %28 = load i64, i64* %RSI, align 8
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -24
  %34 = load i64, i64* %RDX, align 8
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -32
  %40 = load i64, i64* %RCX, align 8
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -40
  %46 = load i64, i64* %R8, align 8
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -48
  %52 = load i64, i64* %R9, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -40
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %RCX, align 8, !tbaa !2428
  %62 = add i64 %61, 12
  %63 = add i64 %58, 7
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, -1
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RDI, align 8, !tbaa !2428
  %68 = icmp eq i32 %65, 0
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %69, i8* %70, align 1, !tbaa !2432
  %71 = and i32 %66, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %75, i8* %76, align 1, !tbaa !2446
  %77 = xor i32 %65, %66
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %80, i8* %81, align 1, !tbaa !2447
  %82 = icmp eq i32 %66, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2448
  %85 = lshr i32 %66, 31
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2449
  %88 = lshr i32 %65, 31
  %89 = xor i32 %85, %88
  %90 = add nuw nsw i32 %89, %88
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %92, i8* %93, align 1, !tbaa !2450
  %94 = add i64 %56, -68
  %95 = add i64 %58, 13
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 %66, i32* %96, align 4
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -40
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %RCX, align 8, !tbaa !2428
  %103 = add i64 %102, 16
  %104 = add i64 %99, 7
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, -1
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RDI, align 8, !tbaa !2428
  %109 = icmp eq i32 %106, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %70, align 1, !tbaa !2432
  %111 = and i32 %107, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #8
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %76, align 1, !tbaa !2446
  %116 = xor i32 %106, %107
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %81, align 1, !tbaa !2447
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %84, align 1, !tbaa !2448
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %87, align 1, !tbaa !2449
  %124 = lshr i32 %106, 31
  %125 = xor i32 %122, %124
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %93, align 1, !tbaa !2450
  %129 = add i64 %97, -72
  %130 = add i64 %99, 13
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  store i32 %107, i32* %131, align 4
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -40
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %133 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = add i64 %137, 20
  %139 = add i64 %134, 7
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, -1
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RDI, align 8, !tbaa !2428
  %144 = icmp eq i32 %141, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %70, align 1, !tbaa !2432
  %146 = and i32 %142, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #8
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %76, align 1, !tbaa !2446
  %151 = xor i32 %141, %142
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %81, align 1, !tbaa !2447
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %84, align 1, !tbaa !2448
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %87, align 1, !tbaa !2449
  %159 = lshr i32 %141, 31
  %160 = xor i32 %157, %159
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %93, align 1, !tbaa !2450
  %164 = add i64 %132, -76
  %165 = add i64 %134, 13
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 %142, i32* %166, align 4
  %167 = load i64, i64* %RBP, align 8
  %168 = add i64 %167, -64
  %169 = load i64, i64* %PC, align 8
  %170 = add i64 %169, 7
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %168 to i32*
  store i32 0, i32* %171, align 4
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -96
  %174 = load i64, i64* %R10, align 8
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, 4
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %173 to i64*
  store i64 %174, i64* %177, align 8
  %178 = load i64, i64* %RBP, align 8
  %179 = add i64 %178, -104
  %180 = load i64, i64* %RAX, align 8
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %179 to i64*
  store i64 %180, i64* %183, align 8
  %184 = bitcast [32 x %union.VectorReg]* %4 to i8*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %186 = bitcast [32 x %union.VectorReg]* %4 to i32*
  %187 = getelementptr inbounds i8, i8* %184, i64 4
  %188 = bitcast i8* %187 to i32*
  %189 = bitcast i64* %185 to i32*
  %190 = getelementptr inbounds i8, i8* %184, i64 12
  %191 = bitcast i8* %190 to i32*
  %192 = bitcast [32 x %union.VectorReg]* %4 to <2 x float>*
  %193 = bitcast [32 x %union.VectorReg]* %4 to float*
  %194 = bitcast i8* %187 to float*
  %195 = bitcast i64* %185 to float*
  %196 = bitcast i8* %190 to float*
  %197 = bitcast i64* %185 to <2 x i32>*
  %198 = bitcast %union.VectorReg* %5 to i8*
  %199 = bitcast %union.VectorReg* %5 to float*
  %200 = getelementptr inbounds i8, i8* %198, i64 4
  %201 = bitcast i8* %200 to float*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %203 = bitcast i64* %202 to float*
  %204 = getelementptr inbounds i8, i8* %198, i64 12
  %205 = bitcast i8* %204 to float*
  %206 = bitcast %union.VectorReg* %5 to <2 x float>*
  %207 = bitcast i64* %202 to <2 x i32>*
  %208 = bitcast i8* %200 to i32*
  %209 = bitcast i64* %202 to i32*
  %210 = bitcast i8* %204 to i32*
  %211 = bitcast %union.VectorReg* %6 to i8*
  %212 = bitcast %union.VectorReg* %6 to float*
  %213 = getelementptr inbounds i8, i8* %211, i64 4
  %214 = bitcast i8* %213 to float*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %216 = bitcast i64* %215 to float*
  %217 = getelementptr inbounds i8, i8* %211, i64 12
  %218 = bitcast i8* %217 to float*
  %219 = bitcast %union.VectorReg* %6 to <2 x float>*
  %220 = bitcast i64* %215 to <2 x i32>*
  %221 = bitcast i8* %213 to i32*
  %222 = bitcast i64* %215 to i32*
  %223 = bitcast i8* %217 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400d29

block_40187e:                                     ; preds = %block_40188a, %block_401877
  %224 = phi i64 [ %7360, %block_40188a ], [ %.pre7, %block_401877 ]
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -60
  %227 = add i64 %224, 3
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RAX, align 8, !tbaa !2428
  %231 = add i64 %225, -76
  %232 = add i64 %224, 6
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 %229, %234
  %236 = icmp ult i32 %229, %234
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %70, align 1, !tbaa !2432
  %238 = and i32 %235, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238) #8
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %76, align 1, !tbaa !2446
  %243 = xor i32 %234, %229
  %244 = xor i32 %243, %235
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %81, align 1, !tbaa !2447
  %248 = icmp eq i32 %235, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %84, align 1, !tbaa !2448
  %250 = lshr i32 %235, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %87, align 1, !tbaa !2449
  %252 = lshr i32 %229, 31
  %253 = lshr i32 %234, 31
  %254 = xor i32 %253, %252
  %255 = xor i32 %250, %252
  %256 = add nuw nsw i32 %255, %254
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %93, align 1, !tbaa !2450
  %259 = icmp ne i8 %251, 0
  %260 = xor i1 %259, %257
  %.v15 = select i1 %260, i64 12, i64 178
  %261 = add i64 %224, %.v15
  store i64 %261, i64* %PC, align 8, !tbaa !2428
  br i1 %260, label %block_40188a, label %block_401930

block_401877:                                     ; preds = %block_40186b
  %262 = add i64 %266, -60
  %263 = add i64 %302, 7
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  store i32 1, i32* %264, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40187e

block_40186b:                                     ; preds = %block_401930, %block_401864
  %265 = phi i64 [ %6994, %block_401930 ], [ %.pre6, %block_401864 ]
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -56
  %268 = add i64 %265, 3
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX, align 8, !tbaa !2428
  %272 = add i64 %266, -72
  %273 = add i64 %265, 6
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = sub i32 %270, %275
  %277 = icmp ult i32 %270, %275
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %70, align 1, !tbaa !2432
  %279 = and i32 %276, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279) #8
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %76, align 1, !tbaa !2446
  %284 = xor i32 %275, %270
  %285 = xor i32 %284, %276
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %81, align 1, !tbaa !2447
  %289 = icmp eq i32 %276, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %84, align 1, !tbaa !2448
  %291 = lshr i32 %276, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %87, align 1, !tbaa !2449
  %293 = lshr i32 %270, 31
  %294 = lshr i32 %275, 31
  %295 = xor i32 %294, %293
  %296 = xor i32 %291, %293
  %297 = add nuw nsw i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %93, align 1, !tbaa !2450
  %300 = icmp ne i8 %292, 0
  %301 = xor i1 %300, %298
  %.v14 = select i1 %301, i64 12, i64 216
  %302 = add i64 %265, %.v14
  store i64 %302, i64* %PC, align 8, !tbaa !2428
  br i1 %301, label %block_401877, label %block_401943

block_401969:                                     ; preds = %block_400d29
  %303 = add i64 %6999, -80
  %304 = add i64 %7035, 5
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %307 = add i64 %7035, 6
  store i64 %307, i64* %PC, align 8
  %308 = load i64, i64* %9, align 8, !tbaa !2428
  %309 = add i64 %308, 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RBP, align 8, !tbaa !2428
  store i64 %309, i64* %9, align 8, !tbaa !2428
  %312 = add i64 %7035, 7
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %309 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %PC, align 8, !tbaa !2428
  %315 = add i64 %308, 16
  store i64 %315, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401864:                                     ; preds = %block_401858
  %316 = add i64 %6683, -56
  %317 = add i64 %6719, 7
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i32*
  store i32 1, i32* %318, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40186b

block_400d76:                                     ; preds = %block_400d6a
  %319 = add i64 %6888, -16
  %320 = add i64 %6924, 4
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = add i64 %6924, 7
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = add i64 %6924, 11
  store i64 %326, i64* %PC, align 8
  %327 = load i64, i64* %321, align 8
  store i64 %327, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %328 = add i64 %6924, 19
  store i64 %328, i64* %PC, align 8
  %329 = load i64, i64* %321, align 8
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  %330 = add i64 %6924, 23
  store i64 %330, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %331 = add i64 %6924, 27
  store i64 %331, i64* %PC, align 8
  %332 = load i64, i64* %321, align 8
  store i64 %332, i64* %RCX, align 8, !tbaa !2428
  %333 = add i64 %6924, 31
  store i64 %333, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %334 = add i64 %6888, -52
  %335 = add i64 %6924, 34
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = add i64 %6924, 38
  store i64 %339, i64* %PC, align 8
  %340 = load i64, i64* %321, align 8
  store i64 %340, i64* %RCX, align 8, !tbaa !2428
  %341 = add i64 %340, 16
  %342 = add i64 %6924, 42
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %337 to i64
  %346 = sext i32 %344 to i64
  %347 = mul nsw i64 %346, %345
  %348 = trunc i64 %347 to i32
  %349 = and i64 %347, 4294967295
  store i64 %349, i64* %RSI, align 8, !tbaa !2428
  %350 = shl i64 %347, 32
  %351 = ashr exact i64 %350, 32
  %352 = icmp ne i64 %351, %347
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %70, align 1, !tbaa !2432
  %354 = and i32 %348, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354) #8
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %359 = lshr i32 %348, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %87, align 1, !tbaa !2449
  store i8 %353, i8* %93, align 1, !tbaa !2450
  %361 = add i64 %6924, 46
  store i64 %361, i64* %PC, align 8
  %362 = load i64, i64* %321, align 8
  store i64 %362, i64* %RCX, align 8, !tbaa !2428
  %363 = add i64 %362, 20
  %364 = add i64 %6924, 50
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = mul nsw i64 %367, %351
  %369 = and i64 %368, 4294967295
  store i64 %369, i64* %RSI, align 8, !tbaa !2428
  %370 = trunc i64 %368 to i32
  store i64 %369, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %371 = and i32 %370, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371) #8
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %376 = icmp eq i32 %370, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %84, align 1, !tbaa !2448
  %378 = lshr i32 %370, 31
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %380 = load i64, i64* %RBP, align 8
  %381 = add i64 %380, -56
  %382 = add i64 %6924, 55
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RSI, align 8, !tbaa !2428
  %386 = add i64 %380, -16
  %387 = add i64 %6924, 59
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %RCX, align 8, !tbaa !2428
  %390 = add i64 %389, 20
  %391 = add i64 %6924, 63
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %384 to i64
  %395 = sext i32 %393 to i64
  %396 = mul nsw i64 %395, %394
  %397 = and i64 %396, 4294967295
  store i64 %397, i64* %RSI, align 8, !tbaa !2428
  %398 = trunc i64 %396 to i32
  %399 = add i32 %398, %370
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RDX, align 8, !tbaa !2428
  %401 = icmp ult i32 %399, %370
  %402 = icmp ult i32 %399, %398
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %70, align 1, !tbaa !2432
  %405 = and i32 %399, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405) #8
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %76, align 1, !tbaa !2446
  %410 = xor i64 %396, %368
  %411 = trunc i64 %410 to i32
  %412 = xor i32 %411, %399
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %81, align 1, !tbaa !2447
  %416 = icmp eq i32 %399, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %84, align 1, !tbaa !2448
  %418 = lshr i32 %399, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %87, align 1, !tbaa !2449
  %420 = lshr i32 %398, 31
  %421 = xor i32 %418, %378
  %422 = xor i32 %418, %420
  %423 = add nuw nsw i32 %421, %422
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %93, align 1, !tbaa !2450
  %426 = add i64 %380, -60
  %427 = add i64 %6924, 68
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = add i32 %429, %399
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RDX, align 8, !tbaa !2428
  %432 = icmp ult i32 %430, %399
  %433 = icmp ult i32 %430, %429
  %434 = or i1 %432, %433
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %70, align 1, !tbaa !2432
  %436 = and i32 %430, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436) #8
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %76, align 1, !tbaa !2446
  %441 = xor i32 %429, %399
  %442 = xor i32 %441, %430
  %443 = lshr i32 %442, 4
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %81, align 1, !tbaa !2447
  %446 = icmp eq i32 %430, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %84, align 1, !tbaa !2448
  %448 = lshr i32 %430, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %87, align 1, !tbaa !2449
  %450 = lshr i32 %429, 31
  %451 = xor i32 %448, %418
  %452 = xor i32 %448, %450
  %453 = add nuw nsw i32 %451, %452
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %93, align 1, !tbaa !2450
  %456 = sext i32 %430 to i64
  store i64 %456, i64* %RCX, align 8, !tbaa !2428
  %457 = load i64, i64* %RAX, align 8
  %458 = shl nsw i64 %456, 2
  %459 = add i64 %458, %457
  %460 = add i64 %6924, 76
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  store i32 %462, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %463 = load i64, i64* %RBP, align 8
  %464 = add i64 %463, -40
  %465 = add i64 %6924, 80
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = add i64 %6924, 83
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i64*
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %RAX, align 8, !tbaa !2428
  %471 = add i64 %6924, 87
  store i64 %471, i64* %PC, align 8
  %472 = load i64, i64* %466, align 8
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %473 = add i64 %6924, 95
  store i64 %473, i64* %PC, align 8
  %474 = load i64, i64* %466, align 8
  store i64 %474, i64* %RCX, align 8, !tbaa !2428
  %475 = add i64 %6924, 99
  store i64 %475, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %476 = add i64 %6924, 103
  store i64 %476, i64* %PC, align 8
  %477 = load i64, i64* %466, align 8
  store i64 %477, i64* %RCX, align 8, !tbaa !2428
  %478 = add i64 %6924, 107
  store i64 %478, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %479 = add i64 %463, -52
  %480 = add i64 %6924, 110
  store i64 %480, i64* %PC, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = add i32 %482, 1
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RSI, align 8, !tbaa !2428
  %485 = icmp eq i32 %482, -1
  %486 = icmp eq i32 %483, 0
  %487 = or i1 %485, %486
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %70, align 1, !tbaa !2432
  %489 = and i32 %483, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489) #8
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %76, align 1, !tbaa !2446
  %494 = xor i32 %482, %483
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %81, align 1, !tbaa !2447
  %498 = zext i1 %486 to i8
  store i8 %498, i8* %84, align 1, !tbaa !2448
  %499 = lshr i32 %483, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %87, align 1, !tbaa !2449
  %501 = lshr i32 %482, 31
  %502 = xor i32 %499, %501
  %503 = add nuw nsw i32 %502, %499
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %93, align 1, !tbaa !2450
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -40
  %508 = add i64 %6924, 117
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  %511 = add i64 %510, 16
  %512 = add i64 %6924, 121
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %483 to i64
  %516 = sext i32 %514 to i64
  %517 = mul nsw i64 %516, %515
  %518 = trunc i64 %517 to i32
  %519 = and i64 %517, 4294967295
  store i64 %519, i64* %RSI, align 8, !tbaa !2428
  %520 = shl i64 %517, 32
  %521 = ashr exact i64 %520, 32
  %522 = icmp ne i64 %521, %517
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %70, align 1, !tbaa !2432
  %524 = and i32 %518, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524) #8
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %529 = lshr i32 %518, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %87, align 1, !tbaa !2449
  store i8 %523, i8* %93, align 1, !tbaa !2450
  %531 = add i64 %6924, 125
  store i64 %531, i64* %PC, align 8
  %532 = load i64, i64* %509, align 8
  store i64 %532, i64* %RCX, align 8, !tbaa !2428
  %533 = add i64 %532, 20
  %534 = add i64 %6924, 129
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = sext i32 %536 to i64
  %538 = mul nsw i64 %537, %521
  %539 = and i64 %538, 4294967295
  store i64 %539, i64* %RSI, align 8, !tbaa !2428
  %540 = load i64, i64* %RDX, align 8
  %541 = trunc i64 %538 to i32
  %542 = trunc i64 %540 to i32
  %543 = add i32 %541, %542
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RDX, align 8, !tbaa !2428
  %545 = icmp ult i32 %543, %542
  %546 = icmp ult i32 %543, %541
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %70, align 1, !tbaa !2432
  %549 = and i32 %543, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549) #8
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %76, align 1, !tbaa !2446
  %554 = xor i64 %538, %540
  %555 = trunc i64 %554 to i32
  %556 = xor i32 %555, %543
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %81, align 1, !tbaa !2447
  %560 = icmp eq i32 %543, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %84, align 1, !tbaa !2448
  %562 = lshr i32 %543, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %87, align 1, !tbaa !2449
  %564 = lshr i32 %542, 31
  %565 = lshr i32 %541, 31
  %566 = xor i32 %562, %564
  %567 = xor i32 %562, %565
  %568 = add nuw nsw i32 %566, %567
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %93, align 1, !tbaa !2450
  %571 = load i64, i64* %RBP, align 8
  %572 = add i64 %571, -56
  %573 = add i64 %6924, 134
  store i64 %573, i64* %PC, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RSI, align 8, !tbaa !2428
  %577 = add i64 %571, -40
  %578 = add i64 %6924, 138
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RCX, align 8, !tbaa !2428
  %581 = add i64 %580, 20
  %582 = add i64 %6924, 142
  store i64 %582, i64* %PC, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %575 to i64
  %586 = sext i32 %584 to i64
  %587 = mul nsw i64 %586, %585
  %588 = and i64 %587, 4294967295
  store i64 %588, i64* %RSI, align 8, !tbaa !2428
  %589 = trunc i64 %587 to i32
  %590 = add i32 %589, %543
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RDX, align 8, !tbaa !2428
  %592 = icmp ult i32 %590, %543
  %593 = icmp ult i32 %590, %589
  %594 = or i1 %592, %593
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %70, align 1, !tbaa !2432
  %596 = and i32 %590, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596) #8
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %76, align 1, !tbaa !2446
  %601 = xor i64 %587, %544
  %602 = trunc i64 %601 to i32
  %603 = xor i32 %602, %590
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %81, align 1, !tbaa !2447
  %607 = icmp eq i32 %590, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %84, align 1, !tbaa !2448
  %609 = lshr i32 %590, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %87, align 1, !tbaa !2449
  %611 = lshr i32 %589, 31
  %612 = xor i32 %609, %562
  %613 = xor i32 %609, %611
  %614 = add nuw nsw i32 %612, %613
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %93, align 1, !tbaa !2450
  %617 = add i64 %571, -60
  %618 = add i64 %6924, 147
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = add i32 %620, %590
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX, align 8, !tbaa !2428
  %623 = icmp ult i32 %621, %590
  %624 = icmp ult i32 %621, %620
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %70, align 1, !tbaa !2432
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627) #8
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %76, align 1, !tbaa !2446
  %632 = xor i32 %620, %590
  %633 = xor i32 %632, %621
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %81, align 1, !tbaa !2447
  %637 = icmp eq i32 %621, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %84, align 1, !tbaa !2448
  %639 = lshr i32 %621, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %87, align 1, !tbaa !2449
  %641 = lshr i32 %620, 31
  %642 = xor i32 %639, %609
  %643 = xor i32 %639, %641
  %644 = add nuw nsw i32 %642, %643
  %645 = icmp eq i32 %644, 2
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %93, align 1, !tbaa !2450
  %647 = sext i32 %621 to i64
  store i64 %647, i64* %RCX, align 8, !tbaa !2428
  %648 = load i64, i64* %RAX, align 8
  %649 = shl nsw i64 %647, 2
  %650 = add i64 %649, %648
  %651 = add i64 %6924, 155
  store i64 %651, i64* %PC, align 8
  %652 = load <2 x float>, <2 x float>* %192, align 1
  %653 = load <2 x i32>, <2 x i32>* %197, align 1
  %654 = inttoptr i64 %650 to float*
  %655 = load float, float* %654, align 4
  %656 = extractelement <2 x float> %652, i32 0
  %657 = fmul float %656, %655
  store float %657, float* %193, align 1, !tbaa !2451
  %658 = bitcast <2 x float> %652 to <2 x i32>
  %659 = extractelement <2 x i32> %658, i32 1
  store i32 %659, i32* %188, align 1, !tbaa !2451
  %660 = extractelement <2 x i32> %653, i32 0
  store i32 %660, i32* %189, align 1, !tbaa !2451
  %661 = extractelement <2 x i32> %653, i32 1
  store i32 %661, i32* %191, align 1, !tbaa !2451
  %662 = load i64, i64* %RBP, align 8
  %663 = add i64 %662, -16
  %664 = add i64 %6924, 159
  store i64 %664, i64* %PC, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %RAX, align 8, !tbaa !2428
  %667 = add i64 %6924, 162
  store i64 %667, i64* %PC, align 8
  %668 = inttoptr i64 %666 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RAX, align 8, !tbaa !2428
  %670 = add i64 %6924, 166
  store i64 %670, i64* %PC, align 8
  %671 = load i64, i64* %665, align 8
  store i64 %671, i64* %RCX, align 8, !tbaa !2428
  %672 = add i64 %671, 12
  %673 = add i64 %6924, 169
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RDX, align 8, !tbaa !2428
  %677 = add i64 %6924, 176
  store i64 %677, i64* %PC, align 8
  %678 = load i64, i64* %665, align 8
  store i64 %678, i64* %RCX, align 8, !tbaa !2428
  %679 = add i64 %678, 16
  %680 = add i64 %6924, 180
  store i64 %680, i64* %PC, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %675 to i64
  %684 = sext i32 %682 to i64
  %685 = mul nsw i64 %684, %683
  %686 = trunc i64 %685 to i32
  %687 = and i64 %685, 4294967295
  store i64 %687, i64* %RDX, align 8, !tbaa !2428
  %688 = shl i64 %685, 32
  %689 = ashr exact i64 %688, 32
  %690 = icmp ne i64 %689, %685
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %70, align 1, !tbaa !2432
  %692 = and i32 %686, 255
  %693 = tail call i32 @llvm.ctpop.i32(i32 %692) #8
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  store i8 %696, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %697 = lshr i32 %686, 31
  %698 = trunc i32 %697 to i8
  store i8 %698, i8* %87, align 1, !tbaa !2449
  store i8 %691, i8* %93, align 1, !tbaa !2450
  %699 = add i64 %6924, 184
  store i64 %699, i64* %PC, align 8
  %700 = load i64, i64* %665, align 8
  store i64 %700, i64* %RCX, align 8, !tbaa !2428
  %701 = add i64 %700, 20
  %702 = add i64 %6924, 188
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = sext i32 %704 to i64
  %706 = mul nsw i64 %705, %689
  %707 = trunc i64 %706 to i32
  %708 = and i64 %706, 4294967295
  store i64 %708, i64* %RDX, align 8, !tbaa !2428
  %709 = shl i64 %706, 32
  %710 = ashr exact i64 %709, 32
  %711 = icmp ne i64 %710, %706
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %70, align 1, !tbaa !2432
  %713 = and i32 %707, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713) #8
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %718 = lshr i32 %707, 31
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %87, align 1, !tbaa !2449
  store i8 %712, i8* %93, align 1, !tbaa !2450
  %720 = add i64 %662, -52
  %721 = add i64 %6924, 191
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RSI, align 8, !tbaa !2428
  %725 = add i64 %6924, 195
  store i64 %725, i64* %PC, align 8
  %726 = load i64, i64* %665, align 8
  store i64 %726, i64* %RCX, align 8, !tbaa !2428
  %727 = add i64 %726, 16
  %728 = add i64 %6924, 199
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = sext i32 %723 to i64
  %732 = sext i32 %730 to i64
  %733 = mul nsw i64 %732, %731
  %734 = trunc i64 %733 to i32
  %735 = and i64 %733, 4294967295
  store i64 %735, i64* %RSI, align 8, !tbaa !2428
  %736 = shl i64 %733, 32
  %737 = ashr exact i64 %736, 32
  %738 = icmp ne i64 %737, %733
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %70, align 1, !tbaa !2432
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740) #8
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %745 = lshr i32 %734, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %87, align 1, !tbaa !2449
  store i8 %739, i8* %93, align 1, !tbaa !2450
  %747 = load i64, i64* %RBP, align 8
  %748 = add i64 %747, -16
  %749 = add i64 %6924, 203
  store i64 %749, i64* %PC, align 8
  %750 = inttoptr i64 %748 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %RCX, align 8, !tbaa !2428
  %752 = add i64 %751, 20
  %753 = add i64 %6924, 207
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  %757 = mul nsw i64 %756, %737
  %758 = and i64 %757, 4294967295
  store i64 %758, i64* %RSI, align 8, !tbaa !2428
  %759 = trunc i64 %757 to i32
  %760 = add i32 %759, %707
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RDX, align 8, !tbaa !2428
  %762 = icmp ult i32 %760, %707
  %763 = icmp ult i32 %760, %759
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %70, align 1, !tbaa !2432
  %766 = and i32 %760, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766) #8
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %76, align 1, !tbaa !2446
  %771 = xor i64 %757, %706
  %772 = trunc i64 %771 to i32
  %773 = xor i32 %772, %760
  %774 = lshr i32 %773, 4
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %81, align 1, !tbaa !2447
  %777 = icmp eq i32 %760, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %84, align 1, !tbaa !2448
  %779 = lshr i32 %760, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %87, align 1, !tbaa !2449
  %781 = lshr i32 %759, 31
  %782 = xor i32 %779, %718
  %783 = xor i32 %779, %781
  %784 = add nuw nsw i32 %782, %783
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %93, align 1, !tbaa !2450
  %787 = add i64 %747, -56
  %788 = add i64 %6924, 212
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RSI, align 8, !tbaa !2428
  %792 = add i64 %6924, 216
  store i64 %792, i64* %PC, align 8
  %793 = load i64, i64* %750, align 8
  store i64 %793, i64* %RCX, align 8, !tbaa !2428
  %794 = add i64 %793, 20
  %795 = add i64 %6924, 220
  store i64 %795, i64* %PC, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %790 to i64
  %799 = sext i32 %797 to i64
  %800 = mul nsw i64 %799, %798
  %801 = and i64 %800, 4294967295
  store i64 %801, i64* %RSI, align 8, !tbaa !2428
  %802 = trunc i64 %800 to i32
  %803 = add i32 %802, %760
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RDX, align 8, !tbaa !2428
  %805 = icmp ult i32 %803, %760
  %806 = icmp ult i32 %803, %802
  %807 = or i1 %805, %806
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %70, align 1, !tbaa !2432
  %809 = and i32 %803, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809) #8
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %76, align 1, !tbaa !2446
  %814 = xor i64 %800, %761
  %815 = trunc i64 %814 to i32
  %816 = xor i32 %815, %803
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %81, align 1, !tbaa !2447
  %820 = icmp eq i32 %803, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %84, align 1, !tbaa !2448
  %822 = lshr i32 %803, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %87, align 1, !tbaa !2449
  %824 = lshr i32 %802, 31
  %825 = xor i32 %822, %779
  %826 = xor i32 %822, %824
  %827 = add nuw nsw i32 %825, %826
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %93, align 1, !tbaa !2450
  %830 = load i64, i64* %RBP, align 8
  %831 = add i64 %830, -60
  %832 = add i64 %6924, 225
  store i64 %832, i64* %PC, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = add i32 %834, %803
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDX, align 8, !tbaa !2428
  %837 = icmp ult i32 %835, %803
  %838 = icmp ult i32 %835, %834
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %70, align 1, !tbaa !2432
  %841 = and i32 %835, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841) #8
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %76, align 1, !tbaa !2446
  %846 = xor i32 %834, %803
  %847 = xor i32 %846, %835
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %81, align 1, !tbaa !2447
  %851 = icmp eq i32 %835, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %84, align 1, !tbaa !2448
  %853 = lshr i32 %835, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %87, align 1, !tbaa !2449
  %855 = lshr i32 %834, 31
  %856 = xor i32 %853, %822
  %857 = xor i32 %853, %855
  %858 = add nuw nsw i32 %856, %857
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %93, align 1, !tbaa !2450
  %861 = sext i32 %835 to i64
  store i64 %861, i64* %RCX, align 8, !tbaa !2428
  %862 = load i64, i64* %RAX, align 8
  %863 = shl nsw i64 %861, 2
  %864 = add i64 %863, %862
  %865 = add i64 %6924, 233
  store i64 %865, i64* %PC, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = bitcast %union.VectorReg* %5 to i32*
  store i32 %867, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %869 = add i64 %830, -40
  %870 = add i64 %6924, 237
  store i64 %870, i64* %PC, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  store i64 %872, i64* %RAX, align 8, !tbaa !2428
  %873 = add i64 %6924, 240
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %RAX, align 8, !tbaa !2428
  %876 = add i64 %6924, 244
  store i64 %876, i64* %PC, align 8
  %877 = load i64, i64* %871, align 8
  store i64 %877, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %878 = add i64 %6924, 252
  store i64 %878, i64* %PC, align 8
  %879 = load i64, i64* %871, align 8
  store i64 %879, i64* %RCX, align 8, !tbaa !2428
  %880 = add i64 %6924, 256
  store i64 %880, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %881 = add i64 %6924, 260
  store i64 %881, i64* %PC, align 8
  %882 = load i64, i64* %871, align 8
  store i64 %882, i64* %RCX, align 8, !tbaa !2428
  %883 = add i64 %6924, 264
  store i64 %883, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %884 = load i64, i64* %RBP, align 8
  %885 = add i64 %884, -52
  %886 = add i64 %6924, 267
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RSI, align 8, !tbaa !2428
  %890 = add i64 %884, -40
  %891 = add i64 %6924, 271
  store i64 %891, i64* %PC, align 8
  %892 = inttoptr i64 %890 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %RCX, align 8, !tbaa !2428
  %894 = add i64 %893, 16
  %895 = add i64 %6924, 275
  store i64 %895, i64* %PC, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = sext i32 %888 to i64
  %899 = sext i32 %897 to i64
  %900 = mul nsw i64 %899, %898
  %901 = trunc i64 %900 to i32
  %902 = and i64 %900, 4294967295
  store i64 %902, i64* %RSI, align 8, !tbaa !2428
  %903 = shl i64 %900, 32
  %904 = ashr exact i64 %903, 32
  %905 = icmp ne i64 %904, %900
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %70, align 1, !tbaa !2432
  %907 = and i32 %901, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907) #8
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %912 = lshr i32 %901, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %87, align 1, !tbaa !2449
  store i8 %906, i8* %93, align 1, !tbaa !2450
  %914 = add i64 %6924, 279
  store i64 %914, i64* %PC, align 8
  %915 = load i64, i64* %892, align 8
  store i64 %915, i64* %RCX, align 8, !tbaa !2428
  %916 = add i64 %915, 20
  %917 = add i64 %6924, 283
  store i64 %917, i64* %PC, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = sext i32 %919 to i64
  %921 = mul nsw i64 %920, %904
  %922 = and i64 %921, 4294967295
  store i64 %922, i64* %RSI, align 8, !tbaa !2428
  %923 = trunc i64 %921 to i32
  store i64 %922, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924) #8
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %929 = icmp eq i32 %923, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %84, align 1, !tbaa !2448
  %931 = lshr i32 %923, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %933 = add i64 %884, -56
  %934 = add i64 %6924, 288
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = add i32 %936, 1
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RSI, align 8, !tbaa !2428
  %939 = icmp eq i32 %936, -1
  %940 = icmp eq i32 %937, 0
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %70, align 1, !tbaa !2432
  %943 = and i32 %937, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943) #8
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %76, align 1, !tbaa !2446
  %948 = xor i32 %936, %937
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %81, align 1, !tbaa !2447
  %952 = zext i1 %940 to i8
  store i8 %952, i8* %84, align 1, !tbaa !2448
  %953 = lshr i32 %937, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %87, align 1, !tbaa !2449
  %955 = lshr i32 %936, 31
  %956 = xor i32 %953, %955
  %957 = add nuw nsw i32 %956, %953
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %93, align 1, !tbaa !2450
  %960 = load i64, i64* %RBP, align 8
  %961 = add i64 %960, -40
  %962 = add i64 %6924, 295
  store i64 %962, i64* %PC, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RCX, align 8, !tbaa !2428
  %965 = add i64 %964, 20
  %966 = add i64 %6924, 299
  store i64 %966, i64* %PC, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = sext i32 %937 to i64
  %970 = sext i32 %968 to i64
  %971 = mul nsw i64 %970, %969
  %972 = and i64 %971, 4294967295
  store i64 %972, i64* %RSI, align 8, !tbaa !2428
  %973 = trunc i64 %971 to i32
  %974 = add i32 %973, %923
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RDX, align 8, !tbaa !2428
  %976 = icmp ult i32 %974, %923
  %977 = icmp ult i32 %974, %973
  %978 = or i1 %976, %977
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %70, align 1, !tbaa !2432
  %980 = and i32 %974, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980) #8
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %76, align 1, !tbaa !2446
  %985 = xor i64 %971, %921
  %986 = trunc i64 %985 to i32
  %987 = xor i32 %986, %974
  %988 = lshr i32 %987, 4
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %81, align 1, !tbaa !2447
  %991 = icmp eq i32 %974, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %84, align 1, !tbaa !2448
  %993 = lshr i32 %974, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %87, align 1, !tbaa !2449
  %995 = lshr i32 %973, 31
  %996 = xor i32 %993, %931
  %997 = xor i32 %993, %995
  %998 = add nuw nsw i32 %996, %997
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %93, align 1, !tbaa !2450
  %1001 = add i64 %960, -60
  %1002 = add i64 %6924, 304
  store i64 %1002, i64* %PC, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = add i32 %1004, %974
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RDX, align 8, !tbaa !2428
  %1007 = icmp ult i32 %1005, %974
  %1008 = icmp ult i32 %1005, %1004
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %70, align 1, !tbaa !2432
  %1011 = and i32 %1005, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011) #8
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %76, align 1, !tbaa !2446
  %1016 = xor i32 %1004, %974
  %1017 = xor i32 %1016, %1005
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %81, align 1, !tbaa !2447
  %1021 = icmp eq i32 %1005, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %84, align 1, !tbaa !2448
  %1023 = lshr i32 %1005, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %87, align 1, !tbaa !2449
  %1025 = lshr i32 %1004, 31
  %1026 = xor i32 %1023, %993
  %1027 = xor i32 %1023, %1025
  %1028 = add nuw nsw i32 %1026, %1027
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %93, align 1, !tbaa !2450
  %1031 = sext i32 %1005 to i64
  store i64 %1031, i64* %RCX, align 8, !tbaa !2428
  %1032 = load i64, i64* %RAX, align 8
  %1033 = shl nsw i64 %1031, 2
  %1034 = add i64 %1033, %1032
  %1035 = add i64 %6924, 312
  store i64 %1035, i64* %PC, align 8
  %1036 = load <2 x float>, <2 x float>* %206, align 1
  %1037 = load <2 x i32>, <2 x i32>* %207, align 1
  %1038 = inttoptr i64 %1034 to float*
  %1039 = load float, float* %1038, align 4
  %1040 = extractelement <2 x float> %1036, i32 0
  %1041 = fmul float %1040, %1039
  store float %1041, float* %199, align 1, !tbaa !2451
  %1042 = bitcast <2 x float> %1036 to <2 x i32>
  %1043 = extractelement <2 x i32> %1042, i32 1
  store i32 %1043, i32* %208, align 1, !tbaa !2451
  %1044 = extractelement <2 x i32> %1037, i32 0
  store i32 %1044, i32* %209, align 1, !tbaa !2451
  %1045 = extractelement <2 x i32> %1037, i32 1
  store i32 %1045, i32* %210, align 1, !tbaa !2451
  %1046 = load <2 x float>, <2 x float>* %192, align 1
  %1047 = load <2 x i32>, <2 x i32>* %197, align 1
  %1048 = load <2 x float>, <2 x float>* %206, align 1
  %1049 = extractelement <2 x float> %1046, i32 0
  %1050 = extractelement <2 x float> %1048, i32 0
  %1051 = fadd float %1049, %1050
  store float %1051, float* %193, align 1, !tbaa !2451
  %1052 = bitcast <2 x float> %1046 to <2 x i32>
  %1053 = extractelement <2 x i32> %1052, i32 1
  store i32 %1053, i32* %188, align 1, !tbaa !2451
  %1054 = extractelement <2 x i32> %1047, i32 0
  store i32 %1054, i32* %189, align 1, !tbaa !2451
  %1055 = extractelement <2 x i32> %1047, i32 1
  store i32 %1055, i32* %191, align 1, !tbaa !2451
  %1056 = load i64, i64* %RBP, align 8
  %1057 = add i64 %1056, -16
  %1058 = add i64 %6924, 320
  store i64 %1058, i64* %PC, align 8
  %1059 = inttoptr i64 %1057 to i64*
  %1060 = load i64, i64* %1059, align 8
  store i64 %1060, i64* %RAX, align 8, !tbaa !2428
  %1061 = add i64 %6924, 323
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RAX, align 8, !tbaa !2428
  %1064 = add i64 %6924, 327
  store i64 %1064, i64* %PC, align 8
  %1065 = load i64, i64* %1059, align 8
  store i64 %1065, i64* %RCX, align 8, !tbaa !2428
  %1066 = add i64 %1065, 12
  %1067 = add i64 %6924, 330
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = shl i32 %1069, 1
  %1071 = icmp slt i32 %1069, 0
  %1072 = icmp slt i32 %1070, 0
  %1073 = xor i1 %1071, %1072
  %1074 = zext i32 %1070 to i64
  store i64 %1074, i64* %RDX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1069, 31
  %1075 = trunc i32 %.lobit to i8
  store i8 %1075, i8* %70, align 1, !tbaa !2453
  %1076 = and i32 %1070, 254
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076) #8
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %1081 = icmp eq i32 %1070, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %84, align 1, !tbaa !2453
  %1083 = lshr i32 %1069, 30
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %87, align 1, !tbaa !2453
  %1086 = zext i1 %1073 to i8
  store i8 %1086, i8* %93, align 1, !tbaa !2453
  %1087 = add i64 %6924, 337
  store i64 %1087, i64* %PC, align 8
  %1088 = load i64, i64* %1059, align 8
  store i64 %1088, i64* %RCX, align 8, !tbaa !2428
  %1089 = add i64 %1088, 16
  %1090 = add i64 %6924, 341
  store i64 %1090, i64* %PC, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sext i32 %1070 to i64
  %1094 = sext i32 %1092 to i64
  %1095 = mul nsw i64 %1094, %1093
  %1096 = trunc i64 %1095 to i32
  %1097 = and i64 %1095, 4294967294
  store i64 %1097, i64* %RDX, align 8, !tbaa !2428
  %1098 = shl i64 %1095, 32
  %1099 = ashr exact i64 %1098, 32
  %1100 = icmp ne i64 %1099, %1095
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %70, align 1, !tbaa !2432
  %1102 = and i32 %1096, 254
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102) #8
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1107 = lshr i32 %1096, 31
  %1108 = trunc i32 %1107 to i8
  store i8 %1108, i8* %87, align 1, !tbaa !2449
  store i8 %1101, i8* %93, align 1, !tbaa !2450
  %1109 = add i64 %6924, 345
  store i64 %1109, i64* %PC, align 8
  %1110 = load i64, i64* %1059, align 8
  store i64 %1110, i64* %RCX, align 8, !tbaa !2428
  %1111 = add i64 %1110, 20
  %1112 = add i64 %6924, 349
  store i64 %1112, i64* %PC, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = mul nsw i64 %1115, %1099
  %1117 = trunc i64 %1116 to i32
  %1118 = and i64 %1116, 4294967295
  store i64 %1118, i64* %RDX, align 8, !tbaa !2428
  %1119 = shl i64 %1116, 32
  %1120 = ashr exact i64 %1119, 32
  %1121 = icmp ne i64 %1120, %1116
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %70, align 1, !tbaa !2432
  %1123 = and i32 %1117, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123) #8
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1128 = lshr i32 %1117, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %87, align 1, !tbaa !2449
  store i8 %1122, i8* %93, align 1, !tbaa !2450
  %1130 = load i64, i64* %RBP, align 8
  %1131 = add i64 %1130, -52
  %1132 = add i64 %6924, 352
  store i64 %1132, i64* %PC, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RSI, align 8, !tbaa !2428
  %1136 = add i64 %1130, -16
  %1137 = add i64 %6924, 356
  store i64 %1137, i64* %PC, align 8
  %1138 = inttoptr i64 %1136 to i64*
  %1139 = load i64, i64* %1138, align 8
  store i64 %1139, i64* %RCX, align 8, !tbaa !2428
  %1140 = add i64 %1139, 16
  %1141 = add i64 %6924, 360
  store i64 %1141, i64* %PC, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = sext i32 %1134 to i64
  %1145 = sext i32 %1143 to i64
  %1146 = mul nsw i64 %1145, %1144
  %1147 = trunc i64 %1146 to i32
  %1148 = and i64 %1146, 4294967295
  store i64 %1148, i64* %RSI, align 8, !tbaa !2428
  %1149 = shl i64 %1146, 32
  %1150 = ashr exact i64 %1149, 32
  %1151 = icmp ne i64 %1150, %1146
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %70, align 1, !tbaa !2432
  %1153 = and i32 %1147, 255
  %1154 = tail call i32 @llvm.ctpop.i32(i32 %1153) #8
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  store i8 %1157, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1158 = lshr i32 %1147, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %87, align 1, !tbaa !2449
  store i8 %1152, i8* %93, align 1, !tbaa !2450
  %1160 = add i64 %6924, 364
  store i64 %1160, i64* %PC, align 8
  %1161 = load i64, i64* %1138, align 8
  store i64 %1161, i64* %RCX, align 8, !tbaa !2428
  %1162 = add i64 %1161, 20
  %1163 = add i64 %6924, 368
  store i64 %1163, i64* %PC, align 8
  %1164 = inttoptr i64 %1162 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = mul nsw i64 %1166, %1150
  %1168 = and i64 %1167, 4294967295
  store i64 %1168, i64* %RSI, align 8, !tbaa !2428
  %1169 = trunc i64 %1167 to i32
  %1170 = add i32 %1169, %1117
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RDX, align 8, !tbaa !2428
  %1172 = icmp ult i32 %1170, %1117
  %1173 = icmp ult i32 %1170, %1169
  %1174 = or i1 %1172, %1173
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %70, align 1, !tbaa !2432
  %1176 = and i32 %1170, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176) #8
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %76, align 1, !tbaa !2446
  %1181 = xor i64 %1167, %1116
  %1182 = trunc i64 %1181 to i32
  %1183 = xor i32 %1182, %1170
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %81, align 1, !tbaa !2447
  %1187 = icmp eq i32 %1170, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %84, align 1, !tbaa !2448
  %1189 = lshr i32 %1170, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %87, align 1, !tbaa !2449
  %1191 = lshr i32 %1169, 31
  %1192 = xor i32 %1189, %1128
  %1193 = xor i32 %1189, %1191
  %1194 = add nuw nsw i32 %1192, %1193
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %93, align 1, !tbaa !2450
  %1197 = load i64, i64* %RBP, align 8
  %1198 = add i64 %1197, -56
  %1199 = add i64 %6924, 373
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RSI, align 8, !tbaa !2428
  %1203 = add i64 %1197, -16
  %1204 = add i64 %6924, 377
  store i64 %1204, i64* %PC, align 8
  %1205 = inttoptr i64 %1203 to i64*
  %1206 = load i64, i64* %1205, align 8
  store i64 %1206, i64* %RCX, align 8, !tbaa !2428
  %1207 = add i64 %1206, 20
  %1208 = add i64 %6924, 381
  store i64 %1208, i64* %PC, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = sext i32 %1201 to i64
  %1212 = sext i32 %1210 to i64
  %1213 = mul nsw i64 %1212, %1211
  %1214 = and i64 %1213, 4294967295
  store i64 %1214, i64* %RSI, align 8, !tbaa !2428
  %1215 = trunc i64 %1213 to i32
  %1216 = add i32 %1215, %1170
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RDX, align 8, !tbaa !2428
  %1218 = icmp ult i32 %1216, %1170
  %1219 = icmp ult i32 %1216, %1215
  %1220 = or i1 %1218, %1219
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %70, align 1, !tbaa !2432
  %1222 = and i32 %1216, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222) #8
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %76, align 1, !tbaa !2446
  %1227 = xor i64 %1213, %1171
  %1228 = trunc i64 %1227 to i32
  %1229 = xor i32 %1228, %1216
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %81, align 1, !tbaa !2447
  %1233 = icmp eq i32 %1216, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %84, align 1, !tbaa !2448
  %1235 = lshr i32 %1216, 31
  %1236 = trunc i32 %1235 to i8
  store i8 %1236, i8* %87, align 1, !tbaa !2449
  %1237 = lshr i32 %1215, 31
  %1238 = xor i32 %1235, %1189
  %1239 = xor i32 %1235, %1237
  %1240 = add nuw nsw i32 %1238, %1239
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %93, align 1, !tbaa !2450
  %1243 = add i64 %1197, -60
  %1244 = add i64 %6924, 386
  store i64 %1244, i64* %PC, align 8
  %1245 = inttoptr i64 %1243 to i32*
  %1246 = load i32, i32* %1245, align 4
  %1247 = add i32 %1246, %1216
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RDX, align 8, !tbaa !2428
  %1249 = icmp ult i32 %1247, %1216
  %1250 = icmp ult i32 %1247, %1246
  %1251 = or i1 %1249, %1250
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %70, align 1, !tbaa !2432
  %1253 = and i32 %1247, 255
  %1254 = tail call i32 @llvm.ctpop.i32(i32 %1253) #8
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  %1257 = xor i8 %1256, 1
  store i8 %1257, i8* %76, align 1, !tbaa !2446
  %1258 = xor i32 %1246, %1216
  %1259 = xor i32 %1258, %1247
  %1260 = lshr i32 %1259, 4
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  store i8 %1262, i8* %81, align 1, !tbaa !2447
  %1263 = icmp eq i32 %1247, 0
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %84, align 1, !tbaa !2448
  %1265 = lshr i32 %1247, 31
  %1266 = trunc i32 %1265 to i8
  store i8 %1266, i8* %87, align 1, !tbaa !2449
  %1267 = lshr i32 %1246, 31
  %1268 = xor i32 %1265, %1235
  %1269 = xor i32 %1265, %1267
  %1270 = add nuw nsw i32 %1268, %1269
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %93, align 1, !tbaa !2450
  %1273 = sext i32 %1247 to i64
  store i64 %1273, i64* %RCX, align 8, !tbaa !2428
  %1274 = load i64, i64* %RAX, align 8
  %1275 = shl nsw i64 %1273, 2
  %1276 = add i64 %1275, %1274
  %1277 = add i64 %6924, 394
  store i64 %1277, i64* %PC, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  store i32 %1279, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %1280 = load i64, i64* %RBP, align 8
  %1281 = add i64 %1280, -40
  %1282 = add i64 %6924, 398
  store i64 %1282, i64* %PC, align 8
  %1283 = inttoptr i64 %1281 to i64*
  %1284 = load i64, i64* %1283, align 8
  store i64 %1284, i64* %RAX, align 8, !tbaa !2428
  %1285 = add i64 %6924, 401
  store i64 %1285, i64* %PC, align 8
  %1286 = inttoptr i64 %1284 to i64*
  %1287 = load i64, i64* %1286, align 8
  store i64 %1287, i64* %RAX, align 8, !tbaa !2428
  %1288 = add i64 %6924, 405
  store i64 %1288, i64* %PC, align 8
  %1289 = load i64, i64* %1283, align 8
  store i64 %1289, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1290 = add i64 %6924, 413
  store i64 %1290, i64* %PC, align 8
  %1291 = load i64, i64* %1283, align 8
  store i64 %1291, i64* %RCX, align 8, !tbaa !2428
  %1292 = add i64 %6924, 417
  store i64 %1292, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1293 = add i64 %6924, 421
  store i64 %1293, i64* %PC, align 8
  %1294 = load i64, i64* %1283, align 8
  store i64 %1294, i64* %RCX, align 8, !tbaa !2428
  %1295 = add i64 %6924, 425
  store i64 %1295, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1296 = add i64 %1280, -52
  %1297 = add i64 %6924, 428
  store i64 %1297, i64* %PC, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RSI, align 8, !tbaa !2428
  %1301 = add i64 %6924, 432
  store i64 %1301, i64* %PC, align 8
  %1302 = load i64, i64* %1283, align 8
  store i64 %1302, i64* %RCX, align 8, !tbaa !2428
  %1303 = add i64 %1302, 16
  %1304 = add i64 %6924, 436
  store i64 %1304, i64* %PC, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = sext i32 %1299 to i64
  %1308 = sext i32 %1306 to i64
  %1309 = mul nsw i64 %1308, %1307
  %1310 = trunc i64 %1309 to i32
  %1311 = and i64 %1309, 4294967295
  store i64 %1311, i64* %RSI, align 8, !tbaa !2428
  %1312 = shl i64 %1309, 32
  %1313 = ashr exact i64 %1312, 32
  %1314 = icmp ne i64 %1313, %1309
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %70, align 1, !tbaa !2432
  %1316 = and i32 %1310, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316) #8
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1321 = lshr i32 %1310, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %87, align 1, !tbaa !2449
  store i8 %1315, i8* %93, align 1, !tbaa !2450
  %1323 = add i64 %6924, 440
  store i64 %1323, i64* %PC, align 8
  %1324 = load i64, i64* %1283, align 8
  store i64 %1324, i64* %RCX, align 8, !tbaa !2428
  %1325 = add i64 %1324, 20
  %1326 = add i64 %6924, 444
  store i64 %1326, i64* %PC, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = sext i32 %1328 to i64
  %1330 = mul nsw i64 %1329, %1313
  %1331 = and i64 %1330, 4294967295
  store i64 %1331, i64* %RSI, align 8, !tbaa !2428
  %1332 = trunc i64 %1330 to i32
  store i64 %1331, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1333 = and i32 %1332, 255
  %1334 = tail call i32 @llvm.ctpop.i32(i32 %1333) #8
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1338 = icmp eq i32 %1332, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %84, align 1, !tbaa !2448
  %1340 = lshr i32 %1332, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1342 = load i64, i64* %RBP, align 8
  %1343 = add i64 %1342, -56
  %1344 = add i64 %6924, 449
  store i64 %1344, i64* %PC, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RSI, align 8, !tbaa !2428
  %1348 = add i64 %1342, -40
  %1349 = add i64 %6924, 453
  store i64 %1349, i64* %PC, align 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RCX, align 8, !tbaa !2428
  %1352 = add i64 %1351, 20
  %1353 = add i64 %6924, 457
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = sext i32 %1346 to i64
  %1357 = sext i32 %1355 to i64
  %1358 = mul nsw i64 %1357, %1356
  %1359 = and i64 %1358, 4294967295
  store i64 %1359, i64* %RSI, align 8, !tbaa !2428
  %1360 = trunc i64 %1358 to i32
  %1361 = add i32 %1360, %1332
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RDX, align 8, !tbaa !2428
  %1363 = icmp ult i32 %1361, %1332
  %1364 = icmp ult i32 %1361, %1360
  %1365 = or i1 %1363, %1364
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %70, align 1, !tbaa !2432
  %1367 = and i32 %1361, 255
  %1368 = tail call i32 @llvm.ctpop.i32(i32 %1367) #8
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  store i8 %1371, i8* %76, align 1, !tbaa !2446
  %1372 = xor i64 %1358, %1330
  %1373 = trunc i64 %1372 to i32
  %1374 = xor i32 %1373, %1361
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %81, align 1, !tbaa !2447
  %1378 = icmp eq i32 %1361, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %84, align 1, !tbaa !2448
  %1380 = lshr i32 %1361, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %87, align 1, !tbaa !2449
  %1382 = lshr i32 %1360, 31
  %1383 = xor i32 %1380, %1340
  %1384 = xor i32 %1380, %1382
  %1385 = add nuw nsw i32 %1383, %1384
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %93, align 1, !tbaa !2450
  %1388 = add i64 %1342, -60
  %1389 = add i64 %6924, 462
  store i64 %1389, i64* %PC, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = add i32 %1391, 1
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RSI, align 8, !tbaa !2428
  %1394 = lshr i32 %1392, 31
  %1395 = add i32 %1392, %1361
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RDX, align 8, !tbaa !2428
  %1397 = icmp ult i32 %1395, %1361
  %1398 = icmp ult i32 %1395, %1392
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %70, align 1, !tbaa !2432
  %1401 = and i32 %1395, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401) #8
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %76, align 1, !tbaa !2446
  %1406 = xor i32 %1392, %1361
  %1407 = xor i32 %1406, %1395
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %81, align 1, !tbaa !2447
  %1411 = icmp eq i32 %1395, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %84, align 1, !tbaa !2448
  %1413 = lshr i32 %1395, 31
  %1414 = trunc i32 %1413 to i8
  store i8 %1414, i8* %87, align 1, !tbaa !2449
  %1415 = xor i32 %1413, %1380
  %1416 = xor i32 %1413, %1394
  %1417 = add nuw nsw i32 %1415, %1416
  %1418 = icmp eq i32 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %93, align 1, !tbaa !2450
  %1420 = sext i32 %1395 to i64
  store i64 %1420, i64* %RCX, align 8, !tbaa !2428
  %1421 = load i64, i64* %RAX, align 8
  %1422 = shl nsw i64 %1420, 2
  %1423 = add i64 %1422, %1421
  %1424 = add i64 %6924, 475
  store i64 %1424, i64* %PC, align 8
  %1425 = load <2 x float>, <2 x float>* %206, align 1
  %1426 = load <2 x i32>, <2 x i32>* %207, align 1
  %1427 = inttoptr i64 %1423 to float*
  %1428 = load float, float* %1427, align 4
  %1429 = extractelement <2 x float> %1425, i32 0
  %1430 = fmul float %1429, %1428
  store float %1430, float* %199, align 1, !tbaa !2451
  %1431 = bitcast <2 x float> %1425 to <2 x i32>
  %1432 = extractelement <2 x i32> %1431, i32 1
  store i32 %1432, i32* %208, align 1, !tbaa !2451
  %1433 = extractelement <2 x i32> %1426, i32 0
  store i32 %1433, i32* %209, align 1, !tbaa !2451
  %1434 = extractelement <2 x i32> %1426, i32 1
  store i32 %1434, i32* %210, align 1, !tbaa !2451
  %1435 = load <2 x float>, <2 x float>* %192, align 1
  %1436 = load <2 x i32>, <2 x i32>* %197, align 1
  %1437 = load <2 x float>, <2 x float>* %206, align 1
  %1438 = extractelement <2 x float> %1435, i32 0
  %1439 = extractelement <2 x float> %1437, i32 0
  %1440 = fadd float %1438, %1439
  store float %1440, float* %193, align 1, !tbaa !2451
  %1441 = bitcast <2 x float> %1435 to <2 x i32>
  %1442 = extractelement <2 x i32> %1441, i32 1
  store i32 %1442, i32* %188, align 1, !tbaa !2451
  %1443 = extractelement <2 x i32> %1436, i32 0
  store i32 %1443, i32* %189, align 1, !tbaa !2451
  %1444 = extractelement <2 x i32> %1436, i32 1
  store i32 %1444, i32* %191, align 1, !tbaa !2451
  %1445 = load i64, i64* %RBP, align 8
  %1446 = add i64 %1445, -24
  %1447 = add i64 %6924, 483
  store i64 %1447, i64* %PC, align 8
  %1448 = inttoptr i64 %1446 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RAX, align 8, !tbaa !2428
  %1450 = add i64 %6924, 486
  store i64 %1450, i64* %PC, align 8
  %1451 = inttoptr i64 %1449 to i64*
  %1452 = load i64, i64* %1451, align 8
  store i64 %1452, i64* %RAX, align 8, !tbaa !2428
  %1453 = add i64 %6924, 490
  store i64 %1453, i64* %PC, align 8
  %1454 = load i64, i64* %1448, align 8
  store i64 %1454, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1455 = add i64 %6924, 498
  store i64 %1455, i64* %PC, align 8
  %1456 = load i64, i64* %1448, align 8
  store i64 %1456, i64* %RCX, align 8, !tbaa !2428
  %1457 = add i64 %6924, 502
  store i64 %1457, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1458 = add i64 %6924, 506
  store i64 %1458, i64* %PC, align 8
  %1459 = load i64, i64* %1448, align 8
  store i64 %1459, i64* %RCX, align 8, !tbaa !2428
  %1460 = add i64 %6924, 510
  store i64 %1460, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1461 = add i64 %1445, -52
  %1462 = add i64 %6924, 513
  store i64 %1462, i64* %PC, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RSI, align 8, !tbaa !2428
  %1466 = add i64 %6924, 517
  store i64 %1466, i64* %PC, align 8
  %1467 = load i64, i64* %1448, align 8
  store i64 %1467, i64* %RCX, align 8, !tbaa !2428
  %1468 = add i64 %1467, 16
  %1469 = add i64 %6924, 521
  store i64 %1469, i64* %PC, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = sext i32 %1464 to i64
  %1473 = sext i32 %1471 to i64
  %1474 = mul nsw i64 %1473, %1472
  %1475 = trunc i64 %1474 to i32
  %1476 = and i64 %1474, 4294967295
  store i64 %1476, i64* %RSI, align 8, !tbaa !2428
  %1477 = shl i64 %1474, 32
  %1478 = ashr exact i64 %1477, 32
  %1479 = icmp ne i64 %1478, %1474
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %70, align 1, !tbaa !2432
  %1481 = and i32 %1475, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481) #8
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1486 = lshr i32 %1475, 31
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* %87, align 1, !tbaa !2449
  store i8 %1480, i8* %93, align 1, !tbaa !2450
  %1488 = add i64 %6924, 525
  store i64 %1488, i64* %PC, align 8
  %1489 = load i64, i64* %1448, align 8
  store i64 %1489, i64* %RCX, align 8, !tbaa !2428
  %1490 = add i64 %1489, 20
  %1491 = add i64 %6924, 529
  store i64 %1491, i64* %PC, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = sext i32 %1493 to i64
  %1495 = mul nsw i64 %1494, %1478
  %1496 = and i64 %1495, 4294967295
  store i64 %1496, i64* %RSI, align 8, !tbaa !2428
  %1497 = trunc i64 %1495 to i32
  store i64 %1496, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1498 = and i32 %1497, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498) #8
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1503 = icmp eq i32 %1497, 0
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %84, align 1, !tbaa !2448
  %1505 = lshr i32 %1497, 31
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1507 = load i64, i64* %RBP, align 8
  %1508 = add i64 %1507, -56
  %1509 = add i64 %6924, 534
  store i64 %1509, i64* %PC, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RSI, align 8, !tbaa !2428
  %1513 = add i64 %1507, -24
  %1514 = add i64 %6924, 538
  store i64 %1514, i64* %PC, align 8
  %1515 = inttoptr i64 %1513 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RCX, align 8, !tbaa !2428
  %1517 = add i64 %1516, 20
  %1518 = add i64 %6924, 542
  store i64 %1518, i64* %PC, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = sext i32 %1511 to i64
  %1522 = sext i32 %1520 to i64
  %1523 = mul nsw i64 %1522, %1521
  %1524 = and i64 %1523, 4294967295
  store i64 %1524, i64* %RSI, align 8, !tbaa !2428
  %1525 = trunc i64 %1523 to i32
  %1526 = add i32 %1525, %1497
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RDX, align 8, !tbaa !2428
  %1528 = icmp ult i32 %1526, %1497
  %1529 = icmp ult i32 %1526, %1525
  %1530 = or i1 %1528, %1529
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %70, align 1, !tbaa !2432
  %1532 = and i32 %1526, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532) #8
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %76, align 1, !tbaa !2446
  %1537 = xor i64 %1523, %1495
  %1538 = trunc i64 %1537 to i32
  %1539 = xor i32 %1538, %1526
  %1540 = lshr i32 %1539, 4
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  store i8 %1542, i8* %81, align 1, !tbaa !2447
  %1543 = icmp eq i32 %1526, 0
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %84, align 1, !tbaa !2448
  %1545 = lshr i32 %1526, 31
  %1546 = trunc i32 %1545 to i8
  store i8 %1546, i8* %87, align 1, !tbaa !2449
  %1547 = lshr i32 %1525, 31
  %1548 = xor i32 %1545, %1505
  %1549 = xor i32 %1545, %1547
  %1550 = add nuw nsw i32 %1548, %1549
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %93, align 1, !tbaa !2450
  %1553 = add i64 %1507, -60
  %1554 = add i64 %6924, 547
  store i64 %1554, i64* %PC, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = add i32 %1556, %1526
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RDX, align 8, !tbaa !2428
  %1559 = icmp ult i32 %1557, %1526
  %1560 = icmp ult i32 %1557, %1556
  %1561 = or i1 %1559, %1560
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %70, align 1, !tbaa !2432
  %1563 = and i32 %1557, 255
  %1564 = tail call i32 @llvm.ctpop.i32(i32 %1563) #8
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = xor i8 %1566, 1
  store i8 %1567, i8* %76, align 1, !tbaa !2446
  %1568 = xor i32 %1556, %1526
  %1569 = xor i32 %1568, %1557
  %1570 = lshr i32 %1569, 4
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  store i8 %1572, i8* %81, align 1, !tbaa !2447
  %1573 = icmp eq i32 %1557, 0
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %84, align 1, !tbaa !2448
  %1575 = lshr i32 %1557, 31
  %1576 = trunc i32 %1575 to i8
  store i8 %1576, i8* %87, align 1, !tbaa !2449
  %1577 = lshr i32 %1556, 31
  %1578 = xor i32 %1575, %1545
  %1579 = xor i32 %1575, %1577
  %1580 = add nuw nsw i32 %1578, %1579
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %93, align 1, !tbaa !2450
  %1583 = sext i32 %1557 to i64
  store i64 %1583, i64* %RCX, align 8, !tbaa !2428
  %1584 = load i64, i64* %RAX, align 8
  %1585 = shl nsw i64 %1583, 2
  %1586 = add i64 %1585, %1584
  %1587 = add i64 %6924, 555
  store i64 %1587, i64* %PC, align 8
  %1588 = inttoptr i64 %1586 to i32*
  %1589 = load i32, i32* %1588, align 4
  store i32 %1589, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %1590 = load i64, i64* %RBP, align 8
  %1591 = add i64 %1590, -40
  %1592 = add i64 %6924, 559
  store i64 %1592, i64* %PC, align 8
  %1593 = inttoptr i64 %1591 to i64*
  %1594 = load i64, i64* %1593, align 8
  store i64 %1594, i64* %RAX, align 8, !tbaa !2428
  %1595 = add i64 %6924, 562
  store i64 %1595, i64* %PC, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RAX, align 8, !tbaa !2428
  %1598 = add i64 %6924, 566
  store i64 %1598, i64* %PC, align 8
  %1599 = load i64, i64* %1593, align 8
  store i64 %1599, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1600 = add i64 %6924, 574
  store i64 %1600, i64* %PC, align 8
  %1601 = load i64, i64* %1593, align 8
  store i64 %1601, i64* %RCX, align 8, !tbaa !2428
  %1602 = add i64 %6924, 578
  store i64 %1602, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1603 = add i64 %6924, 582
  store i64 %1603, i64* %PC, align 8
  %1604 = load i64, i64* %1593, align 8
  store i64 %1604, i64* %RCX, align 8, !tbaa !2428
  %1605 = add i64 %6924, 586
  store i64 %1605, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1606 = add i64 %1590, -52
  %1607 = add i64 %6924, 589
  store i64 %1607, i64* %PC, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = add i32 %1609, 1
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RSI, align 8, !tbaa !2428
  %1612 = icmp eq i32 %1609, -1
  %1613 = icmp eq i32 %1610, 0
  %1614 = or i1 %1612, %1613
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %70, align 1, !tbaa !2432
  %1616 = and i32 %1610, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616) #8
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %76, align 1, !tbaa !2446
  %1621 = xor i32 %1609, %1610
  %1622 = lshr i32 %1621, 4
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  store i8 %1624, i8* %81, align 1, !tbaa !2447
  %1625 = zext i1 %1613 to i8
  store i8 %1625, i8* %84, align 1, !tbaa !2448
  %1626 = lshr i32 %1610, 31
  %1627 = trunc i32 %1626 to i8
  store i8 %1627, i8* %87, align 1, !tbaa !2449
  %1628 = lshr i32 %1609, 31
  %1629 = xor i32 %1626, %1628
  %1630 = add nuw nsw i32 %1629, %1626
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %93, align 1, !tbaa !2450
  %1633 = load i64, i64* %RBP, align 8
  %1634 = add i64 %1633, -40
  %1635 = add i64 %6924, 596
  store i64 %1635, i64* %PC, align 8
  %1636 = inttoptr i64 %1634 to i64*
  %1637 = load i64, i64* %1636, align 8
  store i64 %1637, i64* %RCX, align 8, !tbaa !2428
  %1638 = add i64 %1637, 16
  %1639 = add i64 %6924, 600
  store i64 %1639, i64* %PC, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = sext i32 %1610 to i64
  %1643 = sext i32 %1641 to i64
  %1644 = mul nsw i64 %1643, %1642
  %1645 = trunc i64 %1644 to i32
  %1646 = and i64 %1644, 4294967295
  store i64 %1646, i64* %RSI, align 8, !tbaa !2428
  %1647 = shl i64 %1644, 32
  %1648 = ashr exact i64 %1647, 32
  %1649 = icmp ne i64 %1648, %1644
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %70, align 1, !tbaa !2432
  %1651 = and i32 %1645, 255
  %1652 = tail call i32 @llvm.ctpop.i32(i32 %1651) #8
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  store i8 %1655, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1656 = lshr i32 %1645, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %87, align 1, !tbaa !2449
  store i8 %1650, i8* %93, align 1, !tbaa !2450
  %1658 = add i64 %6924, 604
  store i64 %1658, i64* %PC, align 8
  %1659 = load i64, i64* %1636, align 8
  store i64 %1659, i64* %RCX, align 8, !tbaa !2428
  %1660 = add i64 %1659, 20
  %1661 = add i64 %6924, 608
  store i64 %1661, i64* %PC, align 8
  %1662 = inttoptr i64 %1660 to i32*
  %1663 = load i32, i32* %1662, align 4
  %1664 = sext i32 %1663 to i64
  %1665 = mul nsw i64 %1664, %1648
  %1666 = and i64 %1665, 4294967295
  store i64 %1666, i64* %RSI, align 8, !tbaa !2428
  %1667 = load i64, i64* %RDX, align 8
  %1668 = trunc i64 %1665 to i32
  %1669 = trunc i64 %1667 to i32
  %1670 = add i32 %1668, %1669
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDX, align 8, !tbaa !2428
  %1672 = icmp ult i32 %1670, %1669
  %1673 = icmp ult i32 %1670, %1668
  %1674 = or i1 %1672, %1673
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %70, align 1, !tbaa !2432
  %1676 = and i32 %1670, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676) #8
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %76, align 1, !tbaa !2446
  %1681 = xor i64 %1665, %1667
  %1682 = trunc i64 %1681 to i32
  %1683 = xor i32 %1682, %1670
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %81, align 1, !tbaa !2447
  %1687 = icmp eq i32 %1670, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %84, align 1, !tbaa !2448
  %1689 = lshr i32 %1670, 31
  %1690 = trunc i32 %1689 to i8
  store i8 %1690, i8* %87, align 1, !tbaa !2449
  %1691 = lshr i32 %1669, 31
  %1692 = lshr i32 %1668, 31
  %1693 = xor i32 %1689, %1691
  %1694 = xor i32 %1689, %1692
  %1695 = add nuw nsw i32 %1693, %1694
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %93, align 1, !tbaa !2450
  %1698 = load i64, i64* %RBP, align 8
  %1699 = add i64 %1698, -56
  %1700 = add i64 %6924, 613
  store i64 %1700, i64* %PC, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = add i32 %1702, 1
  %1704 = zext i32 %1703 to i64
  store i64 %1704, i64* %RSI, align 8, !tbaa !2428
  %1705 = icmp eq i32 %1702, -1
  %1706 = icmp eq i32 %1703, 0
  %1707 = or i1 %1705, %1706
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %70, align 1, !tbaa !2432
  %1709 = and i32 %1703, 255
  %1710 = tail call i32 @llvm.ctpop.i32(i32 %1709) #8
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = xor i8 %1712, 1
  store i8 %1713, i8* %76, align 1, !tbaa !2446
  %1714 = xor i32 %1702, %1703
  %1715 = lshr i32 %1714, 4
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  store i8 %1717, i8* %81, align 1, !tbaa !2447
  %1718 = zext i1 %1706 to i8
  store i8 %1718, i8* %84, align 1, !tbaa !2448
  %1719 = lshr i32 %1703, 31
  %1720 = trunc i32 %1719 to i8
  store i8 %1720, i8* %87, align 1, !tbaa !2449
  %1721 = lshr i32 %1702, 31
  %1722 = xor i32 %1719, %1721
  %1723 = add nuw nsw i32 %1722, %1719
  %1724 = icmp eq i32 %1723, 2
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %93, align 1, !tbaa !2450
  %1726 = add i64 %1698, -40
  %1727 = add i64 %6924, 620
  store i64 %1727, i64* %PC, align 8
  %1728 = inttoptr i64 %1726 to i64*
  %1729 = load i64, i64* %1728, align 8
  store i64 %1729, i64* %RCX, align 8, !tbaa !2428
  %1730 = add i64 %1729, 20
  %1731 = add i64 %6924, 624
  store i64 %1731, i64* %PC, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = sext i32 %1703 to i64
  %1735 = sext i32 %1733 to i64
  %1736 = mul nsw i64 %1735, %1734
  %1737 = and i64 %1736, 4294967295
  store i64 %1737, i64* %RSI, align 8, !tbaa !2428
  %1738 = load i64, i64* %RDX, align 8
  %1739 = trunc i64 %1736 to i32
  %1740 = trunc i64 %1738 to i32
  %1741 = add i32 %1739, %1740
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RDX, align 8, !tbaa !2428
  %1743 = icmp ult i32 %1741, %1740
  %1744 = icmp ult i32 %1741, %1739
  %1745 = or i1 %1743, %1744
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %70, align 1, !tbaa !2432
  %1747 = and i32 %1741, 255
  %1748 = tail call i32 @llvm.ctpop.i32(i32 %1747) #8
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = xor i8 %1750, 1
  store i8 %1751, i8* %76, align 1, !tbaa !2446
  %1752 = xor i64 %1736, %1738
  %1753 = trunc i64 %1752 to i32
  %1754 = xor i32 %1753, %1741
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  store i8 %1757, i8* %81, align 1, !tbaa !2447
  %1758 = icmp eq i32 %1741, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %84, align 1, !tbaa !2448
  %1760 = lshr i32 %1741, 31
  %1761 = trunc i32 %1760 to i8
  store i8 %1761, i8* %87, align 1, !tbaa !2449
  %1762 = lshr i32 %1740, 31
  %1763 = lshr i32 %1739, 31
  %1764 = xor i32 %1760, %1762
  %1765 = xor i32 %1760, %1763
  %1766 = add nuw nsw i32 %1764, %1765
  %1767 = icmp eq i32 %1766, 2
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %93, align 1, !tbaa !2450
  %1769 = load i64, i64* %RBP, align 8
  %1770 = add i64 %1769, -60
  %1771 = add i64 %6924, 629
  store i64 %1771, i64* %PC, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = add i32 %1773, %1741
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RDX, align 8, !tbaa !2428
  %1776 = icmp ult i32 %1774, %1741
  %1777 = icmp ult i32 %1774, %1773
  %1778 = or i1 %1776, %1777
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %70, align 1, !tbaa !2432
  %1780 = and i32 %1774, 255
  %1781 = tail call i32 @llvm.ctpop.i32(i32 %1780) #8
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  store i8 %1784, i8* %76, align 1, !tbaa !2446
  %1785 = xor i32 %1773, %1741
  %1786 = xor i32 %1785, %1774
  %1787 = lshr i32 %1786, 4
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  store i8 %1789, i8* %81, align 1, !tbaa !2447
  %1790 = icmp eq i32 %1774, 0
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %84, align 1, !tbaa !2448
  %1792 = lshr i32 %1774, 31
  %1793 = trunc i32 %1792 to i8
  store i8 %1793, i8* %87, align 1, !tbaa !2449
  %1794 = lshr i32 %1773, 31
  %1795 = xor i32 %1792, %1760
  %1796 = xor i32 %1792, %1794
  %1797 = add nuw nsw i32 %1795, %1796
  %1798 = icmp eq i32 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %93, align 1, !tbaa !2450
  %1800 = sext i32 %1774 to i64
  store i64 %1800, i64* %RCX, align 8, !tbaa !2428
  %1801 = load i64, i64* %RAX, align 8
  %1802 = shl nsw i64 %1800, 2
  %1803 = add i64 %1802, %1801
  %1804 = add i64 %6924, 637
  store i64 %1804, i64* %PC, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1806, i32* %1807, align 1, !tbaa !2451
  store float 0.000000e+00, float* %214, align 1, !tbaa !2451
  store float 0.000000e+00, float* %216, align 1, !tbaa !2451
  store float 0.000000e+00, float* %218, align 1, !tbaa !2451
  %1808 = add i64 %1769, -40
  %1809 = add i64 %6924, 641
  store i64 %1809, i64* %PC, align 8
  %1810 = inttoptr i64 %1808 to i64*
  %1811 = load i64, i64* %1810, align 8
  store i64 %1811, i64* %RAX, align 8, !tbaa !2428
  %1812 = add i64 %6924, 644
  store i64 %1812, i64* %PC, align 8
  %1813 = inttoptr i64 %1811 to i64*
  %1814 = load i64, i64* %1813, align 8
  store i64 %1814, i64* %RAX, align 8, !tbaa !2428
  %1815 = add i64 %6924, 648
  store i64 %1815, i64* %PC, align 8
  %1816 = load i64, i64* %1810, align 8
  store i64 %1816, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1817 = add i64 %6924, 656
  store i64 %1817, i64* %PC, align 8
  %1818 = load i64, i64* %1810, align 8
  store i64 %1818, i64* %RCX, align 8, !tbaa !2428
  %1819 = add i64 %6924, 660
  store i64 %1819, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1820 = add i64 %6924, 664
  store i64 %1820, i64* %PC, align 8
  %1821 = load i64, i64* %1810, align 8
  store i64 %1821, i64* %RCX, align 8, !tbaa !2428
  %1822 = add i64 %6924, 668
  store i64 %1822, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1823 = load i64, i64* %RBP, align 8
  %1824 = add i64 %1823, -52
  %1825 = add i64 %6924, 671
  store i64 %1825, i64* %PC, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  %1828 = add i32 %1827, 1
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RSI, align 8, !tbaa !2428
  %1830 = icmp eq i32 %1827, -1
  %1831 = icmp eq i32 %1828, 0
  %1832 = or i1 %1830, %1831
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %70, align 1, !tbaa !2432
  %1834 = and i32 %1828, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834) #8
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %76, align 1, !tbaa !2446
  %1839 = xor i32 %1827, %1828
  %1840 = lshr i32 %1839, 4
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %81, align 1, !tbaa !2447
  %1843 = zext i1 %1831 to i8
  store i8 %1843, i8* %84, align 1, !tbaa !2448
  %1844 = lshr i32 %1828, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %87, align 1, !tbaa !2449
  %1846 = lshr i32 %1827, 31
  %1847 = xor i32 %1844, %1846
  %1848 = add nuw nsw i32 %1847, %1844
  %1849 = icmp eq i32 %1848, 2
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %93, align 1, !tbaa !2450
  %1851 = add i64 %1823, -40
  %1852 = add i64 %6924, 678
  store i64 %1852, i64* %PC, align 8
  %1853 = inttoptr i64 %1851 to i64*
  %1854 = load i64, i64* %1853, align 8
  store i64 %1854, i64* %RCX, align 8, !tbaa !2428
  %1855 = add i64 %1854, 16
  %1856 = add i64 %6924, 682
  store i64 %1856, i64* %PC, align 8
  %1857 = inttoptr i64 %1855 to i32*
  %1858 = load i32, i32* %1857, align 4
  %1859 = sext i32 %1828 to i64
  %1860 = sext i32 %1858 to i64
  %1861 = mul nsw i64 %1860, %1859
  %1862 = trunc i64 %1861 to i32
  %1863 = and i64 %1861, 4294967295
  store i64 %1863, i64* %RSI, align 8, !tbaa !2428
  %1864 = shl i64 %1861, 32
  %1865 = ashr exact i64 %1864, 32
  %1866 = icmp ne i64 %1865, %1861
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %70, align 1, !tbaa !2432
  %1868 = and i32 %1862, 255
  %1869 = tail call i32 @llvm.ctpop.i32(i32 %1868) #8
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  %1872 = xor i8 %1871, 1
  store i8 %1872, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1873 = lshr i32 %1862, 31
  %1874 = trunc i32 %1873 to i8
  store i8 %1874, i8* %87, align 1, !tbaa !2449
  store i8 %1867, i8* %93, align 1, !tbaa !2450
  %1875 = add i64 %6924, 686
  store i64 %1875, i64* %PC, align 8
  %1876 = load i64, i64* %1853, align 8
  store i64 %1876, i64* %RCX, align 8, !tbaa !2428
  %1877 = add i64 %1876, 20
  %1878 = add i64 %6924, 690
  store i64 %1878, i64* %PC, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = sext i32 %1880 to i64
  %1882 = mul nsw i64 %1881, %1865
  %1883 = and i64 %1882, 4294967295
  store i64 %1883, i64* %RSI, align 8, !tbaa !2428
  %1884 = load i64, i64* %RDX, align 8
  %1885 = trunc i64 %1882 to i32
  %1886 = trunc i64 %1884 to i32
  %1887 = add i32 %1885, %1886
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RDX, align 8, !tbaa !2428
  %1889 = icmp ult i32 %1887, %1886
  %1890 = icmp ult i32 %1887, %1885
  %1891 = or i1 %1889, %1890
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %70, align 1, !tbaa !2432
  %1893 = and i32 %1887, 255
  %1894 = tail call i32 @llvm.ctpop.i32(i32 %1893) #8
  %1895 = trunc i32 %1894 to i8
  %1896 = and i8 %1895, 1
  %1897 = xor i8 %1896, 1
  store i8 %1897, i8* %76, align 1, !tbaa !2446
  %1898 = xor i64 %1882, %1884
  %1899 = trunc i64 %1898 to i32
  %1900 = xor i32 %1899, %1887
  %1901 = lshr i32 %1900, 4
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  store i8 %1903, i8* %81, align 1, !tbaa !2447
  %1904 = icmp eq i32 %1887, 0
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %84, align 1, !tbaa !2448
  %1906 = lshr i32 %1887, 31
  %1907 = trunc i32 %1906 to i8
  store i8 %1907, i8* %87, align 1, !tbaa !2449
  %1908 = lshr i32 %1886, 31
  %1909 = lshr i32 %1885, 31
  %1910 = xor i32 %1906, %1908
  %1911 = xor i32 %1906, %1909
  %1912 = add nuw nsw i32 %1910, %1911
  %1913 = icmp eq i32 %1912, 2
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %93, align 1, !tbaa !2450
  %1915 = load i64, i64* %RBP, align 8
  %1916 = add i64 %1915, -56
  %1917 = add i64 %6924, 695
  store i64 %1917, i64* %PC, align 8
  %1918 = inttoptr i64 %1916 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = add i32 %1919, -1
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RSI, align 8, !tbaa !2428
  %1922 = icmp eq i32 %1919, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %70, align 1, !tbaa !2432
  %1924 = and i32 %1920, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924) #8
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %76, align 1, !tbaa !2446
  %1929 = xor i32 %1919, %1920
  %1930 = lshr i32 %1929, 4
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %81, align 1, !tbaa !2447
  %1933 = icmp eq i32 %1920, 0
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %84, align 1, !tbaa !2448
  %1935 = lshr i32 %1920, 31
  %1936 = trunc i32 %1935 to i8
  store i8 %1936, i8* %87, align 1, !tbaa !2449
  %1937 = lshr i32 %1919, 31
  %1938 = xor i32 %1935, %1937
  %1939 = add nuw nsw i32 %1938, %1937
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %93, align 1, !tbaa !2450
  %1942 = add i64 %1915, -40
  %1943 = add i64 %6924, 702
  store i64 %1943, i64* %PC, align 8
  %1944 = inttoptr i64 %1942 to i64*
  %1945 = load i64, i64* %1944, align 8
  store i64 %1945, i64* %RCX, align 8, !tbaa !2428
  %1946 = add i64 %1945, 20
  %1947 = add i64 %6924, 706
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = sext i32 %1920 to i64
  %1951 = sext i32 %1949 to i64
  %1952 = mul nsw i64 %1951, %1950
  %1953 = and i64 %1952, 4294967295
  store i64 %1953, i64* %RSI, align 8, !tbaa !2428
  %1954 = load i64, i64* %RDX, align 8
  %1955 = trunc i64 %1952 to i32
  %1956 = trunc i64 %1954 to i32
  %1957 = add i32 %1955, %1956
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RDX, align 8, !tbaa !2428
  %1959 = icmp ult i32 %1957, %1956
  %1960 = icmp ult i32 %1957, %1955
  %1961 = or i1 %1959, %1960
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %70, align 1, !tbaa !2432
  %1963 = and i32 %1957, 255
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963) #8
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %76, align 1, !tbaa !2446
  %1968 = xor i64 %1952, %1954
  %1969 = trunc i64 %1968 to i32
  %1970 = xor i32 %1969, %1957
  %1971 = lshr i32 %1970, 4
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %81, align 1, !tbaa !2447
  %1974 = icmp eq i32 %1957, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %84, align 1, !tbaa !2448
  %1976 = lshr i32 %1957, 31
  %1977 = trunc i32 %1976 to i8
  store i8 %1977, i8* %87, align 1, !tbaa !2449
  %1978 = lshr i32 %1956, 31
  %1979 = lshr i32 %1955, 31
  %1980 = xor i32 %1976, %1978
  %1981 = xor i32 %1976, %1979
  %1982 = add nuw nsw i32 %1980, %1981
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %93, align 1, !tbaa !2450
  %1985 = load i64, i64* %RBP, align 8
  %1986 = add i64 %1985, -60
  %1987 = add i64 %6924, 711
  store i64 %1987, i64* %PC, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = add i32 %1989, %1957
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RDX, align 8, !tbaa !2428
  %1992 = icmp ult i32 %1990, %1957
  %1993 = icmp ult i32 %1990, %1989
  %1994 = or i1 %1992, %1993
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %70, align 1, !tbaa !2432
  %1996 = and i32 %1990, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996) #8
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %76, align 1, !tbaa !2446
  %2001 = xor i32 %1989, %1957
  %2002 = xor i32 %2001, %1990
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %81, align 1, !tbaa !2447
  %2006 = icmp eq i32 %1990, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %84, align 1, !tbaa !2448
  %2008 = lshr i32 %1990, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %87, align 1, !tbaa !2449
  %2010 = lshr i32 %1989, 31
  %2011 = xor i32 %2008, %1976
  %2012 = xor i32 %2008, %2010
  %2013 = add nuw nsw i32 %2011, %2012
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %93, align 1, !tbaa !2450
  %2016 = sext i32 %1990 to i64
  store i64 %2016, i64* %RCX, align 8, !tbaa !2428
  %2017 = load i64, i64* %RAX, align 8
  %2018 = shl nsw i64 %2016, 2
  %2019 = add i64 %2018, %2017
  %2020 = add i64 %6924, 719
  store i64 %2020, i64* %PC, align 8
  %2021 = load <2 x float>, <2 x float>* %219, align 1
  %2022 = load <2 x i32>, <2 x i32>* %220, align 1
  %2023 = inttoptr i64 %2019 to float*
  %2024 = load float, float* %2023, align 4
  %2025 = extractelement <2 x float> %2021, i32 0
  %2026 = fsub float %2025, %2024
  store float %2026, float* %212, align 1, !tbaa !2451
  %2027 = bitcast <2 x float> %2021 to <2 x i32>
  %2028 = extractelement <2 x i32> %2027, i32 1
  store i32 %2028, i32* %221, align 1, !tbaa !2451
  %2029 = extractelement <2 x i32> %2022, i32 0
  store i32 %2029, i32* %222, align 1, !tbaa !2451
  %2030 = extractelement <2 x i32> %2022, i32 1
  store i32 %2030, i32* %223, align 1, !tbaa !2451
  %2031 = add i64 %1985, -40
  %2032 = add i64 %6924, 723
  store i64 %2032, i64* %PC, align 8
  %2033 = inttoptr i64 %2031 to i64*
  %2034 = load i64, i64* %2033, align 8
  store i64 %2034, i64* %RAX, align 8, !tbaa !2428
  %2035 = add i64 %6924, 726
  store i64 %2035, i64* %PC, align 8
  %2036 = inttoptr i64 %2034 to i64*
  %2037 = load i64, i64* %2036, align 8
  store i64 %2037, i64* %RAX, align 8, !tbaa !2428
  %2038 = add i64 %6924, 730
  store i64 %2038, i64* %PC, align 8
  %2039 = load i64, i64* %2033, align 8
  store i64 %2039, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2040 = add i64 %6924, 738
  store i64 %2040, i64* %PC, align 8
  %2041 = load i64, i64* %2033, align 8
  store i64 %2041, i64* %RCX, align 8, !tbaa !2428
  %2042 = add i64 %6924, 742
  store i64 %2042, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2043 = load i64, i64* %RBP, align 8
  %2044 = add i64 %2043, -40
  %2045 = add i64 %6924, 746
  store i64 %2045, i64* %PC, align 8
  %2046 = inttoptr i64 %2044 to i64*
  %2047 = load i64, i64* %2046, align 8
  store i64 %2047, i64* %RCX, align 8, !tbaa !2428
  %2048 = add i64 %6924, 750
  store i64 %2048, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2049 = add i64 %2043, -52
  %2050 = add i64 %6924, 753
  store i64 %2050, i64* %PC, align 8
  %2051 = inttoptr i64 %2049 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = add i32 %2052, -1
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RSI, align 8, !tbaa !2428
  %2055 = icmp eq i32 %2052, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %70, align 1, !tbaa !2432
  %2057 = and i32 %2053, 255
  %2058 = tail call i32 @llvm.ctpop.i32(i32 %2057) #8
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  store i8 %2061, i8* %76, align 1, !tbaa !2446
  %2062 = xor i32 %2052, %2053
  %2063 = lshr i32 %2062, 4
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  store i8 %2065, i8* %81, align 1, !tbaa !2447
  %2066 = icmp eq i32 %2053, 0
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %84, align 1, !tbaa !2448
  %2068 = lshr i32 %2053, 31
  %2069 = trunc i32 %2068 to i8
  store i8 %2069, i8* %87, align 1, !tbaa !2449
  %2070 = lshr i32 %2052, 31
  %2071 = xor i32 %2068, %2070
  %2072 = add nuw nsw i32 %2071, %2070
  %2073 = icmp eq i32 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %93, align 1, !tbaa !2450
  %2075 = add i64 %6924, 760
  store i64 %2075, i64* %PC, align 8
  %2076 = load i64, i64* %2046, align 8
  store i64 %2076, i64* %RCX, align 8, !tbaa !2428
  %2077 = add i64 %2076, 16
  %2078 = add i64 %6924, 764
  store i64 %2078, i64* %PC, align 8
  %2079 = inttoptr i64 %2077 to i32*
  %2080 = load i32, i32* %2079, align 4
  %2081 = sext i32 %2053 to i64
  %2082 = sext i32 %2080 to i64
  %2083 = mul nsw i64 %2082, %2081
  %2084 = trunc i64 %2083 to i32
  %2085 = and i64 %2083, 4294967295
  store i64 %2085, i64* %RSI, align 8, !tbaa !2428
  %2086 = shl i64 %2083, 32
  %2087 = ashr exact i64 %2086, 32
  %2088 = icmp ne i64 %2087, %2083
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %70, align 1, !tbaa !2432
  %2090 = and i32 %2084, 255
  %2091 = tail call i32 @llvm.ctpop.i32(i32 %2090) #8
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  store i8 %2094, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2095 = lshr i32 %2084, 31
  %2096 = trunc i32 %2095 to i8
  store i8 %2096, i8* %87, align 1, !tbaa !2449
  store i8 %2089, i8* %93, align 1, !tbaa !2450
  %2097 = add i64 %6924, 768
  store i64 %2097, i64* %PC, align 8
  %2098 = load i64, i64* %2046, align 8
  store i64 %2098, i64* %RCX, align 8, !tbaa !2428
  %2099 = add i64 %2098, 20
  %2100 = add i64 %6924, 772
  store i64 %2100, i64* %PC, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = mul nsw i64 %2103, %2087
  %2105 = and i64 %2104, 4294967295
  store i64 %2105, i64* %RSI, align 8, !tbaa !2428
  %2106 = load i64, i64* %RDX, align 8
  %2107 = trunc i64 %2104 to i32
  %2108 = trunc i64 %2106 to i32
  %2109 = add i32 %2107, %2108
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RDX, align 8, !tbaa !2428
  %2111 = icmp ult i32 %2109, %2108
  %2112 = icmp ult i32 %2109, %2107
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %70, align 1, !tbaa !2432
  %2115 = and i32 %2109, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115) #8
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %76, align 1, !tbaa !2446
  %2120 = xor i64 %2104, %2106
  %2121 = trunc i64 %2120 to i32
  %2122 = xor i32 %2121, %2109
  %2123 = lshr i32 %2122, 4
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  store i8 %2125, i8* %81, align 1, !tbaa !2447
  %2126 = icmp eq i32 %2109, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %84, align 1, !tbaa !2448
  %2128 = lshr i32 %2109, 31
  %2129 = trunc i32 %2128 to i8
  store i8 %2129, i8* %87, align 1, !tbaa !2449
  %2130 = lshr i32 %2108, 31
  %2131 = lshr i32 %2107, 31
  %2132 = xor i32 %2128, %2130
  %2133 = xor i32 %2128, %2131
  %2134 = add nuw nsw i32 %2132, %2133
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %93, align 1, !tbaa !2450
  %2137 = load i64, i64* %RBP, align 8
  %2138 = add i64 %2137, -56
  %2139 = add i64 %6924, 777
  store i64 %2139, i64* %PC, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = add i32 %2141, 1
  %2143 = zext i32 %2142 to i64
  store i64 %2143, i64* %RSI, align 8, !tbaa !2428
  %2144 = icmp eq i32 %2141, -1
  %2145 = icmp eq i32 %2142, 0
  %2146 = or i1 %2144, %2145
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %70, align 1, !tbaa !2432
  %2148 = and i32 %2142, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148) #8
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %76, align 1, !tbaa !2446
  %2153 = xor i32 %2141, %2142
  %2154 = lshr i32 %2153, 4
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  store i8 %2156, i8* %81, align 1, !tbaa !2447
  %2157 = zext i1 %2145 to i8
  store i8 %2157, i8* %84, align 1, !tbaa !2448
  %2158 = lshr i32 %2142, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %87, align 1, !tbaa !2449
  %2160 = lshr i32 %2141, 31
  %2161 = xor i32 %2158, %2160
  %2162 = add nuw nsw i32 %2161, %2158
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %93, align 1, !tbaa !2450
  %2165 = add i64 %2137, -40
  %2166 = add i64 %6924, 784
  store i64 %2166, i64* %PC, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %RCX, align 8, !tbaa !2428
  %2169 = add i64 %2168, 20
  %2170 = add i64 %6924, 788
  store i64 %2170, i64* %PC, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = sext i32 %2142 to i64
  %2174 = sext i32 %2172 to i64
  %2175 = mul nsw i64 %2174, %2173
  %2176 = and i64 %2175, 4294967295
  store i64 %2176, i64* %RSI, align 8, !tbaa !2428
  %2177 = load i64, i64* %RDX, align 8
  %2178 = trunc i64 %2175 to i32
  %2179 = trunc i64 %2177 to i32
  %2180 = add i32 %2178, %2179
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RDX, align 8, !tbaa !2428
  %2182 = icmp ult i32 %2180, %2179
  %2183 = icmp ult i32 %2180, %2178
  %2184 = or i1 %2182, %2183
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %70, align 1, !tbaa !2432
  %2186 = and i32 %2180, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186) #8
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %76, align 1, !tbaa !2446
  %2191 = xor i64 %2175, %2177
  %2192 = trunc i64 %2191 to i32
  %2193 = xor i32 %2192, %2180
  %2194 = lshr i32 %2193, 4
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  store i8 %2196, i8* %81, align 1, !tbaa !2447
  %2197 = icmp eq i32 %2180, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %84, align 1, !tbaa !2448
  %2199 = lshr i32 %2180, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %87, align 1, !tbaa !2449
  %2201 = lshr i32 %2179, 31
  %2202 = lshr i32 %2178, 31
  %2203 = xor i32 %2199, %2201
  %2204 = xor i32 %2199, %2202
  %2205 = add nuw nsw i32 %2203, %2204
  %2206 = icmp eq i32 %2205, 2
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %93, align 1, !tbaa !2450
  %2208 = load i64, i64* %RBP, align 8
  %2209 = add i64 %2208, -60
  %2210 = add i64 %6924, 793
  store i64 %2210, i64* %PC, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = add i32 %2212, %2180
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RDX, align 8, !tbaa !2428
  %2215 = icmp ult i32 %2213, %2180
  %2216 = icmp ult i32 %2213, %2212
  %2217 = or i1 %2215, %2216
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %70, align 1, !tbaa !2432
  %2219 = and i32 %2213, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219) #8
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %76, align 1, !tbaa !2446
  %2224 = xor i32 %2212, %2180
  %2225 = xor i32 %2224, %2213
  %2226 = lshr i32 %2225, 4
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  store i8 %2228, i8* %81, align 1, !tbaa !2447
  %2229 = icmp eq i32 %2213, 0
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %84, align 1, !tbaa !2448
  %2231 = lshr i32 %2213, 31
  %2232 = trunc i32 %2231 to i8
  store i8 %2232, i8* %87, align 1, !tbaa !2449
  %2233 = lshr i32 %2212, 31
  %2234 = xor i32 %2231, %2199
  %2235 = xor i32 %2231, %2233
  %2236 = add nuw nsw i32 %2234, %2235
  %2237 = icmp eq i32 %2236, 2
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %93, align 1, !tbaa !2450
  %2239 = sext i32 %2213 to i64
  store i64 %2239, i64* %RCX, align 8, !tbaa !2428
  %2240 = load i64, i64* %RAX, align 8
  %2241 = shl nsw i64 %2239, 2
  %2242 = add i64 %2241, %2240
  %2243 = add i64 %6924, 801
  store i64 %2243, i64* %PC, align 8
  %2244 = load <2 x float>, <2 x float>* %219, align 1
  %2245 = load <2 x i32>, <2 x i32>* %220, align 1
  %2246 = inttoptr i64 %2242 to float*
  %2247 = load float, float* %2246, align 4
  %2248 = extractelement <2 x float> %2244, i32 0
  %2249 = fsub float %2248, %2247
  store float %2249, float* %212, align 1, !tbaa !2451
  %2250 = bitcast <2 x float> %2244 to <2 x i32>
  %2251 = extractelement <2 x i32> %2250, i32 1
  store i32 %2251, i32* %221, align 1, !tbaa !2451
  %2252 = extractelement <2 x i32> %2245, i32 0
  store i32 %2252, i32* %222, align 1, !tbaa !2451
  %2253 = extractelement <2 x i32> %2245, i32 1
  store i32 %2253, i32* %223, align 1, !tbaa !2451
  %2254 = add i64 %2208, -40
  %2255 = add i64 %6924, 805
  store i64 %2255, i64* %PC, align 8
  %2256 = inttoptr i64 %2254 to i64*
  %2257 = load i64, i64* %2256, align 8
  store i64 %2257, i64* %RAX, align 8, !tbaa !2428
  %2258 = add i64 %6924, 808
  store i64 %2258, i64* %PC, align 8
  %2259 = inttoptr i64 %2257 to i64*
  %2260 = load i64, i64* %2259, align 8
  store i64 %2260, i64* %RAX, align 8, !tbaa !2428
  %2261 = add i64 %6924, 812
  store i64 %2261, i64* %PC, align 8
  %2262 = load i64, i64* %2256, align 8
  store i64 %2262, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2263 = add i64 %6924, 820
  store i64 %2263, i64* %PC, align 8
  %2264 = load i64, i64* %2256, align 8
  store i64 %2264, i64* %RCX, align 8, !tbaa !2428
  %2265 = add i64 %6924, 824
  store i64 %2265, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2266 = load i64, i64* %RBP, align 8
  %2267 = add i64 %2266, -40
  %2268 = add i64 %6924, 828
  store i64 %2268, i64* %PC, align 8
  %2269 = inttoptr i64 %2267 to i64*
  %2270 = load i64, i64* %2269, align 8
  store i64 %2270, i64* %RCX, align 8, !tbaa !2428
  %2271 = add i64 %6924, 832
  store i64 %2271, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2272 = add i64 %2266, -52
  %2273 = add i64 %6924, 835
  store i64 %2273, i64* %PC, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = add i32 %2275, -1
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RSI, align 8, !tbaa !2428
  %2278 = icmp eq i32 %2275, 0
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %70, align 1, !tbaa !2432
  %2280 = and i32 %2276, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280) #8
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %76, align 1, !tbaa !2446
  %2285 = xor i32 %2275, %2276
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %81, align 1, !tbaa !2447
  %2289 = icmp eq i32 %2276, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %84, align 1, !tbaa !2448
  %2291 = lshr i32 %2276, 31
  %2292 = trunc i32 %2291 to i8
  store i8 %2292, i8* %87, align 1, !tbaa !2449
  %2293 = lshr i32 %2275, 31
  %2294 = xor i32 %2291, %2293
  %2295 = add nuw nsw i32 %2294, %2293
  %2296 = icmp eq i32 %2295, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %93, align 1, !tbaa !2450
  %2298 = add i64 %6924, 842
  store i64 %2298, i64* %PC, align 8
  %2299 = load i64, i64* %2269, align 8
  store i64 %2299, i64* %RCX, align 8, !tbaa !2428
  %2300 = add i64 %2299, 16
  %2301 = add i64 %6924, 846
  store i64 %2301, i64* %PC, align 8
  %2302 = inttoptr i64 %2300 to i32*
  %2303 = load i32, i32* %2302, align 4
  %2304 = sext i32 %2276 to i64
  %2305 = sext i32 %2303 to i64
  %2306 = mul nsw i64 %2305, %2304
  %2307 = trunc i64 %2306 to i32
  %2308 = and i64 %2306, 4294967295
  store i64 %2308, i64* %RSI, align 8, !tbaa !2428
  %2309 = shl i64 %2306, 32
  %2310 = ashr exact i64 %2309, 32
  %2311 = icmp ne i64 %2310, %2306
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %70, align 1, !tbaa !2432
  %2313 = and i32 %2307, 255
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313) #8
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2318 = lshr i32 %2307, 31
  %2319 = trunc i32 %2318 to i8
  store i8 %2319, i8* %87, align 1, !tbaa !2449
  store i8 %2312, i8* %93, align 1, !tbaa !2450
  %2320 = add i64 %6924, 850
  store i64 %2320, i64* %PC, align 8
  %2321 = load i64, i64* %2269, align 8
  store i64 %2321, i64* %RCX, align 8, !tbaa !2428
  %2322 = add i64 %2321, 20
  %2323 = add i64 %6924, 854
  store i64 %2323, i64* %PC, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = sext i32 %2325 to i64
  %2327 = mul nsw i64 %2326, %2310
  %2328 = and i64 %2327, 4294967295
  store i64 %2328, i64* %RSI, align 8, !tbaa !2428
  %2329 = load i64, i64* %RDX, align 8
  %2330 = trunc i64 %2327 to i32
  %2331 = trunc i64 %2329 to i32
  %2332 = add i32 %2330, %2331
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RDX, align 8, !tbaa !2428
  %2334 = icmp ult i32 %2332, %2331
  %2335 = icmp ult i32 %2332, %2330
  %2336 = or i1 %2334, %2335
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %70, align 1, !tbaa !2432
  %2338 = and i32 %2332, 255
  %2339 = tail call i32 @llvm.ctpop.i32(i32 %2338) #8
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  store i8 %2342, i8* %76, align 1, !tbaa !2446
  %2343 = xor i64 %2327, %2329
  %2344 = trunc i64 %2343 to i32
  %2345 = xor i32 %2344, %2332
  %2346 = lshr i32 %2345, 4
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  store i8 %2348, i8* %81, align 1, !tbaa !2447
  %2349 = icmp eq i32 %2332, 0
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %84, align 1, !tbaa !2448
  %2351 = lshr i32 %2332, 31
  %2352 = trunc i32 %2351 to i8
  store i8 %2352, i8* %87, align 1, !tbaa !2449
  %2353 = lshr i32 %2331, 31
  %2354 = lshr i32 %2330, 31
  %2355 = xor i32 %2351, %2353
  %2356 = xor i32 %2351, %2354
  %2357 = add nuw nsw i32 %2355, %2356
  %2358 = icmp eq i32 %2357, 2
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %93, align 1, !tbaa !2450
  %2360 = load i64, i64* %RBP, align 8
  %2361 = add i64 %2360, -56
  %2362 = add i64 %6924, 859
  store i64 %2362, i64* %PC, align 8
  %2363 = inttoptr i64 %2361 to i32*
  %2364 = load i32, i32* %2363, align 4
  %2365 = add i32 %2364, -1
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RSI, align 8, !tbaa !2428
  %2367 = icmp eq i32 %2364, 0
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %70, align 1, !tbaa !2432
  %2369 = and i32 %2365, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369) #8
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %76, align 1, !tbaa !2446
  %2374 = xor i32 %2364, %2365
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  store i8 %2377, i8* %81, align 1, !tbaa !2447
  %2378 = icmp eq i32 %2365, 0
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %84, align 1, !tbaa !2448
  %2380 = lshr i32 %2365, 31
  %2381 = trunc i32 %2380 to i8
  store i8 %2381, i8* %87, align 1, !tbaa !2449
  %2382 = lshr i32 %2364, 31
  %2383 = xor i32 %2380, %2382
  %2384 = add nuw nsw i32 %2383, %2382
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %93, align 1, !tbaa !2450
  %2387 = add i64 %2360, -40
  %2388 = add i64 %6924, 866
  store i64 %2388, i64* %PC, align 8
  %2389 = inttoptr i64 %2387 to i64*
  %2390 = load i64, i64* %2389, align 8
  store i64 %2390, i64* %RCX, align 8, !tbaa !2428
  %2391 = add i64 %2390, 20
  %2392 = add i64 %6924, 870
  store i64 %2392, i64* %PC, align 8
  %2393 = inttoptr i64 %2391 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = sext i32 %2365 to i64
  %2396 = sext i32 %2394 to i64
  %2397 = mul nsw i64 %2396, %2395
  %2398 = and i64 %2397, 4294967295
  store i64 %2398, i64* %RSI, align 8, !tbaa !2428
  %2399 = load i64, i64* %RDX, align 8
  %2400 = trunc i64 %2397 to i32
  %2401 = trunc i64 %2399 to i32
  %2402 = add i32 %2400, %2401
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RDX, align 8, !tbaa !2428
  %2404 = icmp ult i32 %2402, %2401
  %2405 = icmp ult i32 %2402, %2400
  %2406 = or i1 %2404, %2405
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %70, align 1, !tbaa !2432
  %2408 = and i32 %2402, 255
  %2409 = tail call i32 @llvm.ctpop.i32(i32 %2408) #8
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = xor i8 %2411, 1
  store i8 %2412, i8* %76, align 1, !tbaa !2446
  %2413 = xor i64 %2397, %2399
  %2414 = trunc i64 %2413 to i32
  %2415 = xor i32 %2414, %2402
  %2416 = lshr i32 %2415, 4
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  store i8 %2418, i8* %81, align 1, !tbaa !2447
  %2419 = icmp eq i32 %2402, 0
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %84, align 1, !tbaa !2448
  %2421 = lshr i32 %2402, 31
  %2422 = trunc i32 %2421 to i8
  store i8 %2422, i8* %87, align 1, !tbaa !2449
  %2423 = lshr i32 %2401, 31
  %2424 = lshr i32 %2400, 31
  %2425 = xor i32 %2421, %2423
  %2426 = xor i32 %2421, %2424
  %2427 = add nuw nsw i32 %2425, %2426
  %2428 = icmp eq i32 %2427, 2
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %93, align 1, !tbaa !2450
  %2430 = load i64, i64* %RBP, align 8
  %2431 = add i64 %2430, -60
  %2432 = add i64 %6924, 875
  store i64 %2432, i64* %PC, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = add i32 %2434, %2402
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RDX, align 8, !tbaa !2428
  %2437 = icmp ult i32 %2435, %2402
  %2438 = icmp ult i32 %2435, %2434
  %2439 = or i1 %2437, %2438
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %70, align 1, !tbaa !2432
  %2441 = and i32 %2435, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441) #8
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %76, align 1, !tbaa !2446
  %2446 = xor i32 %2434, %2402
  %2447 = xor i32 %2446, %2435
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %81, align 1, !tbaa !2447
  %2451 = icmp eq i32 %2435, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %84, align 1, !tbaa !2448
  %2453 = lshr i32 %2435, 31
  %2454 = trunc i32 %2453 to i8
  store i8 %2454, i8* %87, align 1, !tbaa !2449
  %2455 = lshr i32 %2434, 31
  %2456 = xor i32 %2453, %2421
  %2457 = xor i32 %2453, %2455
  %2458 = add nuw nsw i32 %2456, %2457
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %93, align 1, !tbaa !2450
  %2461 = sext i32 %2435 to i64
  store i64 %2461, i64* %RCX, align 8, !tbaa !2428
  %2462 = load i64, i64* %RAX, align 8
  %2463 = shl nsw i64 %2461, 2
  %2464 = add i64 %2463, %2462
  %2465 = add i64 %6924, 883
  store i64 %2465, i64* %PC, align 8
  %2466 = load <2 x float>, <2 x float>* %219, align 1
  %2467 = load <2 x i32>, <2 x i32>* %220, align 1
  %2468 = inttoptr i64 %2464 to float*
  %2469 = load float, float* %2468, align 4
  %2470 = extractelement <2 x float> %2466, i32 0
  %2471 = fadd float %2470, %2469
  store float %2471, float* %212, align 1, !tbaa !2451
  %2472 = bitcast <2 x float> %2466 to <2 x i32>
  %2473 = extractelement <2 x i32> %2472, i32 1
  store i32 %2473, i32* %221, align 1, !tbaa !2451
  %2474 = extractelement <2 x i32> %2467, i32 0
  store i32 %2474, i32* %222, align 1, !tbaa !2451
  %2475 = extractelement <2 x i32> %2467, i32 1
  store i32 %2475, i32* %223, align 1, !tbaa !2451
  %2476 = load <2 x float>, <2 x float>* %206, align 1
  %2477 = load <2 x i32>, <2 x i32>* %207, align 1
  %2478 = load <2 x float>, <2 x float>* %219, align 1
  %2479 = extractelement <2 x float> %2476, i32 0
  %2480 = extractelement <2 x float> %2478, i32 0
  %2481 = fmul float %2479, %2480
  store float %2481, float* %199, align 1, !tbaa !2451
  %2482 = bitcast <2 x float> %2476 to <2 x i32>
  %2483 = extractelement <2 x i32> %2482, i32 1
  store i32 %2483, i32* %208, align 1, !tbaa !2451
  %2484 = extractelement <2 x i32> %2477, i32 0
  store i32 %2484, i32* %209, align 1, !tbaa !2451
  %2485 = extractelement <2 x i32> %2477, i32 1
  store i32 %2485, i32* %210, align 1, !tbaa !2451
  %2486 = load <2 x float>, <2 x float>* %192, align 1
  %2487 = load <2 x i32>, <2 x i32>* %197, align 1
  %2488 = load <2 x float>, <2 x float>* %206, align 1
  %2489 = extractelement <2 x float> %2486, i32 0
  %2490 = extractelement <2 x float> %2488, i32 0
  %2491 = fadd float %2489, %2490
  store float %2491, float* %193, align 1, !tbaa !2451
  %2492 = bitcast <2 x float> %2486 to <2 x i32>
  %2493 = extractelement <2 x i32> %2492, i32 1
  store i32 %2493, i32* %188, align 1, !tbaa !2451
  %2494 = extractelement <2 x i32> %2487, i32 0
  store i32 %2494, i32* %189, align 1, !tbaa !2451
  %2495 = extractelement <2 x i32> %2487, i32 1
  store i32 %2495, i32* %191, align 1, !tbaa !2451
  %2496 = add i64 %2430, -24
  %2497 = add i64 %6924, 895
  store i64 %2497, i64* %PC, align 8
  %2498 = inttoptr i64 %2496 to i64*
  %2499 = load i64, i64* %2498, align 8
  store i64 %2499, i64* %RAX, align 8, !tbaa !2428
  %2500 = add i64 %6924, 898
  store i64 %2500, i64* %PC, align 8
  %2501 = inttoptr i64 %2499 to i64*
  %2502 = load i64, i64* %2501, align 8
  store i64 %2502, i64* %RAX, align 8, !tbaa !2428
  %2503 = load i64, i64* %RBP, align 8
  %2504 = add i64 %2503, -24
  %2505 = add i64 %6924, 902
  store i64 %2505, i64* %PC, align 8
  %2506 = inttoptr i64 %2504 to i64*
  %2507 = load i64, i64* %2506, align 8
  store i64 %2507, i64* %RCX, align 8, !tbaa !2428
  %2508 = add i64 %2507, 12
  %2509 = add i64 %6924, 905
  store i64 %2509, i64* %PC, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RDX, align 8, !tbaa !2428
  %2513 = add i64 %6924, 912
  store i64 %2513, i64* %PC, align 8
  %2514 = load i64, i64* %2506, align 8
  store i64 %2514, i64* %RCX, align 8, !tbaa !2428
  %2515 = add i64 %2514, 16
  %2516 = add i64 %6924, 916
  store i64 %2516, i64* %PC, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = sext i32 %2511 to i64
  %2520 = sext i32 %2518 to i64
  %2521 = mul nsw i64 %2520, %2519
  %2522 = trunc i64 %2521 to i32
  %2523 = and i64 %2521, 4294967295
  store i64 %2523, i64* %RDX, align 8, !tbaa !2428
  %2524 = shl i64 %2521, 32
  %2525 = ashr exact i64 %2524, 32
  %2526 = icmp ne i64 %2525, %2521
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %70, align 1, !tbaa !2432
  %2528 = and i32 %2522, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528) #8
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2533 = lshr i32 %2522, 31
  %2534 = trunc i32 %2533 to i8
  store i8 %2534, i8* %87, align 1, !tbaa !2449
  store i8 %2527, i8* %93, align 1, !tbaa !2450
  %2535 = add i64 %6924, 920
  store i64 %2535, i64* %PC, align 8
  %2536 = load i64, i64* %2506, align 8
  store i64 %2536, i64* %RCX, align 8, !tbaa !2428
  %2537 = add i64 %2536, 20
  %2538 = add i64 %6924, 924
  store i64 %2538, i64* %PC, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = sext i32 %2540 to i64
  %2542 = mul nsw i64 %2541, %2525
  %2543 = trunc i64 %2542 to i32
  %2544 = and i64 %2542, 4294967295
  store i64 %2544, i64* %RDX, align 8, !tbaa !2428
  %2545 = shl i64 %2542, 32
  %2546 = ashr exact i64 %2545, 32
  %2547 = icmp ne i64 %2546, %2542
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %70, align 1, !tbaa !2432
  %2549 = and i32 %2543, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549) #8
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2554 = lshr i32 %2543, 31
  %2555 = trunc i32 %2554 to i8
  store i8 %2555, i8* %87, align 1, !tbaa !2449
  store i8 %2548, i8* %93, align 1, !tbaa !2450
  %2556 = add i64 %2503, -52
  %2557 = add i64 %6924, 927
  store i64 %2557, i64* %PC, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RSI, align 8, !tbaa !2428
  %2561 = add i64 %6924, 931
  store i64 %2561, i64* %PC, align 8
  %2562 = load i64, i64* %2506, align 8
  store i64 %2562, i64* %RCX, align 8, !tbaa !2428
  %2563 = add i64 %2562, 16
  %2564 = add i64 %6924, 935
  store i64 %2564, i64* %PC, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = sext i32 %2559 to i64
  %2568 = sext i32 %2566 to i64
  %2569 = mul nsw i64 %2568, %2567
  %2570 = trunc i64 %2569 to i32
  %2571 = and i64 %2569, 4294967295
  store i64 %2571, i64* %RSI, align 8, !tbaa !2428
  %2572 = shl i64 %2569, 32
  %2573 = ashr exact i64 %2572, 32
  %2574 = icmp ne i64 %2573, %2569
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %70, align 1, !tbaa !2432
  %2576 = and i32 %2570, 255
  %2577 = tail call i32 @llvm.ctpop.i32(i32 %2576) #8
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  %2580 = xor i8 %2579, 1
  store i8 %2580, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2581 = lshr i32 %2570, 31
  %2582 = trunc i32 %2581 to i8
  store i8 %2582, i8* %87, align 1, !tbaa !2449
  store i8 %2575, i8* %93, align 1, !tbaa !2450
  %2583 = load i64, i64* %RBP, align 8
  %2584 = add i64 %2583, -24
  %2585 = add i64 %6924, 939
  store i64 %2585, i64* %PC, align 8
  %2586 = inttoptr i64 %2584 to i64*
  %2587 = load i64, i64* %2586, align 8
  store i64 %2587, i64* %RCX, align 8, !tbaa !2428
  %2588 = add i64 %2587, 20
  %2589 = add i64 %6924, 943
  store i64 %2589, i64* %PC, align 8
  %2590 = inttoptr i64 %2588 to i32*
  %2591 = load i32, i32* %2590, align 4
  %2592 = sext i32 %2591 to i64
  %2593 = mul nsw i64 %2592, %2573
  %2594 = and i64 %2593, 4294967295
  store i64 %2594, i64* %RSI, align 8, !tbaa !2428
  %2595 = trunc i64 %2593 to i32
  %2596 = add i32 %2595, %2543
  %2597 = zext i32 %2596 to i64
  store i64 %2597, i64* %RDX, align 8, !tbaa !2428
  %2598 = icmp ult i32 %2596, %2543
  %2599 = icmp ult i32 %2596, %2595
  %2600 = or i1 %2598, %2599
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %70, align 1, !tbaa !2432
  %2602 = and i32 %2596, 255
  %2603 = tail call i32 @llvm.ctpop.i32(i32 %2602) #8
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %76, align 1, !tbaa !2446
  %2607 = xor i64 %2593, %2542
  %2608 = trunc i64 %2607 to i32
  %2609 = xor i32 %2608, %2596
  %2610 = lshr i32 %2609, 4
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  store i8 %2612, i8* %81, align 1, !tbaa !2447
  %2613 = icmp eq i32 %2596, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %84, align 1, !tbaa !2448
  %2615 = lshr i32 %2596, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %87, align 1, !tbaa !2449
  %2617 = lshr i32 %2595, 31
  %2618 = xor i32 %2615, %2554
  %2619 = xor i32 %2615, %2617
  %2620 = add nuw nsw i32 %2618, %2619
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %93, align 1, !tbaa !2450
  %2623 = add i64 %2583, -56
  %2624 = add i64 %6924, 948
  store i64 %2624, i64* %PC, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RSI, align 8, !tbaa !2428
  %2628 = add i64 %6924, 952
  store i64 %2628, i64* %PC, align 8
  %2629 = load i64, i64* %2586, align 8
  store i64 %2629, i64* %RCX, align 8, !tbaa !2428
  %2630 = add i64 %2629, 20
  %2631 = add i64 %6924, 956
  store i64 %2631, i64* %PC, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = sext i32 %2626 to i64
  %2635 = sext i32 %2633 to i64
  %2636 = mul nsw i64 %2635, %2634
  %2637 = and i64 %2636, 4294967295
  store i64 %2637, i64* %RSI, align 8, !tbaa !2428
  %2638 = trunc i64 %2636 to i32
  %2639 = add i32 %2638, %2596
  %2640 = zext i32 %2639 to i64
  store i64 %2640, i64* %RDX, align 8, !tbaa !2428
  %2641 = icmp ult i32 %2639, %2596
  %2642 = icmp ult i32 %2639, %2638
  %2643 = or i1 %2641, %2642
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %70, align 1, !tbaa !2432
  %2645 = and i32 %2639, 255
  %2646 = tail call i32 @llvm.ctpop.i32(i32 %2645) #8
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  store i8 %2649, i8* %76, align 1, !tbaa !2446
  %2650 = xor i64 %2636, %2597
  %2651 = trunc i64 %2650 to i32
  %2652 = xor i32 %2651, %2639
  %2653 = lshr i32 %2652, 4
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  store i8 %2655, i8* %81, align 1, !tbaa !2447
  %2656 = icmp eq i32 %2639, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %84, align 1, !tbaa !2448
  %2658 = lshr i32 %2639, 31
  %2659 = trunc i32 %2658 to i8
  store i8 %2659, i8* %87, align 1, !tbaa !2449
  %2660 = lshr i32 %2638, 31
  %2661 = xor i32 %2658, %2615
  %2662 = xor i32 %2658, %2660
  %2663 = add nuw nsw i32 %2661, %2662
  %2664 = icmp eq i32 %2663, 2
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %93, align 1, !tbaa !2450
  %2666 = load i64, i64* %RBP, align 8
  %2667 = add i64 %2666, -60
  %2668 = add i64 %6924, 961
  store i64 %2668, i64* %PC, align 8
  %2669 = inttoptr i64 %2667 to i32*
  %2670 = load i32, i32* %2669, align 4
  %2671 = add i32 %2670, %2639
  %2672 = zext i32 %2671 to i64
  store i64 %2672, i64* %RDX, align 8, !tbaa !2428
  %2673 = icmp ult i32 %2671, %2639
  %2674 = icmp ult i32 %2671, %2670
  %2675 = or i1 %2673, %2674
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %70, align 1, !tbaa !2432
  %2677 = and i32 %2671, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677) #8
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %76, align 1, !tbaa !2446
  %2682 = xor i32 %2670, %2639
  %2683 = xor i32 %2682, %2671
  %2684 = lshr i32 %2683, 4
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  store i8 %2686, i8* %81, align 1, !tbaa !2447
  %2687 = icmp eq i32 %2671, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %84, align 1, !tbaa !2448
  %2689 = lshr i32 %2671, 31
  %2690 = trunc i32 %2689 to i8
  store i8 %2690, i8* %87, align 1, !tbaa !2449
  %2691 = lshr i32 %2670, 31
  %2692 = xor i32 %2689, %2658
  %2693 = xor i32 %2689, %2691
  %2694 = add nuw nsw i32 %2692, %2693
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %93, align 1, !tbaa !2450
  %2697 = sext i32 %2671 to i64
  store i64 %2697, i64* %RCX, align 8, !tbaa !2428
  %2698 = load i64, i64* %RAX, align 8
  %2699 = shl nsw i64 %2697, 2
  %2700 = add i64 %2699, %2698
  %2701 = add i64 %6924, 969
  store i64 %2701, i64* %PC, align 8
  %2702 = inttoptr i64 %2700 to i32*
  %2703 = load i32, i32* %2702, align 4
  store i32 %2703, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %2704 = add i64 %2666, -40
  %2705 = add i64 %6924, 973
  store i64 %2705, i64* %PC, align 8
  %2706 = inttoptr i64 %2704 to i64*
  %2707 = load i64, i64* %2706, align 8
  store i64 %2707, i64* %RAX, align 8, !tbaa !2428
  %2708 = add i64 %6924, 976
  store i64 %2708, i64* %PC, align 8
  %2709 = inttoptr i64 %2707 to i64*
  %2710 = load i64, i64* %2709, align 8
  store i64 %2710, i64* %RAX, align 8, !tbaa !2428
  %2711 = add i64 %6924, 980
  store i64 %2711, i64* %PC, align 8
  %2712 = load i64, i64* %2706, align 8
  store i64 %2712, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2713 = add i64 %6924, 988
  store i64 %2713, i64* %PC, align 8
  %2714 = load i64, i64* %2706, align 8
  store i64 %2714, i64* %RCX, align 8, !tbaa !2428
  %2715 = add i64 %6924, 992
  store i64 %2715, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2716 = add i64 %6924, 996
  store i64 %2716, i64* %PC, align 8
  %2717 = load i64, i64* %2706, align 8
  store i64 %2717, i64* %RCX, align 8, !tbaa !2428
  %2718 = add i64 %6924, 1000
  store i64 %2718, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2719 = load i64, i64* %RBP, align 8
  %2720 = add i64 %2719, -52
  %2721 = add i64 %6924, 1003
  store i64 %2721, i64* %PC, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RSI, align 8, !tbaa !2428
  %2725 = add i64 %2719, -40
  %2726 = add i64 %6924, 1007
  store i64 %2726, i64* %PC, align 8
  %2727 = inttoptr i64 %2725 to i64*
  %2728 = load i64, i64* %2727, align 8
  store i64 %2728, i64* %RCX, align 8, !tbaa !2428
  %2729 = add i64 %2728, 16
  %2730 = add i64 %6924, 1011
  store i64 %2730, i64* %PC, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = sext i32 %2723 to i64
  %2734 = sext i32 %2732 to i64
  %2735 = mul nsw i64 %2734, %2733
  %2736 = trunc i64 %2735 to i32
  %2737 = and i64 %2735, 4294967295
  store i64 %2737, i64* %RSI, align 8, !tbaa !2428
  %2738 = shl i64 %2735, 32
  %2739 = ashr exact i64 %2738, 32
  %2740 = icmp ne i64 %2739, %2735
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %70, align 1, !tbaa !2432
  %2742 = and i32 %2736, 255
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2742) #8
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  store i8 %2746, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2747 = lshr i32 %2736, 31
  %2748 = trunc i32 %2747 to i8
  store i8 %2748, i8* %87, align 1, !tbaa !2449
  store i8 %2741, i8* %93, align 1, !tbaa !2450
  %2749 = add i64 %6924, 1015
  store i64 %2749, i64* %PC, align 8
  %2750 = load i64, i64* %2727, align 8
  store i64 %2750, i64* %RCX, align 8, !tbaa !2428
  %2751 = add i64 %2750, 20
  %2752 = add i64 %6924, 1019
  store i64 %2752, i64* %PC, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = sext i32 %2754 to i64
  %2756 = mul nsw i64 %2755, %2739
  %2757 = and i64 %2756, 4294967295
  store i64 %2757, i64* %RSI, align 8, !tbaa !2428
  %2758 = trunc i64 %2756 to i32
  store i64 %2757, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2759 = and i32 %2758, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759) #8
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2764 = icmp eq i32 %2758, 0
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %84, align 1, !tbaa !2448
  %2766 = lshr i32 %2758, 31
  %2767 = trunc i32 %2766 to i8
  store i8 %2767, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2768 = add i64 %2719, -56
  %2769 = add i64 %6924, 1024
  store i64 %2769, i64* %PC, align 8
  %2770 = inttoptr i64 %2768 to i32*
  %2771 = load i32, i32* %2770, align 4
  %2772 = add i32 %2771, 1
  %2773 = zext i32 %2772 to i64
  store i64 %2773, i64* %RSI, align 8, !tbaa !2428
  %2774 = icmp eq i32 %2771, -1
  %2775 = icmp eq i32 %2772, 0
  %2776 = or i1 %2774, %2775
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %70, align 1, !tbaa !2432
  %2778 = and i32 %2772, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778) #8
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %76, align 1, !tbaa !2446
  %2783 = xor i32 %2771, %2772
  %2784 = lshr i32 %2783, 4
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %81, align 1, !tbaa !2447
  %2787 = zext i1 %2775 to i8
  store i8 %2787, i8* %84, align 1, !tbaa !2448
  %2788 = lshr i32 %2772, 31
  %2789 = trunc i32 %2788 to i8
  store i8 %2789, i8* %87, align 1, !tbaa !2449
  %2790 = lshr i32 %2771, 31
  %2791 = xor i32 %2788, %2790
  %2792 = add nuw nsw i32 %2791, %2788
  %2793 = icmp eq i32 %2792, 2
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %93, align 1, !tbaa !2450
  %2795 = load i64, i64* %RBP, align 8
  %2796 = add i64 %2795, -40
  %2797 = add i64 %6924, 1031
  store i64 %2797, i64* %PC, align 8
  %2798 = inttoptr i64 %2796 to i64*
  %2799 = load i64, i64* %2798, align 8
  store i64 %2799, i64* %RCX, align 8, !tbaa !2428
  %2800 = add i64 %2799, 20
  %2801 = add i64 %6924, 1035
  store i64 %2801, i64* %PC, align 8
  %2802 = inttoptr i64 %2800 to i32*
  %2803 = load i32, i32* %2802, align 4
  %2804 = sext i32 %2772 to i64
  %2805 = sext i32 %2803 to i64
  %2806 = mul nsw i64 %2805, %2804
  %2807 = and i64 %2806, 4294967295
  store i64 %2807, i64* %RSI, align 8, !tbaa !2428
  %2808 = trunc i64 %2806 to i32
  %2809 = add i32 %2808, %2758
  %2810 = zext i32 %2809 to i64
  store i64 %2810, i64* %RDX, align 8, !tbaa !2428
  %2811 = icmp ult i32 %2809, %2758
  %2812 = icmp ult i32 %2809, %2808
  %2813 = or i1 %2811, %2812
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %70, align 1, !tbaa !2432
  %2815 = and i32 %2809, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815) #8
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %76, align 1, !tbaa !2446
  %2820 = xor i64 %2806, %2756
  %2821 = trunc i64 %2820 to i32
  %2822 = xor i32 %2821, %2809
  %2823 = lshr i32 %2822, 4
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  store i8 %2825, i8* %81, align 1, !tbaa !2447
  %2826 = icmp eq i32 %2809, 0
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %84, align 1, !tbaa !2448
  %2828 = lshr i32 %2809, 31
  %2829 = trunc i32 %2828 to i8
  store i8 %2829, i8* %87, align 1, !tbaa !2449
  %2830 = lshr i32 %2808, 31
  %2831 = xor i32 %2828, %2766
  %2832 = xor i32 %2828, %2830
  %2833 = add nuw nsw i32 %2831, %2832
  %2834 = icmp eq i32 %2833, 2
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %93, align 1, !tbaa !2450
  %2836 = add i64 %2795, -60
  %2837 = add i64 %6924, 1040
  store i64 %2837, i64* %PC, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = add i32 %2839, 1
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %RSI, align 8, !tbaa !2428
  %2842 = lshr i32 %2840, 31
  %2843 = add i32 %2840, %2809
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RDX, align 8, !tbaa !2428
  %2845 = icmp ult i32 %2843, %2809
  %2846 = icmp ult i32 %2843, %2840
  %2847 = or i1 %2845, %2846
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %70, align 1, !tbaa !2432
  %2849 = and i32 %2843, 255
  %2850 = tail call i32 @llvm.ctpop.i32(i32 %2849) #8
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  store i8 %2853, i8* %76, align 1, !tbaa !2446
  %2854 = xor i32 %2840, %2809
  %2855 = xor i32 %2854, %2843
  %2856 = lshr i32 %2855, 4
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  store i8 %2858, i8* %81, align 1, !tbaa !2447
  %2859 = icmp eq i32 %2843, 0
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %84, align 1, !tbaa !2448
  %2861 = lshr i32 %2843, 31
  %2862 = trunc i32 %2861 to i8
  store i8 %2862, i8* %87, align 1, !tbaa !2449
  %2863 = xor i32 %2861, %2828
  %2864 = xor i32 %2861, %2842
  %2865 = add nuw nsw i32 %2863, %2864
  %2866 = icmp eq i32 %2865, 2
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %93, align 1, !tbaa !2450
  %2868 = sext i32 %2843 to i64
  store i64 %2868, i64* %RCX, align 8, !tbaa !2428
  %2869 = load i64, i64* %RAX, align 8
  %2870 = shl nsw i64 %2868, 2
  %2871 = add i64 %2870, %2869
  %2872 = add i64 %6924, 1053
  store i64 %2872, i64* %PC, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  store i32 %2874, i32* %1807, align 1, !tbaa !2451
  store float 0.000000e+00, float* %214, align 1, !tbaa !2451
  store float 0.000000e+00, float* %216, align 1, !tbaa !2451
  store float 0.000000e+00, float* %218, align 1, !tbaa !2451
  %2875 = load i64, i64* %RBP, align 8
  %2876 = add i64 %2875, -40
  %2877 = add i64 %6924, 1057
  store i64 %2877, i64* %PC, align 8
  %2878 = inttoptr i64 %2876 to i64*
  %2879 = load i64, i64* %2878, align 8
  store i64 %2879, i64* %RAX, align 8, !tbaa !2428
  %2880 = add i64 %6924, 1060
  store i64 %2880, i64* %PC, align 8
  %2881 = inttoptr i64 %2879 to i64*
  %2882 = load i64, i64* %2881, align 8
  store i64 %2882, i64* %RAX, align 8, !tbaa !2428
  %2883 = add i64 %6924, 1064
  store i64 %2883, i64* %PC, align 8
  %2884 = load i64, i64* %2878, align 8
  store i64 %2884, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2885 = add i64 %6924, 1072
  store i64 %2885, i64* %PC, align 8
  %2886 = load i64, i64* %2878, align 8
  store i64 %2886, i64* %RCX, align 8, !tbaa !2428
  %2887 = add i64 %6924, 1076
  store i64 %2887, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2888 = add i64 %6924, 1080
  store i64 %2888, i64* %PC, align 8
  %2889 = load i64, i64* %2878, align 8
  store i64 %2889, i64* %RCX, align 8, !tbaa !2428
  %2890 = add i64 %6924, 1084
  store i64 %2890, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2891 = add i64 %2875, -52
  %2892 = add i64 %6924, 1087
  store i64 %2892, i64* %PC, align 8
  %2893 = inttoptr i64 %2891 to i32*
  %2894 = load i32, i32* %2893, align 4
  %2895 = zext i32 %2894 to i64
  store i64 %2895, i64* %RSI, align 8, !tbaa !2428
  %2896 = add i64 %6924, 1091
  store i64 %2896, i64* %PC, align 8
  %2897 = load i64, i64* %2878, align 8
  store i64 %2897, i64* %RCX, align 8, !tbaa !2428
  %2898 = add i64 %2897, 16
  %2899 = add i64 %6924, 1095
  store i64 %2899, i64* %PC, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = sext i32 %2894 to i64
  %2903 = sext i32 %2901 to i64
  %2904 = mul nsw i64 %2903, %2902
  %2905 = trunc i64 %2904 to i32
  %2906 = and i64 %2904, 4294967295
  store i64 %2906, i64* %RSI, align 8, !tbaa !2428
  %2907 = shl i64 %2904, 32
  %2908 = ashr exact i64 %2907, 32
  %2909 = icmp ne i64 %2908, %2904
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %70, align 1, !tbaa !2432
  %2911 = and i32 %2905, 255
  %2912 = tail call i32 @llvm.ctpop.i32(i32 %2911) #8
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = xor i8 %2914, 1
  store i8 %2915, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2916 = lshr i32 %2905, 31
  %2917 = trunc i32 %2916 to i8
  store i8 %2917, i8* %87, align 1, !tbaa !2449
  store i8 %2910, i8* %93, align 1, !tbaa !2450
  %2918 = add i64 %6924, 1099
  store i64 %2918, i64* %PC, align 8
  %2919 = load i64, i64* %2878, align 8
  store i64 %2919, i64* %RCX, align 8, !tbaa !2428
  %2920 = add i64 %2919, 20
  %2921 = add i64 %6924, 1103
  store i64 %2921, i64* %PC, align 8
  %2922 = inttoptr i64 %2920 to i32*
  %2923 = load i32, i32* %2922, align 4
  %2924 = sext i32 %2923 to i64
  %2925 = mul nsw i64 %2924, %2908
  %2926 = and i64 %2925, 4294967295
  store i64 %2926, i64* %RSI, align 8, !tbaa !2428
  %2927 = trunc i64 %2925 to i32
  store i64 %2926, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2928 = and i32 %2927, 255
  %2929 = tail call i32 @llvm.ctpop.i32(i32 %2928) #8
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  store i8 %2932, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2933 = icmp eq i32 %2927, 0
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %84, align 1, !tbaa !2448
  %2935 = lshr i32 %2927, 31
  %2936 = trunc i32 %2935 to i8
  store i8 %2936, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2937 = load i64, i64* %RBP, align 8
  %2938 = add i64 %2937, -56
  %2939 = add i64 %6924, 1108
  store i64 %2939, i64* %PC, align 8
  %2940 = inttoptr i64 %2938 to i32*
  %2941 = load i32, i32* %2940, align 4
  %2942 = add i32 %2941, -1
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RSI, align 8, !tbaa !2428
  %2944 = icmp eq i32 %2941, 0
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %70, align 1, !tbaa !2432
  %2946 = and i32 %2942, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946) #8
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %76, align 1, !tbaa !2446
  %2951 = xor i32 %2941, %2942
  %2952 = lshr i32 %2951, 4
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  store i8 %2954, i8* %81, align 1, !tbaa !2447
  %2955 = icmp eq i32 %2942, 0
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %84, align 1, !tbaa !2448
  %2957 = lshr i32 %2942, 31
  %2958 = trunc i32 %2957 to i8
  store i8 %2958, i8* %87, align 1, !tbaa !2449
  %2959 = lshr i32 %2941, 31
  %2960 = xor i32 %2957, %2959
  %2961 = add nuw nsw i32 %2960, %2959
  %2962 = icmp eq i32 %2961, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %93, align 1, !tbaa !2450
  %2964 = add i64 %2937, -40
  %2965 = add i64 %6924, 1115
  store i64 %2965, i64* %PC, align 8
  %2966 = inttoptr i64 %2964 to i64*
  %2967 = load i64, i64* %2966, align 8
  store i64 %2967, i64* %RCX, align 8, !tbaa !2428
  %2968 = add i64 %2967, 20
  %2969 = add i64 %6924, 1119
  store i64 %2969, i64* %PC, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = sext i32 %2942 to i64
  %2973 = sext i32 %2971 to i64
  %2974 = mul nsw i64 %2973, %2972
  %2975 = and i64 %2974, 4294967295
  store i64 %2975, i64* %RSI, align 8, !tbaa !2428
  %2976 = trunc i64 %2974 to i32
  %2977 = add i32 %2976, %2927
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RDX, align 8, !tbaa !2428
  %2979 = icmp ult i32 %2977, %2927
  %2980 = icmp ult i32 %2977, %2976
  %2981 = or i1 %2979, %2980
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %70, align 1, !tbaa !2432
  %2983 = and i32 %2977, 255
  %2984 = tail call i32 @llvm.ctpop.i32(i32 %2983) #8
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  store i8 %2987, i8* %76, align 1, !tbaa !2446
  %2988 = xor i64 %2974, %2925
  %2989 = trunc i64 %2988 to i32
  %2990 = xor i32 %2989, %2977
  %2991 = lshr i32 %2990, 4
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  store i8 %2993, i8* %81, align 1, !tbaa !2447
  %2994 = icmp eq i32 %2977, 0
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %84, align 1, !tbaa !2448
  %2996 = lshr i32 %2977, 31
  %2997 = trunc i32 %2996 to i8
  store i8 %2997, i8* %87, align 1, !tbaa !2449
  %2998 = lshr i32 %2976, 31
  %2999 = xor i32 %2996, %2935
  %3000 = xor i32 %2996, %2998
  %3001 = add nuw nsw i32 %2999, %3000
  %3002 = icmp eq i32 %3001, 2
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %93, align 1, !tbaa !2450
  %3004 = load i64, i64* %RBP, align 8
  %3005 = add i64 %3004, -60
  %3006 = add i64 %6924, 1124
  store i64 %3006, i64* %PC, align 8
  %3007 = inttoptr i64 %3005 to i32*
  %3008 = load i32, i32* %3007, align 4
  %3009 = add i32 %3008, 1
  %3010 = zext i32 %3009 to i64
  store i64 %3010, i64* %RSI, align 8, !tbaa !2428
  %3011 = lshr i32 %3009, 31
  %3012 = add i32 %3009, %2977
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RDX, align 8, !tbaa !2428
  %3014 = icmp ult i32 %3012, %2977
  %3015 = icmp ult i32 %3012, %3009
  %3016 = or i1 %3014, %3015
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %70, align 1, !tbaa !2432
  %3018 = and i32 %3012, 255
  %3019 = tail call i32 @llvm.ctpop.i32(i32 %3018) #8
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  store i8 %3022, i8* %76, align 1, !tbaa !2446
  %3023 = xor i32 %3009, %2977
  %3024 = xor i32 %3023, %3012
  %3025 = lshr i32 %3024, 4
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  store i8 %3027, i8* %81, align 1, !tbaa !2447
  %3028 = icmp eq i32 %3012, 0
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %84, align 1, !tbaa !2448
  %3030 = lshr i32 %3012, 31
  %3031 = trunc i32 %3030 to i8
  store i8 %3031, i8* %87, align 1, !tbaa !2449
  %3032 = xor i32 %3030, %2996
  %3033 = xor i32 %3030, %3011
  %3034 = add nuw nsw i32 %3032, %3033
  %3035 = icmp eq i32 %3034, 2
  %3036 = zext i1 %3035 to i8
  store i8 %3036, i8* %93, align 1, !tbaa !2450
  %3037 = sext i32 %3012 to i64
  store i64 %3037, i64* %RCX, align 8, !tbaa !2428
  %3038 = load i64, i64* %RAX, align 8
  %3039 = shl nsw i64 %3037, 2
  %3040 = add i64 %3039, %3038
  %3041 = add i64 %6924, 1137
  store i64 %3041, i64* %PC, align 8
  %3042 = load <2 x float>, <2 x float>* %219, align 1
  %3043 = load <2 x i32>, <2 x i32>* %220, align 1
  %3044 = inttoptr i64 %3040 to float*
  %3045 = load float, float* %3044, align 4
  %3046 = extractelement <2 x float> %3042, i32 0
  %3047 = fsub float %3046, %3045
  store float %3047, float* %212, align 1, !tbaa !2451
  %3048 = bitcast <2 x float> %3042 to <2 x i32>
  %3049 = extractelement <2 x i32> %3048, i32 1
  store i32 %3049, i32* %221, align 1, !tbaa !2451
  %3050 = extractelement <2 x i32> %3043, i32 0
  store i32 %3050, i32* %222, align 1, !tbaa !2451
  %3051 = extractelement <2 x i32> %3043, i32 1
  store i32 %3051, i32* %223, align 1, !tbaa !2451
  %3052 = load i64, i64* %RBP, align 8
  %3053 = add i64 %3052, -40
  %3054 = add i64 %6924, 1141
  store i64 %3054, i64* %PC, align 8
  %3055 = inttoptr i64 %3053 to i64*
  %3056 = load i64, i64* %3055, align 8
  store i64 %3056, i64* %RAX, align 8, !tbaa !2428
  %3057 = add i64 %6924, 1144
  store i64 %3057, i64* %PC, align 8
  %3058 = inttoptr i64 %3056 to i64*
  %3059 = load i64, i64* %3058, align 8
  store i64 %3059, i64* %RAX, align 8, !tbaa !2428
  %3060 = add i64 %6924, 1148
  store i64 %3060, i64* %PC, align 8
  %3061 = load i64, i64* %3055, align 8
  store i64 %3061, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3062 = add i64 %6924, 1156
  store i64 %3062, i64* %PC, align 8
  %3063 = load i64, i64* %3055, align 8
  store i64 %3063, i64* %RCX, align 8, !tbaa !2428
  %3064 = add i64 %6924, 1160
  store i64 %3064, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3065 = add i64 %6924, 1164
  store i64 %3065, i64* %PC, align 8
  %3066 = load i64, i64* %3055, align 8
  store i64 %3066, i64* %RCX, align 8, !tbaa !2428
  %3067 = add i64 %6924, 1168
  store i64 %3067, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3068 = add i64 %3052, -52
  %3069 = add i64 %6924, 1171
  store i64 %3069, i64* %PC, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = zext i32 %3071 to i64
  store i64 %3072, i64* %RSI, align 8, !tbaa !2428
  %3073 = add i64 %6924, 1175
  store i64 %3073, i64* %PC, align 8
  %3074 = load i64, i64* %3055, align 8
  store i64 %3074, i64* %RCX, align 8, !tbaa !2428
  %3075 = add i64 %3074, 16
  %3076 = add i64 %6924, 1179
  store i64 %3076, i64* %PC, align 8
  %3077 = inttoptr i64 %3075 to i32*
  %3078 = load i32, i32* %3077, align 4
  %3079 = sext i32 %3071 to i64
  %3080 = sext i32 %3078 to i64
  %3081 = mul nsw i64 %3080, %3079
  %3082 = trunc i64 %3081 to i32
  %3083 = and i64 %3081, 4294967295
  store i64 %3083, i64* %RSI, align 8, !tbaa !2428
  %3084 = shl i64 %3081, 32
  %3085 = ashr exact i64 %3084, 32
  %3086 = icmp ne i64 %3085, %3081
  %3087 = zext i1 %3086 to i8
  store i8 %3087, i8* %70, align 1, !tbaa !2432
  %3088 = and i32 %3082, 255
  %3089 = tail call i32 @llvm.ctpop.i32(i32 %3088) #8
  %3090 = trunc i32 %3089 to i8
  %3091 = and i8 %3090, 1
  %3092 = xor i8 %3091, 1
  store i8 %3092, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3093 = lshr i32 %3082, 31
  %3094 = trunc i32 %3093 to i8
  store i8 %3094, i8* %87, align 1, !tbaa !2449
  store i8 %3087, i8* %93, align 1, !tbaa !2450
  %3095 = add i64 %6924, 1183
  store i64 %3095, i64* %PC, align 8
  %3096 = load i64, i64* %3055, align 8
  store i64 %3096, i64* %RCX, align 8, !tbaa !2428
  %3097 = add i64 %3096, 20
  %3098 = add i64 %6924, 1187
  store i64 %3098, i64* %PC, align 8
  %3099 = inttoptr i64 %3097 to i32*
  %3100 = load i32, i32* %3099, align 4
  %3101 = sext i32 %3100 to i64
  %3102 = mul nsw i64 %3101, %3085
  %3103 = and i64 %3102, 4294967295
  store i64 %3103, i64* %RSI, align 8, !tbaa !2428
  %3104 = trunc i64 %3102 to i32
  store i64 %3103, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3105 = and i32 %3104, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105) #8
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3110 = icmp eq i32 %3104, 0
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %84, align 1, !tbaa !2448
  %3112 = lshr i32 %3104, 31
  %3113 = trunc i32 %3112 to i8
  store i8 %3113, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3114 = load i64, i64* %RBP, align 8
  %3115 = add i64 %3114, -56
  %3116 = add i64 %6924, 1192
  store i64 %3116, i64* %PC, align 8
  %3117 = inttoptr i64 %3115 to i32*
  %3118 = load i32, i32* %3117, align 4
  %3119 = add i32 %3118, 1
  %3120 = zext i32 %3119 to i64
  store i64 %3120, i64* %RSI, align 8, !tbaa !2428
  %3121 = icmp eq i32 %3118, -1
  %3122 = icmp eq i32 %3119, 0
  %3123 = or i1 %3121, %3122
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %70, align 1, !tbaa !2432
  %3125 = and i32 %3119, 255
  %3126 = tail call i32 @llvm.ctpop.i32(i32 %3125) #8
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = xor i8 %3128, 1
  store i8 %3129, i8* %76, align 1, !tbaa !2446
  %3130 = xor i32 %3118, %3119
  %3131 = lshr i32 %3130, 4
  %3132 = trunc i32 %3131 to i8
  %3133 = and i8 %3132, 1
  store i8 %3133, i8* %81, align 1, !tbaa !2447
  %3134 = zext i1 %3122 to i8
  store i8 %3134, i8* %84, align 1, !tbaa !2448
  %3135 = lshr i32 %3119, 31
  %3136 = trunc i32 %3135 to i8
  store i8 %3136, i8* %87, align 1, !tbaa !2449
  %3137 = lshr i32 %3118, 31
  %3138 = xor i32 %3135, %3137
  %3139 = add nuw nsw i32 %3138, %3135
  %3140 = icmp eq i32 %3139, 2
  %3141 = zext i1 %3140 to i8
  store i8 %3141, i8* %93, align 1, !tbaa !2450
  %3142 = add i64 %3114, -40
  %3143 = add i64 %6924, 1199
  store i64 %3143, i64* %PC, align 8
  %3144 = inttoptr i64 %3142 to i64*
  %3145 = load i64, i64* %3144, align 8
  store i64 %3145, i64* %RCX, align 8, !tbaa !2428
  %3146 = add i64 %3145, 20
  %3147 = add i64 %6924, 1203
  store i64 %3147, i64* %PC, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = sext i32 %3119 to i64
  %3151 = sext i32 %3149 to i64
  %3152 = mul nsw i64 %3151, %3150
  %3153 = and i64 %3152, 4294967295
  store i64 %3153, i64* %RSI, align 8, !tbaa !2428
  %3154 = trunc i64 %3152 to i32
  %3155 = add i32 %3154, %3104
  %3156 = zext i32 %3155 to i64
  store i64 %3156, i64* %RDX, align 8, !tbaa !2428
  %3157 = icmp ult i32 %3155, %3104
  %3158 = icmp ult i32 %3155, %3154
  %3159 = or i1 %3157, %3158
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %70, align 1, !tbaa !2432
  %3161 = and i32 %3155, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161) #8
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %76, align 1, !tbaa !2446
  %3166 = xor i64 %3152, %3102
  %3167 = trunc i64 %3166 to i32
  %3168 = xor i32 %3167, %3155
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  store i8 %3171, i8* %81, align 1, !tbaa !2447
  %3172 = icmp eq i32 %3155, 0
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %84, align 1, !tbaa !2448
  %3174 = lshr i32 %3155, 31
  %3175 = trunc i32 %3174 to i8
  store i8 %3175, i8* %87, align 1, !tbaa !2449
  %3176 = lshr i32 %3154, 31
  %3177 = xor i32 %3174, %3112
  %3178 = xor i32 %3174, %3176
  %3179 = add nuw nsw i32 %3177, %3178
  %3180 = icmp eq i32 %3179, 2
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %93, align 1, !tbaa !2450
  %3182 = load i64, i64* %RBP, align 8
  %3183 = add i64 %3182, -60
  %3184 = add i64 %6924, 1208
  store i64 %3184, i64* %PC, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = add i32 %3186, -1
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RSI, align 8, !tbaa !2428
  %3189 = lshr i32 %3187, 31
  %3190 = add i32 %3187, %3155
  %3191 = zext i32 %3190 to i64
  store i64 %3191, i64* %RDX, align 8, !tbaa !2428
  %3192 = icmp ult i32 %3190, %3155
  %3193 = icmp ult i32 %3190, %3187
  %3194 = or i1 %3192, %3193
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %70, align 1, !tbaa !2432
  %3196 = and i32 %3190, 255
  %3197 = tail call i32 @llvm.ctpop.i32(i32 %3196) #8
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  store i8 %3200, i8* %76, align 1, !tbaa !2446
  %3201 = xor i32 %3187, %3155
  %3202 = xor i32 %3201, %3190
  %3203 = lshr i32 %3202, 4
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  store i8 %3205, i8* %81, align 1, !tbaa !2447
  %3206 = icmp eq i32 %3190, 0
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %84, align 1, !tbaa !2448
  %3208 = lshr i32 %3190, 31
  %3209 = trunc i32 %3208 to i8
  store i8 %3209, i8* %87, align 1, !tbaa !2449
  %3210 = xor i32 %3208, %3174
  %3211 = xor i32 %3208, %3189
  %3212 = add nuw nsw i32 %3210, %3211
  %3213 = icmp eq i32 %3212, 2
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %93, align 1, !tbaa !2450
  %3215 = sext i32 %3190 to i64
  store i64 %3215, i64* %RCX, align 8, !tbaa !2428
  %3216 = load i64, i64* %RAX, align 8
  %3217 = shl nsw i64 %3215, 2
  %3218 = add i64 %3217, %3216
  %3219 = add i64 %6924, 1221
  store i64 %3219, i64* %PC, align 8
  %3220 = load <2 x float>, <2 x float>* %219, align 1
  %3221 = load <2 x i32>, <2 x i32>* %220, align 1
  %3222 = inttoptr i64 %3218 to float*
  %3223 = load float, float* %3222, align 4
  %3224 = extractelement <2 x float> %3220, i32 0
  %3225 = fsub float %3224, %3223
  store float %3225, float* %212, align 1, !tbaa !2451
  %3226 = bitcast <2 x float> %3220 to <2 x i32>
  %3227 = extractelement <2 x i32> %3226, i32 1
  store i32 %3227, i32* %221, align 1, !tbaa !2451
  %3228 = extractelement <2 x i32> %3221, i32 0
  store i32 %3228, i32* %222, align 1, !tbaa !2451
  %3229 = extractelement <2 x i32> %3221, i32 1
  store i32 %3229, i32* %223, align 1, !tbaa !2451
  %3230 = load i64, i64* %RBP, align 8
  %3231 = add i64 %3230, -40
  %3232 = add i64 %6924, 1225
  store i64 %3232, i64* %PC, align 8
  %3233 = inttoptr i64 %3231 to i64*
  %3234 = load i64, i64* %3233, align 8
  store i64 %3234, i64* %RAX, align 8, !tbaa !2428
  %3235 = add i64 %6924, 1228
  store i64 %3235, i64* %PC, align 8
  %3236 = inttoptr i64 %3234 to i64*
  %3237 = load i64, i64* %3236, align 8
  store i64 %3237, i64* %RAX, align 8, !tbaa !2428
  %3238 = add i64 %6924, 1232
  store i64 %3238, i64* %PC, align 8
  %3239 = load i64, i64* %3233, align 8
  store i64 %3239, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3240 = add i64 %6924, 1240
  store i64 %3240, i64* %PC, align 8
  %3241 = load i64, i64* %3233, align 8
  store i64 %3241, i64* %RCX, align 8, !tbaa !2428
  %3242 = add i64 %6924, 1244
  store i64 %3242, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3243 = add i64 %6924, 1248
  store i64 %3243, i64* %PC, align 8
  %3244 = load i64, i64* %3233, align 8
  store i64 %3244, i64* %RCX, align 8, !tbaa !2428
  %3245 = add i64 %6924, 1252
  store i64 %3245, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3246 = add i64 %3230, -52
  %3247 = add i64 %6924, 1255
  store i64 %3247, i64* %PC, align 8
  %3248 = inttoptr i64 %3246 to i32*
  %3249 = load i32, i32* %3248, align 4
  %3250 = zext i32 %3249 to i64
  store i64 %3250, i64* %RSI, align 8, !tbaa !2428
  %3251 = add i64 %6924, 1259
  store i64 %3251, i64* %PC, align 8
  %3252 = load i64, i64* %3233, align 8
  store i64 %3252, i64* %RCX, align 8, !tbaa !2428
  %3253 = add i64 %3252, 16
  %3254 = add i64 %6924, 1263
  store i64 %3254, i64* %PC, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = sext i32 %3249 to i64
  %3258 = sext i32 %3256 to i64
  %3259 = mul nsw i64 %3258, %3257
  %3260 = trunc i64 %3259 to i32
  %3261 = and i64 %3259, 4294967295
  store i64 %3261, i64* %RSI, align 8, !tbaa !2428
  %3262 = shl i64 %3259, 32
  %3263 = ashr exact i64 %3262, 32
  %3264 = icmp ne i64 %3263, %3259
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %70, align 1, !tbaa !2432
  %3266 = and i32 %3260, 255
  %3267 = tail call i32 @llvm.ctpop.i32(i32 %3266) #8
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  %3270 = xor i8 %3269, 1
  store i8 %3270, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3271 = lshr i32 %3260, 31
  %3272 = trunc i32 %3271 to i8
  store i8 %3272, i8* %87, align 1, !tbaa !2449
  store i8 %3265, i8* %93, align 1, !tbaa !2450
  %3273 = add i64 %6924, 1267
  store i64 %3273, i64* %PC, align 8
  %3274 = load i64, i64* %3233, align 8
  store i64 %3274, i64* %RCX, align 8, !tbaa !2428
  %3275 = add i64 %3274, 20
  %3276 = add i64 %6924, 1271
  store i64 %3276, i64* %PC, align 8
  %3277 = inttoptr i64 %3275 to i32*
  %3278 = load i32, i32* %3277, align 4
  %3279 = sext i32 %3278 to i64
  %3280 = mul nsw i64 %3279, %3263
  %3281 = and i64 %3280, 4294967295
  store i64 %3281, i64* %RSI, align 8, !tbaa !2428
  %3282 = trunc i64 %3280 to i32
  store i64 %3281, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3283 = and i32 %3282, 255
  %3284 = tail call i32 @llvm.ctpop.i32(i32 %3283) #8
  %3285 = trunc i32 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = xor i8 %3286, 1
  store i8 %3287, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3288 = icmp eq i32 %3282, 0
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %84, align 1, !tbaa !2448
  %3290 = lshr i32 %3282, 31
  %3291 = trunc i32 %3290 to i8
  store i8 %3291, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3292 = load i64, i64* %RBP, align 8
  %3293 = add i64 %3292, -56
  %3294 = add i64 %6924, 1276
  store i64 %3294, i64* %PC, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = add i32 %3296, -1
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RSI, align 8, !tbaa !2428
  %3299 = icmp eq i32 %3296, 0
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %70, align 1, !tbaa !2432
  %3301 = and i32 %3297, 255
  %3302 = tail call i32 @llvm.ctpop.i32(i32 %3301) #8
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  store i8 %3305, i8* %76, align 1, !tbaa !2446
  %3306 = xor i32 %3296, %3297
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  store i8 %3309, i8* %81, align 1, !tbaa !2447
  %3310 = icmp eq i32 %3297, 0
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %84, align 1, !tbaa !2448
  %3312 = lshr i32 %3297, 31
  %3313 = trunc i32 %3312 to i8
  store i8 %3313, i8* %87, align 1, !tbaa !2449
  %3314 = lshr i32 %3296, 31
  %3315 = xor i32 %3312, %3314
  %3316 = add nuw nsw i32 %3315, %3314
  %3317 = icmp eq i32 %3316, 2
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %93, align 1, !tbaa !2450
  %3319 = add i64 %3292, -40
  %3320 = add i64 %6924, 1283
  store i64 %3320, i64* %PC, align 8
  %3321 = inttoptr i64 %3319 to i64*
  %3322 = load i64, i64* %3321, align 8
  store i64 %3322, i64* %RCX, align 8, !tbaa !2428
  %3323 = add i64 %3322, 20
  %3324 = add i64 %6924, 1287
  store i64 %3324, i64* %PC, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = sext i32 %3297 to i64
  %3328 = sext i32 %3326 to i64
  %3329 = mul nsw i64 %3328, %3327
  %3330 = and i64 %3329, 4294967295
  store i64 %3330, i64* %RSI, align 8, !tbaa !2428
  %3331 = trunc i64 %3329 to i32
  %3332 = add i32 %3331, %3282
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RDX, align 8, !tbaa !2428
  %3334 = icmp ult i32 %3332, %3282
  %3335 = icmp ult i32 %3332, %3331
  %3336 = or i1 %3334, %3335
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %70, align 1, !tbaa !2432
  %3338 = and i32 %3332, 255
  %3339 = tail call i32 @llvm.ctpop.i32(i32 %3338) #8
  %3340 = trunc i32 %3339 to i8
  %3341 = and i8 %3340, 1
  %3342 = xor i8 %3341, 1
  store i8 %3342, i8* %76, align 1, !tbaa !2446
  %3343 = xor i64 %3329, %3280
  %3344 = trunc i64 %3343 to i32
  %3345 = xor i32 %3344, %3332
  %3346 = lshr i32 %3345, 4
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  store i8 %3348, i8* %81, align 1, !tbaa !2447
  %3349 = icmp eq i32 %3332, 0
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %84, align 1, !tbaa !2448
  %3351 = lshr i32 %3332, 31
  %3352 = trunc i32 %3351 to i8
  store i8 %3352, i8* %87, align 1, !tbaa !2449
  %3353 = lshr i32 %3331, 31
  %3354 = xor i32 %3351, %3290
  %3355 = xor i32 %3351, %3353
  %3356 = add nuw nsw i32 %3354, %3355
  %3357 = icmp eq i32 %3356, 2
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %93, align 1, !tbaa !2450
  %3359 = load i64, i64* %RBP, align 8
  %3360 = add i64 %3359, -60
  %3361 = add i64 %6924, 1292
  store i64 %3361, i64* %PC, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = add i32 %3363, -1
  %3365 = zext i32 %3364 to i64
  store i64 %3365, i64* %RSI, align 8, !tbaa !2428
  %3366 = lshr i32 %3364, 31
  %3367 = add i32 %3364, %3332
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RDX, align 8, !tbaa !2428
  %3369 = icmp ult i32 %3367, %3332
  %3370 = icmp ult i32 %3367, %3364
  %3371 = or i1 %3369, %3370
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %70, align 1, !tbaa !2432
  %3373 = and i32 %3367, 255
  %3374 = tail call i32 @llvm.ctpop.i32(i32 %3373) #8
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  store i8 %3377, i8* %76, align 1, !tbaa !2446
  %3378 = xor i32 %3364, %3332
  %3379 = xor i32 %3378, %3367
  %3380 = lshr i32 %3379, 4
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  store i8 %3382, i8* %81, align 1, !tbaa !2447
  %3383 = icmp eq i32 %3367, 0
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %84, align 1, !tbaa !2448
  %3385 = lshr i32 %3367, 31
  %3386 = trunc i32 %3385 to i8
  store i8 %3386, i8* %87, align 1, !tbaa !2449
  %3387 = xor i32 %3385, %3351
  %3388 = xor i32 %3385, %3366
  %3389 = add nuw nsw i32 %3387, %3388
  %3390 = icmp eq i32 %3389, 2
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %93, align 1, !tbaa !2450
  %3392 = sext i32 %3367 to i64
  store i64 %3392, i64* %RCX, align 8, !tbaa !2428
  %3393 = load i64, i64* %RAX, align 8
  %3394 = shl nsw i64 %3392, 2
  %3395 = add i64 %3394, %3393
  %3396 = add i64 %6924, 1305
  store i64 %3396, i64* %PC, align 8
  %3397 = load <2 x float>, <2 x float>* %219, align 1
  %3398 = load <2 x i32>, <2 x i32>* %220, align 1
  %3399 = inttoptr i64 %3395 to float*
  %3400 = load float, float* %3399, align 4
  %3401 = extractelement <2 x float> %3397, i32 0
  %3402 = fadd float %3401, %3400
  store float %3402, float* %212, align 1, !tbaa !2451
  %3403 = bitcast <2 x float> %3397 to <2 x i32>
  %3404 = extractelement <2 x i32> %3403, i32 1
  store i32 %3404, i32* %221, align 1, !tbaa !2451
  %3405 = extractelement <2 x i32> %3398, i32 0
  store i32 %3405, i32* %222, align 1, !tbaa !2451
  %3406 = extractelement <2 x i32> %3398, i32 1
  store i32 %3406, i32* %223, align 1, !tbaa !2451
  %3407 = load <2 x float>, <2 x float>* %206, align 1
  %3408 = load <2 x i32>, <2 x i32>* %207, align 1
  %3409 = load <2 x float>, <2 x float>* %219, align 1
  %3410 = extractelement <2 x float> %3407, i32 0
  %3411 = extractelement <2 x float> %3409, i32 0
  %3412 = fmul float %3410, %3411
  store float %3412, float* %199, align 1, !tbaa !2451
  %3413 = bitcast <2 x float> %3407 to <2 x i32>
  %3414 = extractelement <2 x i32> %3413, i32 1
  store i32 %3414, i32* %208, align 1, !tbaa !2451
  %3415 = extractelement <2 x i32> %3408, i32 0
  store i32 %3415, i32* %209, align 1, !tbaa !2451
  %3416 = extractelement <2 x i32> %3408, i32 1
  store i32 %3416, i32* %210, align 1, !tbaa !2451
  %3417 = load <2 x float>, <2 x float>* %192, align 1
  %3418 = load <2 x i32>, <2 x i32>* %197, align 1
  %3419 = load <2 x float>, <2 x float>* %206, align 1
  %3420 = extractelement <2 x float> %3417, i32 0
  %3421 = extractelement <2 x float> %3419, i32 0
  %3422 = fadd float %3420, %3421
  store float %3422, float* %193, align 1, !tbaa !2451
  %3423 = bitcast <2 x float> %3417 to <2 x i32>
  %3424 = extractelement <2 x i32> %3423, i32 1
  store i32 %3424, i32* %188, align 1, !tbaa !2451
  %3425 = extractelement <2 x i32> %3418, i32 0
  store i32 %3425, i32* %189, align 1, !tbaa !2451
  %3426 = extractelement <2 x i32> %3418, i32 1
  store i32 %3426, i32* %191, align 1, !tbaa !2451
  %3427 = load i64, i64* %RBP, align 8
  %3428 = add i64 %3427, -24
  %3429 = add i64 %6924, 1317
  store i64 %3429, i64* %PC, align 8
  %3430 = inttoptr i64 %3428 to i64*
  %3431 = load i64, i64* %3430, align 8
  store i64 %3431, i64* %RAX, align 8, !tbaa !2428
  %3432 = add i64 %6924, 1320
  store i64 %3432, i64* %PC, align 8
  %3433 = inttoptr i64 %3431 to i64*
  %3434 = load i64, i64* %3433, align 8
  store i64 %3434, i64* %RAX, align 8, !tbaa !2428
  %3435 = add i64 %6924, 1324
  store i64 %3435, i64* %PC, align 8
  %3436 = load i64, i64* %3430, align 8
  store i64 %3436, i64* %RCX, align 8, !tbaa !2428
  %3437 = add i64 %3436, 12
  %3438 = add i64 %6924, 1327
  store i64 %3438, i64* %PC, align 8
  %3439 = inttoptr i64 %3437 to i32*
  %3440 = load i32, i32* %3439, align 4
  %3441 = shl i32 %3440, 1
  %3442 = icmp slt i32 %3440, 0
  %3443 = icmp slt i32 %3441, 0
  %3444 = xor i1 %3442, %3443
  %3445 = zext i32 %3441 to i64
  store i64 %3445, i64* %RDX, align 8, !tbaa !2428
  %.lobit11 = lshr i32 %3440, 31
  %3446 = trunc i32 %.lobit11 to i8
  store i8 %3446, i8* %70, align 1, !tbaa !2453
  %3447 = and i32 %3441, 254
  %3448 = tail call i32 @llvm.ctpop.i32(i32 %3447) #8
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  %3451 = xor i8 %3450, 1
  store i8 %3451, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %3452 = icmp eq i32 %3441, 0
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %84, align 1, !tbaa !2453
  %3454 = lshr i32 %3440, 30
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  store i8 %3456, i8* %87, align 1, !tbaa !2453
  %3457 = zext i1 %3444 to i8
  store i8 %3457, i8* %93, align 1, !tbaa !2453
  %3458 = add i64 %6924, 1334
  store i64 %3458, i64* %PC, align 8
  %3459 = load i64, i64* %3430, align 8
  store i64 %3459, i64* %RCX, align 8, !tbaa !2428
  %3460 = add i64 %3459, 16
  %3461 = add i64 %6924, 1338
  store i64 %3461, i64* %PC, align 8
  %3462 = inttoptr i64 %3460 to i32*
  %3463 = load i32, i32* %3462, align 4
  %3464 = sext i32 %3441 to i64
  %3465 = sext i32 %3463 to i64
  %3466 = mul nsw i64 %3465, %3464
  %3467 = trunc i64 %3466 to i32
  %3468 = and i64 %3466, 4294967294
  store i64 %3468, i64* %RDX, align 8, !tbaa !2428
  %3469 = shl i64 %3466, 32
  %3470 = ashr exact i64 %3469, 32
  %3471 = icmp ne i64 %3470, %3466
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %70, align 1, !tbaa !2432
  %3473 = and i32 %3467, 254
  %3474 = tail call i32 @llvm.ctpop.i32(i32 %3473) #8
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  %3477 = xor i8 %3476, 1
  store i8 %3477, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3478 = lshr i32 %3467, 31
  %3479 = trunc i32 %3478 to i8
  store i8 %3479, i8* %87, align 1, !tbaa !2449
  store i8 %3472, i8* %93, align 1, !tbaa !2450
  %3480 = add i64 %6924, 1342
  store i64 %3480, i64* %PC, align 8
  %3481 = load i64, i64* %3430, align 8
  store i64 %3481, i64* %RCX, align 8, !tbaa !2428
  %3482 = add i64 %3481, 20
  %3483 = add i64 %6924, 1346
  store i64 %3483, i64* %PC, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = sext i32 %3485 to i64
  %3487 = mul nsw i64 %3486, %3470
  %3488 = trunc i64 %3487 to i32
  %3489 = and i64 %3487, 4294967295
  store i64 %3489, i64* %RDX, align 8, !tbaa !2428
  %3490 = shl i64 %3487, 32
  %3491 = ashr exact i64 %3490, 32
  %3492 = icmp ne i64 %3491, %3487
  %3493 = zext i1 %3492 to i8
  store i8 %3493, i8* %70, align 1, !tbaa !2432
  %3494 = and i32 %3488, 255
  %3495 = tail call i32 @llvm.ctpop.i32(i32 %3494) #8
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = xor i8 %3497, 1
  store i8 %3498, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3499 = lshr i32 %3488, 31
  %3500 = trunc i32 %3499 to i8
  store i8 %3500, i8* %87, align 1, !tbaa !2449
  store i8 %3493, i8* %93, align 1, !tbaa !2450
  %3501 = load i64, i64* %RBP, align 8
  %3502 = add i64 %3501, -52
  %3503 = add i64 %6924, 1349
  store i64 %3503, i64* %PC, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = zext i32 %3505 to i64
  store i64 %3506, i64* %RSI, align 8, !tbaa !2428
  %3507 = add i64 %3501, -24
  %3508 = add i64 %6924, 1353
  store i64 %3508, i64* %PC, align 8
  %3509 = inttoptr i64 %3507 to i64*
  %3510 = load i64, i64* %3509, align 8
  store i64 %3510, i64* %RCX, align 8, !tbaa !2428
  %3511 = add i64 %3510, 16
  %3512 = add i64 %6924, 1357
  store i64 %3512, i64* %PC, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = sext i32 %3505 to i64
  %3516 = sext i32 %3514 to i64
  %3517 = mul nsw i64 %3516, %3515
  %3518 = trunc i64 %3517 to i32
  %3519 = and i64 %3517, 4294967295
  store i64 %3519, i64* %RSI, align 8, !tbaa !2428
  %3520 = shl i64 %3517, 32
  %3521 = ashr exact i64 %3520, 32
  %3522 = icmp ne i64 %3521, %3517
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %70, align 1, !tbaa !2432
  %3524 = and i32 %3518, 255
  %3525 = tail call i32 @llvm.ctpop.i32(i32 %3524) #8
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  store i8 %3528, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3529 = lshr i32 %3518, 31
  %3530 = trunc i32 %3529 to i8
  store i8 %3530, i8* %87, align 1, !tbaa !2449
  store i8 %3523, i8* %93, align 1, !tbaa !2450
  %3531 = add i64 %6924, 1361
  store i64 %3531, i64* %PC, align 8
  %3532 = load i64, i64* %3509, align 8
  store i64 %3532, i64* %RCX, align 8, !tbaa !2428
  %3533 = add i64 %3532, 20
  %3534 = add i64 %6924, 1365
  store i64 %3534, i64* %PC, align 8
  %3535 = inttoptr i64 %3533 to i32*
  %3536 = load i32, i32* %3535, align 4
  %3537 = sext i32 %3536 to i64
  %3538 = mul nsw i64 %3537, %3521
  %3539 = and i64 %3538, 4294967295
  store i64 %3539, i64* %RSI, align 8, !tbaa !2428
  %3540 = trunc i64 %3538 to i32
  %3541 = add i32 %3540, %3488
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RDX, align 8, !tbaa !2428
  %3543 = icmp ult i32 %3541, %3488
  %3544 = icmp ult i32 %3541, %3540
  %3545 = or i1 %3543, %3544
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %70, align 1, !tbaa !2432
  %3547 = and i32 %3541, 255
  %3548 = tail call i32 @llvm.ctpop.i32(i32 %3547) #8
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = xor i8 %3550, 1
  store i8 %3551, i8* %76, align 1, !tbaa !2446
  %3552 = xor i64 %3538, %3487
  %3553 = trunc i64 %3552 to i32
  %3554 = xor i32 %3553, %3541
  %3555 = lshr i32 %3554, 4
  %3556 = trunc i32 %3555 to i8
  %3557 = and i8 %3556, 1
  store i8 %3557, i8* %81, align 1, !tbaa !2447
  %3558 = icmp eq i32 %3541, 0
  %3559 = zext i1 %3558 to i8
  store i8 %3559, i8* %84, align 1, !tbaa !2448
  %3560 = lshr i32 %3541, 31
  %3561 = trunc i32 %3560 to i8
  store i8 %3561, i8* %87, align 1, !tbaa !2449
  %3562 = lshr i32 %3540, 31
  %3563 = xor i32 %3560, %3499
  %3564 = xor i32 %3560, %3562
  %3565 = add nuw nsw i32 %3563, %3564
  %3566 = icmp eq i32 %3565, 2
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %93, align 1, !tbaa !2450
  %3568 = load i64, i64* %RBP, align 8
  %3569 = add i64 %3568, -56
  %3570 = add i64 %6924, 1370
  store i64 %3570, i64* %PC, align 8
  %3571 = inttoptr i64 %3569 to i32*
  %3572 = load i32, i32* %3571, align 4
  %3573 = zext i32 %3572 to i64
  store i64 %3573, i64* %RSI, align 8, !tbaa !2428
  %3574 = add i64 %3568, -24
  %3575 = add i64 %6924, 1374
  store i64 %3575, i64* %PC, align 8
  %3576 = inttoptr i64 %3574 to i64*
  %3577 = load i64, i64* %3576, align 8
  store i64 %3577, i64* %RCX, align 8, !tbaa !2428
  %3578 = add i64 %3577, 20
  %3579 = add i64 %6924, 1378
  store i64 %3579, i64* %PC, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = sext i32 %3572 to i64
  %3583 = sext i32 %3581 to i64
  %3584 = mul nsw i64 %3583, %3582
  %3585 = and i64 %3584, 4294967295
  store i64 %3585, i64* %RSI, align 8, !tbaa !2428
  %3586 = trunc i64 %3584 to i32
  %3587 = add i32 %3586, %3541
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RDX, align 8, !tbaa !2428
  %3589 = icmp ult i32 %3587, %3541
  %3590 = icmp ult i32 %3587, %3586
  %3591 = or i1 %3589, %3590
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %70, align 1, !tbaa !2432
  %3593 = and i32 %3587, 255
  %3594 = tail call i32 @llvm.ctpop.i32(i32 %3593) #8
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  %3597 = xor i8 %3596, 1
  store i8 %3597, i8* %76, align 1, !tbaa !2446
  %3598 = xor i64 %3584, %3542
  %3599 = trunc i64 %3598 to i32
  %3600 = xor i32 %3599, %3587
  %3601 = lshr i32 %3600, 4
  %3602 = trunc i32 %3601 to i8
  %3603 = and i8 %3602, 1
  store i8 %3603, i8* %81, align 1, !tbaa !2447
  %3604 = icmp eq i32 %3587, 0
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %84, align 1, !tbaa !2448
  %3606 = lshr i32 %3587, 31
  %3607 = trunc i32 %3606 to i8
  store i8 %3607, i8* %87, align 1, !tbaa !2449
  %3608 = lshr i32 %3586, 31
  %3609 = xor i32 %3606, %3560
  %3610 = xor i32 %3606, %3608
  %3611 = add nuw nsw i32 %3609, %3610
  %3612 = icmp eq i32 %3611, 2
  %3613 = zext i1 %3612 to i8
  store i8 %3613, i8* %93, align 1, !tbaa !2450
  %3614 = add i64 %3568, -60
  %3615 = add i64 %6924, 1383
  store i64 %3615, i64* %PC, align 8
  %3616 = inttoptr i64 %3614 to i32*
  %3617 = load i32, i32* %3616, align 4
  %3618 = add i32 %3617, %3587
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %RDX, align 8, !tbaa !2428
  %3620 = icmp ult i32 %3618, %3587
  %3621 = icmp ult i32 %3618, %3617
  %3622 = or i1 %3620, %3621
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %70, align 1, !tbaa !2432
  %3624 = and i32 %3618, 255
  %3625 = tail call i32 @llvm.ctpop.i32(i32 %3624) #8
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = xor i8 %3627, 1
  store i8 %3628, i8* %76, align 1, !tbaa !2446
  %3629 = xor i32 %3617, %3587
  %3630 = xor i32 %3629, %3618
  %3631 = lshr i32 %3630, 4
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  store i8 %3633, i8* %81, align 1, !tbaa !2447
  %3634 = icmp eq i32 %3618, 0
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %84, align 1, !tbaa !2448
  %3636 = lshr i32 %3618, 31
  %3637 = trunc i32 %3636 to i8
  store i8 %3637, i8* %87, align 1, !tbaa !2449
  %3638 = lshr i32 %3617, 31
  %3639 = xor i32 %3636, %3606
  %3640 = xor i32 %3636, %3638
  %3641 = add nuw nsw i32 %3639, %3640
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %93, align 1, !tbaa !2450
  %3644 = sext i32 %3618 to i64
  store i64 %3644, i64* %RCX, align 8, !tbaa !2428
  %3645 = load i64, i64* %RAX, align 8
  %3646 = shl nsw i64 %3644, 2
  %3647 = add i64 %3646, %3645
  %3648 = add i64 %6924, 1391
  store i64 %3648, i64* %PC, align 8
  %3649 = inttoptr i64 %3647 to i32*
  %3650 = load i32, i32* %3649, align 4
  store i32 %3650, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %3651 = load i64, i64* %RBP, align 8
  %3652 = add i64 %3651, -40
  %3653 = add i64 %6924, 1395
  store i64 %3653, i64* %PC, align 8
  %3654 = inttoptr i64 %3652 to i64*
  %3655 = load i64, i64* %3654, align 8
  store i64 %3655, i64* %RAX, align 8, !tbaa !2428
  %3656 = add i64 %6924, 1398
  store i64 %3656, i64* %PC, align 8
  %3657 = inttoptr i64 %3655 to i64*
  %3658 = load i64, i64* %3657, align 8
  store i64 %3658, i64* %RAX, align 8, !tbaa !2428
  %3659 = add i64 %6924, 1402
  store i64 %3659, i64* %PC, align 8
  %3660 = load i64, i64* %3654, align 8
  store i64 %3660, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3661 = add i64 %6924, 1410
  store i64 %3661, i64* %PC, align 8
  %3662 = load i64, i64* %3654, align 8
  store i64 %3662, i64* %RCX, align 8, !tbaa !2428
  %3663 = add i64 %6924, 1414
  store i64 %3663, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3664 = add i64 %6924, 1418
  store i64 %3664, i64* %PC, align 8
  %3665 = load i64, i64* %3654, align 8
  store i64 %3665, i64* %RCX, align 8, !tbaa !2428
  %3666 = add i64 %6924, 1422
  store i64 %3666, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3667 = add i64 %3651, -52
  %3668 = add i64 %6924, 1425
  store i64 %3668, i64* %PC, align 8
  %3669 = inttoptr i64 %3667 to i32*
  %3670 = load i32, i32* %3669, align 4
  %3671 = add i32 %3670, 1
  %3672 = zext i32 %3671 to i64
  store i64 %3672, i64* %RSI, align 8, !tbaa !2428
  %3673 = icmp eq i32 %3670, -1
  %3674 = icmp eq i32 %3671, 0
  %3675 = or i1 %3673, %3674
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %70, align 1, !tbaa !2432
  %3677 = and i32 %3671, 255
  %3678 = tail call i32 @llvm.ctpop.i32(i32 %3677) #8
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  %3681 = xor i8 %3680, 1
  store i8 %3681, i8* %76, align 1, !tbaa !2446
  %3682 = xor i32 %3670, %3671
  %3683 = lshr i32 %3682, 4
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  store i8 %3685, i8* %81, align 1, !tbaa !2447
  %3686 = zext i1 %3674 to i8
  store i8 %3686, i8* %84, align 1, !tbaa !2448
  %3687 = lshr i32 %3671, 31
  %3688 = trunc i32 %3687 to i8
  store i8 %3688, i8* %87, align 1, !tbaa !2449
  %3689 = lshr i32 %3670, 31
  %3690 = xor i32 %3687, %3689
  %3691 = add nuw nsw i32 %3690, %3687
  %3692 = icmp eq i32 %3691, 2
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %93, align 1, !tbaa !2450
  %3694 = load i64, i64* %RBP, align 8
  %3695 = add i64 %3694, -40
  %3696 = add i64 %6924, 1432
  store i64 %3696, i64* %PC, align 8
  %3697 = inttoptr i64 %3695 to i64*
  %3698 = load i64, i64* %3697, align 8
  store i64 %3698, i64* %RCX, align 8, !tbaa !2428
  %3699 = add i64 %3698, 16
  %3700 = add i64 %6924, 1436
  store i64 %3700, i64* %PC, align 8
  %3701 = inttoptr i64 %3699 to i32*
  %3702 = load i32, i32* %3701, align 4
  %3703 = sext i32 %3671 to i64
  %3704 = sext i32 %3702 to i64
  %3705 = mul nsw i64 %3704, %3703
  %3706 = trunc i64 %3705 to i32
  %3707 = and i64 %3705, 4294967295
  store i64 %3707, i64* %RSI, align 8, !tbaa !2428
  %3708 = shl i64 %3705, 32
  %3709 = ashr exact i64 %3708, 32
  %3710 = icmp ne i64 %3709, %3705
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %70, align 1, !tbaa !2432
  %3712 = and i32 %3706, 255
  %3713 = tail call i32 @llvm.ctpop.i32(i32 %3712) #8
  %3714 = trunc i32 %3713 to i8
  %3715 = and i8 %3714, 1
  %3716 = xor i8 %3715, 1
  store i8 %3716, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3717 = lshr i32 %3706, 31
  %3718 = trunc i32 %3717 to i8
  store i8 %3718, i8* %87, align 1, !tbaa !2449
  store i8 %3711, i8* %93, align 1, !tbaa !2450
  %3719 = add i64 %6924, 1440
  store i64 %3719, i64* %PC, align 8
  %3720 = load i64, i64* %3697, align 8
  store i64 %3720, i64* %RCX, align 8, !tbaa !2428
  %3721 = add i64 %3720, 20
  %3722 = add i64 %6924, 1444
  store i64 %3722, i64* %PC, align 8
  %3723 = inttoptr i64 %3721 to i32*
  %3724 = load i32, i32* %3723, align 4
  %3725 = sext i32 %3724 to i64
  %3726 = mul nsw i64 %3725, %3709
  %3727 = and i64 %3726, 4294967295
  store i64 %3727, i64* %RSI, align 8, !tbaa !2428
  %3728 = load i64, i64* %RDX, align 8
  %3729 = trunc i64 %3726 to i32
  %3730 = trunc i64 %3728 to i32
  %3731 = add i32 %3729, %3730
  %3732 = zext i32 %3731 to i64
  store i64 %3732, i64* %RDX, align 8, !tbaa !2428
  %3733 = icmp ult i32 %3731, %3730
  %3734 = icmp ult i32 %3731, %3729
  %3735 = or i1 %3733, %3734
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %70, align 1, !tbaa !2432
  %3737 = and i32 %3731, 255
  %3738 = tail call i32 @llvm.ctpop.i32(i32 %3737) #8
  %3739 = trunc i32 %3738 to i8
  %3740 = and i8 %3739, 1
  %3741 = xor i8 %3740, 1
  store i8 %3741, i8* %76, align 1, !tbaa !2446
  %3742 = xor i64 %3726, %3728
  %3743 = trunc i64 %3742 to i32
  %3744 = xor i32 %3743, %3731
  %3745 = lshr i32 %3744, 4
  %3746 = trunc i32 %3745 to i8
  %3747 = and i8 %3746, 1
  store i8 %3747, i8* %81, align 1, !tbaa !2447
  %3748 = icmp eq i32 %3731, 0
  %3749 = zext i1 %3748 to i8
  store i8 %3749, i8* %84, align 1, !tbaa !2448
  %3750 = lshr i32 %3731, 31
  %3751 = trunc i32 %3750 to i8
  store i8 %3751, i8* %87, align 1, !tbaa !2449
  %3752 = lshr i32 %3730, 31
  %3753 = lshr i32 %3729, 31
  %3754 = xor i32 %3750, %3752
  %3755 = xor i32 %3750, %3753
  %3756 = add nuw nsw i32 %3754, %3755
  %3757 = icmp eq i32 %3756, 2
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %93, align 1, !tbaa !2450
  %3759 = load i64, i64* %RBP, align 8
  %3760 = add i64 %3759, -56
  %3761 = add i64 %6924, 1449
  store i64 %3761, i64* %PC, align 8
  %3762 = inttoptr i64 %3760 to i32*
  %3763 = load i32, i32* %3762, align 4
  %3764 = zext i32 %3763 to i64
  store i64 %3764, i64* %RSI, align 8, !tbaa !2428
  %3765 = add i64 %3759, -40
  %3766 = add i64 %6924, 1453
  store i64 %3766, i64* %PC, align 8
  %3767 = inttoptr i64 %3765 to i64*
  %3768 = load i64, i64* %3767, align 8
  store i64 %3768, i64* %RCX, align 8, !tbaa !2428
  %3769 = add i64 %3768, 20
  %3770 = add i64 %6924, 1457
  store i64 %3770, i64* %PC, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = sext i32 %3763 to i64
  %3774 = sext i32 %3772 to i64
  %3775 = mul nsw i64 %3774, %3773
  %3776 = and i64 %3775, 4294967295
  store i64 %3776, i64* %RSI, align 8, !tbaa !2428
  %3777 = trunc i64 %3775 to i32
  %3778 = add i32 %3777, %3731
  %3779 = zext i32 %3778 to i64
  store i64 %3779, i64* %RDX, align 8, !tbaa !2428
  %3780 = icmp ult i32 %3778, %3731
  %3781 = icmp ult i32 %3778, %3777
  %3782 = or i1 %3780, %3781
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %70, align 1, !tbaa !2432
  %3784 = and i32 %3778, 255
  %3785 = tail call i32 @llvm.ctpop.i32(i32 %3784) #8
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  store i8 %3788, i8* %76, align 1, !tbaa !2446
  %3789 = xor i64 %3775, %3732
  %3790 = trunc i64 %3789 to i32
  %3791 = xor i32 %3790, %3778
  %3792 = lshr i32 %3791, 4
  %3793 = trunc i32 %3792 to i8
  %3794 = and i8 %3793, 1
  store i8 %3794, i8* %81, align 1, !tbaa !2447
  %3795 = icmp eq i32 %3778, 0
  %3796 = zext i1 %3795 to i8
  store i8 %3796, i8* %84, align 1, !tbaa !2448
  %3797 = lshr i32 %3778, 31
  %3798 = trunc i32 %3797 to i8
  store i8 %3798, i8* %87, align 1, !tbaa !2449
  %3799 = lshr i32 %3777, 31
  %3800 = xor i32 %3797, %3750
  %3801 = xor i32 %3797, %3799
  %3802 = add nuw nsw i32 %3800, %3801
  %3803 = icmp eq i32 %3802, 2
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %93, align 1, !tbaa !2450
  %3805 = add i64 %3759, -60
  %3806 = add i64 %6924, 1462
  store i64 %3806, i64* %PC, align 8
  %3807 = inttoptr i64 %3805 to i32*
  %3808 = load i32, i32* %3807, align 4
  %3809 = add i32 %3808, 1
  %3810 = zext i32 %3809 to i64
  store i64 %3810, i64* %RSI, align 8, !tbaa !2428
  %3811 = lshr i32 %3809, 31
  %3812 = add i32 %3809, %3778
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RDX, align 8, !tbaa !2428
  %3814 = icmp ult i32 %3812, %3778
  %3815 = icmp ult i32 %3812, %3809
  %3816 = or i1 %3814, %3815
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %70, align 1, !tbaa !2432
  %3818 = and i32 %3812, 255
  %3819 = tail call i32 @llvm.ctpop.i32(i32 %3818) #8
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  %3822 = xor i8 %3821, 1
  store i8 %3822, i8* %76, align 1, !tbaa !2446
  %3823 = xor i32 %3809, %3778
  %3824 = xor i32 %3823, %3812
  %3825 = lshr i32 %3824, 4
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  store i8 %3827, i8* %81, align 1, !tbaa !2447
  %3828 = icmp eq i32 %3812, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %84, align 1, !tbaa !2448
  %3830 = lshr i32 %3812, 31
  %3831 = trunc i32 %3830 to i8
  store i8 %3831, i8* %87, align 1, !tbaa !2449
  %3832 = xor i32 %3830, %3797
  %3833 = xor i32 %3830, %3811
  %3834 = add nuw nsw i32 %3832, %3833
  %3835 = icmp eq i32 %3834, 2
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %93, align 1, !tbaa !2450
  %3837 = sext i32 %3812 to i64
  store i64 %3837, i64* %RCX, align 8, !tbaa !2428
  %3838 = load i64, i64* %RAX, align 8
  %3839 = shl nsw i64 %3837, 2
  %3840 = add i64 %3839, %3838
  %3841 = add i64 %6924, 1475
  store i64 %3841, i64* %PC, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  store i32 %3843, i32* %1807, align 1, !tbaa !2451
  store float 0.000000e+00, float* %214, align 1, !tbaa !2451
  store float 0.000000e+00, float* %216, align 1, !tbaa !2451
  store float 0.000000e+00, float* %218, align 1, !tbaa !2451
  %3844 = load i64, i64* %RBP, align 8
  %3845 = add i64 %3844, -40
  %3846 = add i64 %6924, 1479
  store i64 %3846, i64* %PC, align 8
  %3847 = inttoptr i64 %3845 to i64*
  %3848 = load i64, i64* %3847, align 8
  store i64 %3848, i64* %RAX, align 8, !tbaa !2428
  %3849 = add i64 %6924, 1482
  store i64 %3849, i64* %PC, align 8
  %3850 = inttoptr i64 %3848 to i64*
  %3851 = load i64, i64* %3850, align 8
  store i64 %3851, i64* %RAX, align 8, !tbaa !2428
  %3852 = add i64 %6924, 1486
  store i64 %3852, i64* %PC, align 8
  %3853 = load i64, i64* %3847, align 8
  store i64 %3853, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3854 = add i64 %6924, 1494
  store i64 %3854, i64* %PC, align 8
  %3855 = load i64, i64* %3847, align 8
  store i64 %3855, i64* %RCX, align 8, !tbaa !2428
  %3856 = add i64 %6924, 1498
  store i64 %3856, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3857 = add i64 %6924, 1502
  store i64 %3857, i64* %PC, align 8
  %3858 = load i64, i64* %3847, align 8
  store i64 %3858, i64* %RCX, align 8, !tbaa !2428
  %3859 = add i64 %6924, 1506
  store i64 %3859, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3860 = add i64 %3844, -52
  %3861 = add i64 %6924, 1509
  store i64 %3861, i64* %PC, align 8
  %3862 = inttoptr i64 %3860 to i32*
  %3863 = load i32, i32* %3862, align 4
  %3864 = add i32 %3863, -1
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RSI, align 8, !tbaa !2428
  %3866 = icmp eq i32 %3863, 0
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %70, align 1, !tbaa !2432
  %3868 = and i32 %3864, 255
  %3869 = tail call i32 @llvm.ctpop.i32(i32 %3868) #8
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = xor i8 %3871, 1
  store i8 %3872, i8* %76, align 1, !tbaa !2446
  %3873 = xor i32 %3863, %3864
  %3874 = lshr i32 %3873, 4
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  store i8 %3876, i8* %81, align 1, !tbaa !2447
  %3877 = icmp eq i32 %3864, 0
  %3878 = zext i1 %3877 to i8
  store i8 %3878, i8* %84, align 1, !tbaa !2448
  %3879 = lshr i32 %3864, 31
  %3880 = trunc i32 %3879 to i8
  store i8 %3880, i8* %87, align 1, !tbaa !2449
  %3881 = lshr i32 %3863, 31
  %3882 = xor i32 %3879, %3881
  %3883 = add nuw nsw i32 %3882, %3881
  %3884 = icmp eq i32 %3883, 2
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %93, align 1, !tbaa !2450
  %3886 = add i64 %6924, 1516
  store i64 %3886, i64* %PC, align 8
  %3887 = load i64, i64* %3847, align 8
  store i64 %3887, i64* %RCX, align 8, !tbaa !2428
  %3888 = add i64 %3887, 16
  %3889 = add i64 %6924, 1520
  store i64 %3889, i64* %PC, align 8
  %3890 = inttoptr i64 %3888 to i32*
  %3891 = load i32, i32* %3890, align 4
  %3892 = sext i32 %3864 to i64
  %3893 = sext i32 %3891 to i64
  %3894 = mul nsw i64 %3893, %3892
  %3895 = trunc i64 %3894 to i32
  %3896 = and i64 %3894, 4294967295
  store i64 %3896, i64* %RSI, align 8, !tbaa !2428
  %3897 = shl i64 %3894, 32
  %3898 = ashr exact i64 %3897, 32
  %3899 = icmp ne i64 %3898, %3894
  %3900 = zext i1 %3899 to i8
  store i8 %3900, i8* %70, align 1, !tbaa !2432
  %3901 = and i32 %3895, 255
  %3902 = tail call i32 @llvm.ctpop.i32(i32 %3901) #8
  %3903 = trunc i32 %3902 to i8
  %3904 = and i8 %3903, 1
  %3905 = xor i8 %3904, 1
  store i8 %3905, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3906 = lshr i32 %3895, 31
  %3907 = trunc i32 %3906 to i8
  store i8 %3907, i8* %87, align 1, !tbaa !2449
  store i8 %3900, i8* %93, align 1, !tbaa !2450
  %3908 = load i64, i64* %RBP, align 8
  %3909 = add i64 %3908, -40
  %3910 = add i64 %6924, 1524
  store i64 %3910, i64* %PC, align 8
  %3911 = inttoptr i64 %3909 to i64*
  %3912 = load i64, i64* %3911, align 8
  store i64 %3912, i64* %RCX, align 8, !tbaa !2428
  %3913 = add i64 %3912, 20
  %3914 = add i64 %6924, 1528
  store i64 %3914, i64* %PC, align 8
  %3915 = inttoptr i64 %3913 to i32*
  %3916 = load i32, i32* %3915, align 4
  %3917 = sext i32 %3916 to i64
  %3918 = mul nsw i64 %3917, %3898
  %3919 = and i64 %3918, 4294967295
  store i64 %3919, i64* %RSI, align 8, !tbaa !2428
  %3920 = load i64, i64* %RDX, align 8
  %3921 = trunc i64 %3918 to i32
  %3922 = trunc i64 %3920 to i32
  %3923 = add i32 %3921, %3922
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RDX, align 8, !tbaa !2428
  %3925 = icmp ult i32 %3923, %3922
  %3926 = icmp ult i32 %3923, %3921
  %3927 = or i1 %3925, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %70, align 1, !tbaa !2432
  %3929 = and i32 %3923, 255
  %3930 = tail call i32 @llvm.ctpop.i32(i32 %3929) #8
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  store i8 %3933, i8* %76, align 1, !tbaa !2446
  %3934 = xor i64 %3918, %3920
  %3935 = trunc i64 %3934 to i32
  %3936 = xor i32 %3935, %3923
  %3937 = lshr i32 %3936, 4
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  store i8 %3939, i8* %81, align 1, !tbaa !2447
  %3940 = icmp eq i32 %3923, 0
  %3941 = zext i1 %3940 to i8
  store i8 %3941, i8* %84, align 1, !tbaa !2448
  %3942 = lshr i32 %3923, 31
  %3943 = trunc i32 %3942 to i8
  store i8 %3943, i8* %87, align 1, !tbaa !2449
  %3944 = lshr i32 %3922, 31
  %3945 = lshr i32 %3921, 31
  %3946 = xor i32 %3942, %3944
  %3947 = xor i32 %3942, %3945
  %3948 = add nuw nsw i32 %3946, %3947
  %3949 = icmp eq i32 %3948, 2
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %93, align 1, !tbaa !2450
  %3951 = add i64 %3908, -56
  %3952 = add i64 %6924, 1533
  store i64 %3952, i64* %PC, align 8
  %3953 = inttoptr i64 %3951 to i32*
  %3954 = load i32, i32* %3953, align 4
  %3955 = zext i32 %3954 to i64
  store i64 %3955, i64* %RSI, align 8, !tbaa !2428
  %3956 = add i64 %6924, 1537
  store i64 %3956, i64* %PC, align 8
  %3957 = load i64, i64* %3911, align 8
  store i64 %3957, i64* %RCX, align 8, !tbaa !2428
  %3958 = add i64 %3957, 20
  %3959 = add i64 %6924, 1541
  store i64 %3959, i64* %PC, align 8
  %3960 = inttoptr i64 %3958 to i32*
  %3961 = load i32, i32* %3960, align 4
  %3962 = sext i32 %3954 to i64
  %3963 = sext i32 %3961 to i64
  %3964 = mul nsw i64 %3963, %3962
  %3965 = and i64 %3964, 4294967295
  store i64 %3965, i64* %RSI, align 8, !tbaa !2428
  %3966 = trunc i64 %3964 to i32
  %3967 = add i32 %3966, %3923
  %3968 = zext i32 %3967 to i64
  store i64 %3968, i64* %RDX, align 8, !tbaa !2428
  %3969 = icmp ult i32 %3967, %3923
  %3970 = icmp ult i32 %3967, %3966
  %3971 = or i1 %3969, %3970
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %70, align 1, !tbaa !2432
  %3973 = and i32 %3967, 255
  %3974 = tail call i32 @llvm.ctpop.i32(i32 %3973) #8
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  store i8 %3977, i8* %76, align 1, !tbaa !2446
  %3978 = xor i64 %3964, %3924
  %3979 = trunc i64 %3978 to i32
  %3980 = xor i32 %3979, %3967
  %3981 = lshr i32 %3980, 4
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  store i8 %3983, i8* %81, align 1, !tbaa !2447
  %3984 = icmp eq i32 %3967, 0
  %3985 = zext i1 %3984 to i8
  store i8 %3985, i8* %84, align 1, !tbaa !2448
  %3986 = lshr i32 %3967, 31
  %3987 = trunc i32 %3986 to i8
  store i8 %3987, i8* %87, align 1, !tbaa !2449
  %3988 = lshr i32 %3966, 31
  %3989 = xor i32 %3986, %3942
  %3990 = xor i32 %3986, %3988
  %3991 = add nuw nsw i32 %3989, %3990
  %3992 = icmp eq i32 %3991, 2
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %93, align 1, !tbaa !2450
  %3994 = load i64, i64* %RBP, align 8
  %3995 = add i64 %3994, -60
  %3996 = add i64 %6924, 1546
  store i64 %3996, i64* %PC, align 8
  %3997 = inttoptr i64 %3995 to i32*
  %3998 = load i32, i32* %3997, align 4
  %3999 = add i32 %3998, 1
  %4000 = zext i32 %3999 to i64
  store i64 %4000, i64* %RSI, align 8, !tbaa !2428
  %4001 = lshr i32 %3999, 31
  %4002 = add i32 %3999, %3967
  %4003 = zext i32 %4002 to i64
  store i64 %4003, i64* %RDX, align 8, !tbaa !2428
  %4004 = icmp ult i32 %4002, %3967
  %4005 = icmp ult i32 %4002, %3999
  %4006 = or i1 %4004, %4005
  %4007 = zext i1 %4006 to i8
  store i8 %4007, i8* %70, align 1, !tbaa !2432
  %4008 = and i32 %4002, 255
  %4009 = tail call i32 @llvm.ctpop.i32(i32 %4008) #8
  %4010 = trunc i32 %4009 to i8
  %4011 = and i8 %4010, 1
  %4012 = xor i8 %4011, 1
  store i8 %4012, i8* %76, align 1, !tbaa !2446
  %4013 = xor i32 %3999, %3967
  %4014 = xor i32 %4013, %4002
  %4015 = lshr i32 %4014, 4
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  store i8 %4017, i8* %81, align 1, !tbaa !2447
  %4018 = icmp eq i32 %4002, 0
  %4019 = zext i1 %4018 to i8
  store i8 %4019, i8* %84, align 1, !tbaa !2448
  %4020 = lshr i32 %4002, 31
  %4021 = trunc i32 %4020 to i8
  store i8 %4021, i8* %87, align 1, !tbaa !2449
  %4022 = xor i32 %4020, %3986
  %4023 = xor i32 %4020, %4001
  %4024 = add nuw nsw i32 %4022, %4023
  %4025 = icmp eq i32 %4024, 2
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %93, align 1, !tbaa !2450
  %4027 = sext i32 %4002 to i64
  store i64 %4027, i64* %RCX, align 8, !tbaa !2428
  %4028 = load i64, i64* %RAX, align 8
  %4029 = shl nsw i64 %4027, 2
  %4030 = add i64 %4029, %4028
  %4031 = add i64 %6924, 1559
  store i64 %4031, i64* %PC, align 8
  %4032 = load <2 x float>, <2 x float>* %219, align 1
  %4033 = load <2 x i32>, <2 x i32>* %220, align 1
  %4034 = inttoptr i64 %4030 to float*
  %4035 = load float, float* %4034, align 4
  %4036 = extractelement <2 x float> %4032, i32 0
  %4037 = fsub float %4036, %4035
  store float %4037, float* %212, align 1, !tbaa !2451
  %4038 = bitcast <2 x float> %4032 to <2 x i32>
  %4039 = extractelement <2 x i32> %4038, i32 1
  store i32 %4039, i32* %221, align 1, !tbaa !2451
  %4040 = extractelement <2 x i32> %4033, i32 0
  store i32 %4040, i32* %222, align 1, !tbaa !2451
  %4041 = extractelement <2 x i32> %4033, i32 1
  store i32 %4041, i32* %223, align 1, !tbaa !2451
  %4042 = load i64, i64* %RBP, align 8
  %4043 = add i64 %4042, -40
  %4044 = add i64 %6924, 1563
  store i64 %4044, i64* %PC, align 8
  %4045 = inttoptr i64 %4043 to i64*
  %4046 = load i64, i64* %4045, align 8
  store i64 %4046, i64* %RAX, align 8, !tbaa !2428
  %4047 = add i64 %6924, 1566
  store i64 %4047, i64* %PC, align 8
  %4048 = inttoptr i64 %4046 to i64*
  %4049 = load i64, i64* %4048, align 8
  store i64 %4049, i64* %RAX, align 8, !tbaa !2428
  %4050 = add i64 %6924, 1570
  store i64 %4050, i64* %PC, align 8
  %4051 = load i64, i64* %4045, align 8
  store i64 %4051, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4052 = add i64 %6924, 1578
  store i64 %4052, i64* %PC, align 8
  %4053 = load i64, i64* %4045, align 8
  store i64 %4053, i64* %RCX, align 8, !tbaa !2428
  %4054 = add i64 %6924, 1582
  store i64 %4054, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4055 = add i64 %6924, 1586
  store i64 %4055, i64* %PC, align 8
  %4056 = load i64, i64* %4045, align 8
  store i64 %4056, i64* %RCX, align 8, !tbaa !2428
  %4057 = add i64 %6924, 1590
  store i64 %4057, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4058 = add i64 %4042, -52
  %4059 = add i64 %6924, 1593
  store i64 %4059, i64* %PC, align 8
  %4060 = inttoptr i64 %4058 to i32*
  %4061 = load i32, i32* %4060, align 4
  %4062 = add i32 %4061, 1
  %4063 = zext i32 %4062 to i64
  store i64 %4063, i64* %RSI, align 8, !tbaa !2428
  %4064 = icmp eq i32 %4061, -1
  %4065 = icmp eq i32 %4062, 0
  %4066 = or i1 %4064, %4065
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %70, align 1, !tbaa !2432
  %4068 = and i32 %4062, 255
  %4069 = tail call i32 @llvm.ctpop.i32(i32 %4068) #8
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  %4072 = xor i8 %4071, 1
  store i8 %4072, i8* %76, align 1, !tbaa !2446
  %4073 = xor i32 %4061, %4062
  %4074 = lshr i32 %4073, 4
  %4075 = trunc i32 %4074 to i8
  %4076 = and i8 %4075, 1
  store i8 %4076, i8* %81, align 1, !tbaa !2447
  %4077 = zext i1 %4065 to i8
  store i8 %4077, i8* %84, align 1, !tbaa !2448
  %4078 = lshr i32 %4062, 31
  %4079 = trunc i32 %4078 to i8
  store i8 %4079, i8* %87, align 1, !tbaa !2449
  %4080 = lshr i32 %4061, 31
  %4081 = xor i32 %4078, %4080
  %4082 = add nuw nsw i32 %4081, %4078
  %4083 = icmp eq i32 %4082, 2
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %93, align 1, !tbaa !2450
  %4085 = load i64, i64* %RBP, align 8
  %4086 = add i64 %4085, -40
  %4087 = add i64 %6924, 1600
  store i64 %4087, i64* %PC, align 8
  %4088 = inttoptr i64 %4086 to i64*
  %4089 = load i64, i64* %4088, align 8
  store i64 %4089, i64* %RCX, align 8, !tbaa !2428
  %4090 = add i64 %4089, 16
  %4091 = add i64 %6924, 1604
  store i64 %4091, i64* %PC, align 8
  %4092 = inttoptr i64 %4090 to i32*
  %4093 = load i32, i32* %4092, align 4
  %4094 = sext i32 %4062 to i64
  %4095 = sext i32 %4093 to i64
  %4096 = mul nsw i64 %4095, %4094
  %4097 = trunc i64 %4096 to i32
  %4098 = and i64 %4096, 4294967295
  store i64 %4098, i64* %RSI, align 8, !tbaa !2428
  %4099 = shl i64 %4096, 32
  %4100 = ashr exact i64 %4099, 32
  %4101 = icmp ne i64 %4100, %4096
  %4102 = zext i1 %4101 to i8
  store i8 %4102, i8* %70, align 1, !tbaa !2432
  %4103 = and i32 %4097, 255
  %4104 = tail call i32 @llvm.ctpop.i32(i32 %4103) #8
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  %4107 = xor i8 %4106, 1
  store i8 %4107, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4108 = lshr i32 %4097, 31
  %4109 = trunc i32 %4108 to i8
  store i8 %4109, i8* %87, align 1, !tbaa !2449
  store i8 %4102, i8* %93, align 1, !tbaa !2450
  %4110 = add i64 %6924, 1608
  store i64 %4110, i64* %PC, align 8
  %4111 = load i64, i64* %4088, align 8
  store i64 %4111, i64* %RCX, align 8, !tbaa !2428
  %4112 = add i64 %4111, 20
  %4113 = add i64 %6924, 1612
  store i64 %4113, i64* %PC, align 8
  %4114 = inttoptr i64 %4112 to i32*
  %4115 = load i32, i32* %4114, align 4
  %4116 = sext i32 %4115 to i64
  %4117 = mul nsw i64 %4116, %4100
  %4118 = and i64 %4117, 4294967295
  store i64 %4118, i64* %RSI, align 8, !tbaa !2428
  %4119 = load i64, i64* %RDX, align 8
  %4120 = trunc i64 %4117 to i32
  %4121 = trunc i64 %4119 to i32
  %4122 = add i32 %4120, %4121
  %4123 = zext i32 %4122 to i64
  store i64 %4123, i64* %RDX, align 8, !tbaa !2428
  %4124 = icmp ult i32 %4122, %4121
  %4125 = icmp ult i32 %4122, %4120
  %4126 = or i1 %4124, %4125
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %70, align 1, !tbaa !2432
  %4128 = and i32 %4122, 255
  %4129 = tail call i32 @llvm.ctpop.i32(i32 %4128) #8
  %4130 = trunc i32 %4129 to i8
  %4131 = and i8 %4130, 1
  %4132 = xor i8 %4131, 1
  store i8 %4132, i8* %76, align 1, !tbaa !2446
  %4133 = xor i64 %4117, %4119
  %4134 = trunc i64 %4133 to i32
  %4135 = xor i32 %4134, %4122
  %4136 = lshr i32 %4135, 4
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  store i8 %4138, i8* %81, align 1, !tbaa !2447
  %4139 = icmp eq i32 %4122, 0
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %84, align 1, !tbaa !2448
  %4141 = lshr i32 %4122, 31
  %4142 = trunc i32 %4141 to i8
  store i8 %4142, i8* %87, align 1, !tbaa !2449
  %4143 = lshr i32 %4121, 31
  %4144 = lshr i32 %4120, 31
  %4145 = xor i32 %4141, %4143
  %4146 = xor i32 %4141, %4144
  %4147 = add nuw nsw i32 %4145, %4146
  %4148 = icmp eq i32 %4147, 2
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %93, align 1, !tbaa !2450
  %4150 = load i64, i64* %RBP, align 8
  %4151 = add i64 %4150, -56
  %4152 = add i64 %6924, 1617
  store i64 %4152, i64* %PC, align 8
  %4153 = inttoptr i64 %4151 to i32*
  %4154 = load i32, i32* %4153, align 4
  %4155 = zext i32 %4154 to i64
  store i64 %4155, i64* %RSI, align 8, !tbaa !2428
  %4156 = add i64 %4150, -40
  %4157 = add i64 %6924, 1621
  store i64 %4157, i64* %PC, align 8
  %4158 = inttoptr i64 %4156 to i64*
  %4159 = load i64, i64* %4158, align 8
  store i64 %4159, i64* %RCX, align 8, !tbaa !2428
  %4160 = add i64 %4159, 20
  %4161 = add i64 %6924, 1625
  store i64 %4161, i64* %PC, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = sext i32 %4154 to i64
  %4165 = sext i32 %4163 to i64
  %4166 = mul nsw i64 %4165, %4164
  %4167 = and i64 %4166, 4294967295
  store i64 %4167, i64* %RSI, align 8, !tbaa !2428
  %4168 = trunc i64 %4166 to i32
  %4169 = add i32 %4168, %4122
  %4170 = zext i32 %4169 to i64
  store i64 %4170, i64* %RDX, align 8, !tbaa !2428
  %4171 = icmp ult i32 %4169, %4122
  %4172 = icmp ult i32 %4169, %4168
  %4173 = or i1 %4171, %4172
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %70, align 1, !tbaa !2432
  %4175 = and i32 %4169, 255
  %4176 = tail call i32 @llvm.ctpop.i32(i32 %4175) #8
  %4177 = trunc i32 %4176 to i8
  %4178 = and i8 %4177, 1
  %4179 = xor i8 %4178, 1
  store i8 %4179, i8* %76, align 1, !tbaa !2446
  %4180 = xor i64 %4166, %4123
  %4181 = trunc i64 %4180 to i32
  %4182 = xor i32 %4181, %4169
  %4183 = lshr i32 %4182, 4
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  store i8 %4185, i8* %81, align 1, !tbaa !2447
  %4186 = icmp eq i32 %4169, 0
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %84, align 1, !tbaa !2448
  %4188 = lshr i32 %4169, 31
  %4189 = trunc i32 %4188 to i8
  store i8 %4189, i8* %87, align 1, !tbaa !2449
  %4190 = lshr i32 %4168, 31
  %4191 = xor i32 %4188, %4141
  %4192 = xor i32 %4188, %4190
  %4193 = add nuw nsw i32 %4191, %4192
  %4194 = icmp eq i32 %4193, 2
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %93, align 1, !tbaa !2450
  %4196 = add i64 %4150, -60
  %4197 = add i64 %6924, 1630
  store i64 %4197, i64* %PC, align 8
  %4198 = inttoptr i64 %4196 to i32*
  %4199 = load i32, i32* %4198, align 4
  %4200 = add i32 %4199, -1
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %RSI, align 8, !tbaa !2428
  %4202 = lshr i32 %4200, 31
  %4203 = add i32 %4200, %4169
  %4204 = zext i32 %4203 to i64
  store i64 %4204, i64* %RDX, align 8, !tbaa !2428
  %4205 = icmp ult i32 %4203, %4169
  %4206 = icmp ult i32 %4203, %4200
  %4207 = or i1 %4205, %4206
  %4208 = zext i1 %4207 to i8
  store i8 %4208, i8* %70, align 1, !tbaa !2432
  %4209 = and i32 %4203, 255
  %4210 = tail call i32 @llvm.ctpop.i32(i32 %4209) #8
  %4211 = trunc i32 %4210 to i8
  %4212 = and i8 %4211, 1
  %4213 = xor i8 %4212, 1
  store i8 %4213, i8* %76, align 1, !tbaa !2446
  %4214 = xor i32 %4200, %4169
  %4215 = xor i32 %4214, %4203
  %4216 = lshr i32 %4215, 4
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  store i8 %4218, i8* %81, align 1, !tbaa !2447
  %4219 = icmp eq i32 %4203, 0
  %4220 = zext i1 %4219 to i8
  store i8 %4220, i8* %84, align 1, !tbaa !2448
  %4221 = lshr i32 %4203, 31
  %4222 = trunc i32 %4221 to i8
  store i8 %4222, i8* %87, align 1, !tbaa !2449
  %4223 = xor i32 %4221, %4188
  %4224 = xor i32 %4221, %4202
  %4225 = add nuw nsw i32 %4223, %4224
  %4226 = icmp eq i32 %4225, 2
  %4227 = zext i1 %4226 to i8
  store i8 %4227, i8* %93, align 1, !tbaa !2450
  %4228 = sext i32 %4203 to i64
  store i64 %4228, i64* %RCX, align 8, !tbaa !2428
  %4229 = load i64, i64* %RAX, align 8
  %4230 = shl nsw i64 %4228, 2
  %4231 = add i64 %4230, %4229
  %4232 = add i64 %6924, 1643
  store i64 %4232, i64* %PC, align 8
  %4233 = load <2 x float>, <2 x float>* %219, align 1
  %4234 = load <2 x i32>, <2 x i32>* %220, align 1
  %4235 = inttoptr i64 %4231 to float*
  %4236 = load float, float* %4235, align 4
  %4237 = extractelement <2 x float> %4233, i32 0
  %4238 = fsub float %4237, %4236
  store float %4238, float* %212, align 1, !tbaa !2451
  %4239 = bitcast <2 x float> %4233 to <2 x i32>
  %4240 = extractelement <2 x i32> %4239, i32 1
  store i32 %4240, i32* %221, align 1, !tbaa !2451
  %4241 = extractelement <2 x i32> %4234, i32 0
  store i32 %4241, i32* %222, align 1, !tbaa !2451
  %4242 = extractelement <2 x i32> %4234, i32 1
  store i32 %4242, i32* %223, align 1, !tbaa !2451
  %4243 = load i64, i64* %RBP, align 8
  %4244 = add i64 %4243, -40
  %4245 = add i64 %6924, 1647
  store i64 %4245, i64* %PC, align 8
  %4246 = inttoptr i64 %4244 to i64*
  %4247 = load i64, i64* %4246, align 8
  store i64 %4247, i64* %RAX, align 8, !tbaa !2428
  %4248 = add i64 %6924, 1650
  store i64 %4248, i64* %PC, align 8
  %4249 = inttoptr i64 %4247 to i64*
  %4250 = load i64, i64* %4249, align 8
  store i64 %4250, i64* %RAX, align 8, !tbaa !2428
  %4251 = add i64 %6924, 1654
  store i64 %4251, i64* %PC, align 8
  %4252 = load i64, i64* %4246, align 8
  store i64 %4252, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4253 = add i64 %6924, 1662
  store i64 %4253, i64* %PC, align 8
  %4254 = load i64, i64* %4246, align 8
  store i64 %4254, i64* %RCX, align 8, !tbaa !2428
  %4255 = add i64 %6924, 1666
  store i64 %4255, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4256 = add i64 %6924, 1670
  store i64 %4256, i64* %PC, align 8
  %4257 = load i64, i64* %4246, align 8
  store i64 %4257, i64* %RCX, align 8, !tbaa !2428
  %4258 = add i64 %6924, 1674
  store i64 %4258, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4259 = add i64 %4243, -52
  %4260 = add i64 %6924, 1677
  store i64 %4260, i64* %PC, align 8
  %4261 = inttoptr i64 %4259 to i32*
  %4262 = load i32, i32* %4261, align 4
  %4263 = add i32 %4262, -1
  %4264 = zext i32 %4263 to i64
  store i64 %4264, i64* %RSI, align 8, !tbaa !2428
  %4265 = icmp eq i32 %4262, 0
  %4266 = zext i1 %4265 to i8
  store i8 %4266, i8* %70, align 1, !tbaa !2432
  %4267 = and i32 %4263, 255
  %4268 = tail call i32 @llvm.ctpop.i32(i32 %4267) #8
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  store i8 %4271, i8* %76, align 1, !tbaa !2446
  %4272 = xor i32 %4262, %4263
  %4273 = lshr i32 %4272, 4
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  store i8 %4275, i8* %81, align 1, !tbaa !2447
  %4276 = icmp eq i32 %4263, 0
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %84, align 1, !tbaa !2448
  %4278 = lshr i32 %4263, 31
  %4279 = trunc i32 %4278 to i8
  store i8 %4279, i8* %87, align 1, !tbaa !2449
  %4280 = lshr i32 %4262, 31
  %4281 = xor i32 %4278, %4280
  %4282 = add nuw nsw i32 %4281, %4280
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  store i8 %4284, i8* %93, align 1, !tbaa !2450
  %4285 = add i64 %6924, 1684
  store i64 %4285, i64* %PC, align 8
  %4286 = load i64, i64* %4246, align 8
  store i64 %4286, i64* %RCX, align 8, !tbaa !2428
  %4287 = add i64 %4286, 16
  %4288 = add i64 %6924, 1688
  store i64 %4288, i64* %PC, align 8
  %4289 = inttoptr i64 %4287 to i32*
  %4290 = load i32, i32* %4289, align 4
  %4291 = sext i32 %4263 to i64
  %4292 = sext i32 %4290 to i64
  %4293 = mul nsw i64 %4292, %4291
  %4294 = trunc i64 %4293 to i32
  %4295 = and i64 %4293, 4294967295
  store i64 %4295, i64* %RSI, align 8, !tbaa !2428
  %4296 = shl i64 %4293, 32
  %4297 = ashr exact i64 %4296, 32
  %4298 = icmp ne i64 %4297, %4293
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %70, align 1, !tbaa !2432
  %4300 = and i32 %4294, 255
  %4301 = tail call i32 @llvm.ctpop.i32(i32 %4300) #8
  %4302 = trunc i32 %4301 to i8
  %4303 = and i8 %4302, 1
  %4304 = xor i8 %4303, 1
  store i8 %4304, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4305 = lshr i32 %4294, 31
  %4306 = trunc i32 %4305 to i8
  store i8 %4306, i8* %87, align 1, !tbaa !2449
  store i8 %4299, i8* %93, align 1, !tbaa !2450
  %4307 = load i64, i64* %RBP, align 8
  %4308 = add i64 %4307, -40
  %4309 = add i64 %6924, 1692
  store i64 %4309, i64* %PC, align 8
  %4310 = inttoptr i64 %4308 to i64*
  %4311 = load i64, i64* %4310, align 8
  store i64 %4311, i64* %RCX, align 8, !tbaa !2428
  %4312 = add i64 %4311, 20
  %4313 = add i64 %6924, 1696
  store i64 %4313, i64* %PC, align 8
  %4314 = inttoptr i64 %4312 to i32*
  %4315 = load i32, i32* %4314, align 4
  %4316 = sext i32 %4315 to i64
  %4317 = mul nsw i64 %4316, %4297
  %4318 = and i64 %4317, 4294967295
  store i64 %4318, i64* %RSI, align 8, !tbaa !2428
  %4319 = load i64, i64* %RDX, align 8
  %4320 = trunc i64 %4317 to i32
  %4321 = trunc i64 %4319 to i32
  %4322 = add i32 %4320, %4321
  %4323 = zext i32 %4322 to i64
  store i64 %4323, i64* %RDX, align 8, !tbaa !2428
  %4324 = icmp ult i32 %4322, %4321
  %4325 = icmp ult i32 %4322, %4320
  %4326 = or i1 %4324, %4325
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %70, align 1, !tbaa !2432
  %4328 = and i32 %4322, 255
  %4329 = tail call i32 @llvm.ctpop.i32(i32 %4328) #8
  %4330 = trunc i32 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = xor i8 %4331, 1
  store i8 %4332, i8* %76, align 1, !tbaa !2446
  %4333 = xor i64 %4317, %4319
  %4334 = trunc i64 %4333 to i32
  %4335 = xor i32 %4334, %4322
  %4336 = lshr i32 %4335, 4
  %4337 = trunc i32 %4336 to i8
  %4338 = and i8 %4337, 1
  store i8 %4338, i8* %81, align 1, !tbaa !2447
  %4339 = icmp eq i32 %4322, 0
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %84, align 1, !tbaa !2448
  %4341 = lshr i32 %4322, 31
  %4342 = trunc i32 %4341 to i8
  store i8 %4342, i8* %87, align 1, !tbaa !2449
  %4343 = lshr i32 %4321, 31
  %4344 = lshr i32 %4320, 31
  %4345 = xor i32 %4341, %4343
  %4346 = xor i32 %4341, %4344
  %4347 = add nuw nsw i32 %4345, %4346
  %4348 = icmp eq i32 %4347, 2
  %4349 = zext i1 %4348 to i8
  store i8 %4349, i8* %93, align 1, !tbaa !2450
  %4350 = add i64 %4307, -56
  %4351 = add i64 %6924, 1701
  store i64 %4351, i64* %PC, align 8
  %4352 = inttoptr i64 %4350 to i32*
  %4353 = load i32, i32* %4352, align 4
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RSI, align 8, !tbaa !2428
  %4355 = add i64 %6924, 1705
  store i64 %4355, i64* %PC, align 8
  %4356 = load i64, i64* %4310, align 8
  store i64 %4356, i64* %RCX, align 8, !tbaa !2428
  %4357 = add i64 %4356, 20
  %4358 = add i64 %6924, 1709
  store i64 %4358, i64* %PC, align 8
  %4359 = inttoptr i64 %4357 to i32*
  %4360 = load i32, i32* %4359, align 4
  %4361 = sext i32 %4353 to i64
  %4362 = sext i32 %4360 to i64
  %4363 = mul nsw i64 %4362, %4361
  %4364 = and i64 %4363, 4294967295
  store i64 %4364, i64* %RSI, align 8, !tbaa !2428
  %4365 = trunc i64 %4363 to i32
  %4366 = add i32 %4365, %4322
  %4367 = zext i32 %4366 to i64
  store i64 %4367, i64* %RDX, align 8, !tbaa !2428
  %4368 = icmp ult i32 %4366, %4322
  %4369 = icmp ult i32 %4366, %4365
  %4370 = or i1 %4368, %4369
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %70, align 1, !tbaa !2432
  %4372 = and i32 %4366, 255
  %4373 = tail call i32 @llvm.ctpop.i32(i32 %4372) #8
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  store i8 %4376, i8* %76, align 1, !tbaa !2446
  %4377 = xor i64 %4363, %4323
  %4378 = trunc i64 %4377 to i32
  %4379 = xor i32 %4378, %4366
  %4380 = lshr i32 %4379, 4
  %4381 = trunc i32 %4380 to i8
  %4382 = and i8 %4381, 1
  store i8 %4382, i8* %81, align 1, !tbaa !2447
  %4383 = icmp eq i32 %4366, 0
  %4384 = zext i1 %4383 to i8
  store i8 %4384, i8* %84, align 1, !tbaa !2448
  %4385 = lshr i32 %4366, 31
  %4386 = trunc i32 %4385 to i8
  store i8 %4386, i8* %87, align 1, !tbaa !2449
  %4387 = lshr i32 %4365, 31
  %4388 = xor i32 %4385, %4341
  %4389 = xor i32 %4385, %4387
  %4390 = add nuw nsw i32 %4388, %4389
  %4391 = icmp eq i32 %4390, 2
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %93, align 1, !tbaa !2450
  %4393 = load i64, i64* %RBP, align 8
  %4394 = add i64 %4393, -60
  %4395 = add i64 %6924, 1714
  store i64 %4395, i64* %PC, align 8
  %4396 = inttoptr i64 %4394 to i32*
  %4397 = load i32, i32* %4396, align 4
  %4398 = add i32 %4397, -1
  %4399 = zext i32 %4398 to i64
  store i64 %4399, i64* %RSI, align 8, !tbaa !2428
  %4400 = lshr i32 %4398, 31
  %4401 = add i32 %4398, %4366
  %4402 = zext i32 %4401 to i64
  store i64 %4402, i64* %RDX, align 8, !tbaa !2428
  %4403 = icmp ult i32 %4401, %4366
  %4404 = icmp ult i32 %4401, %4398
  %4405 = or i1 %4403, %4404
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %70, align 1, !tbaa !2432
  %4407 = and i32 %4401, 255
  %4408 = tail call i32 @llvm.ctpop.i32(i32 %4407) #8
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  store i8 %4411, i8* %76, align 1, !tbaa !2446
  %4412 = xor i32 %4398, %4366
  %4413 = xor i32 %4412, %4401
  %4414 = lshr i32 %4413, 4
  %4415 = trunc i32 %4414 to i8
  %4416 = and i8 %4415, 1
  store i8 %4416, i8* %81, align 1, !tbaa !2447
  %4417 = icmp eq i32 %4401, 0
  %4418 = zext i1 %4417 to i8
  store i8 %4418, i8* %84, align 1, !tbaa !2448
  %4419 = lshr i32 %4401, 31
  %4420 = trunc i32 %4419 to i8
  store i8 %4420, i8* %87, align 1, !tbaa !2449
  %4421 = xor i32 %4419, %4385
  %4422 = xor i32 %4419, %4400
  %4423 = add nuw nsw i32 %4421, %4422
  %4424 = icmp eq i32 %4423, 2
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %93, align 1, !tbaa !2450
  %4426 = sext i32 %4401 to i64
  store i64 %4426, i64* %RCX, align 8, !tbaa !2428
  %4427 = load i64, i64* %RAX, align 8
  %4428 = shl nsw i64 %4426, 2
  %4429 = add i64 %4428, %4427
  %4430 = add i64 %6924, 1727
  store i64 %4430, i64* %PC, align 8
  %4431 = load <2 x float>, <2 x float>* %219, align 1
  %4432 = load <2 x i32>, <2 x i32>* %220, align 1
  %4433 = inttoptr i64 %4429 to float*
  %4434 = load float, float* %4433, align 4
  %4435 = extractelement <2 x float> %4431, i32 0
  %4436 = fadd float %4435, %4434
  store float %4436, float* %212, align 1, !tbaa !2451
  %4437 = bitcast <2 x float> %4431 to <2 x i32>
  %4438 = extractelement <2 x i32> %4437, i32 1
  store i32 %4438, i32* %221, align 1, !tbaa !2451
  %4439 = extractelement <2 x i32> %4432, i32 0
  store i32 %4439, i32* %222, align 1, !tbaa !2451
  %4440 = extractelement <2 x i32> %4432, i32 1
  store i32 %4440, i32* %223, align 1, !tbaa !2451
  %4441 = load <2 x float>, <2 x float>* %206, align 1
  %4442 = load <2 x i32>, <2 x i32>* %207, align 1
  %4443 = load <2 x float>, <2 x float>* %219, align 1
  %4444 = extractelement <2 x float> %4441, i32 0
  %4445 = extractelement <2 x float> %4443, i32 0
  %4446 = fmul float %4444, %4445
  store float %4446, float* %199, align 1, !tbaa !2451
  %4447 = bitcast <2 x float> %4441 to <2 x i32>
  %4448 = extractelement <2 x i32> %4447, i32 1
  store i32 %4448, i32* %208, align 1, !tbaa !2451
  %4449 = extractelement <2 x i32> %4442, i32 0
  store i32 %4449, i32* %209, align 1, !tbaa !2451
  %4450 = extractelement <2 x i32> %4442, i32 1
  store i32 %4450, i32* %210, align 1, !tbaa !2451
  %4451 = load <2 x float>, <2 x float>* %192, align 1
  %4452 = load <2 x i32>, <2 x i32>* %197, align 1
  %4453 = load <2 x float>, <2 x float>* %206, align 1
  %4454 = extractelement <2 x float> %4451, i32 0
  %4455 = extractelement <2 x float> %4453, i32 0
  %4456 = fadd float %4454, %4455
  store float %4456, float* %193, align 1, !tbaa !2451
  %4457 = bitcast <2 x float> %4451 to <2 x i32>
  %4458 = extractelement <2 x i32> %4457, i32 1
  store i32 %4458, i32* %188, align 1, !tbaa !2451
  %4459 = extractelement <2 x i32> %4452, i32 0
  store i32 %4459, i32* %189, align 1, !tbaa !2451
  %4460 = extractelement <2 x i32> %4452, i32 1
  store i32 %4460, i32* %191, align 1, !tbaa !2451
  %4461 = load i64, i64* %RBP, align 8
  %4462 = add i64 %4461, -32
  %4463 = add i64 %6924, 1739
  store i64 %4463, i64* %PC, align 8
  %4464 = inttoptr i64 %4462 to i64*
  %4465 = load i64, i64* %4464, align 8
  store i64 %4465, i64* %RAX, align 8, !tbaa !2428
  %4466 = add i64 %6924, 1742
  store i64 %4466, i64* %PC, align 8
  %4467 = inttoptr i64 %4465 to i64*
  %4468 = load i64, i64* %4467, align 8
  store i64 %4468, i64* %RAX, align 8, !tbaa !2428
  %4469 = add i64 %6924, 1746
  store i64 %4469, i64* %PC, align 8
  %4470 = load i64, i64* %4464, align 8
  store i64 %4470, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4471 = add i64 %6924, 1754
  store i64 %4471, i64* %PC, align 8
  %4472 = load i64, i64* %4464, align 8
  store i64 %4472, i64* %RCX, align 8, !tbaa !2428
  %4473 = add i64 %6924, 1758
  store i64 %4473, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4474 = add i64 %6924, 1762
  store i64 %4474, i64* %PC, align 8
  %4475 = load i64, i64* %4464, align 8
  store i64 %4475, i64* %RCX, align 8, !tbaa !2428
  %4476 = add i64 %6924, 1766
  store i64 %4476, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4477 = add i64 %4461, -52
  %4478 = add i64 %6924, 1769
  store i64 %4478, i64* %PC, align 8
  %4479 = inttoptr i64 %4477 to i32*
  %4480 = load i32, i32* %4479, align 4
  %4481 = zext i32 %4480 to i64
  store i64 %4481, i64* %RSI, align 8, !tbaa !2428
  %4482 = add i64 %6924, 1773
  store i64 %4482, i64* %PC, align 8
  %4483 = load i64, i64* %4464, align 8
  store i64 %4483, i64* %RCX, align 8, !tbaa !2428
  %4484 = add i64 %4483, 16
  %4485 = add i64 %6924, 1777
  store i64 %4485, i64* %PC, align 8
  %4486 = inttoptr i64 %4484 to i32*
  %4487 = load i32, i32* %4486, align 4
  %4488 = sext i32 %4480 to i64
  %4489 = sext i32 %4487 to i64
  %4490 = mul nsw i64 %4489, %4488
  %4491 = trunc i64 %4490 to i32
  %4492 = and i64 %4490, 4294967295
  store i64 %4492, i64* %RSI, align 8, !tbaa !2428
  %4493 = shl i64 %4490, 32
  %4494 = ashr exact i64 %4493, 32
  %4495 = icmp ne i64 %4494, %4490
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %70, align 1, !tbaa !2432
  %4497 = and i32 %4491, 255
  %4498 = tail call i32 @llvm.ctpop.i32(i32 %4497) #8
  %4499 = trunc i32 %4498 to i8
  %4500 = and i8 %4499, 1
  %4501 = xor i8 %4500, 1
  store i8 %4501, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4502 = lshr i32 %4491, 31
  %4503 = trunc i32 %4502 to i8
  store i8 %4503, i8* %87, align 1, !tbaa !2449
  store i8 %4496, i8* %93, align 1, !tbaa !2450
  %4504 = add i64 %6924, 1781
  store i64 %4504, i64* %PC, align 8
  %4505 = load i64, i64* %4464, align 8
  store i64 %4505, i64* %RCX, align 8, !tbaa !2428
  %4506 = add i64 %4505, 20
  %4507 = add i64 %6924, 1785
  store i64 %4507, i64* %PC, align 8
  %4508 = inttoptr i64 %4506 to i32*
  %4509 = load i32, i32* %4508, align 4
  %4510 = sext i32 %4509 to i64
  %4511 = mul nsw i64 %4510, %4494
  %4512 = and i64 %4511, 4294967295
  store i64 %4512, i64* %RSI, align 8, !tbaa !2428
  %4513 = trunc i64 %4511 to i32
  store i64 %4512, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %4514 = and i32 %4513, 255
  %4515 = tail call i32 @llvm.ctpop.i32(i32 %4514) #8
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  %4518 = xor i8 %4517, 1
  store i8 %4518, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %4519 = icmp eq i32 %4513, 0
  %4520 = zext i1 %4519 to i8
  store i8 %4520, i8* %84, align 1, !tbaa !2448
  %4521 = lshr i32 %4513, 31
  %4522 = trunc i32 %4521 to i8
  store i8 %4522, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4523 = load i64, i64* %RBP, align 8
  %4524 = add i64 %4523, -56
  %4525 = add i64 %6924, 1790
  store i64 %4525, i64* %PC, align 8
  %4526 = inttoptr i64 %4524 to i32*
  %4527 = load i32, i32* %4526, align 4
  %4528 = zext i32 %4527 to i64
  store i64 %4528, i64* %RSI, align 8, !tbaa !2428
  %4529 = add i64 %4523, -32
  %4530 = add i64 %6924, 1794
  store i64 %4530, i64* %PC, align 8
  %4531 = inttoptr i64 %4529 to i64*
  %4532 = load i64, i64* %4531, align 8
  store i64 %4532, i64* %RCX, align 8, !tbaa !2428
  %4533 = add i64 %4532, 20
  %4534 = add i64 %6924, 1798
  store i64 %4534, i64* %PC, align 8
  %4535 = inttoptr i64 %4533 to i32*
  %4536 = load i32, i32* %4535, align 4
  %4537 = sext i32 %4527 to i64
  %4538 = sext i32 %4536 to i64
  %4539 = mul nsw i64 %4538, %4537
  %4540 = and i64 %4539, 4294967295
  store i64 %4540, i64* %RSI, align 8, !tbaa !2428
  %4541 = trunc i64 %4539 to i32
  %4542 = add i32 %4541, %4513
  %4543 = zext i32 %4542 to i64
  store i64 %4543, i64* %RDX, align 8, !tbaa !2428
  %4544 = icmp ult i32 %4542, %4513
  %4545 = icmp ult i32 %4542, %4541
  %4546 = or i1 %4544, %4545
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %70, align 1, !tbaa !2432
  %4548 = and i32 %4542, 255
  %4549 = tail call i32 @llvm.ctpop.i32(i32 %4548) #8
  %4550 = trunc i32 %4549 to i8
  %4551 = and i8 %4550, 1
  %4552 = xor i8 %4551, 1
  store i8 %4552, i8* %76, align 1, !tbaa !2446
  %4553 = xor i64 %4539, %4511
  %4554 = trunc i64 %4553 to i32
  %4555 = xor i32 %4554, %4542
  %4556 = lshr i32 %4555, 4
  %4557 = trunc i32 %4556 to i8
  %4558 = and i8 %4557, 1
  store i8 %4558, i8* %81, align 1, !tbaa !2447
  %4559 = icmp eq i32 %4542, 0
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %84, align 1, !tbaa !2448
  %4561 = lshr i32 %4542, 31
  %4562 = trunc i32 %4561 to i8
  store i8 %4562, i8* %87, align 1, !tbaa !2449
  %4563 = lshr i32 %4541, 31
  %4564 = xor i32 %4561, %4521
  %4565 = xor i32 %4561, %4563
  %4566 = add nuw nsw i32 %4564, %4565
  %4567 = icmp eq i32 %4566, 2
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %93, align 1, !tbaa !2450
  %4569 = add i64 %4523, -60
  %4570 = add i64 %6924, 1803
  store i64 %4570, i64* %PC, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  %4573 = add i32 %4572, %4542
  %4574 = zext i32 %4573 to i64
  store i64 %4574, i64* %RDX, align 8, !tbaa !2428
  %4575 = icmp ult i32 %4573, %4542
  %4576 = icmp ult i32 %4573, %4572
  %4577 = or i1 %4575, %4576
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %70, align 1, !tbaa !2432
  %4579 = and i32 %4573, 255
  %4580 = tail call i32 @llvm.ctpop.i32(i32 %4579) #8
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  store i8 %4583, i8* %76, align 1, !tbaa !2446
  %4584 = xor i32 %4572, %4542
  %4585 = xor i32 %4584, %4573
  %4586 = lshr i32 %4585, 4
  %4587 = trunc i32 %4586 to i8
  %4588 = and i8 %4587, 1
  store i8 %4588, i8* %81, align 1, !tbaa !2447
  %4589 = icmp eq i32 %4573, 0
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %84, align 1, !tbaa !2448
  %4591 = lshr i32 %4573, 31
  %4592 = trunc i32 %4591 to i8
  store i8 %4592, i8* %87, align 1, !tbaa !2449
  %4593 = lshr i32 %4572, 31
  %4594 = xor i32 %4591, %4561
  %4595 = xor i32 %4591, %4593
  %4596 = add nuw nsw i32 %4594, %4595
  %4597 = icmp eq i32 %4596, 2
  %4598 = zext i1 %4597 to i8
  store i8 %4598, i8* %93, align 1, !tbaa !2450
  %4599 = sext i32 %4573 to i64
  store i64 %4599, i64* %RCX, align 8, !tbaa !2428
  %4600 = load i64, i64* %RAX, align 8
  %4601 = shl nsw i64 %4599, 2
  %4602 = add i64 %4601, %4600
  %4603 = add i64 %6924, 1811
  store i64 %4603, i64* %PC, align 8
  %4604 = inttoptr i64 %4602 to i32*
  %4605 = load i32, i32* %4604, align 4
  store i32 %4605, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %4606 = load i64, i64* %RBP, align 8
  %4607 = add i64 %4606, -40
  %4608 = add i64 %6924, 1815
  store i64 %4608, i64* %PC, align 8
  %4609 = inttoptr i64 %4607 to i64*
  %4610 = load i64, i64* %4609, align 8
  store i64 %4610, i64* %RAX, align 8, !tbaa !2428
  %4611 = add i64 %6924, 1818
  store i64 %4611, i64* %PC, align 8
  %4612 = inttoptr i64 %4610 to i64*
  %4613 = load i64, i64* %4612, align 8
  store i64 %4613, i64* %RAX, align 8, !tbaa !2428
  %4614 = add i64 %6924, 1822
  store i64 %4614, i64* %PC, align 8
  %4615 = load i64, i64* %4609, align 8
  store i64 %4615, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4616 = add i64 %6924, 1830
  store i64 %4616, i64* %PC, align 8
  %4617 = load i64, i64* %4609, align 8
  store i64 %4617, i64* %RCX, align 8, !tbaa !2428
  %4618 = add i64 %6924, 1834
  store i64 %4618, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4619 = add i64 %6924, 1838
  store i64 %4619, i64* %PC, align 8
  %4620 = load i64, i64* %4609, align 8
  store i64 %4620, i64* %RCX, align 8, !tbaa !2428
  %4621 = add i64 %6924, 1842
  store i64 %4621, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4622 = add i64 %4606, -52
  %4623 = add i64 %6924, 1845
  store i64 %4623, i64* %PC, align 8
  %4624 = inttoptr i64 %4622 to i32*
  %4625 = load i32, i32* %4624, align 4
  %4626 = add i32 %4625, -1
  %4627 = zext i32 %4626 to i64
  store i64 %4627, i64* %RSI, align 8, !tbaa !2428
  %4628 = icmp eq i32 %4625, 0
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %70, align 1, !tbaa !2432
  %4630 = and i32 %4626, 255
  %4631 = tail call i32 @llvm.ctpop.i32(i32 %4630) #8
  %4632 = trunc i32 %4631 to i8
  %4633 = and i8 %4632, 1
  %4634 = xor i8 %4633, 1
  store i8 %4634, i8* %76, align 1, !tbaa !2446
  %4635 = xor i32 %4625, %4626
  %4636 = lshr i32 %4635, 4
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  store i8 %4638, i8* %81, align 1, !tbaa !2447
  %4639 = icmp eq i32 %4626, 0
  %4640 = zext i1 %4639 to i8
  store i8 %4640, i8* %84, align 1, !tbaa !2448
  %4641 = lshr i32 %4626, 31
  %4642 = trunc i32 %4641 to i8
  store i8 %4642, i8* %87, align 1, !tbaa !2449
  %4643 = lshr i32 %4625, 31
  %4644 = xor i32 %4641, %4643
  %4645 = add nuw nsw i32 %4644, %4643
  %4646 = icmp eq i32 %4645, 2
  %4647 = zext i1 %4646 to i8
  store i8 %4647, i8* %93, align 1, !tbaa !2450
  %4648 = add i64 %6924, 1852
  store i64 %4648, i64* %PC, align 8
  %4649 = load i64, i64* %4609, align 8
  store i64 %4649, i64* %RCX, align 8, !tbaa !2428
  %4650 = add i64 %4649, 16
  %4651 = add i64 %6924, 1856
  store i64 %4651, i64* %PC, align 8
  %4652 = inttoptr i64 %4650 to i32*
  %4653 = load i32, i32* %4652, align 4
  %4654 = sext i32 %4626 to i64
  %4655 = sext i32 %4653 to i64
  %4656 = mul nsw i64 %4655, %4654
  %4657 = trunc i64 %4656 to i32
  %4658 = and i64 %4656, 4294967295
  store i64 %4658, i64* %RSI, align 8, !tbaa !2428
  %4659 = shl i64 %4656, 32
  %4660 = ashr exact i64 %4659, 32
  %4661 = icmp ne i64 %4660, %4656
  %4662 = zext i1 %4661 to i8
  store i8 %4662, i8* %70, align 1, !tbaa !2432
  %4663 = and i32 %4657, 255
  %4664 = tail call i32 @llvm.ctpop.i32(i32 %4663) #8
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  %4667 = xor i8 %4666, 1
  store i8 %4667, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4668 = lshr i32 %4657, 31
  %4669 = trunc i32 %4668 to i8
  store i8 %4669, i8* %87, align 1, !tbaa !2449
  store i8 %4662, i8* %93, align 1, !tbaa !2450
  %4670 = load i64, i64* %RBP, align 8
  %4671 = add i64 %4670, -40
  %4672 = add i64 %6924, 1860
  store i64 %4672, i64* %PC, align 8
  %4673 = inttoptr i64 %4671 to i64*
  %4674 = load i64, i64* %4673, align 8
  store i64 %4674, i64* %RCX, align 8, !tbaa !2428
  %4675 = add i64 %4674, 20
  %4676 = add i64 %6924, 1864
  store i64 %4676, i64* %PC, align 8
  %4677 = inttoptr i64 %4675 to i32*
  %4678 = load i32, i32* %4677, align 4
  %4679 = sext i32 %4678 to i64
  %4680 = mul nsw i64 %4679, %4660
  %4681 = and i64 %4680, 4294967295
  store i64 %4681, i64* %RSI, align 8, !tbaa !2428
  %4682 = load i64, i64* %RDX, align 8
  %4683 = trunc i64 %4680 to i32
  %4684 = trunc i64 %4682 to i32
  %4685 = add i32 %4683, %4684
  %4686 = zext i32 %4685 to i64
  store i64 %4686, i64* %RDX, align 8, !tbaa !2428
  %4687 = icmp ult i32 %4685, %4684
  %4688 = icmp ult i32 %4685, %4683
  %4689 = or i1 %4687, %4688
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %70, align 1, !tbaa !2432
  %4691 = and i32 %4685, 255
  %4692 = tail call i32 @llvm.ctpop.i32(i32 %4691) #8
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  %4695 = xor i8 %4694, 1
  store i8 %4695, i8* %76, align 1, !tbaa !2446
  %4696 = xor i64 %4680, %4682
  %4697 = trunc i64 %4696 to i32
  %4698 = xor i32 %4697, %4685
  %4699 = lshr i32 %4698, 4
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  store i8 %4701, i8* %81, align 1, !tbaa !2447
  %4702 = icmp eq i32 %4685, 0
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %84, align 1, !tbaa !2448
  %4704 = lshr i32 %4685, 31
  %4705 = trunc i32 %4704 to i8
  store i8 %4705, i8* %87, align 1, !tbaa !2449
  %4706 = lshr i32 %4684, 31
  %4707 = lshr i32 %4683, 31
  %4708 = xor i32 %4704, %4706
  %4709 = xor i32 %4704, %4707
  %4710 = add nuw nsw i32 %4708, %4709
  %4711 = icmp eq i32 %4710, 2
  %4712 = zext i1 %4711 to i8
  store i8 %4712, i8* %93, align 1, !tbaa !2450
  %4713 = add i64 %4670, -56
  %4714 = add i64 %6924, 1869
  store i64 %4714, i64* %PC, align 8
  %4715 = inttoptr i64 %4713 to i32*
  %4716 = load i32, i32* %4715, align 4
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RSI, align 8, !tbaa !2428
  %4718 = add i64 %6924, 1873
  store i64 %4718, i64* %PC, align 8
  %4719 = load i64, i64* %4673, align 8
  store i64 %4719, i64* %RCX, align 8, !tbaa !2428
  %4720 = add i64 %4719, 20
  %4721 = add i64 %6924, 1877
  store i64 %4721, i64* %PC, align 8
  %4722 = inttoptr i64 %4720 to i32*
  %4723 = load i32, i32* %4722, align 4
  %4724 = sext i32 %4716 to i64
  %4725 = sext i32 %4723 to i64
  %4726 = mul nsw i64 %4725, %4724
  %4727 = and i64 %4726, 4294967295
  store i64 %4727, i64* %RSI, align 8, !tbaa !2428
  %4728 = trunc i64 %4726 to i32
  %4729 = add i32 %4728, %4685
  %4730 = zext i32 %4729 to i64
  store i64 %4730, i64* %RDX, align 8, !tbaa !2428
  %4731 = icmp ult i32 %4729, %4685
  %4732 = icmp ult i32 %4729, %4728
  %4733 = or i1 %4731, %4732
  %4734 = zext i1 %4733 to i8
  store i8 %4734, i8* %70, align 1, !tbaa !2432
  %4735 = and i32 %4729, 255
  %4736 = tail call i32 @llvm.ctpop.i32(i32 %4735) #8
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  %4739 = xor i8 %4738, 1
  store i8 %4739, i8* %76, align 1, !tbaa !2446
  %4740 = xor i64 %4726, %4686
  %4741 = trunc i64 %4740 to i32
  %4742 = xor i32 %4741, %4729
  %4743 = lshr i32 %4742, 4
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  store i8 %4745, i8* %81, align 1, !tbaa !2447
  %4746 = icmp eq i32 %4729, 0
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %84, align 1, !tbaa !2448
  %4748 = lshr i32 %4729, 31
  %4749 = trunc i32 %4748 to i8
  store i8 %4749, i8* %87, align 1, !tbaa !2449
  %4750 = lshr i32 %4728, 31
  %4751 = xor i32 %4748, %4704
  %4752 = xor i32 %4748, %4750
  %4753 = add nuw nsw i32 %4751, %4752
  %4754 = icmp eq i32 %4753, 2
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %93, align 1, !tbaa !2450
  %4756 = load i64, i64* %RBP, align 8
  %4757 = add i64 %4756, -60
  %4758 = add i64 %6924, 1882
  store i64 %4758, i64* %PC, align 8
  %4759 = inttoptr i64 %4757 to i32*
  %4760 = load i32, i32* %4759, align 4
  %4761 = add i32 %4760, %4729
  %4762 = zext i32 %4761 to i64
  store i64 %4762, i64* %RDX, align 8, !tbaa !2428
  %4763 = icmp ult i32 %4761, %4729
  %4764 = icmp ult i32 %4761, %4760
  %4765 = or i1 %4763, %4764
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %70, align 1, !tbaa !2432
  %4767 = and i32 %4761, 255
  %4768 = tail call i32 @llvm.ctpop.i32(i32 %4767) #8
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = xor i8 %4770, 1
  store i8 %4771, i8* %76, align 1, !tbaa !2446
  %4772 = xor i32 %4760, %4729
  %4773 = xor i32 %4772, %4761
  %4774 = lshr i32 %4773, 4
  %4775 = trunc i32 %4774 to i8
  %4776 = and i8 %4775, 1
  store i8 %4776, i8* %81, align 1, !tbaa !2447
  %4777 = icmp eq i32 %4761, 0
  %4778 = zext i1 %4777 to i8
  store i8 %4778, i8* %84, align 1, !tbaa !2448
  %4779 = lshr i32 %4761, 31
  %4780 = trunc i32 %4779 to i8
  store i8 %4780, i8* %87, align 1, !tbaa !2449
  %4781 = lshr i32 %4760, 31
  %4782 = xor i32 %4779, %4748
  %4783 = xor i32 %4779, %4781
  %4784 = add nuw nsw i32 %4782, %4783
  %4785 = icmp eq i32 %4784, 2
  %4786 = zext i1 %4785 to i8
  store i8 %4786, i8* %93, align 1, !tbaa !2450
  %4787 = sext i32 %4761 to i64
  store i64 %4787, i64* %RCX, align 8, !tbaa !2428
  %4788 = load i64, i64* %RAX, align 8
  %4789 = shl nsw i64 %4787, 2
  %4790 = add i64 %4789, %4788
  %4791 = add i64 %6924, 1890
  store i64 %4791, i64* %PC, align 8
  %4792 = load <2 x float>, <2 x float>* %206, align 1
  %4793 = load <2 x i32>, <2 x i32>* %207, align 1
  %4794 = inttoptr i64 %4790 to float*
  %4795 = load float, float* %4794, align 4
  %4796 = extractelement <2 x float> %4792, i32 0
  %4797 = fmul float %4796, %4795
  store float %4797, float* %199, align 1, !tbaa !2451
  %4798 = bitcast <2 x float> %4792 to <2 x i32>
  %4799 = extractelement <2 x i32> %4798, i32 1
  store i32 %4799, i32* %208, align 1, !tbaa !2451
  %4800 = extractelement <2 x i32> %4793, i32 0
  store i32 %4800, i32* %209, align 1, !tbaa !2451
  %4801 = extractelement <2 x i32> %4793, i32 1
  store i32 %4801, i32* %210, align 1, !tbaa !2451
  %4802 = load <2 x float>, <2 x float>* %192, align 1
  %4803 = load <2 x i32>, <2 x i32>* %197, align 1
  %4804 = load <2 x float>, <2 x float>* %206, align 1
  %4805 = extractelement <2 x float> %4802, i32 0
  %4806 = extractelement <2 x float> %4804, i32 0
  %4807 = fadd float %4805, %4806
  store float %4807, float* %193, align 1, !tbaa !2451
  %4808 = bitcast <2 x float> %4802 to <2 x i32>
  %4809 = extractelement <2 x i32> %4808, i32 1
  store i32 %4809, i32* %188, align 1, !tbaa !2451
  %4810 = extractelement <2 x i32> %4803, i32 0
  store i32 %4810, i32* %189, align 1, !tbaa !2451
  %4811 = extractelement <2 x i32> %4803, i32 1
  store i32 %4811, i32* %191, align 1, !tbaa !2451
  %4812 = add i64 %4756, -32
  %4813 = add i64 %6924, 1898
  store i64 %4813, i64* %PC, align 8
  %4814 = inttoptr i64 %4812 to i64*
  %4815 = load i64, i64* %4814, align 8
  store i64 %4815, i64* %RAX, align 8, !tbaa !2428
  %4816 = add i64 %6924, 1901
  store i64 %4816, i64* %PC, align 8
  %4817 = inttoptr i64 %4815 to i64*
  %4818 = load i64, i64* %4817, align 8
  store i64 %4818, i64* %RAX, align 8, !tbaa !2428
  %4819 = add i64 %6924, 1905
  store i64 %4819, i64* %PC, align 8
  %4820 = load i64, i64* %4814, align 8
  store i64 %4820, i64* %RCX, align 8, !tbaa !2428
  %4821 = add i64 %4820, 12
  %4822 = add i64 %6924, 1908
  store i64 %4822, i64* %PC, align 8
  %4823 = inttoptr i64 %4821 to i32*
  %4824 = load i32, i32* %4823, align 4
  %4825 = zext i32 %4824 to i64
  store i64 %4825, i64* %RDX, align 8, !tbaa !2428
  %4826 = load i64, i64* %RBP, align 8
  %4827 = add i64 %4826, -32
  %4828 = add i64 %6924, 1915
  store i64 %4828, i64* %PC, align 8
  %4829 = inttoptr i64 %4827 to i64*
  %4830 = load i64, i64* %4829, align 8
  store i64 %4830, i64* %RCX, align 8, !tbaa !2428
  %4831 = add i64 %4830, 16
  %4832 = add i64 %6924, 1919
  store i64 %4832, i64* %PC, align 8
  %4833 = inttoptr i64 %4831 to i32*
  %4834 = load i32, i32* %4833, align 4
  %4835 = sext i32 %4824 to i64
  %4836 = sext i32 %4834 to i64
  %4837 = mul nsw i64 %4836, %4835
  %4838 = trunc i64 %4837 to i32
  %4839 = and i64 %4837, 4294967295
  store i64 %4839, i64* %RDX, align 8, !tbaa !2428
  %4840 = shl i64 %4837, 32
  %4841 = ashr exact i64 %4840, 32
  %4842 = icmp ne i64 %4841, %4837
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %70, align 1, !tbaa !2432
  %4844 = and i32 %4838, 255
  %4845 = tail call i32 @llvm.ctpop.i32(i32 %4844) #8
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  store i8 %4848, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4849 = lshr i32 %4838, 31
  %4850 = trunc i32 %4849 to i8
  store i8 %4850, i8* %87, align 1, !tbaa !2449
  store i8 %4843, i8* %93, align 1, !tbaa !2450
  %4851 = add i64 %6924, 1923
  store i64 %4851, i64* %PC, align 8
  %4852 = load i64, i64* %4829, align 8
  store i64 %4852, i64* %RCX, align 8, !tbaa !2428
  %4853 = add i64 %4852, 20
  %4854 = add i64 %6924, 1927
  store i64 %4854, i64* %PC, align 8
  %4855 = inttoptr i64 %4853 to i32*
  %4856 = load i32, i32* %4855, align 4
  %4857 = sext i32 %4856 to i64
  %4858 = mul nsw i64 %4857, %4841
  %4859 = trunc i64 %4858 to i32
  %4860 = and i64 %4858, 4294967295
  store i64 %4860, i64* %RDX, align 8, !tbaa !2428
  %4861 = shl i64 %4858, 32
  %4862 = ashr exact i64 %4861, 32
  %4863 = icmp ne i64 %4862, %4858
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %70, align 1, !tbaa !2432
  %4865 = and i32 %4859, 255
  %4866 = tail call i32 @llvm.ctpop.i32(i32 %4865) #8
  %4867 = trunc i32 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = xor i8 %4868, 1
  store i8 %4869, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4870 = lshr i32 %4859, 31
  %4871 = trunc i32 %4870 to i8
  store i8 %4871, i8* %87, align 1, !tbaa !2449
  store i8 %4864, i8* %93, align 1, !tbaa !2450
  %4872 = add i64 %4826, -52
  %4873 = add i64 %6924, 1930
  store i64 %4873, i64* %PC, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RSI, align 8, !tbaa !2428
  %4877 = add i64 %6924, 1934
  store i64 %4877, i64* %PC, align 8
  %4878 = load i64, i64* %4829, align 8
  store i64 %4878, i64* %RCX, align 8, !tbaa !2428
  %4879 = add i64 %4878, 16
  %4880 = add i64 %6924, 1938
  store i64 %4880, i64* %PC, align 8
  %4881 = inttoptr i64 %4879 to i32*
  %4882 = load i32, i32* %4881, align 4
  %4883 = sext i32 %4875 to i64
  %4884 = sext i32 %4882 to i64
  %4885 = mul nsw i64 %4884, %4883
  %4886 = trunc i64 %4885 to i32
  %4887 = and i64 %4885, 4294967295
  store i64 %4887, i64* %RSI, align 8, !tbaa !2428
  %4888 = shl i64 %4885, 32
  %4889 = ashr exact i64 %4888, 32
  %4890 = icmp ne i64 %4889, %4885
  %4891 = zext i1 %4890 to i8
  store i8 %4891, i8* %70, align 1, !tbaa !2432
  %4892 = and i32 %4886, 255
  %4893 = tail call i32 @llvm.ctpop.i32(i32 %4892) #8
  %4894 = trunc i32 %4893 to i8
  %4895 = and i8 %4894, 1
  %4896 = xor i8 %4895, 1
  store i8 %4896, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4897 = lshr i32 %4886, 31
  %4898 = trunc i32 %4897 to i8
  store i8 %4898, i8* %87, align 1, !tbaa !2449
  store i8 %4891, i8* %93, align 1, !tbaa !2450
  %4899 = load i64, i64* %RBP, align 8
  %4900 = add i64 %4899, -32
  %4901 = add i64 %6924, 1942
  store i64 %4901, i64* %PC, align 8
  %4902 = inttoptr i64 %4900 to i64*
  %4903 = load i64, i64* %4902, align 8
  store i64 %4903, i64* %RCX, align 8, !tbaa !2428
  %4904 = add i64 %4903, 20
  %4905 = add i64 %6924, 1946
  store i64 %4905, i64* %PC, align 8
  %4906 = inttoptr i64 %4904 to i32*
  %4907 = load i32, i32* %4906, align 4
  %4908 = sext i32 %4907 to i64
  %4909 = mul nsw i64 %4908, %4889
  %4910 = and i64 %4909, 4294967295
  store i64 %4910, i64* %RSI, align 8, !tbaa !2428
  %4911 = trunc i64 %4909 to i32
  %4912 = add i32 %4911, %4859
  %4913 = zext i32 %4912 to i64
  store i64 %4913, i64* %RDX, align 8, !tbaa !2428
  %4914 = icmp ult i32 %4912, %4859
  %4915 = icmp ult i32 %4912, %4911
  %4916 = or i1 %4914, %4915
  %4917 = zext i1 %4916 to i8
  store i8 %4917, i8* %70, align 1, !tbaa !2432
  %4918 = and i32 %4912, 255
  %4919 = tail call i32 @llvm.ctpop.i32(i32 %4918) #8
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = xor i8 %4921, 1
  store i8 %4922, i8* %76, align 1, !tbaa !2446
  %4923 = xor i64 %4909, %4858
  %4924 = trunc i64 %4923 to i32
  %4925 = xor i32 %4924, %4912
  %4926 = lshr i32 %4925, 4
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  store i8 %4928, i8* %81, align 1, !tbaa !2447
  %4929 = icmp eq i32 %4912, 0
  %4930 = zext i1 %4929 to i8
  store i8 %4930, i8* %84, align 1, !tbaa !2448
  %4931 = lshr i32 %4912, 31
  %4932 = trunc i32 %4931 to i8
  store i8 %4932, i8* %87, align 1, !tbaa !2449
  %4933 = lshr i32 %4911, 31
  %4934 = xor i32 %4931, %4870
  %4935 = xor i32 %4931, %4933
  %4936 = add nuw nsw i32 %4934, %4935
  %4937 = icmp eq i32 %4936, 2
  %4938 = zext i1 %4937 to i8
  store i8 %4938, i8* %93, align 1, !tbaa !2450
  %4939 = add i64 %4899, -56
  %4940 = add i64 %6924, 1951
  store i64 %4940, i64* %PC, align 8
  %4941 = inttoptr i64 %4939 to i32*
  %4942 = load i32, i32* %4941, align 4
  %4943 = zext i32 %4942 to i64
  store i64 %4943, i64* %RSI, align 8, !tbaa !2428
  %4944 = add i64 %6924, 1955
  store i64 %4944, i64* %PC, align 8
  %4945 = load i64, i64* %4902, align 8
  store i64 %4945, i64* %RCX, align 8, !tbaa !2428
  %4946 = add i64 %4945, 20
  %4947 = add i64 %6924, 1959
  store i64 %4947, i64* %PC, align 8
  %4948 = inttoptr i64 %4946 to i32*
  %4949 = load i32, i32* %4948, align 4
  %4950 = sext i32 %4942 to i64
  %4951 = sext i32 %4949 to i64
  %4952 = mul nsw i64 %4951, %4950
  %4953 = and i64 %4952, 4294967295
  store i64 %4953, i64* %RSI, align 8, !tbaa !2428
  %4954 = trunc i64 %4952 to i32
  %4955 = add i32 %4954, %4912
  %4956 = zext i32 %4955 to i64
  store i64 %4956, i64* %RDX, align 8, !tbaa !2428
  %4957 = icmp ult i32 %4955, %4912
  %4958 = icmp ult i32 %4955, %4954
  %4959 = or i1 %4957, %4958
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %70, align 1, !tbaa !2432
  %4961 = and i32 %4955, 255
  %4962 = tail call i32 @llvm.ctpop.i32(i32 %4961) #8
  %4963 = trunc i32 %4962 to i8
  %4964 = and i8 %4963, 1
  %4965 = xor i8 %4964, 1
  store i8 %4965, i8* %76, align 1, !tbaa !2446
  %4966 = xor i64 %4952, %4913
  %4967 = trunc i64 %4966 to i32
  %4968 = xor i32 %4967, %4955
  %4969 = lshr i32 %4968, 4
  %4970 = trunc i32 %4969 to i8
  %4971 = and i8 %4970, 1
  store i8 %4971, i8* %81, align 1, !tbaa !2447
  %4972 = icmp eq i32 %4955, 0
  %4973 = zext i1 %4972 to i8
  store i8 %4973, i8* %84, align 1, !tbaa !2448
  %4974 = lshr i32 %4955, 31
  %4975 = trunc i32 %4974 to i8
  store i8 %4975, i8* %87, align 1, !tbaa !2449
  %4976 = lshr i32 %4954, 31
  %4977 = xor i32 %4974, %4931
  %4978 = xor i32 %4974, %4976
  %4979 = add nuw nsw i32 %4977, %4978
  %4980 = icmp eq i32 %4979, 2
  %4981 = zext i1 %4980 to i8
  store i8 %4981, i8* %93, align 1, !tbaa !2450
  %4982 = load i64, i64* %RBP, align 8
  %4983 = add i64 %4982, -60
  %4984 = add i64 %6924, 1964
  store i64 %4984, i64* %PC, align 8
  %4985 = inttoptr i64 %4983 to i32*
  %4986 = load i32, i32* %4985, align 4
  %4987 = add i32 %4986, %4955
  %4988 = zext i32 %4987 to i64
  store i64 %4988, i64* %RDX, align 8, !tbaa !2428
  %4989 = icmp ult i32 %4987, %4955
  %4990 = icmp ult i32 %4987, %4986
  %4991 = or i1 %4989, %4990
  %4992 = zext i1 %4991 to i8
  store i8 %4992, i8* %70, align 1, !tbaa !2432
  %4993 = and i32 %4987, 255
  %4994 = tail call i32 @llvm.ctpop.i32(i32 %4993) #8
  %4995 = trunc i32 %4994 to i8
  %4996 = and i8 %4995, 1
  %4997 = xor i8 %4996, 1
  store i8 %4997, i8* %76, align 1, !tbaa !2446
  %4998 = xor i32 %4986, %4955
  %4999 = xor i32 %4998, %4987
  %5000 = lshr i32 %4999, 4
  %5001 = trunc i32 %5000 to i8
  %5002 = and i8 %5001, 1
  store i8 %5002, i8* %81, align 1, !tbaa !2447
  %5003 = icmp eq i32 %4987, 0
  %5004 = zext i1 %5003 to i8
  store i8 %5004, i8* %84, align 1, !tbaa !2448
  %5005 = lshr i32 %4987, 31
  %5006 = trunc i32 %5005 to i8
  store i8 %5006, i8* %87, align 1, !tbaa !2449
  %5007 = lshr i32 %4986, 31
  %5008 = xor i32 %5005, %4974
  %5009 = xor i32 %5005, %5007
  %5010 = add nuw nsw i32 %5008, %5009
  %5011 = icmp eq i32 %5010, 2
  %5012 = zext i1 %5011 to i8
  store i8 %5012, i8* %93, align 1, !tbaa !2450
  %5013 = sext i32 %4987 to i64
  store i64 %5013, i64* %RCX, align 8, !tbaa !2428
  %5014 = load i64, i64* %RAX, align 8
  %5015 = shl nsw i64 %5013, 2
  %5016 = add i64 %5015, %5014
  %5017 = add i64 %6924, 1972
  store i64 %5017, i64* %PC, align 8
  %5018 = inttoptr i64 %5016 to i32*
  %5019 = load i32, i32* %5018, align 4
  store i32 %5019, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %5020 = add i64 %4982, -40
  %5021 = add i64 %6924, 1976
  store i64 %5021, i64* %PC, align 8
  %5022 = inttoptr i64 %5020 to i64*
  %5023 = load i64, i64* %5022, align 8
  store i64 %5023, i64* %RAX, align 8, !tbaa !2428
  %5024 = add i64 %6924, 1979
  store i64 %5024, i64* %PC, align 8
  %5025 = inttoptr i64 %5023 to i64*
  %5026 = load i64, i64* %5025, align 8
  store i64 %5026, i64* %RAX, align 8, !tbaa !2428
  %5027 = add i64 %6924, 1983
  store i64 %5027, i64* %PC, align 8
  %5028 = load i64, i64* %5022, align 8
  store i64 %5028, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5029 = add i64 %6924, 1991
  store i64 %5029, i64* %PC, align 8
  %5030 = load i64, i64* %5022, align 8
  store i64 %5030, i64* %RCX, align 8, !tbaa !2428
  %5031 = add i64 %6924, 1995
  store i64 %5031, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5032 = add i64 %6924, 1999
  store i64 %5032, i64* %PC, align 8
  %5033 = load i64, i64* %5022, align 8
  store i64 %5033, i64* %RCX, align 8, !tbaa !2428
  %5034 = add i64 %6924, 2003
  store i64 %5034, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5035 = load i64, i64* %RBP, align 8
  %5036 = add i64 %5035, -52
  %5037 = add i64 %6924, 2006
  store i64 %5037, i64* %PC, align 8
  %5038 = inttoptr i64 %5036 to i32*
  %5039 = load i32, i32* %5038, align 4
  %5040 = zext i32 %5039 to i64
  store i64 %5040, i64* %RSI, align 8, !tbaa !2428
  %5041 = add i64 %5035, -40
  %5042 = add i64 %6924, 2010
  store i64 %5042, i64* %PC, align 8
  %5043 = inttoptr i64 %5041 to i64*
  %5044 = load i64, i64* %5043, align 8
  store i64 %5044, i64* %RCX, align 8, !tbaa !2428
  %5045 = add i64 %5044, 16
  %5046 = add i64 %6924, 2014
  store i64 %5046, i64* %PC, align 8
  %5047 = inttoptr i64 %5045 to i32*
  %5048 = load i32, i32* %5047, align 4
  %5049 = sext i32 %5039 to i64
  %5050 = sext i32 %5048 to i64
  %5051 = mul nsw i64 %5050, %5049
  %5052 = trunc i64 %5051 to i32
  %5053 = and i64 %5051, 4294967295
  store i64 %5053, i64* %RSI, align 8, !tbaa !2428
  %5054 = shl i64 %5051, 32
  %5055 = ashr exact i64 %5054, 32
  %5056 = icmp ne i64 %5055, %5051
  %5057 = zext i1 %5056 to i8
  store i8 %5057, i8* %70, align 1, !tbaa !2432
  %5058 = and i32 %5052, 255
  %5059 = tail call i32 @llvm.ctpop.i32(i32 %5058) #8
  %5060 = trunc i32 %5059 to i8
  %5061 = and i8 %5060, 1
  %5062 = xor i8 %5061, 1
  store i8 %5062, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5063 = lshr i32 %5052, 31
  %5064 = trunc i32 %5063 to i8
  store i8 %5064, i8* %87, align 1, !tbaa !2449
  store i8 %5057, i8* %93, align 1, !tbaa !2450
  %5065 = add i64 %6924, 2018
  store i64 %5065, i64* %PC, align 8
  %5066 = load i64, i64* %5043, align 8
  store i64 %5066, i64* %RCX, align 8, !tbaa !2428
  %5067 = add i64 %5066, 20
  %5068 = add i64 %6924, 2022
  store i64 %5068, i64* %PC, align 8
  %5069 = inttoptr i64 %5067 to i32*
  %5070 = load i32, i32* %5069, align 4
  %5071 = sext i32 %5070 to i64
  %5072 = mul nsw i64 %5071, %5055
  %5073 = and i64 %5072, 4294967295
  store i64 %5073, i64* %RSI, align 8, !tbaa !2428
  %5074 = trunc i64 %5072 to i32
  store i64 %5073, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5075 = and i32 %5074, 255
  %5076 = tail call i32 @llvm.ctpop.i32(i32 %5075) #8
  %5077 = trunc i32 %5076 to i8
  %5078 = and i8 %5077, 1
  %5079 = xor i8 %5078, 1
  store i8 %5079, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5080 = icmp eq i32 %5074, 0
  %5081 = zext i1 %5080 to i8
  store i8 %5081, i8* %84, align 1, !tbaa !2448
  %5082 = lshr i32 %5074, 31
  %5083 = trunc i32 %5082 to i8
  store i8 %5083, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5084 = add i64 %5035, -56
  %5085 = add i64 %6924, 2027
  store i64 %5085, i64* %PC, align 8
  %5086 = inttoptr i64 %5084 to i32*
  %5087 = load i32, i32* %5086, align 4
  %5088 = add i32 %5087, -1
  %5089 = zext i32 %5088 to i64
  store i64 %5089, i64* %RSI, align 8, !tbaa !2428
  %5090 = icmp eq i32 %5087, 0
  %5091 = zext i1 %5090 to i8
  store i8 %5091, i8* %70, align 1, !tbaa !2432
  %5092 = and i32 %5088, 255
  %5093 = tail call i32 @llvm.ctpop.i32(i32 %5092) #8
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  store i8 %5096, i8* %76, align 1, !tbaa !2446
  %5097 = xor i32 %5087, %5088
  %5098 = lshr i32 %5097, 4
  %5099 = trunc i32 %5098 to i8
  %5100 = and i8 %5099, 1
  store i8 %5100, i8* %81, align 1, !tbaa !2447
  %5101 = icmp eq i32 %5088, 0
  %5102 = zext i1 %5101 to i8
  store i8 %5102, i8* %84, align 1, !tbaa !2448
  %5103 = lshr i32 %5088, 31
  %5104 = trunc i32 %5103 to i8
  store i8 %5104, i8* %87, align 1, !tbaa !2449
  %5105 = lshr i32 %5087, 31
  %5106 = xor i32 %5103, %5105
  %5107 = add nuw nsw i32 %5106, %5105
  %5108 = icmp eq i32 %5107, 2
  %5109 = zext i1 %5108 to i8
  store i8 %5109, i8* %93, align 1, !tbaa !2450
  %5110 = load i64, i64* %RBP, align 8
  %5111 = add i64 %5110, -40
  %5112 = add i64 %6924, 2034
  store i64 %5112, i64* %PC, align 8
  %5113 = inttoptr i64 %5111 to i64*
  %5114 = load i64, i64* %5113, align 8
  store i64 %5114, i64* %RCX, align 8, !tbaa !2428
  %5115 = add i64 %5114, 20
  %5116 = add i64 %6924, 2038
  store i64 %5116, i64* %PC, align 8
  %5117 = inttoptr i64 %5115 to i32*
  %5118 = load i32, i32* %5117, align 4
  %5119 = sext i32 %5088 to i64
  %5120 = sext i32 %5118 to i64
  %5121 = mul nsw i64 %5120, %5119
  %5122 = and i64 %5121, 4294967295
  store i64 %5122, i64* %RSI, align 8, !tbaa !2428
  %5123 = trunc i64 %5121 to i32
  %5124 = add i32 %5123, %5074
  %5125 = zext i32 %5124 to i64
  store i64 %5125, i64* %RDX, align 8, !tbaa !2428
  %5126 = icmp ult i32 %5124, %5074
  %5127 = icmp ult i32 %5124, %5123
  %5128 = or i1 %5126, %5127
  %5129 = zext i1 %5128 to i8
  store i8 %5129, i8* %70, align 1, !tbaa !2432
  %5130 = and i32 %5124, 255
  %5131 = tail call i32 @llvm.ctpop.i32(i32 %5130) #8
  %5132 = trunc i32 %5131 to i8
  %5133 = and i8 %5132, 1
  %5134 = xor i8 %5133, 1
  store i8 %5134, i8* %76, align 1, !tbaa !2446
  %5135 = xor i64 %5121, %5072
  %5136 = trunc i64 %5135 to i32
  %5137 = xor i32 %5136, %5124
  %5138 = lshr i32 %5137, 4
  %5139 = trunc i32 %5138 to i8
  %5140 = and i8 %5139, 1
  store i8 %5140, i8* %81, align 1, !tbaa !2447
  %5141 = icmp eq i32 %5124, 0
  %5142 = zext i1 %5141 to i8
  store i8 %5142, i8* %84, align 1, !tbaa !2448
  %5143 = lshr i32 %5124, 31
  %5144 = trunc i32 %5143 to i8
  store i8 %5144, i8* %87, align 1, !tbaa !2449
  %5145 = lshr i32 %5123, 31
  %5146 = xor i32 %5143, %5082
  %5147 = xor i32 %5143, %5145
  %5148 = add nuw nsw i32 %5146, %5147
  %5149 = icmp eq i32 %5148, 2
  %5150 = zext i1 %5149 to i8
  store i8 %5150, i8* %93, align 1, !tbaa !2450
  %5151 = add i64 %5110, -60
  %5152 = add i64 %6924, 2043
  store i64 %5152, i64* %PC, align 8
  %5153 = inttoptr i64 %5151 to i32*
  %5154 = load i32, i32* %5153, align 4
  %5155 = add i32 %5154, %5124
  %5156 = zext i32 %5155 to i64
  store i64 %5156, i64* %RDX, align 8, !tbaa !2428
  %5157 = icmp ult i32 %5155, %5124
  %5158 = icmp ult i32 %5155, %5154
  %5159 = or i1 %5157, %5158
  %5160 = zext i1 %5159 to i8
  store i8 %5160, i8* %70, align 1, !tbaa !2432
  %5161 = and i32 %5155, 255
  %5162 = tail call i32 @llvm.ctpop.i32(i32 %5161) #8
  %5163 = trunc i32 %5162 to i8
  %5164 = and i8 %5163, 1
  %5165 = xor i8 %5164, 1
  store i8 %5165, i8* %76, align 1, !tbaa !2446
  %5166 = xor i32 %5154, %5124
  %5167 = xor i32 %5166, %5155
  %5168 = lshr i32 %5167, 4
  %5169 = trunc i32 %5168 to i8
  %5170 = and i8 %5169, 1
  store i8 %5170, i8* %81, align 1, !tbaa !2447
  %5171 = icmp eq i32 %5155, 0
  %5172 = zext i1 %5171 to i8
  store i8 %5172, i8* %84, align 1, !tbaa !2448
  %5173 = lshr i32 %5155, 31
  %5174 = trunc i32 %5173 to i8
  store i8 %5174, i8* %87, align 1, !tbaa !2449
  %5175 = lshr i32 %5154, 31
  %5176 = xor i32 %5173, %5143
  %5177 = xor i32 %5173, %5175
  %5178 = add nuw nsw i32 %5176, %5177
  %5179 = icmp eq i32 %5178, 2
  %5180 = zext i1 %5179 to i8
  store i8 %5180, i8* %93, align 1, !tbaa !2450
  %5181 = sext i32 %5155 to i64
  store i64 %5181, i64* %RCX, align 8, !tbaa !2428
  %5182 = load i64, i64* %RAX, align 8
  %5183 = shl nsw i64 %5181, 2
  %5184 = add i64 %5183, %5182
  %5185 = add i64 %6924, 2051
  store i64 %5185, i64* %PC, align 8
  %5186 = load <2 x float>, <2 x float>* %206, align 1
  %5187 = load <2 x i32>, <2 x i32>* %207, align 1
  %5188 = inttoptr i64 %5184 to float*
  %5189 = load float, float* %5188, align 4
  %5190 = extractelement <2 x float> %5186, i32 0
  %5191 = fmul float %5190, %5189
  store float %5191, float* %199, align 1, !tbaa !2451
  %5192 = bitcast <2 x float> %5186 to <2 x i32>
  %5193 = extractelement <2 x i32> %5192, i32 1
  store i32 %5193, i32* %208, align 1, !tbaa !2451
  %5194 = extractelement <2 x i32> %5187, i32 0
  store i32 %5194, i32* %209, align 1, !tbaa !2451
  %5195 = extractelement <2 x i32> %5187, i32 1
  store i32 %5195, i32* %210, align 1, !tbaa !2451
  %5196 = load <2 x float>, <2 x float>* %192, align 1
  %5197 = load <2 x i32>, <2 x i32>* %197, align 1
  %5198 = load <2 x float>, <2 x float>* %206, align 1
  %5199 = extractelement <2 x float> %5196, i32 0
  %5200 = extractelement <2 x float> %5198, i32 0
  %5201 = fadd float %5199, %5200
  store float %5201, float* %193, align 1, !tbaa !2451
  %5202 = bitcast <2 x float> %5196 to <2 x i32>
  %5203 = extractelement <2 x i32> %5202, i32 1
  store i32 %5203, i32* %188, align 1, !tbaa !2451
  %5204 = extractelement <2 x i32> %5197, i32 0
  store i32 %5204, i32* %189, align 1, !tbaa !2451
  %5205 = extractelement <2 x i32> %5197, i32 1
  store i32 %5205, i32* %191, align 1, !tbaa !2451
  %5206 = load i64, i64* %RBP, align 8
  %5207 = add i64 %5206, -32
  %5208 = add i64 %6924, 2059
  store i64 %5208, i64* %PC, align 8
  %5209 = inttoptr i64 %5207 to i64*
  %5210 = load i64, i64* %5209, align 8
  store i64 %5210, i64* %RAX, align 8, !tbaa !2428
  %5211 = add i64 %6924, 2062
  store i64 %5211, i64* %PC, align 8
  %5212 = inttoptr i64 %5210 to i64*
  %5213 = load i64, i64* %5212, align 8
  store i64 %5213, i64* %RAX, align 8, !tbaa !2428
  %5214 = add i64 %6924, 2066
  store i64 %5214, i64* %PC, align 8
  %5215 = load i64, i64* %5209, align 8
  store i64 %5215, i64* %RCX, align 8, !tbaa !2428
  %5216 = add i64 %5215, 12
  %5217 = add i64 %6924, 2069
  store i64 %5217, i64* %PC, align 8
  %5218 = inttoptr i64 %5216 to i32*
  %5219 = load i32, i32* %5218, align 4
  %5220 = shl i32 %5219, 1
  %5221 = icmp slt i32 %5219, 0
  %5222 = icmp slt i32 %5220, 0
  %5223 = xor i1 %5221, %5222
  %5224 = zext i32 %5220 to i64
  store i64 %5224, i64* %RDX, align 8, !tbaa !2428
  %.lobit12 = lshr i32 %5219, 31
  %5225 = trunc i32 %.lobit12 to i8
  store i8 %5225, i8* %70, align 1, !tbaa !2453
  %5226 = and i32 %5220, 254
  %5227 = tail call i32 @llvm.ctpop.i32(i32 %5226) #8
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = xor i8 %5229, 1
  store i8 %5230, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %5231 = icmp eq i32 %5220, 0
  %5232 = zext i1 %5231 to i8
  store i8 %5232, i8* %84, align 1, !tbaa !2453
  %5233 = lshr i32 %5219, 30
  %5234 = trunc i32 %5233 to i8
  %5235 = and i8 %5234, 1
  store i8 %5235, i8* %87, align 1, !tbaa !2453
  %5236 = zext i1 %5223 to i8
  store i8 %5236, i8* %93, align 1, !tbaa !2453
  %5237 = add i64 %6924, 2076
  store i64 %5237, i64* %PC, align 8
  %5238 = load i64, i64* %5209, align 8
  store i64 %5238, i64* %RCX, align 8, !tbaa !2428
  %5239 = add i64 %5238, 16
  %5240 = add i64 %6924, 2080
  store i64 %5240, i64* %PC, align 8
  %5241 = inttoptr i64 %5239 to i32*
  %5242 = load i32, i32* %5241, align 4
  %5243 = sext i32 %5220 to i64
  %5244 = sext i32 %5242 to i64
  %5245 = mul nsw i64 %5244, %5243
  %5246 = trunc i64 %5245 to i32
  %5247 = and i64 %5245, 4294967294
  store i64 %5247, i64* %RDX, align 8, !tbaa !2428
  %5248 = shl i64 %5245, 32
  %5249 = ashr exact i64 %5248, 32
  %5250 = icmp ne i64 %5249, %5245
  %5251 = zext i1 %5250 to i8
  store i8 %5251, i8* %70, align 1, !tbaa !2432
  %5252 = and i32 %5246, 254
  %5253 = tail call i32 @llvm.ctpop.i32(i32 %5252) #8
  %5254 = trunc i32 %5253 to i8
  %5255 = and i8 %5254, 1
  %5256 = xor i8 %5255, 1
  store i8 %5256, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5257 = lshr i32 %5246, 31
  %5258 = trunc i32 %5257 to i8
  store i8 %5258, i8* %87, align 1, !tbaa !2449
  store i8 %5251, i8* %93, align 1, !tbaa !2450
  %5259 = add i64 %6924, 2084
  store i64 %5259, i64* %PC, align 8
  %5260 = load i64, i64* %5209, align 8
  store i64 %5260, i64* %RCX, align 8, !tbaa !2428
  %5261 = add i64 %5260, 20
  %5262 = add i64 %6924, 2088
  store i64 %5262, i64* %PC, align 8
  %5263 = inttoptr i64 %5261 to i32*
  %5264 = load i32, i32* %5263, align 4
  %5265 = sext i32 %5264 to i64
  %5266 = mul nsw i64 %5265, %5249
  %5267 = trunc i64 %5266 to i32
  %5268 = and i64 %5266, 4294967295
  store i64 %5268, i64* %RDX, align 8, !tbaa !2428
  %5269 = shl i64 %5266, 32
  %5270 = ashr exact i64 %5269, 32
  %5271 = icmp ne i64 %5270, %5266
  %5272 = zext i1 %5271 to i8
  store i8 %5272, i8* %70, align 1, !tbaa !2432
  %5273 = and i32 %5267, 255
  %5274 = tail call i32 @llvm.ctpop.i32(i32 %5273) #8
  %5275 = trunc i32 %5274 to i8
  %5276 = and i8 %5275, 1
  %5277 = xor i8 %5276, 1
  store i8 %5277, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5278 = lshr i32 %5267, 31
  %5279 = trunc i32 %5278 to i8
  store i8 %5279, i8* %87, align 1, !tbaa !2449
  store i8 %5272, i8* %93, align 1, !tbaa !2450
  %5280 = load i64, i64* %RBP, align 8
  %5281 = add i64 %5280, -52
  %5282 = add i64 %6924, 2091
  store i64 %5282, i64* %PC, align 8
  %5283 = inttoptr i64 %5281 to i32*
  %5284 = load i32, i32* %5283, align 4
  %5285 = zext i32 %5284 to i64
  store i64 %5285, i64* %RSI, align 8, !tbaa !2428
  %5286 = add i64 %5280, -32
  %5287 = add i64 %6924, 2095
  store i64 %5287, i64* %PC, align 8
  %5288 = inttoptr i64 %5286 to i64*
  %5289 = load i64, i64* %5288, align 8
  store i64 %5289, i64* %RCX, align 8, !tbaa !2428
  %5290 = add i64 %5289, 16
  %5291 = add i64 %6924, 2099
  store i64 %5291, i64* %PC, align 8
  %5292 = inttoptr i64 %5290 to i32*
  %5293 = load i32, i32* %5292, align 4
  %5294 = sext i32 %5284 to i64
  %5295 = sext i32 %5293 to i64
  %5296 = mul nsw i64 %5295, %5294
  %5297 = trunc i64 %5296 to i32
  %5298 = and i64 %5296, 4294967295
  store i64 %5298, i64* %RSI, align 8, !tbaa !2428
  %5299 = shl i64 %5296, 32
  %5300 = ashr exact i64 %5299, 32
  %5301 = icmp ne i64 %5300, %5296
  %5302 = zext i1 %5301 to i8
  store i8 %5302, i8* %70, align 1, !tbaa !2432
  %5303 = and i32 %5297, 255
  %5304 = tail call i32 @llvm.ctpop.i32(i32 %5303) #8
  %5305 = trunc i32 %5304 to i8
  %5306 = and i8 %5305, 1
  %5307 = xor i8 %5306, 1
  store i8 %5307, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5308 = lshr i32 %5297, 31
  %5309 = trunc i32 %5308 to i8
  store i8 %5309, i8* %87, align 1, !tbaa !2449
  store i8 %5302, i8* %93, align 1, !tbaa !2450
  %5310 = add i64 %6924, 2103
  store i64 %5310, i64* %PC, align 8
  %5311 = load i64, i64* %5288, align 8
  store i64 %5311, i64* %RCX, align 8, !tbaa !2428
  %5312 = add i64 %5311, 20
  %5313 = add i64 %6924, 2107
  store i64 %5313, i64* %PC, align 8
  %5314 = inttoptr i64 %5312 to i32*
  %5315 = load i32, i32* %5314, align 4
  %5316 = sext i32 %5315 to i64
  %5317 = mul nsw i64 %5316, %5300
  %5318 = and i64 %5317, 4294967295
  store i64 %5318, i64* %RSI, align 8, !tbaa !2428
  %5319 = trunc i64 %5317 to i32
  %5320 = add i32 %5319, %5267
  %5321 = zext i32 %5320 to i64
  store i64 %5321, i64* %RDX, align 8, !tbaa !2428
  %5322 = icmp ult i32 %5320, %5267
  %5323 = icmp ult i32 %5320, %5319
  %5324 = or i1 %5322, %5323
  %5325 = zext i1 %5324 to i8
  store i8 %5325, i8* %70, align 1, !tbaa !2432
  %5326 = and i32 %5320, 255
  %5327 = tail call i32 @llvm.ctpop.i32(i32 %5326) #8
  %5328 = trunc i32 %5327 to i8
  %5329 = and i8 %5328, 1
  %5330 = xor i8 %5329, 1
  store i8 %5330, i8* %76, align 1, !tbaa !2446
  %5331 = xor i64 %5317, %5266
  %5332 = trunc i64 %5331 to i32
  %5333 = xor i32 %5332, %5320
  %5334 = lshr i32 %5333, 4
  %5335 = trunc i32 %5334 to i8
  %5336 = and i8 %5335, 1
  store i8 %5336, i8* %81, align 1, !tbaa !2447
  %5337 = icmp eq i32 %5320, 0
  %5338 = zext i1 %5337 to i8
  store i8 %5338, i8* %84, align 1, !tbaa !2448
  %5339 = lshr i32 %5320, 31
  %5340 = trunc i32 %5339 to i8
  store i8 %5340, i8* %87, align 1, !tbaa !2449
  %5341 = lshr i32 %5319, 31
  %5342 = xor i32 %5339, %5278
  %5343 = xor i32 %5339, %5341
  %5344 = add nuw nsw i32 %5342, %5343
  %5345 = icmp eq i32 %5344, 2
  %5346 = zext i1 %5345 to i8
  store i8 %5346, i8* %93, align 1, !tbaa !2450
  %5347 = load i64, i64* %RBP, align 8
  %5348 = add i64 %5347, -56
  %5349 = add i64 %6924, 2112
  store i64 %5349, i64* %PC, align 8
  %5350 = inttoptr i64 %5348 to i32*
  %5351 = load i32, i32* %5350, align 4
  %5352 = zext i32 %5351 to i64
  store i64 %5352, i64* %RSI, align 8, !tbaa !2428
  %5353 = add i64 %5347, -32
  %5354 = add i64 %6924, 2116
  store i64 %5354, i64* %PC, align 8
  %5355 = inttoptr i64 %5353 to i64*
  %5356 = load i64, i64* %5355, align 8
  store i64 %5356, i64* %RCX, align 8, !tbaa !2428
  %5357 = add i64 %5356, 20
  %5358 = add i64 %6924, 2120
  store i64 %5358, i64* %PC, align 8
  %5359 = inttoptr i64 %5357 to i32*
  %5360 = load i32, i32* %5359, align 4
  %5361 = sext i32 %5351 to i64
  %5362 = sext i32 %5360 to i64
  %5363 = mul nsw i64 %5362, %5361
  %5364 = and i64 %5363, 4294967295
  store i64 %5364, i64* %RSI, align 8, !tbaa !2428
  %5365 = trunc i64 %5363 to i32
  %5366 = add i32 %5365, %5320
  %5367 = zext i32 %5366 to i64
  store i64 %5367, i64* %RDX, align 8, !tbaa !2428
  %5368 = icmp ult i32 %5366, %5320
  %5369 = icmp ult i32 %5366, %5365
  %5370 = or i1 %5368, %5369
  %5371 = zext i1 %5370 to i8
  store i8 %5371, i8* %70, align 1, !tbaa !2432
  %5372 = and i32 %5366, 255
  %5373 = tail call i32 @llvm.ctpop.i32(i32 %5372) #8
  %5374 = trunc i32 %5373 to i8
  %5375 = and i8 %5374, 1
  %5376 = xor i8 %5375, 1
  store i8 %5376, i8* %76, align 1, !tbaa !2446
  %5377 = xor i64 %5363, %5321
  %5378 = trunc i64 %5377 to i32
  %5379 = xor i32 %5378, %5366
  %5380 = lshr i32 %5379, 4
  %5381 = trunc i32 %5380 to i8
  %5382 = and i8 %5381, 1
  store i8 %5382, i8* %81, align 1, !tbaa !2447
  %5383 = icmp eq i32 %5366, 0
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %84, align 1, !tbaa !2448
  %5385 = lshr i32 %5366, 31
  %5386 = trunc i32 %5385 to i8
  store i8 %5386, i8* %87, align 1, !tbaa !2449
  %5387 = lshr i32 %5365, 31
  %5388 = xor i32 %5385, %5339
  %5389 = xor i32 %5385, %5387
  %5390 = add nuw nsw i32 %5388, %5389
  %5391 = icmp eq i32 %5390, 2
  %5392 = zext i1 %5391 to i8
  store i8 %5392, i8* %93, align 1, !tbaa !2450
  %5393 = add i64 %5347, -60
  %5394 = add i64 %6924, 2125
  store i64 %5394, i64* %PC, align 8
  %5395 = inttoptr i64 %5393 to i32*
  %5396 = load i32, i32* %5395, align 4
  %5397 = add i32 %5396, %5366
  %5398 = zext i32 %5397 to i64
  store i64 %5398, i64* %RDX, align 8, !tbaa !2428
  %5399 = icmp ult i32 %5397, %5366
  %5400 = icmp ult i32 %5397, %5396
  %5401 = or i1 %5399, %5400
  %5402 = zext i1 %5401 to i8
  store i8 %5402, i8* %70, align 1, !tbaa !2432
  %5403 = and i32 %5397, 255
  %5404 = tail call i32 @llvm.ctpop.i32(i32 %5403) #8
  %5405 = trunc i32 %5404 to i8
  %5406 = and i8 %5405, 1
  %5407 = xor i8 %5406, 1
  store i8 %5407, i8* %76, align 1, !tbaa !2446
  %5408 = xor i32 %5396, %5366
  %5409 = xor i32 %5408, %5397
  %5410 = lshr i32 %5409, 4
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  store i8 %5412, i8* %81, align 1, !tbaa !2447
  %5413 = icmp eq i32 %5397, 0
  %5414 = zext i1 %5413 to i8
  store i8 %5414, i8* %84, align 1, !tbaa !2448
  %5415 = lshr i32 %5397, 31
  %5416 = trunc i32 %5415 to i8
  store i8 %5416, i8* %87, align 1, !tbaa !2449
  %5417 = lshr i32 %5396, 31
  %5418 = xor i32 %5415, %5385
  %5419 = xor i32 %5415, %5417
  %5420 = add nuw nsw i32 %5418, %5419
  %5421 = icmp eq i32 %5420, 2
  %5422 = zext i1 %5421 to i8
  store i8 %5422, i8* %93, align 1, !tbaa !2450
  %5423 = sext i32 %5397 to i64
  store i64 %5423, i64* %RCX, align 8, !tbaa !2428
  %5424 = load i64, i64* %RAX, align 8
  %5425 = shl nsw i64 %5423, 2
  %5426 = add i64 %5425, %5424
  %5427 = add i64 %6924, 2133
  store i64 %5427, i64* %PC, align 8
  %5428 = inttoptr i64 %5426 to i32*
  %5429 = load i32, i32* %5428, align 4
  store i32 %5429, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %5430 = load i64, i64* %RBP, align 8
  %5431 = add i64 %5430, -40
  %5432 = add i64 %6924, 2137
  store i64 %5432, i64* %PC, align 8
  %5433 = inttoptr i64 %5431 to i64*
  %5434 = load i64, i64* %5433, align 8
  store i64 %5434, i64* %RAX, align 8, !tbaa !2428
  %5435 = add i64 %6924, 2140
  store i64 %5435, i64* %PC, align 8
  %5436 = inttoptr i64 %5434 to i64*
  %5437 = load i64, i64* %5436, align 8
  store i64 %5437, i64* %RAX, align 8, !tbaa !2428
  %5438 = add i64 %6924, 2144
  store i64 %5438, i64* %PC, align 8
  %5439 = load i64, i64* %5433, align 8
  store i64 %5439, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5440 = add i64 %6924, 2152
  store i64 %5440, i64* %PC, align 8
  %5441 = load i64, i64* %5433, align 8
  store i64 %5441, i64* %RCX, align 8, !tbaa !2428
  %5442 = add i64 %6924, 2156
  store i64 %5442, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5443 = add i64 %6924, 2160
  store i64 %5443, i64* %PC, align 8
  %5444 = load i64, i64* %5433, align 8
  store i64 %5444, i64* %RCX, align 8, !tbaa !2428
  %5445 = add i64 %6924, 2164
  store i64 %5445, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5446 = add i64 %5430, -52
  %5447 = add i64 %6924, 2167
  store i64 %5447, i64* %PC, align 8
  %5448 = inttoptr i64 %5446 to i32*
  %5449 = load i32, i32* %5448, align 4
  %5450 = zext i32 %5449 to i64
  store i64 %5450, i64* %RSI, align 8, !tbaa !2428
  %5451 = add i64 %6924, 2171
  store i64 %5451, i64* %PC, align 8
  %5452 = load i64, i64* %5433, align 8
  store i64 %5452, i64* %RCX, align 8, !tbaa !2428
  %5453 = add i64 %5452, 16
  %5454 = add i64 %6924, 2175
  store i64 %5454, i64* %PC, align 8
  %5455 = inttoptr i64 %5453 to i32*
  %5456 = load i32, i32* %5455, align 4
  %5457 = sext i32 %5449 to i64
  %5458 = sext i32 %5456 to i64
  %5459 = mul nsw i64 %5458, %5457
  %5460 = trunc i64 %5459 to i32
  %5461 = and i64 %5459, 4294967295
  store i64 %5461, i64* %RSI, align 8, !tbaa !2428
  %5462 = shl i64 %5459, 32
  %5463 = ashr exact i64 %5462, 32
  %5464 = icmp ne i64 %5463, %5459
  %5465 = zext i1 %5464 to i8
  store i8 %5465, i8* %70, align 1, !tbaa !2432
  %5466 = and i32 %5460, 255
  %5467 = tail call i32 @llvm.ctpop.i32(i32 %5466) #8
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = xor i8 %5469, 1
  store i8 %5470, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5471 = lshr i32 %5460, 31
  %5472 = trunc i32 %5471 to i8
  store i8 %5472, i8* %87, align 1, !tbaa !2449
  store i8 %5465, i8* %93, align 1, !tbaa !2450
  %5473 = add i64 %6924, 2179
  store i64 %5473, i64* %PC, align 8
  %5474 = load i64, i64* %5433, align 8
  store i64 %5474, i64* %RCX, align 8, !tbaa !2428
  %5475 = add i64 %5474, 20
  %5476 = add i64 %6924, 2183
  store i64 %5476, i64* %PC, align 8
  %5477 = inttoptr i64 %5475 to i32*
  %5478 = load i32, i32* %5477, align 4
  %5479 = sext i32 %5478 to i64
  %5480 = mul nsw i64 %5479, %5463
  %5481 = and i64 %5480, 4294967295
  store i64 %5481, i64* %RSI, align 8, !tbaa !2428
  %5482 = trunc i64 %5480 to i32
  store i64 %5481, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5483 = and i32 %5482, 255
  %5484 = tail call i32 @llvm.ctpop.i32(i32 %5483) #8
  %5485 = trunc i32 %5484 to i8
  %5486 = and i8 %5485, 1
  %5487 = xor i8 %5486, 1
  store i8 %5487, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5488 = icmp eq i32 %5482, 0
  %5489 = zext i1 %5488 to i8
  store i8 %5489, i8* %84, align 1, !tbaa !2448
  %5490 = lshr i32 %5482, 31
  %5491 = trunc i32 %5490 to i8
  store i8 %5491, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5492 = load i64, i64* %RBP, align 8
  %5493 = add i64 %5492, -56
  %5494 = add i64 %6924, 2188
  store i64 %5494, i64* %PC, align 8
  %5495 = inttoptr i64 %5493 to i32*
  %5496 = load i32, i32* %5495, align 4
  %5497 = zext i32 %5496 to i64
  store i64 %5497, i64* %RSI, align 8, !tbaa !2428
  %5498 = add i64 %5492, -40
  %5499 = add i64 %6924, 2192
  store i64 %5499, i64* %PC, align 8
  %5500 = inttoptr i64 %5498 to i64*
  %5501 = load i64, i64* %5500, align 8
  store i64 %5501, i64* %RCX, align 8, !tbaa !2428
  %5502 = add i64 %5501, 20
  %5503 = add i64 %6924, 2196
  store i64 %5503, i64* %PC, align 8
  %5504 = inttoptr i64 %5502 to i32*
  %5505 = load i32, i32* %5504, align 4
  %5506 = sext i32 %5496 to i64
  %5507 = sext i32 %5505 to i64
  %5508 = mul nsw i64 %5507, %5506
  %5509 = and i64 %5508, 4294967295
  store i64 %5509, i64* %RSI, align 8, !tbaa !2428
  %5510 = trunc i64 %5508 to i32
  %5511 = add i32 %5510, %5482
  %5512 = zext i32 %5511 to i64
  store i64 %5512, i64* %RDX, align 8, !tbaa !2428
  %5513 = icmp ult i32 %5511, %5482
  %5514 = icmp ult i32 %5511, %5510
  %5515 = or i1 %5513, %5514
  %5516 = zext i1 %5515 to i8
  store i8 %5516, i8* %70, align 1, !tbaa !2432
  %5517 = and i32 %5511, 255
  %5518 = tail call i32 @llvm.ctpop.i32(i32 %5517) #8
  %5519 = trunc i32 %5518 to i8
  %5520 = and i8 %5519, 1
  %5521 = xor i8 %5520, 1
  store i8 %5521, i8* %76, align 1, !tbaa !2446
  %5522 = xor i64 %5508, %5480
  %5523 = trunc i64 %5522 to i32
  %5524 = xor i32 %5523, %5511
  %5525 = lshr i32 %5524, 4
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  store i8 %5527, i8* %81, align 1, !tbaa !2447
  %5528 = icmp eq i32 %5511, 0
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %84, align 1, !tbaa !2448
  %5530 = lshr i32 %5511, 31
  %5531 = trunc i32 %5530 to i8
  store i8 %5531, i8* %87, align 1, !tbaa !2449
  %5532 = lshr i32 %5510, 31
  %5533 = xor i32 %5530, %5490
  %5534 = xor i32 %5530, %5532
  %5535 = add nuw nsw i32 %5533, %5534
  %5536 = icmp eq i32 %5535, 2
  %5537 = zext i1 %5536 to i8
  store i8 %5537, i8* %93, align 1, !tbaa !2450
  %5538 = add i64 %5492, -60
  %5539 = add i64 %6924, 2201
  store i64 %5539, i64* %PC, align 8
  %5540 = inttoptr i64 %5538 to i32*
  %5541 = load i32, i32* %5540, align 4
  %5542 = add i32 %5541, -1
  %5543 = zext i32 %5542 to i64
  store i64 %5543, i64* %RSI, align 8, !tbaa !2428
  %5544 = lshr i32 %5542, 31
  %5545 = add i32 %5542, %5511
  %5546 = zext i32 %5545 to i64
  store i64 %5546, i64* %RDX, align 8, !tbaa !2428
  %5547 = icmp ult i32 %5545, %5511
  %5548 = icmp ult i32 %5545, %5542
  %5549 = or i1 %5547, %5548
  %5550 = zext i1 %5549 to i8
  store i8 %5550, i8* %70, align 1, !tbaa !2432
  %5551 = and i32 %5545, 255
  %5552 = tail call i32 @llvm.ctpop.i32(i32 %5551) #8
  %5553 = trunc i32 %5552 to i8
  %5554 = and i8 %5553, 1
  %5555 = xor i8 %5554, 1
  store i8 %5555, i8* %76, align 1, !tbaa !2446
  %5556 = xor i32 %5542, %5511
  %5557 = xor i32 %5556, %5545
  %5558 = lshr i32 %5557, 4
  %5559 = trunc i32 %5558 to i8
  %5560 = and i8 %5559, 1
  store i8 %5560, i8* %81, align 1, !tbaa !2447
  %5561 = icmp eq i32 %5545, 0
  %5562 = zext i1 %5561 to i8
  store i8 %5562, i8* %84, align 1, !tbaa !2448
  %5563 = lshr i32 %5545, 31
  %5564 = trunc i32 %5563 to i8
  store i8 %5564, i8* %87, align 1, !tbaa !2449
  %5565 = xor i32 %5563, %5530
  %5566 = xor i32 %5563, %5544
  %5567 = add nuw nsw i32 %5565, %5566
  %5568 = icmp eq i32 %5567, 2
  %5569 = zext i1 %5568 to i8
  store i8 %5569, i8* %93, align 1, !tbaa !2450
  %5570 = sext i32 %5545 to i64
  store i64 %5570, i64* %RCX, align 8, !tbaa !2428
  %5571 = load i64, i64* %RAX, align 8
  %5572 = shl nsw i64 %5570, 2
  %5573 = add i64 %5572, %5571
  %5574 = add i64 %6924, 2214
  store i64 %5574, i64* %PC, align 8
  %5575 = load <2 x float>, <2 x float>* %206, align 1
  %5576 = load <2 x i32>, <2 x i32>* %207, align 1
  %5577 = inttoptr i64 %5573 to float*
  %5578 = load float, float* %5577, align 4
  %5579 = extractelement <2 x float> %5575, i32 0
  %5580 = fmul float %5579, %5578
  store float %5580, float* %199, align 1, !tbaa !2451
  %5581 = bitcast <2 x float> %5575 to <2 x i32>
  %5582 = extractelement <2 x i32> %5581, i32 1
  store i32 %5582, i32* %208, align 1, !tbaa !2451
  %5583 = extractelement <2 x i32> %5576, i32 0
  store i32 %5583, i32* %209, align 1, !tbaa !2451
  %5584 = extractelement <2 x i32> %5576, i32 1
  store i32 %5584, i32* %210, align 1, !tbaa !2451
  %5585 = load <2 x float>, <2 x float>* %192, align 1
  %5586 = load <2 x i32>, <2 x i32>* %197, align 1
  %5587 = load <2 x float>, <2 x float>* %206, align 1
  %5588 = extractelement <2 x float> %5585, i32 0
  %5589 = extractelement <2 x float> %5587, i32 0
  %5590 = fadd float %5588, %5589
  store float %5590, float* %193, align 1, !tbaa !2451
  %5591 = bitcast <2 x float> %5585 to <2 x i32>
  %5592 = extractelement <2 x i32> %5591, i32 1
  store i32 %5592, i32* %188, align 1, !tbaa !2451
  %5593 = extractelement <2 x i32> %5586, i32 0
  store i32 %5593, i32* %189, align 1, !tbaa !2451
  %5594 = extractelement <2 x i32> %5586, i32 1
  store i32 %5594, i32* %191, align 1, !tbaa !2451
  %5595 = load i64, i64* %RBP, align 8
  %5596 = add i64 %5595, 16
  %5597 = add i64 %6924, 2222
  store i64 %5597, i64* %PC, align 8
  %5598 = inttoptr i64 %5596 to i64*
  %5599 = load i64, i64* %5598, align 8
  store i64 %5599, i64* %RAX, align 8, !tbaa !2428
  %5600 = add i64 %6924, 2225
  store i64 %5600, i64* %PC, align 8
  %5601 = inttoptr i64 %5599 to i64*
  %5602 = load i64, i64* %5601, align 8
  store i64 %5602, i64* %RAX, align 8, !tbaa !2428
  %5603 = add i64 %6924, 2229
  store i64 %5603, i64* %PC, align 8
  %5604 = load i64, i64* %5598, align 8
  store i64 %5604, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5605 = add i64 %6924, 2237
  store i64 %5605, i64* %PC, align 8
  %5606 = load i64, i64* %5598, align 8
  store i64 %5606, i64* %RCX, align 8, !tbaa !2428
  %5607 = add i64 %6924, 2241
  store i64 %5607, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5608 = add i64 %6924, 2245
  store i64 %5608, i64* %PC, align 8
  %5609 = load i64, i64* %5598, align 8
  store i64 %5609, i64* %RCX, align 8, !tbaa !2428
  %5610 = add i64 %6924, 2249
  store i64 %5610, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5611 = add i64 %5595, -52
  %5612 = add i64 %6924, 2252
  store i64 %5612, i64* %PC, align 8
  %5613 = inttoptr i64 %5611 to i32*
  %5614 = load i32, i32* %5613, align 4
  %5615 = zext i32 %5614 to i64
  store i64 %5615, i64* %RSI, align 8, !tbaa !2428
  %5616 = add i64 %6924, 2256
  store i64 %5616, i64* %PC, align 8
  %5617 = load i64, i64* %5598, align 8
  store i64 %5617, i64* %RCX, align 8, !tbaa !2428
  %5618 = add i64 %5617, 16
  %5619 = add i64 %6924, 2260
  store i64 %5619, i64* %PC, align 8
  %5620 = inttoptr i64 %5618 to i32*
  %5621 = load i32, i32* %5620, align 4
  %5622 = sext i32 %5614 to i64
  %5623 = sext i32 %5621 to i64
  %5624 = mul nsw i64 %5623, %5622
  %5625 = trunc i64 %5624 to i32
  %5626 = and i64 %5624, 4294967295
  store i64 %5626, i64* %RSI, align 8, !tbaa !2428
  %5627 = shl i64 %5624, 32
  %5628 = ashr exact i64 %5627, 32
  %5629 = icmp ne i64 %5628, %5624
  %5630 = zext i1 %5629 to i8
  store i8 %5630, i8* %70, align 1, !tbaa !2432
  %5631 = and i32 %5625, 255
  %5632 = tail call i32 @llvm.ctpop.i32(i32 %5631) #8
  %5633 = trunc i32 %5632 to i8
  %5634 = and i8 %5633, 1
  %5635 = xor i8 %5634, 1
  store i8 %5635, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5636 = lshr i32 %5625, 31
  %5637 = trunc i32 %5636 to i8
  store i8 %5637, i8* %87, align 1, !tbaa !2449
  store i8 %5630, i8* %93, align 1, !tbaa !2450
  %5638 = add i64 %6924, 2264
  store i64 %5638, i64* %PC, align 8
  %5639 = load i64, i64* %5598, align 8
  store i64 %5639, i64* %RCX, align 8, !tbaa !2428
  %5640 = add i64 %5639, 20
  %5641 = add i64 %6924, 2268
  store i64 %5641, i64* %PC, align 8
  %5642 = inttoptr i64 %5640 to i32*
  %5643 = load i32, i32* %5642, align 4
  %5644 = sext i32 %5643 to i64
  %5645 = mul nsw i64 %5644, %5628
  %5646 = and i64 %5645, 4294967295
  store i64 %5646, i64* %RSI, align 8, !tbaa !2428
  %5647 = trunc i64 %5645 to i32
  store i64 %5646, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5648 = and i32 %5647, 255
  %5649 = tail call i32 @llvm.ctpop.i32(i32 %5648) #8
  %5650 = trunc i32 %5649 to i8
  %5651 = and i8 %5650, 1
  %5652 = xor i8 %5651, 1
  store i8 %5652, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5653 = icmp eq i32 %5647, 0
  %5654 = zext i1 %5653 to i8
  store i8 %5654, i8* %84, align 1, !tbaa !2448
  %5655 = lshr i32 %5647, 31
  %5656 = trunc i32 %5655 to i8
  store i8 %5656, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5657 = load i64, i64* %RBP, align 8
  %5658 = add i64 %5657, -56
  %5659 = add i64 %6924, 2273
  store i64 %5659, i64* %PC, align 8
  %5660 = inttoptr i64 %5658 to i32*
  %5661 = load i32, i32* %5660, align 4
  %5662 = zext i32 %5661 to i64
  store i64 %5662, i64* %RSI, align 8, !tbaa !2428
  %5663 = add i64 %5657, 16
  %5664 = add i64 %6924, 2277
  store i64 %5664, i64* %PC, align 8
  %5665 = inttoptr i64 %5663 to i64*
  %5666 = load i64, i64* %5665, align 8
  store i64 %5666, i64* %RCX, align 8, !tbaa !2428
  %5667 = add i64 %5666, 20
  %5668 = add i64 %6924, 2281
  store i64 %5668, i64* %PC, align 8
  %5669 = inttoptr i64 %5667 to i32*
  %5670 = load i32, i32* %5669, align 4
  %5671 = sext i32 %5661 to i64
  %5672 = sext i32 %5670 to i64
  %5673 = mul nsw i64 %5672, %5671
  %5674 = and i64 %5673, 4294967295
  store i64 %5674, i64* %RSI, align 8, !tbaa !2428
  %5675 = trunc i64 %5673 to i32
  %5676 = add i32 %5675, %5647
  %5677 = zext i32 %5676 to i64
  store i64 %5677, i64* %RDX, align 8, !tbaa !2428
  %5678 = icmp ult i32 %5676, %5647
  %5679 = icmp ult i32 %5676, %5675
  %5680 = or i1 %5678, %5679
  %5681 = zext i1 %5680 to i8
  store i8 %5681, i8* %70, align 1, !tbaa !2432
  %5682 = and i32 %5676, 255
  %5683 = tail call i32 @llvm.ctpop.i32(i32 %5682) #8
  %5684 = trunc i32 %5683 to i8
  %5685 = and i8 %5684, 1
  %5686 = xor i8 %5685, 1
  store i8 %5686, i8* %76, align 1, !tbaa !2446
  %5687 = xor i64 %5673, %5645
  %5688 = trunc i64 %5687 to i32
  %5689 = xor i32 %5688, %5676
  %5690 = lshr i32 %5689, 4
  %5691 = trunc i32 %5690 to i8
  %5692 = and i8 %5691, 1
  store i8 %5692, i8* %81, align 1, !tbaa !2447
  %5693 = icmp eq i32 %5676, 0
  %5694 = zext i1 %5693 to i8
  store i8 %5694, i8* %84, align 1, !tbaa !2448
  %5695 = lshr i32 %5676, 31
  %5696 = trunc i32 %5695 to i8
  store i8 %5696, i8* %87, align 1, !tbaa !2449
  %5697 = lshr i32 %5675, 31
  %5698 = xor i32 %5695, %5655
  %5699 = xor i32 %5695, %5697
  %5700 = add nuw nsw i32 %5698, %5699
  %5701 = icmp eq i32 %5700, 2
  %5702 = zext i1 %5701 to i8
  store i8 %5702, i8* %93, align 1, !tbaa !2450
  %5703 = add i64 %5657, -60
  %5704 = add i64 %6924, 2286
  store i64 %5704, i64* %PC, align 8
  %5705 = inttoptr i64 %5703 to i32*
  %5706 = load i32, i32* %5705, align 4
  %5707 = add i32 %5706, %5676
  %5708 = zext i32 %5707 to i64
  store i64 %5708, i64* %RDX, align 8, !tbaa !2428
  %5709 = icmp ult i32 %5707, %5676
  %5710 = icmp ult i32 %5707, %5706
  %5711 = or i1 %5709, %5710
  %5712 = zext i1 %5711 to i8
  store i8 %5712, i8* %70, align 1, !tbaa !2432
  %5713 = and i32 %5707, 255
  %5714 = tail call i32 @llvm.ctpop.i32(i32 %5713) #8
  %5715 = trunc i32 %5714 to i8
  %5716 = and i8 %5715, 1
  %5717 = xor i8 %5716, 1
  store i8 %5717, i8* %76, align 1, !tbaa !2446
  %5718 = xor i32 %5706, %5676
  %5719 = xor i32 %5718, %5707
  %5720 = lshr i32 %5719, 4
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  store i8 %5722, i8* %81, align 1, !tbaa !2447
  %5723 = icmp eq i32 %5707, 0
  %5724 = zext i1 %5723 to i8
  store i8 %5724, i8* %84, align 1, !tbaa !2448
  %5725 = lshr i32 %5707, 31
  %5726 = trunc i32 %5725 to i8
  store i8 %5726, i8* %87, align 1, !tbaa !2449
  %5727 = lshr i32 %5706, 31
  %5728 = xor i32 %5725, %5695
  %5729 = xor i32 %5725, %5727
  %5730 = add nuw nsw i32 %5728, %5729
  %5731 = icmp eq i32 %5730, 2
  %5732 = zext i1 %5731 to i8
  store i8 %5732, i8* %93, align 1, !tbaa !2450
  %5733 = sext i32 %5707 to i64
  store i64 %5733, i64* %RCX, align 8, !tbaa !2428
  %5734 = load i64, i64* %RAX, align 8
  %5735 = shl nsw i64 %5733, 2
  %5736 = add i64 %5735, %5734
  %5737 = add i64 %6924, 2294
  store i64 %5737, i64* %PC, align 8
  %5738 = load <2 x float>, <2 x float>* %192, align 1
  %5739 = load <2 x i32>, <2 x i32>* %197, align 1
  %5740 = inttoptr i64 %5736 to float*
  %5741 = load float, float* %5740, align 4
  %5742 = extractelement <2 x float> %5738, i32 0
  %5743 = fadd float %5742, %5741
  store float %5743, float* %193, align 1, !tbaa !2451
  %5744 = bitcast <2 x float> %5738 to <2 x i32>
  %5745 = extractelement <2 x i32> %5744, i32 1
  store i32 %5745, i32* %188, align 1, !tbaa !2451
  %5746 = extractelement <2 x i32> %5739, i32 0
  store i32 %5746, i32* %189, align 1, !tbaa !2451
  %5747 = extractelement <2 x i32> %5739, i32 1
  store i32 %5747, i32* %191, align 1, !tbaa !2451
  %5748 = load i64, i64* %RBP, align 8
  %5749 = add i64 %5748, -84
  %5750 = add i64 %6924, 2299
  store i64 %5750, i64* %PC, align 8
  %5751 = load <2 x float>, <2 x float>* %192, align 1
  %5752 = extractelement <2 x float> %5751, i32 0
  %5753 = inttoptr i64 %5749 to float*
  store float %5752, float* %5753, align 4
  %5754 = load i64, i64* %RBP, align 8
  %5755 = add i64 %5754, -84
  %5756 = load i64, i64* %PC, align 8
  %5757 = add i64 %5756, 5
  store i64 %5757, i64* %PC, align 8
  %5758 = inttoptr i64 %5755 to i32*
  %5759 = load i32, i32* %5758, align 4
  store i32 %5759, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %5760 = add i64 %5754, -16
  %5761 = add i64 %5756, 9
  store i64 %5761, i64* %PC, align 8
  %5762 = inttoptr i64 %5760 to i64*
  %5763 = load i64, i64* %5762, align 8
  store i64 %5763, i64* %RAX, align 8, !tbaa !2428
  %5764 = add i64 %5756, 12
  store i64 %5764, i64* %PC, align 8
  %5765 = inttoptr i64 %5763 to i64*
  %5766 = load i64, i64* %5765, align 8
  store i64 %5766, i64* %RAX, align 8, !tbaa !2428
  %5767 = add i64 %5756, 16
  store i64 %5767, i64* %PC, align 8
  %5768 = load i64, i64* %5762, align 8
  store i64 %5768, i64* %RCX, align 8, !tbaa !2428
  %5769 = add i64 %5768, 12
  %5770 = add i64 %5756, 20
  store i64 %5770, i64* %PC, align 8
  %5771 = inttoptr i64 %5769 to i32*
  %5772 = load i32, i32* %5771, align 4
  %5773 = sext i32 %5772 to i64
  %5774 = mul nsw i64 %5773, 3
  %5775 = trunc i64 %5774 to i32
  %5776 = and i64 %5774, 4294967295
  store i64 %5776, i64* %RDX, align 8, !tbaa !2428
  %5777 = mul i64 %5773, 12884901888
  %5778 = ashr exact i64 %5777, 32
  %5779 = icmp ne i64 %5778, %5774
  %5780 = zext i1 %5779 to i8
  store i8 %5780, i8* %70, align 1, !tbaa !2432
  %5781 = and i32 %5775, 255
  %5782 = tail call i32 @llvm.ctpop.i32(i32 %5781) #8
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = xor i8 %5784, 1
  store i8 %5785, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5786 = lshr i32 %5775, 31
  %5787 = trunc i32 %5786 to i8
  store i8 %5787, i8* %87, align 1, !tbaa !2449
  store i8 %5780, i8* %93, align 1, !tbaa !2450
  %5788 = add i64 %5756, 24
  store i64 %5788, i64* %PC, align 8
  %5789 = load i64, i64* %5762, align 8
  store i64 %5789, i64* %RCX, align 8, !tbaa !2428
  %5790 = add i64 %5789, 16
  %5791 = add i64 %5756, 28
  store i64 %5791, i64* %PC, align 8
  %5792 = inttoptr i64 %5790 to i32*
  %5793 = load i32, i32* %5792, align 4
  %5794 = sext i32 %5793 to i64
  %5795 = mul nsw i64 %5794, %5778
  %5796 = trunc i64 %5795 to i32
  %5797 = and i64 %5795, 4294967295
  store i64 %5797, i64* %RDX, align 8, !tbaa !2428
  %5798 = shl i64 %5795, 32
  %5799 = ashr exact i64 %5798, 32
  %5800 = icmp ne i64 %5799, %5795
  %5801 = zext i1 %5800 to i8
  store i8 %5801, i8* %70, align 1, !tbaa !2432
  %5802 = and i32 %5796, 255
  %5803 = tail call i32 @llvm.ctpop.i32(i32 %5802) #8
  %5804 = trunc i32 %5803 to i8
  %5805 = and i8 %5804, 1
  %5806 = xor i8 %5805, 1
  store i8 %5806, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5807 = lshr i32 %5796, 31
  %5808 = trunc i32 %5807 to i8
  store i8 %5808, i8* %87, align 1, !tbaa !2449
  store i8 %5801, i8* %93, align 1, !tbaa !2450
  %5809 = add i64 %5756, 32
  store i64 %5809, i64* %PC, align 8
  %5810 = load i64, i64* %5762, align 8
  store i64 %5810, i64* %RCX, align 8, !tbaa !2428
  %5811 = add i64 %5810, 20
  %5812 = add i64 %5756, 36
  store i64 %5812, i64* %PC, align 8
  %5813 = inttoptr i64 %5811 to i32*
  %5814 = load i32, i32* %5813, align 4
  %5815 = sext i32 %5814 to i64
  %5816 = mul nsw i64 %5815, %5799
  %5817 = trunc i64 %5816 to i32
  %5818 = and i64 %5816, 4294967295
  store i64 %5818, i64* %RDX, align 8, !tbaa !2428
  %5819 = shl i64 %5816, 32
  %5820 = ashr exact i64 %5819, 32
  %5821 = icmp ne i64 %5820, %5816
  %5822 = zext i1 %5821 to i8
  store i8 %5822, i8* %70, align 1, !tbaa !2432
  %5823 = and i32 %5817, 255
  %5824 = tail call i32 @llvm.ctpop.i32(i32 %5823) #8
  %5825 = trunc i32 %5824 to i8
  %5826 = and i8 %5825, 1
  %5827 = xor i8 %5826, 1
  store i8 %5827, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5828 = lshr i32 %5817, 31
  %5829 = trunc i32 %5828 to i8
  store i8 %5829, i8* %87, align 1, !tbaa !2449
  store i8 %5822, i8* %93, align 1, !tbaa !2450
  %5830 = load i64, i64* %RBP, align 8
  %5831 = add i64 %5830, -52
  %5832 = add i64 %5756, 39
  store i64 %5832, i64* %PC, align 8
  %5833 = inttoptr i64 %5831 to i32*
  %5834 = load i32, i32* %5833, align 4
  %5835 = zext i32 %5834 to i64
  store i64 %5835, i64* %RSI, align 8, !tbaa !2428
  %5836 = add i64 %5830, -16
  %5837 = add i64 %5756, 43
  store i64 %5837, i64* %PC, align 8
  %5838 = inttoptr i64 %5836 to i64*
  %5839 = load i64, i64* %5838, align 8
  store i64 %5839, i64* %RCX, align 8, !tbaa !2428
  %5840 = add i64 %5839, 16
  %5841 = add i64 %5756, 47
  store i64 %5841, i64* %PC, align 8
  %5842 = inttoptr i64 %5840 to i32*
  %5843 = load i32, i32* %5842, align 4
  %5844 = sext i32 %5834 to i64
  %5845 = sext i32 %5843 to i64
  %5846 = mul nsw i64 %5845, %5844
  %5847 = trunc i64 %5846 to i32
  %5848 = and i64 %5846, 4294967295
  store i64 %5848, i64* %RSI, align 8, !tbaa !2428
  %5849 = shl i64 %5846, 32
  %5850 = ashr exact i64 %5849, 32
  %5851 = icmp ne i64 %5850, %5846
  %5852 = zext i1 %5851 to i8
  store i8 %5852, i8* %70, align 1, !tbaa !2432
  %5853 = and i32 %5847, 255
  %5854 = tail call i32 @llvm.ctpop.i32(i32 %5853) #8
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = xor i8 %5856, 1
  store i8 %5857, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5858 = lshr i32 %5847, 31
  %5859 = trunc i32 %5858 to i8
  store i8 %5859, i8* %87, align 1, !tbaa !2449
  store i8 %5852, i8* %93, align 1, !tbaa !2450
  %5860 = add i64 %5756, 51
  store i64 %5860, i64* %PC, align 8
  %5861 = load i64, i64* %5838, align 8
  store i64 %5861, i64* %RCX, align 8, !tbaa !2428
  %5862 = add i64 %5861, 20
  %5863 = add i64 %5756, 55
  store i64 %5863, i64* %PC, align 8
  %5864 = inttoptr i64 %5862 to i32*
  %5865 = load i32, i32* %5864, align 4
  %5866 = sext i32 %5865 to i64
  %5867 = mul nsw i64 %5866, %5850
  %5868 = and i64 %5867, 4294967295
  store i64 %5868, i64* %RSI, align 8, !tbaa !2428
  %5869 = trunc i64 %5867 to i32
  %5870 = add i32 %5869, %5817
  %5871 = zext i32 %5870 to i64
  store i64 %5871, i64* %RDX, align 8, !tbaa !2428
  %5872 = icmp ult i32 %5870, %5817
  %5873 = icmp ult i32 %5870, %5869
  %5874 = or i1 %5872, %5873
  %5875 = zext i1 %5874 to i8
  store i8 %5875, i8* %70, align 1, !tbaa !2432
  %5876 = and i32 %5870, 255
  %5877 = tail call i32 @llvm.ctpop.i32(i32 %5876) #8
  %5878 = trunc i32 %5877 to i8
  %5879 = and i8 %5878, 1
  %5880 = xor i8 %5879, 1
  store i8 %5880, i8* %76, align 1, !tbaa !2446
  %5881 = xor i64 %5867, %5816
  %5882 = trunc i64 %5881 to i32
  %5883 = xor i32 %5882, %5870
  %5884 = lshr i32 %5883, 4
  %5885 = trunc i32 %5884 to i8
  %5886 = and i8 %5885, 1
  store i8 %5886, i8* %81, align 1, !tbaa !2447
  %5887 = icmp eq i32 %5870, 0
  %5888 = zext i1 %5887 to i8
  store i8 %5888, i8* %84, align 1, !tbaa !2448
  %5889 = lshr i32 %5870, 31
  %5890 = trunc i32 %5889 to i8
  store i8 %5890, i8* %87, align 1, !tbaa !2449
  %5891 = lshr i32 %5869, 31
  %5892 = xor i32 %5889, %5828
  %5893 = xor i32 %5889, %5891
  %5894 = add nuw nsw i32 %5892, %5893
  %5895 = icmp eq i32 %5894, 2
  %5896 = zext i1 %5895 to i8
  store i8 %5896, i8* %93, align 1, !tbaa !2450
  %5897 = load i64, i64* %RBP, align 8
  %5898 = add i64 %5897, -56
  %5899 = add i64 %5756, 60
  store i64 %5899, i64* %PC, align 8
  %5900 = inttoptr i64 %5898 to i32*
  %5901 = load i32, i32* %5900, align 4
  %5902 = zext i32 %5901 to i64
  store i64 %5902, i64* %RSI, align 8, !tbaa !2428
  %5903 = add i64 %5897, -16
  %5904 = add i64 %5756, 64
  store i64 %5904, i64* %PC, align 8
  %5905 = inttoptr i64 %5903 to i64*
  %5906 = load i64, i64* %5905, align 8
  store i64 %5906, i64* %RCX, align 8, !tbaa !2428
  %5907 = add i64 %5906, 20
  %5908 = add i64 %5756, 68
  store i64 %5908, i64* %PC, align 8
  %5909 = inttoptr i64 %5907 to i32*
  %5910 = load i32, i32* %5909, align 4
  %5911 = sext i32 %5901 to i64
  %5912 = sext i32 %5910 to i64
  %5913 = mul nsw i64 %5912, %5911
  %5914 = and i64 %5913, 4294967295
  store i64 %5914, i64* %RSI, align 8, !tbaa !2428
  %5915 = trunc i64 %5913 to i32
  %5916 = add i32 %5915, %5870
  %5917 = zext i32 %5916 to i64
  store i64 %5917, i64* %RDX, align 8, !tbaa !2428
  %5918 = icmp ult i32 %5916, %5870
  %5919 = icmp ult i32 %5916, %5915
  %5920 = or i1 %5918, %5919
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %70, align 1, !tbaa !2432
  %5922 = and i32 %5916, 255
  %5923 = tail call i32 @llvm.ctpop.i32(i32 %5922) #8
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  store i8 %5926, i8* %76, align 1, !tbaa !2446
  %5927 = xor i64 %5913, %5871
  %5928 = trunc i64 %5927 to i32
  %5929 = xor i32 %5928, %5916
  %5930 = lshr i32 %5929, 4
  %5931 = trunc i32 %5930 to i8
  %5932 = and i8 %5931, 1
  store i8 %5932, i8* %81, align 1, !tbaa !2447
  %5933 = icmp eq i32 %5916, 0
  %5934 = zext i1 %5933 to i8
  store i8 %5934, i8* %84, align 1, !tbaa !2448
  %5935 = lshr i32 %5916, 31
  %5936 = trunc i32 %5935 to i8
  store i8 %5936, i8* %87, align 1, !tbaa !2449
  %5937 = lshr i32 %5915, 31
  %5938 = xor i32 %5935, %5889
  %5939 = xor i32 %5935, %5937
  %5940 = add nuw nsw i32 %5938, %5939
  %5941 = icmp eq i32 %5940, 2
  %5942 = zext i1 %5941 to i8
  store i8 %5942, i8* %93, align 1, !tbaa !2450
  %5943 = add i64 %5897, -60
  %5944 = add i64 %5756, 73
  store i64 %5944, i64* %PC, align 8
  %5945 = inttoptr i64 %5943 to i32*
  %5946 = load i32, i32* %5945, align 4
  %5947 = add i32 %5946, %5916
  %5948 = zext i32 %5947 to i64
  store i64 %5948, i64* %RDX, align 8, !tbaa !2428
  %5949 = icmp ult i32 %5947, %5916
  %5950 = icmp ult i32 %5947, %5946
  %5951 = or i1 %5949, %5950
  %5952 = zext i1 %5951 to i8
  store i8 %5952, i8* %70, align 1, !tbaa !2432
  %5953 = and i32 %5947, 255
  %5954 = tail call i32 @llvm.ctpop.i32(i32 %5953) #8
  %5955 = trunc i32 %5954 to i8
  %5956 = and i8 %5955, 1
  %5957 = xor i8 %5956, 1
  store i8 %5957, i8* %76, align 1, !tbaa !2446
  %5958 = xor i32 %5946, %5916
  %5959 = xor i32 %5958, %5947
  %5960 = lshr i32 %5959, 4
  %5961 = trunc i32 %5960 to i8
  %5962 = and i8 %5961, 1
  store i8 %5962, i8* %81, align 1, !tbaa !2447
  %5963 = icmp eq i32 %5947, 0
  %5964 = zext i1 %5963 to i8
  store i8 %5964, i8* %84, align 1, !tbaa !2448
  %5965 = lshr i32 %5947, 31
  %5966 = trunc i32 %5965 to i8
  store i8 %5966, i8* %87, align 1, !tbaa !2449
  %5967 = lshr i32 %5946, 31
  %5968 = xor i32 %5965, %5935
  %5969 = xor i32 %5965, %5967
  %5970 = add nuw nsw i32 %5968, %5969
  %5971 = icmp eq i32 %5970, 2
  %5972 = zext i1 %5971 to i8
  store i8 %5972, i8* %93, align 1, !tbaa !2450
  %5973 = sext i32 %5947 to i64
  store i64 %5973, i64* %RCX, align 8, !tbaa !2428
  %5974 = load i64, i64* %RAX, align 8
  %5975 = shl nsw i64 %5973, 2
  %5976 = add i64 %5975, %5974
  %5977 = add i64 %5756, 81
  store i64 %5977, i64* %PC, align 8
  %5978 = load <2 x float>, <2 x float>* %192, align 1
  %5979 = load <2 x i32>, <2 x i32>* %197, align 1
  %5980 = inttoptr i64 %5976 to float*
  %5981 = load float, float* %5980, align 4
  %5982 = extractelement <2 x float> %5978, i32 0
  %5983 = fmul float %5982, %5981
  store float %5983, float* %193, align 1, !tbaa !2451
  %5984 = bitcast <2 x float> %5978 to <2 x i32>
  %5985 = extractelement <2 x i32> %5984, i32 1
  store i32 %5985, i32* %188, align 1, !tbaa !2451
  %5986 = extractelement <2 x i32> %5979, i32 0
  store i32 %5986, i32* %189, align 1, !tbaa !2451
  %5987 = extractelement <2 x i32> %5979, i32 1
  store i32 %5987, i32* %191, align 1, !tbaa !2451
  %5988 = load i64, i64* %RBP, align 8
  %5989 = add i64 %5988, -40
  %5990 = add i64 %5756, 85
  store i64 %5990, i64* %PC, align 8
  %5991 = inttoptr i64 %5989 to i64*
  %5992 = load i64, i64* %5991, align 8
  store i64 %5992, i64* %RAX, align 8, !tbaa !2428
  %5993 = add i64 %5756, 88
  store i64 %5993, i64* %PC, align 8
  %5994 = inttoptr i64 %5992 to i64*
  %5995 = load i64, i64* %5994, align 8
  store i64 %5995, i64* %RAX, align 8, !tbaa !2428
  %5996 = add i64 %5756, 92
  store i64 %5996, i64* %PC, align 8
  %5997 = load i64, i64* %5991, align 8
  store i64 %5997, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5998 = add i64 %5756, 100
  store i64 %5998, i64* %PC, align 8
  %5999 = load i64, i64* %5991, align 8
  store i64 %5999, i64* %RCX, align 8, !tbaa !2428
  %6000 = add i64 %5756, 104
  store i64 %6000, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6001 = add i64 %5756, 108
  store i64 %6001, i64* %PC, align 8
  %6002 = load i64, i64* %5991, align 8
  store i64 %6002, i64* %RCX, align 8, !tbaa !2428
  %6003 = add i64 %5756, 112
  store i64 %6003, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6004 = add i64 %5988, -52
  %6005 = add i64 %5756, 115
  store i64 %6005, i64* %PC, align 8
  %6006 = inttoptr i64 %6004 to i32*
  %6007 = load i32, i32* %6006, align 4
  %6008 = zext i32 %6007 to i64
  store i64 %6008, i64* %RSI, align 8, !tbaa !2428
  %6009 = add i64 %5756, 119
  store i64 %6009, i64* %PC, align 8
  %6010 = load i64, i64* %5991, align 8
  store i64 %6010, i64* %RCX, align 8, !tbaa !2428
  %6011 = add i64 %6010, 16
  %6012 = add i64 %5756, 123
  store i64 %6012, i64* %PC, align 8
  %6013 = inttoptr i64 %6011 to i32*
  %6014 = load i32, i32* %6013, align 4
  %6015 = sext i32 %6007 to i64
  %6016 = sext i32 %6014 to i64
  %6017 = mul nsw i64 %6016, %6015
  %6018 = trunc i64 %6017 to i32
  %6019 = and i64 %6017, 4294967295
  store i64 %6019, i64* %RSI, align 8, !tbaa !2428
  %6020 = shl i64 %6017, 32
  %6021 = ashr exact i64 %6020, 32
  %6022 = icmp ne i64 %6021, %6017
  %6023 = zext i1 %6022 to i8
  store i8 %6023, i8* %70, align 1, !tbaa !2432
  %6024 = and i32 %6018, 255
  %6025 = tail call i32 @llvm.ctpop.i32(i32 %6024) #8
  %6026 = trunc i32 %6025 to i8
  %6027 = and i8 %6026, 1
  %6028 = xor i8 %6027, 1
  store i8 %6028, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6029 = lshr i32 %6018, 31
  %6030 = trunc i32 %6029 to i8
  store i8 %6030, i8* %87, align 1, !tbaa !2449
  store i8 %6023, i8* %93, align 1, !tbaa !2450
  %6031 = add i64 %5756, 127
  store i64 %6031, i64* %PC, align 8
  %6032 = load i64, i64* %5991, align 8
  store i64 %6032, i64* %RCX, align 8, !tbaa !2428
  %6033 = add i64 %6032, 20
  %6034 = add i64 %5756, 131
  store i64 %6034, i64* %PC, align 8
  %6035 = inttoptr i64 %6033 to i32*
  %6036 = load i32, i32* %6035, align 4
  %6037 = sext i32 %6036 to i64
  %6038 = mul nsw i64 %6037, %6021
  %6039 = and i64 %6038, 4294967295
  store i64 %6039, i64* %RSI, align 8, !tbaa !2428
  %6040 = trunc i64 %6038 to i32
  store i64 %6039, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6041 = and i32 %6040, 255
  %6042 = tail call i32 @llvm.ctpop.i32(i32 %6041) #8
  %6043 = trunc i32 %6042 to i8
  %6044 = and i8 %6043, 1
  %6045 = xor i8 %6044, 1
  store i8 %6045, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6046 = icmp eq i32 %6040, 0
  %6047 = zext i1 %6046 to i8
  store i8 %6047, i8* %84, align 1, !tbaa !2448
  %6048 = lshr i32 %6040, 31
  %6049 = trunc i32 %6048 to i8
  store i8 %6049, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6050 = load i64, i64* %RBP, align 8
  %6051 = add i64 %6050, -56
  %6052 = add i64 %5756, 136
  store i64 %6052, i64* %PC, align 8
  %6053 = inttoptr i64 %6051 to i32*
  %6054 = load i32, i32* %6053, align 4
  %6055 = zext i32 %6054 to i64
  store i64 %6055, i64* %RSI, align 8, !tbaa !2428
  %6056 = add i64 %6050, -40
  %6057 = add i64 %5756, 140
  store i64 %6057, i64* %PC, align 8
  %6058 = inttoptr i64 %6056 to i64*
  %6059 = load i64, i64* %6058, align 8
  store i64 %6059, i64* %RCX, align 8, !tbaa !2428
  %6060 = add i64 %6059, 20
  %6061 = add i64 %5756, 144
  store i64 %6061, i64* %PC, align 8
  %6062 = inttoptr i64 %6060 to i32*
  %6063 = load i32, i32* %6062, align 4
  %6064 = sext i32 %6054 to i64
  %6065 = sext i32 %6063 to i64
  %6066 = mul nsw i64 %6065, %6064
  %6067 = and i64 %6066, 4294967295
  store i64 %6067, i64* %RSI, align 8, !tbaa !2428
  %6068 = trunc i64 %6066 to i32
  %6069 = add i32 %6068, %6040
  %6070 = zext i32 %6069 to i64
  store i64 %6070, i64* %RDX, align 8, !tbaa !2428
  %6071 = icmp ult i32 %6069, %6040
  %6072 = icmp ult i32 %6069, %6068
  %6073 = or i1 %6071, %6072
  %6074 = zext i1 %6073 to i8
  store i8 %6074, i8* %70, align 1, !tbaa !2432
  %6075 = and i32 %6069, 255
  %6076 = tail call i32 @llvm.ctpop.i32(i32 %6075) #8
  %6077 = trunc i32 %6076 to i8
  %6078 = and i8 %6077, 1
  %6079 = xor i8 %6078, 1
  store i8 %6079, i8* %76, align 1, !tbaa !2446
  %6080 = xor i64 %6066, %6038
  %6081 = trunc i64 %6080 to i32
  %6082 = xor i32 %6081, %6069
  %6083 = lshr i32 %6082, 4
  %6084 = trunc i32 %6083 to i8
  %6085 = and i8 %6084, 1
  store i8 %6085, i8* %81, align 1, !tbaa !2447
  %6086 = icmp eq i32 %6069, 0
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %84, align 1, !tbaa !2448
  %6088 = lshr i32 %6069, 31
  %6089 = trunc i32 %6088 to i8
  store i8 %6089, i8* %87, align 1, !tbaa !2449
  %6090 = lshr i32 %6068, 31
  %6091 = xor i32 %6088, %6048
  %6092 = xor i32 %6088, %6090
  %6093 = add nuw nsw i32 %6091, %6092
  %6094 = icmp eq i32 %6093, 2
  %6095 = zext i1 %6094 to i8
  store i8 %6095, i8* %93, align 1, !tbaa !2450
  %6096 = add i64 %6050, -60
  %6097 = add i64 %5756, 149
  store i64 %6097, i64* %PC, align 8
  %6098 = inttoptr i64 %6096 to i32*
  %6099 = load i32, i32* %6098, align 4
  %6100 = add i32 %6099, %6069
  %6101 = zext i32 %6100 to i64
  store i64 %6101, i64* %RDX, align 8, !tbaa !2428
  %6102 = icmp ult i32 %6100, %6069
  %6103 = icmp ult i32 %6100, %6099
  %6104 = or i1 %6102, %6103
  %6105 = zext i1 %6104 to i8
  store i8 %6105, i8* %70, align 1, !tbaa !2432
  %6106 = and i32 %6100, 255
  %6107 = tail call i32 @llvm.ctpop.i32(i32 %6106) #8
  %6108 = trunc i32 %6107 to i8
  %6109 = and i8 %6108, 1
  %6110 = xor i8 %6109, 1
  store i8 %6110, i8* %76, align 1, !tbaa !2446
  %6111 = xor i32 %6099, %6069
  %6112 = xor i32 %6111, %6100
  %6113 = lshr i32 %6112, 4
  %6114 = trunc i32 %6113 to i8
  %6115 = and i8 %6114, 1
  store i8 %6115, i8* %81, align 1, !tbaa !2447
  %6116 = icmp eq i32 %6100, 0
  %6117 = zext i1 %6116 to i8
  store i8 %6117, i8* %84, align 1, !tbaa !2448
  %6118 = lshr i32 %6100, 31
  %6119 = trunc i32 %6118 to i8
  store i8 %6119, i8* %87, align 1, !tbaa !2449
  %6120 = lshr i32 %6099, 31
  %6121 = xor i32 %6118, %6088
  %6122 = xor i32 %6118, %6120
  %6123 = add nuw nsw i32 %6121, %6122
  %6124 = icmp eq i32 %6123, 2
  %6125 = zext i1 %6124 to i8
  store i8 %6125, i8* %93, align 1, !tbaa !2450
  %6126 = sext i32 %6100 to i64
  store i64 %6126, i64* %RCX, align 8, !tbaa !2428
  %6127 = load i64, i64* %RAX, align 8
  %6128 = shl nsw i64 %6126, 2
  %6129 = add i64 %6128, %6127
  %6130 = add i64 %5756, 157
  store i64 %6130, i64* %PC, align 8
  %6131 = load <2 x float>, <2 x float>* %192, align 1
  %6132 = load <2 x i32>, <2 x i32>* %197, align 1
  %6133 = inttoptr i64 %6129 to float*
  %6134 = load float, float* %6133, align 4
  %6135 = extractelement <2 x float> %6131, i32 0
  %6136 = fsub float %6135, %6134
  store float %6136, float* %193, align 1, !tbaa !2451
  %6137 = bitcast <2 x float> %6131 to <2 x i32>
  %6138 = extractelement <2 x i32> %6137, i32 1
  store i32 %6138, i32* %188, align 1, !tbaa !2451
  %6139 = extractelement <2 x i32> %6132, i32 0
  store i32 %6139, i32* %189, align 1, !tbaa !2451
  %6140 = extractelement <2 x i32> %6132, i32 1
  store i32 %6140, i32* %191, align 1, !tbaa !2451
  %6141 = load i64, i64* %RBP, align 8
  %6142 = add i64 %6141, -48
  %6143 = add i64 %5756, 161
  store i64 %6143, i64* %PC, align 8
  %6144 = inttoptr i64 %6142 to i64*
  %6145 = load i64, i64* %6144, align 8
  store i64 %6145, i64* %RAX, align 8, !tbaa !2428
  %6146 = add i64 %5756, 164
  store i64 %6146, i64* %PC, align 8
  %6147 = inttoptr i64 %6145 to i64*
  %6148 = load i64, i64* %6147, align 8
  store i64 %6148, i64* %RAX, align 8, !tbaa !2428
  %6149 = add i64 %5756, 168
  store i64 %6149, i64* %PC, align 8
  %6150 = load i64, i64* %6144, align 8
  store i64 %6150, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6151 = add i64 %5756, 176
  store i64 %6151, i64* %PC, align 8
  %6152 = load i64, i64* %6144, align 8
  store i64 %6152, i64* %RCX, align 8, !tbaa !2428
  %6153 = add i64 %5756, 180
  store i64 %6153, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6154 = add i64 %5756, 184
  store i64 %6154, i64* %PC, align 8
  %6155 = load i64, i64* %6144, align 8
  store i64 %6155, i64* %RCX, align 8, !tbaa !2428
  %6156 = add i64 %5756, 188
  store i64 %6156, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6157 = add i64 %6141, -52
  %6158 = add i64 %5756, 191
  store i64 %6158, i64* %PC, align 8
  %6159 = inttoptr i64 %6157 to i32*
  %6160 = load i32, i32* %6159, align 4
  %6161 = zext i32 %6160 to i64
  store i64 %6161, i64* %RSI, align 8, !tbaa !2428
  %6162 = add i64 %5756, 195
  store i64 %6162, i64* %PC, align 8
  %6163 = load i64, i64* %6144, align 8
  store i64 %6163, i64* %RCX, align 8, !tbaa !2428
  %6164 = add i64 %6163, 16
  %6165 = add i64 %5756, 199
  store i64 %6165, i64* %PC, align 8
  %6166 = inttoptr i64 %6164 to i32*
  %6167 = load i32, i32* %6166, align 4
  %6168 = sext i32 %6160 to i64
  %6169 = sext i32 %6167 to i64
  %6170 = mul nsw i64 %6169, %6168
  %6171 = trunc i64 %6170 to i32
  %6172 = and i64 %6170, 4294967295
  store i64 %6172, i64* %RSI, align 8, !tbaa !2428
  %6173 = shl i64 %6170, 32
  %6174 = ashr exact i64 %6173, 32
  %6175 = icmp ne i64 %6174, %6170
  %6176 = zext i1 %6175 to i8
  store i8 %6176, i8* %70, align 1, !tbaa !2432
  %6177 = and i32 %6171, 255
  %6178 = tail call i32 @llvm.ctpop.i32(i32 %6177) #8
  %6179 = trunc i32 %6178 to i8
  %6180 = and i8 %6179, 1
  %6181 = xor i8 %6180, 1
  store i8 %6181, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6182 = lshr i32 %6171, 31
  %6183 = trunc i32 %6182 to i8
  store i8 %6183, i8* %87, align 1, !tbaa !2449
  store i8 %6176, i8* %93, align 1, !tbaa !2450
  %6184 = add i64 %5756, 203
  store i64 %6184, i64* %PC, align 8
  %6185 = load i64, i64* %6144, align 8
  store i64 %6185, i64* %RCX, align 8, !tbaa !2428
  %6186 = add i64 %6185, 20
  %6187 = add i64 %5756, 207
  store i64 %6187, i64* %PC, align 8
  %6188 = inttoptr i64 %6186 to i32*
  %6189 = load i32, i32* %6188, align 4
  %6190 = sext i32 %6189 to i64
  %6191 = mul nsw i64 %6190, %6174
  %6192 = and i64 %6191, 4294967295
  store i64 %6192, i64* %RSI, align 8, !tbaa !2428
  %6193 = trunc i64 %6191 to i32
  store i64 %6192, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6194 = and i32 %6193, 255
  %6195 = tail call i32 @llvm.ctpop.i32(i32 %6194) #8
  %6196 = trunc i32 %6195 to i8
  %6197 = and i8 %6196, 1
  %6198 = xor i8 %6197, 1
  store i8 %6198, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6199 = icmp eq i32 %6193, 0
  %6200 = zext i1 %6199 to i8
  store i8 %6200, i8* %84, align 1, !tbaa !2448
  %6201 = lshr i32 %6193, 31
  %6202 = trunc i32 %6201 to i8
  store i8 %6202, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6203 = load i64, i64* %RBP, align 8
  %6204 = add i64 %6203, -56
  %6205 = add i64 %5756, 212
  store i64 %6205, i64* %PC, align 8
  %6206 = inttoptr i64 %6204 to i32*
  %6207 = load i32, i32* %6206, align 4
  %6208 = zext i32 %6207 to i64
  store i64 %6208, i64* %RSI, align 8, !tbaa !2428
  %6209 = add i64 %6203, -48
  %6210 = add i64 %5756, 216
  store i64 %6210, i64* %PC, align 8
  %6211 = inttoptr i64 %6209 to i64*
  %6212 = load i64, i64* %6211, align 8
  store i64 %6212, i64* %RCX, align 8, !tbaa !2428
  %6213 = add i64 %6212, 20
  %6214 = add i64 %5756, 220
  store i64 %6214, i64* %PC, align 8
  %6215 = inttoptr i64 %6213 to i32*
  %6216 = load i32, i32* %6215, align 4
  %6217 = sext i32 %6207 to i64
  %6218 = sext i32 %6216 to i64
  %6219 = mul nsw i64 %6218, %6217
  %6220 = and i64 %6219, 4294967295
  store i64 %6220, i64* %RSI, align 8, !tbaa !2428
  %6221 = trunc i64 %6219 to i32
  %6222 = add i32 %6221, %6193
  %6223 = zext i32 %6222 to i64
  store i64 %6223, i64* %RDX, align 8, !tbaa !2428
  %6224 = icmp ult i32 %6222, %6193
  %6225 = icmp ult i32 %6222, %6221
  %6226 = or i1 %6224, %6225
  %6227 = zext i1 %6226 to i8
  store i8 %6227, i8* %70, align 1, !tbaa !2432
  %6228 = and i32 %6222, 255
  %6229 = tail call i32 @llvm.ctpop.i32(i32 %6228) #8
  %6230 = trunc i32 %6229 to i8
  %6231 = and i8 %6230, 1
  %6232 = xor i8 %6231, 1
  store i8 %6232, i8* %76, align 1, !tbaa !2446
  %6233 = xor i64 %6219, %6191
  %6234 = trunc i64 %6233 to i32
  %6235 = xor i32 %6234, %6222
  %6236 = lshr i32 %6235, 4
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  store i8 %6238, i8* %81, align 1, !tbaa !2447
  %6239 = icmp eq i32 %6222, 0
  %6240 = zext i1 %6239 to i8
  store i8 %6240, i8* %84, align 1, !tbaa !2448
  %6241 = lshr i32 %6222, 31
  %6242 = trunc i32 %6241 to i8
  store i8 %6242, i8* %87, align 1, !tbaa !2449
  %6243 = lshr i32 %6221, 31
  %6244 = xor i32 %6241, %6201
  %6245 = xor i32 %6241, %6243
  %6246 = add nuw nsw i32 %6244, %6245
  %6247 = icmp eq i32 %6246, 2
  %6248 = zext i1 %6247 to i8
  store i8 %6248, i8* %93, align 1, !tbaa !2450
  %6249 = add i64 %6203, -60
  %6250 = add i64 %5756, 225
  store i64 %6250, i64* %PC, align 8
  %6251 = inttoptr i64 %6249 to i32*
  %6252 = load i32, i32* %6251, align 4
  %6253 = add i32 %6252, %6222
  %6254 = zext i32 %6253 to i64
  store i64 %6254, i64* %RDX, align 8, !tbaa !2428
  %6255 = icmp ult i32 %6253, %6222
  %6256 = icmp ult i32 %6253, %6252
  %6257 = or i1 %6255, %6256
  %6258 = zext i1 %6257 to i8
  store i8 %6258, i8* %70, align 1, !tbaa !2432
  %6259 = and i32 %6253, 255
  %6260 = tail call i32 @llvm.ctpop.i32(i32 %6259) #8
  %6261 = trunc i32 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = xor i8 %6262, 1
  store i8 %6263, i8* %76, align 1, !tbaa !2446
  %6264 = xor i32 %6252, %6222
  %6265 = xor i32 %6264, %6253
  %6266 = lshr i32 %6265, 4
  %6267 = trunc i32 %6266 to i8
  %6268 = and i8 %6267, 1
  store i8 %6268, i8* %81, align 1, !tbaa !2447
  %6269 = icmp eq i32 %6253, 0
  %6270 = zext i1 %6269 to i8
  store i8 %6270, i8* %84, align 1, !tbaa !2448
  %6271 = lshr i32 %6253, 31
  %6272 = trunc i32 %6271 to i8
  store i8 %6272, i8* %87, align 1, !tbaa !2449
  %6273 = lshr i32 %6252, 31
  %6274 = xor i32 %6271, %6241
  %6275 = xor i32 %6271, %6273
  %6276 = add nuw nsw i32 %6274, %6275
  %6277 = icmp eq i32 %6276, 2
  %6278 = zext i1 %6277 to i8
  store i8 %6278, i8* %93, align 1, !tbaa !2450
  %6279 = sext i32 %6253 to i64
  store i64 %6279, i64* %RCX, align 8, !tbaa !2428
  %6280 = load i64, i64* %RAX, align 8
  %6281 = shl nsw i64 %6279, 2
  %6282 = add i64 %6281, %6280
  %6283 = add i64 %5756, 233
  store i64 %6283, i64* %PC, align 8
  %6284 = load <2 x float>, <2 x float>* %192, align 1
  %6285 = load <2 x i32>, <2 x i32>* %197, align 1
  %6286 = inttoptr i64 %6282 to float*
  %6287 = load float, float* %6286, align 4
  %6288 = extractelement <2 x float> %6284, i32 0
  %6289 = fmul float %6288, %6287
  store float %6289, float* %193, align 1, !tbaa !2451
  %6290 = bitcast <2 x float> %6284 to <2 x i32>
  %6291 = extractelement <2 x i32> %6290, i32 1
  store i32 %6291, i32* %188, align 1, !tbaa !2451
  %6292 = extractelement <2 x i32> %6285, i32 0
  store i32 %6292, i32* %189, align 1, !tbaa !2451
  %6293 = extractelement <2 x i32> %6285, i32 1
  store i32 %6293, i32* %191, align 1, !tbaa !2451
  %6294 = load i64, i64* %RBP, align 8
  %6295 = add i64 %6294, -88
  %6296 = add i64 %5756, 238
  store i64 %6296, i64* %PC, align 8
  %6297 = load <2 x float>, <2 x float>* %192, align 1
  %6298 = extractelement <2 x float> %6297, i32 0
  %6299 = inttoptr i64 %6295 to float*
  store float %6298, float* %6299, align 4
  %6300 = load i64, i64* %RBP, align 8
  %6301 = add i64 %6300, -88
  %6302 = load i64, i64* %PC, align 8
  %6303 = add i64 %6302, 5
  store i64 %6303, i64* %PC, align 8
  %6304 = inttoptr i64 %6301 to float*
  %6305 = inttoptr i64 %6301 to i32*
  %6306 = load i32, i32* %6305, align 4
  store i32 %6306, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %6307 = add i64 %6302, 10
  store i64 %6307, i64* %PC, align 8
  %6308 = load <2 x float>, <2 x float>* %192, align 1
  %6309 = load <2 x i32>, <2 x i32>* %197, align 1
  %6310 = load float, float* %6304, align 4
  %6311 = extractelement <2 x float> %6308, i32 0
  %6312 = fmul float %6311, %6310
  store float %6312, float* %193, align 1, !tbaa !2451
  %6313 = bitcast <2 x float> %6308 to <2 x i32>
  %6314 = extractelement <2 x i32> %6313, i32 1
  store i32 %6314, i32* %188, align 1, !tbaa !2451
  %6315 = extractelement <2 x i32> %6309, i32 0
  store i32 %6315, i32* %189, align 1, !tbaa !2451
  %6316 = extractelement <2 x i32> %6309, i32 1
  store i32 %6316, i32* %191, align 1, !tbaa !2451
  %6317 = add i64 %6300, -80
  %6318 = add i64 %6302, 15
  store i64 %6318, i64* %PC, align 8
  %6319 = load <2 x float>, <2 x float>* %192, align 1
  %6320 = load <2 x i32>, <2 x i32>* %197, align 1
  %6321 = inttoptr i64 %6317 to float*
  %6322 = load float, float* %6321, align 4
  %6323 = extractelement <2 x float> %6319, i32 0
  %6324 = fadd float %6323, %6322
  store float %6324, float* %193, align 1, !tbaa !2451
  %6325 = bitcast <2 x float> %6319 to <2 x i32>
  %6326 = extractelement <2 x i32> %6325, i32 1
  store i32 %6326, i32* %188, align 1, !tbaa !2451
  %6327 = extractelement <2 x i32> %6320, i32 0
  store i32 %6327, i32* %189, align 1, !tbaa !2451
  %6328 = extractelement <2 x i32> %6320, i32 1
  store i32 %6328, i32* %191, align 1, !tbaa !2451
  %6329 = add i64 %6302, 20
  store i64 %6329, i64* %PC, align 8
  %6330 = load <2 x float>, <2 x float>* %192, align 1
  %6331 = extractelement <2 x float> %6330, i32 0
  store float %6331, float* %6321, align 4
  %6332 = load i64, i64* %RBP, align 8
  %6333 = add i64 %6332, -40
  %6334 = load i64, i64* %PC, align 8
  %6335 = add i64 %6334, 4
  store i64 %6335, i64* %PC, align 8
  %6336 = inttoptr i64 %6333 to i64*
  %6337 = load i64, i64* %6336, align 8
  store i64 %6337, i64* %RAX, align 8, !tbaa !2428
  %6338 = add i64 %6334, 7
  store i64 %6338, i64* %PC, align 8
  %6339 = inttoptr i64 %6337 to i64*
  %6340 = load i64, i64* %6339, align 8
  store i64 %6340, i64* %RAX, align 8, !tbaa !2428
  %6341 = add i64 %6334, 11
  store i64 %6341, i64* %PC, align 8
  %6342 = load i64, i64* %6336, align 8
  store i64 %6342, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6343 = add i64 %6334, 19
  store i64 %6343, i64* %PC, align 8
  %6344 = load i64, i64* %6336, align 8
  store i64 %6344, i64* %RCX, align 8, !tbaa !2428
  %6345 = add i64 %6334, 23
  store i64 %6345, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6346 = add i64 %6334, 27
  store i64 %6346, i64* %PC, align 8
  %6347 = load i64, i64* %6336, align 8
  store i64 %6347, i64* %RCX, align 8, !tbaa !2428
  %6348 = add i64 %6334, 31
  store i64 %6348, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6349 = add i64 %6332, -52
  %6350 = add i64 %6334, 34
  store i64 %6350, i64* %PC, align 8
  %6351 = inttoptr i64 %6349 to i32*
  %6352 = load i32, i32* %6351, align 4
  %6353 = zext i32 %6352 to i64
  store i64 %6353, i64* %RSI, align 8, !tbaa !2428
  %6354 = add i64 %6334, 38
  store i64 %6354, i64* %PC, align 8
  %6355 = load i64, i64* %6336, align 8
  store i64 %6355, i64* %RCX, align 8, !tbaa !2428
  %6356 = add i64 %6355, 16
  %6357 = add i64 %6334, 42
  store i64 %6357, i64* %PC, align 8
  %6358 = inttoptr i64 %6356 to i32*
  %6359 = load i32, i32* %6358, align 4
  %6360 = sext i32 %6352 to i64
  %6361 = sext i32 %6359 to i64
  %6362 = mul nsw i64 %6361, %6360
  %6363 = trunc i64 %6362 to i32
  %6364 = and i64 %6362, 4294967295
  store i64 %6364, i64* %RSI, align 8, !tbaa !2428
  %6365 = shl i64 %6362, 32
  %6366 = ashr exact i64 %6365, 32
  %6367 = icmp ne i64 %6366, %6362
  %6368 = zext i1 %6367 to i8
  store i8 %6368, i8* %70, align 1, !tbaa !2432
  %6369 = and i32 %6363, 255
  %6370 = tail call i32 @llvm.ctpop.i32(i32 %6369) #8
  %6371 = trunc i32 %6370 to i8
  %6372 = and i8 %6371, 1
  %6373 = xor i8 %6372, 1
  store i8 %6373, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6374 = lshr i32 %6363, 31
  %6375 = trunc i32 %6374 to i8
  store i8 %6375, i8* %87, align 1, !tbaa !2449
  store i8 %6368, i8* %93, align 1, !tbaa !2450
  %6376 = load i64, i64* %RBP, align 8
  %6377 = add i64 %6376, -40
  %6378 = add i64 %6334, 46
  store i64 %6378, i64* %PC, align 8
  %6379 = inttoptr i64 %6377 to i64*
  %6380 = load i64, i64* %6379, align 8
  store i64 %6380, i64* %RCX, align 8, !tbaa !2428
  %6381 = add i64 %6380, 20
  %6382 = add i64 %6334, 50
  store i64 %6382, i64* %PC, align 8
  %6383 = inttoptr i64 %6381 to i32*
  %6384 = load i32, i32* %6383, align 4
  %6385 = sext i32 %6384 to i64
  %6386 = mul nsw i64 %6385, %6366
  %6387 = and i64 %6386, 4294967295
  store i64 %6387, i64* %RSI, align 8, !tbaa !2428
  %6388 = trunc i64 %6386 to i32
  store i64 %6387, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6389 = and i32 %6388, 255
  %6390 = tail call i32 @llvm.ctpop.i32(i32 %6389) #8
  %6391 = trunc i32 %6390 to i8
  %6392 = and i8 %6391, 1
  %6393 = xor i8 %6392, 1
  store i8 %6393, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6394 = icmp eq i32 %6388, 0
  %6395 = zext i1 %6394 to i8
  store i8 %6395, i8* %84, align 1, !tbaa !2448
  %6396 = lshr i32 %6388, 31
  %6397 = trunc i32 %6396 to i8
  store i8 %6397, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6398 = add i64 %6376, -56
  %6399 = add i64 %6334, 55
  store i64 %6399, i64* %PC, align 8
  %6400 = inttoptr i64 %6398 to i32*
  %6401 = load i32, i32* %6400, align 4
  %6402 = zext i32 %6401 to i64
  store i64 %6402, i64* %RSI, align 8, !tbaa !2428
  %6403 = add i64 %6334, 59
  store i64 %6403, i64* %PC, align 8
  %6404 = load i64, i64* %6379, align 8
  store i64 %6404, i64* %RCX, align 8, !tbaa !2428
  %6405 = add i64 %6404, 20
  %6406 = add i64 %6334, 63
  store i64 %6406, i64* %PC, align 8
  %6407 = inttoptr i64 %6405 to i32*
  %6408 = load i32, i32* %6407, align 4
  %6409 = sext i32 %6401 to i64
  %6410 = sext i32 %6408 to i64
  %6411 = mul nsw i64 %6410, %6409
  %6412 = and i64 %6411, 4294967295
  store i64 %6412, i64* %RSI, align 8, !tbaa !2428
  %6413 = trunc i64 %6411 to i32
  %6414 = add i32 %6413, %6388
  %6415 = zext i32 %6414 to i64
  store i64 %6415, i64* %RDX, align 8, !tbaa !2428
  %6416 = icmp ult i32 %6414, %6388
  %6417 = icmp ult i32 %6414, %6413
  %6418 = or i1 %6416, %6417
  %6419 = zext i1 %6418 to i8
  store i8 %6419, i8* %70, align 1, !tbaa !2432
  %6420 = and i32 %6414, 255
  %6421 = tail call i32 @llvm.ctpop.i32(i32 %6420) #8
  %6422 = trunc i32 %6421 to i8
  %6423 = and i8 %6422, 1
  %6424 = xor i8 %6423, 1
  store i8 %6424, i8* %76, align 1, !tbaa !2446
  %6425 = xor i64 %6411, %6386
  %6426 = trunc i64 %6425 to i32
  %6427 = xor i32 %6426, %6414
  %6428 = lshr i32 %6427, 4
  %6429 = trunc i32 %6428 to i8
  %6430 = and i8 %6429, 1
  store i8 %6430, i8* %81, align 1, !tbaa !2447
  %6431 = icmp eq i32 %6414, 0
  %6432 = zext i1 %6431 to i8
  store i8 %6432, i8* %84, align 1, !tbaa !2448
  %6433 = lshr i32 %6414, 31
  %6434 = trunc i32 %6433 to i8
  store i8 %6434, i8* %87, align 1, !tbaa !2449
  %6435 = lshr i32 %6413, 31
  %6436 = xor i32 %6433, %6396
  %6437 = xor i32 %6433, %6435
  %6438 = add nuw nsw i32 %6436, %6437
  %6439 = icmp eq i32 %6438, 2
  %6440 = zext i1 %6439 to i8
  store i8 %6440, i8* %93, align 1, !tbaa !2450
  %6441 = load i64, i64* %RBP, align 8
  %6442 = add i64 %6441, -60
  %6443 = add i64 %6334, 68
  store i64 %6443, i64* %PC, align 8
  %6444 = inttoptr i64 %6442 to i32*
  %6445 = load i32, i32* %6444, align 4
  %6446 = add i32 %6445, %6414
  %6447 = zext i32 %6446 to i64
  store i64 %6447, i64* %RDX, align 8, !tbaa !2428
  %6448 = icmp ult i32 %6446, %6414
  %6449 = icmp ult i32 %6446, %6445
  %6450 = or i1 %6448, %6449
  %6451 = zext i1 %6450 to i8
  store i8 %6451, i8* %70, align 1, !tbaa !2432
  %6452 = and i32 %6446, 255
  %6453 = tail call i32 @llvm.ctpop.i32(i32 %6452) #8
  %6454 = trunc i32 %6453 to i8
  %6455 = and i8 %6454, 1
  %6456 = xor i8 %6455, 1
  store i8 %6456, i8* %76, align 1, !tbaa !2446
  %6457 = xor i32 %6445, %6414
  %6458 = xor i32 %6457, %6446
  %6459 = lshr i32 %6458, 4
  %6460 = trunc i32 %6459 to i8
  %6461 = and i8 %6460, 1
  store i8 %6461, i8* %81, align 1, !tbaa !2447
  %6462 = icmp eq i32 %6446, 0
  %6463 = zext i1 %6462 to i8
  store i8 %6463, i8* %84, align 1, !tbaa !2448
  %6464 = lshr i32 %6446, 31
  %6465 = trunc i32 %6464 to i8
  store i8 %6465, i8* %87, align 1, !tbaa !2449
  %6466 = lshr i32 %6445, 31
  %6467 = xor i32 %6464, %6433
  %6468 = xor i32 %6464, %6466
  %6469 = add nuw nsw i32 %6467, %6468
  %6470 = icmp eq i32 %6469, 2
  %6471 = zext i1 %6470 to i8
  store i8 %6471, i8* %93, align 1, !tbaa !2450
  %6472 = sext i32 %6446 to i64
  store i64 %6472, i64* %RCX, align 8, !tbaa !2428
  %6473 = load i64, i64* %RAX, align 8
  %6474 = shl nsw i64 %6472, 2
  %6475 = add i64 %6474, %6473
  %6476 = add i64 %6334, 76
  store i64 %6476, i64* %PC, align 8
  %6477 = inttoptr i64 %6475 to i32*
  %6478 = load i32, i32* %6477, align 4
  store i32 %6478, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %6479 = load i32, i32* bitcast (%omega_type* @omega to i32*), align 8
  store i32 %6479, i32* %868, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %6480 = add i64 %6441, -88
  %6481 = add i64 %6334, 90
  store i64 %6481, i64* %PC, align 8
  %6482 = load <2 x float>, <2 x float>* %206, align 1
  %6483 = load <2 x i32>, <2 x i32>* %207, align 1
  %6484 = inttoptr i64 %6480 to float*
  %6485 = load float, float* %6484, align 4
  %6486 = extractelement <2 x float> %6482, i32 0
  %6487 = fmul float %6486, %6485
  store float %6487, float* %199, align 1, !tbaa !2451
  %6488 = bitcast <2 x float> %6482 to <2 x i32>
  %6489 = extractelement <2 x i32> %6488, i32 1
  store i32 %6489, i32* %208, align 1, !tbaa !2451
  %6490 = extractelement <2 x i32> %6483, i32 0
  store i32 %6490, i32* %209, align 1, !tbaa !2451
  %6491 = extractelement <2 x i32> %6483, i32 1
  store i32 %6491, i32* %210, align 1, !tbaa !2451
  %6492 = load <2 x float>, <2 x float>* %192, align 1
  %6493 = load <2 x i32>, <2 x i32>* %197, align 1
  %6494 = load <2 x float>, <2 x float>* %206, align 1
  %6495 = extractelement <2 x float> %6492, i32 0
  %6496 = extractelement <2 x float> %6494, i32 0
  %6497 = fadd float %6495, %6496
  store float %6497, float* %193, align 1, !tbaa !2451
  %6498 = bitcast <2 x float> %6492 to <2 x i32>
  %6499 = extractelement <2 x i32> %6498, i32 1
  store i32 %6499, i32* %188, align 1, !tbaa !2451
  %6500 = extractelement <2 x i32> %6493, i32 0
  store i32 %6500, i32* %189, align 1, !tbaa !2451
  %6501 = extractelement <2 x i32> %6493, i32 1
  store i32 %6501, i32* %191, align 1, !tbaa !2451
  %6502 = add i64 %6441, 24
  %6503 = add i64 %6334, 98
  store i64 %6503, i64* %PC, align 8
  %6504 = inttoptr i64 %6502 to i64*
  %6505 = load i64, i64* %6504, align 8
  store i64 %6505, i64* %RAX, align 8, !tbaa !2428
  %6506 = add i64 %6334, 101
  store i64 %6506, i64* %PC, align 8
  %6507 = inttoptr i64 %6505 to i64*
  %6508 = load i64, i64* %6507, align 8
  store i64 %6508, i64* %RAX, align 8, !tbaa !2428
  %6509 = load i64, i64* %RBP, align 8
  %6510 = add i64 %6509, 24
  %6511 = add i64 %6334, 105
  store i64 %6511, i64* %PC, align 8
  %6512 = inttoptr i64 %6510 to i64*
  %6513 = load i64, i64* %6512, align 8
  store i64 %6513, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6514 = add i64 %6334, 113
  store i64 %6514, i64* %PC, align 8
  %6515 = load i64, i64* %6512, align 8
  store i64 %6515, i64* %RCX, align 8, !tbaa !2428
  %6516 = add i64 %6334, 117
  store i64 %6516, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6517 = add i64 %6334, 121
  store i64 %6517, i64* %PC, align 8
  %6518 = load i64, i64* %6512, align 8
  store i64 %6518, i64* %RCX, align 8, !tbaa !2428
  %6519 = add i64 %6334, 125
  store i64 %6519, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6520 = add i64 %6509, -52
  %6521 = add i64 %6334, 128
  store i64 %6521, i64* %PC, align 8
  %6522 = inttoptr i64 %6520 to i32*
  %6523 = load i32, i32* %6522, align 4
  %6524 = zext i32 %6523 to i64
  store i64 %6524, i64* %RSI, align 8, !tbaa !2428
  %6525 = add i64 %6334, 132
  store i64 %6525, i64* %PC, align 8
  %6526 = load i64, i64* %6512, align 8
  store i64 %6526, i64* %RCX, align 8, !tbaa !2428
  %6527 = add i64 %6526, 16
  %6528 = add i64 %6334, 136
  store i64 %6528, i64* %PC, align 8
  %6529 = inttoptr i64 %6527 to i32*
  %6530 = load i32, i32* %6529, align 4
  %6531 = sext i32 %6523 to i64
  %6532 = sext i32 %6530 to i64
  %6533 = mul nsw i64 %6532, %6531
  %6534 = trunc i64 %6533 to i32
  %6535 = and i64 %6533, 4294967295
  store i64 %6535, i64* %RSI, align 8, !tbaa !2428
  %6536 = shl i64 %6533, 32
  %6537 = ashr exact i64 %6536, 32
  %6538 = icmp ne i64 %6537, %6533
  %6539 = zext i1 %6538 to i8
  store i8 %6539, i8* %70, align 1, !tbaa !2432
  %6540 = and i32 %6534, 255
  %6541 = tail call i32 @llvm.ctpop.i32(i32 %6540) #8
  %6542 = trunc i32 %6541 to i8
  %6543 = and i8 %6542, 1
  %6544 = xor i8 %6543, 1
  store i8 %6544, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6545 = lshr i32 %6534, 31
  %6546 = trunc i32 %6545 to i8
  store i8 %6546, i8* %87, align 1, !tbaa !2449
  store i8 %6539, i8* %93, align 1, !tbaa !2450
  %6547 = add i64 %6334, 140
  store i64 %6547, i64* %PC, align 8
  %6548 = load i64, i64* %6512, align 8
  store i64 %6548, i64* %RCX, align 8, !tbaa !2428
  %6549 = add i64 %6548, 20
  %6550 = add i64 %6334, 144
  store i64 %6550, i64* %PC, align 8
  %6551 = inttoptr i64 %6549 to i32*
  %6552 = load i32, i32* %6551, align 4
  %6553 = sext i32 %6552 to i64
  %6554 = mul nsw i64 %6553, %6537
  %6555 = and i64 %6554, 4294967295
  store i64 %6555, i64* %RSI, align 8, !tbaa !2428
  %6556 = trunc i64 %6554 to i32
  store i64 %6555, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6557 = and i32 %6556, 255
  %6558 = tail call i32 @llvm.ctpop.i32(i32 %6557) #8
  %6559 = trunc i32 %6558 to i8
  %6560 = and i8 %6559, 1
  %6561 = xor i8 %6560, 1
  store i8 %6561, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6562 = icmp eq i32 %6556, 0
  %6563 = zext i1 %6562 to i8
  store i8 %6563, i8* %84, align 1, !tbaa !2448
  %6564 = lshr i32 %6556, 31
  %6565 = trunc i32 %6564 to i8
  store i8 %6565, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6566 = load i64, i64* %RBP, align 8
  %6567 = add i64 %6566, -56
  %6568 = add i64 %6334, 149
  store i64 %6568, i64* %PC, align 8
  %6569 = inttoptr i64 %6567 to i32*
  %6570 = load i32, i32* %6569, align 4
  %6571 = zext i32 %6570 to i64
  store i64 %6571, i64* %RSI, align 8, !tbaa !2428
  %6572 = add i64 %6566, 24
  %6573 = add i64 %6334, 153
  store i64 %6573, i64* %PC, align 8
  %6574 = inttoptr i64 %6572 to i64*
  %6575 = load i64, i64* %6574, align 8
  store i64 %6575, i64* %RCX, align 8, !tbaa !2428
  %6576 = add i64 %6575, 20
  %6577 = add i64 %6334, 157
  store i64 %6577, i64* %PC, align 8
  %6578 = inttoptr i64 %6576 to i32*
  %6579 = load i32, i32* %6578, align 4
  %6580 = sext i32 %6570 to i64
  %6581 = sext i32 %6579 to i64
  %6582 = mul nsw i64 %6581, %6580
  %6583 = and i64 %6582, 4294967295
  store i64 %6583, i64* %RSI, align 8, !tbaa !2428
  %6584 = trunc i64 %6582 to i32
  %6585 = add i32 %6584, %6556
  %6586 = zext i32 %6585 to i64
  store i64 %6586, i64* %RDX, align 8, !tbaa !2428
  %6587 = icmp ult i32 %6585, %6556
  %6588 = icmp ult i32 %6585, %6584
  %6589 = or i1 %6587, %6588
  %6590 = zext i1 %6589 to i8
  store i8 %6590, i8* %70, align 1, !tbaa !2432
  %6591 = and i32 %6585, 255
  %6592 = tail call i32 @llvm.ctpop.i32(i32 %6591) #8
  %6593 = trunc i32 %6592 to i8
  %6594 = and i8 %6593, 1
  %6595 = xor i8 %6594, 1
  store i8 %6595, i8* %76, align 1, !tbaa !2446
  %6596 = xor i64 %6582, %6554
  %6597 = trunc i64 %6596 to i32
  %6598 = xor i32 %6597, %6585
  %6599 = lshr i32 %6598, 4
  %6600 = trunc i32 %6599 to i8
  %6601 = and i8 %6600, 1
  store i8 %6601, i8* %81, align 1, !tbaa !2447
  %6602 = icmp eq i32 %6585, 0
  %6603 = zext i1 %6602 to i8
  store i8 %6603, i8* %84, align 1, !tbaa !2448
  %6604 = lshr i32 %6585, 31
  %6605 = trunc i32 %6604 to i8
  store i8 %6605, i8* %87, align 1, !tbaa !2449
  %6606 = lshr i32 %6584, 31
  %6607 = xor i32 %6604, %6564
  %6608 = xor i32 %6604, %6606
  %6609 = add nuw nsw i32 %6607, %6608
  %6610 = icmp eq i32 %6609, 2
  %6611 = zext i1 %6610 to i8
  store i8 %6611, i8* %93, align 1, !tbaa !2450
  %6612 = add i64 %6566, -60
  %6613 = add i64 %6334, 162
  store i64 %6613, i64* %PC, align 8
  %6614 = inttoptr i64 %6612 to i32*
  %6615 = load i32, i32* %6614, align 4
  %6616 = add i32 %6615, %6585
  %6617 = zext i32 %6616 to i64
  store i64 %6617, i64* %RDX, align 8, !tbaa !2428
  %6618 = icmp ult i32 %6616, %6585
  %6619 = icmp ult i32 %6616, %6615
  %6620 = or i1 %6618, %6619
  %6621 = zext i1 %6620 to i8
  store i8 %6621, i8* %70, align 1, !tbaa !2432
  %6622 = and i32 %6616, 255
  %6623 = tail call i32 @llvm.ctpop.i32(i32 %6622) #8
  %6624 = trunc i32 %6623 to i8
  %6625 = and i8 %6624, 1
  %6626 = xor i8 %6625, 1
  store i8 %6626, i8* %76, align 1, !tbaa !2446
  %6627 = xor i32 %6615, %6585
  %6628 = xor i32 %6627, %6616
  %6629 = lshr i32 %6628, 4
  %6630 = trunc i32 %6629 to i8
  %6631 = and i8 %6630, 1
  store i8 %6631, i8* %81, align 1, !tbaa !2447
  %6632 = icmp eq i32 %6616, 0
  %6633 = zext i1 %6632 to i8
  store i8 %6633, i8* %84, align 1, !tbaa !2448
  %6634 = lshr i32 %6616, 31
  %6635 = trunc i32 %6634 to i8
  store i8 %6635, i8* %87, align 1, !tbaa !2449
  %6636 = lshr i32 %6615, 31
  %6637 = xor i32 %6634, %6604
  %6638 = xor i32 %6634, %6636
  %6639 = add nuw nsw i32 %6637, %6638
  %6640 = icmp eq i32 %6639, 2
  %6641 = zext i1 %6640 to i8
  store i8 %6641, i8* %93, align 1, !tbaa !2450
  %6642 = sext i32 %6616 to i64
  store i64 %6642, i64* %RCX, align 8, !tbaa !2428
  %6643 = load i64, i64* %RAX, align 8
  %6644 = shl nsw i64 %6642, 2
  %6645 = add i64 %6644, %6643
  %6646 = add i64 %6334, 170
  store i64 %6646, i64* %PC, align 8
  %6647 = load <2 x float>, <2 x float>* %192, align 1
  %6648 = extractelement <2 x float> %6647, i32 0
  %6649 = inttoptr i64 %6645 to float*
  store float %6648, float* %6649, align 4
  %6650 = load i64, i64* %RBP, align 8
  %6651 = add i64 %6650, -60
  %6652 = load i64, i64* %PC, align 8
  %6653 = add i64 %6652, 3
  store i64 %6653, i64* %PC, align 8
  %6654 = inttoptr i64 %6651 to i32*
  %6655 = load i32, i32* %6654, align 4
  %6656 = add i32 %6655, 1
  %6657 = zext i32 %6656 to i64
  store i64 %6657, i64* %RAX, align 8, !tbaa !2428
  %6658 = icmp eq i32 %6655, -1
  %6659 = icmp eq i32 %6656, 0
  %6660 = or i1 %6658, %6659
  %6661 = zext i1 %6660 to i8
  store i8 %6661, i8* %70, align 1, !tbaa !2432
  %6662 = and i32 %6656, 255
  %6663 = tail call i32 @llvm.ctpop.i32(i32 %6662) #8
  %6664 = trunc i32 %6663 to i8
  %6665 = and i8 %6664, 1
  %6666 = xor i8 %6665, 1
  store i8 %6666, i8* %76, align 1, !tbaa !2446
  %6667 = xor i32 %6655, %6656
  %6668 = lshr i32 %6667, 4
  %6669 = trunc i32 %6668 to i8
  %6670 = and i8 %6669, 1
  store i8 %6670, i8* %81, align 1, !tbaa !2447
  %6671 = zext i1 %6659 to i8
  store i8 %6671, i8* %84, align 1, !tbaa !2448
  %6672 = lshr i32 %6656, 31
  %6673 = trunc i32 %6672 to i8
  store i8 %6673, i8* %87, align 1, !tbaa !2449
  %6674 = lshr i32 %6655, 31
  %6675 = xor i32 %6672, %6674
  %6676 = add nuw nsw i32 %6675, %6672
  %6677 = icmp eq i32 %6676, 2
  %6678 = zext i1 %6677 to i8
  store i8 %6678, i8* %93, align 1, !tbaa !2450
  %6679 = add i64 %6652, 9
  store i64 %6679, i64* %PC, align 8
  store i32 %6656, i32* %6654, align 4
  %6680 = load i64, i64* %PC, align 8
  %6681 = add i64 %6680, -2748
  store i64 %6681, i64* %PC, align 8, !tbaa !2428
  br label %block_400d6a

block_401858:                                     ; preds = %block_401943, %block_401851
  %6682 = phi i64 [ %6856, %block_401943 ], [ %.pre5, %block_401851 ]
  %6683 = load i64, i64* %RBP, align 8
  %6684 = add i64 %6683, -52
  %6685 = add i64 %6682, 3
  store i64 %6685, i64* %PC, align 8
  %6686 = inttoptr i64 %6684 to i32*
  %6687 = load i32, i32* %6686, align 4
  %6688 = zext i32 %6687 to i64
  store i64 %6688, i64* %RAX, align 8, !tbaa !2428
  %6689 = add i64 %6683, -68
  %6690 = add i64 %6682, 6
  store i64 %6690, i64* %PC, align 8
  %6691 = inttoptr i64 %6689 to i32*
  %6692 = load i32, i32* %6691, align 4
  %6693 = sub i32 %6687, %6692
  %6694 = icmp ult i32 %6687, %6692
  %6695 = zext i1 %6694 to i8
  store i8 %6695, i8* %70, align 1, !tbaa !2432
  %6696 = and i32 %6693, 255
  %6697 = tail call i32 @llvm.ctpop.i32(i32 %6696) #8
  %6698 = trunc i32 %6697 to i8
  %6699 = and i8 %6698, 1
  %6700 = xor i8 %6699, 1
  store i8 %6700, i8* %76, align 1, !tbaa !2446
  %6701 = xor i32 %6692, %6687
  %6702 = xor i32 %6701, %6693
  %6703 = lshr i32 %6702, 4
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  store i8 %6705, i8* %81, align 1, !tbaa !2447
  %6706 = icmp eq i32 %6693, 0
  %6707 = zext i1 %6706 to i8
  store i8 %6707, i8* %84, align 1, !tbaa !2448
  %6708 = lshr i32 %6693, 31
  %6709 = trunc i32 %6708 to i8
  store i8 %6709, i8* %87, align 1, !tbaa !2449
  %6710 = lshr i32 %6687, 31
  %6711 = lshr i32 %6692, 31
  %6712 = xor i32 %6711, %6710
  %6713 = xor i32 %6708, %6710
  %6714 = add nuw nsw i32 %6713, %6712
  %6715 = icmp eq i32 %6714, 2
  %6716 = zext i1 %6715 to i8
  store i8 %6716, i8* %93, align 1, !tbaa !2450
  %6717 = icmp ne i8 %6709, 0
  %6718 = xor i1 %6717, %6715
  %.v13 = select i1 %6718, i64 12, i64 254
  %6719 = add i64 %6682, %.v13
  store i64 %6719, i64* %PC, align 8, !tbaa !2428
  br i1 %6718, label %block_401864, label %block_401956

block_400d57:                                     ; preds = %block_400d50, %block_40182b
  %6720 = phi i64 [ %.pre3, %block_400d50 ], [ %6964, %block_40182b ]
  %6721 = load i64, i64* %RBP, align 8
  %6722 = add i64 %6721, -56
  %6723 = add i64 %6720, 3
  store i64 %6723, i64* %PC, align 8
  %6724 = inttoptr i64 %6722 to i32*
  %6725 = load i32, i32* %6724, align 4
  %6726 = zext i32 %6725 to i64
  store i64 %6726, i64* %RAX, align 8, !tbaa !2428
  %6727 = add i64 %6721, -72
  %6728 = add i64 %6720, 6
  store i64 %6728, i64* %PC, align 8
  %6729 = inttoptr i64 %6727 to i32*
  %6730 = load i32, i32* %6729, align 4
  %6731 = sub i32 %6725, %6730
  %6732 = icmp ult i32 %6725, %6730
  %6733 = zext i1 %6732 to i8
  store i8 %6733, i8* %70, align 1, !tbaa !2432
  %6734 = and i32 %6731, 255
  %6735 = tail call i32 @llvm.ctpop.i32(i32 %6734) #8
  %6736 = trunc i32 %6735 to i8
  %6737 = and i8 %6736, 1
  %6738 = xor i8 %6737, 1
  store i8 %6738, i8* %76, align 1, !tbaa !2446
  %6739 = xor i32 %6730, %6725
  %6740 = xor i32 %6739, %6731
  %6741 = lshr i32 %6740, 4
  %6742 = trunc i32 %6741 to i8
  %6743 = and i8 %6742, 1
  store i8 %6743, i8* %81, align 1, !tbaa !2447
  %6744 = icmp eq i32 %6731, 0
  %6745 = zext i1 %6744 to i8
  store i8 %6745, i8* %84, align 1, !tbaa !2448
  %6746 = lshr i32 %6731, 31
  %6747 = trunc i32 %6746 to i8
  store i8 %6747, i8* %87, align 1, !tbaa !2449
  %6748 = lshr i32 %6725, 31
  %6749 = lshr i32 %6730, 31
  %6750 = xor i32 %6749, %6748
  %6751 = xor i32 %6746, %6748
  %6752 = add nuw nsw i32 %6751, %6750
  %6753 = icmp eq i32 %6752, 2
  %6754 = zext i1 %6753 to i8
  store i8 %6754, i8* %93, align 1, !tbaa !2450
  %6755 = icmp ne i8 %6747, 0
  %6756 = xor i1 %6755, %6753
  %.v9 = select i1 %6756, i64 12, i64 2791
  %6757 = add i64 %6720, %.v9
  store i64 %6757, i64* %PC, align 8, !tbaa !2428
  br i1 %6756, label %block_400d63, label %block_40183e

block_401956:                                     ; preds = %block_401858
  %6758 = add i64 %6683, -64
  %6759 = add i64 %6719, 8
  store i64 %6759, i64* %PC, align 8
  %6760 = inttoptr i64 %6758 to i32*
  %6761 = load i32, i32* %6760, align 4
  %6762 = add i32 %6761, 1
  %6763 = zext i32 %6762 to i64
  store i64 %6763, i64* %RAX, align 8, !tbaa !2428
  %6764 = icmp eq i32 %6761, -1
  %6765 = icmp eq i32 %6762, 0
  %6766 = or i1 %6764, %6765
  %6767 = zext i1 %6766 to i8
  store i8 %6767, i8* %70, align 1, !tbaa !2432
  %6768 = and i32 %6762, 255
  %6769 = tail call i32 @llvm.ctpop.i32(i32 %6768) #8
  %6770 = trunc i32 %6769 to i8
  %6771 = and i8 %6770, 1
  %6772 = xor i8 %6771, 1
  store i8 %6772, i8* %76, align 1, !tbaa !2446
  %6773 = xor i32 %6761, %6762
  %6774 = lshr i32 %6773, 4
  %6775 = trunc i32 %6774 to i8
  %6776 = and i8 %6775, 1
  store i8 %6776, i8* %81, align 1, !tbaa !2447
  %6777 = zext i1 %6765 to i8
  store i8 %6777, i8* %84, align 1, !tbaa !2448
  %6778 = lshr i32 %6762, 31
  %6779 = trunc i32 %6778 to i8
  store i8 %6779, i8* %87, align 1, !tbaa !2449
  %6780 = lshr i32 %6761, 31
  %6781 = xor i32 %6778, %6780
  %6782 = add nuw nsw i32 %6781, %6778
  %6783 = icmp eq i32 %6782, 2
  %6784 = zext i1 %6783 to i8
  store i8 %6784, i8* %93, align 1, !tbaa !2450
  %6785 = add i64 %6719, 14
  store i64 %6785, i64* %PC, align 8
  store i32 %6762, i32* %6760, align 4
  %6786 = load i64, i64* %PC, align 8
  %6787 = add i64 %6786, -3131
  store i64 %6787, i64* %PC, align 8, !tbaa !2428
  br label %block_400d29

block_401851:                                     ; preds = %block_400d44
  %6788 = add i64 %6826, 7
  store i64 %6788, i64* %PC, align 8
  store i32 1, i32* %6793, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401858

block_400d44:                                     ; preds = %block_400d35, %block_40183e
  %6789 = phi i64 [ %.pre2, %block_400d35 ], [ %6886, %block_40183e ]
  %6790 = load i64, i64* %RBP, align 8
  %6791 = add i64 %6790, -52
  %6792 = add i64 %6789, 3
  store i64 %6792, i64* %PC, align 8
  %6793 = inttoptr i64 %6791 to i32*
  %6794 = load i32, i32* %6793, align 4
  %6795 = zext i32 %6794 to i64
  store i64 %6795, i64* %RAX, align 8, !tbaa !2428
  %6796 = add i64 %6790, -68
  %6797 = add i64 %6789, 6
  store i64 %6797, i64* %PC, align 8
  %6798 = inttoptr i64 %6796 to i32*
  %6799 = load i32, i32* %6798, align 4
  %6800 = sub i32 %6794, %6799
  %6801 = icmp ult i32 %6794, %6799
  %6802 = zext i1 %6801 to i8
  store i8 %6802, i8* %70, align 1, !tbaa !2432
  %6803 = and i32 %6800, 255
  %6804 = tail call i32 @llvm.ctpop.i32(i32 %6803) #8
  %6805 = trunc i32 %6804 to i8
  %6806 = and i8 %6805, 1
  %6807 = xor i8 %6806, 1
  store i8 %6807, i8* %76, align 1, !tbaa !2446
  %6808 = xor i32 %6799, %6794
  %6809 = xor i32 %6808, %6800
  %6810 = lshr i32 %6809, 4
  %6811 = trunc i32 %6810 to i8
  %6812 = and i8 %6811, 1
  store i8 %6812, i8* %81, align 1, !tbaa !2447
  %6813 = icmp eq i32 %6800, 0
  %6814 = zext i1 %6813 to i8
  store i8 %6814, i8* %84, align 1, !tbaa !2448
  %6815 = lshr i32 %6800, 31
  %6816 = trunc i32 %6815 to i8
  store i8 %6816, i8* %87, align 1, !tbaa !2449
  %6817 = lshr i32 %6794, 31
  %6818 = lshr i32 %6799, 31
  %6819 = xor i32 %6818, %6817
  %6820 = xor i32 %6815, %6817
  %6821 = add nuw nsw i32 %6820, %6819
  %6822 = icmp eq i32 %6821, 2
  %6823 = zext i1 %6822 to i8
  store i8 %6823, i8* %93, align 1, !tbaa !2450
  %6824 = icmp ne i8 %6816, 0
  %6825 = xor i1 %6824, %6822
  %.v8 = select i1 %6825, i64 12, i64 2829
  %6826 = add i64 %6789, %.v8
  store i64 %6826, i64* %PC, align 8, !tbaa !2428
  br i1 %6825, label %block_400d50, label %block_401851

block_401943:                                     ; preds = %block_40186b
  %6827 = add i64 %266, -52
  %6828 = add i64 %302, 8
  store i64 %6828, i64* %PC, align 8
  %6829 = inttoptr i64 %6827 to i32*
  %6830 = load i32, i32* %6829, align 4
  %6831 = add i32 %6830, 1
  %6832 = zext i32 %6831 to i64
  store i64 %6832, i64* %RAX, align 8, !tbaa !2428
  %6833 = icmp eq i32 %6830, -1
  %6834 = icmp eq i32 %6831, 0
  %6835 = or i1 %6833, %6834
  %6836 = zext i1 %6835 to i8
  store i8 %6836, i8* %70, align 1, !tbaa !2432
  %6837 = and i32 %6831, 255
  %6838 = tail call i32 @llvm.ctpop.i32(i32 %6837) #8
  %6839 = trunc i32 %6838 to i8
  %6840 = and i8 %6839, 1
  %6841 = xor i8 %6840, 1
  store i8 %6841, i8* %76, align 1, !tbaa !2446
  %6842 = xor i32 %6830, %6831
  %6843 = lshr i32 %6842, 4
  %6844 = trunc i32 %6843 to i8
  %6845 = and i8 %6844, 1
  store i8 %6845, i8* %81, align 1, !tbaa !2447
  %6846 = zext i1 %6834 to i8
  store i8 %6846, i8* %84, align 1, !tbaa !2448
  %6847 = lshr i32 %6831, 31
  %6848 = trunc i32 %6847 to i8
  store i8 %6848, i8* %87, align 1, !tbaa !2449
  %6849 = lshr i32 %6830, 31
  %6850 = xor i32 %6847, %6849
  %6851 = add nuw nsw i32 %6850, %6847
  %6852 = icmp eq i32 %6851, 2
  %6853 = zext i1 %6852 to i8
  store i8 %6853, i8* %93, align 1, !tbaa !2450
  %6854 = add i64 %302, 14
  store i64 %6854, i64* %PC, align 8
  store i32 %6831, i32* %6829, align 4
  %6855 = load i64, i64* %PC, align 8
  %6856 = add i64 %6855, -249
  store i64 %6856, i64* %PC, align 8, !tbaa !2428
  br label %block_401858

block_40183e:                                     ; preds = %block_400d57
  %6857 = add i64 %6721, -52
  %6858 = add i64 %6757, 8
  store i64 %6858, i64* %PC, align 8
  %6859 = inttoptr i64 %6857 to i32*
  %6860 = load i32, i32* %6859, align 4
  %6861 = add i32 %6860, 1
  %6862 = zext i32 %6861 to i64
  store i64 %6862, i64* %RAX, align 8, !tbaa !2428
  %6863 = icmp eq i32 %6860, -1
  %6864 = icmp eq i32 %6861, 0
  %6865 = or i1 %6863, %6864
  %6866 = zext i1 %6865 to i8
  store i8 %6866, i8* %70, align 1, !tbaa !2432
  %6867 = and i32 %6861, 255
  %6868 = tail call i32 @llvm.ctpop.i32(i32 %6867) #8
  %6869 = trunc i32 %6868 to i8
  %6870 = and i8 %6869, 1
  %6871 = xor i8 %6870, 1
  store i8 %6871, i8* %76, align 1, !tbaa !2446
  %6872 = xor i32 %6860, %6861
  %6873 = lshr i32 %6872, 4
  %6874 = trunc i32 %6873 to i8
  %6875 = and i8 %6874, 1
  store i8 %6875, i8* %81, align 1, !tbaa !2447
  %6876 = zext i1 %6864 to i8
  store i8 %6876, i8* %84, align 1, !tbaa !2448
  %6877 = lshr i32 %6861, 31
  %6878 = trunc i32 %6877 to i8
  store i8 %6878, i8* %87, align 1, !tbaa !2449
  %6879 = lshr i32 %6860, 31
  %6880 = xor i32 %6877, %6879
  %6881 = add nuw nsw i32 %6880, %6877
  %6882 = icmp eq i32 %6881, 2
  %6883 = zext i1 %6882 to i8
  store i8 %6883, i8* %93, align 1, !tbaa !2450
  %6884 = add i64 %6757, 14
  store i64 %6884, i64* %PC, align 8
  store i32 %6861, i32* %6859, align 4
  %6885 = load i64, i64* %PC, align 8
  %6886 = add i64 %6885, -2824
  store i64 %6886, i64* %PC, align 8, !tbaa !2428
  br label %block_400d44

block_400d6a:                                     ; preds = %block_400d63, %block_400d76
  %6887 = phi i64 [ %.pre4, %block_400d63 ], [ %6681, %block_400d76 ]
  %6888 = load i64, i64* %RBP, align 8
  %6889 = add i64 %6888, -60
  %6890 = add i64 %6887, 3
  store i64 %6890, i64* %PC, align 8
  %6891 = inttoptr i64 %6889 to i32*
  %6892 = load i32, i32* %6891, align 4
  %6893 = zext i32 %6892 to i64
  store i64 %6893, i64* %RAX, align 8, !tbaa !2428
  %6894 = add i64 %6888, -76
  %6895 = add i64 %6887, 6
  store i64 %6895, i64* %PC, align 8
  %6896 = inttoptr i64 %6894 to i32*
  %6897 = load i32, i32* %6896, align 4
  %6898 = sub i32 %6892, %6897
  %6899 = icmp ult i32 %6892, %6897
  %6900 = zext i1 %6899 to i8
  store i8 %6900, i8* %70, align 1, !tbaa !2432
  %6901 = and i32 %6898, 255
  %6902 = tail call i32 @llvm.ctpop.i32(i32 %6901) #8
  %6903 = trunc i32 %6902 to i8
  %6904 = and i8 %6903, 1
  %6905 = xor i8 %6904, 1
  store i8 %6905, i8* %76, align 1, !tbaa !2446
  %6906 = xor i32 %6897, %6892
  %6907 = xor i32 %6906, %6898
  %6908 = lshr i32 %6907, 4
  %6909 = trunc i32 %6908 to i8
  %6910 = and i8 %6909, 1
  store i8 %6910, i8* %81, align 1, !tbaa !2447
  %6911 = icmp eq i32 %6898, 0
  %6912 = zext i1 %6911 to i8
  store i8 %6912, i8* %84, align 1, !tbaa !2448
  %6913 = lshr i32 %6898, 31
  %6914 = trunc i32 %6913 to i8
  store i8 %6914, i8* %87, align 1, !tbaa !2449
  %6915 = lshr i32 %6892, 31
  %6916 = lshr i32 %6897, 31
  %6917 = xor i32 %6916, %6915
  %6918 = xor i32 %6913, %6915
  %6919 = add nuw nsw i32 %6918, %6917
  %6920 = icmp eq i32 %6919, 2
  %6921 = zext i1 %6920 to i8
  store i8 %6921, i8* %93, align 1, !tbaa !2450
  %6922 = icmp ne i8 %6914, 0
  %6923 = xor i1 %6922, %6920
  %.v10 = select i1 %6923, i64 12, i64 2753
  %6924 = add i64 %6887, %.v10
  store i64 %6924, i64* %PC, align 8, !tbaa !2428
  br i1 %6923, label %block_400d76, label %block_40182b

block_400d35:                                     ; preds = %block_400d29
  store i32 0, i32* %186, align 1, !tbaa !2454
  store i32 0, i32* %188, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %191, align 1, !tbaa !2454
  %6925 = add i64 %6999, -80
  %6926 = add i64 %7035, 8
  store i64 %6926, i64* %PC, align 8
  %6927 = load <2 x float>, <2 x float>* %192, align 1
  %6928 = extractelement <2 x float> %6927, i32 0
  %6929 = inttoptr i64 %6925 to float*
  store float %6928, float* %6929, align 4
  %6930 = load i64, i64* %RBP, align 8
  %6931 = add i64 %6930, -52
  %6932 = load i64, i64* %PC, align 8
  %6933 = add i64 %6932, 7
  store i64 %6933, i64* %PC, align 8
  %6934 = inttoptr i64 %6931 to i32*
  store i32 1, i32* %6934, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400d44

block_40182b:                                     ; preds = %block_400d6a
  %6935 = add i64 %6888, -56
  %6936 = add i64 %6924, 8
  store i64 %6936, i64* %PC, align 8
  %6937 = inttoptr i64 %6935 to i32*
  %6938 = load i32, i32* %6937, align 4
  %6939 = add i32 %6938, 1
  %6940 = zext i32 %6939 to i64
  store i64 %6940, i64* %RAX, align 8, !tbaa !2428
  %6941 = icmp eq i32 %6938, -1
  %6942 = icmp eq i32 %6939, 0
  %6943 = or i1 %6941, %6942
  %6944 = zext i1 %6943 to i8
  store i8 %6944, i8* %70, align 1, !tbaa !2432
  %6945 = and i32 %6939, 255
  %6946 = tail call i32 @llvm.ctpop.i32(i32 %6945) #8
  %6947 = trunc i32 %6946 to i8
  %6948 = and i8 %6947, 1
  %6949 = xor i8 %6948, 1
  store i8 %6949, i8* %76, align 1, !tbaa !2446
  %6950 = xor i32 %6938, %6939
  %6951 = lshr i32 %6950, 4
  %6952 = trunc i32 %6951 to i8
  %6953 = and i8 %6952, 1
  store i8 %6953, i8* %81, align 1, !tbaa !2447
  %6954 = zext i1 %6942 to i8
  store i8 %6954, i8* %84, align 1, !tbaa !2448
  %6955 = lshr i32 %6939, 31
  %6956 = trunc i32 %6955 to i8
  store i8 %6956, i8* %87, align 1, !tbaa !2449
  %6957 = lshr i32 %6938, 31
  %6958 = xor i32 %6955, %6957
  %6959 = add nuw nsw i32 %6958, %6955
  %6960 = icmp eq i32 %6959, 2
  %6961 = zext i1 %6960 to i8
  store i8 %6961, i8* %93, align 1, !tbaa !2450
  %6962 = add i64 %6924, 14
  store i64 %6962, i64* %PC, align 8
  store i32 %6939, i32* %6937, align 4
  %6963 = load i64, i64* %PC, align 8
  %6964 = add i64 %6963, -2786
  store i64 %6964, i64* %PC, align 8, !tbaa !2428
  br label %block_400d57

block_401930:                                     ; preds = %block_40187e
  %6965 = add i64 %225, -56
  %6966 = add i64 %261, 8
  store i64 %6966, i64* %PC, align 8
  %6967 = inttoptr i64 %6965 to i32*
  %6968 = load i32, i32* %6967, align 4
  %6969 = add i32 %6968, 1
  %6970 = zext i32 %6969 to i64
  store i64 %6970, i64* %RAX, align 8, !tbaa !2428
  %6971 = icmp eq i32 %6968, -1
  %6972 = icmp eq i32 %6969, 0
  %6973 = or i1 %6971, %6972
  %6974 = zext i1 %6973 to i8
  store i8 %6974, i8* %70, align 1, !tbaa !2432
  %6975 = and i32 %6969, 255
  %6976 = tail call i32 @llvm.ctpop.i32(i32 %6975) #8
  %6977 = trunc i32 %6976 to i8
  %6978 = and i8 %6977, 1
  %6979 = xor i8 %6978, 1
  store i8 %6979, i8* %76, align 1, !tbaa !2446
  %6980 = xor i32 %6968, %6969
  %6981 = lshr i32 %6980, 4
  %6982 = trunc i32 %6981 to i8
  %6983 = and i8 %6982, 1
  store i8 %6983, i8* %81, align 1, !tbaa !2447
  %6984 = zext i1 %6972 to i8
  store i8 %6984, i8* %84, align 1, !tbaa !2448
  %6985 = lshr i32 %6969, 31
  %6986 = trunc i32 %6985 to i8
  store i8 %6986, i8* %87, align 1, !tbaa !2449
  %6987 = lshr i32 %6968, 31
  %6988 = xor i32 %6985, %6987
  %6989 = add nuw nsw i32 %6988, %6985
  %6990 = icmp eq i32 %6989, 2
  %6991 = zext i1 %6990 to i8
  store i8 %6991, i8* %93, align 1, !tbaa !2450
  %6992 = add i64 %261, 14
  store i64 %6992, i64* %PC, align 8
  store i32 %6969, i32* %6967, align 4
  %6993 = load i64, i64* %PC, align 8
  %6994 = add i64 %6993, -211
  store i64 %6994, i64* %PC, align 8, !tbaa !2428
  br label %block_40186b

block_400d63:                                     ; preds = %block_400d57
  %6995 = add i64 %6721, -60
  %6996 = add i64 %6757, 7
  store i64 %6996, i64* %PC, align 8
  %6997 = inttoptr i64 %6995 to i32*
  store i32 1, i32* %6997, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400d6a

block_400d29:                                     ; preds = %block_401956, %block_400cd0
  %6998 = phi i64 [ %6787, %block_401956 ], [ %.pre, %block_400cd0 ]
  %6999 = load i64, i64* %RBP, align 8
  %7000 = add i64 %6999, -64
  %7001 = add i64 %6998, 3
  store i64 %7001, i64* %PC, align 8
  %7002 = inttoptr i64 %7000 to i32*
  %7003 = load i32, i32* %7002, align 4
  %7004 = zext i32 %7003 to i64
  store i64 %7004, i64* %RAX, align 8, !tbaa !2428
  %7005 = add i64 %6999, -4
  %7006 = add i64 %6998, 6
  store i64 %7006, i64* %PC, align 8
  %7007 = inttoptr i64 %7005 to i32*
  %7008 = load i32, i32* %7007, align 4
  %7009 = sub i32 %7003, %7008
  %7010 = icmp ult i32 %7003, %7008
  %7011 = zext i1 %7010 to i8
  store i8 %7011, i8* %70, align 1, !tbaa !2432
  %7012 = and i32 %7009, 255
  %7013 = tail call i32 @llvm.ctpop.i32(i32 %7012) #8
  %7014 = trunc i32 %7013 to i8
  %7015 = and i8 %7014, 1
  %7016 = xor i8 %7015, 1
  store i8 %7016, i8* %76, align 1, !tbaa !2446
  %7017 = xor i32 %7008, %7003
  %7018 = xor i32 %7017, %7009
  %7019 = lshr i32 %7018, 4
  %7020 = trunc i32 %7019 to i8
  %7021 = and i8 %7020, 1
  store i8 %7021, i8* %81, align 1, !tbaa !2447
  %7022 = icmp eq i32 %7009, 0
  %7023 = zext i1 %7022 to i8
  store i8 %7023, i8* %84, align 1, !tbaa !2448
  %7024 = lshr i32 %7009, 31
  %7025 = trunc i32 %7024 to i8
  store i8 %7025, i8* %87, align 1, !tbaa !2449
  %7026 = lshr i32 %7003, 31
  %7027 = lshr i32 %7008, 31
  %7028 = xor i32 %7027, %7026
  %7029 = xor i32 %7024, %7026
  %7030 = add nuw nsw i32 %7029, %7028
  %7031 = icmp eq i32 %7030, 2
  %7032 = zext i1 %7031 to i8
  store i8 %7032, i8* %93, align 1, !tbaa !2450
  %7033 = icmp ne i8 %7025, 0
  %7034 = xor i1 %7033, %7031
  %.v = select i1 %7034, i64 12, i64 3136
  %7035 = add i64 %6998, %.v
  store i64 %7035, i64* %PC, align 8, !tbaa !2428
  br i1 %7034, label %block_400d35, label %block_401969

block_400d50:                                     ; preds = %block_400d44
  %7036 = add i64 %6790, -56
  %7037 = add i64 %6826, 7
  store i64 %7037, i64* %PC, align 8
  %7038 = inttoptr i64 %7036 to i32*
  store i32 1, i32* %7038, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400d57

block_40188a:                                     ; preds = %block_40187e
  %7039 = add i64 %225, 24
  %7040 = add i64 %261, 4
  store i64 %7040, i64* %PC, align 8
  %7041 = inttoptr i64 %7039 to i64*
  %7042 = load i64, i64* %7041, align 8
  store i64 %7042, i64* %RAX, align 8, !tbaa !2428
  %7043 = add i64 %261, 7
  store i64 %7043, i64* %PC, align 8
  %7044 = inttoptr i64 %7042 to i64*
  %7045 = load i64, i64* %7044, align 8
  store i64 %7045, i64* %RAX, align 8, !tbaa !2428
  %7046 = add i64 %261, 11
  store i64 %7046, i64* %PC, align 8
  %7047 = load i64, i64* %7041, align 8
  store i64 %7047, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7048 = add i64 %261, 19
  store i64 %7048, i64* %PC, align 8
  %7049 = load i64, i64* %7041, align 8
  store i64 %7049, i64* %RCX, align 8, !tbaa !2428
  %7050 = add i64 %261, 23
  store i64 %7050, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7051 = add i64 %261, 27
  store i64 %7051, i64* %PC, align 8
  %7052 = load i64, i64* %7041, align 8
  store i64 %7052, i64* %RCX, align 8, !tbaa !2428
  %7053 = add i64 %261, 31
  store i64 %7053, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7054 = add i64 %225, -52
  %7055 = add i64 %261, 34
  store i64 %7055, i64* %PC, align 8
  %7056 = inttoptr i64 %7054 to i32*
  %7057 = load i32, i32* %7056, align 4
  %7058 = zext i32 %7057 to i64
  store i64 %7058, i64* %RSI, align 8, !tbaa !2428
  %7059 = add i64 %261, 38
  store i64 %7059, i64* %PC, align 8
  %7060 = load i64, i64* %7041, align 8
  store i64 %7060, i64* %RCX, align 8, !tbaa !2428
  %7061 = add i64 %7060, 16
  %7062 = add i64 %261, 42
  store i64 %7062, i64* %PC, align 8
  %7063 = inttoptr i64 %7061 to i32*
  %7064 = load i32, i32* %7063, align 4
  %7065 = sext i32 %7057 to i64
  %7066 = sext i32 %7064 to i64
  %7067 = mul nsw i64 %7066, %7065
  %7068 = trunc i64 %7067 to i32
  %7069 = and i64 %7067, 4294967295
  store i64 %7069, i64* %RSI, align 8, !tbaa !2428
  %7070 = shl i64 %7067, 32
  %7071 = ashr exact i64 %7070, 32
  %7072 = icmp ne i64 %7071, %7067
  %7073 = zext i1 %7072 to i8
  store i8 %7073, i8* %70, align 1, !tbaa !2432
  %7074 = and i32 %7068, 255
  %7075 = tail call i32 @llvm.ctpop.i32(i32 %7074) #8
  %7076 = trunc i32 %7075 to i8
  %7077 = and i8 %7076, 1
  %7078 = xor i8 %7077, 1
  store i8 %7078, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %7079 = lshr i32 %7068, 31
  %7080 = trunc i32 %7079 to i8
  store i8 %7080, i8* %87, align 1, !tbaa !2449
  store i8 %7073, i8* %93, align 1, !tbaa !2450
  %7081 = add i64 %261, 46
  store i64 %7081, i64* %PC, align 8
  %7082 = load i64, i64* %7041, align 8
  store i64 %7082, i64* %RCX, align 8, !tbaa !2428
  %7083 = add i64 %7082, 20
  %7084 = add i64 %261, 50
  store i64 %7084, i64* %PC, align 8
  %7085 = inttoptr i64 %7083 to i32*
  %7086 = load i32, i32* %7085, align 4
  %7087 = sext i32 %7086 to i64
  %7088 = mul nsw i64 %7087, %7071
  %7089 = and i64 %7088, 4294967295
  store i64 %7089, i64* %RSI, align 8, !tbaa !2428
  %7090 = trunc i64 %7088 to i32
  store i64 %7089, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %7091 = and i32 %7090, 255
  %7092 = tail call i32 @llvm.ctpop.i32(i32 %7091) #8
  %7093 = trunc i32 %7092 to i8
  %7094 = and i8 %7093, 1
  %7095 = xor i8 %7094, 1
  store i8 %7095, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %7096 = icmp eq i32 %7090, 0
  %7097 = zext i1 %7096 to i8
  store i8 %7097, i8* %84, align 1, !tbaa !2448
  %7098 = lshr i32 %7090, 31
  %7099 = trunc i32 %7098 to i8
  store i8 %7099, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7100 = load i64, i64* %RBP, align 8
  %7101 = add i64 %7100, -56
  %7102 = add i64 %261, 55
  store i64 %7102, i64* %PC, align 8
  %7103 = inttoptr i64 %7101 to i32*
  %7104 = load i32, i32* %7103, align 4
  %7105 = zext i32 %7104 to i64
  store i64 %7105, i64* %RSI, align 8, !tbaa !2428
  %7106 = add i64 %7100, 24
  %7107 = add i64 %261, 59
  store i64 %7107, i64* %PC, align 8
  %7108 = inttoptr i64 %7106 to i64*
  %7109 = load i64, i64* %7108, align 8
  store i64 %7109, i64* %RCX, align 8, !tbaa !2428
  %7110 = add i64 %7109, 20
  %7111 = add i64 %261, 63
  store i64 %7111, i64* %PC, align 8
  %7112 = inttoptr i64 %7110 to i32*
  %7113 = load i32, i32* %7112, align 4
  %7114 = sext i32 %7104 to i64
  %7115 = sext i32 %7113 to i64
  %7116 = mul nsw i64 %7115, %7114
  %7117 = and i64 %7116, 4294967295
  store i64 %7117, i64* %RSI, align 8, !tbaa !2428
  %7118 = trunc i64 %7116 to i32
  %7119 = add i32 %7118, %7090
  %7120 = zext i32 %7119 to i64
  store i64 %7120, i64* %RDX, align 8, !tbaa !2428
  %7121 = icmp ult i32 %7119, %7090
  %7122 = icmp ult i32 %7119, %7118
  %7123 = or i1 %7121, %7122
  %7124 = zext i1 %7123 to i8
  store i8 %7124, i8* %70, align 1, !tbaa !2432
  %7125 = and i32 %7119, 255
  %7126 = tail call i32 @llvm.ctpop.i32(i32 %7125) #8
  %7127 = trunc i32 %7126 to i8
  %7128 = and i8 %7127, 1
  %7129 = xor i8 %7128, 1
  store i8 %7129, i8* %76, align 1, !tbaa !2446
  %7130 = xor i64 %7116, %7088
  %7131 = trunc i64 %7130 to i32
  %7132 = xor i32 %7131, %7119
  %7133 = lshr i32 %7132, 4
  %7134 = trunc i32 %7133 to i8
  %7135 = and i8 %7134, 1
  store i8 %7135, i8* %81, align 1, !tbaa !2447
  %7136 = icmp eq i32 %7119, 0
  %7137 = zext i1 %7136 to i8
  store i8 %7137, i8* %84, align 1, !tbaa !2448
  %7138 = lshr i32 %7119, 31
  %7139 = trunc i32 %7138 to i8
  store i8 %7139, i8* %87, align 1, !tbaa !2449
  %7140 = lshr i32 %7118, 31
  %7141 = xor i32 %7138, %7098
  %7142 = xor i32 %7138, %7140
  %7143 = add nuw nsw i32 %7141, %7142
  %7144 = icmp eq i32 %7143, 2
  %7145 = zext i1 %7144 to i8
  store i8 %7145, i8* %93, align 1, !tbaa !2450
  %7146 = add i64 %7100, -60
  %7147 = add i64 %261, 68
  store i64 %7147, i64* %PC, align 8
  %7148 = inttoptr i64 %7146 to i32*
  %7149 = load i32, i32* %7148, align 4
  %7150 = add i32 %7149, %7119
  %7151 = zext i32 %7150 to i64
  store i64 %7151, i64* %RDX, align 8, !tbaa !2428
  %7152 = icmp ult i32 %7150, %7119
  %7153 = icmp ult i32 %7150, %7149
  %7154 = or i1 %7152, %7153
  %7155 = zext i1 %7154 to i8
  store i8 %7155, i8* %70, align 1, !tbaa !2432
  %7156 = and i32 %7150, 255
  %7157 = tail call i32 @llvm.ctpop.i32(i32 %7156) #8
  %7158 = trunc i32 %7157 to i8
  %7159 = and i8 %7158, 1
  %7160 = xor i8 %7159, 1
  store i8 %7160, i8* %76, align 1, !tbaa !2446
  %7161 = xor i32 %7149, %7119
  %7162 = xor i32 %7161, %7150
  %7163 = lshr i32 %7162, 4
  %7164 = trunc i32 %7163 to i8
  %7165 = and i8 %7164, 1
  store i8 %7165, i8* %81, align 1, !tbaa !2447
  %7166 = icmp eq i32 %7150, 0
  %7167 = zext i1 %7166 to i8
  store i8 %7167, i8* %84, align 1, !tbaa !2448
  %7168 = lshr i32 %7150, 31
  %7169 = trunc i32 %7168 to i8
  store i8 %7169, i8* %87, align 1, !tbaa !2449
  %7170 = lshr i32 %7149, 31
  %7171 = xor i32 %7168, %7138
  %7172 = xor i32 %7168, %7170
  %7173 = add nuw nsw i32 %7171, %7172
  %7174 = icmp eq i32 %7173, 2
  %7175 = zext i1 %7174 to i8
  store i8 %7175, i8* %93, align 1, !tbaa !2450
  %7176 = sext i32 %7150 to i64
  store i64 %7176, i64* %RCX, align 8, !tbaa !2428
  %7177 = load i64, i64* %RAX, align 8
  %7178 = shl nsw i64 %7176, 2
  %7179 = add i64 %7178, %7177
  %7180 = add i64 %261, 76
  store i64 %7180, i64* %PC, align 8
  %7181 = inttoptr i64 %7179 to i32*
  %7182 = load i32, i32* %7181, align 4
  store i32 %7182, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %7183 = load i64, i64* %RBP, align 8
  %7184 = add i64 %7183, -40
  %7185 = add i64 %261, 80
  store i64 %7185, i64* %PC, align 8
  %7186 = inttoptr i64 %7184 to i64*
  %7187 = load i64, i64* %7186, align 8
  store i64 %7187, i64* %RAX, align 8, !tbaa !2428
  %7188 = add i64 %261, 83
  store i64 %7188, i64* %PC, align 8
  %7189 = inttoptr i64 %7187 to i64*
  %7190 = load i64, i64* %7189, align 8
  store i64 %7190, i64* %RAX, align 8, !tbaa !2428
  %7191 = add i64 %261, 87
  store i64 %7191, i64* %PC, align 8
  %7192 = load i64, i64* %7186, align 8
  store i64 %7192, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7193 = add i64 %261, 95
  store i64 %7193, i64* %PC, align 8
  %7194 = load i64, i64* %7186, align 8
  store i64 %7194, i64* %RCX, align 8, !tbaa !2428
  %7195 = add i64 %261, 99
  store i64 %7195, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7196 = add i64 %261, 103
  store i64 %7196, i64* %PC, align 8
  %7197 = load i64, i64* %7186, align 8
  store i64 %7197, i64* %RCX, align 8, !tbaa !2428
  %7198 = add i64 %261, 107
  store i64 %7198, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7199 = add i64 %7183, -52
  %7200 = add i64 %261, 110
  store i64 %7200, i64* %PC, align 8
  %7201 = inttoptr i64 %7199 to i32*
  %7202 = load i32, i32* %7201, align 4
  %7203 = zext i32 %7202 to i64
  store i64 %7203, i64* %RSI, align 8, !tbaa !2428
  %7204 = add i64 %261, 114
  store i64 %7204, i64* %PC, align 8
  %7205 = load i64, i64* %7186, align 8
  store i64 %7205, i64* %RCX, align 8, !tbaa !2428
  %7206 = add i64 %7205, 16
  %7207 = add i64 %261, 118
  store i64 %7207, i64* %PC, align 8
  %7208 = inttoptr i64 %7206 to i32*
  %7209 = load i32, i32* %7208, align 4
  %7210 = sext i32 %7202 to i64
  %7211 = sext i32 %7209 to i64
  %7212 = mul nsw i64 %7211, %7210
  %7213 = trunc i64 %7212 to i32
  %7214 = and i64 %7212, 4294967295
  store i64 %7214, i64* %RSI, align 8, !tbaa !2428
  %7215 = shl i64 %7212, 32
  %7216 = ashr exact i64 %7215, 32
  %7217 = icmp ne i64 %7216, %7212
  %7218 = zext i1 %7217 to i8
  store i8 %7218, i8* %70, align 1, !tbaa !2432
  %7219 = and i32 %7213, 255
  %7220 = tail call i32 @llvm.ctpop.i32(i32 %7219) #8
  %7221 = trunc i32 %7220 to i8
  %7222 = and i8 %7221, 1
  %7223 = xor i8 %7222, 1
  store i8 %7223, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %7224 = lshr i32 %7213, 31
  %7225 = trunc i32 %7224 to i8
  store i8 %7225, i8* %87, align 1, !tbaa !2449
  store i8 %7218, i8* %93, align 1, !tbaa !2450
  %7226 = add i64 %261, 122
  store i64 %7226, i64* %PC, align 8
  %7227 = load i64, i64* %7186, align 8
  store i64 %7227, i64* %RCX, align 8, !tbaa !2428
  %7228 = add i64 %7227, 20
  %7229 = add i64 %261, 126
  store i64 %7229, i64* %PC, align 8
  %7230 = inttoptr i64 %7228 to i32*
  %7231 = load i32, i32* %7230, align 4
  %7232 = sext i32 %7231 to i64
  %7233 = mul nsw i64 %7232, %7216
  %7234 = and i64 %7233, 4294967295
  store i64 %7234, i64* %RSI, align 8, !tbaa !2428
  %7235 = trunc i64 %7233 to i32
  store i64 %7234, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %7236 = and i32 %7235, 255
  %7237 = tail call i32 @llvm.ctpop.i32(i32 %7236) #8
  %7238 = trunc i32 %7237 to i8
  %7239 = and i8 %7238, 1
  %7240 = xor i8 %7239, 1
  store i8 %7240, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %7241 = icmp eq i32 %7235, 0
  %7242 = zext i1 %7241 to i8
  store i8 %7242, i8* %84, align 1, !tbaa !2448
  %7243 = lshr i32 %7235, 31
  %7244 = trunc i32 %7243 to i8
  store i8 %7244, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7245 = load i64, i64* %RBP, align 8
  %7246 = add i64 %7245, -56
  %7247 = add i64 %261, 131
  store i64 %7247, i64* %PC, align 8
  %7248 = inttoptr i64 %7246 to i32*
  %7249 = load i32, i32* %7248, align 4
  %7250 = zext i32 %7249 to i64
  store i64 %7250, i64* %RSI, align 8, !tbaa !2428
  %7251 = add i64 %7245, -40
  %7252 = add i64 %261, 135
  store i64 %7252, i64* %PC, align 8
  %7253 = inttoptr i64 %7251 to i64*
  %7254 = load i64, i64* %7253, align 8
  store i64 %7254, i64* %RCX, align 8, !tbaa !2428
  %7255 = add i64 %7254, 20
  %7256 = add i64 %261, 139
  store i64 %7256, i64* %PC, align 8
  %7257 = inttoptr i64 %7255 to i32*
  %7258 = load i32, i32* %7257, align 4
  %7259 = sext i32 %7249 to i64
  %7260 = sext i32 %7258 to i64
  %7261 = mul nsw i64 %7260, %7259
  %7262 = and i64 %7261, 4294967295
  store i64 %7262, i64* %RSI, align 8, !tbaa !2428
  %7263 = trunc i64 %7261 to i32
  %7264 = add i32 %7263, %7235
  %7265 = zext i32 %7264 to i64
  store i64 %7265, i64* %RDX, align 8, !tbaa !2428
  %7266 = icmp ult i32 %7264, %7235
  %7267 = icmp ult i32 %7264, %7263
  %7268 = or i1 %7266, %7267
  %7269 = zext i1 %7268 to i8
  store i8 %7269, i8* %70, align 1, !tbaa !2432
  %7270 = and i32 %7264, 255
  %7271 = tail call i32 @llvm.ctpop.i32(i32 %7270) #8
  %7272 = trunc i32 %7271 to i8
  %7273 = and i8 %7272, 1
  %7274 = xor i8 %7273, 1
  store i8 %7274, i8* %76, align 1, !tbaa !2446
  %7275 = xor i64 %7261, %7233
  %7276 = trunc i64 %7275 to i32
  %7277 = xor i32 %7276, %7264
  %7278 = lshr i32 %7277, 4
  %7279 = trunc i32 %7278 to i8
  %7280 = and i8 %7279, 1
  store i8 %7280, i8* %81, align 1, !tbaa !2447
  %7281 = icmp eq i32 %7264, 0
  %7282 = zext i1 %7281 to i8
  store i8 %7282, i8* %84, align 1, !tbaa !2448
  %7283 = lshr i32 %7264, 31
  %7284 = trunc i32 %7283 to i8
  store i8 %7284, i8* %87, align 1, !tbaa !2449
  %7285 = lshr i32 %7263, 31
  %7286 = xor i32 %7283, %7243
  %7287 = xor i32 %7283, %7285
  %7288 = add nuw nsw i32 %7286, %7287
  %7289 = icmp eq i32 %7288, 2
  %7290 = zext i1 %7289 to i8
  store i8 %7290, i8* %93, align 1, !tbaa !2450
  %7291 = add i64 %7245, -60
  %7292 = add i64 %261, 144
  store i64 %7292, i64* %PC, align 8
  %7293 = inttoptr i64 %7291 to i32*
  %7294 = load i32, i32* %7293, align 4
  %7295 = add i32 %7294, %7264
  %7296 = zext i32 %7295 to i64
  store i64 %7296, i64* %RDX, align 8, !tbaa !2428
  %7297 = icmp ult i32 %7295, %7264
  %7298 = icmp ult i32 %7295, %7294
  %7299 = or i1 %7297, %7298
  %7300 = zext i1 %7299 to i8
  store i8 %7300, i8* %70, align 1, !tbaa !2432
  %7301 = and i32 %7295, 255
  %7302 = tail call i32 @llvm.ctpop.i32(i32 %7301) #8
  %7303 = trunc i32 %7302 to i8
  %7304 = and i8 %7303, 1
  %7305 = xor i8 %7304, 1
  store i8 %7305, i8* %76, align 1, !tbaa !2446
  %7306 = xor i32 %7294, %7264
  %7307 = xor i32 %7306, %7295
  %7308 = lshr i32 %7307, 4
  %7309 = trunc i32 %7308 to i8
  %7310 = and i8 %7309, 1
  store i8 %7310, i8* %81, align 1, !tbaa !2447
  %7311 = icmp eq i32 %7295, 0
  %7312 = zext i1 %7311 to i8
  store i8 %7312, i8* %84, align 1, !tbaa !2448
  %7313 = lshr i32 %7295, 31
  %7314 = trunc i32 %7313 to i8
  store i8 %7314, i8* %87, align 1, !tbaa !2449
  %7315 = lshr i32 %7294, 31
  %7316 = xor i32 %7313, %7283
  %7317 = xor i32 %7313, %7315
  %7318 = add nuw nsw i32 %7316, %7317
  %7319 = icmp eq i32 %7318, 2
  %7320 = zext i1 %7319 to i8
  store i8 %7320, i8* %93, align 1, !tbaa !2450
  %7321 = sext i32 %7295 to i64
  store i64 %7321, i64* %RCX, align 8, !tbaa !2428
  %7322 = load i64, i64* %RAX, align 8
  %7323 = shl nsw i64 %7321, 2
  %7324 = add i64 %7323, %7322
  %7325 = add i64 %261, 152
  store i64 %7325, i64* %PC, align 8
  %7326 = load <2 x float>, <2 x float>* %192, align 1
  %7327 = extractelement <2 x float> %7326, i32 0
  %7328 = inttoptr i64 %7324 to float*
  store float %7327, float* %7328, align 4
  %7329 = load i64, i64* %RBP, align 8
  %7330 = add i64 %7329, -60
  %7331 = load i64, i64* %PC, align 8
  %7332 = add i64 %7331, 3
  store i64 %7332, i64* %PC, align 8
  %7333 = inttoptr i64 %7330 to i32*
  %7334 = load i32, i32* %7333, align 4
  %7335 = add i32 %7334, 1
  %7336 = zext i32 %7335 to i64
  store i64 %7336, i64* %RAX, align 8, !tbaa !2428
  %7337 = icmp eq i32 %7334, -1
  %7338 = icmp eq i32 %7335, 0
  %7339 = or i1 %7337, %7338
  %7340 = zext i1 %7339 to i8
  store i8 %7340, i8* %70, align 1, !tbaa !2432
  %7341 = and i32 %7335, 255
  %7342 = tail call i32 @llvm.ctpop.i32(i32 %7341) #8
  %7343 = trunc i32 %7342 to i8
  %7344 = and i8 %7343, 1
  %7345 = xor i8 %7344, 1
  store i8 %7345, i8* %76, align 1, !tbaa !2446
  %7346 = xor i32 %7334, %7335
  %7347 = lshr i32 %7346, 4
  %7348 = trunc i32 %7347 to i8
  %7349 = and i8 %7348, 1
  store i8 %7349, i8* %81, align 1, !tbaa !2447
  %7350 = zext i1 %7338 to i8
  store i8 %7350, i8* %84, align 1, !tbaa !2448
  %7351 = lshr i32 %7335, 31
  %7352 = trunc i32 %7351 to i8
  store i8 %7352, i8* %87, align 1, !tbaa !2449
  %7353 = lshr i32 %7334, 31
  %7354 = xor i32 %7351, %7353
  %7355 = add nuw nsw i32 %7354, %7351
  %7356 = icmp eq i32 %7355, 2
  %7357 = zext i1 %7356 to i8
  store i8 %7357, i8* %93, align 1, !tbaa !2450
  %7358 = add i64 %7331, 9
  store i64 %7358, i64* %PC, align 8
  store i32 %7335, i32* %7333, align 4
  %7359 = load i64, i64* %PC, align 8
  %7360 = add i64 %7359, -173
  store i64 %7360, i64* %PC, align 8, !tbaa !2428
  br label %block_40187e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400620___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400620:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 8
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
  %36 = tail call %struct.Memory* @sub_4005b0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 8
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
define %struct.Memory* @sub_400af0_mat_set_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400af0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %27 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %28 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %30 = bitcast i64* %29 to <2 x i32>*
  %31 = bitcast [32 x %union.VectorReg]* %3 to float*
  %32 = getelementptr inbounds i8, i8* %27, i64 4
  %33 = bitcast i8* %32 to i32*
  %34 = bitcast i64* %29 to i32*
  %35 = getelementptr inbounds i8, i8* %27, i64 12
  %36 = bitcast i8* %35 to i32*
  %37 = bitcast %union.VectorReg* %4 to i8*
  %38 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %40 = bitcast i64* %39 to <2 x i32>*
  %41 = bitcast %union.VectorReg* %4 to float*
  %42 = getelementptr inbounds i8, i8* %37, i64 4
  %43 = bitcast i8* %42 to i32*
  %44 = bitcast i64* %39 to i32*
  %45 = getelementptr inbounds i8, i8* %37, i64 12
  %46 = bitcast i8* %45 to i32*
  %47 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %48 = bitcast %union.VectorReg* %4 to <2 x float>*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400aff

block_400b3d:                                     ; preds = %block_400b2d
  %49 = add i64 %400, -12
  %50 = add i64 %440, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = add i64 %440, 7
  store i64 %54, i64* %PC, align 8
  %55 = load i32, i32* %51, align 4
  %56 = sext i32 %52 to i64
  %57 = sext i32 %55 to i64
  %58 = mul nsw i64 %57, %56
  %59 = trunc i64 %58 to i32
  %60 = and i64 %58, 4294967295
  store i64 %60, i64* %RAX, align 8, !tbaa !2428
  %61 = shl i64 %58, 32
  %62 = ashr exact i64 %61, 32
  %63 = icmp ne i64 %62, %58
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %21, align 1, !tbaa !2432
  %65 = and i32 %59, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #8
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %70 = lshr i32 %59, 31
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %25, align 1, !tbaa !2449
  store i8 %64, i8* %26, align 1, !tbaa !2450
  %72 = load <2 x i32>, <2 x i32>* %28, align 1
  %73 = load <2 x i32>, <2 x i32>* %30, align 1
  %74 = sitofp i32 %59 to float
  store float %74, float* %31, align 1, !tbaa !2451
  %75 = extractelement <2 x i32> %72, i32 1
  store i32 %75, i32* %33, align 1, !tbaa !2451
  %76 = extractelement <2 x i32> %73, i32 0
  store i32 %76, i32* %34, align 1, !tbaa !2451
  %77 = extractelement <2 x i32> %73, i32 1
  store i32 %77, i32* %36, align 1, !tbaa !2451
  %78 = add i64 %440, 15
  store i64 %78, i64* %PC, align 8
  %79 = load i64, i64* %408, align 8
  store i64 %79, i64* %RCX, align 8, !tbaa !2428
  %80 = add i64 %79, 12
  %81 = add i64 %440, 18
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, -1
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = icmp eq i32 %83, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %21, align 1, !tbaa !2432
  %88 = and i32 %84, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #8
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %22, align 1, !tbaa !2446
  %93 = xor i32 %83, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %23, align 1, !tbaa !2447
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %24, align 1, !tbaa !2448
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %25, align 1, !tbaa !2449
  %101 = lshr i32 %83, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %26, align 1, !tbaa !2450
  %106 = add i64 %440, 25
  store i64 %106, i64* %PC, align 8
  %107 = load i64, i64* %408, align 8
  store i64 %107, i64* %RCX, align 8, !tbaa !2428
  %108 = add i64 %107, 12
  %109 = add i64 %440, 28
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, -1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RDX, align 8, !tbaa !2428
  %114 = sext i32 %84 to i64
  %115 = sext i32 %112 to i64
  %116 = mul nsw i64 %115, %114
  %117 = trunc i64 %116 to i32
  %118 = and i64 %116, 4294967295
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = shl i64 %116, 32
  %120 = ashr exact i64 %119, 32
  %121 = icmp ne i64 %120, %116
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %21, align 1, !tbaa !2432
  %123 = and i32 %117, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %128 = lshr i32 %117, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %25, align 1, !tbaa !2449
  store i8 %122, i8* %26, align 1, !tbaa !2450
  %130 = load <2 x i32>, <2 x i32>* %38, align 1
  %131 = load <2 x i32>, <2 x i32>* %40, align 1
  %132 = sitofp i32 %117 to float
  store float %132, float* %41, align 1, !tbaa !2451
  %133 = extractelement <2 x i32> %130, i32 1
  store i32 %133, i32* %43, align 1, !tbaa !2451
  %134 = extractelement <2 x i32> %131, i32 0
  store i32 %134, i32* %44, align 1, !tbaa !2451
  %135 = extractelement <2 x i32> %131, i32 1
  store i32 %135, i32* %46, align 1, !tbaa !2451
  %136 = load <2 x float>, <2 x float>* %47, align 1
  %137 = load <2 x i32>, <2 x i32>* %30, align 1
  %138 = load <2 x float>, <2 x float>* %48, align 1
  %139 = extractelement <2 x float> %136, i32 0
  %140 = extractelement <2 x float> %138, i32 0
  %141 = fdiv float %139, %140
  store float %141, float* %31, align 1, !tbaa !2451
  %142 = bitcast <2 x float> %136 to <2 x i32>
  %143 = extractelement <2 x i32> %142, i32 1
  store i32 %143, i32* %33, align 1, !tbaa !2451
  %144 = extractelement <2 x i32> %137, i32 0
  store i32 %144, i32* %34, align 1, !tbaa !2451
  %145 = extractelement <2 x i32> %137, i32 1
  store i32 %145, i32* %36, align 1, !tbaa !2451
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -8
  %148 = add i64 %440, 46
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RCX, align 8, !tbaa !2428
  %151 = add i64 %440, 49
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RCX, align 8, !tbaa !2428
  %154 = add i64 %440, 53
  store i64 %154, i64* %PC, align 8
  %155 = load i64, i64* %149, align 8
  store i64 %155, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %156 = add i64 %440, 61
  store i64 %156, i64* %PC, align 8
  %157 = load i64, i64* %149, align 8
  store i64 %157, i64* %RSI, align 8, !tbaa !2428
  %158 = add i64 %440, 65
  store i64 %158, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %159 = add i64 %440, 69
  store i64 %159, i64* %PC, align 8
  %160 = load i64, i64* %149, align 8
  store i64 %160, i64* %RSI, align 8, !tbaa !2428
  %161 = add i64 %440, 73
  store i64 %161, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %162 = add i64 %146, -12
  %163 = add i64 %440, 76
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RDX, align 8, !tbaa !2428
  %167 = add i64 %440, 80
  store i64 %167, i64* %PC, align 8
  %168 = load i64, i64* %149, align 8
  store i64 %168, i64* %RSI, align 8, !tbaa !2428
  %169 = add i64 %168, 16
  %170 = add i64 %440, 84
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %165 to i64
  %174 = sext i32 %172 to i64
  %175 = mul nsw i64 %174, %173
  %176 = trunc i64 %175 to i32
  %177 = and i64 %175, 4294967295
  store i64 %177, i64* %RDX, align 8, !tbaa !2428
  %178 = shl i64 %175, 32
  %179 = ashr exact i64 %178, 32
  %180 = icmp ne i64 %179, %175
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %21, align 1, !tbaa !2432
  %182 = and i32 %176, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #8
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %187 = lshr i32 %176, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %25, align 1, !tbaa !2449
  store i8 %181, i8* %26, align 1, !tbaa !2450
  %189 = add i64 %440, 88
  store i64 %189, i64* %PC, align 8
  %190 = load i64, i64* %149, align 8
  store i64 %190, i64* %RSI, align 8, !tbaa !2428
  %191 = add i64 %190, 20
  %192 = add i64 %440, 92
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, %179
  %197 = and i64 %196, 4294967295
  store i64 %197, i64* %RDX, align 8, !tbaa !2428
  %198 = trunc i64 %196 to i32
  store i64 %197, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  %199 = and i32 %198, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #8
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  %204 = icmp eq i32 %198, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %24, align 1, !tbaa !2448
  %206 = lshr i32 %198, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -16
  %210 = add i64 %440, 97
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RDX, align 8, !tbaa !2428
  %214 = add i64 %208, -8
  %215 = add i64 %440, 101
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %214 to i64*
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %RSI, align 8, !tbaa !2428
  %218 = add i64 %217, 20
  %219 = add i64 %440, 105
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %212 to i64
  %223 = sext i32 %221 to i64
  %224 = mul nsw i64 %223, %222
  %225 = and i64 %224, 4294967295
  store i64 %225, i64* %RDX, align 8, !tbaa !2428
  %226 = trunc i64 %224 to i32
  %227 = add i32 %226, %198
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RAX, align 8, !tbaa !2428
  %229 = icmp ult i32 %227, %198
  %230 = icmp ult i32 %227, %226
  %231 = or i1 %229, %230
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %21, align 1, !tbaa !2432
  %233 = and i32 %227, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233) #8
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %22, align 1, !tbaa !2446
  %238 = xor i64 %224, %196
  %239 = trunc i64 %238 to i32
  %240 = xor i32 %239, %227
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %23, align 1, !tbaa !2447
  %244 = icmp eq i32 %227, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %24, align 1, !tbaa !2448
  %246 = lshr i32 %227, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %25, align 1, !tbaa !2449
  %248 = lshr i32 %226, 31
  %249 = xor i32 %246, %206
  %250 = xor i32 %246, %248
  %251 = add nuw nsw i32 %249, %250
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %26, align 1, !tbaa !2450
  %254 = add i64 %208, -20
  %255 = add i64 %440, 110
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = add i32 %257, %227
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX, align 8, !tbaa !2428
  %260 = icmp ult i32 %258, %227
  %261 = icmp ult i32 %258, %257
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %21, align 1, !tbaa !2432
  %264 = and i32 %258, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #8
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %22, align 1, !tbaa !2446
  %269 = xor i32 %257, %227
  %270 = xor i32 %269, %258
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %23, align 1, !tbaa !2447
  %274 = icmp eq i32 %258, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %24, align 1, !tbaa !2448
  %276 = lshr i32 %258, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %25, align 1, !tbaa !2449
  %278 = lshr i32 %257, 31
  %279 = xor i32 %276, %246
  %280 = xor i32 %276, %278
  %281 = add nuw nsw i32 %279, %280
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %26, align 1, !tbaa !2450
  %284 = sext i32 %258 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = load i64, i64* %RCX, align 8
  %286 = shl nsw i64 %284, 2
  %287 = add i64 %286, %285
  %288 = add i64 %440, 118
  store i64 %288, i64* %PC, align 8
  %289 = load <2 x float>, <2 x float>* %47, align 1
  %290 = extractelement <2 x float> %289, i32 0
  %291 = inttoptr i64 %287 to float*
  store float %290, float* %291, align 4
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -20
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %293 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %297, 1
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = icmp eq i32 %297, -1
  %301 = icmp eq i32 %298, 0
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %21, align 1, !tbaa !2432
  %304 = and i32 %298, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #8
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %22, align 1, !tbaa !2446
  %309 = xor i32 %297, %298
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %23, align 1, !tbaa !2447
  %313 = zext i1 %301 to i8
  store i8 %313, i8* %24, align 1, !tbaa !2448
  %314 = lshr i32 %298, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %25, align 1, !tbaa !2449
  %316 = lshr i32 %297, 31
  %317 = xor i32 %314, %316
  %318 = add nuw nsw i32 %317, %314
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %26, align 1, !tbaa !2450
  %321 = add i64 %294, 9
  store i64 %321, i64* %PC, align 8
  store i32 %298, i32* %296, align 4
  %322 = load i64, i64* %PC, align 8
  %323 = add i64 %322, -143
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  br label %block_400b2d

block_400b16:                                     ; preds = %block_400bc1, %block_400b0f
  %324 = phi i64 [ %524, %block_400bc1 ], [ %.pre1, %block_400b0f ]
  %325 = load i64, i64* %RBP, align 8
  %326 = add i64 %325, -16
  %327 = add i64 %324, 3
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = add i64 %325, -8
  %332 = add i64 %324, 7
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RCX, align 8, !tbaa !2428
  %335 = add i64 %334, 16
  %336 = add i64 %324, 10
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = sub i32 %329, %338
  %340 = icmp ult i32 %329, %338
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %21, align 1, !tbaa !2432
  %342 = and i32 %339, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342) #8
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %22, align 1, !tbaa !2446
  %347 = xor i32 %338, %329
  %348 = xor i32 %347, %339
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %23, align 1, !tbaa !2447
  %352 = icmp eq i32 %339, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %24, align 1, !tbaa !2448
  %354 = lshr i32 %339, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %25, align 1, !tbaa !2449
  %356 = lshr i32 %329, 31
  %357 = lshr i32 %338, 31
  %358 = xor i32 %357, %356
  %359 = xor i32 %354, %356
  %360 = add nuw nsw i32 %359, %358
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %26, align 1, !tbaa !2450
  %363 = icmp ne i8 %355, 0
  %364 = xor i1 %363, %361
  %.v3 = select i1 %364, i64 16, i64 190
  %365 = add i64 %324, %.v3
  store i64 %365, i64* %PC, align 8, !tbaa !2428
  br i1 %364, label %block_400b26, label %block_400bd4

block_400bd4:                                     ; preds = %block_400b16
  %366 = add i64 %325, -12
  %367 = add i64 %365, 8
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = add i32 %369, 1
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = icmp eq i32 %369, -1
  %373 = icmp eq i32 %370, 0
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %21, align 1, !tbaa !2432
  %376 = and i32 %370, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376) #8
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %22, align 1, !tbaa !2446
  %381 = xor i32 %369, %370
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %23, align 1, !tbaa !2447
  %385 = zext i1 %373 to i8
  store i8 %385, i8* %24, align 1, !tbaa !2448
  %386 = lshr i32 %370, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %25, align 1, !tbaa !2449
  %388 = lshr i32 %369, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %386
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %26, align 1, !tbaa !2450
  %393 = add i64 %365, 14
  store i64 %393, i64* %PC, align 8
  store i32 %370, i32* %368, align 4
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, -227
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  br label %block_400aff

block_400b0f:                                     ; preds = %block_400aff
  %396 = add i64 %451, -16
  %397 = add i64 %491, 7
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  store i32 0, i32* %398, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400b16

block_400b2d:                                     ; preds = %block_400b26, %block_400b3d
  %399 = phi i64 [ %.pre2, %block_400b26 ], [ %323, %block_400b3d ]
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -20
  %402 = add i64 %399, 3
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = add i64 %400, -8
  %407 = add i64 %399, 7
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RCX, align 8, !tbaa !2428
  %410 = add i64 %409, 20
  %411 = add i64 %399, 10
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = sub i32 %404, %413
  %415 = icmp ult i32 %404, %413
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %21, align 1, !tbaa !2432
  %417 = and i32 %414, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417) #8
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %22, align 1, !tbaa !2446
  %422 = xor i32 %413, %404
  %423 = xor i32 %422, %414
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %23, align 1, !tbaa !2447
  %427 = icmp eq i32 %414, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %24, align 1, !tbaa !2448
  %429 = lshr i32 %414, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %25, align 1, !tbaa !2449
  %431 = lshr i32 %404, 31
  %432 = lshr i32 %413, 31
  %433 = xor i32 %432, %431
  %434 = xor i32 %429, %431
  %435 = add nuw nsw i32 %434, %433
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %26, align 1, !tbaa !2450
  %438 = icmp ne i8 %430, 0
  %439 = xor i1 %438, %436
  %.v4 = select i1 %439, i64 16, i64 148
  %440 = add i64 %399, %.v4
  store i64 %440, i64* %PC, align 8, !tbaa !2428
  br i1 %439, label %block_400b3d, label %block_400bc1

block_400be7:                                     ; preds = %block_400aff
  %441 = add i64 %491, 1
  store i64 %441, i64* %PC, align 8
  %442 = load i64, i64* %7, align 8, !tbaa !2428
  %443 = add i64 %442, 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RBP, align 8, !tbaa !2428
  store i64 %443, i64* %7, align 8, !tbaa !2428
  %446 = add i64 %491, 2
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %443 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %PC, align 8, !tbaa !2428
  %449 = add i64 %442, 16
  store i64 %449, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400aff:                                     ; preds = %block_400bd4, %block_400af0
  %450 = phi i64 [ %395, %block_400bd4 ], [ %.pre, %block_400af0 ]
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -12
  %453 = add i64 %450, 3
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX, align 8, !tbaa !2428
  %457 = add i64 %451, -8
  %458 = add i64 %450, 7
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RCX, align 8, !tbaa !2428
  %461 = add i64 %460, 12
  %462 = add i64 %450, 10
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = sub i32 %455, %464
  %466 = icmp ult i32 %455, %464
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %21, align 1, !tbaa !2432
  %468 = and i32 %465, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468) #8
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %22, align 1, !tbaa !2446
  %473 = xor i32 %464, %455
  %474 = xor i32 %473, %465
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %23, align 1, !tbaa !2447
  %478 = icmp eq i32 %465, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %24, align 1, !tbaa !2448
  %480 = lshr i32 %465, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %25, align 1, !tbaa !2449
  %482 = lshr i32 %455, 31
  %483 = lshr i32 %464, 31
  %484 = xor i32 %483, %482
  %485 = xor i32 %480, %482
  %486 = add nuw nsw i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %26, align 1, !tbaa !2450
  %489 = icmp ne i8 %481, 0
  %490 = xor i1 %489, %487
  %.v = select i1 %490, i64 16, i64 232
  %491 = add i64 %450, %.v
  store i64 %491, i64* %PC, align 8, !tbaa !2428
  br i1 %490, label %block_400b0f, label %block_400be7

block_400b26:                                     ; preds = %block_400b16
  %492 = add i64 %325, -20
  %493 = add i64 %365, 7
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  store i32 0, i32* %494, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400b2d

block_400bc1:                                     ; preds = %block_400b2d
  %495 = add i64 %400, -16
  %496 = add i64 %440, 8
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = add i32 %498, 1
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX, align 8, !tbaa !2428
  %501 = icmp eq i32 %498, -1
  %502 = icmp eq i32 %499, 0
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %21, align 1, !tbaa !2432
  %505 = and i32 %499, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505) #8
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %22, align 1, !tbaa !2446
  %510 = xor i32 %498, %499
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %23, align 1, !tbaa !2447
  %514 = zext i1 %502 to i8
  store i8 %514, i8* %24, align 1, !tbaa !2448
  %515 = lshr i32 %499, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %25, align 1, !tbaa !2449
  %517 = lshr i32 %498, 31
  %518 = xor i32 %515, %517
  %519 = add nuw nsw i32 %518, %515
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %26, align 1, !tbaa !2450
  %522 = add i64 %440, 14
  store i64 %522, i64* %PC, align 8
  store i32 %499, i32* %497, align 4
  %523 = load i64, i64* %PC, align 8
  %524 = add i64 %523, -185
  store i64 %524, i64* %PC, align 8, !tbaa !2428
  br label %block_400b16
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004e0:
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
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602ff0__got_type* @seg_602ff0__got to i64), i64 8) to i64*), align 8
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
  br i1 %18, label %block_4004e0.block_4004f2_crit_edge, label %block_4004f0

block_4004e0.block_4004f2_crit_edge:              ; preds = %block_4004e0
  br label %block_4004f2

block_4004f0:                                     ; preds = %block_4004e0
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4004f2

block_4004f2:                                     ; preds = %block_4004e0.block_4004f2_crit_edge, %block_4004f0
  %.pre-phi = phi i64* [ %RSP, %block_4004e0.block_4004f2_crit_edge ], [ %RSP, %block_4004f0 ]
  %27 = phi i64 [ %22, %block_4004e0.block_4004f2_crit_edge ], [ %.pre1, %block_4004f0 ]
  %28 = phi i64 [ %4, %block_4004e0.block_4004f2_crit_edge ], [ %.pre, %block_4004f0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004e0.block_4004f2_crit_edge ], [ %26, %block_4004f0 ]
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
define %struct.Memory* @sub_401d10___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401d10:
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
  store i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  store i8 %51, i8* %43, align 1, !tbaa !2453
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2453
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %48, align 1, !tbaa !2453
  %63 = add i64 %38, -6219
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4004e0__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401d66, label %block_401d46

block_401d66:                                     ; preds = %block_401d50, %block_401d10
  %81 = phi i64 [ %80, %block_401d10 ], [ %179, %block_401d50 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401d10 ], [ %149, %block_401d50 ]
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

block_401d46:                                     ; preds = %block_401d10
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401d50

block_401d50:                                     ; preds = %block_401d50, %block_401d46
  %134 = phi i64 [ 0, %block_401d46 ], [ %152, %block_401d50 ]
  %135 = phi i64 [ %133, %block_401d46 ], [ %179, %block_401d50 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401d46 ], [ %149, %block_401d50 ]
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
  br i1 %169, label %block_401d66, label %block_401d50
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a60_newMat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
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
  %13 = add i64 %9, -40
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 32
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2446
  %24 = xor i64 %10, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
  %41 = add i64 %9, -16
  %42 = load i64, i64* %RDI, align 8
  %43 = add i64 %12, 11
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i32, i32* %EDX, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -20
  %59 = load i32, i32* %ECX, align 4
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -24
  %65 = load i32, i32* %R8D, align 4
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %68, align 4
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -12
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RCX, align 8, !tbaa !2428
  %76 = add i64 %69, -8
  %77 = add i64 %71, 7
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %RDI, align 8, !tbaa !2428
  %80 = add i64 %79, 8
  %81 = add i64 %71, 10
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 %74, i32* %82, align 4
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -16
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, 3
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %84 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RCX, align 8, !tbaa !2428
  %90 = add i64 %83, -8
  %91 = add i64 %85, 7
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RDI, align 8, !tbaa !2428
  %94 = add i64 %93, 12
  %95 = add i64 %85, 10
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 %88, i32* %96, align 4
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -20
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX, align 8, !tbaa !2428
  %104 = add i64 %97, -8
  %105 = add i64 %99, 7
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RDI, align 8, !tbaa !2428
  %108 = add i64 %107, 16
  %109 = add i64 %99, 10
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 %102, i32* %110, align 4
  %111 = load i64, i64* %RBP, align 8
  %112 = add i64 %111, -24
  %113 = load i64, i64* %PC, align 8
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RCX, align 8, !tbaa !2428
  %118 = add i64 %111, -8
  %119 = add i64 %113, 7
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RDI, align 8, !tbaa !2428
  %122 = add i64 %121, 20
  %123 = add i64 %113, 10
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 %116, i32* %124, align 4
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -8
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RDI, align 8, !tbaa !2428
  %131 = add i64 %127, 11
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i64*
  store i64 0, i64* %132, align 8
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -12
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RCX, align 8, !tbaa !2428
  %140 = add i64 %133, -16
  %141 = add i64 %135, 7
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %138 to i64
  %145 = sext i32 %143 to i64
  %146 = mul nsw i64 %145, %144
  %147 = trunc i64 %146 to i32
  %148 = and i64 %146, 4294967295
  store i64 %148, i64* %RCX, align 8, !tbaa !2428
  %149 = shl i64 %146, 32
  %150 = ashr exact i64 %149, 32
  %151 = icmp ne i64 %150, %146
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %16, align 1, !tbaa !2432
  %153 = and i32 %147, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #8
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %158 = lshr i32 %147, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %34, align 1, !tbaa !2449
  store i8 %152, i8* %40, align 1, !tbaa !2450
  %160 = add i64 %133, -20
  %161 = add i64 %135, 11
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %150
  %166 = trunc i64 %165 to i32
  %167 = and i64 %165, 4294967295
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = shl i64 %165, 32
  %169 = ashr exact i64 %168, 32
  %170 = icmp ne i64 %169, %165
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %16, align 1, !tbaa !2432
  %172 = and i32 %166, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #8
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %177 = lshr i32 %166, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %34, align 1, !tbaa !2449
  store i8 %171, i8* %40, align 1, !tbaa !2450
  %179 = add i64 %133, -24
  %180 = add i64 %135, 15
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %183, %169
  %185 = and i64 %184, 4294967295
  store i64 %185, i64* %RCX, align 8, !tbaa !2428
  %186 = shl i64 %184, 32
  %187 = ashr exact i64 %186, 30
  store i64 %187, i64* %RDI, align 8, !tbaa !2428
  %188 = lshr i64 %184, 31
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %16, align 1, !tbaa !2453
  %191 = trunc i64 %187 to i32
  %192 = and i32 %191, 252
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192) #8
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %23, align 1, !tbaa !2453
  store i8 0, i8* %28, align 1, !tbaa !2453
  %197 = icmp eq i64 %187, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %31, align 1, !tbaa !2453
  %199 = lshr i64 %187, 63
  %200 = trunc i64 %199 to i8
  store i8 %200, i8* %34, align 1, !tbaa !2453
  store i8 0, i8* %40, align 1, !tbaa !2453
  %201 = add i64 %135, -1372
  %202 = add i64 %135, 27
  %203 = load i64, i64* %RSP, align 8, !tbaa !2428
  %204 = add i64 %203, -8
  %205 = inttoptr i64 %204 to i64*
  store i64 %202, i64* %205, align 8
  store i64 %204, i64* %RSP, align 8, !tbaa !2428
  store i64 %201, i64* %PC, align 8, !tbaa !2428
  %206 = tail call fastcc %struct.Memory* @ext_603140_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %207 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i64 1, i64* %RDX, align 8, !tbaa !2428
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -8
  %210 = add i64 %207, 11
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RDI, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX, align 8
  %214 = add i64 %207, 14
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %212 to i64*
  store i64 %213, i64* %215, align 8
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -8
  %218 = load i64, i64* %PC, align 8
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RAX, align 8, !tbaa !2428
  %222 = add i64 %218, 8
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  %226 = load i32, i32* %EDX, align 4
  %227 = zext i32 %226 to i64
  %228 = load i64, i64* %RCX, align 8, !tbaa !2428
  %229 = select i1 %225, i64 %228, i64 %227
  %230 = and i64 %229, 4294967295
  store i64 %230, i64* %RCX, align 8, !tbaa !2428
  store i64 %230, i64* %RAX, align 8, !tbaa !2428
  %231 = load i64, i64* %RSP, align 8
  %232 = add i64 %231, 32
  store i64 %232, i64* %RSP, align 8, !tbaa !2428
  %233 = icmp ugt i64 %231, -33
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %16, align 1, !tbaa !2432
  %235 = trunc i64 %232 to i32
  %236 = and i32 %235, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236) #8
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %23, align 1, !tbaa !2446
  %241 = xor i64 %231, %232
  %242 = lshr i64 %241, 4
  %243 = trunc i64 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %28, align 1, !tbaa !2447
  %245 = icmp eq i64 %232, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %31, align 1, !tbaa !2448
  %247 = lshr i64 %232, 63
  %248 = trunc i64 %247 to i8
  store i8 %248, i8* %34, align 1, !tbaa !2449
  %249 = lshr i64 %231, 63
  %250 = xor i64 %247, %249
  %251 = add nuw nsw i64 %250, %247
  %252 = icmp eq i64 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %40, align 1, !tbaa !2450
  %254 = add i64 %218, 18
  store i64 %254, i64* %PC, align 8
  %255 = add i64 %231, 40
  %256 = inttoptr i64 %232 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RBP, align 8, !tbaa !2428
  store i64 %255, i64* %RSP, align 8, !tbaa !2428
  %258 = add i64 %218, 19
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %255 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  %261 = add i64 %231, 48
  store i64 %261, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %206
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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

; Function Attrs: noinline
define %struct.Memory* @sub_4019e0_fflop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4019e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %16 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %17 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 16) to i64*), align 16
  %18 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %17, i64* %18, align 1, !tbaa !2455
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to double*
  store double 0.000000e+00, double* %20, align 1, !tbaa !2455
  %21 = add i64 %12, -12
  %22 = load i32, i32* %EDI, align 4
  %23 = add i64 %15, 14
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI, align 4
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -12
  %33 = load i32, i32* %EDX, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -12
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, -2
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RDX, align 8, !tbaa !2428
  %45 = icmp ult i32 %42, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %46, i8* %47, align 1, !tbaa !2432
  %48 = and i32 %43, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #8
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2446
  %54 = xor i32 %42, %43
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1, !tbaa !2447
  %59 = icmp eq i32 %43, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !2448
  %62 = lshr i32 %43, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !2449
  %65 = lshr i32 %42, 31
  %66 = xor i32 %62, %65
  %67 = add nuw nsw i32 %66, %65
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2450
  %71 = sitofp i32 %43 to double
  %72 = bitcast %union.VectorReg* %7 to double*
  store double %71, double* %72, align 1, !tbaa !2455
  %73 = add i64 %37, -8
  %74 = add i64 %39, 13
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, -2
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RDX, align 8, !tbaa !2428
  %79 = icmp ult i32 %76, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %47, align 1, !tbaa !2432
  %81 = and i32 %77, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #8
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %53, align 1, !tbaa !2446
  %86 = xor i32 %76, %77
  %87 = lshr i32 %86, 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %58, align 1, !tbaa !2447
  %90 = icmp eq i32 %77, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %61, align 1, !tbaa !2448
  %92 = lshr i32 %77, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %64, align 1, !tbaa !2449
  %94 = lshr i32 %76, 31
  %95 = xor i32 %92, %94
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %70, align 1, !tbaa !2450
  %99 = sitofp i32 %77 to double
  %100 = bitcast %union.VectorReg* %8 to double*
  store double %99, double* %100, align 1, !tbaa !2455
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %102 = bitcast i64* %101 to <2 x i32>*
  %103 = load <2 x i32>, <2 x i32>* %102, align 1
  %104 = fmul double %71, %99
  store double %104, double* %72, align 1, !tbaa !2455
  %105 = load i64, i64* %RBP, align 8
  %106 = add i64 %105, -4
  %107 = add i64 %39, 27
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, -2
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RDX, align 8, !tbaa !2428
  %112 = icmp ult i32 %109, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %47, align 1, !tbaa !2432
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #8
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %53, align 1, !tbaa !2446
  %119 = xor i32 %109, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %58, align 1, !tbaa !2447
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %61, align 1, !tbaa !2448
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %64, align 1, !tbaa !2449
  %127 = lshr i32 %109, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %70, align 1, !tbaa !2450
  %132 = sitofp i32 %110 to double
  store double %132, double* %100, align 1, !tbaa !2455
  %133 = fmul double %104, %132
  %134 = bitcast [32 x %union.VectorReg]* %6 to double*
  %135 = load double, double* %134, align 1
  %136 = fmul double %133, %135
  store double %136, double* %72, align 1, !tbaa !2455
  %137 = bitcast double %136 to <2 x i32>
  %138 = extractelement <2 x i32> %137, i32 0
  %139 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %138, i32* %139, align 1, !tbaa !2451
  %140 = extractelement <2 x i32> %137, i32 1
  %141 = getelementptr inbounds i8, i8* %16, i64 4
  %142 = bitcast i8* %141 to i32*
  store i32 %140, i32* %142, align 1, !tbaa !2451
  %143 = extractelement <2 x i32> %103, i32 0
  %144 = bitcast i64* %19 to i32*
  store i32 %143, i32* %144, align 1, !tbaa !2451
  %145 = extractelement <2 x i32> %103, i32 1
  %146 = getelementptr inbounds i8, i8* %16, i64 12
  %147 = bitcast i8* %146 to i32*
  store i32 %145, i32* %147, align 1, !tbaa !2451
  %148 = add i64 %39, 46
  store i64 %148, i64* %PC, align 8
  %149 = load i64, i64* %11, align 8, !tbaa !2428
  %150 = add i64 %149, 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RBP, align 8, !tbaa !2428
  store i64 %150, i64* %11, align 8, !tbaa !2428
  %153 = add i64 %39, 47
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %150 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %PC, align 8, !tbaa !2428
  %156 = add i64 %149, 16
  store i64 %156, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401d84__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401d84:
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
define %struct.Memory* @sub_401d80___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401d80:
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
define %struct.Memory* @sub_400570__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400570:
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
  store i64 ptrtoint (void ()* @callback_sub_401d80___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401d10___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_603168___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
}

; Function Attrs: noinline
define %struct.Memory* @sub_401c60_second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401c60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = add i64 %9, -24
  store i64 %19, i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %20 = add i64 %12, -5937
  %21 = add i64 %12, 20
  %22 = add i64 %9, -48
  %23 = inttoptr i64 %22 to i64*
  store i64 %21, i64* %23, align 8
  store i64 %22, i64* %RSP, align 8, !tbaa !2428
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %24 = tail call fastcc %struct.Memory* @ext_400530_gettimeofday(%struct.State* nonnull %0, %struct.Memory* %2)
  %25 = load i64, i64* %PC, align 8
  %26 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #8
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %32 = icmp eq i32 %26, 0
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2448
  %34 = lshr i32 %26, 31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %36 = load i64, i64* %RBP, align 8
  %37 = add i64 %36, -28
  %38 = load i32, i32* %EAX, align 4
  %39 = add i64 %25, 11
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %PC, align 8
  %42 = load i8, i8* %16, align 1, !tbaa !2448
  %43 = icmp eq i8 %42, 0
  %.v = select i1 %43, i64 59, i64 6
  %44 = add i64 %41, %.v
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %.pre = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  br i1 %43, label %block_401cbb, label %block_401c86

block_401cf8:                                     ; preds = %block_401cbb, %block_401c94
  %.pre-phi6 = phi double* [ %125, %block_401cbb ], [ %.pre5, %block_401c94 ]
  %45 = phi i64 [ %.pre1, %block_401cbb ], [ %110, %block_401c94 ]
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -24
  %48 = add i64 %45, 5
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %50, i64* %51, align 1, !tbaa !2455
  store double 0.000000e+00, double* %.pre-phi6, align 1, !tbaa !2455
  %52 = load i64, i64* %RSP, align 8
  %53 = add i64 %52, 32
  store i64 %53, i64* %RSP, align 8, !tbaa !2428
  %54 = icmp ugt i64 %52, -33
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %13, align 1, !tbaa !2432
  %56 = trunc i64 %53 to i32
  %57 = and i32 %56, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57) #8
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %14, align 1, !tbaa !2446
  %62 = xor i64 %52, %53
  %63 = lshr i64 %62, 4
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %15, align 1, !tbaa !2447
  %66 = icmp eq i64 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %16, align 1, !tbaa !2448
  %68 = lshr i64 %53, 63
  %69 = trunc i64 %68 to i8
  store i8 %69, i8* %17, align 1, !tbaa !2449
  %70 = lshr i64 %52, 63
  %71 = xor i64 %68, %70
  %72 = add nuw nsw i64 %71, %68
  %73 = icmp eq i64 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %18, align 1, !tbaa !2450
  %75 = add i64 %45, 10
  store i64 %75, i64* %PC, align 8
  %76 = add i64 %52, 40
  %77 = inttoptr i64 %53 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %RBP, align 8, !tbaa !2428
  store i64 %76, i64* %RSP, align 8, !tbaa !2428
  %79 = add i64 %45, 11
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %76 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  %82 = add i64 %52, 48
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %24

block_401c94:                                     ; preds = %block_401c86
  %83 = bitcast [32 x %union.VectorReg]* %4 to i8*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %85 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 0, i32* %85, align 1, !tbaa !2454
  %86 = getelementptr inbounds i8, i8* %83, i64 4
  %87 = bitcast i8* %86 to i32*
  store i32 0, i32* %87, align 1, !tbaa !2454
  %88 = bitcast i64* %84 to i32*
  store i32 0, i32* %88, align 1, !tbaa !2454
  %89 = getelementptr inbounds i8, i8* %83, i64 12
  %90 = bitcast i8* %89 to i32*
  store i32 0, i32* %90, align 1, !tbaa !2454
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -16
  %93 = add i64 %120, 7
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = and i64 %95, 4294967295
  store i64 %96, i64* %RCX, align 8, !tbaa !2428
  %97 = trunc i64 %95 to i32
  store i32 %97, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %98 = add i64 %91, -8
  %99 = add i64 %120, 20
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RAX, align 8, !tbaa !2428
  %102 = and i64 %101, 4294967295
  store i64 %102, i64* %RCX, align 8, !tbaa !2428
  %103 = trunc i64 %101 to i32
  store i32 %103, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  %104 = add i64 %91, -24
  %105 = add i64 %120, 34
  store i64 %105, i64* %PC, align 8
  %106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %107 = load i64, i64* %106, align 1
  %108 = inttoptr i64 %104 to i64*
  store i64 %107, i64* %108, align 8
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, 66
  store i64 %110, i64* %PC, align 8, !tbaa !2428
  %.pre5 = bitcast i64* %84 to double*
  br label %block_401cf8

block_401c86:                                     ; preds = %block_401c60
  store i8 0, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %.pre, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #8
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %116 = icmp eq i32 %.pre, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %16, align 1, !tbaa !2448
  %118 = lshr i32 %.pre, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v7 = select i1 %116, i64 14, i64 53
  %120 = add i64 %44, %.v7
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br i1 %116, label %block_401c94, label %block_401cbb

block_401cbb:                                     ; preds = %block_401c60, %block_401c86
  %121 = phi i64 [ %120, %block_401c86 ], [ %44, %block_401c60 ]
  %122 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 32) to i64*), align 16
  %123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %122, i64* %123, align 1, !tbaa !2455
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %125 = bitcast i64* %124 to double*
  store double 0.000000e+00, double* %125, align 1, !tbaa !2455
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -16
  %128 = add i64 %121, 12
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %RCX, align 8, !tbaa !2428
  %133 = sub i64 %130, %132
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = icmp ult i64 %130, %132
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %13, align 1, !tbaa !2432
  %136 = trunc i64 %133 to i32
  %137 = and i32 %136, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #8
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %14, align 1, !tbaa !2446
  %142 = xor i64 %132, %130
  %143 = xor i64 %142, %133
  %144 = lshr i64 %143, 4
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %15, align 1, !tbaa !2447
  %147 = icmp eq i64 %133, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %16, align 1, !tbaa !2448
  %149 = lshr i64 %133, 63
  %150 = trunc i64 %149 to i8
  store i8 %150, i8* %17, align 1, !tbaa !2449
  %151 = lshr i64 %130, 63
  %152 = lshr i64 %132, 63
  %153 = xor i64 %152, %151
  %154 = xor i64 %149, %151
  %155 = add nuw nsw i64 %154, %153
  %156 = icmp eq i64 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %18, align 1, !tbaa !2450
  %158 = sitofp i64 %133 to double
  %159 = bitcast %union.VectorReg* %5 to double*
  store double %158, double* %159, align 1, !tbaa !2455
  %160 = add i64 %126, -8
  %161 = add i64 %121, 32
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  %164 = sext i32 %.pre to i64
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  %165 = sub i64 %163, %164
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = icmp ult i64 %163, %164
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %13, align 1, !tbaa !2432
  %168 = trunc i64 %165 to i32
  %169 = and i32 %168, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169) #8
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %14, align 1, !tbaa !2446
  %174 = xor i64 %164, %163
  %175 = xor i64 %174, %165
  %176 = lshr i64 %175, 4
  %177 = trunc i64 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %15, align 1, !tbaa !2447
  %179 = icmp eq i64 %165, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %16, align 1, !tbaa !2448
  %181 = lshr i64 %165, 63
  %182 = trunc i64 %181 to i8
  store i8 %182, i8* %17, align 1, !tbaa !2449
  %183 = lshr i64 %163, 63
  %184 = lshr i64 %164, 63
  %185 = xor i64 %184, %183
  %186 = xor i64 %181, %183
  %187 = add nuw nsw i64 %186, %185
  %188 = icmp eq i64 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %18, align 1, !tbaa !2450
  %190 = sitofp i64 %165 to double
  %191 = bitcast %union.VectorReg* %6 to double*
  %192 = bitcast [32 x %union.VectorReg]* %4 to double*
  %193 = load double, double* %192, align 1
  %194 = fdiv double %190, %193
  store double %194, double* %191, align 1, !tbaa !2455
  %195 = fadd double %158, %194
  store double %195, double* %159, align 1, !tbaa !2455
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -24
  %198 = add i64 %121, 61
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to double*
  store double %195, double* %199, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401cf8
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005a0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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

; Function Attrs: noinline
define %struct.Memory* @sub_4005b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005b0:
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
  store i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)) to i8), i8* %10, align 1, !tbaa !2432
  %11 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)) to i32), i32 255)) #8
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1, !tbaa !2446
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64))), i64 4) to i8), i8 1), i8* %16, align 1, !tbaa !2447
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0) to i8), i8* %17, align 1, !tbaa !2448
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 63) to i8), i8* %18, align 1, !tbaa !2449
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %19, align 1, !tbaa !2450
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %20 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), label %block_4005d8, label %block_4005c1

block_4005d8:                                     ; preds = %block_4005c1, %block_4005b0
  %21 = phi i64 [ %28, %block_4005c1 ], [ %20, %block_4005b0 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %6 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %27 = add i64 %6, 8
  store i64 %27, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005c1:                                     ; preds = %block_4005b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %28 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %28, i64* %PC, align 8, !tbaa !2428
  br label %block_4005d8
}

; Function Attrs: noinline
define %struct.Memory* @sub_401970_clearMat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401970:
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
  %38 = add i64 %5, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %8, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -8
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RDI, align 8, !tbaa !2428
  %48 = add i64 %44, 8
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #8
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %57 = icmp eq i64 %50, 0
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %28, align 1, !tbaa !2448
  %59 = lshr i64 %50, 63
  %60 = trunc i64 %59 to i8
  store i8 %60, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %57, i64 29, i64 14
  %61 = add i64 %44, %.v
  store i64 %61, i64* %PC, align 8, !tbaa !2428
  br i1 %57, label %block_401999, label %block_40198a

block_40198a:                                     ; preds = %block_401970
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC, align 8
  %63 = load i64, i64* %46, align 8
  store i64 %63, i64* %RAX, align 8, !tbaa !2428
  %64 = add i64 %61, 7
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RAX, align 8, !tbaa !2428
  store i64 %66, i64* %RDI, align 8, !tbaa !2428
  %67 = add i64 %61, -5242
  %68 = add i64 %61, 15
  %69 = load i64, i64* %RSP, align 8, !tbaa !2428
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %RSP, align 8, !tbaa !2428
  store i64 %67, i64* %PC, align 8, !tbaa !2428
  %72 = tail call fastcc %struct.Memory* @ext_603118_free(%struct.State* nonnull %0, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401999

block_401999:                                     ; preds = %block_40198a, %block_401970
  %73 = phi i64 [ %61, %block_401970 ], [ %.pre1, %block_40198a ]
  %74 = phi i64 [ %42, %block_401970 ], [ %.pre, %block_40198a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401970 ], [ %72, %block_40198a ]
  %75 = add i64 %74, -8
  %76 = add i64 %73, 4
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %RAX, align 8, !tbaa !2428
  %79 = add i64 %73, 11
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i64*
  store i64 0, i64* %80, align 8
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -8
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %82 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = add i64 %86, 8
  %88 = add i64 %83, 11
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i32*
  store i32 0, i32* %89, align 4
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -8
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = add i64 %95, 16
  %97 = add i64 %92, 11
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -8
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %100 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RAX, align 8, !tbaa !2428
  %105 = add i64 %104, 12
  %106 = add i64 %101, 11
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  store i32 0, i32* %107, align 4
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -8
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = add i64 %113, 20
  %115 = add i64 %110, 11
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 0, i32* %116, align 4
  %117 = load i64, i64* %RSP, align 8
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %117, 16
  store i64 %119, i64* %RSP, align 8, !tbaa !2428
  %120 = icmp ugt i64 %117, -17
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %12, align 1, !tbaa !2432
  %122 = trunc i64 %119 to i32
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %19, align 1, !tbaa !2446
  %128 = xor i64 %117, 16
  %129 = xor i64 %128, %119
  %130 = lshr i64 %129, 4
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %25, align 1, !tbaa !2447
  %133 = icmp eq i64 %119, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %28, align 1, !tbaa !2448
  %135 = lshr i64 %119, 63
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %31, align 1, !tbaa !2449
  %137 = lshr i64 %117, 63
  %138 = xor i64 %135, %137
  %139 = add nuw nsw i64 %138, %135
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %37, align 1, !tbaa !2450
  %142 = add i64 %118, 5
  store i64 %142, i64* %PC, align 8
  %143 = add i64 %117, 24
  %144 = inttoptr i64 %119 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RBP, align 8, !tbaa !2428
  store i64 %143, i64* %RSP, align 8, !tbaa !2428
  %146 = add i64 %118, 6
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %143 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %PC, align 8, !tbaa !2428
  %149 = add i64 %117, 32
  store i64 %149, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400650_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400650_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400650_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400620___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400620;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400620___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400620___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603120_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603138_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_400560_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603140_malloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401d80___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401d80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401d80___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401d80___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401d10___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401d10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401d10___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401d10___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400660_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603168___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_400530_gettimeofday(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603118_free(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @mat_set_init() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400af0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @mat_set_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400af0_mat_set_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @mat_set() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400bf0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @mat_set_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400bf0_mat_set(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @newMat() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @newMat_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a60_newMat(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @mflops() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @mflops_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401a30_mflops(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401d84;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401d84__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @second() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401c60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @second_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401c60_second(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @fflop() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4019e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @fflop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4019e0_fflop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @jacobi() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400cd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @jacobi_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400cd0_jacobi(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @clearMat() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401970;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @clearMat_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401970_clearMat(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004e0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @set_param() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a70;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @set_param_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401a70_set_param(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401d10___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401d80___libc_csu_fini()
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
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"float", !2430, i64 0}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"double", !2430, i64 0}
