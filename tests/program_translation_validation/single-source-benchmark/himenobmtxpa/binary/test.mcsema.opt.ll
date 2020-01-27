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

declare %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004e0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400cd0_jacobi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400af0_mat_set_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %48 = phi i64 [ %507, %block_400c45 ], [ %.pre2, %block_400c2e ]
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
  %395 = add i64 %328, -24
  %396 = add i64 %89, 63
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RSI, align 8, !tbaa !2428
  %400 = add i64 %89, 67
  store i64 %400, i64* %PC, align 8
  %401 = load i64, i64* %336, align 8
  store i64 %401, i64* %RDX, align 8, !tbaa !2428
  %402 = add i64 %401, 20
  %403 = add i64 %89, 71
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %398 to i64
  %407 = sext i32 %405 to i64
  %408 = mul nsw i64 %407, %406
  %409 = and i64 %408, 4294967295
  store i64 %409, i64* %RSI, align 8, !tbaa !2428
  %410 = trunc i64 %408 to i32
  %411 = add i32 %410, %368
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX, align 8, !tbaa !2428
  %413 = icmp ult i32 %411, %368
  %414 = icmp ult i32 %411, %410
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %35, align 1, !tbaa !2432
  %417 = and i32 %411, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417) #8
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %36, align 1, !tbaa !2446
  %422 = xor i64 %408, %369
  %423 = trunc i64 %422 to i32
  %424 = xor i32 %423, %411
  %425 = lshr i32 %424, 4
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %37, align 1, !tbaa !2447
  %428 = icmp eq i32 %411, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %38, align 1, !tbaa !2448
  %430 = lshr i32 %411, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %39, align 1, !tbaa !2449
  %432 = lshr i32 %410, 31
  %433 = xor i32 %430, %387
  %434 = xor i32 %430, %432
  %435 = add nuw nsw i32 %433, %434
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %40, align 1, !tbaa !2450
  %438 = add i64 %328, -28
  %439 = add i64 %89, 76
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, %411
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = icmp ult i32 %442, %411
  %445 = icmp ult i32 %442, %441
  %446 = or i1 %444, %445
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %35, align 1, !tbaa !2432
  %448 = and i32 %442, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448) #8
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %36, align 1, !tbaa !2446
  %453 = xor i32 %441, %411
  %454 = xor i32 %453, %442
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %37, align 1, !tbaa !2447
  %458 = icmp eq i32 %442, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %38, align 1, !tbaa !2448
  %460 = lshr i32 %442, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %39, align 1, !tbaa !2449
  %462 = lshr i32 %441, 31
  %463 = xor i32 %460, %430
  %464 = xor i32 %460, %462
  %465 = add nuw nsw i32 %463, %464
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %40, align 1, !tbaa !2450
  %468 = sext i32 %442 to i64
  store i64 %468, i64* %RDX, align 8, !tbaa !2428
  %469 = load i64, i64* %RAX, align 8
  %470 = shl nsw i64 %468, 2
  %471 = add i64 %470, %469
  %472 = add i64 %89, 84
  store i64 %472, i64* %PC, align 8
  %473 = load <2 x float>, <2 x float>* %26, align 1
  %474 = extractelement <2 x float> %473, i32 0
  %475 = inttoptr i64 %471 to float*
  store float %474, float* %475, align 4
  %476 = load i64, i64* %RBP, align 8
  %477 = add i64 %476, -28
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, 1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX, align 8, !tbaa !2428
  %484 = icmp eq i32 %481, -1
  %485 = icmp eq i32 %482, 0
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %35, align 1, !tbaa !2432
  %488 = and i32 %482, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488) #8
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %36, align 1, !tbaa !2446
  %493 = xor i32 %481, %482
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %37, align 1, !tbaa !2447
  %497 = zext i1 %485 to i8
  store i8 %497, i8* %38, align 1, !tbaa !2448
  %498 = lshr i32 %482, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %39, align 1, !tbaa !2449
  %500 = lshr i32 %481, 31
  %501 = xor i32 %498, %500
  %502 = add nuw nsw i32 %501, %498
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %40, align 1, !tbaa !2450
  %505 = add i64 %478, 9
  store i64 %505, i64* %PC, align 8
  store i32 %482, i32* %480, align 4
  %506 = load i64, i64* %PC, align 8
  %507 = add i64 %506, -109
  store i64 %507, i64* %PC, align 8, !tbaa !2428
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
  %35 = phi i64 [ %42, %block_400603 ], [ %34, %block_4005e0 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %35, 2
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %6 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %PC, align 8, !tbaa !2428
  %41 = add i64 %7, 16
  store i64 %41, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400603:                                     ; preds = %block_4005e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %42 = add i64 %34, 21
  store i64 %42, i64* %PC, align 8, !tbaa !2428
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
  %224 = phi i64 [ %7046, %block_40188a ], [ %.pre7, %block_401877 ]
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
  %265 = phi i64 [ %6684, %block_401930 ], [ %.pre6, %block_401864 ]
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
  %303 = add i64 %6689, -80
  %304 = add i64 %6725, 5
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %307 = add i64 %6725, 6
  store i64 %307, i64* %PC, align 8
  %308 = load i64, i64* %9, align 8, !tbaa !2428
  %309 = add i64 %308, 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RBP, align 8, !tbaa !2428
  store i64 %309, i64* %9, align 8, !tbaa !2428
  %312 = add i64 %6725, 7
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %309 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %PC, align 8, !tbaa !2428
  %315 = add i64 %308, 16
  store i64 %315, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401864:                                     ; preds = %block_401858
  %316 = add i64 %6373, -56
  %317 = add i64 %6409, 7
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i32*
  store i32 1, i32* %318, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40186b

block_400d76:                                     ; preds = %block_400d6a
  %319 = add i64 %6578, -16
  %320 = add i64 %6614, 4
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = add i64 %6614, 7
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = add i64 %6614, 11
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
  %328 = add i64 %6614, 19
  store i64 %328, i64* %PC, align 8
  %329 = load i64, i64* %321, align 8
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %330 = add i64 %6614, 27
  store i64 %330, i64* %PC, align 8
  %331 = load i64, i64* %321, align 8
  store i64 %331, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %332 = add i64 %6578, -52
  %333 = add i64 %6614, 34
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RSI, align 8, !tbaa !2428
  %337 = add i64 %6614, 38
  store i64 %337, i64* %PC, align 8
  %338 = load i64, i64* %321, align 8
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = add i64 %338, 16
  %340 = add i64 %6614, 42
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %335 to i64
  %344 = sext i32 %342 to i64
  %345 = mul nsw i64 %344, %343
  %346 = trunc i64 %345 to i32
  %347 = and i64 %345, 4294967295
  store i64 %347, i64* %RSI, align 8, !tbaa !2428
  %348 = shl i64 %345, 32
  %349 = ashr exact i64 %348, 32
  %350 = icmp ne i64 %349, %345
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %70, align 1, !tbaa !2432
  %352 = and i32 %346, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #8
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %357 = lshr i32 %346, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %87, align 1, !tbaa !2449
  store i8 %351, i8* %93, align 1, !tbaa !2450
  %359 = add i64 %6614, 46
  store i64 %359, i64* %PC, align 8
  %360 = load i64, i64* %321, align 8
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  %361 = add i64 %360, 20
  %362 = add i64 %6614, 50
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = mul nsw i64 %365, %349
  %367 = and i64 %366, 4294967295
  store i64 %367, i64* %RSI, align 8, !tbaa !2428
  %368 = trunc i64 %366 to i32
  store i64 %367, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %369 = and i32 %368, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #8
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %374 = icmp eq i32 %368, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %84, align 1, !tbaa !2448
  %376 = lshr i32 %368, 31
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %378 = load i64, i64* %RBP, align 8
  %379 = add i64 %378, -56
  %380 = add i64 %6614, 55
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RSI, align 8, !tbaa !2428
  %384 = add i64 %378, -16
  %385 = add i64 %6614, 59
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RCX, align 8, !tbaa !2428
  %388 = add i64 %387, 20
  %389 = add i64 %6614, 63
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %382 to i64
  %393 = sext i32 %391 to i64
  %394 = mul nsw i64 %393, %392
  %395 = and i64 %394, 4294967295
  store i64 %395, i64* %RSI, align 8, !tbaa !2428
  %396 = trunc i64 %394 to i32
  %397 = add i32 %396, %368
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RDX, align 8, !tbaa !2428
  %399 = icmp ult i32 %397, %368
  %400 = icmp ult i32 %397, %396
  %401 = or i1 %399, %400
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %70, align 1, !tbaa !2432
  %403 = and i32 %397, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403) #8
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %76, align 1, !tbaa !2446
  %408 = xor i64 %394, %366
  %409 = trunc i64 %408 to i32
  %410 = xor i32 %409, %397
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %81, align 1, !tbaa !2447
  %414 = icmp eq i32 %397, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %84, align 1, !tbaa !2448
  %416 = lshr i32 %397, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %87, align 1, !tbaa !2449
  %418 = lshr i32 %396, 31
  %419 = xor i32 %416, %376
  %420 = xor i32 %416, %418
  %421 = add nuw nsw i32 %419, %420
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %93, align 1, !tbaa !2450
  %424 = add i64 %378, -60
  %425 = add i64 %6614, 68
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = add i32 %427, %397
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDX, align 8, !tbaa !2428
  %430 = icmp ult i32 %428, %397
  %431 = icmp ult i32 %428, %427
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %70, align 1, !tbaa !2432
  %434 = and i32 %428, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434) #8
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %76, align 1, !tbaa !2446
  %439 = xor i32 %427, %397
  %440 = xor i32 %439, %428
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %81, align 1, !tbaa !2447
  %444 = icmp eq i32 %428, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %84, align 1, !tbaa !2448
  %446 = lshr i32 %428, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %87, align 1, !tbaa !2449
  %448 = lshr i32 %427, 31
  %449 = xor i32 %446, %416
  %450 = xor i32 %446, %448
  %451 = add nuw nsw i32 %449, %450
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %93, align 1, !tbaa !2450
  %454 = sext i32 %428 to i64
  store i64 %454, i64* %RCX, align 8, !tbaa !2428
  %455 = load i64, i64* %RAX, align 8
  %456 = shl nsw i64 %454, 2
  %457 = add i64 %456, %455
  %458 = add i64 %6614, 76
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  store i32 %460, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %461 = load i64, i64* %RBP, align 8
  %462 = add i64 %461, -40
  %463 = add i64 %6614, 80
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i64*
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = add i64 %6614, 83
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RAX, align 8, !tbaa !2428
  %469 = add i64 %6614, 87
  store i64 %469, i64* %PC, align 8
  %470 = load i64, i64* %464, align 8
  store i64 %470, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %471 = add i64 %6614, 95
  store i64 %471, i64* %PC, align 8
  %472 = load i64, i64* %464, align 8
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %473 = add i64 %6614, 103
  store i64 %473, i64* %PC, align 8
  %474 = load i64, i64* %464, align 8
  store i64 %474, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %475 = add i64 %461, -52
  %476 = add i64 %6614, 110
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = add i32 %478, 1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RSI, align 8, !tbaa !2428
  %481 = icmp eq i32 %478, -1
  %482 = icmp eq i32 %479, 0
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %70, align 1, !tbaa !2432
  %485 = and i32 %479, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485) #8
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %76, align 1, !tbaa !2446
  %490 = xor i32 %478, %479
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %81, align 1, !tbaa !2447
  %494 = zext i1 %482 to i8
  store i8 %494, i8* %84, align 1, !tbaa !2448
  %495 = lshr i32 %479, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %87, align 1, !tbaa !2449
  %497 = lshr i32 %478, 31
  %498 = xor i32 %495, %497
  %499 = add nuw nsw i32 %498, %495
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %93, align 1, !tbaa !2450
  %502 = add i64 %6614, 117
  store i64 %502, i64* %PC, align 8
  %503 = load i64, i64* %464, align 8
  store i64 %503, i64* %RCX, align 8, !tbaa !2428
  %504 = add i64 %503, 16
  %505 = add i64 %6614, 121
  store i64 %505, i64* %PC, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = sext i32 %479 to i64
  %509 = sext i32 %507 to i64
  %510 = mul nsw i64 %509, %508
  %511 = trunc i64 %510 to i32
  %512 = and i64 %510, 4294967295
  store i64 %512, i64* %RSI, align 8, !tbaa !2428
  %513 = shl i64 %510, 32
  %514 = ashr exact i64 %513, 32
  %515 = icmp ne i64 %514, %510
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %70, align 1, !tbaa !2432
  %517 = and i32 %511, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517) #8
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %522 = lshr i32 %511, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %87, align 1, !tbaa !2449
  store i8 %516, i8* %93, align 1, !tbaa !2450
  %524 = add i64 %6614, 125
  store i64 %524, i64* %PC, align 8
  %525 = load i64, i64* %464, align 8
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = add i64 %525, 20
  %527 = add i64 %6614, 129
  store i64 %527, i64* %PC, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = sext i32 %529 to i64
  %531 = mul nsw i64 %530, %514
  %532 = and i64 %531, 4294967295
  store i64 %532, i64* %RSI, align 8, !tbaa !2428
  %533 = trunc i64 %531 to i32
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %535 = and i32 %533, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535) #8
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %540 = icmp eq i32 %533, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %84, align 1, !tbaa !2448
  %542 = lshr i32 %533, 31
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %544 = load i64, i64* %RBP, align 8
  %545 = add i64 %544, -56
  %546 = add i64 %6614, 134
  store i64 %546, i64* %PC, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RSI, align 8, !tbaa !2428
  %550 = add i64 %544, -40
  %551 = add i64 %6614, 138
  store i64 %551, i64* %PC, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RCX, align 8, !tbaa !2428
  %554 = add i64 %553, 20
  %555 = add i64 %6614, 142
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %548 to i64
  %559 = sext i32 %557 to i64
  %560 = mul nsw i64 %559, %558
  %561 = and i64 %560, 4294967295
  store i64 %561, i64* %RSI, align 8, !tbaa !2428
  %562 = trunc i64 %560 to i32
  %563 = add i32 %562, %533
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RDX, align 8, !tbaa !2428
  %565 = icmp ult i32 %563, %533
  %566 = icmp ult i32 %563, %562
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %70, align 1, !tbaa !2432
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569) #8
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %76, align 1, !tbaa !2446
  %574 = xor i64 %560, %534
  %575 = trunc i64 %574 to i32
  %576 = xor i32 %575, %563
  %577 = lshr i32 %576, 4
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %81, align 1, !tbaa !2447
  %580 = icmp eq i32 %563, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %84, align 1, !tbaa !2448
  %582 = lshr i32 %563, 31
  %583 = trunc i32 %582 to i8
  store i8 %583, i8* %87, align 1, !tbaa !2449
  %584 = lshr i32 %562, 31
  %585 = xor i32 %582, %542
  %586 = xor i32 %582, %584
  %587 = add nuw nsw i32 %585, %586
  %588 = icmp eq i32 %587, 2
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %93, align 1, !tbaa !2450
  %590 = add i64 %544, -60
  %591 = add i64 %6614, 147
  store i64 %591, i64* %PC, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = add i32 %593, %563
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RDX, align 8, !tbaa !2428
  %596 = icmp ult i32 %594, %563
  %597 = icmp ult i32 %594, %593
  %598 = or i1 %596, %597
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %70, align 1, !tbaa !2432
  %600 = and i32 %594, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600) #8
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %76, align 1, !tbaa !2446
  %605 = xor i32 %593, %563
  %606 = xor i32 %605, %594
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %81, align 1, !tbaa !2447
  %610 = icmp eq i32 %594, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %84, align 1, !tbaa !2448
  %612 = lshr i32 %594, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %87, align 1, !tbaa !2449
  %614 = lshr i32 %593, 31
  %615 = xor i32 %612, %582
  %616 = xor i32 %612, %614
  %617 = add nuw nsw i32 %615, %616
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %93, align 1, !tbaa !2450
  %620 = sext i32 %594 to i64
  store i64 %620, i64* %RCX, align 8, !tbaa !2428
  %621 = load i64, i64* %RAX, align 8
  %622 = shl nsw i64 %620, 2
  %623 = add i64 %622, %621
  %624 = add i64 %6614, 155
  store i64 %624, i64* %PC, align 8
  %625 = load <2 x float>, <2 x float>* %192, align 1
  %626 = load <2 x i32>, <2 x i32>* %197, align 1
  %627 = inttoptr i64 %623 to float*
  %628 = load float, float* %627, align 4
  %629 = extractelement <2 x float> %625, i32 0
  %630 = fmul float %629, %628
  store float %630, float* %193, align 1, !tbaa !2451
  %631 = bitcast <2 x float> %625 to <2 x i32>
  %632 = extractelement <2 x i32> %631, i32 1
  store i32 %632, i32* %188, align 1, !tbaa !2451
  %633 = extractelement <2 x i32> %626, i32 0
  store i32 %633, i32* %189, align 1, !tbaa !2451
  %634 = extractelement <2 x i32> %626, i32 1
  store i32 %634, i32* %191, align 1, !tbaa !2451
  %635 = load i64, i64* %RBP, align 8
  %636 = add i64 %635, -16
  %637 = add i64 %6614, 159
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX, align 8, !tbaa !2428
  %640 = add i64 %6614, 162
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RAX, align 8, !tbaa !2428
  %643 = add i64 %6614, 166
  store i64 %643, i64* %PC, align 8
  %644 = load i64, i64* %638, align 8
  store i64 %644, i64* %RCX, align 8, !tbaa !2428
  %645 = add i64 %644, 12
  %646 = add i64 %6614, 169
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RDX, align 8, !tbaa !2428
  %650 = add i64 %6614, 176
  store i64 %650, i64* %PC, align 8
  %651 = load i64, i64* %638, align 8
  store i64 %651, i64* %RCX, align 8, !tbaa !2428
  %652 = add i64 %651, 16
  %653 = add i64 %6614, 180
  store i64 %653, i64* %PC, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = sext i32 %648 to i64
  %657 = sext i32 %655 to i64
  %658 = mul nsw i64 %657, %656
  %659 = trunc i64 %658 to i32
  %660 = and i64 %658, 4294967295
  store i64 %660, i64* %RDX, align 8, !tbaa !2428
  %661 = shl i64 %658, 32
  %662 = ashr exact i64 %661, 32
  %663 = icmp ne i64 %662, %658
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %70, align 1, !tbaa !2432
  %665 = and i32 %659, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665) #8
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %670 = lshr i32 %659, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %87, align 1, !tbaa !2449
  store i8 %664, i8* %93, align 1, !tbaa !2450
  %672 = add i64 %6614, 184
  store i64 %672, i64* %PC, align 8
  %673 = load i64, i64* %638, align 8
  store i64 %673, i64* %RCX, align 8, !tbaa !2428
  %674 = add i64 %673, 20
  %675 = add i64 %6614, 188
  store i64 %675, i64* %PC, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = sext i32 %677 to i64
  %679 = mul nsw i64 %678, %662
  %680 = trunc i64 %679 to i32
  %681 = and i64 %679, 4294967295
  store i64 %681, i64* %RDX, align 8, !tbaa !2428
  %682 = shl i64 %679, 32
  %683 = ashr exact i64 %682, 32
  %684 = icmp ne i64 %683, %679
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %70, align 1, !tbaa !2432
  %686 = and i32 %680, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686) #8
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %691 = lshr i32 %680, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %87, align 1, !tbaa !2449
  store i8 %685, i8* %93, align 1, !tbaa !2450
  %693 = add i64 %635, -52
  %694 = add i64 %6614, 191
  store i64 %694, i64* %PC, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RSI, align 8, !tbaa !2428
  %698 = add i64 %6614, 195
  store i64 %698, i64* %PC, align 8
  %699 = load i64, i64* %638, align 8
  store i64 %699, i64* %RCX, align 8, !tbaa !2428
  %700 = add i64 %699, 16
  %701 = add i64 %6614, 199
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %696 to i64
  %705 = sext i32 %703 to i64
  %706 = mul nsw i64 %705, %704
  %707 = trunc i64 %706 to i32
  %708 = and i64 %706, 4294967295
  store i64 %708, i64* %RSI, align 8, !tbaa !2428
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
  %720 = load i64, i64* %RBP, align 8
  %721 = add i64 %720, -16
  %722 = add i64 %6614, 203
  store i64 %722, i64* %PC, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RCX, align 8, !tbaa !2428
  %725 = add i64 %724, 20
  %726 = add i64 %6614, 207
  store i64 %726, i64* %PC, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  %730 = mul nsw i64 %729, %710
  %731 = and i64 %730, 4294967295
  store i64 %731, i64* %RSI, align 8, !tbaa !2428
  %732 = trunc i64 %730 to i32
  %733 = add i32 %732, %680
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RDX, align 8, !tbaa !2428
  %735 = icmp ult i32 %733, %680
  %736 = icmp ult i32 %733, %732
  %737 = or i1 %735, %736
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %70, align 1, !tbaa !2432
  %739 = and i32 %733, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739) #8
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %76, align 1, !tbaa !2446
  %744 = xor i64 %730, %679
  %745 = trunc i64 %744 to i32
  %746 = xor i32 %745, %733
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %81, align 1, !tbaa !2447
  %750 = icmp eq i32 %733, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %84, align 1, !tbaa !2448
  %752 = lshr i32 %733, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %87, align 1, !tbaa !2449
  %754 = lshr i32 %732, 31
  %755 = xor i32 %752, %691
  %756 = xor i32 %752, %754
  %757 = add nuw nsw i32 %755, %756
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %93, align 1, !tbaa !2450
  %760 = add i64 %720, -56
  %761 = add i64 %6614, 212
  store i64 %761, i64* %PC, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RSI, align 8, !tbaa !2428
  %765 = add i64 %6614, 216
  store i64 %765, i64* %PC, align 8
  %766 = load i64, i64* %723, align 8
  store i64 %766, i64* %RCX, align 8, !tbaa !2428
  %767 = add i64 %766, 20
  %768 = add i64 %6614, 220
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = sext i32 %763 to i64
  %772 = sext i32 %770 to i64
  %773 = mul nsw i64 %772, %771
  %774 = and i64 %773, 4294967295
  store i64 %774, i64* %RSI, align 8, !tbaa !2428
  %775 = trunc i64 %773 to i32
  %776 = add i32 %775, %733
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RDX, align 8, !tbaa !2428
  %778 = icmp ult i32 %776, %733
  %779 = icmp ult i32 %776, %775
  %780 = or i1 %778, %779
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %70, align 1, !tbaa !2432
  %782 = and i32 %776, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782) #8
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %76, align 1, !tbaa !2446
  %787 = xor i64 %773, %734
  %788 = trunc i64 %787 to i32
  %789 = xor i32 %788, %776
  %790 = lshr i32 %789, 4
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  store i8 %792, i8* %81, align 1, !tbaa !2447
  %793 = icmp eq i32 %776, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %84, align 1, !tbaa !2448
  %795 = lshr i32 %776, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %87, align 1, !tbaa !2449
  %797 = lshr i32 %775, 31
  %798 = xor i32 %795, %752
  %799 = xor i32 %795, %797
  %800 = add nuw nsw i32 %798, %799
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %93, align 1, !tbaa !2450
  %803 = load i64, i64* %RBP, align 8
  %804 = add i64 %803, -60
  %805 = add i64 %6614, 225
  store i64 %805, i64* %PC, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = add i32 %807, %776
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RDX, align 8, !tbaa !2428
  %810 = icmp ult i32 %808, %776
  %811 = icmp ult i32 %808, %807
  %812 = or i1 %810, %811
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %70, align 1, !tbaa !2432
  %814 = and i32 %808, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814) #8
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %76, align 1, !tbaa !2446
  %819 = xor i32 %807, %776
  %820 = xor i32 %819, %808
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %81, align 1, !tbaa !2447
  %824 = icmp eq i32 %808, 0
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %84, align 1, !tbaa !2448
  %826 = lshr i32 %808, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %87, align 1, !tbaa !2449
  %828 = lshr i32 %807, 31
  %829 = xor i32 %826, %795
  %830 = xor i32 %826, %828
  %831 = add nuw nsw i32 %829, %830
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %93, align 1, !tbaa !2450
  %834 = sext i32 %808 to i64
  store i64 %834, i64* %RCX, align 8, !tbaa !2428
  %835 = load i64, i64* %RAX, align 8
  %836 = shl nsw i64 %834, 2
  %837 = add i64 %836, %835
  %838 = add i64 %6614, 233
  store i64 %838, i64* %PC, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = bitcast %union.VectorReg* %5 to i32*
  store i32 %840, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %842 = add i64 %803, -40
  %843 = add i64 %6614, 237
  store i64 %843, i64* %PC, align 8
  %844 = inttoptr i64 %842 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RAX, align 8, !tbaa !2428
  %846 = add i64 %6614, 240
  store i64 %846, i64* %PC, align 8
  %847 = inttoptr i64 %845 to i64*
  %848 = load i64, i64* %847, align 8
  store i64 %848, i64* %RAX, align 8, !tbaa !2428
  %849 = add i64 %6614, 244
  store i64 %849, i64* %PC, align 8
  %850 = load i64, i64* %844, align 8
  store i64 %850, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %851 = add i64 %6614, 252
  store i64 %851, i64* %PC, align 8
  %852 = load i64, i64* %844, align 8
  store i64 %852, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %853 = add i64 %6614, 260
  store i64 %853, i64* %PC, align 8
  %854 = load i64, i64* %844, align 8
  store i64 %854, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %855 = load i64, i64* %RBP, align 8
  %856 = add i64 %855, -52
  %857 = add i64 %6614, 267
  store i64 %857, i64* %PC, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RSI, align 8, !tbaa !2428
  %861 = add i64 %855, -40
  %862 = add i64 %6614, 271
  store i64 %862, i64* %PC, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RCX, align 8, !tbaa !2428
  %865 = add i64 %864, 16
  %866 = add i64 %6614, 275
  store i64 %866, i64* %PC, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = sext i32 %859 to i64
  %870 = sext i32 %868 to i64
  %871 = mul nsw i64 %870, %869
  %872 = trunc i64 %871 to i32
  %873 = and i64 %871, 4294967295
  store i64 %873, i64* %RSI, align 8, !tbaa !2428
  %874 = shl i64 %871, 32
  %875 = ashr exact i64 %874, 32
  %876 = icmp ne i64 %875, %871
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %70, align 1, !tbaa !2432
  %878 = and i32 %872, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878) #8
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %883 = lshr i32 %872, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %87, align 1, !tbaa !2449
  store i8 %877, i8* %93, align 1, !tbaa !2450
  %885 = add i64 %6614, 279
  store i64 %885, i64* %PC, align 8
  %886 = load i64, i64* %863, align 8
  store i64 %886, i64* %RCX, align 8, !tbaa !2428
  %887 = add i64 %886, 20
  %888 = add i64 %6614, 283
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  %892 = mul nsw i64 %891, %875
  %893 = and i64 %892, 4294967295
  store i64 %893, i64* %RSI, align 8, !tbaa !2428
  %894 = trunc i64 %892 to i32
  store i64 %893, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %895 = and i32 %894, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895) #8
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %900 = icmp eq i32 %894, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %84, align 1, !tbaa !2448
  %902 = lshr i32 %894, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %904 = add i64 %855, -56
  %905 = add i64 %6614, 288
  store i64 %905, i64* %PC, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = add i32 %907, 1
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RSI, align 8, !tbaa !2428
  %910 = icmp eq i32 %907, -1
  %911 = icmp eq i32 %908, 0
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %70, align 1, !tbaa !2432
  %914 = and i32 %908, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914) #8
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %76, align 1, !tbaa !2446
  %919 = xor i32 %907, %908
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %81, align 1, !tbaa !2447
  %923 = zext i1 %911 to i8
  store i8 %923, i8* %84, align 1, !tbaa !2448
  %924 = lshr i32 %908, 31
  %925 = trunc i32 %924 to i8
  store i8 %925, i8* %87, align 1, !tbaa !2449
  %926 = lshr i32 %907, 31
  %927 = xor i32 %924, %926
  %928 = add nuw nsw i32 %927, %924
  %929 = icmp eq i32 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %93, align 1, !tbaa !2450
  %931 = load i64, i64* %RBP, align 8
  %932 = add i64 %931, -40
  %933 = add i64 %6614, 295
  store i64 %933, i64* %PC, align 8
  %934 = inttoptr i64 %932 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %RCX, align 8, !tbaa !2428
  %936 = add i64 %935, 20
  %937 = add i64 %6614, 299
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = sext i32 %908 to i64
  %941 = sext i32 %939 to i64
  %942 = mul nsw i64 %941, %940
  %943 = and i64 %942, 4294967295
  store i64 %943, i64* %RSI, align 8, !tbaa !2428
  %944 = trunc i64 %942 to i32
  %945 = add i32 %944, %894
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RDX, align 8, !tbaa !2428
  %947 = icmp ult i32 %945, %894
  %948 = icmp ult i32 %945, %944
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %70, align 1, !tbaa !2432
  %951 = and i32 %945, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951) #8
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %76, align 1, !tbaa !2446
  %956 = xor i64 %942, %892
  %957 = trunc i64 %956 to i32
  %958 = xor i32 %957, %945
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %81, align 1, !tbaa !2447
  %962 = icmp eq i32 %945, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %84, align 1, !tbaa !2448
  %964 = lshr i32 %945, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %87, align 1, !tbaa !2449
  %966 = lshr i32 %944, 31
  %967 = xor i32 %964, %902
  %968 = xor i32 %964, %966
  %969 = add nuw nsw i32 %967, %968
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %93, align 1, !tbaa !2450
  %972 = add i64 %931, -60
  %973 = add i64 %6614, 304
  store i64 %973, i64* %PC, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = add i32 %975, %945
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RDX, align 8, !tbaa !2428
  %978 = icmp ult i32 %976, %945
  %979 = icmp ult i32 %976, %975
  %980 = or i1 %978, %979
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %70, align 1, !tbaa !2432
  %982 = and i32 %976, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982) #8
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %76, align 1, !tbaa !2446
  %987 = xor i32 %975, %945
  %988 = xor i32 %987, %976
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %81, align 1, !tbaa !2447
  %992 = icmp eq i32 %976, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %84, align 1, !tbaa !2448
  %994 = lshr i32 %976, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %87, align 1, !tbaa !2449
  %996 = lshr i32 %975, 31
  %997 = xor i32 %994, %964
  %998 = xor i32 %994, %996
  %999 = add nuw nsw i32 %997, %998
  %1000 = icmp eq i32 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %93, align 1, !tbaa !2450
  %1002 = sext i32 %976 to i64
  store i64 %1002, i64* %RCX, align 8, !tbaa !2428
  %1003 = load i64, i64* %RAX, align 8
  %1004 = shl nsw i64 %1002, 2
  %1005 = add i64 %1004, %1003
  %1006 = add i64 %6614, 312
  store i64 %1006, i64* %PC, align 8
  %1007 = load <2 x float>, <2 x float>* %206, align 1
  %1008 = load <2 x i32>, <2 x i32>* %207, align 1
  %1009 = inttoptr i64 %1005 to float*
  %1010 = load float, float* %1009, align 4
  %1011 = extractelement <2 x float> %1007, i32 0
  %1012 = fmul float %1011, %1010
  store float %1012, float* %199, align 1, !tbaa !2451
  %1013 = bitcast <2 x float> %1007 to <2 x i32>
  %1014 = extractelement <2 x i32> %1013, i32 1
  store i32 %1014, i32* %208, align 1, !tbaa !2451
  %1015 = extractelement <2 x i32> %1008, i32 0
  store i32 %1015, i32* %209, align 1, !tbaa !2451
  %1016 = extractelement <2 x i32> %1008, i32 1
  store i32 %1016, i32* %210, align 1, !tbaa !2451
  %1017 = load <2 x float>, <2 x float>* %192, align 1
  %1018 = load <2 x i32>, <2 x i32>* %197, align 1
  %1019 = load <2 x float>, <2 x float>* %206, align 1
  %1020 = extractelement <2 x float> %1017, i32 0
  %1021 = extractelement <2 x float> %1019, i32 0
  %1022 = fadd float %1020, %1021
  store float %1022, float* %193, align 1, !tbaa !2451
  %1023 = bitcast <2 x float> %1017 to <2 x i32>
  %1024 = extractelement <2 x i32> %1023, i32 1
  store i32 %1024, i32* %188, align 1, !tbaa !2451
  %1025 = extractelement <2 x i32> %1018, i32 0
  store i32 %1025, i32* %189, align 1, !tbaa !2451
  %1026 = extractelement <2 x i32> %1018, i32 1
  store i32 %1026, i32* %191, align 1, !tbaa !2451
  %1027 = load i64, i64* %RBP, align 8
  %1028 = add i64 %1027, -16
  %1029 = add i64 %6614, 320
  store i64 %1029, i64* %PC, align 8
  %1030 = inttoptr i64 %1028 to i64*
  %1031 = load i64, i64* %1030, align 8
  store i64 %1031, i64* %RAX, align 8, !tbaa !2428
  %1032 = add i64 %6614, 323
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %RAX, align 8, !tbaa !2428
  %1035 = add i64 %6614, 327
  store i64 %1035, i64* %PC, align 8
  %1036 = load i64, i64* %1030, align 8
  store i64 %1036, i64* %RCX, align 8, !tbaa !2428
  %1037 = add i64 %1036, 12
  %1038 = add i64 %6614, 330
  store i64 %1038, i64* %PC, align 8
  %1039 = inttoptr i64 %1037 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = shl i32 %1040, 1
  %1042 = icmp slt i32 %1040, 0
  %1043 = icmp slt i32 %1041, 0
  %1044 = xor i1 %1042, %1043
  %1045 = zext i32 %1041 to i64
  store i64 %1045, i64* %RDX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1040, 31
  %1046 = trunc i32 %.lobit to i8
  store i8 %1046, i8* %70, align 1, !tbaa !2453
  %1047 = and i32 %1041, 254
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047) #8
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %1052 = icmp eq i32 %1041, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %84, align 1, !tbaa !2453
  %1054 = lshr i32 %1040, 30
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %87, align 1, !tbaa !2453
  %1057 = zext i1 %1044 to i8
  store i8 %1057, i8* %93, align 1, !tbaa !2453
  %1058 = add i64 %6614, 337
  store i64 %1058, i64* %PC, align 8
  %1059 = load i64, i64* %1030, align 8
  store i64 %1059, i64* %RCX, align 8, !tbaa !2428
  %1060 = add i64 %1059, 16
  %1061 = add i64 %6614, 341
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1041 to i64
  %1065 = sext i32 %1063 to i64
  %1066 = mul nsw i64 %1065, %1064
  %1067 = trunc i64 %1066 to i32
  %1068 = and i64 %1066, 4294967294
  store i64 %1068, i64* %RDX, align 8, !tbaa !2428
  %1069 = shl i64 %1066, 32
  %1070 = ashr exact i64 %1069, 32
  %1071 = icmp ne i64 %1070, %1066
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %70, align 1, !tbaa !2432
  %1073 = and i32 %1067, 254
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073) #8
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1078 = lshr i32 %1067, 31
  %1079 = trunc i32 %1078 to i8
  store i8 %1079, i8* %87, align 1, !tbaa !2449
  store i8 %1072, i8* %93, align 1, !tbaa !2450
  %1080 = add i64 %6614, 345
  store i64 %1080, i64* %PC, align 8
  %1081 = load i64, i64* %1030, align 8
  store i64 %1081, i64* %RCX, align 8, !tbaa !2428
  %1082 = add i64 %1081, 20
  %1083 = add i64 %6614, 349
  store i64 %1083, i64* %PC, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = mul nsw i64 %1086, %1070
  %1088 = trunc i64 %1087 to i32
  %1089 = and i64 %1087, 4294967295
  store i64 %1089, i64* %RDX, align 8, !tbaa !2428
  %1090 = shl i64 %1087, 32
  %1091 = ashr exact i64 %1090, 32
  %1092 = icmp ne i64 %1091, %1087
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %70, align 1, !tbaa !2432
  %1094 = and i32 %1088, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094) #8
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1099 = lshr i32 %1088, 31
  %1100 = trunc i32 %1099 to i8
  store i8 %1100, i8* %87, align 1, !tbaa !2449
  store i8 %1093, i8* %93, align 1, !tbaa !2450
  %1101 = load i64, i64* %RBP, align 8
  %1102 = add i64 %1101, -52
  %1103 = add i64 %6614, 352
  store i64 %1103, i64* %PC, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RSI, align 8, !tbaa !2428
  %1107 = add i64 %1101, -16
  %1108 = add i64 %6614, 356
  store i64 %1108, i64* %PC, align 8
  %1109 = inttoptr i64 %1107 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %RCX, align 8, !tbaa !2428
  %1111 = add i64 %1110, 16
  %1112 = add i64 %6614, 360
  store i64 %1112, i64* %PC, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1105 to i64
  %1116 = sext i32 %1114 to i64
  %1117 = mul nsw i64 %1116, %1115
  %1118 = trunc i64 %1117 to i32
  %1119 = and i64 %1117, 4294967295
  store i64 %1119, i64* %RSI, align 8, !tbaa !2428
  %1120 = shl i64 %1117, 32
  %1121 = ashr exact i64 %1120, 32
  %1122 = icmp ne i64 %1121, %1117
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %70, align 1, !tbaa !2432
  %1124 = and i32 %1118, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124) #8
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1129 = lshr i32 %1118, 31
  %1130 = trunc i32 %1129 to i8
  store i8 %1130, i8* %87, align 1, !tbaa !2449
  store i8 %1123, i8* %93, align 1, !tbaa !2450
  %1131 = add i64 %6614, 364
  store i64 %1131, i64* %PC, align 8
  %1132 = load i64, i64* %1109, align 8
  store i64 %1132, i64* %RCX, align 8, !tbaa !2428
  %1133 = add i64 %1132, 20
  %1134 = add i64 %6614, 368
  store i64 %1134, i64* %PC, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = mul nsw i64 %1137, %1121
  %1139 = and i64 %1138, 4294967295
  store i64 %1139, i64* %RSI, align 8, !tbaa !2428
  %1140 = trunc i64 %1138 to i32
  %1141 = add i32 %1140, %1088
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RDX, align 8, !tbaa !2428
  %1143 = icmp ult i32 %1141, %1088
  %1144 = icmp ult i32 %1141, %1140
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %70, align 1, !tbaa !2432
  %1147 = and i32 %1141, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147) #8
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %76, align 1, !tbaa !2446
  %1152 = xor i64 %1138, %1087
  %1153 = trunc i64 %1152 to i32
  %1154 = xor i32 %1153, %1141
  %1155 = lshr i32 %1154, 4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %81, align 1, !tbaa !2447
  %1158 = icmp eq i32 %1141, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %84, align 1, !tbaa !2448
  %1160 = lshr i32 %1141, 31
  %1161 = trunc i32 %1160 to i8
  store i8 %1161, i8* %87, align 1, !tbaa !2449
  %1162 = lshr i32 %1140, 31
  %1163 = xor i32 %1160, %1099
  %1164 = xor i32 %1160, %1162
  %1165 = add nuw nsw i32 %1163, %1164
  %1166 = icmp eq i32 %1165, 2
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %93, align 1, !tbaa !2450
  %1168 = add i64 %1101, -56
  %1169 = add i64 %6614, 373
  store i64 %1169, i64* %PC, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RSI, align 8, !tbaa !2428
  %1173 = add i64 %6614, 377
  store i64 %1173, i64* %PC, align 8
  %1174 = load i64, i64* %1109, align 8
  store i64 %1174, i64* %RCX, align 8, !tbaa !2428
  %1175 = add i64 %1174, 20
  %1176 = add i64 %6614, 381
  store i64 %1176, i64* %PC, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = sext i32 %1171 to i64
  %1180 = sext i32 %1178 to i64
  %1181 = mul nsw i64 %1180, %1179
  %1182 = and i64 %1181, 4294967295
  store i64 %1182, i64* %RSI, align 8, !tbaa !2428
  %1183 = trunc i64 %1181 to i32
  %1184 = add i32 %1183, %1141
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RDX, align 8, !tbaa !2428
  %1186 = icmp ult i32 %1184, %1141
  %1187 = icmp ult i32 %1184, %1183
  %1188 = or i1 %1186, %1187
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %70, align 1, !tbaa !2432
  %1190 = and i32 %1184, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190) #8
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %76, align 1, !tbaa !2446
  %1195 = xor i64 %1181, %1142
  %1196 = trunc i64 %1195 to i32
  %1197 = xor i32 %1196, %1184
  %1198 = lshr i32 %1197, 4
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  store i8 %1200, i8* %81, align 1, !tbaa !2447
  %1201 = icmp eq i32 %1184, 0
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %84, align 1, !tbaa !2448
  %1203 = lshr i32 %1184, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %87, align 1, !tbaa !2449
  %1205 = lshr i32 %1183, 31
  %1206 = xor i32 %1203, %1160
  %1207 = xor i32 %1203, %1205
  %1208 = add nuw nsw i32 %1206, %1207
  %1209 = icmp eq i32 %1208, 2
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %93, align 1, !tbaa !2450
  %1211 = add i64 %1101, -60
  %1212 = add i64 %6614, 386
  store i64 %1212, i64* %PC, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = add i32 %1214, %1184
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RDX, align 8, !tbaa !2428
  %1217 = icmp ult i32 %1215, %1184
  %1218 = icmp ult i32 %1215, %1214
  %1219 = or i1 %1217, %1218
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %70, align 1, !tbaa !2432
  %1221 = and i32 %1215, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221) #8
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %76, align 1, !tbaa !2446
  %1226 = xor i32 %1214, %1184
  %1227 = xor i32 %1226, %1215
  %1228 = lshr i32 %1227, 4
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %81, align 1, !tbaa !2447
  %1231 = icmp eq i32 %1215, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %84, align 1, !tbaa !2448
  %1233 = lshr i32 %1215, 31
  %1234 = trunc i32 %1233 to i8
  store i8 %1234, i8* %87, align 1, !tbaa !2449
  %1235 = lshr i32 %1214, 31
  %1236 = xor i32 %1233, %1203
  %1237 = xor i32 %1233, %1235
  %1238 = add nuw nsw i32 %1236, %1237
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %93, align 1, !tbaa !2450
  %1241 = sext i32 %1215 to i64
  store i64 %1241, i64* %RCX, align 8, !tbaa !2428
  %1242 = load i64, i64* %RAX, align 8
  %1243 = shl nsw i64 %1241, 2
  %1244 = add i64 %1243, %1242
  %1245 = add i64 %6614, 394
  store i64 %1245, i64* %PC, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  store i32 %1247, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %1248 = load i64, i64* %RBP, align 8
  %1249 = add i64 %1248, -40
  %1250 = add i64 %6614, 398
  store i64 %1250, i64* %PC, align 8
  %1251 = inttoptr i64 %1249 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %RAX, align 8, !tbaa !2428
  %1253 = add i64 %6614, 401
  store i64 %1253, i64* %PC, align 8
  %1254 = inttoptr i64 %1252 to i64*
  %1255 = load i64, i64* %1254, align 8
  store i64 %1255, i64* %RAX, align 8, !tbaa !2428
  %1256 = add i64 %6614, 405
  store i64 %1256, i64* %PC, align 8
  %1257 = load i64, i64* %1251, align 8
  store i64 %1257, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1258 = add i64 %6614, 413
  store i64 %1258, i64* %PC, align 8
  %1259 = load i64, i64* %1251, align 8
  store i64 %1259, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1260 = add i64 %6614, 421
  store i64 %1260, i64* %PC, align 8
  %1261 = load i64, i64* %1251, align 8
  store i64 %1261, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1262 = add i64 %1248, -52
  %1263 = add i64 %6614, 428
  store i64 %1263, i64* %PC, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RSI, align 8, !tbaa !2428
  %1267 = add i64 %6614, 432
  store i64 %1267, i64* %PC, align 8
  %1268 = load i64, i64* %1251, align 8
  store i64 %1268, i64* %RCX, align 8, !tbaa !2428
  %1269 = add i64 %1268, 16
  %1270 = add i64 %6614, 436
  store i64 %1270, i64* %PC, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = sext i32 %1265 to i64
  %1274 = sext i32 %1272 to i64
  %1275 = mul nsw i64 %1274, %1273
  %1276 = trunc i64 %1275 to i32
  %1277 = and i64 %1275, 4294967295
  store i64 %1277, i64* %RSI, align 8, !tbaa !2428
  %1278 = shl i64 %1275, 32
  %1279 = ashr exact i64 %1278, 32
  %1280 = icmp ne i64 %1279, %1275
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %70, align 1, !tbaa !2432
  %1282 = and i32 %1276, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282) #8
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1287 = lshr i32 %1276, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %87, align 1, !tbaa !2449
  store i8 %1281, i8* %93, align 1, !tbaa !2450
  %1289 = add i64 %6614, 440
  store i64 %1289, i64* %PC, align 8
  %1290 = load i64, i64* %1251, align 8
  store i64 %1290, i64* %RCX, align 8, !tbaa !2428
  %1291 = add i64 %1290, 20
  %1292 = add i64 %6614, 444
  store i64 %1292, i64* %PC, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = mul nsw i64 %1295, %1279
  %1297 = and i64 %1296, 4294967295
  store i64 %1297, i64* %RSI, align 8, !tbaa !2428
  %1298 = trunc i64 %1296 to i32
  store i64 %1297, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1299 = and i32 %1298, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299) #8
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1304 = icmp eq i32 %1298, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %84, align 1, !tbaa !2448
  %1306 = lshr i32 %1298, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1308 = load i64, i64* %RBP, align 8
  %1309 = add i64 %1308, -56
  %1310 = add i64 %6614, 449
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RSI, align 8, !tbaa !2428
  %1314 = add i64 %1308, -40
  %1315 = add i64 %6614, 453
  store i64 %1315, i64* %PC, align 8
  %1316 = inttoptr i64 %1314 to i64*
  %1317 = load i64, i64* %1316, align 8
  store i64 %1317, i64* %RCX, align 8, !tbaa !2428
  %1318 = add i64 %1317, 20
  %1319 = add i64 %6614, 457
  store i64 %1319, i64* %PC, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = sext i32 %1312 to i64
  %1323 = sext i32 %1321 to i64
  %1324 = mul nsw i64 %1323, %1322
  %1325 = and i64 %1324, 4294967295
  store i64 %1325, i64* %RSI, align 8, !tbaa !2428
  %1326 = trunc i64 %1324 to i32
  %1327 = add i32 %1326, %1298
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RDX, align 8, !tbaa !2428
  %1329 = icmp ult i32 %1327, %1298
  %1330 = icmp ult i32 %1327, %1326
  %1331 = or i1 %1329, %1330
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %70, align 1, !tbaa !2432
  %1333 = and i32 %1327, 255
  %1334 = tail call i32 @llvm.ctpop.i32(i32 %1333) #8
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %76, align 1, !tbaa !2446
  %1338 = xor i64 %1324, %1296
  %1339 = trunc i64 %1338 to i32
  %1340 = xor i32 %1339, %1327
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %81, align 1, !tbaa !2447
  %1344 = icmp eq i32 %1327, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %84, align 1, !tbaa !2448
  %1346 = lshr i32 %1327, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %87, align 1, !tbaa !2449
  %1348 = lshr i32 %1326, 31
  %1349 = xor i32 %1346, %1306
  %1350 = xor i32 %1346, %1348
  %1351 = add nuw nsw i32 %1349, %1350
  %1352 = icmp eq i32 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %93, align 1, !tbaa !2450
  %1354 = add i64 %1308, -60
  %1355 = add i64 %6614, 462
  store i64 %1355, i64* %PC, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = add i32 %1357, 1
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RSI, align 8, !tbaa !2428
  %1360 = lshr i32 %1358, 31
  %1361 = add i32 %1358, %1327
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RDX, align 8, !tbaa !2428
  %1363 = icmp ult i32 %1361, %1327
  %1364 = icmp ult i32 %1361, %1358
  %1365 = or i1 %1363, %1364
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %70, align 1, !tbaa !2432
  %1367 = and i32 %1361, 255
  %1368 = tail call i32 @llvm.ctpop.i32(i32 %1367) #8
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  store i8 %1371, i8* %76, align 1, !tbaa !2446
  %1372 = xor i32 %1358, %1327
  %1373 = xor i32 %1372, %1361
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  store i8 %1376, i8* %81, align 1, !tbaa !2447
  %1377 = icmp eq i32 %1361, 0
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %84, align 1, !tbaa !2448
  %1379 = lshr i32 %1361, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %87, align 1, !tbaa !2449
  %1381 = xor i32 %1379, %1346
  %1382 = xor i32 %1379, %1360
  %1383 = add nuw nsw i32 %1381, %1382
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %93, align 1, !tbaa !2450
  %1386 = sext i32 %1361 to i64
  store i64 %1386, i64* %RCX, align 8, !tbaa !2428
  %1387 = load i64, i64* %RAX, align 8
  %1388 = shl nsw i64 %1386, 2
  %1389 = add i64 %1388, %1387
  %1390 = add i64 %6614, 475
  store i64 %1390, i64* %PC, align 8
  %1391 = load <2 x float>, <2 x float>* %206, align 1
  %1392 = load <2 x i32>, <2 x i32>* %207, align 1
  %1393 = inttoptr i64 %1389 to float*
  %1394 = load float, float* %1393, align 4
  %1395 = extractelement <2 x float> %1391, i32 0
  %1396 = fmul float %1395, %1394
  store float %1396, float* %199, align 1, !tbaa !2451
  %1397 = bitcast <2 x float> %1391 to <2 x i32>
  %1398 = extractelement <2 x i32> %1397, i32 1
  store i32 %1398, i32* %208, align 1, !tbaa !2451
  %1399 = extractelement <2 x i32> %1392, i32 0
  store i32 %1399, i32* %209, align 1, !tbaa !2451
  %1400 = extractelement <2 x i32> %1392, i32 1
  store i32 %1400, i32* %210, align 1, !tbaa !2451
  %1401 = load <2 x float>, <2 x float>* %192, align 1
  %1402 = load <2 x i32>, <2 x i32>* %197, align 1
  %1403 = load <2 x float>, <2 x float>* %206, align 1
  %1404 = extractelement <2 x float> %1401, i32 0
  %1405 = extractelement <2 x float> %1403, i32 0
  %1406 = fadd float %1404, %1405
  store float %1406, float* %193, align 1, !tbaa !2451
  %1407 = bitcast <2 x float> %1401 to <2 x i32>
  %1408 = extractelement <2 x i32> %1407, i32 1
  store i32 %1408, i32* %188, align 1, !tbaa !2451
  %1409 = extractelement <2 x i32> %1402, i32 0
  store i32 %1409, i32* %189, align 1, !tbaa !2451
  %1410 = extractelement <2 x i32> %1402, i32 1
  store i32 %1410, i32* %191, align 1, !tbaa !2451
  %1411 = load i64, i64* %RBP, align 8
  %1412 = add i64 %1411, -24
  %1413 = add i64 %6614, 483
  store i64 %1413, i64* %PC, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RAX, align 8, !tbaa !2428
  %1416 = add i64 %6614, 486
  store i64 %1416, i64* %PC, align 8
  %1417 = inttoptr i64 %1415 to i64*
  %1418 = load i64, i64* %1417, align 8
  store i64 %1418, i64* %RAX, align 8, !tbaa !2428
  %1419 = add i64 %6614, 490
  store i64 %1419, i64* %PC, align 8
  %1420 = load i64, i64* %1414, align 8
  store i64 %1420, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1421 = add i64 %6614, 498
  store i64 %1421, i64* %PC, align 8
  %1422 = load i64, i64* %1414, align 8
  store i64 %1422, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1423 = add i64 %6614, 506
  store i64 %1423, i64* %PC, align 8
  %1424 = load i64, i64* %1414, align 8
  store i64 %1424, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1425 = add i64 %1411, -52
  %1426 = add i64 %6614, 513
  store i64 %1426, i64* %PC, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RSI, align 8, !tbaa !2428
  %1430 = add i64 %6614, 517
  store i64 %1430, i64* %PC, align 8
  %1431 = load i64, i64* %1414, align 8
  store i64 %1431, i64* %RCX, align 8, !tbaa !2428
  %1432 = add i64 %1431, 16
  %1433 = add i64 %6614, 521
  store i64 %1433, i64* %PC, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = sext i32 %1428 to i64
  %1437 = sext i32 %1435 to i64
  %1438 = mul nsw i64 %1437, %1436
  %1439 = trunc i64 %1438 to i32
  %1440 = and i64 %1438, 4294967295
  store i64 %1440, i64* %RSI, align 8, !tbaa !2428
  %1441 = shl i64 %1438, 32
  %1442 = ashr exact i64 %1441, 32
  %1443 = icmp ne i64 %1442, %1438
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %70, align 1, !tbaa !2432
  %1445 = and i32 %1439, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445) #8
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1450 = lshr i32 %1439, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %87, align 1, !tbaa !2449
  store i8 %1444, i8* %93, align 1, !tbaa !2450
  %1452 = add i64 %6614, 525
  store i64 %1452, i64* %PC, align 8
  %1453 = load i64, i64* %1414, align 8
  store i64 %1453, i64* %RCX, align 8, !tbaa !2428
  %1454 = add i64 %1453, 20
  %1455 = add i64 %6614, 529
  store i64 %1455, i64* %PC, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = sext i32 %1457 to i64
  %1459 = mul nsw i64 %1458, %1442
  %1460 = and i64 %1459, 4294967295
  store i64 %1460, i64* %RSI, align 8, !tbaa !2428
  %1461 = trunc i64 %1459 to i32
  store i64 %1460, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1462 = and i32 %1461, 255
  %1463 = tail call i32 @llvm.ctpop.i32(i32 %1462) #8
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  store i8 %1466, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1467 = icmp eq i32 %1461, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %84, align 1, !tbaa !2448
  %1469 = lshr i32 %1461, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1471 = load i64, i64* %RBP, align 8
  %1472 = add i64 %1471, -56
  %1473 = add i64 %6614, 534
  store i64 %1473, i64* %PC, align 8
  %1474 = inttoptr i64 %1472 to i32*
  %1475 = load i32, i32* %1474, align 4
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RSI, align 8, !tbaa !2428
  %1477 = add i64 %1471, -24
  %1478 = add i64 %6614, 538
  store i64 %1478, i64* %PC, align 8
  %1479 = inttoptr i64 %1477 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %RCX, align 8, !tbaa !2428
  %1481 = add i64 %1480, 20
  %1482 = add i64 %6614, 542
  store i64 %1482, i64* %PC, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = sext i32 %1475 to i64
  %1486 = sext i32 %1484 to i64
  %1487 = mul nsw i64 %1486, %1485
  %1488 = and i64 %1487, 4294967295
  store i64 %1488, i64* %RSI, align 8, !tbaa !2428
  %1489 = trunc i64 %1487 to i32
  %1490 = add i32 %1489, %1461
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RDX, align 8, !tbaa !2428
  %1492 = icmp ult i32 %1490, %1461
  %1493 = icmp ult i32 %1490, %1489
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %70, align 1, !tbaa !2432
  %1496 = and i32 %1490, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496) #8
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %76, align 1, !tbaa !2446
  %1501 = xor i64 %1487, %1459
  %1502 = trunc i64 %1501 to i32
  %1503 = xor i32 %1502, %1490
  %1504 = lshr i32 %1503, 4
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  store i8 %1506, i8* %81, align 1, !tbaa !2447
  %1507 = icmp eq i32 %1490, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %84, align 1, !tbaa !2448
  %1509 = lshr i32 %1490, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %87, align 1, !tbaa !2449
  %1511 = lshr i32 %1489, 31
  %1512 = xor i32 %1509, %1469
  %1513 = xor i32 %1509, %1511
  %1514 = add nuw nsw i32 %1512, %1513
  %1515 = icmp eq i32 %1514, 2
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %93, align 1, !tbaa !2450
  %1517 = add i64 %1471, -60
  %1518 = add i64 %6614, 547
  store i64 %1518, i64* %PC, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = add i32 %1520, %1490
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RDX, align 8, !tbaa !2428
  %1523 = icmp ult i32 %1521, %1490
  %1524 = icmp ult i32 %1521, %1520
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %70, align 1, !tbaa !2432
  %1527 = and i32 %1521, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527) #8
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %76, align 1, !tbaa !2446
  %1532 = xor i32 %1520, %1490
  %1533 = xor i32 %1532, %1521
  %1534 = lshr i32 %1533, 4
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  store i8 %1536, i8* %81, align 1, !tbaa !2447
  %1537 = icmp eq i32 %1521, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %84, align 1, !tbaa !2448
  %1539 = lshr i32 %1521, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %87, align 1, !tbaa !2449
  %1541 = lshr i32 %1520, 31
  %1542 = xor i32 %1539, %1509
  %1543 = xor i32 %1539, %1541
  %1544 = add nuw nsw i32 %1542, %1543
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %93, align 1, !tbaa !2450
  %1547 = sext i32 %1521 to i64
  store i64 %1547, i64* %RCX, align 8, !tbaa !2428
  %1548 = load i64, i64* %RAX, align 8
  %1549 = shl nsw i64 %1547, 2
  %1550 = add i64 %1549, %1548
  %1551 = add i64 %6614, 555
  store i64 %1551, i64* %PC, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  store i32 %1553, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %1554 = load i64, i64* %RBP, align 8
  %1555 = add i64 %1554, -40
  %1556 = add i64 %6614, 559
  store i64 %1556, i64* %PC, align 8
  %1557 = inttoptr i64 %1555 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RAX, align 8, !tbaa !2428
  %1559 = add i64 %6614, 562
  store i64 %1559, i64* %PC, align 8
  %1560 = inttoptr i64 %1558 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %RAX, align 8, !tbaa !2428
  %1562 = add i64 %6614, 566
  store i64 %1562, i64* %PC, align 8
  %1563 = load i64, i64* %1557, align 8
  store i64 %1563, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1564 = add i64 %6614, 574
  store i64 %1564, i64* %PC, align 8
  %1565 = load i64, i64* %1557, align 8
  store i64 %1565, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1566 = add i64 %6614, 582
  store i64 %1566, i64* %PC, align 8
  %1567 = load i64, i64* %1557, align 8
  store i64 %1567, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1568 = add i64 %1554, -52
  %1569 = add i64 %6614, 589
  store i64 %1569, i64* %PC, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = add i32 %1571, 1
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RSI, align 8, !tbaa !2428
  %1574 = icmp eq i32 %1571, -1
  %1575 = icmp eq i32 %1572, 0
  %1576 = or i1 %1574, %1575
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %70, align 1, !tbaa !2432
  %1578 = and i32 %1572, 255
  %1579 = tail call i32 @llvm.ctpop.i32(i32 %1578) #8
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = xor i8 %1581, 1
  store i8 %1582, i8* %76, align 1, !tbaa !2446
  %1583 = xor i32 %1571, %1572
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  store i8 %1586, i8* %81, align 1, !tbaa !2447
  %1587 = zext i1 %1575 to i8
  store i8 %1587, i8* %84, align 1, !tbaa !2448
  %1588 = lshr i32 %1572, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %87, align 1, !tbaa !2449
  %1590 = lshr i32 %1571, 31
  %1591 = xor i32 %1588, %1590
  %1592 = add nuw nsw i32 %1591, %1588
  %1593 = icmp eq i32 %1592, 2
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %93, align 1, !tbaa !2450
  %1595 = add i64 %6614, 596
  store i64 %1595, i64* %PC, align 8
  %1596 = load i64, i64* %1557, align 8
  store i64 %1596, i64* %RCX, align 8, !tbaa !2428
  %1597 = add i64 %1596, 16
  %1598 = add i64 %6614, 600
  store i64 %1598, i64* %PC, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = sext i32 %1572 to i64
  %1602 = sext i32 %1600 to i64
  %1603 = mul nsw i64 %1602, %1601
  %1604 = trunc i64 %1603 to i32
  %1605 = and i64 %1603, 4294967295
  store i64 %1605, i64* %RSI, align 8, !tbaa !2428
  %1606 = shl i64 %1603, 32
  %1607 = ashr exact i64 %1606, 32
  %1608 = icmp ne i64 %1607, %1603
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %70, align 1, !tbaa !2432
  %1610 = and i32 %1604, 255
  %1611 = tail call i32 @llvm.ctpop.i32(i32 %1610) #8
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  store i8 %1614, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1615 = lshr i32 %1604, 31
  %1616 = trunc i32 %1615 to i8
  store i8 %1616, i8* %87, align 1, !tbaa !2449
  store i8 %1609, i8* %93, align 1, !tbaa !2450
  %1617 = add i64 %6614, 604
  store i64 %1617, i64* %PC, align 8
  %1618 = load i64, i64* %1557, align 8
  store i64 %1618, i64* %RCX, align 8, !tbaa !2428
  %1619 = add i64 %1618, 20
  %1620 = add i64 %6614, 608
  store i64 %1620, i64* %PC, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = sext i32 %1622 to i64
  %1624 = mul nsw i64 %1623, %1607
  %1625 = and i64 %1624, 4294967295
  store i64 %1625, i64* %RSI, align 8, !tbaa !2428
  %1626 = trunc i64 %1624 to i32
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1628 = and i32 %1626, 255
  %1629 = tail call i32 @llvm.ctpop.i32(i32 %1628) #8
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  %1632 = xor i8 %1631, 1
  store i8 %1632, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1633 = icmp eq i32 %1626, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %84, align 1, !tbaa !2448
  %1635 = lshr i32 %1626, 31
  %1636 = trunc i32 %1635 to i8
  store i8 %1636, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1637 = load i64, i64* %RBP, align 8
  %1638 = add i64 %1637, -56
  %1639 = add i64 %6614, 613
  store i64 %1639, i64* %PC, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = add i32 %1641, 1
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RSI, align 8, !tbaa !2428
  %1644 = icmp eq i32 %1641, -1
  %1645 = icmp eq i32 %1642, 0
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %70, align 1, !tbaa !2432
  %1648 = and i32 %1642, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648) #8
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %76, align 1, !tbaa !2446
  %1653 = xor i32 %1641, %1642
  %1654 = lshr i32 %1653, 4
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  store i8 %1656, i8* %81, align 1, !tbaa !2447
  %1657 = zext i1 %1645 to i8
  store i8 %1657, i8* %84, align 1, !tbaa !2448
  %1658 = lshr i32 %1642, 31
  %1659 = trunc i32 %1658 to i8
  store i8 %1659, i8* %87, align 1, !tbaa !2449
  %1660 = lshr i32 %1641, 31
  %1661 = xor i32 %1658, %1660
  %1662 = add nuw nsw i32 %1661, %1658
  %1663 = icmp eq i32 %1662, 2
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %93, align 1, !tbaa !2450
  %1665 = add i64 %1637, -40
  %1666 = add i64 %6614, 620
  store i64 %1666, i64* %PC, align 8
  %1667 = inttoptr i64 %1665 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %RCX, align 8, !tbaa !2428
  %1669 = add i64 %1668, 20
  %1670 = add i64 %6614, 624
  store i64 %1670, i64* %PC, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = sext i32 %1642 to i64
  %1674 = sext i32 %1672 to i64
  %1675 = mul nsw i64 %1674, %1673
  %1676 = and i64 %1675, 4294967295
  store i64 %1676, i64* %RSI, align 8, !tbaa !2428
  %1677 = trunc i64 %1675 to i32
  %1678 = add i32 %1677, %1626
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RDX, align 8, !tbaa !2428
  %1680 = icmp ult i32 %1678, %1626
  %1681 = icmp ult i32 %1678, %1677
  %1682 = or i1 %1680, %1681
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %70, align 1, !tbaa !2432
  %1684 = and i32 %1678, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684) #8
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %76, align 1, !tbaa !2446
  %1689 = xor i64 %1675, %1627
  %1690 = trunc i64 %1689 to i32
  %1691 = xor i32 %1690, %1678
  %1692 = lshr i32 %1691, 4
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  store i8 %1694, i8* %81, align 1, !tbaa !2447
  %1695 = icmp eq i32 %1678, 0
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %84, align 1, !tbaa !2448
  %1697 = lshr i32 %1678, 31
  %1698 = trunc i32 %1697 to i8
  store i8 %1698, i8* %87, align 1, !tbaa !2449
  %1699 = lshr i32 %1677, 31
  %1700 = xor i32 %1697, %1635
  %1701 = xor i32 %1697, %1699
  %1702 = add nuw nsw i32 %1700, %1701
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %93, align 1, !tbaa !2450
  %1705 = add i64 %1637, -60
  %1706 = add i64 %6614, 629
  store i64 %1706, i64* %PC, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = add i32 %1708, %1678
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RDX, align 8, !tbaa !2428
  %1711 = icmp ult i32 %1709, %1678
  %1712 = icmp ult i32 %1709, %1708
  %1713 = or i1 %1711, %1712
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %70, align 1, !tbaa !2432
  %1715 = and i32 %1709, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715) #8
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %76, align 1, !tbaa !2446
  %1720 = xor i32 %1708, %1678
  %1721 = xor i32 %1720, %1709
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  store i8 %1724, i8* %81, align 1, !tbaa !2447
  %1725 = icmp eq i32 %1709, 0
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %84, align 1, !tbaa !2448
  %1727 = lshr i32 %1709, 31
  %1728 = trunc i32 %1727 to i8
  store i8 %1728, i8* %87, align 1, !tbaa !2449
  %1729 = lshr i32 %1708, 31
  %1730 = xor i32 %1727, %1697
  %1731 = xor i32 %1727, %1729
  %1732 = add nuw nsw i32 %1730, %1731
  %1733 = icmp eq i32 %1732, 2
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %93, align 1, !tbaa !2450
  %1735 = sext i32 %1709 to i64
  store i64 %1735, i64* %RCX, align 8, !tbaa !2428
  %1736 = load i64, i64* %RAX, align 8
  %1737 = shl nsw i64 %1735, 2
  %1738 = add i64 %1737, %1736
  %1739 = add i64 %6614, 637
  store i64 %1739, i64* %PC, align 8
  %1740 = inttoptr i64 %1738 to i32*
  %1741 = load i32, i32* %1740, align 4
  %1742 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1741, i32* %1742, align 1, !tbaa !2451
  store float 0.000000e+00, float* %214, align 1, !tbaa !2451
  store float 0.000000e+00, float* %216, align 1, !tbaa !2451
  store float 0.000000e+00, float* %218, align 1, !tbaa !2451
  %1743 = add i64 %6614, 641
  store i64 %1743, i64* %PC, align 8
  %1744 = load i64, i64* %1667, align 8
  store i64 %1744, i64* %RAX, align 8, !tbaa !2428
  %1745 = add i64 %6614, 644
  store i64 %1745, i64* %PC, align 8
  %1746 = inttoptr i64 %1744 to i64*
  %1747 = load i64, i64* %1746, align 8
  store i64 %1747, i64* %RAX, align 8, !tbaa !2428
  %1748 = add i64 %6614, 648
  store i64 %1748, i64* %PC, align 8
  %1749 = load i64, i64* %1667, align 8
  store i64 %1749, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1750 = add i64 %6614, 656
  store i64 %1750, i64* %PC, align 8
  %1751 = load i64, i64* %1667, align 8
  store i64 %1751, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1752 = add i64 %6614, 664
  store i64 %1752, i64* %PC, align 8
  %1753 = load i64, i64* %1667, align 8
  store i64 %1753, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1754 = load i64, i64* %RBP, align 8
  %1755 = add i64 %1754, -52
  %1756 = add i64 %6614, 671
  store i64 %1756, i64* %PC, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = add i32 %1758, 1
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RSI, align 8, !tbaa !2428
  %1761 = icmp eq i32 %1758, -1
  %1762 = icmp eq i32 %1759, 0
  %1763 = or i1 %1761, %1762
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %70, align 1, !tbaa !2432
  %1765 = and i32 %1759, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765) #8
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %76, align 1, !tbaa !2446
  %1770 = xor i32 %1758, %1759
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %81, align 1, !tbaa !2447
  %1774 = zext i1 %1762 to i8
  store i8 %1774, i8* %84, align 1, !tbaa !2448
  %1775 = lshr i32 %1759, 31
  %1776 = trunc i32 %1775 to i8
  store i8 %1776, i8* %87, align 1, !tbaa !2449
  %1777 = lshr i32 %1758, 31
  %1778 = xor i32 %1775, %1777
  %1779 = add nuw nsw i32 %1778, %1775
  %1780 = icmp eq i32 %1779, 2
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %93, align 1, !tbaa !2450
  %1782 = add i64 %1754, -40
  %1783 = add i64 %6614, 678
  store i64 %1783, i64* %PC, align 8
  %1784 = inttoptr i64 %1782 to i64*
  %1785 = load i64, i64* %1784, align 8
  store i64 %1785, i64* %RCX, align 8, !tbaa !2428
  %1786 = add i64 %1785, 16
  %1787 = add i64 %6614, 682
  store i64 %1787, i64* %PC, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = sext i32 %1759 to i64
  %1791 = sext i32 %1789 to i64
  %1792 = mul nsw i64 %1791, %1790
  %1793 = trunc i64 %1792 to i32
  %1794 = and i64 %1792, 4294967295
  store i64 %1794, i64* %RSI, align 8, !tbaa !2428
  %1795 = shl i64 %1792, 32
  %1796 = ashr exact i64 %1795, 32
  %1797 = icmp ne i64 %1796, %1792
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %70, align 1, !tbaa !2432
  %1799 = and i32 %1793, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799) #8
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1804 = lshr i32 %1793, 31
  %1805 = trunc i32 %1804 to i8
  store i8 %1805, i8* %87, align 1, !tbaa !2449
  store i8 %1798, i8* %93, align 1, !tbaa !2450
  %1806 = add i64 %6614, 686
  store i64 %1806, i64* %PC, align 8
  %1807 = load i64, i64* %1784, align 8
  store i64 %1807, i64* %RCX, align 8, !tbaa !2428
  %1808 = add i64 %1807, 20
  %1809 = add i64 %6614, 690
  store i64 %1809, i64* %PC, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = sext i32 %1811 to i64
  %1813 = mul nsw i64 %1812, %1796
  %1814 = and i64 %1813, 4294967295
  store i64 %1814, i64* %RSI, align 8, !tbaa !2428
  %1815 = trunc i64 %1813 to i32
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1817 = and i32 %1815, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817) #8
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1822 = icmp eq i32 %1815, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %84, align 1, !tbaa !2448
  %1824 = lshr i32 %1815, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1826 = load i64, i64* %RBP, align 8
  %1827 = add i64 %1826, -56
  %1828 = add i64 %6614, 695
  store i64 %1828, i64* %PC, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = add i32 %1830, -1
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RSI, align 8, !tbaa !2428
  %1833 = icmp eq i32 %1830, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %70, align 1, !tbaa !2432
  %1835 = and i32 %1831, 255
  %1836 = tail call i32 @llvm.ctpop.i32(i32 %1835) #8
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = xor i8 %1838, 1
  store i8 %1839, i8* %76, align 1, !tbaa !2446
  %1840 = xor i32 %1830, %1831
  %1841 = lshr i32 %1840, 4
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %81, align 1, !tbaa !2447
  %1844 = icmp eq i32 %1831, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %84, align 1, !tbaa !2448
  %1846 = lshr i32 %1831, 31
  %1847 = trunc i32 %1846 to i8
  store i8 %1847, i8* %87, align 1, !tbaa !2449
  %1848 = lshr i32 %1830, 31
  %1849 = xor i32 %1846, %1848
  %1850 = add nuw nsw i32 %1849, %1848
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %93, align 1, !tbaa !2450
  %1853 = add i64 %1826, -40
  %1854 = add i64 %6614, 702
  store i64 %1854, i64* %PC, align 8
  %1855 = inttoptr i64 %1853 to i64*
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %RCX, align 8, !tbaa !2428
  %1857 = add i64 %1856, 20
  %1858 = add i64 %6614, 706
  store i64 %1858, i64* %PC, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = sext i32 %1831 to i64
  %1862 = sext i32 %1860 to i64
  %1863 = mul nsw i64 %1862, %1861
  %1864 = and i64 %1863, 4294967295
  store i64 %1864, i64* %RSI, align 8, !tbaa !2428
  %1865 = trunc i64 %1863 to i32
  %1866 = add i32 %1865, %1815
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RDX, align 8, !tbaa !2428
  %1868 = icmp ult i32 %1866, %1815
  %1869 = icmp ult i32 %1866, %1865
  %1870 = or i1 %1868, %1869
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %70, align 1, !tbaa !2432
  %1872 = and i32 %1866, 255
  %1873 = tail call i32 @llvm.ctpop.i32(i32 %1872) #8
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  store i8 %1876, i8* %76, align 1, !tbaa !2446
  %1877 = xor i64 %1863, %1816
  %1878 = trunc i64 %1877 to i32
  %1879 = xor i32 %1878, %1866
  %1880 = lshr i32 %1879, 4
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  store i8 %1882, i8* %81, align 1, !tbaa !2447
  %1883 = icmp eq i32 %1866, 0
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %84, align 1, !tbaa !2448
  %1885 = lshr i32 %1866, 31
  %1886 = trunc i32 %1885 to i8
  store i8 %1886, i8* %87, align 1, !tbaa !2449
  %1887 = lshr i32 %1865, 31
  %1888 = xor i32 %1885, %1824
  %1889 = xor i32 %1885, %1887
  %1890 = add nuw nsw i32 %1888, %1889
  %1891 = icmp eq i32 %1890, 2
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %93, align 1, !tbaa !2450
  %1893 = add i64 %1826, -60
  %1894 = add i64 %6614, 711
  store i64 %1894, i64* %PC, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = add i32 %1896, %1866
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RDX, align 8, !tbaa !2428
  %1899 = icmp ult i32 %1897, %1866
  %1900 = icmp ult i32 %1897, %1896
  %1901 = or i1 %1899, %1900
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %70, align 1, !tbaa !2432
  %1903 = and i32 %1897, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903) #8
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %76, align 1, !tbaa !2446
  %1908 = xor i32 %1896, %1866
  %1909 = xor i32 %1908, %1897
  %1910 = lshr i32 %1909, 4
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  store i8 %1912, i8* %81, align 1, !tbaa !2447
  %1913 = icmp eq i32 %1897, 0
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %84, align 1, !tbaa !2448
  %1915 = lshr i32 %1897, 31
  %1916 = trunc i32 %1915 to i8
  store i8 %1916, i8* %87, align 1, !tbaa !2449
  %1917 = lshr i32 %1896, 31
  %1918 = xor i32 %1915, %1885
  %1919 = xor i32 %1915, %1917
  %1920 = add nuw nsw i32 %1918, %1919
  %1921 = icmp eq i32 %1920, 2
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %93, align 1, !tbaa !2450
  %1923 = sext i32 %1897 to i64
  store i64 %1923, i64* %RCX, align 8, !tbaa !2428
  %1924 = load i64, i64* %RAX, align 8
  %1925 = shl nsw i64 %1923, 2
  %1926 = add i64 %1925, %1924
  %1927 = add i64 %6614, 719
  store i64 %1927, i64* %PC, align 8
  %1928 = load <2 x float>, <2 x float>* %219, align 1
  %1929 = load <2 x i32>, <2 x i32>* %220, align 1
  %1930 = inttoptr i64 %1926 to float*
  %1931 = load float, float* %1930, align 4
  %1932 = extractelement <2 x float> %1928, i32 0
  %1933 = fsub float %1932, %1931
  store float %1933, float* %212, align 1, !tbaa !2451
  %1934 = bitcast <2 x float> %1928 to <2 x i32>
  %1935 = extractelement <2 x i32> %1934, i32 1
  store i32 %1935, i32* %221, align 1, !tbaa !2451
  %1936 = extractelement <2 x i32> %1929, i32 0
  store i32 %1936, i32* %222, align 1, !tbaa !2451
  %1937 = extractelement <2 x i32> %1929, i32 1
  store i32 %1937, i32* %223, align 1, !tbaa !2451
  %1938 = add i64 %6614, 723
  store i64 %1938, i64* %PC, align 8
  %1939 = load i64, i64* %1855, align 8
  store i64 %1939, i64* %RAX, align 8, !tbaa !2428
  %1940 = add i64 %6614, 726
  store i64 %1940, i64* %PC, align 8
  %1941 = inttoptr i64 %1939 to i64*
  %1942 = load i64, i64* %1941, align 8
  store i64 %1942, i64* %RAX, align 8, !tbaa !2428
  %1943 = add i64 %6614, 730
  store i64 %1943, i64* %PC, align 8
  %1944 = load i64, i64* %1855, align 8
  store i64 %1944, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1945 = add i64 %6614, 738
  store i64 %1945, i64* %PC, align 8
  %1946 = load i64, i64* %1855, align 8
  store i64 %1946, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1947 = load i64, i64* %RBP, align 8
  %1948 = add i64 %1947, -40
  %1949 = add i64 %6614, 746
  store i64 %1949, i64* %PC, align 8
  %1950 = inttoptr i64 %1948 to i64*
  %1951 = load i64, i64* %1950, align 8
  store i64 %1951, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1952 = add i64 %1947, -52
  %1953 = add i64 %6614, 753
  store i64 %1953, i64* %PC, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = add i32 %1955, -1
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %RSI, align 8, !tbaa !2428
  %1958 = icmp eq i32 %1955, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %70, align 1, !tbaa !2432
  %1960 = and i32 %1956, 255
  %1961 = tail call i32 @llvm.ctpop.i32(i32 %1960) #8
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = xor i8 %1963, 1
  store i8 %1964, i8* %76, align 1, !tbaa !2446
  %1965 = xor i32 %1955, %1956
  %1966 = lshr i32 %1965, 4
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  store i8 %1968, i8* %81, align 1, !tbaa !2447
  %1969 = icmp eq i32 %1956, 0
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %84, align 1, !tbaa !2448
  %1971 = lshr i32 %1956, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %87, align 1, !tbaa !2449
  %1973 = lshr i32 %1955, 31
  %1974 = xor i32 %1971, %1973
  %1975 = add nuw nsw i32 %1974, %1973
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %93, align 1, !tbaa !2450
  %1978 = add i64 %6614, 760
  store i64 %1978, i64* %PC, align 8
  %1979 = load i64, i64* %1950, align 8
  store i64 %1979, i64* %RCX, align 8, !tbaa !2428
  %1980 = add i64 %1979, 16
  %1981 = add i64 %6614, 764
  store i64 %1981, i64* %PC, align 8
  %1982 = inttoptr i64 %1980 to i32*
  %1983 = load i32, i32* %1982, align 4
  %1984 = sext i32 %1956 to i64
  %1985 = sext i32 %1983 to i64
  %1986 = mul nsw i64 %1985, %1984
  %1987 = trunc i64 %1986 to i32
  %1988 = and i64 %1986, 4294967295
  store i64 %1988, i64* %RSI, align 8, !tbaa !2428
  %1989 = shl i64 %1986, 32
  %1990 = ashr exact i64 %1989, 32
  %1991 = icmp ne i64 %1990, %1986
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %70, align 1, !tbaa !2432
  %1993 = and i32 %1987, 255
  %1994 = tail call i32 @llvm.ctpop.i32(i32 %1993) #8
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  store i8 %1997, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1998 = lshr i32 %1987, 31
  %1999 = trunc i32 %1998 to i8
  store i8 %1999, i8* %87, align 1, !tbaa !2449
  store i8 %1992, i8* %93, align 1, !tbaa !2450
  %2000 = add i64 %6614, 768
  store i64 %2000, i64* %PC, align 8
  %2001 = load i64, i64* %1950, align 8
  store i64 %2001, i64* %RCX, align 8, !tbaa !2428
  %2002 = add i64 %2001, 20
  %2003 = add i64 %6614, 772
  store i64 %2003, i64* %PC, align 8
  %2004 = inttoptr i64 %2002 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = sext i32 %2005 to i64
  %2007 = mul nsw i64 %2006, %1990
  %2008 = and i64 %2007, 4294967295
  store i64 %2008, i64* %RSI, align 8, !tbaa !2428
  %2009 = trunc i64 %2007 to i32
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2011 = and i32 %2009, 255
  %2012 = tail call i32 @llvm.ctpop.i32(i32 %2011) #8
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  %2015 = xor i8 %2014, 1
  store i8 %2015, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2016 = icmp eq i32 %2009, 0
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %84, align 1, !tbaa !2448
  %2018 = lshr i32 %2009, 31
  %2019 = trunc i32 %2018 to i8
  store i8 %2019, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2020 = load i64, i64* %RBP, align 8
  %2021 = add i64 %2020, -56
  %2022 = add i64 %6614, 777
  store i64 %2022, i64* %PC, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = add i32 %2024, 1
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RSI, align 8, !tbaa !2428
  %2027 = icmp eq i32 %2024, -1
  %2028 = icmp eq i32 %2025, 0
  %2029 = or i1 %2027, %2028
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %70, align 1, !tbaa !2432
  %2031 = and i32 %2025, 255
  %2032 = tail call i32 @llvm.ctpop.i32(i32 %2031) #8
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  store i8 %2035, i8* %76, align 1, !tbaa !2446
  %2036 = xor i32 %2024, %2025
  %2037 = lshr i32 %2036, 4
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %81, align 1, !tbaa !2447
  %2040 = zext i1 %2028 to i8
  store i8 %2040, i8* %84, align 1, !tbaa !2448
  %2041 = lshr i32 %2025, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %87, align 1, !tbaa !2449
  %2043 = lshr i32 %2024, 31
  %2044 = xor i32 %2041, %2043
  %2045 = add nuw nsw i32 %2044, %2041
  %2046 = icmp eq i32 %2045, 2
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %93, align 1, !tbaa !2450
  %2048 = add i64 %2020, -40
  %2049 = add i64 %6614, 784
  store i64 %2049, i64* %PC, align 8
  %2050 = inttoptr i64 %2048 to i64*
  %2051 = load i64, i64* %2050, align 8
  store i64 %2051, i64* %RCX, align 8, !tbaa !2428
  %2052 = add i64 %2051, 20
  %2053 = add i64 %6614, 788
  store i64 %2053, i64* %PC, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = sext i32 %2025 to i64
  %2057 = sext i32 %2055 to i64
  %2058 = mul nsw i64 %2057, %2056
  %2059 = and i64 %2058, 4294967295
  store i64 %2059, i64* %RSI, align 8, !tbaa !2428
  %2060 = trunc i64 %2058 to i32
  %2061 = add i32 %2060, %2009
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RDX, align 8, !tbaa !2428
  %2063 = icmp ult i32 %2061, %2009
  %2064 = icmp ult i32 %2061, %2060
  %2065 = or i1 %2063, %2064
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %70, align 1, !tbaa !2432
  %2067 = and i32 %2061, 255
  %2068 = tail call i32 @llvm.ctpop.i32(i32 %2067) #8
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = xor i8 %2070, 1
  store i8 %2071, i8* %76, align 1, !tbaa !2446
  %2072 = xor i64 %2058, %2010
  %2073 = trunc i64 %2072 to i32
  %2074 = xor i32 %2073, %2061
  %2075 = lshr i32 %2074, 4
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %81, align 1, !tbaa !2447
  %2078 = icmp eq i32 %2061, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %84, align 1, !tbaa !2448
  %2080 = lshr i32 %2061, 31
  %2081 = trunc i32 %2080 to i8
  store i8 %2081, i8* %87, align 1, !tbaa !2449
  %2082 = lshr i32 %2060, 31
  %2083 = xor i32 %2080, %2018
  %2084 = xor i32 %2080, %2082
  %2085 = add nuw nsw i32 %2083, %2084
  %2086 = icmp eq i32 %2085, 2
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %93, align 1, !tbaa !2450
  %2088 = add i64 %2020, -60
  %2089 = add i64 %6614, 793
  store i64 %2089, i64* %PC, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = add i32 %2091, %2061
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RDX, align 8, !tbaa !2428
  %2094 = icmp ult i32 %2092, %2061
  %2095 = icmp ult i32 %2092, %2091
  %2096 = or i1 %2094, %2095
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %70, align 1, !tbaa !2432
  %2098 = and i32 %2092, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098) #8
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %76, align 1, !tbaa !2446
  %2103 = xor i32 %2091, %2061
  %2104 = xor i32 %2103, %2092
  %2105 = lshr i32 %2104, 4
  %2106 = trunc i32 %2105 to i8
  %2107 = and i8 %2106, 1
  store i8 %2107, i8* %81, align 1, !tbaa !2447
  %2108 = icmp eq i32 %2092, 0
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %84, align 1, !tbaa !2448
  %2110 = lshr i32 %2092, 31
  %2111 = trunc i32 %2110 to i8
  store i8 %2111, i8* %87, align 1, !tbaa !2449
  %2112 = lshr i32 %2091, 31
  %2113 = xor i32 %2110, %2080
  %2114 = xor i32 %2110, %2112
  %2115 = add nuw nsw i32 %2113, %2114
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %93, align 1, !tbaa !2450
  %2118 = sext i32 %2092 to i64
  store i64 %2118, i64* %RCX, align 8, !tbaa !2428
  %2119 = load i64, i64* %RAX, align 8
  %2120 = shl nsw i64 %2118, 2
  %2121 = add i64 %2120, %2119
  %2122 = add i64 %6614, 801
  store i64 %2122, i64* %PC, align 8
  %2123 = load <2 x float>, <2 x float>* %219, align 1
  %2124 = load <2 x i32>, <2 x i32>* %220, align 1
  %2125 = inttoptr i64 %2121 to float*
  %2126 = load float, float* %2125, align 4
  %2127 = extractelement <2 x float> %2123, i32 0
  %2128 = fsub float %2127, %2126
  store float %2128, float* %212, align 1, !tbaa !2451
  %2129 = bitcast <2 x float> %2123 to <2 x i32>
  %2130 = extractelement <2 x i32> %2129, i32 1
  store i32 %2130, i32* %221, align 1, !tbaa !2451
  %2131 = extractelement <2 x i32> %2124, i32 0
  store i32 %2131, i32* %222, align 1, !tbaa !2451
  %2132 = extractelement <2 x i32> %2124, i32 1
  store i32 %2132, i32* %223, align 1, !tbaa !2451
  %2133 = add i64 %6614, 805
  store i64 %2133, i64* %PC, align 8
  %2134 = load i64, i64* %2050, align 8
  store i64 %2134, i64* %RAX, align 8, !tbaa !2428
  %2135 = add i64 %6614, 808
  store i64 %2135, i64* %PC, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RAX, align 8, !tbaa !2428
  %2138 = add i64 %6614, 812
  store i64 %2138, i64* %PC, align 8
  %2139 = load i64, i64* %2050, align 8
  store i64 %2139, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2140 = add i64 %6614, 820
  store i64 %2140, i64* %PC, align 8
  %2141 = load i64, i64* %2050, align 8
  store i64 %2141, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2142 = load i64, i64* %RBP, align 8
  %2143 = add i64 %2142, -40
  %2144 = add i64 %6614, 828
  store i64 %2144, i64* %PC, align 8
  %2145 = inttoptr i64 %2143 to i64*
  %2146 = load i64, i64* %2145, align 8
  store i64 %2146, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2147 = add i64 %2142, -52
  %2148 = add i64 %6614, 835
  store i64 %2148, i64* %PC, align 8
  %2149 = inttoptr i64 %2147 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = add i32 %2150, -1
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RSI, align 8, !tbaa !2428
  %2153 = icmp eq i32 %2150, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %70, align 1, !tbaa !2432
  %2155 = and i32 %2151, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155) #8
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %76, align 1, !tbaa !2446
  %2160 = xor i32 %2150, %2151
  %2161 = lshr i32 %2160, 4
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  store i8 %2163, i8* %81, align 1, !tbaa !2447
  %2164 = icmp eq i32 %2151, 0
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %84, align 1, !tbaa !2448
  %2166 = lshr i32 %2151, 31
  %2167 = trunc i32 %2166 to i8
  store i8 %2167, i8* %87, align 1, !tbaa !2449
  %2168 = lshr i32 %2150, 31
  %2169 = xor i32 %2166, %2168
  %2170 = add nuw nsw i32 %2169, %2168
  %2171 = icmp eq i32 %2170, 2
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %93, align 1, !tbaa !2450
  %2173 = add i64 %6614, 842
  store i64 %2173, i64* %PC, align 8
  %2174 = load i64, i64* %2145, align 8
  store i64 %2174, i64* %RCX, align 8, !tbaa !2428
  %2175 = add i64 %2174, 16
  %2176 = add i64 %6614, 846
  store i64 %2176, i64* %PC, align 8
  %2177 = inttoptr i64 %2175 to i32*
  %2178 = load i32, i32* %2177, align 4
  %2179 = sext i32 %2151 to i64
  %2180 = sext i32 %2178 to i64
  %2181 = mul nsw i64 %2180, %2179
  %2182 = trunc i64 %2181 to i32
  %2183 = and i64 %2181, 4294967295
  store i64 %2183, i64* %RSI, align 8, !tbaa !2428
  %2184 = shl i64 %2181, 32
  %2185 = ashr exact i64 %2184, 32
  %2186 = icmp ne i64 %2185, %2181
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %70, align 1, !tbaa !2432
  %2188 = and i32 %2182, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188) #8
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2193 = lshr i32 %2182, 31
  %2194 = trunc i32 %2193 to i8
  store i8 %2194, i8* %87, align 1, !tbaa !2449
  store i8 %2187, i8* %93, align 1, !tbaa !2450
  %2195 = add i64 %6614, 850
  store i64 %2195, i64* %PC, align 8
  %2196 = load i64, i64* %2145, align 8
  store i64 %2196, i64* %RCX, align 8, !tbaa !2428
  %2197 = add i64 %2196, 20
  %2198 = add i64 %6614, 854
  store i64 %2198, i64* %PC, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = sext i32 %2200 to i64
  %2202 = mul nsw i64 %2201, %2185
  %2203 = and i64 %2202, 4294967295
  store i64 %2203, i64* %RSI, align 8, !tbaa !2428
  %2204 = trunc i64 %2202 to i32
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2206 = and i32 %2204, 255
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206) #8
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2211 = icmp eq i32 %2204, 0
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %84, align 1, !tbaa !2448
  %2213 = lshr i32 %2204, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2215 = load i64, i64* %RBP, align 8
  %2216 = add i64 %2215, -56
  %2217 = add i64 %6614, 859
  store i64 %2217, i64* %PC, align 8
  %2218 = inttoptr i64 %2216 to i32*
  %2219 = load i32, i32* %2218, align 4
  %2220 = add i32 %2219, -1
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RSI, align 8, !tbaa !2428
  %2222 = icmp eq i32 %2219, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %70, align 1, !tbaa !2432
  %2224 = and i32 %2220, 255
  %2225 = tail call i32 @llvm.ctpop.i32(i32 %2224) #8
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  store i8 %2228, i8* %76, align 1, !tbaa !2446
  %2229 = xor i32 %2219, %2220
  %2230 = lshr i32 %2229, 4
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  store i8 %2232, i8* %81, align 1, !tbaa !2447
  %2233 = icmp eq i32 %2220, 0
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %84, align 1, !tbaa !2448
  %2235 = lshr i32 %2220, 31
  %2236 = trunc i32 %2235 to i8
  store i8 %2236, i8* %87, align 1, !tbaa !2449
  %2237 = lshr i32 %2219, 31
  %2238 = xor i32 %2235, %2237
  %2239 = add nuw nsw i32 %2238, %2237
  %2240 = icmp eq i32 %2239, 2
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %93, align 1, !tbaa !2450
  %2242 = add i64 %2215, -40
  %2243 = add i64 %6614, 866
  store i64 %2243, i64* %PC, align 8
  %2244 = inttoptr i64 %2242 to i64*
  %2245 = load i64, i64* %2244, align 8
  store i64 %2245, i64* %RCX, align 8, !tbaa !2428
  %2246 = add i64 %2245, 20
  %2247 = add i64 %6614, 870
  store i64 %2247, i64* %PC, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = sext i32 %2220 to i64
  %2251 = sext i32 %2249 to i64
  %2252 = mul nsw i64 %2251, %2250
  %2253 = and i64 %2252, 4294967295
  store i64 %2253, i64* %RSI, align 8, !tbaa !2428
  %2254 = trunc i64 %2252 to i32
  %2255 = add i32 %2254, %2204
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RDX, align 8, !tbaa !2428
  %2257 = icmp ult i32 %2255, %2204
  %2258 = icmp ult i32 %2255, %2254
  %2259 = or i1 %2257, %2258
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %70, align 1, !tbaa !2432
  %2261 = and i32 %2255, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261) #8
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %76, align 1, !tbaa !2446
  %2266 = xor i64 %2252, %2205
  %2267 = trunc i64 %2266 to i32
  %2268 = xor i32 %2267, %2255
  %2269 = lshr i32 %2268, 4
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  store i8 %2271, i8* %81, align 1, !tbaa !2447
  %2272 = icmp eq i32 %2255, 0
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %84, align 1, !tbaa !2448
  %2274 = lshr i32 %2255, 31
  %2275 = trunc i32 %2274 to i8
  store i8 %2275, i8* %87, align 1, !tbaa !2449
  %2276 = lshr i32 %2254, 31
  %2277 = xor i32 %2274, %2213
  %2278 = xor i32 %2274, %2276
  %2279 = add nuw nsw i32 %2277, %2278
  %2280 = icmp eq i32 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %93, align 1, !tbaa !2450
  %2282 = add i64 %2215, -60
  %2283 = add i64 %6614, 875
  store i64 %2283, i64* %PC, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = add i32 %2285, %2255
  %2287 = zext i32 %2286 to i64
  store i64 %2287, i64* %RDX, align 8, !tbaa !2428
  %2288 = icmp ult i32 %2286, %2255
  %2289 = icmp ult i32 %2286, %2285
  %2290 = or i1 %2288, %2289
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %70, align 1, !tbaa !2432
  %2292 = and i32 %2286, 255
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292) #8
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %76, align 1, !tbaa !2446
  %2297 = xor i32 %2285, %2255
  %2298 = xor i32 %2297, %2286
  %2299 = lshr i32 %2298, 4
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  store i8 %2301, i8* %81, align 1, !tbaa !2447
  %2302 = icmp eq i32 %2286, 0
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %84, align 1, !tbaa !2448
  %2304 = lshr i32 %2286, 31
  %2305 = trunc i32 %2304 to i8
  store i8 %2305, i8* %87, align 1, !tbaa !2449
  %2306 = lshr i32 %2285, 31
  %2307 = xor i32 %2304, %2274
  %2308 = xor i32 %2304, %2306
  %2309 = add nuw nsw i32 %2307, %2308
  %2310 = icmp eq i32 %2309, 2
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %93, align 1, !tbaa !2450
  %2312 = sext i32 %2286 to i64
  store i64 %2312, i64* %RCX, align 8, !tbaa !2428
  %2313 = load i64, i64* %RAX, align 8
  %2314 = shl nsw i64 %2312, 2
  %2315 = add i64 %2314, %2313
  %2316 = add i64 %6614, 883
  store i64 %2316, i64* %PC, align 8
  %2317 = load <2 x float>, <2 x float>* %219, align 1
  %2318 = load <2 x i32>, <2 x i32>* %220, align 1
  %2319 = inttoptr i64 %2315 to float*
  %2320 = load float, float* %2319, align 4
  %2321 = extractelement <2 x float> %2317, i32 0
  %2322 = fadd float %2321, %2320
  store float %2322, float* %212, align 1, !tbaa !2451
  %2323 = bitcast <2 x float> %2317 to <2 x i32>
  %2324 = extractelement <2 x i32> %2323, i32 1
  store i32 %2324, i32* %221, align 1, !tbaa !2451
  %2325 = extractelement <2 x i32> %2318, i32 0
  store i32 %2325, i32* %222, align 1, !tbaa !2451
  %2326 = extractelement <2 x i32> %2318, i32 1
  store i32 %2326, i32* %223, align 1, !tbaa !2451
  %2327 = load <2 x float>, <2 x float>* %206, align 1
  %2328 = load <2 x i32>, <2 x i32>* %207, align 1
  %2329 = load <2 x float>, <2 x float>* %219, align 1
  %2330 = extractelement <2 x float> %2327, i32 0
  %2331 = extractelement <2 x float> %2329, i32 0
  %2332 = fmul float %2330, %2331
  store float %2332, float* %199, align 1, !tbaa !2451
  %2333 = bitcast <2 x float> %2327 to <2 x i32>
  %2334 = extractelement <2 x i32> %2333, i32 1
  store i32 %2334, i32* %208, align 1, !tbaa !2451
  %2335 = extractelement <2 x i32> %2328, i32 0
  store i32 %2335, i32* %209, align 1, !tbaa !2451
  %2336 = extractelement <2 x i32> %2328, i32 1
  store i32 %2336, i32* %210, align 1, !tbaa !2451
  %2337 = load <2 x float>, <2 x float>* %192, align 1
  %2338 = load <2 x i32>, <2 x i32>* %197, align 1
  %2339 = load <2 x float>, <2 x float>* %206, align 1
  %2340 = extractelement <2 x float> %2337, i32 0
  %2341 = extractelement <2 x float> %2339, i32 0
  %2342 = fadd float %2340, %2341
  store float %2342, float* %193, align 1, !tbaa !2451
  %2343 = bitcast <2 x float> %2337 to <2 x i32>
  %2344 = extractelement <2 x i32> %2343, i32 1
  store i32 %2344, i32* %188, align 1, !tbaa !2451
  %2345 = extractelement <2 x i32> %2338, i32 0
  store i32 %2345, i32* %189, align 1, !tbaa !2451
  %2346 = extractelement <2 x i32> %2338, i32 1
  store i32 %2346, i32* %191, align 1, !tbaa !2451
  %2347 = add i64 %2215, -24
  %2348 = add i64 %6614, 895
  store i64 %2348, i64* %PC, align 8
  %2349 = inttoptr i64 %2347 to i64*
  %2350 = load i64, i64* %2349, align 8
  store i64 %2350, i64* %RAX, align 8, !tbaa !2428
  %2351 = add i64 %6614, 898
  store i64 %2351, i64* %PC, align 8
  %2352 = inttoptr i64 %2350 to i64*
  %2353 = load i64, i64* %2352, align 8
  store i64 %2353, i64* %RAX, align 8, !tbaa !2428
  %2354 = load i64, i64* %RBP, align 8
  %2355 = add i64 %2354, -24
  %2356 = add i64 %6614, 902
  store i64 %2356, i64* %PC, align 8
  %2357 = inttoptr i64 %2355 to i64*
  %2358 = load i64, i64* %2357, align 8
  store i64 %2358, i64* %RCX, align 8, !tbaa !2428
  %2359 = add i64 %2358, 12
  %2360 = add i64 %6614, 905
  store i64 %2360, i64* %PC, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RDX, align 8, !tbaa !2428
  %2364 = add i64 %6614, 912
  store i64 %2364, i64* %PC, align 8
  %2365 = load i64, i64* %2357, align 8
  store i64 %2365, i64* %RCX, align 8, !tbaa !2428
  %2366 = add i64 %2365, 16
  %2367 = add i64 %6614, 916
  store i64 %2367, i64* %PC, align 8
  %2368 = inttoptr i64 %2366 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = sext i32 %2362 to i64
  %2371 = sext i32 %2369 to i64
  %2372 = mul nsw i64 %2371, %2370
  %2373 = trunc i64 %2372 to i32
  %2374 = and i64 %2372, 4294967295
  store i64 %2374, i64* %RDX, align 8, !tbaa !2428
  %2375 = shl i64 %2372, 32
  %2376 = ashr exact i64 %2375, 32
  %2377 = icmp ne i64 %2376, %2372
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %70, align 1, !tbaa !2432
  %2379 = and i32 %2373, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379) #8
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2384 = lshr i32 %2373, 31
  %2385 = trunc i32 %2384 to i8
  store i8 %2385, i8* %87, align 1, !tbaa !2449
  store i8 %2378, i8* %93, align 1, !tbaa !2450
  %2386 = add i64 %6614, 920
  store i64 %2386, i64* %PC, align 8
  %2387 = load i64, i64* %2357, align 8
  store i64 %2387, i64* %RCX, align 8, !tbaa !2428
  %2388 = add i64 %2387, 20
  %2389 = add i64 %6614, 924
  store i64 %2389, i64* %PC, align 8
  %2390 = inttoptr i64 %2388 to i32*
  %2391 = load i32, i32* %2390, align 4
  %2392 = sext i32 %2391 to i64
  %2393 = mul nsw i64 %2392, %2376
  %2394 = trunc i64 %2393 to i32
  %2395 = and i64 %2393, 4294967295
  store i64 %2395, i64* %RDX, align 8, !tbaa !2428
  %2396 = shl i64 %2393, 32
  %2397 = ashr exact i64 %2396, 32
  %2398 = icmp ne i64 %2397, %2393
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %70, align 1, !tbaa !2432
  %2400 = and i32 %2394, 255
  %2401 = tail call i32 @llvm.ctpop.i32(i32 %2400) #8
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  store i8 %2404, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2405 = lshr i32 %2394, 31
  %2406 = trunc i32 %2405 to i8
  store i8 %2406, i8* %87, align 1, !tbaa !2449
  store i8 %2399, i8* %93, align 1, !tbaa !2450
  %2407 = add i64 %2354, -52
  %2408 = add i64 %6614, 927
  store i64 %2408, i64* %PC, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RSI, align 8, !tbaa !2428
  %2412 = add i64 %6614, 931
  store i64 %2412, i64* %PC, align 8
  %2413 = load i64, i64* %2357, align 8
  store i64 %2413, i64* %RCX, align 8, !tbaa !2428
  %2414 = add i64 %2413, 16
  %2415 = add i64 %6614, 935
  store i64 %2415, i64* %PC, align 8
  %2416 = inttoptr i64 %2414 to i32*
  %2417 = load i32, i32* %2416, align 4
  %2418 = sext i32 %2410 to i64
  %2419 = sext i32 %2417 to i64
  %2420 = mul nsw i64 %2419, %2418
  %2421 = trunc i64 %2420 to i32
  %2422 = and i64 %2420, 4294967295
  store i64 %2422, i64* %RSI, align 8, !tbaa !2428
  %2423 = shl i64 %2420, 32
  %2424 = ashr exact i64 %2423, 32
  %2425 = icmp ne i64 %2424, %2420
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %70, align 1, !tbaa !2432
  %2427 = and i32 %2421, 255
  %2428 = tail call i32 @llvm.ctpop.i32(i32 %2427) #8
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  %2431 = xor i8 %2430, 1
  store i8 %2431, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2432 = lshr i32 %2421, 31
  %2433 = trunc i32 %2432 to i8
  store i8 %2433, i8* %87, align 1, !tbaa !2449
  store i8 %2426, i8* %93, align 1, !tbaa !2450
  %2434 = load i64, i64* %RBP, align 8
  %2435 = add i64 %2434, -24
  %2436 = add i64 %6614, 939
  store i64 %2436, i64* %PC, align 8
  %2437 = inttoptr i64 %2435 to i64*
  %2438 = load i64, i64* %2437, align 8
  store i64 %2438, i64* %RCX, align 8, !tbaa !2428
  %2439 = add i64 %2438, 20
  %2440 = add i64 %6614, 943
  store i64 %2440, i64* %PC, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = sext i32 %2442 to i64
  %2444 = mul nsw i64 %2443, %2424
  %2445 = and i64 %2444, 4294967295
  store i64 %2445, i64* %RSI, align 8, !tbaa !2428
  %2446 = trunc i64 %2444 to i32
  %2447 = add i32 %2446, %2394
  %2448 = zext i32 %2447 to i64
  store i64 %2448, i64* %RDX, align 8, !tbaa !2428
  %2449 = icmp ult i32 %2447, %2394
  %2450 = icmp ult i32 %2447, %2446
  %2451 = or i1 %2449, %2450
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %70, align 1, !tbaa !2432
  %2453 = and i32 %2447, 255
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453) #8
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %76, align 1, !tbaa !2446
  %2458 = xor i64 %2444, %2393
  %2459 = trunc i64 %2458 to i32
  %2460 = xor i32 %2459, %2447
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %81, align 1, !tbaa !2447
  %2464 = icmp eq i32 %2447, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %84, align 1, !tbaa !2448
  %2466 = lshr i32 %2447, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %87, align 1, !tbaa !2449
  %2468 = lshr i32 %2446, 31
  %2469 = xor i32 %2466, %2405
  %2470 = xor i32 %2466, %2468
  %2471 = add nuw nsw i32 %2469, %2470
  %2472 = icmp eq i32 %2471, 2
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %93, align 1, !tbaa !2450
  %2474 = add i64 %2434, -56
  %2475 = add i64 %6614, 948
  store i64 %2475, i64* %PC, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = zext i32 %2477 to i64
  store i64 %2478, i64* %RSI, align 8, !tbaa !2428
  %2479 = add i64 %6614, 952
  store i64 %2479, i64* %PC, align 8
  %2480 = load i64, i64* %2437, align 8
  store i64 %2480, i64* %RCX, align 8, !tbaa !2428
  %2481 = add i64 %2480, 20
  %2482 = add i64 %6614, 956
  store i64 %2482, i64* %PC, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = sext i32 %2477 to i64
  %2486 = sext i32 %2484 to i64
  %2487 = mul nsw i64 %2486, %2485
  %2488 = and i64 %2487, 4294967295
  store i64 %2488, i64* %RSI, align 8, !tbaa !2428
  %2489 = trunc i64 %2487 to i32
  %2490 = add i32 %2489, %2447
  %2491 = zext i32 %2490 to i64
  store i64 %2491, i64* %RDX, align 8, !tbaa !2428
  %2492 = icmp ult i32 %2490, %2447
  %2493 = icmp ult i32 %2490, %2489
  %2494 = or i1 %2492, %2493
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %70, align 1, !tbaa !2432
  %2496 = and i32 %2490, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496) #8
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %76, align 1, !tbaa !2446
  %2501 = xor i64 %2487, %2448
  %2502 = trunc i64 %2501 to i32
  %2503 = xor i32 %2502, %2490
  %2504 = lshr i32 %2503, 4
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  store i8 %2506, i8* %81, align 1, !tbaa !2447
  %2507 = icmp eq i32 %2490, 0
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %84, align 1, !tbaa !2448
  %2509 = lshr i32 %2490, 31
  %2510 = trunc i32 %2509 to i8
  store i8 %2510, i8* %87, align 1, !tbaa !2449
  %2511 = lshr i32 %2489, 31
  %2512 = xor i32 %2509, %2466
  %2513 = xor i32 %2509, %2511
  %2514 = add nuw nsw i32 %2512, %2513
  %2515 = icmp eq i32 %2514, 2
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %93, align 1, !tbaa !2450
  %2517 = load i64, i64* %RBP, align 8
  %2518 = add i64 %2517, -60
  %2519 = add i64 %6614, 961
  store i64 %2519, i64* %PC, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = add i32 %2521, %2490
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RDX, align 8, !tbaa !2428
  %2524 = icmp ult i32 %2522, %2490
  %2525 = icmp ult i32 %2522, %2521
  %2526 = or i1 %2524, %2525
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %70, align 1, !tbaa !2432
  %2528 = and i32 %2522, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528) #8
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %76, align 1, !tbaa !2446
  %2533 = xor i32 %2521, %2490
  %2534 = xor i32 %2533, %2522
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  store i8 %2537, i8* %81, align 1, !tbaa !2447
  %2538 = icmp eq i32 %2522, 0
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %84, align 1, !tbaa !2448
  %2540 = lshr i32 %2522, 31
  %2541 = trunc i32 %2540 to i8
  store i8 %2541, i8* %87, align 1, !tbaa !2449
  %2542 = lshr i32 %2521, 31
  %2543 = xor i32 %2540, %2509
  %2544 = xor i32 %2540, %2542
  %2545 = add nuw nsw i32 %2543, %2544
  %2546 = icmp eq i32 %2545, 2
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %93, align 1, !tbaa !2450
  %2548 = sext i32 %2522 to i64
  store i64 %2548, i64* %RCX, align 8, !tbaa !2428
  %2549 = load i64, i64* %RAX, align 8
  %2550 = shl nsw i64 %2548, 2
  %2551 = add i64 %2550, %2549
  %2552 = add i64 %6614, 969
  store i64 %2552, i64* %PC, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  store i32 %2554, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %2555 = add i64 %2517, -40
  %2556 = add i64 %6614, 973
  store i64 %2556, i64* %PC, align 8
  %2557 = inttoptr i64 %2555 to i64*
  %2558 = load i64, i64* %2557, align 8
  store i64 %2558, i64* %RAX, align 8, !tbaa !2428
  %2559 = add i64 %6614, 976
  store i64 %2559, i64* %PC, align 8
  %2560 = inttoptr i64 %2558 to i64*
  %2561 = load i64, i64* %2560, align 8
  store i64 %2561, i64* %RAX, align 8, !tbaa !2428
  %2562 = add i64 %6614, 980
  store i64 %2562, i64* %PC, align 8
  %2563 = load i64, i64* %2557, align 8
  store i64 %2563, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2564 = add i64 %6614, 988
  store i64 %2564, i64* %PC, align 8
  %2565 = load i64, i64* %2557, align 8
  store i64 %2565, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2566 = add i64 %6614, 996
  store i64 %2566, i64* %PC, align 8
  %2567 = load i64, i64* %2557, align 8
  store i64 %2567, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2568 = load i64, i64* %RBP, align 8
  %2569 = add i64 %2568, -52
  %2570 = add i64 %6614, 1003
  store i64 %2570, i64* %PC, align 8
  %2571 = inttoptr i64 %2569 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = zext i32 %2572 to i64
  store i64 %2573, i64* %RSI, align 8, !tbaa !2428
  %2574 = add i64 %2568, -40
  %2575 = add i64 %6614, 1007
  store i64 %2575, i64* %PC, align 8
  %2576 = inttoptr i64 %2574 to i64*
  %2577 = load i64, i64* %2576, align 8
  store i64 %2577, i64* %RCX, align 8, !tbaa !2428
  %2578 = add i64 %2577, 16
  %2579 = add i64 %6614, 1011
  store i64 %2579, i64* %PC, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = sext i32 %2572 to i64
  %2583 = sext i32 %2581 to i64
  %2584 = mul nsw i64 %2583, %2582
  %2585 = trunc i64 %2584 to i32
  %2586 = and i64 %2584, 4294967295
  store i64 %2586, i64* %RSI, align 8, !tbaa !2428
  %2587 = shl i64 %2584, 32
  %2588 = ashr exact i64 %2587, 32
  %2589 = icmp ne i64 %2588, %2584
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %70, align 1, !tbaa !2432
  %2591 = and i32 %2585, 255
  %2592 = tail call i32 @llvm.ctpop.i32(i32 %2591) #8
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  store i8 %2595, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2596 = lshr i32 %2585, 31
  %2597 = trunc i32 %2596 to i8
  store i8 %2597, i8* %87, align 1, !tbaa !2449
  store i8 %2590, i8* %93, align 1, !tbaa !2450
  %2598 = add i64 %6614, 1015
  store i64 %2598, i64* %PC, align 8
  %2599 = load i64, i64* %2576, align 8
  store i64 %2599, i64* %RCX, align 8, !tbaa !2428
  %2600 = add i64 %2599, 20
  %2601 = add i64 %6614, 1019
  store i64 %2601, i64* %PC, align 8
  %2602 = inttoptr i64 %2600 to i32*
  %2603 = load i32, i32* %2602, align 4
  %2604 = sext i32 %2603 to i64
  %2605 = mul nsw i64 %2604, %2588
  %2606 = and i64 %2605, 4294967295
  store i64 %2606, i64* %RSI, align 8, !tbaa !2428
  %2607 = trunc i64 %2605 to i32
  store i64 %2606, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2608 = and i32 %2607, 255
  %2609 = tail call i32 @llvm.ctpop.i32(i32 %2608) #8
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = xor i8 %2611, 1
  store i8 %2612, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2613 = icmp eq i32 %2607, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %84, align 1, !tbaa !2448
  %2615 = lshr i32 %2607, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2617 = add i64 %2568, -56
  %2618 = add i64 %6614, 1024
  store i64 %2618, i64* %PC, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = add i32 %2620, 1
  %2622 = zext i32 %2621 to i64
  store i64 %2622, i64* %RSI, align 8, !tbaa !2428
  %2623 = icmp eq i32 %2620, -1
  %2624 = icmp eq i32 %2621, 0
  %2625 = or i1 %2623, %2624
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %70, align 1, !tbaa !2432
  %2627 = and i32 %2621, 255
  %2628 = tail call i32 @llvm.ctpop.i32(i32 %2627) #8
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  store i8 %2631, i8* %76, align 1, !tbaa !2446
  %2632 = xor i32 %2620, %2621
  %2633 = lshr i32 %2632, 4
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  store i8 %2635, i8* %81, align 1, !tbaa !2447
  %2636 = zext i1 %2624 to i8
  store i8 %2636, i8* %84, align 1, !tbaa !2448
  %2637 = lshr i32 %2621, 31
  %2638 = trunc i32 %2637 to i8
  store i8 %2638, i8* %87, align 1, !tbaa !2449
  %2639 = lshr i32 %2620, 31
  %2640 = xor i32 %2637, %2639
  %2641 = add nuw nsw i32 %2640, %2637
  %2642 = icmp eq i32 %2641, 2
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %93, align 1, !tbaa !2450
  %2644 = load i64, i64* %RBP, align 8
  %2645 = add i64 %2644, -40
  %2646 = add i64 %6614, 1031
  store i64 %2646, i64* %PC, align 8
  %2647 = inttoptr i64 %2645 to i64*
  %2648 = load i64, i64* %2647, align 8
  store i64 %2648, i64* %RCX, align 8, !tbaa !2428
  %2649 = add i64 %2648, 20
  %2650 = add i64 %6614, 1035
  store i64 %2650, i64* %PC, align 8
  %2651 = inttoptr i64 %2649 to i32*
  %2652 = load i32, i32* %2651, align 4
  %2653 = sext i32 %2621 to i64
  %2654 = sext i32 %2652 to i64
  %2655 = mul nsw i64 %2654, %2653
  %2656 = and i64 %2655, 4294967295
  store i64 %2656, i64* %RSI, align 8, !tbaa !2428
  %2657 = trunc i64 %2655 to i32
  %2658 = add i32 %2657, %2607
  %2659 = zext i32 %2658 to i64
  store i64 %2659, i64* %RDX, align 8, !tbaa !2428
  %2660 = icmp ult i32 %2658, %2607
  %2661 = icmp ult i32 %2658, %2657
  %2662 = or i1 %2660, %2661
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %70, align 1, !tbaa !2432
  %2664 = and i32 %2658, 255
  %2665 = tail call i32 @llvm.ctpop.i32(i32 %2664) #8
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = xor i8 %2667, 1
  store i8 %2668, i8* %76, align 1, !tbaa !2446
  %2669 = xor i64 %2655, %2605
  %2670 = trunc i64 %2669 to i32
  %2671 = xor i32 %2670, %2658
  %2672 = lshr i32 %2671, 4
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %81, align 1, !tbaa !2447
  %2675 = icmp eq i32 %2658, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %84, align 1, !tbaa !2448
  %2677 = lshr i32 %2658, 31
  %2678 = trunc i32 %2677 to i8
  store i8 %2678, i8* %87, align 1, !tbaa !2449
  %2679 = lshr i32 %2657, 31
  %2680 = xor i32 %2677, %2615
  %2681 = xor i32 %2677, %2679
  %2682 = add nuw nsw i32 %2680, %2681
  %2683 = icmp eq i32 %2682, 2
  %2684 = zext i1 %2683 to i8
  store i8 %2684, i8* %93, align 1, !tbaa !2450
  %2685 = add i64 %2644, -60
  %2686 = add i64 %6614, 1040
  store i64 %2686, i64* %PC, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = add i32 %2688, 1
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RSI, align 8, !tbaa !2428
  %2691 = lshr i32 %2689, 31
  %2692 = add i32 %2689, %2658
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RDX, align 8, !tbaa !2428
  %2694 = icmp ult i32 %2692, %2658
  %2695 = icmp ult i32 %2692, %2689
  %2696 = or i1 %2694, %2695
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %70, align 1, !tbaa !2432
  %2698 = and i32 %2692, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698) #8
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %76, align 1, !tbaa !2446
  %2703 = xor i32 %2689, %2658
  %2704 = xor i32 %2703, %2692
  %2705 = lshr i32 %2704, 4
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  store i8 %2707, i8* %81, align 1, !tbaa !2447
  %2708 = icmp eq i32 %2692, 0
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %84, align 1, !tbaa !2448
  %2710 = lshr i32 %2692, 31
  %2711 = trunc i32 %2710 to i8
  store i8 %2711, i8* %87, align 1, !tbaa !2449
  %2712 = xor i32 %2710, %2677
  %2713 = xor i32 %2710, %2691
  %2714 = add nuw nsw i32 %2712, %2713
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %93, align 1, !tbaa !2450
  %2717 = sext i32 %2692 to i64
  store i64 %2717, i64* %RCX, align 8, !tbaa !2428
  %2718 = load i64, i64* %RAX, align 8
  %2719 = shl nsw i64 %2717, 2
  %2720 = add i64 %2719, %2718
  %2721 = add i64 %6614, 1053
  store i64 %2721, i64* %PC, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  store i32 %2723, i32* %1742, align 1, !tbaa !2451
  store float 0.000000e+00, float* %214, align 1, !tbaa !2451
  store float 0.000000e+00, float* %216, align 1, !tbaa !2451
  store float 0.000000e+00, float* %218, align 1, !tbaa !2451
  %2724 = load i64, i64* %RBP, align 8
  %2725 = add i64 %2724, -40
  %2726 = add i64 %6614, 1057
  store i64 %2726, i64* %PC, align 8
  %2727 = inttoptr i64 %2725 to i64*
  %2728 = load i64, i64* %2727, align 8
  store i64 %2728, i64* %RAX, align 8, !tbaa !2428
  %2729 = add i64 %6614, 1060
  store i64 %2729, i64* %PC, align 8
  %2730 = inttoptr i64 %2728 to i64*
  %2731 = load i64, i64* %2730, align 8
  store i64 %2731, i64* %RAX, align 8, !tbaa !2428
  %2732 = add i64 %6614, 1064
  store i64 %2732, i64* %PC, align 8
  %2733 = load i64, i64* %2727, align 8
  store i64 %2733, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2734 = add i64 %6614, 1072
  store i64 %2734, i64* %PC, align 8
  %2735 = load i64, i64* %2727, align 8
  store i64 %2735, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2736 = add i64 %6614, 1080
  store i64 %2736, i64* %PC, align 8
  %2737 = load i64, i64* %2727, align 8
  store i64 %2737, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2738 = add i64 %2724, -52
  %2739 = add i64 %6614, 1087
  store i64 %2739, i64* %PC, align 8
  %2740 = inttoptr i64 %2738 to i32*
  %2741 = load i32, i32* %2740, align 4
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RSI, align 8, !tbaa !2428
  %2743 = add i64 %6614, 1091
  store i64 %2743, i64* %PC, align 8
  %2744 = load i64, i64* %2727, align 8
  store i64 %2744, i64* %RCX, align 8, !tbaa !2428
  %2745 = add i64 %2744, 16
  %2746 = add i64 %6614, 1095
  store i64 %2746, i64* %PC, align 8
  %2747 = inttoptr i64 %2745 to i32*
  %2748 = load i32, i32* %2747, align 4
  %2749 = sext i32 %2741 to i64
  %2750 = sext i32 %2748 to i64
  %2751 = mul nsw i64 %2750, %2749
  %2752 = trunc i64 %2751 to i32
  %2753 = and i64 %2751, 4294967295
  store i64 %2753, i64* %RSI, align 8, !tbaa !2428
  %2754 = shl i64 %2751, 32
  %2755 = ashr exact i64 %2754, 32
  %2756 = icmp ne i64 %2755, %2751
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %70, align 1, !tbaa !2432
  %2758 = and i32 %2752, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758) #8
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2763 = lshr i32 %2752, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %87, align 1, !tbaa !2449
  store i8 %2757, i8* %93, align 1, !tbaa !2450
  %2765 = add i64 %6614, 1099
  store i64 %2765, i64* %PC, align 8
  %2766 = load i64, i64* %2727, align 8
  store i64 %2766, i64* %RCX, align 8, !tbaa !2428
  %2767 = add i64 %2766, 20
  %2768 = add i64 %6614, 1103
  store i64 %2768, i64* %PC, align 8
  %2769 = inttoptr i64 %2767 to i32*
  %2770 = load i32, i32* %2769, align 4
  %2771 = sext i32 %2770 to i64
  %2772 = mul nsw i64 %2771, %2755
  %2773 = and i64 %2772, 4294967295
  store i64 %2773, i64* %RSI, align 8, !tbaa !2428
  %2774 = trunc i64 %2772 to i32
  store i64 %2773, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2775 = and i32 %2774, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775) #8
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2780 = icmp eq i32 %2774, 0
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %84, align 1, !tbaa !2448
  %2782 = lshr i32 %2774, 31
  %2783 = trunc i32 %2782 to i8
  store i8 %2783, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2784 = load i64, i64* %RBP, align 8
  %2785 = add i64 %2784, -56
  %2786 = add i64 %6614, 1108
  store i64 %2786, i64* %PC, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = add i32 %2788, -1
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RSI, align 8, !tbaa !2428
  %2791 = icmp eq i32 %2788, 0
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %70, align 1, !tbaa !2432
  %2793 = and i32 %2789, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793) #8
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %76, align 1, !tbaa !2446
  %2798 = xor i32 %2788, %2789
  %2799 = lshr i32 %2798, 4
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  store i8 %2801, i8* %81, align 1, !tbaa !2447
  %2802 = icmp eq i32 %2789, 0
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %84, align 1, !tbaa !2448
  %2804 = lshr i32 %2789, 31
  %2805 = trunc i32 %2804 to i8
  store i8 %2805, i8* %87, align 1, !tbaa !2449
  %2806 = lshr i32 %2788, 31
  %2807 = xor i32 %2804, %2806
  %2808 = add nuw nsw i32 %2807, %2806
  %2809 = icmp eq i32 %2808, 2
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %93, align 1, !tbaa !2450
  %2811 = add i64 %2784, -40
  %2812 = add i64 %6614, 1115
  store i64 %2812, i64* %PC, align 8
  %2813 = inttoptr i64 %2811 to i64*
  %2814 = load i64, i64* %2813, align 8
  store i64 %2814, i64* %RCX, align 8, !tbaa !2428
  %2815 = add i64 %2814, 20
  %2816 = add i64 %6614, 1119
  store i64 %2816, i64* %PC, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  %2819 = sext i32 %2789 to i64
  %2820 = sext i32 %2818 to i64
  %2821 = mul nsw i64 %2820, %2819
  %2822 = and i64 %2821, 4294967295
  store i64 %2822, i64* %RSI, align 8, !tbaa !2428
  %2823 = trunc i64 %2821 to i32
  %2824 = add i32 %2823, %2774
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RDX, align 8, !tbaa !2428
  %2826 = icmp ult i32 %2824, %2774
  %2827 = icmp ult i32 %2824, %2823
  %2828 = or i1 %2826, %2827
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %70, align 1, !tbaa !2432
  %2830 = and i32 %2824, 255
  %2831 = tail call i32 @llvm.ctpop.i32(i32 %2830) #8
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  %2834 = xor i8 %2833, 1
  store i8 %2834, i8* %76, align 1, !tbaa !2446
  %2835 = xor i64 %2821, %2772
  %2836 = trunc i64 %2835 to i32
  %2837 = xor i32 %2836, %2824
  %2838 = lshr i32 %2837, 4
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  store i8 %2840, i8* %81, align 1, !tbaa !2447
  %2841 = icmp eq i32 %2824, 0
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %84, align 1, !tbaa !2448
  %2843 = lshr i32 %2824, 31
  %2844 = trunc i32 %2843 to i8
  store i8 %2844, i8* %87, align 1, !tbaa !2449
  %2845 = lshr i32 %2823, 31
  %2846 = xor i32 %2843, %2782
  %2847 = xor i32 %2843, %2845
  %2848 = add nuw nsw i32 %2846, %2847
  %2849 = icmp eq i32 %2848, 2
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %93, align 1, !tbaa !2450
  %2851 = add i64 %2784, -60
  %2852 = add i64 %6614, 1124
  store i64 %2852, i64* %PC, align 8
  %2853 = inttoptr i64 %2851 to i32*
  %2854 = load i32, i32* %2853, align 4
  %2855 = add i32 %2854, 1
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RSI, align 8, !tbaa !2428
  %2857 = lshr i32 %2855, 31
  %2858 = add i32 %2855, %2824
  %2859 = zext i32 %2858 to i64
  store i64 %2859, i64* %RDX, align 8, !tbaa !2428
  %2860 = icmp ult i32 %2858, %2824
  %2861 = icmp ult i32 %2858, %2855
  %2862 = or i1 %2860, %2861
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %70, align 1, !tbaa !2432
  %2864 = and i32 %2858, 255
  %2865 = tail call i32 @llvm.ctpop.i32(i32 %2864) #8
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %76, align 1, !tbaa !2446
  %2869 = xor i32 %2855, %2824
  %2870 = xor i32 %2869, %2858
  %2871 = lshr i32 %2870, 4
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  store i8 %2873, i8* %81, align 1, !tbaa !2447
  %2874 = icmp eq i32 %2858, 0
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %84, align 1, !tbaa !2448
  %2876 = lshr i32 %2858, 31
  %2877 = trunc i32 %2876 to i8
  store i8 %2877, i8* %87, align 1, !tbaa !2449
  %2878 = xor i32 %2876, %2843
  %2879 = xor i32 %2876, %2857
  %2880 = add nuw nsw i32 %2878, %2879
  %2881 = icmp eq i32 %2880, 2
  %2882 = zext i1 %2881 to i8
  store i8 %2882, i8* %93, align 1, !tbaa !2450
  %2883 = sext i32 %2858 to i64
  store i64 %2883, i64* %RCX, align 8, !tbaa !2428
  %2884 = load i64, i64* %RAX, align 8
  %2885 = shl nsw i64 %2883, 2
  %2886 = add i64 %2885, %2884
  %2887 = add i64 %6614, 1137
  store i64 %2887, i64* %PC, align 8
  %2888 = load <2 x float>, <2 x float>* %219, align 1
  %2889 = load <2 x i32>, <2 x i32>* %220, align 1
  %2890 = inttoptr i64 %2886 to float*
  %2891 = load float, float* %2890, align 4
  %2892 = extractelement <2 x float> %2888, i32 0
  %2893 = fsub float %2892, %2891
  store float %2893, float* %212, align 1, !tbaa !2451
  %2894 = bitcast <2 x float> %2888 to <2 x i32>
  %2895 = extractelement <2 x i32> %2894, i32 1
  store i32 %2895, i32* %221, align 1, !tbaa !2451
  %2896 = extractelement <2 x i32> %2889, i32 0
  store i32 %2896, i32* %222, align 1, !tbaa !2451
  %2897 = extractelement <2 x i32> %2889, i32 1
  store i32 %2897, i32* %223, align 1, !tbaa !2451
  %2898 = load i64, i64* %RBP, align 8
  %2899 = add i64 %2898, -40
  %2900 = add i64 %6614, 1141
  store i64 %2900, i64* %PC, align 8
  %2901 = inttoptr i64 %2899 to i64*
  %2902 = load i64, i64* %2901, align 8
  store i64 %2902, i64* %RAX, align 8, !tbaa !2428
  %2903 = add i64 %6614, 1144
  store i64 %2903, i64* %PC, align 8
  %2904 = inttoptr i64 %2902 to i64*
  %2905 = load i64, i64* %2904, align 8
  store i64 %2905, i64* %RAX, align 8, !tbaa !2428
  %2906 = add i64 %6614, 1148
  store i64 %2906, i64* %PC, align 8
  %2907 = load i64, i64* %2901, align 8
  store i64 %2907, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2908 = add i64 %6614, 1156
  store i64 %2908, i64* %PC, align 8
  %2909 = load i64, i64* %2901, align 8
  store i64 %2909, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2910 = add i64 %6614, 1164
  store i64 %2910, i64* %PC, align 8
  %2911 = load i64, i64* %2901, align 8
  store i64 %2911, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2912 = add i64 %2898, -52
  %2913 = add i64 %6614, 1171
  store i64 %2913, i64* %PC, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RSI, align 8, !tbaa !2428
  %2917 = add i64 %6614, 1175
  store i64 %2917, i64* %PC, align 8
  %2918 = load i64, i64* %2901, align 8
  store i64 %2918, i64* %RCX, align 8, !tbaa !2428
  %2919 = add i64 %2918, 16
  %2920 = add i64 %6614, 1179
  store i64 %2920, i64* %PC, align 8
  %2921 = inttoptr i64 %2919 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = sext i32 %2915 to i64
  %2924 = sext i32 %2922 to i64
  %2925 = mul nsw i64 %2924, %2923
  %2926 = trunc i64 %2925 to i32
  %2927 = and i64 %2925, 4294967295
  store i64 %2927, i64* %RSI, align 8, !tbaa !2428
  %2928 = shl i64 %2925, 32
  %2929 = ashr exact i64 %2928, 32
  %2930 = icmp ne i64 %2929, %2925
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %70, align 1, !tbaa !2432
  %2932 = and i32 %2926, 255
  %2933 = tail call i32 @llvm.ctpop.i32(i32 %2932) #8
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  store i8 %2936, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2937 = lshr i32 %2926, 31
  %2938 = trunc i32 %2937 to i8
  store i8 %2938, i8* %87, align 1, !tbaa !2449
  store i8 %2931, i8* %93, align 1, !tbaa !2450
  %2939 = add i64 %6614, 1183
  store i64 %2939, i64* %PC, align 8
  %2940 = load i64, i64* %2901, align 8
  store i64 %2940, i64* %RCX, align 8, !tbaa !2428
  %2941 = add i64 %2940, 20
  %2942 = add i64 %6614, 1187
  store i64 %2942, i64* %PC, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = sext i32 %2944 to i64
  %2946 = mul nsw i64 %2945, %2929
  %2947 = and i64 %2946, 4294967295
  store i64 %2947, i64* %RSI, align 8, !tbaa !2428
  %2948 = trunc i64 %2946 to i32
  store i64 %2947, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2949 = and i32 %2948, 255
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949) #8
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2954 = icmp eq i32 %2948, 0
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %84, align 1, !tbaa !2448
  %2956 = lshr i32 %2948, 31
  %2957 = trunc i32 %2956 to i8
  store i8 %2957, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2958 = load i64, i64* %RBP, align 8
  %2959 = add i64 %2958, -56
  %2960 = add i64 %6614, 1192
  store i64 %2960, i64* %PC, align 8
  %2961 = inttoptr i64 %2959 to i32*
  %2962 = load i32, i32* %2961, align 4
  %2963 = add i32 %2962, 1
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RSI, align 8, !tbaa !2428
  %2965 = icmp eq i32 %2962, -1
  %2966 = icmp eq i32 %2963, 0
  %2967 = or i1 %2965, %2966
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %70, align 1, !tbaa !2432
  %2969 = and i32 %2963, 255
  %2970 = tail call i32 @llvm.ctpop.i32(i32 %2969) #8
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = xor i8 %2972, 1
  store i8 %2973, i8* %76, align 1, !tbaa !2446
  %2974 = xor i32 %2962, %2963
  %2975 = lshr i32 %2974, 4
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  store i8 %2977, i8* %81, align 1, !tbaa !2447
  %2978 = zext i1 %2966 to i8
  store i8 %2978, i8* %84, align 1, !tbaa !2448
  %2979 = lshr i32 %2963, 31
  %2980 = trunc i32 %2979 to i8
  store i8 %2980, i8* %87, align 1, !tbaa !2449
  %2981 = lshr i32 %2962, 31
  %2982 = xor i32 %2979, %2981
  %2983 = add nuw nsw i32 %2982, %2979
  %2984 = icmp eq i32 %2983, 2
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %93, align 1, !tbaa !2450
  %2986 = add i64 %2958, -40
  %2987 = add i64 %6614, 1199
  store i64 %2987, i64* %PC, align 8
  %2988 = inttoptr i64 %2986 to i64*
  %2989 = load i64, i64* %2988, align 8
  store i64 %2989, i64* %RCX, align 8, !tbaa !2428
  %2990 = add i64 %2989, 20
  %2991 = add i64 %6614, 1203
  store i64 %2991, i64* %PC, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = sext i32 %2963 to i64
  %2995 = sext i32 %2993 to i64
  %2996 = mul nsw i64 %2995, %2994
  %2997 = and i64 %2996, 4294967295
  store i64 %2997, i64* %RSI, align 8, !tbaa !2428
  %2998 = trunc i64 %2996 to i32
  %2999 = add i32 %2998, %2948
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RDX, align 8, !tbaa !2428
  %3001 = icmp ult i32 %2999, %2948
  %3002 = icmp ult i32 %2999, %2998
  %3003 = or i1 %3001, %3002
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %70, align 1, !tbaa !2432
  %3005 = and i32 %2999, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005) #8
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %76, align 1, !tbaa !2446
  %3010 = xor i64 %2996, %2946
  %3011 = trunc i64 %3010 to i32
  %3012 = xor i32 %3011, %2999
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  store i8 %3015, i8* %81, align 1, !tbaa !2447
  %3016 = icmp eq i32 %2999, 0
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %84, align 1, !tbaa !2448
  %3018 = lshr i32 %2999, 31
  %3019 = trunc i32 %3018 to i8
  store i8 %3019, i8* %87, align 1, !tbaa !2449
  %3020 = lshr i32 %2998, 31
  %3021 = xor i32 %3018, %2956
  %3022 = xor i32 %3018, %3020
  %3023 = add nuw nsw i32 %3021, %3022
  %3024 = icmp eq i32 %3023, 2
  %3025 = zext i1 %3024 to i8
  store i8 %3025, i8* %93, align 1, !tbaa !2450
  %3026 = add i64 %2958, -60
  %3027 = add i64 %6614, 1208
  store i64 %3027, i64* %PC, align 8
  %3028 = inttoptr i64 %3026 to i32*
  %3029 = load i32, i32* %3028, align 4
  %3030 = add i32 %3029, -1
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RSI, align 8, !tbaa !2428
  %3032 = lshr i32 %3030, 31
  %3033 = add i32 %3030, %2999
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RDX, align 8, !tbaa !2428
  %3035 = icmp ult i32 %3033, %2999
  %3036 = icmp ult i32 %3033, %3030
  %3037 = or i1 %3035, %3036
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %70, align 1, !tbaa !2432
  %3039 = and i32 %3033, 255
  %3040 = tail call i32 @llvm.ctpop.i32(i32 %3039) #8
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  store i8 %3043, i8* %76, align 1, !tbaa !2446
  %3044 = xor i32 %3030, %2999
  %3045 = xor i32 %3044, %3033
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  store i8 %3048, i8* %81, align 1, !tbaa !2447
  %3049 = icmp eq i32 %3033, 0
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %84, align 1, !tbaa !2448
  %3051 = lshr i32 %3033, 31
  %3052 = trunc i32 %3051 to i8
  store i8 %3052, i8* %87, align 1, !tbaa !2449
  %3053 = xor i32 %3051, %3018
  %3054 = xor i32 %3051, %3032
  %3055 = add nuw nsw i32 %3053, %3054
  %3056 = icmp eq i32 %3055, 2
  %3057 = zext i1 %3056 to i8
  store i8 %3057, i8* %93, align 1, !tbaa !2450
  %3058 = sext i32 %3033 to i64
  store i64 %3058, i64* %RCX, align 8, !tbaa !2428
  %3059 = load i64, i64* %RAX, align 8
  %3060 = shl nsw i64 %3058, 2
  %3061 = add i64 %3060, %3059
  %3062 = add i64 %6614, 1221
  store i64 %3062, i64* %PC, align 8
  %3063 = load <2 x float>, <2 x float>* %219, align 1
  %3064 = load <2 x i32>, <2 x i32>* %220, align 1
  %3065 = inttoptr i64 %3061 to float*
  %3066 = load float, float* %3065, align 4
  %3067 = extractelement <2 x float> %3063, i32 0
  %3068 = fsub float %3067, %3066
  store float %3068, float* %212, align 1, !tbaa !2451
  %3069 = bitcast <2 x float> %3063 to <2 x i32>
  %3070 = extractelement <2 x i32> %3069, i32 1
  store i32 %3070, i32* %221, align 1, !tbaa !2451
  %3071 = extractelement <2 x i32> %3064, i32 0
  store i32 %3071, i32* %222, align 1, !tbaa !2451
  %3072 = extractelement <2 x i32> %3064, i32 1
  store i32 %3072, i32* %223, align 1, !tbaa !2451
  %3073 = load i64, i64* %RBP, align 8
  %3074 = add i64 %3073, -40
  %3075 = add i64 %6614, 1225
  store i64 %3075, i64* %PC, align 8
  %3076 = inttoptr i64 %3074 to i64*
  %3077 = load i64, i64* %3076, align 8
  store i64 %3077, i64* %RAX, align 8, !tbaa !2428
  %3078 = add i64 %6614, 1228
  store i64 %3078, i64* %PC, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %RAX, align 8, !tbaa !2428
  %3081 = add i64 %6614, 1232
  store i64 %3081, i64* %PC, align 8
  %3082 = load i64, i64* %3076, align 8
  store i64 %3082, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3083 = add i64 %6614, 1240
  store i64 %3083, i64* %PC, align 8
  %3084 = load i64, i64* %3076, align 8
  store i64 %3084, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3085 = add i64 %6614, 1248
  store i64 %3085, i64* %PC, align 8
  %3086 = load i64, i64* %3076, align 8
  store i64 %3086, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3087 = add i64 %3073, -52
  %3088 = add i64 %6614, 1255
  store i64 %3088, i64* %PC, align 8
  %3089 = inttoptr i64 %3087 to i32*
  %3090 = load i32, i32* %3089, align 4
  %3091 = zext i32 %3090 to i64
  store i64 %3091, i64* %RSI, align 8, !tbaa !2428
  %3092 = add i64 %6614, 1259
  store i64 %3092, i64* %PC, align 8
  %3093 = load i64, i64* %3076, align 8
  store i64 %3093, i64* %RCX, align 8, !tbaa !2428
  %3094 = add i64 %3093, 16
  %3095 = add i64 %6614, 1263
  store i64 %3095, i64* %PC, align 8
  %3096 = inttoptr i64 %3094 to i32*
  %3097 = load i32, i32* %3096, align 4
  %3098 = sext i32 %3090 to i64
  %3099 = sext i32 %3097 to i64
  %3100 = mul nsw i64 %3099, %3098
  %3101 = trunc i64 %3100 to i32
  %3102 = and i64 %3100, 4294967295
  store i64 %3102, i64* %RSI, align 8, !tbaa !2428
  %3103 = shl i64 %3100, 32
  %3104 = ashr exact i64 %3103, 32
  %3105 = icmp ne i64 %3104, %3100
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %70, align 1, !tbaa !2432
  %3107 = and i32 %3101, 255
  %3108 = tail call i32 @llvm.ctpop.i32(i32 %3107) #8
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = xor i8 %3110, 1
  store i8 %3111, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3112 = lshr i32 %3101, 31
  %3113 = trunc i32 %3112 to i8
  store i8 %3113, i8* %87, align 1, !tbaa !2449
  store i8 %3106, i8* %93, align 1, !tbaa !2450
  %3114 = add i64 %6614, 1267
  store i64 %3114, i64* %PC, align 8
  %3115 = load i64, i64* %3076, align 8
  store i64 %3115, i64* %RCX, align 8, !tbaa !2428
  %3116 = add i64 %3115, 20
  %3117 = add i64 %6614, 1271
  store i64 %3117, i64* %PC, align 8
  %3118 = inttoptr i64 %3116 to i32*
  %3119 = load i32, i32* %3118, align 4
  %3120 = sext i32 %3119 to i64
  %3121 = mul nsw i64 %3120, %3104
  %3122 = and i64 %3121, 4294967295
  store i64 %3122, i64* %RSI, align 8, !tbaa !2428
  %3123 = trunc i64 %3121 to i32
  store i64 %3122, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3124 = and i32 %3123, 255
  %3125 = tail call i32 @llvm.ctpop.i32(i32 %3124) #8
  %3126 = trunc i32 %3125 to i8
  %3127 = and i8 %3126, 1
  %3128 = xor i8 %3127, 1
  store i8 %3128, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3129 = icmp eq i32 %3123, 0
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %84, align 1, !tbaa !2448
  %3131 = lshr i32 %3123, 31
  %3132 = trunc i32 %3131 to i8
  store i8 %3132, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3133 = load i64, i64* %RBP, align 8
  %3134 = add i64 %3133, -56
  %3135 = add i64 %6614, 1276
  store i64 %3135, i64* %PC, align 8
  %3136 = inttoptr i64 %3134 to i32*
  %3137 = load i32, i32* %3136, align 4
  %3138 = add i32 %3137, -1
  %3139 = zext i32 %3138 to i64
  store i64 %3139, i64* %RSI, align 8, !tbaa !2428
  %3140 = icmp eq i32 %3137, 0
  %3141 = zext i1 %3140 to i8
  store i8 %3141, i8* %70, align 1, !tbaa !2432
  %3142 = and i32 %3138, 255
  %3143 = tail call i32 @llvm.ctpop.i32(i32 %3142) #8
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  %3146 = xor i8 %3145, 1
  store i8 %3146, i8* %76, align 1, !tbaa !2446
  %3147 = xor i32 %3137, %3138
  %3148 = lshr i32 %3147, 4
  %3149 = trunc i32 %3148 to i8
  %3150 = and i8 %3149, 1
  store i8 %3150, i8* %81, align 1, !tbaa !2447
  %3151 = icmp eq i32 %3138, 0
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %84, align 1, !tbaa !2448
  %3153 = lshr i32 %3138, 31
  %3154 = trunc i32 %3153 to i8
  store i8 %3154, i8* %87, align 1, !tbaa !2449
  %3155 = lshr i32 %3137, 31
  %3156 = xor i32 %3153, %3155
  %3157 = add nuw nsw i32 %3156, %3155
  %3158 = icmp eq i32 %3157, 2
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %93, align 1, !tbaa !2450
  %3160 = add i64 %3133, -40
  %3161 = add i64 %6614, 1283
  store i64 %3161, i64* %PC, align 8
  %3162 = inttoptr i64 %3160 to i64*
  %3163 = load i64, i64* %3162, align 8
  store i64 %3163, i64* %RCX, align 8, !tbaa !2428
  %3164 = add i64 %3163, 20
  %3165 = add i64 %6614, 1287
  store i64 %3165, i64* %PC, align 8
  %3166 = inttoptr i64 %3164 to i32*
  %3167 = load i32, i32* %3166, align 4
  %3168 = sext i32 %3138 to i64
  %3169 = sext i32 %3167 to i64
  %3170 = mul nsw i64 %3169, %3168
  %3171 = and i64 %3170, 4294967295
  store i64 %3171, i64* %RSI, align 8, !tbaa !2428
  %3172 = trunc i64 %3170 to i32
  %3173 = add i32 %3172, %3123
  %3174 = zext i32 %3173 to i64
  store i64 %3174, i64* %RDX, align 8, !tbaa !2428
  %3175 = icmp ult i32 %3173, %3123
  %3176 = icmp ult i32 %3173, %3172
  %3177 = or i1 %3175, %3176
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %70, align 1, !tbaa !2432
  %3179 = and i32 %3173, 255
  %3180 = tail call i32 @llvm.ctpop.i32(i32 %3179) #8
  %3181 = trunc i32 %3180 to i8
  %3182 = and i8 %3181, 1
  %3183 = xor i8 %3182, 1
  store i8 %3183, i8* %76, align 1, !tbaa !2446
  %3184 = xor i64 %3170, %3121
  %3185 = trunc i64 %3184 to i32
  %3186 = xor i32 %3185, %3173
  %3187 = lshr i32 %3186, 4
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  store i8 %3189, i8* %81, align 1, !tbaa !2447
  %3190 = icmp eq i32 %3173, 0
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %84, align 1, !tbaa !2448
  %3192 = lshr i32 %3173, 31
  %3193 = trunc i32 %3192 to i8
  store i8 %3193, i8* %87, align 1, !tbaa !2449
  %3194 = lshr i32 %3172, 31
  %3195 = xor i32 %3192, %3131
  %3196 = xor i32 %3192, %3194
  %3197 = add nuw nsw i32 %3195, %3196
  %3198 = icmp eq i32 %3197, 2
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %93, align 1, !tbaa !2450
  %3200 = add i64 %3133, -60
  %3201 = add i64 %6614, 1292
  store i64 %3201, i64* %PC, align 8
  %3202 = inttoptr i64 %3200 to i32*
  %3203 = load i32, i32* %3202, align 4
  %3204 = add i32 %3203, -1
  %3205 = zext i32 %3204 to i64
  store i64 %3205, i64* %RSI, align 8, !tbaa !2428
  %3206 = lshr i32 %3204, 31
  %3207 = add i32 %3204, %3173
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RDX, align 8, !tbaa !2428
  %3209 = icmp ult i32 %3207, %3173
  %3210 = icmp ult i32 %3207, %3204
  %3211 = or i1 %3209, %3210
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %70, align 1, !tbaa !2432
  %3213 = and i32 %3207, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213) #8
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %76, align 1, !tbaa !2446
  %3218 = xor i32 %3204, %3173
  %3219 = xor i32 %3218, %3207
  %3220 = lshr i32 %3219, 4
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  store i8 %3222, i8* %81, align 1, !tbaa !2447
  %3223 = icmp eq i32 %3207, 0
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %84, align 1, !tbaa !2448
  %3225 = lshr i32 %3207, 31
  %3226 = trunc i32 %3225 to i8
  store i8 %3226, i8* %87, align 1, !tbaa !2449
  %3227 = xor i32 %3225, %3192
  %3228 = xor i32 %3225, %3206
  %3229 = add nuw nsw i32 %3227, %3228
  %3230 = icmp eq i32 %3229, 2
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %93, align 1, !tbaa !2450
  %3232 = sext i32 %3207 to i64
  store i64 %3232, i64* %RCX, align 8, !tbaa !2428
  %3233 = load i64, i64* %RAX, align 8
  %3234 = shl nsw i64 %3232, 2
  %3235 = add i64 %3234, %3233
  %3236 = add i64 %6614, 1305
  store i64 %3236, i64* %PC, align 8
  %3237 = load <2 x float>, <2 x float>* %219, align 1
  %3238 = load <2 x i32>, <2 x i32>* %220, align 1
  %3239 = inttoptr i64 %3235 to float*
  %3240 = load float, float* %3239, align 4
  %3241 = extractelement <2 x float> %3237, i32 0
  %3242 = fadd float %3241, %3240
  store float %3242, float* %212, align 1, !tbaa !2451
  %3243 = bitcast <2 x float> %3237 to <2 x i32>
  %3244 = extractelement <2 x i32> %3243, i32 1
  store i32 %3244, i32* %221, align 1, !tbaa !2451
  %3245 = extractelement <2 x i32> %3238, i32 0
  store i32 %3245, i32* %222, align 1, !tbaa !2451
  %3246 = extractelement <2 x i32> %3238, i32 1
  store i32 %3246, i32* %223, align 1, !tbaa !2451
  %3247 = load <2 x float>, <2 x float>* %206, align 1
  %3248 = load <2 x i32>, <2 x i32>* %207, align 1
  %3249 = load <2 x float>, <2 x float>* %219, align 1
  %3250 = extractelement <2 x float> %3247, i32 0
  %3251 = extractelement <2 x float> %3249, i32 0
  %3252 = fmul float %3250, %3251
  store float %3252, float* %199, align 1, !tbaa !2451
  %3253 = bitcast <2 x float> %3247 to <2 x i32>
  %3254 = extractelement <2 x i32> %3253, i32 1
  store i32 %3254, i32* %208, align 1, !tbaa !2451
  %3255 = extractelement <2 x i32> %3248, i32 0
  store i32 %3255, i32* %209, align 1, !tbaa !2451
  %3256 = extractelement <2 x i32> %3248, i32 1
  store i32 %3256, i32* %210, align 1, !tbaa !2451
  %3257 = load <2 x float>, <2 x float>* %192, align 1
  %3258 = load <2 x i32>, <2 x i32>* %197, align 1
  %3259 = load <2 x float>, <2 x float>* %206, align 1
  %3260 = extractelement <2 x float> %3257, i32 0
  %3261 = extractelement <2 x float> %3259, i32 0
  %3262 = fadd float %3260, %3261
  store float %3262, float* %193, align 1, !tbaa !2451
  %3263 = bitcast <2 x float> %3257 to <2 x i32>
  %3264 = extractelement <2 x i32> %3263, i32 1
  store i32 %3264, i32* %188, align 1, !tbaa !2451
  %3265 = extractelement <2 x i32> %3258, i32 0
  store i32 %3265, i32* %189, align 1, !tbaa !2451
  %3266 = extractelement <2 x i32> %3258, i32 1
  store i32 %3266, i32* %191, align 1, !tbaa !2451
  %3267 = load i64, i64* %RBP, align 8
  %3268 = add i64 %3267, -24
  %3269 = add i64 %6614, 1317
  store i64 %3269, i64* %PC, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RAX, align 8, !tbaa !2428
  %3272 = add i64 %6614, 1320
  store i64 %3272, i64* %PC, align 8
  %3273 = inttoptr i64 %3271 to i64*
  %3274 = load i64, i64* %3273, align 8
  store i64 %3274, i64* %RAX, align 8, !tbaa !2428
  %3275 = add i64 %6614, 1324
  store i64 %3275, i64* %PC, align 8
  %3276 = load i64, i64* %3270, align 8
  store i64 %3276, i64* %RCX, align 8, !tbaa !2428
  %3277 = add i64 %3276, 12
  %3278 = add i64 %6614, 1327
  store i64 %3278, i64* %PC, align 8
  %3279 = inttoptr i64 %3277 to i32*
  %3280 = load i32, i32* %3279, align 4
  %3281 = shl i32 %3280, 1
  %3282 = icmp slt i32 %3280, 0
  %3283 = icmp slt i32 %3281, 0
  %3284 = xor i1 %3282, %3283
  %3285 = zext i32 %3281 to i64
  store i64 %3285, i64* %RDX, align 8, !tbaa !2428
  %.lobit11 = lshr i32 %3280, 31
  %3286 = trunc i32 %.lobit11 to i8
  store i8 %3286, i8* %70, align 1, !tbaa !2453
  %3287 = and i32 %3281, 254
  %3288 = tail call i32 @llvm.ctpop.i32(i32 %3287) #8
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %3292 = icmp eq i32 %3281, 0
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %84, align 1, !tbaa !2453
  %3294 = lshr i32 %3280, 30
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  store i8 %3296, i8* %87, align 1, !tbaa !2453
  %3297 = zext i1 %3284 to i8
  store i8 %3297, i8* %93, align 1, !tbaa !2453
  %3298 = add i64 %6614, 1334
  store i64 %3298, i64* %PC, align 8
  %3299 = load i64, i64* %3270, align 8
  store i64 %3299, i64* %RCX, align 8, !tbaa !2428
  %3300 = add i64 %3299, 16
  %3301 = add i64 %6614, 1338
  store i64 %3301, i64* %PC, align 8
  %3302 = inttoptr i64 %3300 to i32*
  %3303 = load i32, i32* %3302, align 4
  %3304 = sext i32 %3281 to i64
  %3305 = sext i32 %3303 to i64
  %3306 = mul nsw i64 %3305, %3304
  %3307 = trunc i64 %3306 to i32
  %3308 = and i64 %3306, 4294967294
  store i64 %3308, i64* %RDX, align 8, !tbaa !2428
  %3309 = shl i64 %3306, 32
  %3310 = ashr exact i64 %3309, 32
  %3311 = icmp ne i64 %3310, %3306
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %70, align 1, !tbaa !2432
  %3313 = and i32 %3307, 254
  %3314 = tail call i32 @llvm.ctpop.i32(i32 %3313) #8
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  store i8 %3317, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3318 = lshr i32 %3307, 31
  %3319 = trunc i32 %3318 to i8
  store i8 %3319, i8* %87, align 1, !tbaa !2449
  store i8 %3312, i8* %93, align 1, !tbaa !2450
  %3320 = add i64 %6614, 1342
  store i64 %3320, i64* %PC, align 8
  %3321 = load i64, i64* %3270, align 8
  store i64 %3321, i64* %RCX, align 8, !tbaa !2428
  %3322 = add i64 %3321, 20
  %3323 = add i64 %6614, 1346
  store i64 %3323, i64* %PC, align 8
  %3324 = inttoptr i64 %3322 to i32*
  %3325 = load i32, i32* %3324, align 4
  %3326 = sext i32 %3325 to i64
  %3327 = mul nsw i64 %3326, %3310
  %3328 = trunc i64 %3327 to i32
  %3329 = and i64 %3327, 4294967295
  store i64 %3329, i64* %RDX, align 8, !tbaa !2428
  %3330 = shl i64 %3327, 32
  %3331 = ashr exact i64 %3330, 32
  %3332 = icmp ne i64 %3331, %3327
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %70, align 1, !tbaa !2432
  %3334 = and i32 %3328, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334) #8
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3339 = lshr i32 %3328, 31
  %3340 = trunc i32 %3339 to i8
  store i8 %3340, i8* %87, align 1, !tbaa !2449
  store i8 %3333, i8* %93, align 1, !tbaa !2450
  %3341 = load i64, i64* %RBP, align 8
  %3342 = add i64 %3341, -52
  %3343 = add i64 %6614, 1349
  store i64 %3343, i64* %PC, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RSI, align 8, !tbaa !2428
  %3347 = add i64 %3341, -24
  %3348 = add i64 %6614, 1353
  store i64 %3348, i64* %PC, align 8
  %3349 = inttoptr i64 %3347 to i64*
  %3350 = load i64, i64* %3349, align 8
  store i64 %3350, i64* %RCX, align 8, !tbaa !2428
  %3351 = add i64 %3350, 16
  %3352 = add i64 %6614, 1357
  store i64 %3352, i64* %PC, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = sext i32 %3345 to i64
  %3356 = sext i32 %3354 to i64
  %3357 = mul nsw i64 %3356, %3355
  %3358 = trunc i64 %3357 to i32
  %3359 = and i64 %3357, 4294967295
  store i64 %3359, i64* %RSI, align 8, !tbaa !2428
  %3360 = shl i64 %3357, 32
  %3361 = ashr exact i64 %3360, 32
  %3362 = icmp ne i64 %3361, %3357
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %70, align 1, !tbaa !2432
  %3364 = and i32 %3358, 255
  %3365 = tail call i32 @llvm.ctpop.i32(i32 %3364) #8
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  store i8 %3368, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3369 = lshr i32 %3358, 31
  %3370 = trunc i32 %3369 to i8
  store i8 %3370, i8* %87, align 1, !tbaa !2449
  store i8 %3363, i8* %93, align 1, !tbaa !2450
  %3371 = add i64 %6614, 1361
  store i64 %3371, i64* %PC, align 8
  %3372 = load i64, i64* %3349, align 8
  store i64 %3372, i64* %RCX, align 8, !tbaa !2428
  %3373 = add i64 %3372, 20
  %3374 = add i64 %6614, 1365
  store i64 %3374, i64* %PC, align 8
  %3375 = inttoptr i64 %3373 to i32*
  %3376 = load i32, i32* %3375, align 4
  %3377 = sext i32 %3376 to i64
  %3378 = mul nsw i64 %3377, %3361
  %3379 = and i64 %3378, 4294967295
  store i64 %3379, i64* %RSI, align 8, !tbaa !2428
  %3380 = trunc i64 %3378 to i32
  %3381 = add i32 %3380, %3328
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RDX, align 8, !tbaa !2428
  %3383 = icmp ult i32 %3381, %3328
  %3384 = icmp ult i32 %3381, %3380
  %3385 = or i1 %3383, %3384
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %70, align 1, !tbaa !2432
  %3387 = and i32 %3381, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387) #8
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %76, align 1, !tbaa !2446
  %3392 = xor i64 %3378, %3327
  %3393 = trunc i64 %3392 to i32
  %3394 = xor i32 %3393, %3381
  %3395 = lshr i32 %3394, 4
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  store i8 %3397, i8* %81, align 1, !tbaa !2447
  %3398 = icmp eq i32 %3381, 0
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %84, align 1, !tbaa !2448
  %3400 = lshr i32 %3381, 31
  %3401 = trunc i32 %3400 to i8
  store i8 %3401, i8* %87, align 1, !tbaa !2449
  %3402 = lshr i32 %3380, 31
  %3403 = xor i32 %3400, %3339
  %3404 = xor i32 %3400, %3402
  %3405 = add nuw nsw i32 %3403, %3404
  %3406 = icmp eq i32 %3405, 2
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %93, align 1, !tbaa !2450
  %3408 = add i64 %3341, -56
  %3409 = add i64 %6614, 1370
  store i64 %3409, i64* %PC, align 8
  %3410 = inttoptr i64 %3408 to i32*
  %3411 = load i32, i32* %3410, align 4
  %3412 = zext i32 %3411 to i64
  store i64 %3412, i64* %RSI, align 8, !tbaa !2428
  %3413 = add i64 %6614, 1374
  store i64 %3413, i64* %PC, align 8
  %3414 = load i64, i64* %3349, align 8
  store i64 %3414, i64* %RCX, align 8, !tbaa !2428
  %3415 = add i64 %3414, 20
  %3416 = add i64 %6614, 1378
  store i64 %3416, i64* %PC, align 8
  %3417 = inttoptr i64 %3415 to i32*
  %3418 = load i32, i32* %3417, align 4
  %3419 = sext i32 %3411 to i64
  %3420 = sext i32 %3418 to i64
  %3421 = mul nsw i64 %3420, %3419
  %3422 = and i64 %3421, 4294967295
  store i64 %3422, i64* %RSI, align 8, !tbaa !2428
  %3423 = trunc i64 %3421 to i32
  %3424 = add i32 %3423, %3381
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %RDX, align 8, !tbaa !2428
  %3426 = icmp ult i32 %3424, %3381
  %3427 = icmp ult i32 %3424, %3423
  %3428 = or i1 %3426, %3427
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %70, align 1, !tbaa !2432
  %3430 = and i32 %3424, 255
  %3431 = tail call i32 @llvm.ctpop.i32(i32 %3430) #8
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = xor i8 %3433, 1
  store i8 %3434, i8* %76, align 1, !tbaa !2446
  %3435 = xor i64 %3421, %3382
  %3436 = trunc i64 %3435 to i32
  %3437 = xor i32 %3436, %3424
  %3438 = lshr i32 %3437, 4
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  store i8 %3440, i8* %81, align 1, !tbaa !2447
  %3441 = icmp eq i32 %3424, 0
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %84, align 1, !tbaa !2448
  %3443 = lshr i32 %3424, 31
  %3444 = trunc i32 %3443 to i8
  store i8 %3444, i8* %87, align 1, !tbaa !2449
  %3445 = lshr i32 %3423, 31
  %3446 = xor i32 %3443, %3400
  %3447 = xor i32 %3443, %3445
  %3448 = add nuw nsw i32 %3446, %3447
  %3449 = icmp eq i32 %3448, 2
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %93, align 1, !tbaa !2450
  %3451 = add i64 %3341, -60
  %3452 = add i64 %6614, 1383
  store i64 %3452, i64* %PC, align 8
  %3453 = inttoptr i64 %3451 to i32*
  %3454 = load i32, i32* %3453, align 4
  %3455 = add i32 %3454, %3424
  %3456 = zext i32 %3455 to i64
  store i64 %3456, i64* %RDX, align 8, !tbaa !2428
  %3457 = icmp ult i32 %3455, %3424
  %3458 = icmp ult i32 %3455, %3454
  %3459 = or i1 %3457, %3458
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %70, align 1, !tbaa !2432
  %3461 = and i32 %3455, 255
  %3462 = tail call i32 @llvm.ctpop.i32(i32 %3461) #8
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = xor i8 %3464, 1
  store i8 %3465, i8* %76, align 1, !tbaa !2446
  %3466 = xor i32 %3454, %3424
  %3467 = xor i32 %3466, %3455
  %3468 = lshr i32 %3467, 4
  %3469 = trunc i32 %3468 to i8
  %3470 = and i8 %3469, 1
  store i8 %3470, i8* %81, align 1, !tbaa !2447
  %3471 = icmp eq i32 %3455, 0
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %84, align 1, !tbaa !2448
  %3473 = lshr i32 %3455, 31
  %3474 = trunc i32 %3473 to i8
  store i8 %3474, i8* %87, align 1, !tbaa !2449
  %3475 = lshr i32 %3454, 31
  %3476 = xor i32 %3473, %3443
  %3477 = xor i32 %3473, %3475
  %3478 = add nuw nsw i32 %3476, %3477
  %3479 = icmp eq i32 %3478, 2
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %93, align 1, !tbaa !2450
  %3481 = sext i32 %3455 to i64
  store i64 %3481, i64* %RCX, align 8, !tbaa !2428
  %3482 = load i64, i64* %RAX, align 8
  %3483 = shl nsw i64 %3481, 2
  %3484 = add i64 %3483, %3482
  %3485 = add i64 %6614, 1391
  store i64 %3485, i64* %PC, align 8
  %3486 = inttoptr i64 %3484 to i32*
  %3487 = load i32, i32* %3486, align 4
  store i32 %3487, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %3488 = load i64, i64* %RBP, align 8
  %3489 = add i64 %3488, -40
  %3490 = add i64 %6614, 1395
  store i64 %3490, i64* %PC, align 8
  %3491 = inttoptr i64 %3489 to i64*
  %3492 = load i64, i64* %3491, align 8
  store i64 %3492, i64* %RAX, align 8, !tbaa !2428
  %3493 = add i64 %6614, 1398
  store i64 %3493, i64* %PC, align 8
  %3494 = inttoptr i64 %3492 to i64*
  %3495 = load i64, i64* %3494, align 8
  store i64 %3495, i64* %RAX, align 8, !tbaa !2428
  %3496 = add i64 %6614, 1402
  store i64 %3496, i64* %PC, align 8
  %3497 = load i64, i64* %3491, align 8
  store i64 %3497, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3498 = add i64 %6614, 1410
  store i64 %3498, i64* %PC, align 8
  %3499 = load i64, i64* %3491, align 8
  store i64 %3499, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3500 = add i64 %6614, 1418
  store i64 %3500, i64* %PC, align 8
  %3501 = load i64, i64* %3491, align 8
  store i64 %3501, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3502 = add i64 %3488, -52
  %3503 = add i64 %6614, 1425
  store i64 %3503, i64* %PC, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = add i32 %3505, 1
  %3507 = zext i32 %3506 to i64
  store i64 %3507, i64* %RSI, align 8, !tbaa !2428
  %3508 = icmp eq i32 %3505, -1
  %3509 = icmp eq i32 %3506, 0
  %3510 = or i1 %3508, %3509
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %70, align 1, !tbaa !2432
  %3512 = and i32 %3506, 255
  %3513 = tail call i32 @llvm.ctpop.i32(i32 %3512) #8
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  %3516 = xor i8 %3515, 1
  store i8 %3516, i8* %76, align 1, !tbaa !2446
  %3517 = xor i32 %3505, %3506
  %3518 = lshr i32 %3517, 4
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  store i8 %3520, i8* %81, align 1, !tbaa !2447
  %3521 = zext i1 %3509 to i8
  store i8 %3521, i8* %84, align 1, !tbaa !2448
  %3522 = lshr i32 %3506, 31
  %3523 = trunc i32 %3522 to i8
  store i8 %3523, i8* %87, align 1, !tbaa !2449
  %3524 = lshr i32 %3505, 31
  %3525 = xor i32 %3522, %3524
  %3526 = add nuw nsw i32 %3525, %3522
  %3527 = icmp eq i32 %3526, 2
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %93, align 1, !tbaa !2450
  %3529 = add i64 %6614, 1432
  store i64 %3529, i64* %PC, align 8
  %3530 = load i64, i64* %3491, align 8
  store i64 %3530, i64* %RCX, align 8, !tbaa !2428
  %3531 = add i64 %3530, 16
  %3532 = add i64 %6614, 1436
  store i64 %3532, i64* %PC, align 8
  %3533 = inttoptr i64 %3531 to i32*
  %3534 = load i32, i32* %3533, align 4
  %3535 = sext i32 %3506 to i64
  %3536 = sext i32 %3534 to i64
  %3537 = mul nsw i64 %3536, %3535
  %3538 = trunc i64 %3537 to i32
  %3539 = and i64 %3537, 4294967295
  store i64 %3539, i64* %RSI, align 8, !tbaa !2428
  %3540 = shl i64 %3537, 32
  %3541 = ashr exact i64 %3540, 32
  %3542 = icmp ne i64 %3541, %3537
  %3543 = zext i1 %3542 to i8
  store i8 %3543, i8* %70, align 1, !tbaa !2432
  %3544 = and i32 %3538, 255
  %3545 = tail call i32 @llvm.ctpop.i32(i32 %3544) #8
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  %3548 = xor i8 %3547, 1
  store i8 %3548, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3549 = lshr i32 %3538, 31
  %3550 = trunc i32 %3549 to i8
  store i8 %3550, i8* %87, align 1, !tbaa !2449
  store i8 %3543, i8* %93, align 1, !tbaa !2450
  %3551 = add i64 %6614, 1440
  store i64 %3551, i64* %PC, align 8
  %3552 = load i64, i64* %3491, align 8
  store i64 %3552, i64* %RCX, align 8, !tbaa !2428
  %3553 = add i64 %3552, 20
  %3554 = add i64 %6614, 1444
  store i64 %3554, i64* %PC, align 8
  %3555 = inttoptr i64 %3553 to i32*
  %3556 = load i32, i32* %3555, align 4
  %3557 = sext i32 %3556 to i64
  %3558 = mul nsw i64 %3557, %3541
  %3559 = and i64 %3558, 4294967295
  store i64 %3559, i64* %RSI, align 8, !tbaa !2428
  %3560 = trunc i64 %3558 to i32
  %3561 = zext i32 %3560 to i64
  store i64 %3561, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3562 = and i32 %3560, 255
  %3563 = tail call i32 @llvm.ctpop.i32(i32 %3562) #8
  %3564 = trunc i32 %3563 to i8
  %3565 = and i8 %3564, 1
  %3566 = xor i8 %3565, 1
  store i8 %3566, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3567 = icmp eq i32 %3560, 0
  %3568 = zext i1 %3567 to i8
  store i8 %3568, i8* %84, align 1, !tbaa !2448
  %3569 = lshr i32 %3560, 31
  %3570 = trunc i32 %3569 to i8
  store i8 %3570, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3571 = load i64, i64* %RBP, align 8
  %3572 = add i64 %3571, -56
  %3573 = add i64 %6614, 1449
  store i64 %3573, i64* %PC, align 8
  %3574 = inttoptr i64 %3572 to i32*
  %3575 = load i32, i32* %3574, align 4
  %3576 = zext i32 %3575 to i64
  store i64 %3576, i64* %RSI, align 8, !tbaa !2428
  %3577 = add i64 %3571, -40
  %3578 = add i64 %6614, 1453
  store i64 %3578, i64* %PC, align 8
  %3579 = inttoptr i64 %3577 to i64*
  %3580 = load i64, i64* %3579, align 8
  store i64 %3580, i64* %RCX, align 8, !tbaa !2428
  %3581 = add i64 %3580, 20
  %3582 = add i64 %6614, 1457
  store i64 %3582, i64* %PC, align 8
  %3583 = inttoptr i64 %3581 to i32*
  %3584 = load i32, i32* %3583, align 4
  %3585 = sext i32 %3575 to i64
  %3586 = sext i32 %3584 to i64
  %3587 = mul nsw i64 %3586, %3585
  %3588 = and i64 %3587, 4294967295
  store i64 %3588, i64* %RSI, align 8, !tbaa !2428
  %3589 = trunc i64 %3587 to i32
  %3590 = add i32 %3589, %3560
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RDX, align 8, !tbaa !2428
  %3592 = icmp ult i32 %3590, %3560
  %3593 = icmp ult i32 %3590, %3589
  %3594 = or i1 %3592, %3593
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %70, align 1, !tbaa !2432
  %3596 = and i32 %3590, 255
  %3597 = tail call i32 @llvm.ctpop.i32(i32 %3596) #8
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %76, align 1, !tbaa !2446
  %3601 = xor i64 %3587, %3561
  %3602 = trunc i64 %3601 to i32
  %3603 = xor i32 %3602, %3590
  %3604 = lshr i32 %3603, 4
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  store i8 %3606, i8* %81, align 1, !tbaa !2447
  %3607 = icmp eq i32 %3590, 0
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %84, align 1, !tbaa !2448
  %3609 = lshr i32 %3590, 31
  %3610 = trunc i32 %3609 to i8
  store i8 %3610, i8* %87, align 1, !tbaa !2449
  %3611 = lshr i32 %3589, 31
  %3612 = xor i32 %3609, %3569
  %3613 = xor i32 %3609, %3611
  %3614 = add nuw nsw i32 %3612, %3613
  %3615 = icmp eq i32 %3614, 2
  %3616 = zext i1 %3615 to i8
  store i8 %3616, i8* %93, align 1, !tbaa !2450
  %3617 = add i64 %3571, -60
  %3618 = add i64 %6614, 1462
  store i64 %3618, i64* %PC, align 8
  %3619 = inttoptr i64 %3617 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = add i32 %3620, 1
  %3622 = zext i32 %3621 to i64
  store i64 %3622, i64* %RSI, align 8, !tbaa !2428
  %3623 = lshr i32 %3621, 31
  %3624 = add i32 %3621, %3590
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RDX, align 8, !tbaa !2428
  %3626 = icmp ult i32 %3624, %3590
  %3627 = icmp ult i32 %3624, %3621
  %3628 = or i1 %3626, %3627
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %70, align 1, !tbaa !2432
  %3630 = and i32 %3624, 255
  %3631 = tail call i32 @llvm.ctpop.i32(i32 %3630) #8
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  %3634 = xor i8 %3633, 1
  store i8 %3634, i8* %76, align 1, !tbaa !2446
  %3635 = xor i32 %3621, %3590
  %3636 = xor i32 %3635, %3624
  %3637 = lshr i32 %3636, 4
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  store i8 %3639, i8* %81, align 1, !tbaa !2447
  %3640 = icmp eq i32 %3624, 0
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %84, align 1, !tbaa !2448
  %3642 = lshr i32 %3624, 31
  %3643 = trunc i32 %3642 to i8
  store i8 %3643, i8* %87, align 1, !tbaa !2449
  %3644 = xor i32 %3642, %3609
  %3645 = xor i32 %3642, %3623
  %3646 = add nuw nsw i32 %3644, %3645
  %3647 = icmp eq i32 %3646, 2
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %93, align 1, !tbaa !2450
  %3649 = sext i32 %3624 to i64
  store i64 %3649, i64* %RCX, align 8, !tbaa !2428
  %3650 = load i64, i64* %RAX, align 8
  %3651 = shl nsw i64 %3649, 2
  %3652 = add i64 %3651, %3650
  %3653 = add i64 %6614, 1475
  store i64 %3653, i64* %PC, align 8
  %3654 = inttoptr i64 %3652 to i32*
  %3655 = load i32, i32* %3654, align 4
  store i32 %3655, i32* %1742, align 1, !tbaa !2451
  store float 0.000000e+00, float* %214, align 1, !tbaa !2451
  store float 0.000000e+00, float* %216, align 1, !tbaa !2451
  store float 0.000000e+00, float* %218, align 1, !tbaa !2451
  %3656 = load i64, i64* %RBP, align 8
  %3657 = add i64 %3656, -40
  %3658 = add i64 %6614, 1479
  store i64 %3658, i64* %PC, align 8
  %3659 = inttoptr i64 %3657 to i64*
  %3660 = load i64, i64* %3659, align 8
  store i64 %3660, i64* %RAX, align 8, !tbaa !2428
  %3661 = add i64 %6614, 1482
  store i64 %3661, i64* %PC, align 8
  %3662 = inttoptr i64 %3660 to i64*
  %3663 = load i64, i64* %3662, align 8
  store i64 %3663, i64* %RAX, align 8, !tbaa !2428
  %3664 = add i64 %6614, 1486
  store i64 %3664, i64* %PC, align 8
  %3665 = load i64, i64* %3659, align 8
  store i64 %3665, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3666 = add i64 %6614, 1494
  store i64 %3666, i64* %PC, align 8
  %3667 = load i64, i64* %3659, align 8
  store i64 %3667, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3668 = add i64 %6614, 1502
  store i64 %3668, i64* %PC, align 8
  %3669 = load i64, i64* %3659, align 8
  store i64 %3669, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3670 = add i64 %3656, -52
  %3671 = add i64 %6614, 1509
  store i64 %3671, i64* %PC, align 8
  %3672 = inttoptr i64 %3670 to i32*
  %3673 = load i32, i32* %3672, align 4
  %3674 = add i32 %3673, -1
  %3675 = zext i32 %3674 to i64
  store i64 %3675, i64* %RSI, align 8, !tbaa !2428
  %3676 = icmp eq i32 %3673, 0
  %3677 = zext i1 %3676 to i8
  store i8 %3677, i8* %70, align 1, !tbaa !2432
  %3678 = and i32 %3674, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678) #8
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %76, align 1, !tbaa !2446
  %3683 = xor i32 %3673, %3674
  %3684 = lshr i32 %3683, 4
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  store i8 %3686, i8* %81, align 1, !tbaa !2447
  %3687 = icmp eq i32 %3674, 0
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %84, align 1, !tbaa !2448
  %3689 = lshr i32 %3674, 31
  %3690 = trunc i32 %3689 to i8
  store i8 %3690, i8* %87, align 1, !tbaa !2449
  %3691 = lshr i32 %3673, 31
  %3692 = xor i32 %3689, %3691
  %3693 = add nuw nsw i32 %3692, %3691
  %3694 = icmp eq i32 %3693, 2
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %93, align 1, !tbaa !2450
  %3696 = add i64 %6614, 1516
  store i64 %3696, i64* %PC, align 8
  %3697 = load i64, i64* %3659, align 8
  store i64 %3697, i64* %RCX, align 8, !tbaa !2428
  %3698 = add i64 %3697, 16
  %3699 = add i64 %6614, 1520
  store i64 %3699, i64* %PC, align 8
  %3700 = inttoptr i64 %3698 to i32*
  %3701 = load i32, i32* %3700, align 4
  %3702 = sext i32 %3674 to i64
  %3703 = sext i32 %3701 to i64
  %3704 = mul nsw i64 %3703, %3702
  %3705 = trunc i64 %3704 to i32
  %3706 = and i64 %3704, 4294967295
  store i64 %3706, i64* %RSI, align 8, !tbaa !2428
  %3707 = shl i64 %3704, 32
  %3708 = ashr exact i64 %3707, 32
  %3709 = icmp ne i64 %3708, %3704
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %70, align 1, !tbaa !2432
  %3711 = and i32 %3705, 255
  %3712 = tail call i32 @llvm.ctpop.i32(i32 %3711) #8
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  store i8 %3715, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3716 = lshr i32 %3705, 31
  %3717 = trunc i32 %3716 to i8
  store i8 %3717, i8* %87, align 1, !tbaa !2449
  store i8 %3710, i8* %93, align 1, !tbaa !2450
  %3718 = load i64, i64* %RBP, align 8
  %3719 = add i64 %3718, -40
  %3720 = add i64 %6614, 1524
  store i64 %3720, i64* %PC, align 8
  %3721 = inttoptr i64 %3719 to i64*
  %3722 = load i64, i64* %3721, align 8
  store i64 %3722, i64* %RCX, align 8, !tbaa !2428
  %3723 = add i64 %3722, 20
  %3724 = add i64 %6614, 1528
  store i64 %3724, i64* %PC, align 8
  %3725 = inttoptr i64 %3723 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = sext i32 %3726 to i64
  %3728 = mul nsw i64 %3727, %3708
  %3729 = and i64 %3728, 4294967295
  store i64 %3729, i64* %RSI, align 8, !tbaa !2428
  %3730 = trunc i64 %3728 to i32
  %3731 = zext i32 %3730 to i64
  store i64 %3731, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3732 = and i32 %3730, 255
  %3733 = tail call i32 @llvm.ctpop.i32(i32 %3732) #8
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  store i8 %3736, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3737 = icmp eq i32 %3730, 0
  %3738 = zext i1 %3737 to i8
  store i8 %3738, i8* %84, align 1, !tbaa !2448
  %3739 = lshr i32 %3730, 31
  %3740 = trunc i32 %3739 to i8
  store i8 %3740, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3741 = add i64 %3718, -56
  %3742 = add i64 %6614, 1533
  store i64 %3742, i64* %PC, align 8
  %3743 = inttoptr i64 %3741 to i32*
  %3744 = load i32, i32* %3743, align 4
  %3745 = zext i32 %3744 to i64
  store i64 %3745, i64* %RSI, align 8, !tbaa !2428
  %3746 = add i64 %6614, 1537
  store i64 %3746, i64* %PC, align 8
  %3747 = load i64, i64* %3721, align 8
  store i64 %3747, i64* %RCX, align 8, !tbaa !2428
  %3748 = add i64 %3747, 20
  %3749 = add i64 %6614, 1541
  store i64 %3749, i64* %PC, align 8
  %3750 = inttoptr i64 %3748 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = sext i32 %3744 to i64
  %3753 = sext i32 %3751 to i64
  %3754 = mul nsw i64 %3753, %3752
  %3755 = and i64 %3754, 4294967295
  store i64 %3755, i64* %RSI, align 8, !tbaa !2428
  %3756 = trunc i64 %3754 to i32
  %3757 = add i32 %3756, %3730
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %RDX, align 8, !tbaa !2428
  %3759 = icmp ult i32 %3757, %3730
  %3760 = icmp ult i32 %3757, %3756
  %3761 = or i1 %3759, %3760
  %3762 = zext i1 %3761 to i8
  store i8 %3762, i8* %70, align 1, !tbaa !2432
  %3763 = and i32 %3757, 255
  %3764 = tail call i32 @llvm.ctpop.i32(i32 %3763) #8
  %3765 = trunc i32 %3764 to i8
  %3766 = and i8 %3765, 1
  %3767 = xor i8 %3766, 1
  store i8 %3767, i8* %76, align 1, !tbaa !2446
  %3768 = xor i64 %3754, %3731
  %3769 = trunc i64 %3768 to i32
  %3770 = xor i32 %3769, %3757
  %3771 = lshr i32 %3770, 4
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  store i8 %3773, i8* %81, align 1, !tbaa !2447
  %3774 = icmp eq i32 %3757, 0
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %84, align 1, !tbaa !2448
  %3776 = lshr i32 %3757, 31
  %3777 = trunc i32 %3776 to i8
  store i8 %3777, i8* %87, align 1, !tbaa !2449
  %3778 = lshr i32 %3756, 31
  %3779 = xor i32 %3776, %3739
  %3780 = xor i32 %3776, %3778
  %3781 = add nuw nsw i32 %3779, %3780
  %3782 = icmp eq i32 %3781, 2
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %93, align 1, !tbaa !2450
  %3784 = add i64 %3718, -60
  %3785 = add i64 %6614, 1546
  store i64 %3785, i64* %PC, align 8
  %3786 = inttoptr i64 %3784 to i32*
  %3787 = load i32, i32* %3786, align 4
  %3788 = add i32 %3787, 1
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %RSI, align 8, !tbaa !2428
  %3790 = lshr i32 %3788, 31
  %3791 = add i32 %3788, %3757
  %3792 = zext i32 %3791 to i64
  store i64 %3792, i64* %RDX, align 8, !tbaa !2428
  %3793 = icmp ult i32 %3791, %3757
  %3794 = icmp ult i32 %3791, %3788
  %3795 = or i1 %3793, %3794
  %3796 = zext i1 %3795 to i8
  store i8 %3796, i8* %70, align 1, !tbaa !2432
  %3797 = and i32 %3791, 255
  %3798 = tail call i32 @llvm.ctpop.i32(i32 %3797) #8
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  store i8 %3801, i8* %76, align 1, !tbaa !2446
  %3802 = xor i32 %3788, %3757
  %3803 = xor i32 %3802, %3791
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  store i8 %3806, i8* %81, align 1, !tbaa !2447
  %3807 = icmp eq i32 %3791, 0
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %84, align 1, !tbaa !2448
  %3809 = lshr i32 %3791, 31
  %3810 = trunc i32 %3809 to i8
  store i8 %3810, i8* %87, align 1, !tbaa !2449
  %3811 = xor i32 %3809, %3776
  %3812 = xor i32 %3809, %3790
  %3813 = add nuw nsw i32 %3811, %3812
  %3814 = icmp eq i32 %3813, 2
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %93, align 1, !tbaa !2450
  %3816 = sext i32 %3791 to i64
  store i64 %3816, i64* %RCX, align 8, !tbaa !2428
  %3817 = load i64, i64* %RAX, align 8
  %3818 = shl nsw i64 %3816, 2
  %3819 = add i64 %3818, %3817
  %3820 = add i64 %6614, 1559
  store i64 %3820, i64* %PC, align 8
  %3821 = load <2 x float>, <2 x float>* %219, align 1
  %3822 = load <2 x i32>, <2 x i32>* %220, align 1
  %3823 = inttoptr i64 %3819 to float*
  %3824 = load float, float* %3823, align 4
  %3825 = extractelement <2 x float> %3821, i32 0
  %3826 = fsub float %3825, %3824
  store float %3826, float* %212, align 1, !tbaa !2451
  %3827 = bitcast <2 x float> %3821 to <2 x i32>
  %3828 = extractelement <2 x i32> %3827, i32 1
  store i32 %3828, i32* %221, align 1, !tbaa !2451
  %3829 = extractelement <2 x i32> %3822, i32 0
  store i32 %3829, i32* %222, align 1, !tbaa !2451
  %3830 = extractelement <2 x i32> %3822, i32 1
  store i32 %3830, i32* %223, align 1, !tbaa !2451
  %3831 = load i64, i64* %RBP, align 8
  %3832 = add i64 %3831, -40
  %3833 = add i64 %6614, 1563
  store i64 %3833, i64* %PC, align 8
  %3834 = inttoptr i64 %3832 to i64*
  %3835 = load i64, i64* %3834, align 8
  store i64 %3835, i64* %RAX, align 8, !tbaa !2428
  %3836 = add i64 %6614, 1566
  store i64 %3836, i64* %PC, align 8
  %3837 = inttoptr i64 %3835 to i64*
  %3838 = load i64, i64* %3837, align 8
  store i64 %3838, i64* %RAX, align 8, !tbaa !2428
  %3839 = add i64 %6614, 1570
  store i64 %3839, i64* %PC, align 8
  %3840 = load i64, i64* %3834, align 8
  store i64 %3840, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3841 = add i64 %6614, 1578
  store i64 %3841, i64* %PC, align 8
  %3842 = load i64, i64* %3834, align 8
  store i64 %3842, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3843 = add i64 %6614, 1586
  store i64 %3843, i64* %PC, align 8
  %3844 = load i64, i64* %3834, align 8
  store i64 %3844, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3845 = add i64 %3831, -52
  %3846 = add i64 %6614, 1593
  store i64 %3846, i64* %PC, align 8
  %3847 = inttoptr i64 %3845 to i32*
  %3848 = load i32, i32* %3847, align 4
  %3849 = add i32 %3848, 1
  %3850 = zext i32 %3849 to i64
  store i64 %3850, i64* %RSI, align 8, !tbaa !2428
  %3851 = icmp eq i32 %3848, -1
  %3852 = icmp eq i32 %3849, 0
  %3853 = or i1 %3851, %3852
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %70, align 1, !tbaa !2432
  %3855 = and i32 %3849, 255
  %3856 = tail call i32 @llvm.ctpop.i32(i32 %3855) #8
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  %3859 = xor i8 %3858, 1
  store i8 %3859, i8* %76, align 1, !tbaa !2446
  %3860 = xor i32 %3848, %3849
  %3861 = lshr i32 %3860, 4
  %3862 = trunc i32 %3861 to i8
  %3863 = and i8 %3862, 1
  store i8 %3863, i8* %81, align 1, !tbaa !2447
  %3864 = zext i1 %3852 to i8
  store i8 %3864, i8* %84, align 1, !tbaa !2448
  %3865 = lshr i32 %3849, 31
  %3866 = trunc i32 %3865 to i8
  store i8 %3866, i8* %87, align 1, !tbaa !2449
  %3867 = lshr i32 %3848, 31
  %3868 = xor i32 %3865, %3867
  %3869 = add nuw nsw i32 %3868, %3865
  %3870 = icmp eq i32 %3869, 2
  %3871 = zext i1 %3870 to i8
  store i8 %3871, i8* %93, align 1, !tbaa !2450
  %3872 = add i64 %6614, 1600
  store i64 %3872, i64* %PC, align 8
  %3873 = load i64, i64* %3834, align 8
  store i64 %3873, i64* %RCX, align 8, !tbaa !2428
  %3874 = add i64 %3873, 16
  %3875 = add i64 %6614, 1604
  store i64 %3875, i64* %PC, align 8
  %3876 = inttoptr i64 %3874 to i32*
  %3877 = load i32, i32* %3876, align 4
  %3878 = sext i32 %3849 to i64
  %3879 = sext i32 %3877 to i64
  %3880 = mul nsw i64 %3879, %3878
  %3881 = trunc i64 %3880 to i32
  %3882 = and i64 %3880, 4294967295
  store i64 %3882, i64* %RSI, align 8, !tbaa !2428
  %3883 = shl i64 %3880, 32
  %3884 = ashr exact i64 %3883, 32
  %3885 = icmp ne i64 %3884, %3880
  %3886 = zext i1 %3885 to i8
  store i8 %3886, i8* %70, align 1, !tbaa !2432
  %3887 = and i32 %3881, 255
  %3888 = tail call i32 @llvm.ctpop.i32(i32 %3887) #8
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  store i8 %3891, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3892 = lshr i32 %3881, 31
  %3893 = trunc i32 %3892 to i8
  store i8 %3893, i8* %87, align 1, !tbaa !2449
  store i8 %3886, i8* %93, align 1, !tbaa !2450
  %3894 = add i64 %6614, 1608
  store i64 %3894, i64* %PC, align 8
  %3895 = load i64, i64* %3834, align 8
  store i64 %3895, i64* %RCX, align 8, !tbaa !2428
  %3896 = add i64 %3895, 20
  %3897 = add i64 %6614, 1612
  store i64 %3897, i64* %PC, align 8
  %3898 = inttoptr i64 %3896 to i32*
  %3899 = load i32, i32* %3898, align 4
  %3900 = sext i32 %3899 to i64
  %3901 = mul nsw i64 %3900, %3884
  %3902 = and i64 %3901, 4294967295
  store i64 %3902, i64* %RSI, align 8, !tbaa !2428
  %3903 = trunc i64 %3901 to i32
  %3904 = zext i32 %3903 to i64
  store i64 %3904, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3905 = and i32 %3903, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905) #8
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3910 = icmp eq i32 %3903, 0
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %84, align 1, !tbaa !2448
  %3912 = lshr i32 %3903, 31
  %3913 = trunc i32 %3912 to i8
  store i8 %3913, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3914 = load i64, i64* %RBP, align 8
  %3915 = add i64 %3914, -56
  %3916 = add i64 %6614, 1617
  store i64 %3916, i64* %PC, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RSI, align 8, !tbaa !2428
  %3920 = add i64 %3914, -40
  %3921 = add i64 %6614, 1621
  store i64 %3921, i64* %PC, align 8
  %3922 = inttoptr i64 %3920 to i64*
  %3923 = load i64, i64* %3922, align 8
  store i64 %3923, i64* %RCX, align 8, !tbaa !2428
  %3924 = add i64 %3923, 20
  %3925 = add i64 %6614, 1625
  store i64 %3925, i64* %PC, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = sext i32 %3918 to i64
  %3929 = sext i32 %3927 to i64
  %3930 = mul nsw i64 %3929, %3928
  %3931 = and i64 %3930, 4294967295
  store i64 %3931, i64* %RSI, align 8, !tbaa !2428
  %3932 = trunc i64 %3930 to i32
  %3933 = add i32 %3932, %3903
  %3934 = zext i32 %3933 to i64
  store i64 %3934, i64* %RDX, align 8, !tbaa !2428
  %3935 = icmp ult i32 %3933, %3903
  %3936 = icmp ult i32 %3933, %3932
  %3937 = or i1 %3935, %3936
  %3938 = zext i1 %3937 to i8
  store i8 %3938, i8* %70, align 1, !tbaa !2432
  %3939 = and i32 %3933, 255
  %3940 = tail call i32 @llvm.ctpop.i32(i32 %3939) #8
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = xor i8 %3942, 1
  store i8 %3943, i8* %76, align 1, !tbaa !2446
  %3944 = xor i64 %3930, %3904
  %3945 = trunc i64 %3944 to i32
  %3946 = xor i32 %3945, %3933
  %3947 = lshr i32 %3946, 4
  %3948 = trunc i32 %3947 to i8
  %3949 = and i8 %3948, 1
  store i8 %3949, i8* %81, align 1, !tbaa !2447
  %3950 = icmp eq i32 %3933, 0
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %84, align 1, !tbaa !2448
  %3952 = lshr i32 %3933, 31
  %3953 = trunc i32 %3952 to i8
  store i8 %3953, i8* %87, align 1, !tbaa !2449
  %3954 = lshr i32 %3932, 31
  %3955 = xor i32 %3952, %3912
  %3956 = xor i32 %3952, %3954
  %3957 = add nuw nsw i32 %3955, %3956
  %3958 = icmp eq i32 %3957, 2
  %3959 = zext i1 %3958 to i8
  store i8 %3959, i8* %93, align 1, !tbaa !2450
  %3960 = add i64 %3914, -60
  %3961 = add i64 %6614, 1630
  store i64 %3961, i64* %PC, align 8
  %3962 = inttoptr i64 %3960 to i32*
  %3963 = load i32, i32* %3962, align 4
  %3964 = add i32 %3963, -1
  %3965 = zext i32 %3964 to i64
  store i64 %3965, i64* %RSI, align 8, !tbaa !2428
  %3966 = lshr i32 %3964, 31
  %3967 = add i32 %3964, %3933
  %3968 = zext i32 %3967 to i64
  store i64 %3968, i64* %RDX, align 8, !tbaa !2428
  %3969 = icmp ult i32 %3967, %3933
  %3970 = icmp ult i32 %3967, %3964
  %3971 = or i1 %3969, %3970
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %70, align 1, !tbaa !2432
  %3973 = and i32 %3967, 255
  %3974 = tail call i32 @llvm.ctpop.i32(i32 %3973) #8
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  store i8 %3977, i8* %76, align 1, !tbaa !2446
  %3978 = xor i32 %3964, %3933
  %3979 = xor i32 %3978, %3967
  %3980 = lshr i32 %3979, 4
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  store i8 %3982, i8* %81, align 1, !tbaa !2447
  %3983 = icmp eq i32 %3967, 0
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %84, align 1, !tbaa !2448
  %3985 = lshr i32 %3967, 31
  %3986 = trunc i32 %3985 to i8
  store i8 %3986, i8* %87, align 1, !tbaa !2449
  %3987 = xor i32 %3985, %3952
  %3988 = xor i32 %3985, %3966
  %3989 = add nuw nsw i32 %3987, %3988
  %3990 = icmp eq i32 %3989, 2
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %93, align 1, !tbaa !2450
  %3992 = sext i32 %3967 to i64
  store i64 %3992, i64* %RCX, align 8, !tbaa !2428
  %3993 = load i64, i64* %RAX, align 8
  %3994 = shl nsw i64 %3992, 2
  %3995 = add i64 %3994, %3993
  %3996 = add i64 %6614, 1643
  store i64 %3996, i64* %PC, align 8
  %3997 = load <2 x float>, <2 x float>* %219, align 1
  %3998 = load <2 x i32>, <2 x i32>* %220, align 1
  %3999 = inttoptr i64 %3995 to float*
  %4000 = load float, float* %3999, align 4
  %4001 = extractelement <2 x float> %3997, i32 0
  %4002 = fsub float %4001, %4000
  store float %4002, float* %212, align 1, !tbaa !2451
  %4003 = bitcast <2 x float> %3997 to <2 x i32>
  %4004 = extractelement <2 x i32> %4003, i32 1
  store i32 %4004, i32* %221, align 1, !tbaa !2451
  %4005 = extractelement <2 x i32> %3998, i32 0
  store i32 %4005, i32* %222, align 1, !tbaa !2451
  %4006 = extractelement <2 x i32> %3998, i32 1
  store i32 %4006, i32* %223, align 1, !tbaa !2451
  %4007 = load i64, i64* %RBP, align 8
  %4008 = add i64 %4007, -40
  %4009 = add i64 %6614, 1647
  store i64 %4009, i64* %PC, align 8
  %4010 = inttoptr i64 %4008 to i64*
  %4011 = load i64, i64* %4010, align 8
  store i64 %4011, i64* %RAX, align 8, !tbaa !2428
  %4012 = add i64 %6614, 1650
  store i64 %4012, i64* %PC, align 8
  %4013 = inttoptr i64 %4011 to i64*
  %4014 = load i64, i64* %4013, align 8
  store i64 %4014, i64* %RAX, align 8, !tbaa !2428
  %4015 = add i64 %6614, 1654
  store i64 %4015, i64* %PC, align 8
  %4016 = load i64, i64* %4010, align 8
  store i64 %4016, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4017 = add i64 %6614, 1662
  store i64 %4017, i64* %PC, align 8
  %4018 = load i64, i64* %4010, align 8
  store i64 %4018, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4019 = add i64 %6614, 1670
  store i64 %4019, i64* %PC, align 8
  %4020 = load i64, i64* %4010, align 8
  store i64 %4020, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4021 = add i64 %4007, -52
  %4022 = add i64 %6614, 1677
  store i64 %4022, i64* %PC, align 8
  %4023 = inttoptr i64 %4021 to i32*
  %4024 = load i32, i32* %4023, align 4
  %4025 = add i32 %4024, -1
  %4026 = zext i32 %4025 to i64
  store i64 %4026, i64* %RSI, align 8, !tbaa !2428
  %4027 = icmp eq i32 %4024, 0
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %70, align 1, !tbaa !2432
  %4029 = and i32 %4025, 255
  %4030 = tail call i32 @llvm.ctpop.i32(i32 %4029) #8
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  store i8 %4033, i8* %76, align 1, !tbaa !2446
  %4034 = xor i32 %4024, %4025
  %4035 = lshr i32 %4034, 4
  %4036 = trunc i32 %4035 to i8
  %4037 = and i8 %4036, 1
  store i8 %4037, i8* %81, align 1, !tbaa !2447
  %4038 = icmp eq i32 %4025, 0
  %4039 = zext i1 %4038 to i8
  store i8 %4039, i8* %84, align 1, !tbaa !2448
  %4040 = lshr i32 %4025, 31
  %4041 = trunc i32 %4040 to i8
  store i8 %4041, i8* %87, align 1, !tbaa !2449
  %4042 = lshr i32 %4024, 31
  %4043 = xor i32 %4040, %4042
  %4044 = add nuw nsw i32 %4043, %4042
  %4045 = icmp eq i32 %4044, 2
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %93, align 1, !tbaa !2450
  %4047 = add i64 %6614, 1684
  store i64 %4047, i64* %PC, align 8
  %4048 = load i64, i64* %4010, align 8
  store i64 %4048, i64* %RCX, align 8, !tbaa !2428
  %4049 = add i64 %4048, 16
  %4050 = add i64 %6614, 1688
  store i64 %4050, i64* %PC, align 8
  %4051 = inttoptr i64 %4049 to i32*
  %4052 = load i32, i32* %4051, align 4
  %4053 = sext i32 %4025 to i64
  %4054 = sext i32 %4052 to i64
  %4055 = mul nsw i64 %4054, %4053
  %4056 = trunc i64 %4055 to i32
  %4057 = and i64 %4055, 4294967295
  store i64 %4057, i64* %RSI, align 8, !tbaa !2428
  %4058 = shl i64 %4055, 32
  %4059 = ashr exact i64 %4058, 32
  %4060 = icmp ne i64 %4059, %4055
  %4061 = zext i1 %4060 to i8
  store i8 %4061, i8* %70, align 1, !tbaa !2432
  %4062 = and i32 %4056, 255
  %4063 = tail call i32 @llvm.ctpop.i32(i32 %4062) #8
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  %4066 = xor i8 %4065, 1
  store i8 %4066, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4067 = lshr i32 %4056, 31
  %4068 = trunc i32 %4067 to i8
  store i8 %4068, i8* %87, align 1, !tbaa !2449
  store i8 %4061, i8* %93, align 1, !tbaa !2450
  %4069 = load i64, i64* %RBP, align 8
  %4070 = add i64 %4069, -40
  %4071 = add i64 %6614, 1692
  store i64 %4071, i64* %PC, align 8
  %4072 = inttoptr i64 %4070 to i64*
  %4073 = load i64, i64* %4072, align 8
  store i64 %4073, i64* %RCX, align 8, !tbaa !2428
  %4074 = add i64 %4073, 20
  %4075 = add i64 %6614, 1696
  store i64 %4075, i64* %PC, align 8
  %4076 = inttoptr i64 %4074 to i32*
  %4077 = load i32, i32* %4076, align 4
  %4078 = sext i32 %4077 to i64
  %4079 = mul nsw i64 %4078, %4059
  %4080 = and i64 %4079, 4294967295
  store i64 %4080, i64* %RSI, align 8, !tbaa !2428
  %4081 = trunc i64 %4079 to i32
  %4082 = zext i32 %4081 to i64
  store i64 %4082, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %4083 = and i32 %4081, 255
  %4084 = tail call i32 @llvm.ctpop.i32(i32 %4083) #8
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  store i8 %4087, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %4088 = icmp eq i32 %4081, 0
  %4089 = zext i1 %4088 to i8
  store i8 %4089, i8* %84, align 1, !tbaa !2448
  %4090 = lshr i32 %4081, 31
  %4091 = trunc i32 %4090 to i8
  store i8 %4091, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4092 = add i64 %4069, -56
  %4093 = add i64 %6614, 1701
  store i64 %4093, i64* %PC, align 8
  %4094 = inttoptr i64 %4092 to i32*
  %4095 = load i32, i32* %4094, align 4
  %4096 = zext i32 %4095 to i64
  store i64 %4096, i64* %RSI, align 8, !tbaa !2428
  %4097 = add i64 %6614, 1705
  store i64 %4097, i64* %PC, align 8
  %4098 = load i64, i64* %4072, align 8
  store i64 %4098, i64* %RCX, align 8, !tbaa !2428
  %4099 = add i64 %4098, 20
  %4100 = add i64 %6614, 1709
  store i64 %4100, i64* %PC, align 8
  %4101 = inttoptr i64 %4099 to i32*
  %4102 = load i32, i32* %4101, align 4
  %4103 = sext i32 %4095 to i64
  %4104 = sext i32 %4102 to i64
  %4105 = mul nsw i64 %4104, %4103
  %4106 = and i64 %4105, 4294967295
  store i64 %4106, i64* %RSI, align 8, !tbaa !2428
  %4107 = trunc i64 %4105 to i32
  %4108 = add i32 %4107, %4081
  %4109 = zext i32 %4108 to i64
  store i64 %4109, i64* %RDX, align 8, !tbaa !2428
  %4110 = icmp ult i32 %4108, %4081
  %4111 = icmp ult i32 %4108, %4107
  %4112 = or i1 %4110, %4111
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %70, align 1, !tbaa !2432
  %4114 = and i32 %4108, 255
  %4115 = tail call i32 @llvm.ctpop.i32(i32 %4114) #8
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  %4118 = xor i8 %4117, 1
  store i8 %4118, i8* %76, align 1, !tbaa !2446
  %4119 = xor i64 %4105, %4082
  %4120 = trunc i64 %4119 to i32
  %4121 = xor i32 %4120, %4108
  %4122 = lshr i32 %4121, 4
  %4123 = trunc i32 %4122 to i8
  %4124 = and i8 %4123, 1
  store i8 %4124, i8* %81, align 1, !tbaa !2447
  %4125 = icmp eq i32 %4108, 0
  %4126 = zext i1 %4125 to i8
  store i8 %4126, i8* %84, align 1, !tbaa !2448
  %4127 = lshr i32 %4108, 31
  %4128 = trunc i32 %4127 to i8
  store i8 %4128, i8* %87, align 1, !tbaa !2449
  %4129 = lshr i32 %4107, 31
  %4130 = xor i32 %4127, %4090
  %4131 = xor i32 %4127, %4129
  %4132 = add nuw nsw i32 %4130, %4131
  %4133 = icmp eq i32 %4132, 2
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %93, align 1, !tbaa !2450
  %4135 = add i64 %4069, -60
  %4136 = add i64 %6614, 1714
  store i64 %4136, i64* %PC, align 8
  %4137 = inttoptr i64 %4135 to i32*
  %4138 = load i32, i32* %4137, align 4
  %4139 = add i32 %4138, -1
  %4140 = zext i32 %4139 to i64
  store i64 %4140, i64* %RSI, align 8, !tbaa !2428
  %4141 = lshr i32 %4139, 31
  %4142 = add i32 %4139, %4108
  %4143 = zext i32 %4142 to i64
  store i64 %4143, i64* %RDX, align 8, !tbaa !2428
  %4144 = icmp ult i32 %4142, %4108
  %4145 = icmp ult i32 %4142, %4139
  %4146 = or i1 %4144, %4145
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %70, align 1, !tbaa !2432
  %4148 = and i32 %4142, 255
  %4149 = tail call i32 @llvm.ctpop.i32(i32 %4148) #8
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = xor i8 %4151, 1
  store i8 %4152, i8* %76, align 1, !tbaa !2446
  %4153 = xor i32 %4139, %4108
  %4154 = xor i32 %4153, %4142
  %4155 = lshr i32 %4154, 4
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  store i8 %4157, i8* %81, align 1, !tbaa !2447
  %4158 = icmp eq i32 %4142, 0
  %4159 = zext i1 %4158 to i8
  store i8 %4159, i8* %84, align 1, !tbaa !2448
  %4160 = lshr i32 %4142, 31
  %4161 = trunc i32 %4160 to i8
  store i8 %4161, i8* %87, align 1, !tbaa !2449
  %4162 = xor i32 %4160, %4127
  %4163 = xor i32 %4160, %4141
  %4164 = add nuw nsw i32 %4162, %4163
  %4165 = icmp eq i32 %4164, 2
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %93, align 1, !tbaa !2450
  %4167 = sext i32 %4142 to i64
  store i64 %4167, i64* %RCX, align 8, !tbaa !2428
  %4168 = load i64, i64* %RAX, align 8
  %4169 = shl nsw i64 %4167, 2
  %4170 = add i64 %4169, %4168
  %4171 = add i64 %6614, 1727
  store i64 %4171, i64* %PC, align 8
  %4172 = load <2 x float>, <2 x float>* %219, align 1
  %4173 = load <2 x i32>, <2 x i32>* %220, align 1
  %4174 = inttoptr i64 %4170 to float*
  %4175 = load float, float* %4174, align 4
  %4176 = extractelement <2 x float> %4172, i32 0
  %4177 = fadd float %4176, %4175
  store float %4177, float* %212, align 1, !tbaa !2451
  %4178 = bitcast <2 x float> %4172 to <2 x i32>
  %4179 = extractelement <2 x i32> %4178, i32 1
  store i32 %4179, i32* %221, align 1, !tbaa !2451
  %4180 = extractelement <2 x i32> %4173, i32 0
  store i32 %4180, i32* %222, align 1, !tbaa !2451
  %4181 = extractelement <2 x i32> %4173, i32 1
  store i32 %4181, i32* %223, align 1, !tbaa !2451
  %4182 = load <2 x float>, <2 x float>* %206, align 1
  %4183 = load <2 x i32>, <2 x i32>* %207, align 1
  %4184 = load <2 x float>, <2 x float>* %219, align 1
  %4185 = extractelement <2 x float> %4182, i32 0
  %4186 = extractelement <2 x float> %4184, i32 0
  %4187 = fmul float %4185, %4186
  store float %4187, float* %199, align 1, !tbaa !2451
  %4188 = bitcast <2 x float> %4182 to <2 x i32>
  %4189 = extractelement <2 x i32> %4188, i32 1
  store i32 %4189, i32* %208, align 1, !tbaa !2451
  %4190 = extractelement <2 x i32> %4183, i32 0
  store i32 %4190, i32* %209, align 1, !tbaa !2451
  %4191 = extractelement <2 x i32> %4183, i32 1
  store i32 %4191, i32* %210, align 1, !tbaa !2451
  %4192 = load <2 x float>, <2 x float>* %192, align 1
  %4193 = load <2 x i32>, <2 x i32>* %197, align 1
  %4194 = load <2 x float>, <2 x float>* %206, align 1
  %4195 = extractelement <2 x float> %4192, i32 0
  %4196 = extractelement <2 x float> %4194, i32 0
  %4197 = fadd float %4195, %4196
  store float %4197, float* %193, align 1, !tbaa !2451
  %4198 = bitcast <2 x float> %4192 to <2 x i32>
  %4199 = extractelement <2 x i32> %4198, i32 1
  store i32 %4199, i32* %188, align 1, !tbaa !2451
  %4200 = extractelement <2 x i32> %4193, i32 0
  store i32 %4200, i32* %189, align 1, !tbaa !2451
  %4201 = extractelement <2 x i32> %4193, i32 1
  store i32 %4201, i32* %191, align 1, !tbaa !2451
  %4202 = load i64, i64* %RBP, align 8
  %4203 = add i64 %4202, -32
  %4204 = add i64 %6614, 1739
  store i64 %4204, i64* %PC, align 8
  %4205 = inttoptr i64 %4203 to i64*
  %4206 = load i64, i64* %4205, align 8
  store i64 %4206, i64* %RAX, align 8, !tbaa !2428
  %4207 = add i64 %6614, 1742
  store i64 %4207, i64* %PC, align 8
  %4208 = inttoptr i64 %4206 to i64*
  %4209 = load i64, i64* %4208, align 8
  store i64 %4209, i64* %RAX, align 8, !tbaa !2428
  %4210 = add i64 %6614, 1746
  store i64 %4210, i64* %PC, align 8
  %4211 = load i64, i64* %4205, align 8
  store i64 %4211, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4212 = add i64 %6614, 1754
  store i64 %4212, i64* %PC, align 8
  %4213 = load i64, i64* %4205, align 8
  store i64 %4213, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4214 = add i64 %6614, 1762
  store i64 %4214, i64* %PC, align 8
  %4215 = load i64, i64* %4205, align 8
  store i64 %4215, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4216 = add i64 %4202, -52
  %4217 = add i64 %6614, 1769
  store i64 %4217, i64* %PC, align 8
  %4218 = inttoptr i64 %4216 to i32*
  %4219 = load i32, i32* %4218, align 4
  %4220 = zext i32 %4219 to i64
  store i64 %4220, i64* %RSI, align 8, !tbaa !2428
  %4221 = add i64 %6614, 1773
  store i64 %4221, i64* %PC, align 8
  %4222 = load i64, i64* %4205, align 8
  store i64 %4222, i64* %RCX, align 8, !tbaa !2428
  %4223 = add i64 %4222, 16
  %4224 = add i64 %6614, 1777
  store i64 %4224, i64* %PC, align 8
  %4225 = inttoptr i64 %4223 to i32*
  %4226 = load i32, i32* %4225, align 4
  %4227 = sext i32 %4219 to i64
  %4228 = sext i32 %4226 to i64
  %4229 = mul nsw i64 %4228, %4227
  %4230 = trunc i64 %4229 to i32
  %4231 = and i64 %4229, 4294967295
  store i64 %4231, i64* %RSI, align 8, !tbaa !2428
  %4232 = shl i64 %4229, 32
  %4233 = ashr exact i64 %4232, 32
  %4234 = icmp ne i64 %4233, %4229
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %70, align 1, !tbaa !2432
  %4236 = and i32 %4230, 255
  %4237 = tail call i32 @llvm.ctpop.i32(i32 %4236) #8
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = xor i8 %4239, 1
  store i8 %4240, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4241 = lshr i32 %4230, 31
  %4242 = trunc i32 %4241 to i8
  store i8 %4242, i8* %87, align 1, !tbaa !2449
  store i8 %4235, i8* %93, align 1, !tbaa !2450
  %4243 = add i64 %6614, 1781
  store i64 %4243, i64* %PC, align 8
  %4244 = load i64, i64* %4205, align 8
  store i64 %4244, i64* %RCX, align 8, !tbaa !2428
  %4245 = add i64 %4244, 20
  %4246 = add i64 %6614, 1785
  store i64 %4246, i64* %PC, align 8
  %4247 = inttoptr i64 %4245 to i32*
  %4248 = load i32, i32* %4247, align 4
  %4249 = sext i32 %4248 to i64
  %4250 = mul nsw i64 %4249, %4233
  %4251 = and i64 %4250, 4294967295
  store i64 %4251, i64* %RSI, align 8, !tbaa !2428
  %4252 = trunc i64 %4250 to i32
  store i64 %4251, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %4253 = and i32 %4252, 255
  %4254 = tail call i32 @llvm.ctpop.i32(i32 %4253) #8
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  store i8 %4257, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %4258 = icmp eq i32 %4252, 0
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %84, align 1, !tbaa !2448
  %4260 = lshr i32 %4252, 31
  %4261 = trunc i32 %4260 to i8
  store i8 %4261, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4262 = load i64, i64* %RBP, align 8
  %4263 = add i64 %4262, -56
  %4264 = add i64 %6614, 1790
  store i64 %4264, i64* %PC, align 8
  %4265 = inttoptr i64 %4263 to i32*
  %4266 = load i32, i32* %4265, align 4
  %4267 = zext i32 %4266 to i64
  store i64 %4267, i64* %RSI, align 8, !tbaa !2428
  %4268 = add i64 %4262, -32
  %4269 = add i64 %6614, 1794
  store i64 %4269, i64* %PC, align 8
  %4270 = inttoptr i64 %4268 to i64*
  %4271 = load i64, i64* %4270, align 8
  store i64 %4271, i64* %RCX, align 8, !tbaa !2428
  %4272 = add i64 %4271, 20
  %4273 = add i64 %6614, 1798
  store i64 %4273, i64* %PC, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = sext i32 %4266 to i64
  %4277 = sext i32 %4275 to i64
  %4278 = mul nsw i64 %4277, %4276
  %4279 = and i64 %4278, 4294967295
  store i64 %4279, i64* %RSI, align 8, !tbaa !2428
  %4280 = trunc i64 %4278 to i32
  %4281 = add i32 %4280, %4252
  %4282 = zext i32 %4281 to i64
  store i64 %4282, i64* %RDX, align 8, !tbaa !2428
  %4283 = icmp ult i32 %4281, %4252
  %4284 = icmp ult i32 %4281, %4280
  %4285 = or i1 %4283, %4284
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %70, align 1, !tbaa !2432
  %4287 = and i32 %4281, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287) #8
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %76, align 1, !tbaa !2446
  %4292 = xor i64 %4278, %4250
  %4293 = trunc i64 %4292 to i32
  %4294 = xor i32 %4293, %4281
  %4295 = lshr i32 %4294, 4
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  store i8 %4297, i8* %81, align 1, !tbaa !2447
  %4298 = icmp eq i32 %4281, 0
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %84, align 1, !tbaa !2448
  %4300 = lshr i32 %4281, 31
  %4301 = trunc i32 %4300 to i8
  store i8 %4301, i8* %87, align 1, !tbaa !2449
  %4302 = lshr i32 %4280, 31
  %4303 = xor i32 %4300, %4260
  %4304 = xor i32 %4300, %4302
  %4305 = add nuw nsw i32 %4303, %4304
  %4306 = icmp eq i32 %4305, 2
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %93, align 1, !tbaa !2450
  %4308 = add i64 %4262, -60
  %4309 = add i64 %6614, 1803
  store i64 %4309, i64* %PC, align 8
  %4310 = inttoptr i64 %4308 to i32*
  %4311 = load i32, i32* %4310, align 4
  %4312 = add i32 %4311, %4281
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RDX, align 8, !tbaa !2428
  %4314 = icmp ult i32 %4312, %4281
  %4315 = icmp ult i32 %4312, %4311
  %4316 = or i1 %4314, %4315
  %4317 = zext i1 %4316 to i8
  store i8 %4317, i8* %70, align 1, !tbaa !2432
  %4318 = and i32 %4312, 255
  %4319 = tail call i32 @llvm.ctpop.i32(i32 %4318) #8
  %4320 = trunc i32 %4319 to i8
  %4321 = and i8 %4320, 1
  %4322 = xor i8 %4321, 1
  store i8 %4322, i8* %76, align 1, !tbaa !2446
  %4323 = xor i32 %4311, %4281
  %4324 = xor i32 %4323, %4312
  %4325 = lshr i32 %4324, 4
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  store i8 %4327, i8* %81, align 1, !tbaa !2447
  %4328 = icmp eq i32 %4312, 0
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %84, align 1, !tbaa !2448
  %4330 = lshr i32 %4312, 31
  %4331 = trunc i32 %4330 to i8
  store i8 %4331, i8* %87, align 1, !tbaa !2449
  %4332 = lshr i32 %4311, 31
  %4333 = xor i32 %4330, %4300
  %4334 = xor i32 %4330, %4332
  %4335 = add nuw nsw i32 %4333, %4334
  %4336 = icmp eq i32 %4335, 2
  %4337 = zext i1 %4336 to i8
  store i8 %4337, i8* %93, align 1, !tbaa !2450
  %4338 = sext i32 %4312 to i64
  store i64 %4338, i64* %RCX, align 8, !tbaa !2428
  %4339 = load i64, i64* %RAX, align 8
  %4340 = shl nsw i64 %4338, 2
  %4341 = add i64 %4340, %4339
  %4342 = add i64 %6614, 1811
  store i64 %4342, i64* %PC, align 8
  %4343 = inttoptr i64 %4341 to i32*
  %4344 = load i32, i32* %4343, align 4
  store i32 %4344, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %4345 = load i64, i64* %RBP, align 8
  %4346 = add i64 %4345, -40
  %4347 = add i64 %6614, 1815
  store i64 %4347, i64* %PC, align 8
  %4348 = inttoptr i64 %4346 to i64*
  %4349 = load i64, i64* %4348, align 8
  store i64 %4349, i64* %RAX, align 8, !tbaa !2428
  %4350 = add i64 %6614, 1818
  store i64 %4350, i64* %PC, align 8
  %4351 = inttoptr i64 %4349 to i64*
  %4352 = load i64, i64* %4351, align 8
  store i64 %4352, i64* %RAX, align 8, !tbaa !2428
  %4353 = add i64 %6614, 1822
  store i64 %4353, i64* %PC, align 8
  %4354 = load i64, i64* %4348, align 8
  store i64 %4354, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4355 = add i64 %6614, 1830
  store i64 %4355, i64* %PC, align 8
  %4356 = load i64, i64* %4348, align 8
  store i64 %4356, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4357 = add i64 %6614, 1838
  store i64 %4357, i64* %PC, align 8
  %4358 = load i64, i64* %4348, align 8
  store i64 %4358, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4359 = add i64 %4345, -52
  %4360 = add i64 %6614, 1845
  store i64 %4360, i64* %PC, align 8
  %4361 = inttoptr i64 %4359 to i32*
  %4362 = load i32, i32* %4361, align 4
  %4363 = add i32 %4362, -1
  %4364 = zext i32 %4363 to i64
  store i64 %4364, i64* %RSI, align 8, !tbaa !2428
  %4365 = icmp eq i32 %4362, 0
  %4366 = zext i1 %4365 to i8
  store i8 %4366, i8* %70, align 1, !tbaa !2432
  %4367 = and i32 %4363, 255
  %4368 = tail call i32 @llvm.ctpop.i32(i32 %4367) #8
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = xor i8 %4370, 1
  store i8 %4371, i8* %76, align 1, !tbaa !2446
  %4372 = xor i32 %4362, %4363
  %4373 = lshr i32 %4372, 4
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  store i8 %4375, i8* %81, align 1, !tbaa !2447
  %4376 = icmp eq i32 %4363, 0
  %4377 = zext i1 %4376 to i8
  store i8 %4377, i8* %84, align 1, !tbaa !2448
  %4378 = lshr i32 %4363, 31
  %4379 = trunc i32 %4378 to i8
  store i8 %4379, i8* %87, align 1, !tbaa !2449
  %4380 = lshr i32 %4362, 31
  %4381 = xor i32 %4378, %4380
  %4382 = add nuw nsw i32 %4381, %4380
  %4383 = icmp eq i32 %4382, 2
  %4384 = zext i1 %4383 to i8
  store i8 %4384, i8* %93, align 1, !tbaa !2450
  %4385 = add i64 %6614, 1852
  store i64 %4385, i64* %PC, align 8
  %4386 = load i64, i64* %4348, align 8
  store i64 %4386, i64* %RCX, align 8, !tbaa !2428
  %4387 = add i64 %4386, 16
  %4388 = add i64 %6614, 1856
  store i64 %4388, i64* %PC, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = sext i32 %4363 to i64
  %4392 = sext i32 %4390 to i64
  %4393 = mul nsw i64 %4392, %4391
  %4394 = trunc i64 %4393 to i32
  %4395 = and i64 %4393, 4294967295
  store i64 %4395, i64* %RSI, align 8, !tbaa !2428
  %4396 = shl i64 %4393, 32
  %4397 = ashr exact i64 %4396, 32
  %4398 = icmp ne i64 %4397, %4393
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %70, align 1, !tbaa !2432
  %4400 = and i32 %4394, 255
  %4401 = tail call i32 @llvm.ctpop.i32(i32 %4400) #8
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  store i8 %4404, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4405 = lshr i32 %4394, 31
  %4406 = trunc i32 %4405 to i8
  store i8 %4406, i8* %87, align 1, !tbaa !2449
  store i8 %4399, i8* %93, align 1, !tbaa !2450
  %4407 = load i64, i64* %RBP, align 8
  %4408 = add i64 %4407, -40
  %4409 = add i64 %6614, 1860
  store i64 %4409, i64* %PC, align 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410, align 8
  store i64 %4411, i64* %RCX, align 8, !tbaa !2428
  %4412 = add i64 %4411, 20
  %4413 = add i64 %6614, 1864
  store i64 %4413, i64* %PC, align 8
  %4414 = inttoptr i64 %4412 to i32*
  %4415 = load i32, i32* %4414, align 4
  %4416 = sext i32 %4415 to i64
  %4417 = mul nsw i64 %4416, %4397
  %4418 = and i64 %4417, 4294967295
  store i64 %4418, i64* %RSI, align 8, !tbaa !2428
  %4419 = trunc i64 %4417 to i32
  %4420 = zext i32 %4419 to i64
  store i64 %4420, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %4421 = and i32 %4419, 255
  %4422 = tail call i32 @llvm.ctpop.i32(i32 %4421) #8
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = xor i8 %4424, 1
  store i8 %4425, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %4426 = icmp eq i32 %4419, 0
  %4427 = zext i1 %4426 to i8
  store i8 %4427, i8* %84, align 1, !tbaa !2448
  %4428 = lshr i32 %4419, 31
  %4429 = trunc i32 %4428 to i8
  store i8 %4429, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4430 = add i64 %4407, -56
  %4431 = add i64 %6614, 1869
  store i64 %4431, i64* %PC, align 8
  %4432 = inttoptr i64 %4430 to i32*
  %4433 = load i32, i32* %4432, align 4
  %4434 = zext i32 %4433 to i64
  store i64 %4434, i64* %RSI, align 8, !tbaa !2428
  %4435 = add i64 %6614, 1873
  store i64 %4435, i64* %PC, align 8
  %4436 = load i64, i64* %4410, align 8
  store i64 %4436, i64* %RCX, align 8, !tbaa !2428
  %4437 = add i64 %4436, 20
  %4438 = add i64 %6614, 1877
  store i64 %4438, i64* %PC, align 8
  %4439 = inttoptr i64 %4437 to i32*
  %4440 = load i32, i32* %4439, align 4
  %4441 = sext i32 %4433 to i64
  %4442 = sext i32 %4440 to i64
  %4443 = mul nsw i64 %4442, %4441
  %4444 = and i64 %4443, 4294967295
  store i64 %4444, i64* %RSI, align 8, !tbaa !2428
  %4445 = trunc i64 %4443 to i32
  %4446 = add i32 %4445, %4419
  %4447 = zext i32 %4446 to i64
  store i64 %4447, i64* %RDX, align 8, !tbaa !2428
  %4448 = icmp ult i32 %4446, %4419
  %4449 = icmp ult i32 %4446, %4445
  %4450 = or i1 %4448, %4449
  %4451 = zext i1 %4450 to i8
  store i8 %4451, i8* %70, align 1, !tbaa !2432
  %4452 = and i32 %4446, 255
  %4453 = tail call i32 @llvm.ctpop.i32(i32 %4452) #8
  %4454 = trunc i32 %4453 to i8
  %4455 = and i8 %4454, 1
  %4456 = xor i8 %4455, 1
  store i8 %4456, i8* %76, align 1, !tbaa !2446
  %4457 = xor i64 %4443, %4420
  %4458 = trunc i64 %4457 to i32
  %4459 = xor i32 %4458, %4446
  %4460 = lshr i32 %4459, 4
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  store i8 %4462, i8* %81, align 1, !tbaa !2447
  %4463 = icmp eq i32 %4446, 0
  %4464 = zext i1 %4463 to i8
  store i8 %4464, i8* %84, align 1, !tbaa !2448
  %4465 = lshr i32 %4446, 31
  %4466 = trunc i32 %4465 to i8
  store i8 %4466, i8* %87, align 1, !tbaa !2449
  %4467 = lshr i32 %4445, 31
  %4468 = xor i32 %4465, %4428
  %4469 = xor i32 %4465, %4467
  %4470 = add nuw nsw i32 %4468, %4469
  %4471 = icmp eq i32 %4470, 2
  %4472 = zext i1 %4471 to i8
  store i8 %4472, i8* %93, align 1, !tbaa !2450
  %4473 = add i64 %4407, -60
  %4474 = add i64 %6614, 1882
  store i64 %4474, i64* %PC, align 8
  %4475 = inttoptr i64 %4473 to i32*
  %4476 = load i32, i32* %4475, align 4
  %4477 = add i32 %4476, %4446
  %4478 = zext i32 %4477 to i64
  store i64 %4478, i64* %RDX, align 8, !tbaa !2428
  %4479 = icmp ult i32 %4477, %4446
  %4480 = icmp ult i32 %4477, %4476
  %4481 = or i1 %4479, %4480
  %4482 = zext i1 %4481 to i8
  store i8 %4482, i8* %70, align 1, !tbaa !2432
  %4483 = and i32 %4477, 255
  %4484 = tail call i32 @llvm.ctpop.i32(i32 %4483) #8
  %4485 = trunc i32 %4484 to i8
  %4486 = and i8 %4485, 1
  %4487 = xor i8 %4486, 1
  store i8 %4487, i8* %76, align 1, !tbaa !2446
  %4488 = xor i32 %4476, %4446
  %4489 = xor i32 %4488, %4477
  %4490 = lshr i32 %4489, 4
  %4491 = trunc i32 %4490 to i8
  %4492 = and i8 %4491, 1
  store i8 %4492, i8* %81, align 1, !tbaa !2447
  %4493 = icmp eq i32 %4477, 0
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %84, align 1, !tbaa !2448
  %4495 = lshr i32 %4477, 31
  %4496 = trunc i32 %4495 to i8
  store i8 %4496, i8* %87, align 1, !tbaa !2449
  %4497 = lshr i32 %4476, 31
  %4498 = xor i32 %4495, %4465
  %4499 = xor i32 %4495, %4497
  %4500 = add nuw nsw i32 %4498, %4499
  %4501 = icmp eq i32 %4500, 2
  %4502 = zext i1 %4501 to i8
  store i8 %4502, i8* %93, align 1, !tbaa !2450
  %4503 = sext i32 %4477 to i64
  store i64 %4503, i64* %RCX, align 8, !tbaa !2428
  %4504 = load i64, i64* %RAX, align 8
  %4505 = shl nsw i64 %4503, 2
  %4506 = add i64 %4505, %4504
  %4507 = add i64 %6614, 1890
  store i64 %4507, i64* %PC, align 8
  %4508 = load <2 x float>, <2 x float>* %206, align 1
  %4509 = load <2 x i32>, <2 x i32>* %207, align 1
  %4510 = inttoptr i64 %4506 to float*
  %4511 = load float, float* %4510, align 4
  %4512 = extractelement <2 x float> %4508, i32 0
  %4513 = fmul float %4512, %4511
  store float %4513, float* %199, align 1, !tbaa !2451
  %4514 = bitcast <2 x float> %4508 to <2 x i32>
  %4515 = extractelement <2 x i32> %4514, i32 1
  store i32 %4515, i32* %208, align 1, !tbaa !2451
  %4516 = extractelement <2 x i32> %4509, i32 0
  store i32 %4516, i32* %209, align 1, !tbaa !2451
  %4517 = extractelement <2 x i32> %4509, i32 1
  store i32 %4517, i32* %210, align 1, !tbaa !2451
  %4518 = load <2 x float>, <2 x float>* %192, align 1
  %4519 = load <2 x i32>, <2 x i32>* %197, align 1
  %4520 = load <2 x float>, <2 x float>* %206, align 1
  %4521 = extractelement <2 x float> %4518, i32 0
  %4522 = extractelement <2 x float> %4520, i32 0
  %4523 = fadd float %4521, %4522
  store float %4523, float* %193, align 1, !tbaa !2451
  %4524 = bitcast <2 x float> %4518 to <2 x i32>
  %4525 = extractelement <2 x i32> %4524, i32 1
  store i32 %4525, i32* %188, align 1, !tbaa !2451
  %4526 = extractelement <2 x i32> %4519, i32 0
  store i32 %4526, i32* %189, align 1, !tbaa !2451
  %4527 = extractelement <2 x i32> %4519, i32 1
  store i32 %4527, i32* %191, align 1, !tbaa !2451
  %4528 = add i64 %4407, -32
  %4529 = add i64 %6614, 1898
  store i64 %4529, i64* %PC, align 8
  %4530 = inttoptr i64 %4528 to i64*
  %4531 = load i64, i64* %4530, align 8
  store i64 %4531, i64* %RAX, align 8, !tbaa !2428
  %4532 = add i64 %6614, 1901
  store i64 %4532, i64* %PC, align 8
  %4533 = inttoptr i64 %4531 to i64*
  %4534 = load i64, i64* %4533, align 8
  store i64 %4534, i64* %RAX, align 8, !tbaa !2428
  %4535 = add i64 %6614, 1905
  store i64 %4535, i64* %PC, align 8
  %4536 = load i64, i64* %4530, align 8
  store i64 %4536, i64* %RCX, align 8, !tbaa !2428
  %4537 = add i64 %4536, 12
  %4538 = add i64 %6614, 1908
  store i64 %4538, i64* %PC, align 8
  %4539 = inttoptr i64 %4537 to i32*
  %4540 = load i32, i32* %4539, align 4
  %4541 = zext i32 %4540 to i64
  store i64 %4541, i64* %RDX, align 8, !tbaa !2428
  %4542 = load i64, i64* %RBP, align 8
  %4543 = add i64 %4542, -32
  %4544 = add i64 %6614, 1915
  store i64 %4544, i64* %PC, align 8
  %4545 = inttoptr i64 %4543 to i64*
  %4546 = load i64, i64* %4545, align 8
  store i64 %4546, i64* %RCX, align 8, !tbaa !2428
  %4547 = add i64 %4546, 16
  %4548 = add i64 %6614, 1919
  store i64 %4548, i64* %PC, align 8
  %4549 = inttoptr i64 %4547 to i32*
  %4550 = load i32, i32* %4549, align 4
  %4551 = sext i32 %4540 to i64
  %4552 = sext i32 %4550 to i64
  %4553 = mul nsw i64 %4552, %4551
  %4554 = trunc i64 %4553 to i32
  %4555 = and i64 %4553, 4294967295
  store i64 %4555, i64* %RDX, align 8, !tbaa !2428
  %4556 = shl i64 %4553, 32
  %4557 = ashr exact i64 %4556, 32
  %4558 = icmp ne i64 %4557, %4553
  %4559 = zext i1 %4558 to i8
  store i8 %4559, i8* %70, align 1, !tbaa !2432
  %4560 = and i32 %4554, 255
  %4561 = tail call i32 @llvm.ctpop.i32(i32 %4560) #8
  %4562 = trunc i32 %4561 to i8
  %4563 = and i8 %4562, 1
  %4564 = xor i8 %4563, 1
  store i8 %4564, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4565 = lshr i32 %4554, 31
  %4566 = trunc i32 %4565 to i8
  store i8 %4566, i8* %87, align 1, !tbaa !2449
  store i8 %4559, i8* %93, align 1, !tbaa !2450
  %4567 = add i64 %6614, 1923
  store i64 %4567, i64* %PC, align 8
  %4568 = load i64, i64* %4545, align 8
  store i64 %4568, i64* %RCX, align 8, !tbaa !2428
  %4569 = add i64 %4568, 20
  %4570 = add i64 %6614, 1927
  store i64 %4570, i64* %PC, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  %4573 = sext i32 %4572 to i64
  %4574 = mul nsw i64 %4573, %4557
  %4575 = trunc i64 %4574 to i32
  %4576 = and i64 %4574, 4294967295
  store i64 %4576, i64* %RDX, align 8, !tbaa !2428
  %4577 = shl i64 %4574, 32
  %4578 = ashr exact i64 %4577, 32
  %4579 = icmp ne i64 %4578, %4574
  %4580 = zext i1 %4579 to i8
  store i8 %4580, i8* %70, align 1, !tbaa !2432
  %4581 = and i32 %4575, 255
  %4582 = tail call i32 @llvm.ctpop.i32(i32 %4581) #8
  %4583 = trunc i32 %4582 to i8
  %4584 = and i8 %4583, 1
  %4585 = xor i8 %4584, 1
  store i8 %4585, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4586 = lshr i32 %4575, 31
  %4587 = trunc i32 %4586 to i8
  store i8 %4587, i8* %87, align 1, !tbaa !2449
  store i8 %4580, i8* %93, align 1, !tbaa !2450
  %4588 = add i64 %4542, -52
  %4589 = add i64 %6614, 1930
  store i64 %4589, i64* %PC, align 8
  %4590 = inttoptr i64 %4588 to i32*
  %4591 = load i32, i32* %4590, align 4
  %4592 = zext i32 %4591 to i64
  store i64 %4592, i64* %RSI, align 8, !tbaa !2428
  %4593 = add i64 %6614, 1934
  store i64 %4593, i64* %PC, align 8
  %4594 = load i64, i64* %4545, align 8
  store i64 %4594, i64* %RCX, align 8, !tbaa !2428
  %4595 = add i64 %4594, 16
  %4596 = add i64 %6614, 1938
  store i64 %4596, i64* %PC, align 8
  %4597 = inttoptr i64 %4595 to i32*
  %4598 = load i32, i32* %4597, align 4
  %4599 = sext i32 %4591 to i64
  %4600 = sext i32 %4598 to i64
  %4601 = mul nsw i64 %4600, %4599
  %4602 = trunc i64 %4601 to i32
  %4603 = and i64 %4601, 4294967295
  store i64 %4603, i64* %RSI, align 8, !tbaa !2428
  %4604 = shl i64 %4601, 32
  %4605 = ashr exact i64 %4604, 32
  %4606 = icmp ne i64 %4605, %4601
  %4607 = zext i1 %4606 to i8
  store i8 %4607, i8* %70, align 1, !tbaa !2432
  %4608 = and i32 %4602, 255
  %4609 = tail call i32 @llvm.ctpop.i32(i32 %4608) #8
  %4610 = trunc i32 %4609 to i8
  %4611 = and i8 %4610, 1
  %4612 = xor i8 %4611, 1
  store i8 %4612, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4613 = lshr i32 %4602, 31
  %4614 = trunc i32 %4613 to i8
  store i8 %4614, i8* %87, align 1, !tbaa !2449
  store i8 %4607, i8* %93, align 1, !tbaa !2450
  %4615 = load i64, i64* %RBP, align 8
  %4616 = add i64 %4615, -32
  %4617 = add i64 %6614, 1942
  store i64 %4617, i64* %PC, align 8
  %4618 = inttoptr i64 %4616 to i64*
  %4619 = load i64, i64* %4618, align 8
  store i64 %4619, i64* %RCX, align 8, !tbaa !2428
  %4620 = add i64 %4619, 20
  %4621 = add i64 %6614, 1946
  store i64 %4621, i64* %PC, align 8
  %4622 = inttoptr i64 %4620 to i32*
  %4623 = load i32, i32* %4622, align 4
  %4624 = sext i32 %4623 to i64
  %4625 = mul nsw i64 %4624, %4605
  %4626 = and i64 %4625, 4294967295
  store i64 %4626, i64* %RSI, align 8, !tbaa !2428
  %4627 = trunc i64 %4625 to i32
  %4628 = add i32 %4627, %4575
  %4629 = zext i32 %4628 to i64
  store i64 %4629, i64* %RDX, align 8, !tbaa !2428
  %4630 = icmp ult i32 %4628, %4575
  %4631 = icmp ult i32 %4628, %4627
  %4632 = or i1 %4630, %4631
  %4633 = zext i1 %4632 to i8
  store i8 %4633, i8* %70, align 1, !tbaa !2432
  %4634 = and i32 %4628, 255
  %4635 = tail call i32 @llvm.ctpop.i32(i32 %4634) #8
  %4636 = trunc i32 %4635 to i8
  %4637 = and i8 %4636, 1
  %4638 = xor i8 %4637, 1
  store i8 %4638, i8* %76, align 1, !tbaa !2446
  %4639 = xor i64 %4625, %4574
  %4640 = trunc i64 %4639 to i32
  %4641 = xor i32 %4640, %4628
  %4642 = lshr i32 %4641, 4
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  store i8 %4644, i8* %81, align 1, !tbaa !2447
  %4645 = icmp eq i32 %4628, 0
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %84, align 1, !tbaa !2448
  %4647 = lshr i32 %4628, 31
  %4648 = trunc i32 %4647 to i8
  store i8 %4648, i8* %87, align 1, !tbaa !2449
  %4649 = lshr i32 %4627, 31
  %4650 = xor i32 %4647, %4586
  %4651 = xor i32 %4647, %4649
  %4652 = add nuw nsw i32 %4650, %4651
  %4653 = icmp eq i32 %4652, 2
  %4654 = zext i1 %4653 to i8
  store i8 %4654, i8* %93, align 1, !tbaa !2450
  %4655 = add i64 %4615, -56
  %4656 = add i64 %6614, 1951
  store i64 %4656, i64* %PC, align 8
  %4657 = inttoptr i64 %4655 to i32*
  %4658 = load i32, i32* %4657, align 4
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RSI, align 8, !tbaa !2428
  %4660 = add i64 %6614, 1955
  store i64 %4660, i64* %PC, align 8
  %4661 = load i64, i64* %4618, align 8
  store i64 %4661, i64* %RCX, align 8, !tbaa !2428
  %4662 = add i64 %4661, 20
  %4663 = add i64 %6614, 1959
  store i64 %4663, i64* %PC, align 8
  %4664 = inttoptr i64 %4662 to i32*
  %4665 = load i32, i32* %4664, align 4
  %4666 = sext i32 %4658 to i64
  %4667 = sext i32 %4665 to i64
  %4668 = mul nsw i64 %4667, %4666
  %4669 = and i64 %4668, 4294967295
  store i64 %4669, i64* %RSI, align 8, !tbaa !2428
  %4670 = trunc i64 %4668 to i32
  %4671 = add i32 %4670, %4628
  %4672 = zext i32 %4671 to i64
  store i64 %4672, i64* %RDX, align 8, !tbaa !2428
  %4673 = icmp ult i32 %4671, %4628
  %4674 = icmp ult i32 %4671, %4670
  %4675 = or i1 %4673, %4674
  %4676 = zext i1 %4675 to i8
  store i8 %4676, i8* %70, align 1, !tbaa !2432
  %4677 = and i32 %4671, 255
  %4678 = tail call i32 @llvm.ctpop.i32(i32 %4677) #8
  %4679 = trunc i32 %4678 to i8
  %4680 = and i8 %4679, 1
  %4681 = xor i8 %4680, 1
  store i8 %4681, i8* %76, align 1, !tbaa !2446
  %4682 = xor i64 %4668, %4629
  %4683 = trunc i64 %4682 to i32
  %4684 = xor i32 %4683, %4671
  %4685 = lshr i32 %4684, 4
  %4686 = trunc i32 %4685 to i8
  %4687 = and i8 %4686, 1
  store i8 %4687, i8* %81, align 1, !tbaa !2447
  %4688 = icmp eq i32 %4671, 0
  %4689 = zext i1 %4688 to i8
  store i8 %4689, i8* %84, align 1, !tbaa !2448
  %4690 = lshr i32 %4671, 31
  %4691 = trunc i32 %4690 to i8
  store i8 %4691, i8* %87, align 1, !tbaa !2449
  %4692 = lshr i32 %4670, 31
  %4693 = xor i32 %4690, %4647
  %4694 = xor i32 %4690, %4692
  %4695 = add nuw nsw i32 %4693, %4694
  %4696 = icmp eq i32 %4695, 2
  %4697 = zext i1 %4696 to i8
  store i8 %4697, i8* %93, align 1, !tbaa !2450
  %4698 = load i64, i64* %RBP, align 8
  %4699 = add i64 %4698, -60
  %4700 = add i64 %6614, 1964
  store i64 %4700, i64* %PC, align 8
  %4701 = inttoptr i64 %4699 to i32*
  %4702 = load i32, i32* %4701, align 4
  %4703 = add i32 %4702, %4671
  %4704 = zext i32 %4703 to i64
  store i64 %4704, i64* %RDX, align 8, !tbaa !2428
  %4705 = icmp ult i32 %4703, %4671
  %4706 = icmp ult i32 %4703, %4702
  %4707 = or i1 %4705, %4706
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %70, align 1, !tbaa !2432
  %4709 = and i32 %4703, 255
  %4710 = tail call i32 @llvm.ctpop.i32(i32 %4709) #8
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = xor i8 %4712, 1
  store i8 %4713, i8* %76, align 1, !tbaa !2446
  %4714 = xor i32 %4702, %4671
  %4715 = xor i32 %4714, %4703
  %4716 = lshr i32 %4715, 4
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  store i8 %4718, i8* %81, align 1, !tbaa !2447
  %4719 = icmp eq i32 %4703, 0
  %4720 = zext i1 %4719 to i8
  store i8 %4720, i8* %84, align 1, !tbaa !2448
  %4721 = lshr i32 %4703, 31
  %4722 = trunc i32 %4721 to i8
  store i8 %4722, i8* %87, align 1, !tbaa !2449
  %4723 = lshr i32 %4702, 31
  %4724 = xor i32 %4721, %4690
  %4725 = xor i32 %4721, %4723
  %4726 = add nuw nsw i32 %4724, %4725
  %4727 = icmp eq i32 %4726, 2
  %4728 = zext i1 %4727 to i8
  store i8 %4728, i8* %93, align 1, !tbaa !2450
  %4729 = sext i32 %4703 to i64
  store i64 %4729, i64* %RCX, align 8, !tbaa !2428
  %4730 = load i64, i64* %RAX, align 8
  %4731 = shl nsw i64 %4729, 2
  %4732 = add i64 %4731, %4730
  %4733 = add i64 %6614, 1972
  store i64 %4733, i64* %PC, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  store i32 %4735, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %4736 = add i64 %4698, -40
  %4737 = add i64 %6614, 1976
  store i64 %4737, i64* %PC, align 8
  %4738 = inttoptr i64 %4736 to i64*
  %4739 = load i64, i64* %4738, align 8
  store i64 %4739, i64* %RAX, align 8, !tbaa !2428
  %4740 = add i64 %6614, 1979
  store i64 %4740, i64* %PC, align 8
  %4741 = inttoptr i64 %4739 to i64*
  %4742 = load i64, i64* %4741, align 8
  store i64 %4742, i64* %RAX, align 8, !tbaa !2428
  %4743 = add i64 %6614, 1983
  store i64 %4743, i64* %PC, align 8
  %4744 = load i64, i64* %4738, align 8
  store i64 %4744, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4745 = add i64 %6614, 1991
  store i64 %4745, i64* %PC, align 8
  %4746 = load i64, i64* %4738, align 8
  store i64 %4746, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4747 = add i64 %6614, 1999
  store i64 %4747, i64* %PC, align 8
  %4748 = load i64, i64* %4738, align 8
  store i64 %4748, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4749 = load i64, i64* %RBP, align 8
  %4750 = add i64 %4749, -52
  %4751 = add i64 %6614, 2006
  store i64 %4751, i64* %PC, align 8
  %4752 = inttoptr i64 %4750 to i32*
  %4753 = load i32, i32* %4752, align 4
  %4754 = zext i32 %4753 to i64
  store i64 %4754, i64* %RSI, align 8, !tbaa !2428
  %4755 = add i64 %4749, -40
  %4756 = add i64 %6614, 2010
  store i64 %4756, i64* %PC, align 8
  %4757 = inttoptr i64 %4755 to i64*
  %4758 = load i64, i64* %4757, align 8
  store i64 %4758, i64* %RCX, align 8, !tbaa !2428
  %4759 = add i64 %4758, 16
  %4760 = add i64 %6614, 2014
  store i64 %4760, i64* %PC, align 8
  %4761 = inttoptr i64 %4759 to i32*
  %4762 = load i32, i32* %4761, align 4
  %4763 = sext i32 %4753 to i64
  %4764 = sext i32 %4762 to i64
  %4765 = mul nsw i64 %4764, %4763
  %4766 = trunc i64 %4765 to i32
  %4767 = and i64 %4765, 4294967295
  store i64 %4767, i64* %RSI, align 8, !tbaa !2428
  %4768 = shl i64 %4765, 32
  %4769 = ashr exact i64 %4768, 32
  %4770 = icmp ne i64 %4769, %4765
  %4771 = zext i1 %4770 to i8
  store i8 %4771, i8* %70, align 1, !tbaa !2432
  %4772 = and i32 %4766, 255
  %4773 = tail call i32 @llvm.ctpop.i32(i32 %4772) #8
  %4774 = trunc i32 %4773 to i8
  %4775 = and i8 %4774, 1
  %4776 = xor i8 %4775, 1
  store i8 %4776, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4777 = lshr i32 %4766, 31
  %4778 = trunc i32 %4777 to i8
  store i8 %4778, i8* %87, align 1, !tbaa !2449
  store i8 %4771, i8* %93, align 1, !tbaa !2450
  %4779 = add i64 %6614, 2018
  store i64 %4779, i64* %PC, align 8
  %4780 = load i64, i64* %4757, align 8
  store i64 %4780, i64* %RCX, align 8, !tbaa !2428
  %4781 = add i64 %4780, 20
  %4782 = add i64 %6614, 2022
  store i64 %4782, i64* %PC, align 8
  %4783 = inttoptr i64 %4781 to i32*
  %4784 = load i32, i32* %4783, align 4
  %4785 = sext i32 %4784 to i64
  %4786 = mul nsw i64 %4785, %4769
  %4787 = and i64 %4786, 4294967295
  store i64 %4787, i64* %RSI, align 8, !tbaa !2428
  %4788 = trunc i64 %4786 to i32
  store i64 %4787, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %4789 = and i32 %4788, 255
  %4790 = tail call i32 @llvm.ctpop.i32(i32 %4789) #8
  %4791 = trunc i32 %4790 to i8
  %4792 = and i8 %4791, 1
  %4793 = xor i8 %4792, 1
  store i8 %4793, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %4794 = icmp eq i32 %4788, 0
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %84, align 1, !tbaa !2448
  %4796 = lshr i32 %4788, 31
  %4797 = trunc i32 %4796 to i8
  store i8 %4797, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4798 = add i64 %4749, -56
  %4799 = add i64 %6614, 2027
  store i64 %4799, i64* %PC, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = add i32 %4801, -1
  %4803 = zext i32 %4802 to i64
  store i64 %4803, i64* %RSI, align 8, !tbaa !2428
  %4804 = icmp eq i32 %4801, 0
  %4805 = zext i1 %4804 to i8
  store i8 %4805, i8* %70, align 1, !tbaa !2432
  %4806 = and i32 %4802, 255
  %4807 = tail call i32 @llvm.ctpop.i32(i32 %4806) #8
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  %4810 = xor i8 %4809, 1
  store i8 %4810, i8* %76, align 1, !tbaa !2446
  %4811 = xor i32 %4801, %4802
  %4812 = lshr i32 %4811, 4
  %4813 = trunc i32 %4812 to i8
  %4814 = and i8 %4813, 1
  store i8 %4814, i8* %81, align 1, !tbaa !2447
  %4815 = icmp eq i32 %4802, 0
  %4816 = zext i1 %4815 to i8
  store i8 %4816, i8* %84, align 1, !tbaa !2448
  %4817 = lshr i32 %4802, 31
  %4818 = trunc i32 %4817 to i8
  store i8 %4818, i8* %87, align 1, !tbaa !2449
  %4819 = lshr i32 %4801, 31
  %4820 = xor i32 %4817, %4819
  %4821 = add nuw nsw i32 %4820, %4819
  %4822 = icmp eq i32 %4821, 2
  %4823 = zext i1 %4822 to i8
  store i8 %4823, i8* %93, align 1, !tbaa !2450
  %4824 = load i64, i64* %RBP, align 8
  %4825 = add i64 %4824, -40
  %4826 = add i64 %6614, 2034
  store i64 %4826, i64* %PC, align 8
  %4827 = inttoptr i64 %4825 to i64*
  %4828 = load i64, i64* %4827, align 8
  store i64 %4828, i64* %RCX, align 8, !tbaa !2428
  %4829 = add i64 %4828, 20
  %4830 = add i64 %6614, 2038
  store i64 %4830, i64* %PC, align 8
  %4831 = inttoptr i64 %4829 to i32*
  %4832 = load i32, i32* %4831, align 4
  %4833 = sext i32 %4802 to i64
  %4834 = sext i32 %4832 to i64
  %4835 = mul nsw i64 %4834, %4833
  %4836 = and i64 %4835, 4294967295
  store i64 %4836, i64* %RSI, align 8, !tbaa !2428
  %4837 = trunc i64 %4835 to i32
  %4838 = add i32 %4837, %4788
  %4839 = zext i32 %4838 to i64
  store i64 %4839, i64* %RDX, align 8, !tbaa !2428
  %4840 = icmp ult i32 %4838, %4788
  %4841 = icmp ult i32 %4838, %4837
  %4842 = or i1 %4840, %4841
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %70, align 1, !tbaa !2432
  %4844 = and i32 %4838, 255
  %4845 = tail call i32 @llvm.ctpop.i32(i32 %4844) #8
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  store i8 %4848, i8* %76, align 1, !tbaa !2446
  %4849 = xor i64 %4835, %4786
  %4850 = trunc i64 %4849 to i32
  %4851 = xor i32 %4850, %4838
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  store i8 %4854, i8* %81, align 1, !tbaa !2447
  %4855 = icmp eq i32 %4838, 0
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %84, align 1, !tbaa !2448
  %4857 = lshr i32 %4838, 31
  %4858 = trunc i32 %4857 to i8
  store i8 %4858, i8* %87, align 1, !tbaa !2449
  %4859 = lshr i32 %4837, 31
  %4860 = xor i32 %4857, %4796
  %4861 = xor i32 %4857, %4859
  %4862 = add nuw nsw i32 %4860, %4861
  %4863 = icmp eq i32 %4862, 2
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %93, align 1, !tbaa !2450
  %4865 = add i64 %4824, -60
  %4866 = add i64 %6614, 2043
  store i64 %4866, i64* %PC, align 8
  %4867 = inttoptr i64 %4865 to i32*
  %4868 = load i32, i32* %4867, align 4
  %4869 = add i32 %4868, %4838
  %4870 = zext i32 %4869 to i64
  store i64 %4870, i64* %RDX, align 8, !tbaa !2428
  %4871 = icmp ult i32 %4869, %4838
  %4872 = icmp ult i32 %4869, %4868
  %4873 = or i1 %4871, %4872
  %4874 = zext i1 %4873 to i8
  store i8 %4874, i8* %70, align 1, !tbaa !2432
  %4875 = and i32 %4869, 255
  %4876 = tail call i32 @llvm.ctpop.i32(i32 %4875) #8
  %4877 = trunc i32 %4876 to i8
  %4878 = and i8 %4877, 1
  %4879 = xor i8 %4878, 1
  store i8 %4879, i8* %76, align 1, !tbaa !2446
  %4880 = xor i32 %4868, %4838
  %4881 = xor i32 %4880, %4869
  %4882 = lshr i32 %4881, 4
  %4883 = trunc i32 %4882 to i8
  %4884 = and i8 %4883, 1
  store i8 %4884, i8* %81, align 1, !tbaa !2447
  %4885 = icmp eq i32 %4869, 0
  %4886 = zext i1 %4885 to i8
  store i8 %4886, i8* %84, align 1, !tbaa !2448
  %4887 = lshr i32 %4869, 31
  %4888 = trunc i32 %4887 to i8
  store i8 %4888, i8* %87, align 1, !tbaa !2449
  %4889 = lshr i32 %4868, 31
  %4890 = xor i32 %4887, %4857
  %4891 = xor i32 %4887, %4889
  %4892 = add nuw nsw i32 %4890, %4891
  %4893 = icmp eq i32 %4892, 2
  %4894 = zext i1 %4893 to i8
  store i8 %4894, i8* %93, align 1, !tbaa !2450
  %4895 = sext i32 %4869 to i64
  store i64 %4895, i64* %RCX, align 8, !tbaa !2428
  %4896 = load i64, i64* %RAX, align 8
  %4897 = shl nsw i64 %4895, 2
  %4898 = add i64 %4897, %4896
  %4899 = add i64 %6614, 2051
  store i64 %4899, i64* %PC, align 8
  %4900 = load <2 x float>, <2 x float>* %206, align 1
  %4901 = load <2 x i32>, <2 x i32>* %207, align 1
  %4902 = inttoptr i64 %4898 to float*
  %4903 = load float, float* %4902, align 4
  %4904 = extractelement <2 x float> %4900, i32 0
  %4905 = fmul float %4904, %4903
  store float %4905, float* %199, align 1, !tbaa !2451
  %4906 = bitcast <2 x float> %4900 to <2 x i32>
  %4907 = extractelement <2 x i32> %4906, i32 1
  store i32 %4907, i32* %208, align 1, !tbaa !2451
  %4908 = extractelement <2 x i32> %4901, i32 0
  store i32 %4908, i32* %209, align 1, !tbaa !2451
  %4909 = extractelement <2 x i32> %4901, i32 1
  store i32 %4909, i32* %210, align 1, !tbaa !2451
  %4910 = load <2 x float>, <2 x float>* %192, align 1
  %4911 = load <2 x i32>, <2 x i32>* %197, align 1
  %4912 = load <2 x float>, <2 x float>* %206, align 1
  %4913 = extractelement <2 x float> %4910, i32 0
  %4914 = extractelement <2 x float> %4912, i32 0
  %4915 = fadd float %4913, %4914
  store float %4915, float* %193, align 1, !tbaa !2451
  %4916 = bitcast <2 x float> %4910 to <2 x i32>
  %4917 = extractelement <2 x i32> %4916, i32 1
  store i32 %4917, i32* %188, align 1, !tbaa !2451
  %4918 = extractelement <2 x i32> %4911, i32 0
  store i32 %4918, i32* %189, align 1, !tbaa !2451
  %4919 = extractelement <2 x i32> %4911, i32 1
  store i32 %4919, i32* %191, align 1, !tbaa !2451
  %4920 = load i64, i64* %RBP, align 8
  %4921 = add i64 %4920, -32
  %4922 = add i64 %6614, 2059
  store i64 %4922, i64* %PC, align 8
  %4923 = inttoptr i64 %4921 to i64*
  %4924 = load i64, i64* %4923, align 8
  store i64 %4924, i64* %RAX, align 8, !tbaa !2428
  %4925 = add i64 %6614, 2062
  store i64 %4925, i64* %PC, align 8
  %4926 = inttoptr i64 %4924 to i64*
  %4927 = load i64, i64* %4926, align 8
  store i64 %4927, i64* %RAX, align 8, !tbaa !2428
  %4928 = add i64 %6614, 2066
  store i64 %4928, i64* %PC, align 8
  %4929 = load i64, i64* %4923, align 8
  store i64 %4929, i64* %RCX, align 8, !tbaa !2428
  %4930 = add i64 %4929, 12
  %4931 = add i64 %6614, 2069
  store i64 %4931, i64* %PC, align 8
  %4932 = inttoptr i64 %4930 to i32*
  %4933 = load i32, i32* %4932, align 4
  %4934 = shl i32 %4933, 1
  %4935 = icmp slt i32 %4933, 0
  %4936 = icmp slt i32 %4934, 0
  %4937 = xor i1 %4935, %4936
  %4938 = zext i32 %4934 to i64
  store i64 %4938, i64* %RDX, align 8, !tbaa !2428
  %.lobit12 = lshr i32 %4933, 31
  %4939 = trunc i32 %.lobit12 to i8
  store i8 %4939, i8* %70, align 1, !tbaa !2453
  %4940 = and i32 %4934, 254
  %4941 = tail call i32 @llvm.ctpop.i32(i32 %4940) #8
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  %4944 = xor i8 %4943, 1
  store i8 %4944, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %4945 = icmp eq i32 %4934, 0
  %4946 = zext i1 %4945 to i8
  store i8 %4946, i8* %84, align 1, !tbaa !2453
  %4947 = lshr i32 %4933, 30
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  store i8 %4949, i8* %87, align 1, !tbaa !2453
  %4950 = zext i1 %4937 to i8
  store i8 %4950, i8* %93, align 1, !tbaa !2453
  %4951 = add i64 %6614, 2076
  store i64 %4951, i64* %PC, align 8
  %4952 = load i64, i64* %4923, align 8
  store i64 %4952, i64* %RCX, align 8, !tbaa !2428
  %4953 = add i64 %4952, 16
  %4954 = add i64 %6614, 2080
  store i64 %4954, i64* %PC, align 8
  %4955 = inttoptr i64 %4953 to i32*
  %4956 = load i32, i32* %4955, align 4
  %4957 = sext i32 %4934 to i64
  %4958 = sext i32 %4956 to i64
  %4959 = mul nsw i64 %4958, %4957
  %4960 = trunc i64 %4959 to i32
  %4961 = and i64 %4959, 4294967294
  store i64 %4961, i64* %RDX, align 8, !tbaa !2428
  %4962 = shl i64 %4959, 32
  %4963 = ashr exact i64 %4962, 32
  %4964 = icmp ne i64 %4963, %4959
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %70, align 1, !tbaa !2432
  %4966 = and i32 %4960, 254
  %4967 = tail call i32 @llvm.ctpop.i32(i32 %4966) #8
  %4968 = trunc i32 %4967 to i8
  %4969 = and i8 %4968, 1
  %4970 = xor i8 %4969, 1
  store i8 %4970, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4971 = lshr i32 %4960, 31
  %4972 = trunc i32 %4971 to i8
  store i8 %4972, i8* %87, align 1, !tbaa !2449
  store i8 %4965, i8* %93, align 1, !tbaa !2450
  %4973 = add i64 %6614, 2084
  store i64 %4973, i64* %PC, align 8
  %4974 = load i64, i64* %4923, align 8
  store i64 %4974, i64* %RCX, align 8, !tbaa !2428
  %4975 = add i64 %4974, 20
  %4976 = add i64 %6614, 2088
  store i64 %4976, i64* %PC, align 8
  %4977 = inttoptr i64 %4975 to i32*
  %4978 = load i32, i32* %4977, align 4
  %4979 = sext i32 %4978 to i64
  %4980 = mul nsw i64 %4979, %4963
  %4981 = trunc i64 %4980 to i32
  %4982 = and i64 %4980, 4294967295
  store i64 %4982, i64* %RDX, align 8, !tbaa !2428
  %4983 = shl i64 %4980, 32
  %4984 = ashr exact i64 %4983, 32
  %4985 = icmp ne i64 %4984, %4980
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %70, align 1, !tbaa !2432
  %4987 = and i32 %4981, 255
  %4988 = tail call i32 @llvm.ctpop.i32(i32 %4987) #8
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = xor i8 %4990, 1
  store i8 %4991, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4992 = lshr i32 %4981, 31
  %4993 = trunc i32 %4992 to i8
  store i8 %4993, i8* %87, align 1, !tbaa !2449
  store i8 %4986, i8* %93, align 1, !tbaa !2450
  %4994 = load i64, i64* %RBP, align 8
  %4995 = add i64 %4994, -52
  %4996 = add i64 %6614, 2091
  store i64 %4996, i64* %PC, align 8
  %4997 = inttoptr i64 %4995 to i32*
  %4998 = load i32, i32* %4997, align 4
  %4999 = zext i32 %4998 to i64
  store i64 %4999, i64* %RSI, align 8, !tbaa !2428
  %5000 = add i64 %4994, -32
  %5001 = add i64 %6614, 2095
  store i64 %5001, i64* %PC, align 8
  %5002 = inttoptr i64 %5000 to i64*
  %5003 = load i64, i64* %5002, align 8
  store i64 %5003, i64* %RCX, align 8, !tbaa !2428
  %5004 = add i64 %5003, 16
  %5005 = add i64 %6614, 2099
  store i64 %5005, i64* %PC, align 8
  %5006 = inttoptr i64 %5004 to i32*
  %5007 = load i32, i32* %5006, align 4
  %5008 = sext i32 %4998 to i64
  %5009 = sext i32 %5007 to i64
  %5010 = mul nsw i64 %5009, %5008
  %5011 = trunc i64 %5010 to i32
  %5012 = and i64 %5010, 4294967295
  store i64 %5012, i64* %RSI, align 8, !tbaa !2428
  %5013 = shl i64 %5010, 32
  %5014 = ashr exact i64 %5013, 32
  %5015 = icmp ne i64 %5014, %5010
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %70, align 1, !tbaa !2432
  %5017 = and i32 %5011, 255
  %5018 = tail call i32 @llvm.ctpop.i32(i32 %5017) #8
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = xor i8 %5020, 1
  store i8 %5021, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5022 = lshr i32 %5011, 31
  %5023 = trunc i32 %5022 to i8
  store i8 %5023, i8* %87, align 1, !tbaa !2449
  store i8 %5016, i8* %93, align 1, !tbaa !2450
  %5024 = add i64 %6614, 2103
  store i64 %5024, i64* %PC, align 8
  %5025 = load i64, i64* %5002, align 8
  store i64 %5025, i64* %RCX, align 8, !tbaa !2428
  %5026 = add i64 %5025, 20
  %5027 = add i64 %6614, 2107
  store i64 %5027, i64* %PC, align 8
  %5028 = inttoptr i64 %5026 to i32*
  %5029 = load i32, i32* %5028, align 4
  %5030 = sext i32 %5029 to i64
  %5031 = mul nsw i64 %5030, %5014
  %5032 = and i64 %5031, 4294967295
  store i64 %5032, i64* %RSI, align 8, !tbaa !2428
  %5033 = trunc i64 %5031 to i32
  %5034 = add i32 %5033, %4981
  %5035 = zext i32 %5034 to i64
  store i64 %5035, i64* %RDX, align 8, !tbaa !2428
  %5036 = icmp ult i32 %5034, %4981
  %5037 = icmp ult i32 %5034, %5033
  %5038 = or i1 %5036, %5037
  %5039 = zext i1 %5038 to i8
  store i8 %5039, i8* %70, align 1, !tbaa !2432
  %5040 = and i32 %5034, 255
  %5041 = tail call i32 @llvm.ctpop.i32(i32 %5040) #8
  %5042 = trunc i32 %5041 to i8
  %5043 = and i8 %5042, 1
  %5044 = xor i8 %5043, 1
  store i8 %5044, i8* %76, align 1, !tbaa !2446
  %5045 = xor i64 %5031, %4980
  %5046 = trunc i64 %5045 to i32
  %5047 = xor i32 %5046, %5034
  %5048 = lshr i32 %5047, 4
  %5049 = trunc i32 %5048 to i8
  %5050 = and i8 %5049, 1
  store i8 %5050, i8* %81, align 1, !tbaa !2447
  %5051 = icmp eq i32 %5034, 0
  %5052 = zext i1 %5051 to i8
  store i8 %5052, i8* %84, align 1, !tbaa !2448
  %5053 = lshr i32 %5034, 31
  %5054 = trunc i32 %5053 to i8
  store i8 %5054, i8* %87, align 1, !tbaa !2449
  %5055 = lshr i32 %5033, 31
  %5056 = xor i32 %5053, %4992
  %5057 = xor i32 %5053, %5055
  %5058 = add nuw nsw i32 %5056, %5057
  %5059 = icmp eq i32 %5058, 2
  %5060 = zext i1 %5059 to i8
  store i8 %5060, i8* %93, align 1, !tbaa !2450
  %5061 = add i64 %4994, -56
  %5062 = add i64 %6614, 2112
  store i64 %5062, i64* %PC, align 8
  %5063 = inttoptr i64 %5061 to i32*
  %5064 = load i32, i32* %5063, align 4
  %5065 = zext i32 %5064 to i64
  store i64 %5065, i64* %RSI, align 8, !tbaa !2428
  %5066 = add i64 %6614, 2116
  store i64 %5066, i64* %PC, align 8
  %5067 = load i64, i64* %5002, align 8
  store i64 %5067, i64* %RCX, align 8, !tbaa !2428
  %5068 = add i64 %5067, 20
  %5069 = add i64 %6614, 2120
  store i64 %5069, i64* %PC, align 8
  %5070 = inttoptr i64 %5068 to i32*
  %5071 = load i32, i32* %5070, align 4
  %5072 = sext i32 %5064 to i64
  %5073 = sext i32 %5071 to i64
  %5074 = mul nsw i64 %5073, %5072
  %5075 = and i64 %5074, 4294967295
  store i64 %5075, i64* %RSI, align 8, !tbaa !2428
  %5076 = trunc i64 %5074 to i32
  %5077 = add i32 %5076, %5034
  %5078 = zext i32 %5077 to i64
  store i64 %5078, i64* %RDX, align 8, !tbaa !2428
  %5079 = icmp ult i32 %5077, %5034
  %5080 = icmp ult i32 %5077, %5076
  %5081 = or i1 %5079, %5080
  %5082 = zext i1 %5081 to i8
  store i8 %5082, i8* %70, align 1, !tbaa !2432
  %5083 = and i32 %5077, 255
  %5084 = tail call i32 @llvm.ctpop.i32(i32 %5083) #8
  %5085 = trunc i32 %5084 to i8
  %5086 = and i8 %5085, 1
  %5087 = xor i8 %5086, 1
  store i8 %5087, i8* %76, align 1, !tbaa !2446
  %5088 = xor i64 %5074, %5035
  %5089 = trunc i64 %5088 to i32
  %5090 = xor i32 %5089, %5077
  %5091 = lshr i32 %5090, 4
  %5092 = trunc i32 %5091 to i8
  %5093 = and i8 %5092, 1
  store i8 %5093, i8* %81, align 1, !tbaa !2447
  %5094 = icmp eq i32 %5077, 0
  %5095 = zext i1 %5094 to i8
  store i8 %5095, i8* %84, align 1, !tbaa !2448
  %5096 = lshr i32 %5077, 31
  %5097 = trunc i32 %5096 to i8
  store i8 %5097, i8* %87, align 1, !tbaa !2449
  %5098 = lshr i32 %5076, 31
  %5099 = xor i32 %5096, %5053
  %5100 = xor i32 %5096, %5098
  %5101 = add nuw nsw i32 %5099, %5100
  %5102 = icmp eq i32 %5101, 2
  %5103 = zext i1 %5102 to i8
  store i8 %5103, i8* %93, align 1, !tbaa !2450
  %5104 = add i64 %4994, -60
  %5105 = add i64 %6614, 2125
  store i64 %5105, i64* %PC, align 8
  %5106 = inttoptr i64 %5104 to i32*
  %5107 = load i32, i32* %5106, align 4
  %5108 = add i32 %5107, %5077
  %5109 = zext i32 %5108 to i64
  store i64 %5109, i64* %RDX, align 8, !tbaa !2428
  %5110 = icmp ult i32 %5108, %5077
  %5111 = icmp ult i32 %5108, %5107
  %5112 = or i1 %5110, %5111
  %5113 = zext i1 %5112 to i8
  store i8 %5113, i8* %70, align 1, !tbaa !2432
  %5114 = and i32 %5108, 255
  %5115 = tail call i32 @llvm.ctpop.i32(i32 %5114) #8
  %5116 = trunc i32 %5115 to i8
  %5117 = and i8 %5116, 1
  %5118 = xor i8 %5117, 1
  store i8 %5118, i8* %76, align 1, !tbaa !2446
  %5119 = xor i32 %5107, %5077
  %5120 = xor i32 %5119, %5108
  %5121 = lshr i32 %5120, 4
  %5122 = trunc i32 %5121 to i8
  %5123 = and i8 %5122, 1
  store i8 %5123, i8* %81, align 1, !tbaa !2447
  %5124 = icmp eq i32 %5108, 0
  %5125 = zext i1 %5124 to i8
  store i8 %5125, i8* %84, align 1, !tbaa !2448
  %5126 = lshr i32 %5108, 31
  %5127 = trunc i32 %5126 to i8
  store i8 %5127, i8* %87, align 1, !tbaa !2449
  %5128 = lshr i32 %5107, 31
  %5129 = xor i32 %5126, %5096
  %5130 = xor i32 %5126, %5128
  %5131 = add nuw nsw i32 %5129, %5130
  %5132 = icmp eq i32 %5131, 2
  %5133 = zext i1 %5132 to i8
  store i8 %5133, i8* %93, align 1, !tbaa !2450
  %5134 = sext i32 %5108 to i64
  store i64 %5134, i64* %RCX, align 8, !tbaa !2428
  %5135 = load i64, i64* %RAX, align 8
  %5136 = shl nsw i64 %5134, 2
  %5137 = add i64 %5136, %5135
  %5138 = add i64 %6614, 2133
  store i64 %5138, i64* %PC, align 8
  %5139 = inttoptr i64 %5137 to i32*
  %5140 = load i32, i32* %5139, align 4
  store i32 %5140, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %5141 = load i64, i64* %RBP, align 8
  %5142 = add i64 %5141, -40
  %5143 = add i64 %6614, 2137
  store i64 %5143, i64* %PC, align 8
  %5144 = inttoptr i64 %5142 to i64*
  %5145 = load i64, i64* %5144, align 8
  store i64 %5145, i64* %RAX, align 8, !tbaa !2428
  %5146 = add i64 %6614, 2140
  store i64 %5146, i64* %PC, align 8
  %5147 = inttoptr i64 %5145 to i64*
  %5148 = load i64, i64* %5147, align 8
  store i64 %5148, i64* %RAX, align 8, !tbaa !2428
  %5149 = add i64 %6614, 2144
  store i64 %5149, i64* %PC, align 8
  %5150 = load i64, i64* %5144, align 8
  store i64 %5150, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5151 = add i64 %6614, 2152
  store i64 %5151, i64* %PC, align 8
  %5152 = load i64, i64* %5144, align 8
  store i64 %5152, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5153 = add i64 %6614, 2160
  store i64 %5153, i64* %PC, align 8
  %5154 = load i64, i64* %5144, align 8
  store i64 %5154, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5155 = add i64 %5141, -52
  %5156 = add i64 %6614, 2167
  store i64 %5156, i64* %PC, align 8
  %5157 = inttoptr i64 %5155 to i32*
  %5158 = load i32, i32* %5157, align 4
  %5159 = zext i32 %5158 to i64
  store i64 %5159, i64* %RSI, align 8, !tbaa !2428
  %5160 = add i64 %6614, 2171
  store i64 %5160, i64* %PC, align 8
  %5161 = load i64, i64* %5144, align 8
  store i64 %5161, i64* %RCX, align 8, !tbaa !2428
  %5162 = add i64 %5161, 16
  %5163 = add i64 %6614, 2175
  store i64 %5163, i64* %PC, align 8
  %5164 = inttoptr i64 %5162 to i32*
  %5165 = load i32, i32* %5164, align 4
  %5166 = sext i32 %5158 to i64
  %5167 = sext i32 %5165 to i64
  %5168 = mul nsw i64 %5167, %5166
  %5169 = trunc i64 %5168 to i32
  %5170 = and i64 %5168, 4294967295
  store i64 %5170, i64* %RSI, align 8, !tbaa !2428
  %5171 = shl i64 %5168, 32
  %5172 = ashr exact i64 %5171, 32
  %5173 = icmp ne i64 %5172, %5168
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %70, align 1, !tbaa !2432
  %5175 = and i32 %5169, 255
  %5176 = tail call i32 @llvm.ctpop.i32(i32 %5175) #8
  %5177 = trunc i32 %5176 to i8
  %5178 = and i8 %5177, 1
  %5179 = xor i8 %5178, 1
  store i8 %5179, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5180 = lshr i32 %5169, 31
  %5181 = trunc i32 %5180 to i8
  store i8 %5181, i8* %87, align 1, !tbaa !2449
  store i8 %5174, i8* %93, align 1, !tbaa !2450
  %5182 = add i64 %6614, 2179
  store i64 %5182, i64* %PC, align 8
  %5183 = load i64, i64* %5144, align 8
  store i64 %5183, i64* %RCX, align 8, !tbaa !2428
  %5184 = add i64 %5183, 20
  %5185 = add i64 %6614, 2183
  store i64 %5185, i64* %PC, align 8
  %5186 = inttoptr i64 %5184 to i32*
  %5187 = load i32, i32* %5186, align 4
  %5188 = sext i32 %5187 to i64
  %5189 = mul nsw i64 %5188, %5172
  %5190 = and i64 %5189, 4294967295
  store i64 %5190, i64* %RSI, align 8, !tbaa !2428
  %5191 = trunc i64 %5189 to i32
  store i64 %5190, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5192 = and i32 %5191, 255
  %5193 = tail call i32 @llvm.ctpop.i32(i32 %5192) #8
  %5194 = trunc i32 %5193 to i8
  %5195 = and i8 %5194, 1
  %5196 = xor i8 %5195, 1
  store i8 %5196, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5197 = icmp eq i32 %5191, 0
  %5198 = zext i1 %5197 to i8
  store i8 %5198, i8* %84, align 1, !tbaa !2448
  %5199 = lshr i32 %5191, 31
  %5200 = trunc i32 %5199 to i8
  store i8 %5200, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5201 = load i64, i64* %RBP, align 8
  %5202 = add i64 %5201, -56
  %5203 = add i64 %6614, 2188
  store i64 %5203, i64* %PC, align 8
  %5204 = inttoptr i64 %5202 to i32*
  %5205 = load i32, i32* %5204, align 4
  %5206 = zext i32 %5205 to i64
  store i64 %5206, i64* %RSI, align 8, !tbaa !2428
  %5207 = add i64 %5201, -40
  %5208 = add i64 %6614, 2192
  store i64 %5208, i64* %PC, align 8
  %5209 = inttoptr i64 %5207 to i64*
  %5210 = load i64, i64* %5209, align 8
  store i64 %5210, i64* %RCX, align 8, !tbaa !2428
  %5211 = add i64 %5210, 20
  %5212 = add i64 %6614, 2196
  store i64 %5212, i64* %PC, align 8
  %5213 = inttoptr i64 %5211 to i32*
  %5214 = load i32, i32* %5213, align 4
  %5215 = sext i32 %5205 to i64
  %5216 = sext i32 %5214 to i64
  %5217 = mul nsw i64 %5216, %5215
  %5218 = and i64 %5217, 4294967295
  store i64 %5218, i64* %RSI, align 8, !tbaa !2428
  %5219 = trunc i64 %5217 to i32
  %5220 = add i32 %5219, %5191
  %5221 = zext i32 %5220 to i64
  store i64 %5221, i64* %RDX, align 8, !tbaa !2428
  %5222 = icmp ult i32 %5220, %5191
  %5223 = icmp ult i32 %5220, %5219
  %5224 = or i1 %5222, %5223
  %5225 = zext i1 %5224 to i8
  store i8 %5225, i8* %70, align 1, !tbaa !2432
  %5226 = and i32 %5220, 255
  %5227 = tail call i32 @llvm.ctpop.i32(i32 %5226) #8
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = xor i8 %5229, 1
  store i8 %5230, i8* %76, align 1, !tbaa !2446
  %5231 = xor i64 %5217, %5189
  %5232 = trunc i64 %5231 to i32
  %5233 = xor i32 %5232, %5220
  %5234 = lshr i32 %5233, 4
  %5235 = trunc i32 %5234 to i8
  %5236 = and i8 %5235, 1
  store i8 %5236, i8* %81, align 1, !tbaa !2447
  %5237 = icmp eq i32 %5220, 0
  %5238 = zext i1 %5237 to i8
  store i8 %5238, i8* %84, align 1, !tbaa !2448
  %5239 = lshr i32 %5220, 31
  %5240 = trunc i32 %5239 to i8
  store i8 %5240, i8* %87, align 1, !tbaa !2449
  %5241 = lshr i32 %5219, 31
  %5242 = xor i32 %5239, %5199
  %5243 = xor i32 %5239, %5241
  %5244 = add nuw nsw i32 %5242, %5243
  %5245 = icmp eq i32 %5244, 2
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %93, align 1, !tbaa !2450
  %5247 = add i64 %5201, -60
  %5248 = add i64 %6614, 2201
  store i64 %5248, i64* %PC, align 8
  %5249 = inttoptr i64 %5247 to i32*
  %5250 = load i32, i32* %5249, align 4
  %5251 = add i32 %5250, -1
  %5252 = zext i32 %5251 to i64
  store i64 %5252, i64* %RSI, align 8, !tbaa !2428
  %5253 = lshr i32 %5251, 31
  %5254 = add i32 %5251, %5220
  %5255 = zext i32 %5254 to i64
  store i64 %5255, i64* %RDX, align 8, !tbaa !2428
  %5256 = icmp ult i32 %5254, %5220
  %5257 = icmp ult i32 %5254, %5251
  %5258 = or i1 %5256, %5257
  %5259 = zext i1 %5258 to i8
  store i8 %5259, i8* %70, align 1, !tbaa !2432
  %5260 = and i32 %5254, 255
  %5261 = tail call i32 @llvm.ctpop.i32(i32 %5260) #8
  %5262 = trunc i32 %5261 to i8
  %5263 = and i8 %5262, 1
  %5264 = xor i8 %5263, 1
  store i8 %5264, i8* %76, align 1, !tbaa !2446
  %5265 = xor i32 %5251, %5220
  %5266 = xor i32 %5265, %5254
  %5267 = lshr i32 %5266, 4
  %5268 = trunc i32 %5267 to i8
  %5269 = and i8 %5268, 1
  store i8 %5269, i8* %81, align 1, !tbaa !2447
  %5270 = icmp eq i32 %5254, 0
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %84, align 1, !tbaa !2448
  %5272 = lshr i32 %5254, 31
  %5273 = trunc i32 %5272 to i8
  store i8 %5273, i8* %87, align 1, !tbaa !2449
  %5274 = xor i32 %5272, %5239
  %5275 = xor i32 %5272, %5253
  %5276 = add nuw nsw i32 %5274, %5275
  %5277 = icmp eq i32 %5276, 2
  %5278 = zext i1 %5277 to i8
  store i8 %5278, i8* %93, align 1, !tbaa !2450
  %5279 = sext i32 %5254 to i64
  store i64 %5279, i64* %RCX, align 8, !tbaa !2428
  %5280 = load i64, i64* %RAX, align 8
  %5281 = shl nsw i64 %5279, 2
  %5282 = add i64 %5281, %5280
  %5283 = add i64 %6614, 2214
  store i64 %5283, i64* %PC, align 8
  %5284 = load <2 x float>, <2 x float>* %206, align 1
  %5285 = load <2 x i32>, <2 x i32>* %207, align 1
  %5286 = inttoptr i64 %5282 to float*
  %5287 = load float, float* %5286, align 4
  %5288 = extractelement <2 x float> %5284, i32 0
  %5289 = fmul float %5288, %5287
  store float %5289, float* %199, align 1, !tbaa !2451
  %5290 = bitcast <2 x float> %5284 to <2 x i32>
  %5291 = extractelement <2 x i32> %5290, i32 1
  store i32 %5291, i32* %208, align 1, !tbaa !2451
  %5292 = extractelement <2 x i32> %5285, i32 0
  store i32 %5292, i32* %209, align 1, !tbaa !2451
  %5293 = extractelement <2 x i32> %5285, i32 1
  store i32 %5293, i32* %210, align 1, !tbaa !2451
  %5294 = load <2 x float>, <2 x float>* %192, align 1
  %5295 = load <2 x i32>, <2 x i32>* %197, align 1
  %5296 = load <2 x float>, <2 x float>* %206, align 1
  %5297 = extractelement <2 x float> %5294, i32 0
  %5298 = extractelement <2 x float> %5296, i32 0
  %5299 = fadd float %5297, %5298
  store float %5299, float* %193, align 1, !tbaa !2451
  %5300 = bitcast <2 x float> %5294 to <2 x i32>
  %5301 = extractelement <2 x i32> %5300, i32 1
  store i32 %5301, i32* %188, align 1, !tbaa !2451
  %5302 = extractelement <2 x i32> %5295, i32 0
  store i32 %5302, i32* %189, align 1, !tbaa !2451
  %5303 = extractelement <2 x i32> %5295, i32 1
  store i32 %5303, i32* %191, align 1, !tbaa !2451
  %5304 = load i64, i64* %RBP, align 8
  %5305 = add i64 %5304, 16
  %5306 = add i64 %6614, 2222
  store i64 %5306, i64* %PC, align 8
  %5307 = inttoptr i64 %5305 to i64*
  %5308 = load i64, i64* %5307, align 8
  store i64 %5308, i64* %RAX, align 8, !tbaa !2428
  %5309 = add i64 %6614, 2225
  store i64 %5309, i64* %PC, align 8
  %5310 = inttoptr i64 %5308 to i64*
  %5311 = load i64, i64* %5310, align 8
  store i64 %5311, i64* %RAX, align 8, !tbaa !2428
  %5312 = add i64 %6614, 2229
  store i64 %5312, i64* %PC, align 8
  %5313 = load i64, i64* %5307, align 8
  store i64 %5313, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5314 = add i64 %6614, 2237
  store i64 %5314, i64* %PC, align 8
  %5315 = load i64, i64* %5307, align 8
  store i64 %5315, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5316 = add i64 %6614, 2245
  store i64 %5316, i64* %PC, align 8
  %5317 = load i64, i64* %5307, align 8
  store i64 %5317, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5318 = add i64 %5304, -52
  %5319 = add i64 %6614, 2252
  store i64 %5319, i64* %PC, align 8
  %5320 = inttoptr i64 %5318 to i32*
  %5321 = load i32, i32* %5320, align 4
  %5322 = zext i32 %5321 to i64
  store i64 %5322, i64* %RSI, align 8, !tbaa !2428
  %5323 = add i64 %6614, 2256
  store i64 %5323, i64* %PC, align 8
  %5324 = load i64, i64* %5307, align 8
  store i64 %5324, i64* %RCX, align 8, !tbaa !2428
  %5325 = add i64 %5324, 16
  %5326 = add i64 %6614, 2260
  store i64 %5326, i64* %PC, align 8
  %5327 = inttoptr i64 %5325 to i32*
  %5328 = load i32, i32* %5327, align 4
  %5329 = sext i32 %5321 to i64
  %5330 = sext i32 %5328 to i64
  %5331 = mul nsw i64 %5330, %5329
  %5332 = trunc i64 %5331 to i32
  %5333 = and i64 %5331, 4294967295
  store i64 %5333, i64* %RSI, align 8, !tbaa !2428
  %5334 = shl i64 %5331, 32
  %5335 = ashr exact i64 %5334, 32
  %5336 = icmp ne i64 %5335, %5331
  %5337 = zext i1 %5336 to i8
  store i8 %5337, i8* %70, align 1, !tbaa !2432
  %5338 = and i32 %5332, 255
  %5339 = tail call i32 @llvm.ctpop.i32(i32 %5338) #8
  %5340 = trunc i32 %5339 to i8
  %5341 = and i8 %5340, 1
  %5342 = xor i8 %5341, 1
  store i8 %5342, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5343 = lshr i32 %5332, 31
  %5344 = trunc i32 %5343 to i8
  store i8 %5344, i8* %87, align 1, !tbaa !2449
  store i8 %5337, i8* %93, align 1, !tbaa !2450
  %5345 = add i64 %6614, 2264
  store i64 %5345, i64* %PC, align 8
  %5346 = load i64, i64* %5307, align 8
  store i64 %5346, i64* %RCX, align 8, !tbaa !2428
  %5347 = add i64 %5346, 20
  %5348 = add i64 %6614, 2268
  store i64 %5348, i64* %PC, align 8
  %5349 = inttoptr i64 %5347 to i32*
  %5350 = load i32, i32* %5349, align 4
  %5351 = sext i32 %5350 to i64
  %5352 = mul nsw i64 %5351, %5335
  %5353 = and i64 %5352, 4294967295
  store i64 %5353, i64* %RSI, align 8, !tbaa !2428
  %5354 = trunc i64 %5352 to i32
  store i64 %5353, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5355 = and i32 %5354, 255
  %5356 = tail call i32 @llvm.ctpop.i32(i32 %5355) #8
  %5357 = trunc i32 %5356 to i8
  %5358 = and i8 %5357, 1
  %5359 = xor i8 %5358, 1
  store i8 %5359, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5360 = icmp eq i32 %5354, 0
  %5361 = zext i1 %5360 to i8
  store i8 %5361, i8* %84, align 1, !tbaa !2448
  %5362 = lshr i32 %5354, 31
  %5363 = trunc i32 %5362 to i8
  store i8 %5363, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5364 = load i64, i64* %RBP, align 8
  %5365 = add i64 %5364, -56
  %5366 = add i64 %6614, 2273
  store i64 %5366, i64* %PC, align 8
  %5367 = inttoptr i64 %5365 to i32*
  %5368 = load i32, i32* %5367, align 4
  %5369 = zext i32 %5368 to i64
  store i64 %5369, i64* %RSI, align 8, !tbaa !2428
  %5370 = add i64 %5364, 16
  %5371 = add i64 %6614, 2277
  store i64 %5371, i64* %PC, align 8
  %5372 = inttoptr i64 %5370 to i64*
  %5373 = load i64, i64* %5372, align 8
  store i64 %5373, i64* %RCX, align 8, !tbaa !2428
  %5374 = add i64 %5373, 20
  %5375 = add i64 %6614, 2281
  store i64 %5375, i64* %PC, align 8
  %5376 = inttoptr i64 %5374 to i32*
  %5377 = load i32, i32* %5376, align 4
  %5378 = sext i32 %5368 to i64
  %5379 = sext i32 %5377 to i64
  %5380 = mul nsw i64 %5379, %5378
  %5381 = and i64 %5380, 4294967295
  store i64 %5381, i64* %RSI, align 8, !tbaa !2428
  %5382 = trunc i64 %5380 to i32
  %5383 = add i32 %5382, %5354
  %5384 = zext i32 %5383 to i64
  store i64 %5384, i64* %RDX, align 8, !tbaa !2428
  %5385 = icmp ult i32 %5383, %5354
  %5386 = icmp ult i32 %5383, %5382
  %5387 = or i1 %5385, %5386
  %5388 = zext i1 %5387 to i8
  store i8 %5388, i8* %70, align 1, !tbaa !2432
  %5389 = and i32 %5383, 255
  %5390 = tail call i32 @llvm.ctpop.i32(i32 %5389) #8
  %5391 = trunc i32 %5390 to i8
  %5392 = and i8 %5391, 1
  %5393 = xor i8 %5392, 1
  store i8 %5393, i8* %76, align 1, !tbaa !2446
  %5394 = xor i64 %5380, %5352
  %5395 = trunc i64 %5394 to i32
  %5396 = xor i32 %5395, %5383
  %5397 = lshr i32 %5396, 4
  %5398 = trunc i32 %5397 to i8
  %5399 = and i8 %5398, 1
  store i8 %5399, i8* %81, align 1, !tbaa !2447
  %5400 = icmp eq i32 %5383, 0
  %5401 = zext i1 %5400 to i8
  store i8 %5401, i8* %84, align 1, !tbaa !2448
  %5402 = lshr i32 %5383, 31
  %5403 = trunc i32 %5402 to i8
  store i8 %5403, i8* %87, align 1, !tbaa !2449
  %5404 = lshr i32 %5382, 31
  %5405 = xor i32 %5402, %5362
  %5406 = xor i32 %5402, %5404
  %5407 = add nuw nsw i32 %5405, %5406
  %5408 = icmp eq i32 %5407, 2
  %5409 = zext i1 %5408 to i8
  store i8 %5409, i8* %93, align 1, !tbaa !2450
  %5410 = add i64 %5364, -60
  %5411 = add i64 %6614, 2286
  store i64 %5411, i64* %PC, align 8
  %5412 = inttoptr i64 %5410 to i32*
  %5413 = load i32, i32* %5412, align 4
  %5414 = add i32 %5413, %5383
  %5415 = zext i32 %5414 to i64
  store i64 %5415, i64* %RDX, align 8, !tbaa !2428
  %5416 = icmp ult i32 %5414, %5383
  %5417 = icmp ult i32 %5414, %5413
  %5418 = or i1 %5416, %5417
  %5419 = zext i1 %5418 to i8
  store i8 %5419, i8* %70, align 1, !tbaa !2432
  %5420 = and i32 %5414, 255
  %5421 = tail call i32 @llvm.ctpop.i32(i32 %5420) #8
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  store i8 %5424, i8* %76, align 1, !tbaa !2446
  %5425 = xor i32 %5413, %5383
  %5426 = xor i32 %5425, %5414
  %5427 = lshr i32 %5426, 4
  %5428 = trunc i32 %5427 to i8
  %5429 = and i8 %5428, 1
  store i8 %5429, i8* %81, align 1, !tbaa !2447
  %5430 = icmp eq i32 %5414, 0
  %5431 = zext i1 %5430 to i8
  store i8 %5431, i8* %84, align 1, !tbaa !2448
  %5432 = lshr i32 %5414, 31
  %5433 = trunc i32 %5432 to i8
  store i8 %5433, i8* %87, align 1, !tbaa !2449
  %5434 = lshr i32 %5413, 31
  %5435 = xor i32 %5432, %5402
  %5436 = xor i32 %5432, %5434
  %5437 = add nuw nsw i32 %5435, %5436
  %5438 = icmp eq i32 %5437, 2
  %5439 = zext i1 %5438 to i8
  store i8 %5439, i8* %93, align 1, !tbaa !2450
  %5440 = sext i32 %5414 to i64
  store i64 %5440, i64* %RCX, align 8, !tbaa !2428
  %5441 = load i64, i64* %RAX, align 8
  %5442 = shl nsw i64 %5440, 2
  %5443 = add i64 %5442, %5441
  %5444 = add i64 %6614, 2294
  store i64 %5444, i64* %PC, align 8
  %5445 = load <2 x float>, <2 x float>* %192, align 1
  %5446 = load <2 x i32>, <2 x i32>* %197, align 1
  %5447 = inttoptr i64 %5443 to float*
  %5448 = load float, float* %5447, align 4
  %5449 = extractelement <2 x float> %5445, i32 0
  %5450 = fadd float %5449, %5448
  store float %5450, float* %193, align 1, !tbaa !2451
  %5451 = bitcast <2 x float> %5445 to <2 x i32>
  %5452 = extractelement <2 x i32> %5451, i32 1
  store i32 %5452, i32* %188, align 1, !tbaa !2451
  %5453 = extractelement <2 x i32> %5446, i32 0
  store i32 %5453, i32* %189, align 1, !tbaa !2451
  %5454 = extractelement <2 x i32> %5446, i32 1
  store i32 %5454, i32* %191, align 1, !tbaa !2451
  %5455 = load i64, i64* %RBP, align 8
  %5456 = add i64 %5455, -84
  %5457 = add i64 %6614, 2299
  store i64 %5457, i64* %PC, align 8
  %5458 = load <2 x float>, <2 x float>* %192, align 1
  %5459 = extractelement <2 x float> %5458, i32 0
  %5460 = inttoptr i64 %5456 to float*
  store float %5459, float* %5460, align 4
  %5461 = load i64, i64* %RBP, align 8
  %5462 = add i64 %5461, -84
  %5463 = load i64, i64* %PC, align 8
  %5464 = add i64 %5463, 5
  store i64 %5464, i64* %PC, align 8
  %5465 = inttoptr i64 %5462 to i32*
  %5466 = load i32, i32* %5465, align 4
  store i32 %5466, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %5467 = add i64 %5461, -16
  %5468 = add i64 %5463, 9
  store i64 %5468, i64* %PC, align 8
  %5469 = inttoptr i64 %5467 to i64*
  %5470 = load i64, i64* %5469, align 8
  store i64 %5470, i64* %RAX, align 8, !tbaa !2428
  %5471 = add i64 %5463, 12
  store i64 %5471, i64* %PC, align 8
  %5472 = inttoptr i64 %5470 to i64*
  %5473 = load i64, i64* %5472, align 8
  store i64 %5473, i64* %RAX, align 8, !tbaa !2428
  %5474 = add i64 %5463, 16
  store i64 %5474, i64* %PC, align 8
  %5475 = load i64, i64* %5469, align 8
  store i64 %5475, i64* %RCX, align 8, !tbaa !2428
  %5476 = add i64 %5475, 12
  %5477 = add i64 %5463, 20
  store i64 %5477, i64* %PC, align 8
  %5478 = inttoptr i64 %5476 to i32*
  %5479 = load i32, i32* %5478, align 4
  %5480 = sext i32 %5479 to i64
  %5481 = mul nsw i64 %5480, 3
  %5482 = trunc i64 %5481 to i32
  %5483 = and i64 %5481, 4294967295
  store i64 %5483, i64* %RDX, align 8, !tbaa !2428
  %5484 = mul i64 %5480, 12884901888
  %5485 = ashr exact i64 %5484, 32
  %5486 = icmp ne i64 %5485, %5481
  %5487 = zext i1 %5486 to i8
  store i8 %5487, i8* %70, align 1, !tbaa !2432
  %5488 = and i32 %5482, 255
  %5489 = tail call i32 @llvm.ctpop.i32(i32 %5488) #8
  %5490 = trunc i32 %5489 to i8
  %5491 = and i8 %5490, 1
  %5492 = xor i8 %5491, 1
  store i8 %5492, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5493 = lshr i32 %5482, 31
  %5494 = trunc i32 %5493 to i8
  store i8 %5494, i8* %87, align 1, !tbaa !2449
  store i8 %5487, i8* %93, align 1, !tbaa !2450
  %5495 = add i64 %5463, 24
  store i64 %5495, i64* %PC, align 8
  %5496 = load i64, i64* %5469, align 8
  store i64 %5496, i64* %RCX, align 8, !tbaa !2428
  %5497 = add i64 %5496, 16
  %5498 = add i64 %5463, 28
  store i64 %5498, i64* %PC, align 8
  %5499 = inttoptr i64 %5497 to i32*
  %5500 = load i32, i32* %5499, align 4
  %5501 = sext i32 %5500 to i64
  %5502 = mul nsw i64 %5501, %5485
  %5503 = trunc i64 %5502 to i32
  %5504 = and i64 %5502, 4294967295
  store i64 %5504, i64* %RDX, align 8, !tbaa !2428
  %5505 = shl i64 %5502, 32
  %5506 = ashr exact i64 %5505, 32
  %5507 = icmp ne i64 %5506, %5502
  %5508 = zext i1 %5507 to i8
  store i8 %5508, i8* %70, align 1, !tbaa !2432
  %5509 = and i32 %5503, 255
  %5510 = tail call i32 @llvm.ctpop.i32(i32 %5509) #8
  %5511 = trunc i32 %5510 to i8
  %5512 = and i8 %5511, 1
  %5513 = xor i8 %5512, 1
  store i8 %5513, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5514 = lshr i32 %5503, 31
  %5515 = trunc i32 %5514 to i8
  store i8 %5515, i8* %87, align 1, !tbaa !2449
  store i8 %5508, i8* %93, align 1, !tbaa !2450
  %5516 = add i64 %5463, 32
  store i64 %5516, i64* %PC, align 8
  %5517 = load i64, i64* %5469, align 8
  store i64 %5517, i64* %RCX, align 8, !tbaa !2428
  %5518 = add i64 %5517, 20
  %5519 = add i64 %5463, 36
  store i64 %5519, i64* %PC, align 8
  %5520 = inttoptr i64 %5518 to i32*
  %5521 = load i32, i32* %5520, align 4
  %5522 = sext i32 %5521 to i64
  %5523 = mul nsw i64 %5522, %5506
  %5524 = trunc i64 %5523 to i32
  %5525 = and i64 %5523, 4294967295
  store i64 %5525, i64* %RDX, align 8, !tbaa !2428
  %5526 = shl i64 %5523, 32
  %5527 = ashr exact i64 %5526, 32
  %5528 = icmp ne i64 %5527, %5523
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %70, align 1, !tbaa !2432
  %5530 = and i32 %5524, 255
  %5531 = tail call i32 @llvm.ctpop.i32(i32 %5530) #8
  %5532 = trunc i32 %5531 to i8
  %5533 = and i8 %5532, 1
  %5534 = xor i8 %5533, 1
  store i8 %5534, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5535 = lshr i32 %5524, 31
  %5536 = trunc i32 %5535 to i8
  store i8 %5536, i8* %87, align 1, !tbaa !2449
  store i8 %5529, i8* %93, align 1, !tbaa !2450
  %5537 = load i64, i64* %RBP, align 8
  %5538 = add i64 %5537, -52
  %5539 = add i64 %5463, 39
  store i64 %5539, i64* %PC, align 8
  %5540 = inttoptr i64 %5538 to i32*
  %5541 = load i32, i32* %5540, align 4
  %5542 = zext i32 %5541 to i64
  store i64 %5542, i64* %RSI, align 8, !tbaa !2428
  %5543 = add i64 %5537, -16
  %5544 = add i64 %5463, 43
  store i64 %5544, i64* %PC, align 8
  %5545 = inttoptr i64 %5543 to i64*
  %5546 = load i64, i64* %5545, align 8
  store i64 %5546, i64* %RCX, align 8, !tbaa !2428
  %5547 = add i64 %5546, 16
  %5548 = add i64 %5463, 47
  store i64 %5548, i64* %PC, align 8
  %5549 = inttoptr i64 %5547 to i32*
  %5550 = load i32, i32* %5549, align 4
  %5551 = sext i32 %5541 to i64
  %5552 = sext i32 %5550 to i64
  %5553 = mul nsw i64 %5552, %5551
  %5554 = trunc i64 %5553 to i32
  %5555 = and i64 %5553, 4294967295
  store i64 %5555, i64* %RSI, align 8, !tbaa !2428
  %5556 = shl i64 %5553, 32
  %5557 = ashr exact i64 %5556, 32
  %5558 = icmp ne i64 %5557, %5553
  %5559 = zext i1 %5558 to i8
  store i8 %5559, i8* %70, align 1, !tbaa !2432
  %5560 = and i32 %5554, 255
  %5561 = tail call i32 @llvm.ctpop.i32(i32 %5560) #8
  %5562 = trunc i32 %5561 to i8
  %5563 = and i8 %5562, 1
  %5564 = xor i8 %5563, 1
  store i8 %5564, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5565 = lshr i32 %5554, 31
  %5566 = trunc i32 %5565 to i8
  store i8 %5566, i8* %87, align 1, !tbaa !2449
  store i8 %5559, i8* %93, align 1, !tbaa !2450
  %5567 = add i64 %5463, 51
  store i64 %5567, i64* %PC, align 8
  %5568 = load i64, i64* %5545, align 8
  store i64 %5568, i64* %RCX, align 8, !tbaa !2428
  %5569 = add i64 %5568, 20
  %5570 = add i64 %5463, 55
  store i64 %5570, i64* %PC, align 8
  %5571 = inttoptr i64 %5569 to i32*
  %5572 = load i32, i32* %5571, align 4
  %5573 = sext i32 %5572 to i64
  %5574 = mul nsw i64 %5573, %5557
  %5575 = and i64 %5574, 4294967295
  store i64 %5575, i64* %RSI, align 8, !tbaa !2428
  %5576 = trunc i64 %5574 to i32
  %5577 = add i32 %5576, %5524
  %5578 = zext i32 %5577 to i64
  store i64 %5578, i64* %RDX, align 8, !tbaa !2428
  %5579 = icmp ult i32 %5577, %5524
  %5580 = icmp ult i32 %5577, %5576
  %5581 = or i1 %5579, %5580
  %5582 = zext i1 %5581 to i8
  store i8 %5582, i8* %70, align 1, !tbaa !2432
  %5583 = and i32 %5577, 255
  %5584 = tail call i32 @llvm.ctpop.i32(i32 %5583) #8
  %5585 = trunc i32 %5584 to i8
  %5586 = and i8 %5585, 1
  %5587 = xor i8 %5586, 1
  store i8 %5587, i8* %76, align 1, !tbaa !2446
  %5588 = xor i64 %5574, %5523
  %5589 = trunc i64 %5588 to i32
  %5590 = xor i32 %5589, %5577
  %5591 = lshr i32 %5590, 4
  %5592 = trunc i32 %5591 to i8
  %5593 = and i8 %5592, 1
  store i8 %5593, i8* %81, align 1, !tbaa !2447
  %5594 = icmp eq i32 %5577, 0
  %5595 = zext i1 %5594 to i8
  store i8 %5595, i8* %84, align 1, !tbaa !2448
  %5596 = lshr i32 %5577, 31
  %5597 = trunc i32 %5596 to i8
  store i8 %5597, i8* %87, align 1, !tbaa !2449
  %5598 = lshr i32 %5576, 31
  %5599 = xor i32 %5596, %5535
  %5600 = xor i32 %5596, %5598
  %5601 = add nuw nsw i32 %5599, %5600
  %5602 = icmp eq i32 %5601, 2
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %93, align 1, !tbaa !2450
  %5604 = add i64 %5537, -56
  %5605 = add i64 %5463, 60
  store i64 %5605, i64* %PC, align 8
  %5606 = inttoptr i64 %5604 to i32*
  %5607 = load i32, i32* %5606, align 4
  %5608 = zext i32 %5607 to i64
  store i64 %5608, i64* %RSI, align 8, !tbaa !2428
  %5609 = add i64 %5463, 64
  store i64 %5609, i64* %PC, align 8
  %5610 = load i64, i64* %5545, align 8
  store i64 %5610, i64* %RCX, align 8, !tbaa !2428
  %5611 = add i64 %5610, 20
  %5612 = add i64 %5463, 68
  store i64 %5612, i64* %PC, align 8
  %5613 = inttoptr i64 %5611 to i32*
  %5614 = load i32, i32* %5613, align 4
  %5615 = sext i32 %5607 to i64
  %5616 = sext i32 %5614 to i64
  %5617 = mul nsw i64 %5616, %5615
  %5618 = and i64 %5617, 4294967295
  store i64 %5618, i64* %RSI, align 8, !tbaa !2428
  %5619 = trunc i64 %5617 to i32
  %5620 = add i32 %5619, %5577
  %5621 = zext i32 %5620 to i64
  store i64 %5621, i64* %RDX, align 8, !tbaa !2428
  %5622 = icmp ult i32 %5620, %5577
  %5623 = icmp ult i32 %5620, %5619
  %5624 = or i1 %5622, %5623
  %5625 = zext i1 %5624 to i8
  store i8 %5625, i8* %70, align 1, !tbaa !2432
  %5626 = and i32 %5620, 255
  %5627 = tail call i32 @llvm.ctpop.i32(i32 %5626) #8
  %5628 = trunc i32 %5627 to i8
  %5629 = and i8 %5628, 1
  %5630 = xor i8 %5629, 1
  store i8 %5630, i8* %76, align 1, !tbaa !2446
  %5631 = xor i64 %5617, %5578
  %5632 = trunc i64 %5631 to i32
  %5633 = xor i32 %5632, %5620
  %5634 = lshr i32 %5633, 4
  %5635 = trunc i32 %5634 to i8
  %5636 = and i8 %5635, 1
  store i8 %5636, i8* %81, align 1, !tbaa !2447
  %5637 = icmp eq i32 %5620, 0
  %5638 = zext i1 %5637 to i8
  store i8 %5638, i8* %84, align 1, !tbaa !2448
  %5639 = lshr i32 %5620, 31
  %5640 = trunc i32 %5639 to i8
  store i8 %5640, i8* %87, align 1, !tbaa !2449
  %5641 = lshr i32 %5619, 31
  %5642 = xor i32 %5639, %5596
  %5643 = xor i32 %5639, %5641
  %5644 = add nuw nsw i32 %5642, %5643
  %5645 = icmp eq i32 %5644, 2
  %5646 = zext i1 %5645 to i8
  store i8 %5646, i8* %93, align 1, !tbaa !2450
  %5647 = add i64 %5537, -60
  %5648 = add i64 %5463, 73
  store i64 %5648, i64* %PC, align 8
  %5649 = inttoptr i64 %5647 to i32*
  %5650 = load i32, i32* %5649, align 4
  %5651 = add i32 %5650, %5620
  %5652 = zext i32 %5651 to i64
  store i64 %5652, i64* %RDX, align 8, !tbaa !2428
  %5653 = icmp ult i32 %5651, %5620
  %5654 = icmp ult i32 %5651, %5650
  %5655 = or i1 %5653, %5654
  %5656 = zext i1 %5655 to i8
  store i8 %5656, i8* %70, align 1, !tbaa !2432
  %5657 = and i32 %5651, 255
  %5658 = tail call i32 @llvm.ctpop.i32(i32 %5657) #8
  %5659 = trunc i32 %5658 to i8
  %5660 = and i8 %5659, 1
  %5661 = xor i8 %5660, 1
  store i8 %5661, i8* %76, align 1, !tbaa !2446
  %5662 = xor i32 %5650, %5620
  %5663 = xor i32 %5662, %5651
  %5664 = lshr i32 %5663, 4
  %5665 = trunc i32 %5664 to i8
  %5666 = and i8 %5665, 1
  store i8 %5666, i8* %81, align 1, !tbaa !2447
  %5667 = icmp eq i32 %5651, 0
  %5668 = zext i1 %5667 to i8
  store i8 %5668, i8* %84, align 1, !tbaa !2448
  %5669 = lshr i32 %5651, 31
  %5670 = trunc i32 %5669 to i8
  store i8 %5670, i8* %87, align 1, !tbaa !2449
  %5671 = lshr i32 %5650, 31
  %5672 = xor i32 %5669, %5639
  %5673 = xor i32 %5669, %5671
  %5674 = add nuw nsw i32 %5672, %5673
  %5675 = icmp eq i32 %5674, 2
  %5676 = zext i1 %5675 to i8
  store i8 %5676, i8* %93, align 1, !tbaa !2450
  %5677 = sext i32 %5651 to i64
  store i64 %5677, i64* %RCX, align 8, !tbaa !2428
  %5678 = load i64, i64* %RAX, align 8
  %5679 = shl nsw i64 %5677, 2
  %5680 = add i64 %5679, %5678
  %5681 = add i64 %5463, 81
  store i64 %5681, i64* %PC, align 8
  %5682 = load <2 x float>, <2 x float>* %192, align 1
  %5683 = load <2 x i32>, <2 x i32>* %197, align 1
  %5684 = inttoptr i64 %5680 to float*
  %5685 = load float, float* %5684, align 4
  %5686 = extractelement <2 x float> %5682, i32 0
  %5687 = fmul float %5686, %5685
  store float %5687, float* %193, align 1, !tbaa !2451
  %5688 = bitcast <2 x float> %5682 to <2 x i32>
  %5689 = extractelement <2 x i32> %5688, i32 1
  store i32 %5689, i32* %188, align 1, !tbaa !2451
  %5690 = extractelement <2 x i32> %5683, i32 0
  store i32 %5690, i32* %189, align 1, !tbaa !2451
  %5691 = extractelement <2 x i32> %5683, i32 1
  store i32 %5691, i32* %191, align 1, !tbaa !2451
  %5692 = load i64, i64* %RBP, align 8
  %5693 = add i64 %5692, -40
  %5694 = add i64 %5463, 85
  store i64 %5694, i64* %PC, align 8
  %5695 = inttoptr i64 %5693 to i64*
  %5696 = load i64, i64* %5695, align 8
  store i64 %5696, i64* %RAX, align 8, !tbaa !2428
  %5697 = add i64 %5463, 88
  store i64 %5697, i64* %PC, align 8
  %5698 = inttoptr i64 %5696 to i64*
  %5699 = load i64, i64* %5698, align 8
  store i64 %5699, i64* %RAX, align 8, !tbaa !2428
  %5700 = add i64 %5463, 92
  store i64 %5700, i64* %PC, align 8
  %5701 = load i64, i64* %5695, align 8
  store i64 %5701, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5702 = add i64 %5463, 100
  store i64 %5702, i64* %PC, align 8
  %5703 = load i64, i64* %5695, align 8
  store i64 %5703, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5704 = add i64 %5463, 108
  store i64 %5704, i64* %PC, align 8
  %5705 = load i64, i64* %5695, align 8
  store i64 %5705, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5706 = add i64 %5692, -52
  %5707 = add i64 %5463, 115
  store i64 %5707, i64* %PC, align 8
  %5708 = inttoptr i64 %5706 to i32*
  %5709 = load i32, i32* %5708, align 4
  %5710 = zext i32 %5709 to i64
  store i64 %5710, i64* %RSI, align 8, !tbaa !2428
  %5711 = add i64 %5463, 119
  store i64 %5711, i64* %PC, align 8
  %5712 = load i64, i64* %5695, align 8
  store i64 %5712, i64* %RCX, align 8, !tbaa !2428
  %5713 = add i64 %5712, 16
  %5714 = add i64 %5463, 123
  store i64 %5714, i64* %PC, align 8
  %5715 = inttoptr i64 %5713 to i32*
  %5716 = load i32, i32* %5715, align 4
  %5717 = sext i32 %5709 to i64
  %5718 = sext i32 %5716 to i64
  %5719 = mul nsw i64 %5718, %5717
  %5720 = trunc i64 %5719 to i32
  %5721 = and i64 %5719, 4294967295
  store i64 %5721, i64* %RSI, align 8, !tbaa !2428
  %5722 = shl i64 %5719, 32
  %5723 = ashr exact i64 %5722, 32
  %5724 = icmp ne i64 %5723, %5719
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %70, align 1, !tbaa !2432
  %5726 = and i32 %5720, 255
  %5727 = tail call i32 @llvm.ctpop.i32(i32 %5726) #8
  %5728 = trunc i32 %5727 to i8
  %5729 = and i8 %5728, 1
  %5730 = xor i8 %5729, 1
  store i8 %5730, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5731 = lshr i32 %5720, 31
  %5732 = trunc i32 %5731 to i8
  store i8 %5732, i8* %87, align 1, !tbaa !2449
  store i8 %5725, i8* %93, align 1, !tbaa !2450
  %5733 = add i64 %5463, 127
  store i64 %5733, i64* %PC, align 8
  %5734 = load i64, i64* %5695, align 8
  store i64 %5734, i64* %RCX, align 8, !tbaa !2428
  %5735 = add i64 %5734, 20
  %5736 = add i64 %5463, 131
  store i64 %5736, i64* %PC, align 8
  %5737 = inttoptr i64 %5735 to i32*
  %5738 = load i32, i32* %5737, align 4
  %5739 = sext i32 %5738 to i64
  %5740 = mul nsw i64 %5739, %5723
  %5741 = and i64 %5740, 4294967295
  store i64 %5741, i64* %RSI, align 8, !tbaa !2428
  %5742 = trunc i64 %5740 to i32
  store i64 %5741, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5743 = and i32 %5742, 255
  %5744 = tail call i32 @llvm.ctpop.i32(i32 %5743) #8
  %5745 = trunc i32 %5744 to i8
  %5746 = and i8 %5745, 1
  %5747 = xor i8 %5746, 1
  store i8 %5747, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5748 = icmp eq i32 %5742, 0
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %84, align 1, !tbaa !2448
  %5750 = lshr i32 %5742, 31
  %5751 = trunc i32 %5750 to i8
  store i8 %5751, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5752 = load i64, i64* %RBP, align 8
  %5753 = add i64 %5752, -56
  %5754 = add i64 %5463, 136
  store i64 %5754, i64* %PC, align 8
  %5755 = inttoptr i64 %5753 to i32*
  %5756 = load i32, i32* %5755, align 4
  %5757 = zext i32 %5756 to i64
  store i64 %5757, i64* %RSI, align 8, !tbaa !2428
  %5758 = add i64 %5752, -40
  %5759 = add i64 %5463, 140
  store i64 %5759, i64* %PC, align 8
  %5760 = inttoptr i64 %5758 to i64*
  %5761 = load i64, i64* %5760, align 8
  store i64 %5761, i64* %RCX, align 8, !tbaa !2428
  %5762 = add i64 %5761, 20
  %5763 = add i64 %5463, 144
  store i64 %5763, i64* %PC, align 8
  %5764 = inttoptr i64 %5762 to i32*
  %5765 = load i32, i32* %5764, align 4
  %5766 = sext i32 %5756 to i64
  %5767 = sext i32 %5765 to i64
  %5768 = mul nsw i64 %5767, %5766
  %5769 = and i64 %5768, 4294967295
  store i64 %5769, i64* %RSI, align 8, !tbaa !2428
  %5770 = trunc i64 %5768 to i32
  %5771 = add i32 %5770, %5742
  %5772 = zext i32 %5771 to i64
  store i64 %5772, i64* %RDX, align 8, !tbaa !2428
  %5773 = icmp ult i32 %5771, %5742
  %5774 = icmp ult i32 %5771, %5770
  %5775 = or i1 %5773, %5774
  %5776 = zext i1 %5775 to i8
  store i8 %5776, i8* %70, align 1, !tbaa !2432
  %5777 = and i32 %5771, 255
  %5778 = tail call i32 @llvm.ctpop.i32(i32 %5777) #8
  %5779 = trunc i32 %5778 to i8
  %5780 = and i8 %5779, 1
  %5781 = xor i8 %5780, 1
  store i8 %5781, i8* %76, align 1, !tbaa !2446
  %5782 = xor i64 %5768, %5740
  %5783 = trunc i64 %5782 to i32
  %5784 = xor i32 %5783, %5771
  %5785 = lshr i32 %5784, 4
  %5786 = trunc i32 %5785 to i8
  %5787 = and i8 %5786, 1
  store i8 %5787, i8* %81, align 1, !tbaa !2447
  %5788 = icmp eq i32 %5771, 0
  %5789 = zext i1 %5788 to i8
  store i8 %5789, i8* %84, align 1, !tbaa !2448
  %5790 = lshr i32 %5771, 31
  %5791 = trunc i32 %5790 to i8
  store i8 %5791, i8* %87, align 1, !tbaa !2449
  %5792 = lshr i32 %5770, 31
  %5793 = xor i32 %5790, %5750
  %5794 = xor i32 %5790, %5792
  %5795 = add nuw nsw i32 %5793, %5794
  %5796 = icmp eq i32 %5795, 2
  %5797 = zext i1 %5796 to i8
  store i8 %5797, i8* %93, align 1, !tbaa !2450
  %5798 = add i64 %5752, -60
  %5799 = add i64 %5463, 149
  store i64 %5799, i64* %PC, align 8
  %5800 = inttoptr i64 %5798 to i32*
  %5801 = load i32, i32* %5800, align 4
  %5802 = add i32 %5801, %5771
  %5803 = zext i32 %5802 to i64
  store i64 %5803, i64* %RDX, align 8, !tbaa !2428
  %5804 = icmp ult i32 %5802, %5771
  %5805 = icmp ult i32 %5802, %5801
  %5806 = or i1 %5804, %5805
  %5807 = zext i1 %5806 to i8
  store i8 %5807, i8* %70, align 1, !tbaa !2432
  %5808 = and i32 %5802, 255
  %5809 = tail call i32 @llvm.ctpop.i32(i32 %5808) #8
  %5810 = trunc i32 %5809 to i8
  %5811 = and i8 %5810, 1
  %5812 = xor i8 %5811, 1
  store i8 %5812, i8* %76, align 1, !tbaa !2446
  %5813 = xor i32 %5801, %5771
  %5814 = xor i32 %5813, %5802
  %5815 = lshr i32 %5814, 4
  %5816 = trunc i32 %5815 to i8
  %5817 = and i8 %5816, 1
  store i8 %5817, i8* %81, align 1, !tbaa !2447
  %5818 = icmp eq i32 %5802, 0
  %5819 = zext i1 %5818 to i8
  store i8 %5819, i8* %84, align 1, !tbaa !2448
  %5820 = lshr i32 %5802, 31
  %5821 = trunc i32 %5820 to i8
  store i8 %5821, i8* %87, align 1, !tbaa !2449
  %5822 = lshr i32 %5801, 31
  %5823 = xor i32 %5820, %5790
  %5824 = xor i32 %5820, %5822
  %5825 = add nuw nsw i32 %5823, %5824
  %5826 = icmp eq i32 %5825, 2
  %5827 = zext i1 %5826 to i8
  store i8 %5827, i8* %93, align 1, !tbaa !2450
  %5828 = sext i32 %5802 to i64
  store i64 %5828, i64* %RCX, align 8, !tbaa !2428
  %5829 = load i64, i64* %RAX, align 8
  %5830 = shl nsw i64 %5828, 2
  %5831 = add i64 %5830, %5829
  %5832 = add i64 %5463, 157
  store i64 %5832, i64* %PC, align 8
  %5833 = load <2 x float>, <2 x float>* %192, align 1
  %5834 = load <2 x i32>, <2 x i32>* %197, align 1
  %5835 = inttoptr i64 %5831 to float*
  %5836 = load float, float* %5835, align 4
  %5837 = extractelement <2 x float> %5833, i32 0
  %5838 = fsub float %5837, %5836
  store float %5838, float* %193, align 1, !tbaa !2451
  %5839 = bitcast <2 x float> %5833 to <2 x i32>
  %5840 = extractelement <2 x i32> %5839, i32 1
  store i32 %5840, i32* %188, align 1, !tbaa !2451
  %5841 = extractelement <2 x i32> %5834, i32 0
  store i32 %5841, i32* %189, align 1, !tbaa !2451
  %5842 = extractelement <2 x i32> %5834, i32 1
  store i32 %5842, i32* %191, align 1, !tbaa !2451
  %5843 = load i64, i64* %RBP, align 8
  %5844 = add i64 %5843, -48
  %5845 = add i64 %5463, 161
  store i64 %5845, i64* %PC, align 8
  %5846 = inttoptr i64 %5844 to i64*
  %5847 = load i64, i64* %5846, align 8
  store i64 %5847, i64* %RAX, align 8, !tbaa !2428
  %5848 = add i64 %5463, 164
  store i64 %5848, i64* %PC, align 8
  %5849 = inttoptr i64 %5847 to i64*
  %5850 = load i64, i64* %5849, align 8
  store i64 %5850, i64* %RAX, align 8, !tbaa !2428
  %5851 = add i64 %5463, 168
  store i64 %5851, i64* %PC, align 8
  %5852 = load i64, i64* %5846, align 8
  store i64 %5852, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5853 = add i64 %5463, 176
  store i64 %5853, i64* %PC, align 8
  %5854 = load i64, i64* %5846, align 8
  store i64 %5854, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5855 = add i64 %5463, 184
  store i64 %5855, i64* %PC, align 8
  %5856 = load i64, i64* %5846, align 8
  store i64 %5856, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5857 = add i64 %5843, -52
  %5858 = add i64 %5463, 191
  store i64 %5858, i64* %PC, align 8
  %5859 = inttoptr i64 %5857 to i32*
  %5860 = load i32, i32* %5859, align 4
  %5861 = zext i32 %5860 to i64
  store i64 %5861, i64* %RSI, align 8, !tbaa !2428
  %5862 = add i64 %5463, 195
  store i64 %5862, i64* %PC, align 8
  %5863 = load i64, i64* %5846, align 8
  store i64 %5863, i64* %RCX, align 8, !tbaa !2428
  %5864 = add i64 %5863, 16
  %5865 = add i64 %5463, 199
  store i64 %5865, i64* %PC, align 8
  %5866 = inttoptr i64 %5864 to i32*
  %5867 = load i32, i32* %5866, align 4
  %5868 = sext i32 %5860 to i64
  %5869 = sext i32 %5867 to i64
  %5870 = mul nsw i64 %5869, %5868
  %5871 = trunc i64 %5870 to i32
  %5872 = and i64 %5870, 4294967295
  store i64 %5872, i64* %RSI, align 8, !tbaa !2428
  %5873 = shl i64 %5870, 32
  %5874 = ashr exact i64 %5873, 32
  %5875 = icmp ne i64 %5874, %5870
  %5876 = zext i1 %5875 to i8
  store i8 %5876, i8* %70, align 1, !tbaa !2432
  %5877 = and i32 %5871, 255
  %5878 = tail call i32 @llvm.ctpop.i32(i32 %5877) #8
  %5879 = trunc i32 %5878 to i8
  %5880 = and i8 %5879, 1
  %5881 = xor i8 %5880, 1
  store i8 %5881, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5882 = lshr i32 %5871, 31
  %5883 = trunc i32 %5882 to i8
  store i8 %5883, i8* %87, align 1, !tbaa !2449
  store i8 %5876, i8* %93, align 1, !tbaa !2450
  %5884 = add i64 %5463, 203
  store i64 %5884, i64* %PC, align 8
  %5885 = load i64, i64* %5846, align 8
  store i64 %5885, i64* %RCX, align 8, !tbaa !2428
  %5886 = add i64 %5885, 20
  %5887 = add i64 %5463, 207
  store i64 %5887, i64* %PC, align 8
  %5888 = inttoptr i64 %5886 to i32*
  %5889 = load i32, i32* %5888, align 4
  %5890 = sext i32 %5889 to i64
  %5891 = mul nsw i64 %5890, %5874
  %5892 = and i64 %5891, 4294967295
  store i64 %5892, i64* %RSI, align 8, !tbaa !2428
  %5893 = trunc i64 %5891 to i32
  store i64 %5892, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5894 = and i32 %5893, 255
  %5895 = tail call i32 @llvm.ctpop.i32(i32 %5894) #8
  %5896 = trunc i32 %5895 to i8
  %5897 = and i8 %5896, 1
  %5898 = xor i8 %5897, 1
  store i8 %5898, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5899 = icmp eq i32 %5893, 0
  %5900 = zext i1 %5899 to i8
  store i8 %5900, i8* %84, align 1, !tbaa !2448
  %5901 = lshr i32 %5893, 31
  %5902 = trunc i32 %5901 to i8
  store i8 %5902, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5903 = load i64, i64* %RBP, align 8
  %5904 = add i64 %5903, -56
  %5905 = add i64 %5463, 212
  store i64 %5905, i64* %PC, align 8
  %5906 = inttoptr i64 %5904 to i32*
  %5907 = load i32, i32* %5906, align 4
  %5908 = zext i32 %5907 to i64
  store i64 %5908, i64* %RSI, align 8, !tbaa !2428
  %5909 = add i64 %5903, -48
  %5910 = add i64 %5463, 216
  store i64 %5910, i64* %PC, align 8
  %5911 = inttoptr i64 %5909 to i64*
  %5912 = load i64, i64* %5911, align 8
  store i64 %5912, i64* %RCX, align 8, !tbaa !2428
  %5913 = add i64 %5912, 20
  %5914 = add i64 %5463, 220
  store i64 %5914, i64* %PC, align 8
  %5915 = inttoptr i64 %5913 to i32*
  %5916 = load i32, i32* %5915, align 4
  %5917 = sext i32 %5907 to i64
  %5918 = sext i32 %5916 to i64
  %5919 = mul nsw i64 %5918, %5917
  %5920 = and i64 %5919, 4294967295
  store i64 %5920, i64* %RSI, align 8, !tbaa !2428
  %5921 = trunc i64 %5919 to i32
  %5922 = add i32 %5921, %5893
  %5923 = zext i32 %5922 to i64
  store i64 %5923, i64* %RDX, align 8, !tbaa !2428
  %5924 = icmp ult i32 %5922, %5893
  %5925 = icmp ult i32 %5922, %5921
  %5926 = or i1 %5924, %5925
  %5927 = zext i1 %5926 to i8
  store i8 %5927, i8* %70, align 1, !tbaa !2432
  %5928 = and i32 %5922, 255
  %5929 = tail call i32 @llvm.ctpop.i32(i32 %5928) #8
  %5930 = trunc i32 %5929 to i8
  %5931 = and i8 %5930, 1
  %5932 = xor i8 %5931, 1
  store i8 %5932, i8* %76, align 1, !tbaa !2446
  %5933 = xor i64 %5919, %5891
  %5934 = trunc i64 %5933 to i32
  %5935 = xor i32 %5934, %5922
  %5936 = lshr i32 %5935, 4
  %5937 = trunc i32 %5936 to i8
  %5938 = and i8 %5937, 1
  store i8 %5938, i8* %81, align 1, !tbaa !2447
  %5939 = icmp eq i32 %5922, 0
  %5940 = zext i1 %5939 to i8
  store i8 %5940, i8* %84, align 1, !tbaa !2448
  %5941 = lshr i32 %5922, 31
  %5942 = trunc i32 %5941 to i8
  store i8 %5942, i8* %87, align 1, !tbaa !2449
  %5943 = lshr i32 %5921, 31
  %5944 = xor i32 %5941, %5901
  %5945 = xor i32 %5941, %5943
  %5946 = add nuw nsw i32 %5944, %5945
  %5947 = icmp eq i32 %5946, 2
  %5948 = zext i1 %5947 to i8
  store i8 %5948, i8* %93, align 1, !tbaa !2450
  %5949 = add i64 %5903, -60
  %5950 = add i64 %5463, 225
  store i64 %5950, i64* %PC, align 8
  %5951 = inttoptr i64 %5949 to i32*
  %5952 = load i32, i32* %5951, align 4
  %5953 = add i32 %5952, %5922
  %5954 = zext i32 %5953 to i64
  store i64 %5954, i64* %RDX, align 8, !tbaa !2428
  %5955 = icmp ult i32 %5953, %5922
  %5956 = icmp ult i32 %5953, %5952
  %5957 = or i1 %5955, %5956
  %5958 = zext i1 %5957 to i8
  store i8 %5958, i8* %70, align 1, !tbaa !2432
  %5959 = and i32 %5953, 255
  %5960 = tail call i32 @llvm.ctpop.i32(i32 %5959) #8
  %5961 = trunc i32 %5960 to i8
  %5962 = and i8 %5961, 1
  %5963 = xor i8 %5962, 1
  store i8 %5963, i8* %76, align 1, !tbaa !2446
  %5964 = xor i32 %5952, %5922
  %5965 = xor i32 %5964, %5953
  %5966 = lshr i32 %5965, 4
  %5967 = trunc i32 %5966 to i8
  %5968 = and i8 %5967, 1
  store i8 %5968, i8* %81, align 1, !tbaa !2447
  %5969 = icmp eq i32 %5953, 0
  %5970 = zext i1 %5969 to i8
  store i8 %5970, i8* %84, align 1, !tbaa !2448
  %5971 = lshr i32 %5953, 31
  %5972 = trunc i32 %5971 to i8
  store i8 %5972, i8* %87, align 1, !tbaa !2449
  %5973 = lshr i32 %5952, 31
  %5974 = xor i32 %5971, %5941
  %5975 = xor i32 %5971, %5973
  %5976 = add nuw nsw i32 %5974, %5975
  %5977 = icmp eq i32 %5976, 2
  %5978 = zext i1 %5977 to i8
  store i8 %5978, i8* %93, align 1, !tbaa !2450
  %5979 = sext i32 %5953 to i64
  store i64 %5979, i64* %RCX, align 8, !tbaa !2428
  %5980 = load i64, i64* %RAX, align 8
  %5981 = shl nsw i64 %5979, 2
  %5982 = add i64 %5981, %5980
  %5983 = add i64 %5463, 233
  store i64 %5983, i64* %PC, align 8
  %5984 = load <2 x float>, <2 x float>* %192, align 1
  %5985 = load <2 x i32>, <2 x i32>* %197, align 1
  %5986 = inttoptr i64 %5982 to float*
  %5987 = load float, float* %5986, align 4
  %5988 = extractelement <2 x float> %5984, i32 0
  %5989 = fmul float %5988, %5987
  store float %5989, float* %193, align 1, !tbaa !2451
  %5990 = bitcast <2 x float> %5984 to <2 x i32>
  %5991 = extractelement <2 x i32> %5990, i32 1
  store i32 %5991, i32* %188, align 1, !tbaa !2451
  %5992 = extractelement <2 x i32> %5985, i32 0
  store i32 %5992, i32* %189, align 1, !tbaa !2451
  %5993 = extractelement <2 x i32> %5985, i32 1
  store i32 %5993, i32* %191, align 1, !tbaa !2451
  %5994 = load i64, i64* %RBP, align 8
  %5995 = add i64 %5994, -88
  %5996 = add i64 %5463, 238
  store i64 %5996, i64* %PC, align 8
  %5997 = load <2 x float>, <2 x float>* %192, align 1
  %5998 = extractelement <2 x float> %5997, i32 0
  %5999 = inttoptr i64 %5995 to float*
  store float %5998, float* %5999, align 4
  %6000 = load i64, i64* %RBP, align 8
  %6001 = add i64 %6000, -88
  %6002 = load i64, i64* %PC, align 8
  %6003 = add i64 %6002, 5
  store i64 %6003, i64* %PC, align 8
  %6004 = inttoptr i64 %6001 to float*
  %6005 = inttoptr i64 %6001 to i32*
  %6006 = load i32, i32* %6005, align 4
  store i32 %6006, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %6007 = add i64 %6002, 10
  store i64 %6007, i64* %PC, align 8
  %6008 = load <2 x float>, <2 x float>* %192, align 1
  %6009 = load <2 x i32>, <2 x i32>* %197, align 1
  %6010 = load float, float* %6004, align 4
  %6011 = extractelement <2 x float> %6008, i32 0
  %6012 = fmul float %6011, %6010
  store float %6012, float* %193, align 1, !tbaa !2451
  %6013 = bitcast <2 x float> %6008 to <2 x i32>
  %6014 = extractelement <2 x i32> %6013, i32 1
  store i32 %6014, i32* %188, align 1, !tbaa !2451
  %6015 = extractelement <2 x i32> %6009, i32 0
  store i32 %6015, i32* %189, align 1, !tbaa !2451
  %6016 = extractelement <2 x i32> %6009, i32 1
  store i32 %6016, i32* %191, align 1, !tbaa !2451
  %6017 = add i64 %6000, -80
  %6018 = add i64 %6002, 15
  store i64 %6018, i64* %PC, align 8
  %6019 = load <2 x float>, <2 x float>* %192, align 1
  %6020 = load <2 x i32>, <2 x i32>* %197, align 1
  %6021 = inttoptr i64 %6017 to float*
  %6022 = load float, float* %6021, align 4
  %6023 = extractelement <2 x float> %6019, i32 0
  %6024 = fadd float %6023, %6022
  store float %6024, float* %193, align 1, !tbaa !2451
  %6025 = bitcast <2 x float> %6019 to <2 x i32>
  %6026 = extractelement <2 x i32> %6025, i32 1
  store i32 %6026, i32* %188, align 1, !tbaa !2451
  %6027 = extractelement <2 x i32> %6020, i32 0
  store i32 %6027, i32* %189, align 1, !tbaa !2451
  %6028 = extractelement <2 x i32> %6020, i32 1
  store i32 %6028, i32* %191, align 1, !tbaa !2451
  %6029 = add i64 %6002, 20
  store i64 %6029, i64* %PC, align 8
  %6030 = load <2 x float>, <2 x float>* %192, align 1
  %6031 = extractelement <2 x float> %6030, i32 0
  store float %6031, float* %6021, align 4
  %6032 = load i64, i64* %RBP, align 8
  %6033 = add i64 %6032, -40
  %6034 = load i64, i64* %PC, align 8
  %6035 = add i64 %6034, 4
  store i64 %6035, i64* %PC, align 8
  %6036 = inttoptr i64 %6033 to i64*
  %6037 = load i64, i64* %6036, align 8
  store i64 %6037, i64* %RAX, align 8, !tbaa !2428
  %6038 = add i64 %6034, 7
  store i64 %6038, i64* %PC, align 8
  %6039 = inttoptr i64 %6037 to i64*
  %6040 = load i64, i64* %6039, align 8
  store i64 %6040, i64* %RAX, align 8, !tbaa !2428
  %6041 = add i64 %6034, 11
  store i64 %6041, i64* %PC, align 8
  %6042 = load i64, i64* %6036, align 8
  store i64 %6042, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6043 = add i64 %6034, 19
  store i64 %6043, i64* %PC, align 8
  %6044 = load i64, i64* %6036, align 8
  store i64 %6044, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6045 = add i64 %6034, 27
  store i64 %6045, i64* %PC, align 8
  %6046 = load i64, i64* %6036, align 8
  store i64 %6046, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6047 = add i64 %6032, -52
  %6048 = add i64 %6034, 34
  store i64 %6048, i64* %PC, align 8
  %6049 = inttoptr i64 %6047 to i32*
  %6050 = load i32, i32* %6049, align 4
  %6051 = zext i32 %6050 to i64
  store i64 %6051, i64* %RSI, align 8, !tbaa !2428
  %6052 = add i64 %6034, 38
  store i64 %6052, i64* %PC, align 8
  %6053 = load i64, i64* %6036, align 8
  store i64 %6053, i64* %RCX, align 8, !tbaa !2428
  %6054 = add i64 %6053, 16
  %6055 = add i64 %6034, 42
  store i64 %6055, i64* %PC, align 8
  %6056 = inttoptr i64 %6054 to i32*
  %6057 = load i32, i32* %6056, align 4
  %6058 = sext i32 %6050 to i64
  %6059 = sext i32 %6057 to i64
  %6060 = mul nsw i64 %6059, %6058
  %6061 = trunc i64 %6060 to i32
  %6062 = and i64 %6060, 4294967295
  store i64 %6062, i64* %RSI, align 8, !tbaa !2428
  %6063 = shl i64 %6060, 32
  %6064 = ashr exact i64 %6063, 32
  %6065 = icmp ne i64 %6064, %6060
  %6066 = zext i1 %6065 to i8
  store i8 %6066, i8* %70, align 1, !tbaa !2432
  %6067 = and i32 %6061, 255
  %6068 = tail call i32 @llvm.ctpop.i32(i32 %6067) #8
  %6069 = trunc i32 %6068 to i8
  %6070 = and i8 %6069, 1
  %6071 = xor i8 %6070, 1
  store i8 %6071, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6072 = lshr i32 %6061, 31
  %6073 = trunc i32 %6072 to i8
  store i8 %6073, i8* %87, align 1, !tbaa !2449
  store i8 %6066, i8* %93, align 1, !tbaa !2450
  %6074 = add i64 %6034, 46
  store i64 %6074, i64* %PC, align 8
  %6075 = load i64, i64* %6036, align 8
  store i64 %6075, i64* %RCX, align 8, !tbaa !2428
  %6076 = add i64 %6075, 20
  %6077 = add i64 %6034, 50
  store i64 %6077, i64* %PC, align 8
  %6078 = inttoptr i64 %6076 to i32*
  %6079 = load i32, i32* %6078, align 4
  %6080 = sext i32 %6079 to i64
  %6081 = mul nsw i64 %6080, %6064
  %6082 = and i64 %6081, 4294967295
  store i64 %6082, i64* %RSI, align 8, !tbaa !2428
  %6083 = trunc i64 %6081 to i32
  store i64 %6082, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6084 = and i32 %6083, 255
  %6085 = tail call i32 @llvm.ctpop.i32(i32 %6084) #8
  %6086 = trunc i32 %6085 to i8
  %6087 = and i8 %6086, 1
  %6088 = xor i8 %6087, 1
  store i8 %6088, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6089 = icmp eq i32 %6083, 0
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %84, align 1, !tbaa !2448
  %6091 = lshr i32 %6083, 31
  %6092 = trunc i32 %6091 to i8
  store i8 %6092, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6093 = add i64 %6032, -56
  %6094 = add i64 %6034, 55
  store i64 %6094, i64* %PC, align 8
  %6095 = inttoptr i64 %6093 to i32*
  %6096 = load i32, i32* %6095, align 4
  %6097 = zext i32 %6096 to i64
  store i64 %6097, i64* %RSI, align 8, !tbaa !2428
  %6098 = add i64 %6034, 59
  store i64 %6098, i64* %PC, align 8
  %6099 = load i64, i64* %6036, align 8
  store i64 %6099, i64* %RCX, align 8, !tbaa !2428
  %6100 = add i64 %6099, 20
  %6101 = add i64 %6034, 63
  store i64 %6101, i64* %PC, align 8
  %6102 = inttoptr i64 %6100 to i32*
  %6103 = load i32, i32* %6102, align 4
  %6104 = sext i32 %6096 to i64
  %6105 = sext i32 %6103 to i64
  %6106 = mul nsw i64 %6105, %6104
  %6107 = and i64 %6106, 4294967295
  store i64 %6107, i64* %RSI, align 8, !tbaa !2428
  %6108 = trunc i64 %6106 to i32
  %6109 = add i32 %6108, %6083
  %6110 = zext i32 %6109 to i64
  store i64 %6110, i64* %RDX, align 8, !tbaa !2428
  %6111 = icmp ult i32 %6109, %6083
  %6112 = icmp ult i32 %6109, %6108
  %6113 = or i1 %6111, %6112
  %6114 = zext i1 %6113 to i8
  store i8 %6114, i8* %70, align 1, !tbaa !2432
  %6115 = and i32 %6109, 255
  %6116 = tail call i32 @llvm.ctpop.i32(i32 %6115) #8
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  %6119 = xor i8 %6118, 1
  store i8 %6119, i8* %76, align 1, !tbaa !2446
  %6120 = xor i64 %6106, %6081
  %6121 = trunc i64 %6120 to i32
  %6122 = xor i32 %6121, %6109
  %6123 = lshr i32 %6122, 4
  %6124 = trunc i32 %6123 to i8
  %6125 = and i8 %6124, 1
  store i8 %6125, i8* %81, align 1, !tbaa !2447
  %6126 = icmp eq i32 %6109, 0
  %6127 = zext i1 %6126 to i8
  store i8 %6127, i8* %84, align 1, !tbaa !2448
  %6128 = lshr i32 %6109, 31
  %6129 = trunc i32 %6128 to i8
  store i8 %6129, i8* %87, align 1, !tbaa !2449
  %6130 = lshr i32 %6108, 31
  %6131 = xor i32 %6128, %6091
  %6132 = xor i32 %6128, %6130
  %6133 = add nuw nsw i32 %6131, %6132
  %6134 = icmp eq i32 %6133, 2
  %6135 = zext i1 %6134 to i8
  store i8 %6135, i8* %93, align 1, !tbaa !2450
  %6136 = load i64, i64* %RBP, align 8
  %6137 = add i64 %6136, -60
  %6138 = add i64 %6034, 68
  store i64 %6138, i64* %PC, align 8
  %6139 = inttoptr i64 %6137 to i32*
  %6140 = load i32, i32* %6139, align 4
  %6141 = add i32 %6140, %6109
  %6142 = zext i32 %6141 to i64
  store i64 %6142, i64* %RDX, align 8, !tbaa !2428
  %6143 = icmp ult i32 %6141, %6109
  %6144 = icmp ult i32 %6141, %6140
  %6145 = or i1 %6143, %6144
  %6146 = zext i1 %6145 to i8
  store i8 %6146, i8* %70, align 1, !tbaa !2432
  %6147 = and i32 %6141, 255
  %6148 = tail call i32 @llvm.ctpop.i32(i32 %6147) #8
  %6149 = trunc i32 %6148 to i8
  %6150 = and i8 %6149, 1
  %6151 = xor i8 %6150, 1
  store i8 %6151, i8* %76, align 1, !tbaa !2446
  %6152 = xor i32 %6140, %6109
  %6153 = xor i32 %6152, %6141
  %6154 = lshr i32 %6153, 4
  %6155 = trunc i32 %6154 to i8
  %6156 = and i8 %6155, 1
  store i8 %6156, i8* %81, align 1, !tbaa !2447
  %6157 = icmp eq i32 %6141, 0
  %6158 = zext i1 %6157 to i8
  store i8 %6158, i8* %84, align 1, !tbaa !2448
  %6159 = lshr i32 %6141, 31
  %6160 = trunc i32 %6159 to i8
  store i8 %6160, i8* %87, align 1, !tbaa !2449
  %6161 = lshr i32 %6140, 31
  %6162 = xor i32 %6159, %6128
  %6163 = xor i32 %6159, %6161
  %6164 = add nuw nsw i32 %6162, %6163
  %6165 = icmp eq i32 %6164, 2
  %6166 = zext i1 %6165 to i8
  store i8 %6166, i8* %93, align 1, !tbaa !2450
  %6167 = sext i32 %6141 to i64
  store i64 %6167, i64* %RCX, align 8, !tbaa !2428
  %6168 = load i64, i64* %RAX, align 8
  %6169 = shl nsw i64 %6167, 2
  %6170 = add i64 %6169, %6168
  %6171 = add i64 %6034, 76
  store i64 %6171, i64* %PC, align 8
  %6172 = inttoptr i64 %6170 to i32*
  %6173 = load i32, i32* %6172, align 4
  store i32 %6173, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %6174 = load i32, i32* bitcast (%omega_type* @omega to i32*), align 8
  store i32 %6174, i32* %841, align 1, !tbaa !2451
  store float 0.000000e+00, float* %201, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  %6175 = add i64 %6136, -88
  %6176 = add i64 %6034, 90
  store i64 %6176, i64* %PC, align 8
  %6177 = load <2 x float>, <2 x float>* %206, align 1
  %6178 = load <2 x i32>, <2 x i32>* %207, align 1
  %6179 = inttoptr i64 %6175 to float*
  %6180 = load float, float* %6179, align 4
  %6181 = extractelement <2 x float> %6177, i32 0
  %6182 = fmul float %6181, %6180
  store float %6182, float* %199, align 1, !tbaa !2451
  %6183 = bitcast <2 x float> %6177 to <2 x i32>
  %6184 = extractelement <2 x i32> %6183, i32 1
  store i32 %6184, i32* %208, align 1, !tbaa !2451
  %6185 = extractelement <2 x i32> %6178, i32 0
  store i32 %6185, i32* %209, align 1, !tbaa !2451
  %6186 = extractelement <2 x i32> %6178, i32 1
  store i32 %6186, i32* %210, align 1, !tbaa !2451
  %6187 = load <2 x float>, <2 x float>* %192, align 1
  %6188 = load <2 x i32>, <2 x i32>* %197, align 1
  %6189 = load <2 x float>, <2 x float>* %206, align 1
  %6190 = extractelement <2 x float> %6187, i32 0
  %6191 = extractelement <2 x float> %6189, i32 0
  %6192 = fadd float %6190, %6191
  store float %6192, float* %193, align 1, !tbaa !2451
  %6193 = bitcast <2 x float> %6187 to <2 x i32>
  %6194 = extractelement <2 x i32> %6193, i32 1
  store i32 %6194, i32* %188, align 1, !tbaa !2451
  %6195 = extractelement <2 x i32> %6188, i32 0
  store i32 %6195, i32* %189, align 1, !tbaa !2451
  %6196 = extractelement <2 x i32> %6188, i32 1
  store i32 %6196, i32* %191, align 1, !tbaa !2451
  %6197 = add i64 %6136, 24
  %6198 = add i64 %6034, 98
  store i64 %6198, i64* %PC, align 8
  %6199 = inttoptr i64 %6197 to i64*
  %6200 = load i64, i64* %6199, align 8
  store i64 %6200, i64* %RAX, align 8, !tbaa !2428
  %6201 = add i64 %6034, 101
  store i64 %6201, i64* %PC, align 8
  %6202 = inttoptr i64 %6200 to i64*
  %6203 = load i64, i64* %6202, align 8
  store i64 %6203, i64* %RAX, align 8, !tbaa !2428
  %6204 = add i64 %6034, 105
  store i64 %6204, i64* %PC, align 8
  %6205 = load i64, i64* %6199, align 8
  store i64 %6205, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6206 = add i64 %6034, 113
  store i64 %6206, i64* %PC, align 8
  %6207 = load i64, i64* %6199, align 8
  store i64 %6207, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6208 = add i64 %6034, 121
  store i64 %6208, i64* %PC, align 8
  %6209 = load i64, i64* %6199, align 8
  store i64 %6209, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6210 = add i64 %6136, -52
  %6211 = add i64 %6034, 128
  store i64 %6211, i64* %PC, align 8
  %6212 = inttoptr i64 %6210 to i32*
  %6213 = load i32, i32* %6212, align 4
  %6214 = zext i32 %6213 to i64
  store i64 %6214, i64* %RSI, align 8, !tbaa !2428
  %6215 = add i64 %6034, 132
  store i64 %6215, i64* %PC, align 8
  %6216 = load i64, i64* %6199, align 8
  store i64 %6216, i64* %RCX, align 8, !tbaa !2428
  %6217 = add i64 %6216, 16
  %6218 = add i64 %6034, 136
  store i64 %6218, i64* %PC, align 8
  %6219 = inttoptr i64 %6217 to i32*
  %6220 = load i32, i32* %6219, align 4
  %6221 = sext i32 %6213 to i64
  %6222 = sext i32 %6220 to i64
  %6223 = mul nsw i64 %6222, %6221
  %6224 = trunc i64 %6223 to i32
  %6225 = and i64 %6223, 4294967295
  store i64 %6225, i64* %RSI, align 8, !tbaa !2428
  %6226 = shl i64 %6223, 32
  %6227 = ashr exact i64 %6226, 32
  %6228 = icmp ne i64 %6227, %6223
  %6229 = zext i1 %6228 to i8
  store i8 %6229, i8* %70, align 1, !tbaa !2432
  %6230 = and i32 %6224, 255
  %6231 = tail call i32 @llvm.ctpop.i32(i32 %6230) #8
  %6232 = trunc i32 %6231 to i8
  %6233 = and i8 %6232, 1
  %6234 = xor i8 %6233, 1
  store i8 %6234, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6235 = lshr i32 %6224, 31
  %6236 = trunc i32 %6235 to i8
  store i8 %6236, i8* %87, align 1, !tbaa !2449
  store i8 %6229, i8* %93, align 1, !tbaa !2450
  %6237 = add i64 %6034, 140
  store i64 %6237, i64* %PC, align 8
  %6238 = load i64, i64* %6199, align 8
  store i64 %6238, i64* %RCX, align 8, !tbaa !2428
  %6239 = add i64 %6238, 20
  %6240 = add i64 %6034, 144
  store i64 %6240, i64* %PC, align 8
  %6241 = inttoptr i64 %6239 to i32*
  %6242 = load i32, i32* %6241, align 4
  %6243 = sext i32 %6242 to i64
  %6244 = mul nsw i64 %6243, %6227
  %6245 = and i64 %6244, 4294967295
  store i64 %6245, i64* %RSI, align 8, !tbaa !2428
  %6246 = trunc i64 %6244 to i32
  store i64 %6245, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6247 = and i32 %6246, 255
  %6248 = tail call i32 @llvm.ctpop.i32(i32 %6247) #8
  %6249 = trunc i32 %6248 to i8
  %6250 = and i8 %6249, 1
  %6251 = xor i8 %6250, 1
  store i8 %6251, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6252 = icmp eq i32 %6246, 0
  %6253 = zext i1 %6252 to i8
  store i8 %6253, i8* %84, align 1, !tbaa !2448
  %6254 = lshr i32 %6246, 31
  %6255 = trunc i32 %6254 to i8
  store i8 %6255, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6256 = load i64, i64* %RBP, align 8
  %6257 = add i64 %6256, -56
  %6258 = add i64 %6034, 149
  store i64 %6258, i64* %PC, align 8
  %6259 = inttoptr i64 %6257 to i32*
  %6260 = load i32, i32* %6259, align 4
  %6261 = zext i32 %6260 to i64
  store i64 %6261, i64* %RSI, align 8, !tbaa !2428
  %6262 = add i64 %6256, 24
  %6263 = add i64 %6034, 153
  store i64 %6263, i64* %PC, align 8
  %6264 = inttoptr i64 %6262 to i64*
  %6265 = load i64, i64* %6264, align 8
  store i64 %6265, i64* %RCX, align 8, !tbaa !2428
  %6266 = add i64 %6265, 20
  %6267 = add i64 %6034, 157
  store i64 %6267, i64* %PC, align 8
  %6268 = inttoptr i64 %6266 to i32*
  %6269 = load i32, i32* %6268, align 4
  %6270 = sext i32 %6260 to i64
  %6271 = sext i32 %6269 to i64
  %6272 = mul nsw i64 %6271, %6270
  %6273 = and i64 %6272, 4294967295
  store i64 %6273, i64* %RSI, align 8, !tbaa !2428
  %6274 = trunc i64 %6272 to i32
  %6275 = add i32 %6274, %6246
  %6276 = zext i32 %6275 to i64
  store i64 %6276, i64* %RDX, align 8, !tbaa !2428
  %6277 = icmp ult i32 %6275, %6246
  %6278 = icmp ult i32 %6275, %6274
  %6279 = or i1 %6277, %6278
  %6280 = zext i1 %6279 to i8
  store i8 %6280, i8* %70, align 1, !tbaa !2432
  %6281 = and i32 %6275, 255
  %6282 = tail call i32 @llvm.ctpop.i32(i32 %6281) #8
  %6283 = trunc i32 %6282 to i8
  %6284 = and i8 %6283, 1
  %6285 = xor i8 %6284, 1
  store i8 %6285, i8* %76, align 1, !tbaa !2446
  %6286 = xor i64 %6272, %6244
  %6287 = trunc i64 %6286 to i32
  %6288 = xor i32 %6287, %6275
  %6289 = lshr i32 %6288, 4
  %6290 = trunc i32 %6289 to i8
  %6291 = and i8 %6290, 1
  store i8 %6291, i8* %81, align 1, !tbaa !2447
  %6292 = icmp eq i32 %6275, 0
  %6293 = zext i1 %6292 to i8
  store i8 %6293, i8* %84, align 1, !tbaa !2448
  %6294 = lshr i32 %6275, 31
  %6295 = trunc i32 %6294 to i8
  store i8 %6295, i8* %87, align 1, !tbaa !2449
  %6296 = lshr i32 %6274, 31
  %6297 = xor i32 %6294, %6254
  %6298 = xor i32 %6294, %6296
  %6299 = add nuw nsw i32 %6297, %6298
  %6300 = icmp eq i32 %6299, 2
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %93, align 1, !tbaa !2450
  %6302 = add i64 %6256, -60
  %6303 = add i64 %6034, 162
  store i64 %6303, i64* %PC, align 8
  %6304 = inttoptr i64 %6302 to i32*
  %6305 = load i32, i32* %6304, align 4
  %6306 = add i32 %6305, %6275
  %6307 = zext i32 %6306 to i64
  store i64 %6307, i64* %RDX, align 8, !tbaa !2428
  %6308 = icmp ult i32 %6306, %6275
  %6309 = icmp ult i32 %6306, %6305
  %6310 = or i1 %6308, %6309
  %6311 = zext i1 %6310 to i8
  store i8 %6311, i8* %70, align 1, !tbaa !2432
  %6312 = and i32 %6306, 255
  %6313 = tail call i32 @llvm.ctpop.i32(i32 %6312) #8
  %6314 = trunc i32 %6313 to i8
  %6315 = and i8 %6314, 1
  %6316 = xor i8 %6315, 1
  store i8 %6316, i8* %76, align 1, !tbaa !2446
  %6317 = xor i32 %6305, %6275
  %6318 = xor i32 %6317, %6306
  %6319 = lshr i32 %6318, 4
  %6320 = trunc i32 %6319 to i8
  %6321 = and i8 %6320, 1
  store i8 %6321, i8* %81, align 1, !tbaa !2447
  %6322 = icmp eq i32 %6306, 0
  %6323 = zext i1 %6322 to i8
  store i8 %6323, i8* %84, align 1, !tbaa !2448
  %6324 = lshr i32 %6306, 31
  %6325 = trunc i32 %6324 to i8
  store i8 %6325, i8* %87, align 1, !tbaa !2449
  %6326 = lshr i32 %6305, 31
  %6327 = xor i32 %6324, %6294
  %6328 = xor i32 %6324, %6326
  %6329 = add nuw nsw i32 %6327, %6328
  %6330 = icmp eq i32 %6329, 2
  %6331 = zext i1 %6330 to i8
  store i8 %6331, i8* %93, align 1, !tbaa !2450
  %6332 = sext i32 %6306 to i64
  store i64 %6332, i64* %RCX, align 8, !tbaa !2428
  %6333 = load i64, i64* %RAX, align 8
  %6334 = shl nsw i64 %6332, 2
  %6335 = add i64 %6334, %6333
  %6336 = add i64 %6034, 170
  store i64 %6336, i64* %PC, align 8
  %6337 = load <2 x float>, <2 x float>* %192, align 1
  %6338 = extractelement <2 x float> %6337, i32 0
  %6339 = inttoptr i64 %6335 to float*
  store float %6338, float* %6339, align 4
  %6340 = load i64, i64* %RBP, align 8
  %6341 = add i64 %6340, -60
  %6342 = load i64, i64* %PC, align 8
  %6343 = add i64 %6342, 3
  store i64 %6343, i64* %PC, align 8
  %6344 = inttoptr i64 %6341 to i32*
  %6345 = load i32, i32* %6344, align 4
  %6346 = add i32 %6345, 1
  %6347 = zext i32 %6346 to i64
  store i64 %6347, i64* %RAX, align 8, !tbaa !2428
  %6348 = icmp eq i32 %6345, -1
  %6349 = icmp eq i32 %6346, 0
  %6350 = or i1 %6348, %6349
  %6351 = zext i1 %6350 to i8
  store i8 %6351, i8* %70, align 1, !tbaa !2432
  %6352 = and i32 %6346, 255
  %6353 = tail call i32 @llvm.ctpop.i32(i32 %6352) #8
  %6354 = trunc i32 %6353 to i8
  %6355 = and i8 %6354, 1
  %6356 = xor i8 %6355, 1
  store i8 %6356, i8* %76, align 1, !tbaa !2446
  %6357 = xor i32 %6345, %6346
  %6358 = lshr i32 %6357, 4
  %6359 = trunc i32 %6358 to i8
  %6360 = and i8 %6359, 1
  store i8 %6360, i8* %81, align 1, !tbaa !2447
  %6361 = zext i1 %6349 to i8
  store i8 %6361, i8* %84, align 1, !tbaa !2448
  %6362 = lshr i32 %6346, 31
  %6363 = trunc i32 %6362 to i8
  store i8 %6363, i8* %87, align 1, !tbaa !2449
  %6364 = lshr i32 %6345, 31
  %6365 = xor i32 %6362, %6364
  %6366 = add nuw nsw i32 %6365, %6362
  %6367 = icmp eq i32 %6366, 2
  %6368 = zext i1 %6367 to i8
  store i8 %6368, i8* %93, align 1, !tbaa !2450
  %6369 = add i64 %6342, 9
  store i64 %6369, i64* %PC, align 8
  store i32 %6346, i32* %6344, align 4
  %6370 = load i64, i64* %PC, align 8
  %6371 = add i64 %6370, -2748
  store i64 %6371, i64* %PC, align 8, !tbaa !2428
  br label %block_400d6a

block_401858:                                     ; preds = %block_401943, %block_401851
  %6372 = phi i64 [ %6546, %block_401943 ], [ %.pre5, %block_401851 ]
  %6373 = load i64, i64* %RBP, align 8
  %6374 = add i64 %6373, -52
  %6375 = add i64 %6372, 3
  store i64 %6375, i64* %PC, align 8
  %6376 = inttoptr i64 %6374 to i32*
  %6377 = load i32, i32* %6376, align 4
  %6378 = zext i32 %6377 to i64
  store i64 %6378, i64* %RAX, align 8, !tbaa !2428
  %6379 = add i64 %6373, -68
  %6380 = add i64 %6372, 6
  store i64 %6380, i64* %PC, align 8
  %6381 = inttoptr i64 %6379 to i32*
  %6382 = load i32, i32* %6381, align 4
  %6383 = sub i32 %6377, %6382
  %6384 = icmp ult i32 %6377, %6382
  %6385 = zext i1 %6384 to i8
  store i8 %6385, i8* %70, align 1, !tbaa !2432
  %6386 = and i32 %6383, 255
  %6387 = tail call i32 @llvm.ctpop.i32(i32 %6386) #8
  %6388 = trunc i32 %6387 to i8
  %6389 = and i8 %6388, 1
  %6390 = xor i8 %6389, 1
  store i8 %6390, i8* %76, align 1, !tbaa !2446
  %6391 = xor i32 %6382, %6377
  %6392 = xor i32 %6391, %6383
  %6393 = lshr i32 %6392, 4
  %6394 = trunc i32 %6393 to i8
  %6395 = and i8 %6394, 1
  store i8 %6395, i8* %81, align 1, !tbaa !2447
  %6396 = icmp eq i32 %6383, 0
  %6397 = zext i1 %6396 to i8
  store i8 %6397, i8* %84, align 1, !tbaa !2448
  %6398 = lshr i32 %6383, 31
  %6399 = trunc i32 %6398 to i8
  store i8 %6399, i8* %87, align 1, !tbaa !2449
  %6400 = lshr i32 %6377, 31
  %6401 = lshr i32 %6382, 31
  %6402 = xor i32 %6401, %6400
  %6403 = xor i32 %6398, %6400
  %6404 = add nuw nsw i32 %6403, %6402
  %6405 = icmp eq i32 %6404, 2
  %6406 = zext i1 %6405 to i8
  store i8 %6406, i8* %93, align 1, !tbaa !2450
  %6407 = icmp ne i8 %6399, 0
  %6408 = xor i1 %6407, %6405
  %.v13 = select i1 %6408, i64 12, i64 254
  %6409 = add i64 %6372, %.v13
  store i64 %6409, i64* %PC, align 8, !tbaa !2428
  br i1 %6408, label %block_401864, label %block_401956

block_400d57:                                     ; preds = %block_400d50, %block_40182b
  %6410 = phi i64 [ %.pre3, %block_400d50 ], [ %6654, %block_40182b ]
  %6411 = load i64, i64* %RBP, align 8
  %6412 = add i64 %6411, -56
  %6413 = add i64 %6410, 3
  store i64 %6413, i64* %PC, align 8
  %6414 = inttoptr i64 %6412 to i32*
  %6415 = load i32, i32* %6414, align 4
  %6416 = zext i32 %6415 to i64
  store i64 %6416, i64* %RAX, align 8, !tbaa !2428
  %6417 = add i64 %6411, -72
  %6418 = add i64 %6410, 6
  store i64 %6418, i64* %PC, align 8
  %6419 = inttoptr i64 %6417 to i32*
  %6420 = load i32, i32* %6419, align 4
  %6421 = sub i32 %6415, %6420
  %6422 = icmp ult i32 %6415, %6420
  %6423 = zext i1 %6422 to i8
  store i8 %6423, i8* %70, align 1, !tbaa !2432
  %6424 = and i32 %6421, 255
  %6425 = tail call i32 @llvm.ctpop.i32(i32 %6424) #8
  %6426 = trunc i32 %6425 to i8
  %6427 = and i8 %6426, 1
  %6428 = xor i8 %6427, 1
  store i8 %6428, i8* %76, align 1, !tbaa !2446
  %6429 = xor i32 %6420, %6415
  %6430 = xor i32 %6429, %6421
  %6431 = lshr i32 %6430, 4
  %6432 = trunc i32 %6431 to i8
  %6433 = and i8 %6432, 1
  store i8 %6433, i8* %81, align 1, !tbaa !2447
  %6434 = icmp eq i32 %6421, 0
  %6435 = zext i1 %6434 to i8
  store i8 %6435, i8* %84, align 1, !tbaa !2448
  %6436 = lshr i32 %6421, 31
  %6437 = trunc i32 %6436 to i8
  store i8 %6437, i8* %87, align 1, !tbaa !2449
  %6438 = lshr i32 %6415, 31
  %6439 = lshr i32 %6420, 31
  %6440 = xor i32 %6439, %6438
  %6441 = xor i32 %6436, %6438
  %6442 = add nuw nsw i32 %6441, %6440
  %6443 = icmp eq i32 %6442, 2
  %6444 = zext i1 %6443 to i8
  store i8 %6444, i8* %93, align 1, !tbaa !2450
  %6445 = icmp ne i8 %6437, 0
  %6446 = xor i1 %6445, %6443
  %.v9 = select i1 %6446, i64 12, i64 2791
  %6447 = add i64 %6410, %.v9
  store i64 %6447, i64* %PC, align 8, !tbaa !2428
  br i1 %6446, label %block_400d63, label %block_40183e

block_401956:                                     ; preds = %block_401858
  %6448 = add i64 %6373, -64
  %6449 = add i64 %6409, 8
  store i64 %6449, i64* %PC, align 8
  %6450 = inttoptr i64 %6448 to i32*
  %6451 = load i32, i32* %6450, align 4
  %6452 = add i32 %6451, 1
  %6453 = zext i32 %6452 to i64
  store i64 %6453, i64* %RAX, align 8, !tbaa !2428
  %6454 = icmp eq i32 %6451, -1
  %6455 = icmp eq i32 %6452, 0
  %6456 = or i1 %6454, %6455
  %6457 = zext i1 %6456 to i8
  store i8 %6457, i8* %70, align 1, !tbaa !2432
  %6458 = and i32 %6452, 255
  %6459 = tail call i32 @llvm.ctpop.i32(i32 %6458) #8
  %6460 = trunc i32 %6459 to i8
  %6461 = and i8 %6460, 1
  %6462 = xor i8 %6461, 1
  store i8 %6462, i8* %76, align 1, !tbaa !2446
  %6463 = xor i32 %6451, %6452
  %6464 = lshr i32 %6463, 4
  %6465 = trunc i32 %6464 to i8
  %6466 = and i8 %6465, 1
  store i8 %6466, i8* %81, align 1, !tbaa !2447
  %6467 = zext i1 %6455 to i8
  store i8 %6467, i8* %84, align 1, !tbaa !2448
  %6468 = lshr i32 %6452, 31
  %6469 = trunc i32 %6468 to i8
  store i8 %6469, i8* %87, align 1, !tbaa !2449
  %6470 = lshr i32 %6451, 31
  %6471 = xor i32 %6468, %6470
  %6472 = add nuw nsw i32 %6471, %6468
  %6473 = icmp eq i32 %6472, 2
  %6474 = zext i1 %6473 to i8
  store i8 %6474, i8* %93, align 1, !tbaa !2450
  %6475 = add i64 %6409, 14
  store i64 %6475, i64* %PC, align 8
  store i32 %6452, i32* %6450, align 4
  %6476 = load i64, i64* %PC, align 8
  %6477 = add i64 %6476, -3131
  store i64 %6477, i64* %PC, align 8, !tbaa !2428
  br label %block_400d29

block_401851:                                     ; preds = %block_400d44
  %6478 = add i64 %6516, 7
  store i64 %6478, i64* %PC, align 8
  store i32 1, i32* %6483, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401858

block_400d44:                                     ; preds = %block_400d35, %block_40183e
  %6479 = phi i64 [ %.pre2, %block_400d35 ], [ %6576, %block_40183e ]
  %6480 = load i64, i64* %RBP, align 8
  %6481 = add i64 %6480, -52
  %6482 = add i64 %6479, 3
  store i64 %6482, i64* %PC, align 8
  %6483 = inttoptr i64 %6481 to i32*
  %6484 = load i32, i32* %6483, align 4
  %6485 = zext i32 %6484 to i64
  store i64 %6485, i64* %RAX, align 8, !tbaa !2428
  %6486 = add i64 %6480, -68
  %6487 = add i64 %6479, 6
  store i64 %6487, i64* %PC, align 8
  %6488 = inttoptr i64 %6486 to i32*
  %6489 = load i32, i32* %6488, align 4
  %6490 = sub i32 %6484, %6489
  %6491 = icmp ult i32 %6484, %6489
  %6492 = zext i1 %6491 to i8
  store i8 %6492, i8* %70, align 1, !tbaa !2432
  %6493 = and i32 %6490, 255
  %6494 = tail call i32 @llvm.ctpop.i32(i32 %6493) #8
  %6495 = trunc i32 %6494 to i8
  %6496 = and i8 %6495, 1
  %6497 = xor i8 %6496, 1
  store i8 %6497, i8* %76, align 1, !tbaa !2446
  %6498 = xor i32 %6489, %6484
  %6499 = xor i32 %6498, %6490
  %6500 = lshr i32 %6499, 4
  %6501 = trunc i32 %6500 to i8
  %6502 = and i8 %6501, 1
  store i8 %6502, i8* %81, align 1, !tbaa !2447
  %6503 = icmp eq i32 %6490, 0
  %6504 = zext i1 %6503 to i8
  store i8 %6504, i8* %84, align 1, !tbaa !2448
  %6505 = lshr i32 %6490, 31
  %6506 = trunc i32 %6505 to i8
  store i8 %6506, i8* %87, align 1, !tbaa !2449
  %6507 = lshr i32 %6484, 31
  %6508 = lshr i32 %6489, 31
  %6509 = xor i32 %6508, %6507
  %6510 = xor i32 %6505, %6507
  %6511 = add nuw nsw i32 %6510, %6509
  %6512 = icmp eq i32 %6511, 2
  %6513 = zext i1 %6512 to i8
  store i8 %6513, i8* %93, align 1, !tbaa !2450
  %6514 = icmp ne i8 %6506, 0
  %6515 = xor i1 %6514, %6512
  %.v8 = select i1 %6515, i64 12, i64 2829
  %6516 = add i64 %6479, %.v8
  store i64 %6516, i64* %PC, align 8, !tbaa !2428
  br i1 %6515, label %block_400d50, label %block_401851

block_401943:                                     ; preds = %block_40186b
  %6517 = add i64 %266, -52
  %6518 = add i64 %302, 8
  store i64 %6518, i64* %PC, align 8
  %6519 = inttoptr i64 %6517 to i32*
  %6520 = load i32, i32* %6519, align 4
  %6521 = add i32 %6520, 1
  %6522 = zext i32 %6521 to i64
  store i64 %6522, i64* %RAX, align 8, !tbaa !2428
  %6523 = icmp eq i32 %6520, -1
  %6524 = icmp eq i32 %6521, 0
  %6525 = or i1 %6523, %6524
  %6526 = zext i1 %6525 to i8
  store i8 %6526, i8* %70, align 1, !tbaa !2432
  %6527 = and i32 %6521, 255
  %6528 = tail call i32 @llvm.ctpop.i32(i32 %6527) #8
  %6529 = trunc i32 %6528 to i8
  %6530 = and i8 %6529, 1
  %6531 = xor i8 %6530, 1
  store i8 %6531, i8* %76, align 1, !tbaa !2446
  %6532 = xor i32 %6520, %6521
  %6533 = lshr i32 %6532, 4
  %6534 = trunc i32 %6533 to i8
  %6535 = and i8 %6534, 1
  store i8 %6535, i8* %81, align 1, !tbaa !2447
  %6536 = zext i1 %6524 to i8
  store i8 %6536, i8* %84, align 1, !tbaa !2448
  %6537 = lshr i32 %6521, 31
  %6538 = trunc i32 %6537 to i8
  store i8 %6538, i8* %87, align 1, !tbaa !2449
  %6539 = lshr i32 %6520, 31
  %6540 = xor i32 %6537, %6539
  %6541 = add nuw nsw i32 %6540, %6537
  %6542 = icmp eq i32 %6541, 2
  %6543 = zext i1 %6542 to i8
  store i8 %6543, i8* %93, align 1, !tbaa !2450
  %6544 = add i64 %302, 14
  store i64 %6544, i64* %PC, align 8
  store i32 %6521, i32* %6519, align 4
  %6545 = load i64, i64* %PC, align 8
  %6546 = add i64 %6545, -249
  store i64 %6546, i64* %PC, align 8, !tbaa !2428
  br label %block_401858

block_40183e:                                     ; preds = %block_400d57
  %6547 = add i64 %6411, -52
  %6548 = add i64 %6447, 8
  store i64 %6548, i64* %PC, align 8
  %6549 = inttoptr i64 %6547 to i32*
  %6550 = load i32, i32* %6549, align 4
  %6551 = add i32 %6550, 1
  %6552 = zext i32 %6551 to i64
  store i64 %6552, i64* %RAX, align 8, !tbaa !2428
  %6553 = icmp eq i32 %6550, -1
  %6554 = icmp eq i32 %6551, 0
  %6555 = or i1 %6553, %6554
  %6556 = zext i1 %6555 to i8
  store i8 %6556, i8* %70, align 1, !tbaa !2432
  %6557 = and i32 %6551, 255
  %6558 = tail call i32 @llvm.ctpop.i32(i32 %6557) #8
  %6559 = trunc i32 %6558 to i8
  %6560 = and i8 %6559, 1
  %6561 = xor i8 %6560, 1
  store i8 %6561, i8* %76, align 1, !tbaa !2446
  %6562 = xor i32 %6550, %6551
  %6563 = lshr i32 %6562, 4
  %6564 = trunc i32 %6563 to i8
  %6565 = and i8 %6564, 1
  store i8 %6565, i8* %81, align 1, !tbaa !2447
  %6566 = zext i1 %6554 to i8
  store i8 %6566, i8* %84, align 1, !tbaa !2448
  %6567 = lshr i32 %6551, 31
  %6568 = trunc i32 %6567 to i8
  store i8 %6568, i8* %87, align 1, !tbaa !2449
  %6569 = lshr i32 %6550, 31
  %6570 = xor i32 %6567, %6569
  %6571 = add nuw nsw i32 %6570, %6567
  %6572 = icmp eq i32 %6571, 2
  %6573 = zext i1 %6572 to i8
  store i8 %6573, i8* %93, align 1, !tbaa !2450
  %6574 = add i64 %6447, 14
  store i64 %6574, i64* %PC, align 8
  store i32 %6551, i32* %6549, align 4
  %6575 = load i64, i64* %PC, align 8
  %6576 = add i64 %6575, -2824
  store i64 %6576, i64* %PC, align 8, !tbaa !2428
  br label %block_400d44

block_400d6a:                                     ; preds = %block_400d63, %block_400d76
  %6577 = phi i64 [ %.pre4, %block_400d63 ], [ %6371, %block_400d76 ]
  %6578 = load i64, i64* %RBP, align 8
  %6579 = add i64 %6578, -60
  %6580 = add i64 %6577, 3
  store i64 %6580, i64* %PC, align 8
  %6581 = inttoptr i64 %6579 to i32*
  %6582 = load i32, i32* %6581, align 4
  %6583 = zext i32 %6582 to i64
  store i64 %6583, i64* %RAX, align 8, !tbaa !2428
  %6584 = add i64 %6578, -76
  %6585 = add i64 %6577, 6
  store i64 %6585, i64* %PC, align 8
  %6586 = inttoptr i64 %6584 to i32*
  %6587 = load i32, i32* %6586, align 4
  %6588 = sub i32 %6582, %6587
  %6589 = icmp ult i32 %6582, %6587
  %6590 = zext i1 %6589 to i8
  store i8 %6590, i8* %70, align 1, !tbaa !2432
  %6591 = and i32 %6588, 255
  %6592 = tail call i32 @llvm.ctpop.i32(i32 %6591) #8
  %6593 = trunc i32 %6592 to i8
  %6594 = and i8 %6593, 1
  %6595 = xor i8 %6594, 1
  store i8 %6595, i8* %76, align 1, !tbaa !2446
  %6596 = xor i32 %6587, %6582
  %6597 = xor i32 %6596, %6588
  %6598 = lshr i32 %6597, 4
  %6599 = trunc i32 %6598 to i8
  %6600 = and i8 %6599, 1
  store i8 %6600, i8* %81, align 1, !tbaa !2447
  %6601 = icmp eq i32 %6588, 0
  %6602 = zext i1 %6601 to i8
  store i8 %6602, i8* %84, align 1, !tbaa !2448
  %6603 = lshr i32 %6588, 31
  %6604 = trunc i32 %6603 to i8
  store i8 %6604, i8* %87, align 1, !tbaa !2449
  %6605 = lshr i32 %6582, 31
  %6606 = lshr i32 %6587, 31
  %6607 = xor i32 %6606, %6605
  %6608 = xor i32 %6603, %6605
  %6609 = add nuw nsw i32 %6608, %6607
  %6610 = icmp eq i32 %6609, 2
  %6611 = zext i1 %6610 to i8
  store i8 %6611, i8* %93, align 1, !tbaa !2450
  %6612 = icmp ne i8 %6604, 0
  %6613 = xor i1 %6612, %6610
  %.v10 = select i1 %6613, i64 12, i64 2753
  %6614 = add i64 %6577, %.v10
  store i64 %6614, i64* %PC, align 8, !tbaa !2428
  br i1 %6613, label %block_400d76, label %block_40182b

block_400d35:                                     ; preds = %block_400d29
  store i32 0, i32* %186, align 1, !tbaa !2454
  store i32 0, i32* %188, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %191, align 1, !tbaa !2454
  %6615 = add i64 %6689, -80
  %6616 = add i64 %6725, 8
  store i64 %6616, i64* %PC, align 8
  %6617 = load <2 x float>, <2 x float>* %192, align 1
  %6618 = extractelement <2 x float> %6617, i32 0
  %6619 = inttoptr i64 %6615 to float*
  store float %6618, float* %6619, align 4
  %6620 = load i64, i64* %RBP, align 8
  %6621 = add i64 %6620, -52
  %6622 = load i64, i64* %PC, align 8
  %6623 = add i64 %6622, 7
  store i64 %6623, i64* %PC, align 8
  %6624 = inttoptr i64 %6621 to i32*
  store i32 1, i32* %6624, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400d44

block_40182b:                                     ; preds = %block_400d6a
  %6625 = add i64 %6578, -56
  %6626 = add i64 %6614, 8
  store i64 %6626, i64* %PC, align 8
  %6627 = inttoptr i64 %6625 to i32*
  %6628 = load i32, i32* %6627, align 4
  %6629 = add i32 %6628, 1
  %6630 = zext i32 %6629 to i64
  store i64 %6630, i64* %RAX, align 8, !tbaa !2428
  %6631 = icmp eq i32 %6628, -1
  %6632 = icmp eq i32 %6629, 0
  %6633 = or i1 %6631, %6632
  %6634 = zext i1 %6633 to i8
  store i8 %6634, i8* %70, align 1, !tbaa !2432
  %6635 = and i32 %6629, 255
  %6636 = tail call i32 @llvm.ctpop.i32(i32 %6635) #8
  %6637 = trunc i32 %6636 to i8
  %6638 = and i8 %6637, 1
  %6639 = xor i8 %6638, 1
  store i8 %6639, i8* %76, align 1, !tbaa !2446
  %6640 = xor i32 %6628, %6629
  %6641 = lshr i32 %6640, 4
  %6642 = trunc i32 %6641 to i8
  %6643 = and i8 %6642, 1
  store i8 %6643, i8* %81, align 1, !tbaa !2447
  %6644 = zext i1 %6632 to i8
  store i8 %6644, i8* %84, align 1, !tbaa !2448
  %6645 = lshr i32 %6629, 31
  %6646 = trunc i32 %6645 to i8
  store i8 %6646, i8* %87, align 1, !tbaa !2449
  %6647 = lshr i32 %6628, 31
  %6648 = xor i32 %6645, %6647
  %6649 = add nuw nsw i32 %6648, %6645
  %6650 = icmp eq i32 %6649, 2
  %6651 = zext i1 %6650 to i8
  store i8 %6651, i8* %93, align 1, !tbaa !2450
  %6652 = add i64 %6614, 14
  store i64 %6652, i64* %PC, align 8
  store i32 %6629, i32* %6627, align 4
  %6653 = load i64, i64* %PC, align 8
  %6654 = add i64 %6653, -2786
  store i64 %6654, i64* %PC, align 8, !tbaa !2428
  br label %block_400d57

block_401930:                                     ; preds = %block_40187e
  %6655 = add i64 %225, -56
  %6656 = add i64 %261, 8
  store i64 %6656, i64* %PC, align 8
  %6657 = inttoptr i64 %6655 to i32*
  %6658 = load i32, i32* %6657, align 4
  %6659 = add i32 %6658, 1
  %6660 = zext i32 %6659 to i64
  store i64 %6660, i64* %RAX, align 8, !tbaa !2428
  %6661 = icmp eq i32 %6658, -1
  %6662 = icmp eq i32 %6659, 0
  %6663 = or i1 %6661, %6662
  %6664 = zext i1 %6663 to i8
  store i8 %6664, i8* %70, align 1, !tbaa !2432
  %6665 = and i32 %6659, 255
  %6666 = tail call i32 @llvm.ctpop.i32(i32 %6665) #8
  %6667 = trunc i32 %6666 to i8
  %6668 = and i8 %6667, 1
  %6669 = xor i8 %6668, 1
  store i8 %6669, i8* %76, align 1, !tbaa !2446
  %6670 = xor i32 %6658, %6659
  %6671 = lshr i32 %6670, 4
  %6672 = trunc i32 %6671 to i8
  %6673 = and i8 %6672, 1
  store i8 %6673, i8* %81, align 1, !tbaa !2447
  %6674 = zext i1 %6662 to i8
  store i8 %6674, i8* %84, align 1, !tbaa !2448
  %6675 = lshr i32 %6659, 31
  %6676 = trunc i32 %6675 to i8
  store i8 %6676, i8* %87, align 1, !tbaa !2449
  %6677 = lshr i32 %6658, 31
  %6678 = xor i32 %6675, %6677
  %6679 = add nuw nsw i32 %6678, %6675
  %6680 = icmp eq i32 %6679, 2
  %6681 = zext i1 %6680 to i8
  store i8 %6681, i8* %93, align 1, !tbaa !2450
  %6682 = add i64 %261, 14
  store i64 %6682, i64* %PC, align 8
  store i32 %6659, i32* %6657, align 4
  %6683 = load i64, i64* %PC, align 8
  %6684 = add i64 %6683, -211
  store i64 %6684, i64* %PC, align 8, !tbaa !2428
  br label %block_40186b

block_400d63:                                     ; preds = %block_400d57
  %6685 = add i64 %6411, -60
  %6686 = add i64 %6447, 7
  store i64 %6686, i64* %PC, align 8
  %6687 = inttoptr i64 %6685 to i32*
  store i32 1, i32* %6687, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400d6a

block_400d29:                                     ; preds = %block_401956, %block_400cd0
  %6688 = phi i64 [ %6477, %block_401956 ], [ %.pre, %block_400cd0 ]
  %6689 = load i64, i64* %RBP, align 8
  %6690 = add i64 %6689, -64
  %6691 = add i64 %6688, 3
  store i64 %6691, i64* %PC, align 8
  %6692 = inttoptr i64 %6690 to i32*
  %6693 = load i32, i32* %6692, align 4
  %6694 = zext i32 %6693 to i64
  store i64 %6694, i64* %RAX, align 8, !tbaa !2428
  %6695 = add i64 %6689, -4
  %6696 = add i64 %6688, 6
  store i64 %6696, i64* %PC, align 8
  %6697 = inttoptr i64 %6695 to i32*
  %6698 = load i32, i32* %6697, align 4
  %6699 = sub i32 %6693, %6698
  %6700 = icmp ult i32 %6693, %6698
  %6701 = zext i1 %6700 to i8
  store i8 %6701, i8* %70, align 1, !tbaa !2432
  %6702 = and i32 %6699, 255
  %6703 = tail call i32 @llvm.ctpop.i32(i32 %6702) #8
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  %6706 = xor i8 %6705, 1
  store i8 %6706, i8* %76, align 1, !tbaa !2446
  %6707 = xor i32 %6698, %6693
  %6708 = xor i32 %6707, %6699
  %6709 = lshr i32 %6708, 4
  %6710 = trunc i32 %6709 to i8
  %6711 = and i8 %6710, 1
  store i8 %6711, i8* %81, align 1, !tbaa !2447
  %6712 = icmp eq i32 %6699, 0
  %6713 = zext i1 %6712 to i8
  store i8 %6713, i8* %84, align 1, !tbaa !2448
  %6714 = lshr i32 %6699, 31
  %6715 = trunc i32 %6714 to i8
  store i8 %6715, i8* %87, align 1, !tbaa !2449
  %6716 = lshr i32 %6693, 31
  %6717 = lshr i32 %6698, 31
  %6718 = xor i32 %6717, %6716
  %6719 = xor i32 %6714, %6716
  %6720 = add nuw nsw i32 %6719, %6718
  %6721 = icmp eq i32 %6720, 2
  %6722 = zext i1 %6721 to i8
  store i8 %6722, i8* %93, align 1, !tbaa !2450
  %6723 = icmp ne i8 %6715, 0
  %6724 = xor i1 %6723, %6721
  %.v = select i1 %6724, i64 12, i64 3136
  %6725 = add i64 %6688, %.v
  store i64 %6725, i64* %PC, align 8, !tbaa !2428
  br i1 %6724, label %block_400d35, label %block_401969

block_400d50:                                     ; preds = %block_400d44
  %6726 = add i64 %6480, -56
  %6727 = add i64 %6516, 7
  store i64 %6727, i64* %PC, align 8
  %6728 = inttoptr i64 %6726 to i32*
  store i32 1, i32* %6728, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400d57

block_40188a:                                     ; preds = %block_40187e
  %6729 = add i64 %225, 24
  %6730 = add i64 %261, 4
  store i64 %6730, i64* %PC, align 8
  %6731 = inttoptr i64 %6729 to i64*
  %6732 = load i64, i64* %6731, align 8
  store i64 %6732, i64* %RAX, align 8, !tbaa !2428
  %6733 = add i64 %261, 7
  store i64 %6733, i64* %PC, align 8
  %6734 = inttoptr i64 %6732 to i64*
  %6735 = load i64, i64* %6734, align 8
  store i64 %6735, i64* %RAX, align 8, !tbaa !2428
  %6736 = add i64 %261, 11
  store i64 %6736, i64* %PC, align 8
  %6737 = load i64, i64* %6731, align 8
  store i64 %6737, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6738 = add i64 %261, 19
  store i64 %6738, i64* %PC, align 8
  %6739 = load i64, i64* %6731, align 8
  store i64 %6739, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6740 = add i64 %261, 27
  store i64 %6740, i64* %PC, align 8
  %6741 = load i64, i64* %6731, align 8
  store i64 %6741, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6742 = add i64 %225, -52
  %6743 = add i64 %261, 34
  store i64 %6743, i64* %PC, align 8
  %6744 = inttoptr i64 %6742 to i32*
  %6745 = load i32, i32* %6744, align 4
  %6746 = zext i32 %6745 to i64
  store i64 %6746, i64* %RSI, align 8, !tbaa !2428
  %6747 = add i64 %261, 38
  store i64 %6747, i64* %PC, align 8
  %6748 = load i64, i64* %6731, align 8
  store i64 %6748, i64* %RCX, align 8, !tbaa !2428
  %6749 = add i64 %6748, 16
  %6750 = add i64 %261, 42
  store i64 %6750, i64* %PC, align 8
  %6751 = inttoptr i64 %6749 to i32*
  %6752 = load i32, i32* %6751, align 4
  %6753 = sext i32 %6745 to i64
  %6754 = sext i32 %6752 to i64
  %6755 = mul nsw i64 %6754, %6753
  %6756 = trunc i64 %6755 to i32
  %6757 = and i64 %6755, 4294967295
  store i64 %6757, i64* %RSI, align 8, !tbaa !2428
  %6758 = shl i64 %6755, 32
  %6759 = ashr exact i64 %6758, 32
  %6760 = icmp ne i64 %6759, %6755
  %6761 = zext i1 %6760 to i8
  store i8 %6761, i8* %70, align 1, !tbaa !2432
  %6762 = and i32 %6756, 255
  %6763 = tail call i32 @llvm.ctpop.i32(i32 %6762) #8
  %6764 = trunc i32 %6763 to i8
  %6765 = and i8 %6764, 1
  %6766 = xor i8 %6765, 1
  store i8 %6766, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6767 = lshr i32 %6756, 31
  %6768 = trunc i32 %6767 to i8
  store i8 %6768, i8* %87, align 1, !tbaa !2449
  store i8 %6761, i8* %93, align 1, !tbaa !2450
  %6769 = add i64 %261, 46
  store i64 %6769, i64* %PC, align 8
  %6770 = load i64, i64* %6731, align 8
  store i64 %6770, i64* %RCX, align 8, !tbaa !2428
  %6771 = add i64 %6770, 20
  %6772 = add i64 %261, 50
  store i64 %6772, i64* %PC, align 8
  %6773 = inttoptr i64 %6771 to i32*
  %6774 = load i32, i32* %6773, align 4
  %6775 = sext i32 %6774 to i64
  %6776 = mul nsw i64 %6775, %6759
  %6777 = and i64 %6776, 4294967295
  store i64 %6777, i64* %RSI, align 8, !tbaa !2428
  %6778 = trunc i64 %6776 to i32
  store i64 %6777, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6779 = and i32 %6778, 255
  %6780 = tail call i32 @llvm.ctpop.i32(i32 %6779) #8
  %6781 = trunc i32 %6780 to i8
  %6782 = and i8 %6781, 1
  %6783 = xor i8 %6782, 1
  store i8 %6783, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6784 = icmp eq i32 %6778, 0
  %6785 = zext i1 %6784 to i8
  store i8 %6785, i8* %84, align 1, !tbaa !2448
  %6786 = lshr i32 %6778, 31
  %6787 = trunc i32 %6786 to i8
  store i8 %6787, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6788 = load i64, i64* %RBP, align 8
  %6789 = add i64 %6788, -56
  %6790 = add i64 %261, 55
  store i64 %6790, i64* %PC, align 8
  %6791 = inttoptr i64 %6789 to i32*
  %6792 = load i32, i32* %6791, align 4
  %6793 = zext i32 %6792 to i64
  store i64 %6793, i64* %RSI, align 8, !tbaa !2428
  %6794 = add i64 %6788, 24
  %6795 = add i64 %261, 59
  store i64 %6795, i64* %PC, align 8
  %6796 = inttoptr i64 %6794 to i64*
  %6797 = load i64, i64* %6796, align 8
  store i64 %6797, i64* %RCX, align 8, !tbaa !2428
  %6798 = add i64 %6797, 20
  %6799 = add i64 %261, 63
  store i64 %6799, i64* %PC, align 8
  %6800 = inttoptr i64 %6798 to i32*
  %6801 = load i32, i32* %6800, align 4
  %6802 = sext i32 %6792 to i64
  %6803 = sext i32 %6801 to i64
  %6804 = mul nsw i64 %6803, %6802
  %6805 = and i64 %6804, 4294967295
  store i64 %6805, i64* %RSI, align 8, !tbaa !2428
  %6806 = trunc i64 %6804 to i32
  %6807 = add i32 %6806, %6778
  %6808 = zext i32 %6807 to i64
  store i64 %6808, i64* %RDX, align 8, !tbaa !2428
  %6809 = icmp ult i32 %6807, %6778
  %6810 = icmp ult i32 %6807, %6806
  %6811 = or i1 %6809, %6810
  %6812 = zext i1 %6811 to i8
  store i8 %6812, i8* %70, align 1, !tbaa !2432
  %6813 = and i32 %6807, 255
  %6814 = tail call i32 @llvm.ctpop.i32(i32 %6813) #8
  %6815 = trunc i32 %6814 to i8
  %6816 = and i8 %6815, 1
  %6817 = xor i8 %6816, 1
  store i8 %6817, i8* %76, align 1, !tbaa !2446
  %6818 = xor i64 %6804, %6776
  %6819 = trunc i64 %6818 to i32
  %6820 = xor i32 %6819, %6807
  %6821 = lshr i32 %6820, 4
  %6822 = trunc i32 %6821 to i8
  %6823 = and i8 %6822, 1
  store i8 %6823, i8* %81, align 1, !tbaa !2447
  %6824 = icmp eq i32 %6807, 0
  %6825 = zext i1 %6824 to i8
  store i8 %6825, i8* %84, align 1, !tbaa !2448
  %6826 = lshr i32 %6807, 31
  %6827 = trunc i32 %6826 to i8
  store i8 %6827, i8* %87, align 1, !tbaa !2449
  %6828 = lshr i32 %6806, 31
  %6829 = xor i32 %6826, %6786
  %6830 = xor i32 %6826, %6828
  %6831 = add nuw nsw i32 %6829, %6830
  %6832 = icmp eq i32 %6831, 2
  %6833 = zext i1 %6832 to i8
  store i8 %6833, i8* %93, align 1, !tbaa !2450
  %6834 = add i64 %6788, -60
  %6835 = add i64 %261, 68
  store i64 %6835, i64* %PC, align 8
  %6836 = inttoptr i64 %6834 to i32*
  %6837 = load i32, i32* %6836, align 4
  %6838 = add i32 %6837, %6807
  %6839 = zext i32 %6838 to i64
  store i64 %6839, i64* %RDX, align 8, !tbaa !2428
  %6840 = icmp ult i32 %6838, %6807
  %6841 = icmp ult i32 %6838, %6837
  %6842 = or i1 %6840, %6841
  %6843 = zext i1 %6842 to i8
  store i8 %6843, i8* %70, align 1, !tbaa !2432
  %6844 = and i32 %6838, 255
  %6845 = tail call i32 @llvm.ctpop.i32(i32 %6844) #8
  %6846 = trunc i32 %6845 to i8
  %6847 = and i8 %6846, 1
  %6848 = xor i8 %6847, 1
  store i8 %6848, i8* %76, align 1, !tbaa !2446
  %6849 = xor i32 %6837, %6807
  %6850 = xor i32 %6849, %6838
  %6851 = lshr i32 %6850, 4
  %6852 = trunc i32 %6851 to i8
  %6853 = and i8 %6852, 1
  store i8 %6853, i8* %81, align 1, !tbaa !2447
  %6854 = icmp eq i32 %6838, 0
  %6855 = zext i1 %6854 to i8
  store i8 %6855, i8* %84, align 1, !tbaa !2448
  %6856 = lshr i32 %6838, 31
  %6857 = trunc i32 %6856 to i8
  store i8 %6857, i8* %87, align 1, !tbaa !2449
  %6858 = lshr i32 %6837, 31
  %6859 = xor i32 %6856, %6826
  %6860 = xor i32 %6856, %6858
  %6861 = add nuw nsw i32 %6859, %6860
  %6862 = icmp eq i32 %6861, 2
  %6863 = zext i1 %6862 to i8
  store i8 %6863, i8* %93, align 1, !tbaa !2450
  %6864 = sext i32 %6838 to i64
  store i64 %6864, i64* %RCX, align 8, !tbaa !2428
  %6865 = load i64, i64* %RAX, align 8
  %6866 = shl nsw i64 %6864, 2
  %6867 = add i64 %6866, %6865
  %6868 = add i64 %261, 76
  store i64 %6868, i64* %PC, align 8
  %6869 = inttoptr i64 %6867 to i32*
  %6870 = load i32, i32* %6869, align 4
  store i32 %6870, i32* %186, align 1, !tbaa !2451
  store float 0.000000e+00, float* %194, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  %6871 = load i64, i64* %RBP, align 8
  %6872 = add i64 %6871, -40
  %6873 = add i64 %261, 80
  store i64 %6873, i64* %PC, align 8
  %6874 = inttoptr i64 %6872 to i64*
  %6875 = load i64, i64* %6874, align 8
  store i64 %6875, i64* %RAX, align 8, !tbaa !2428
  %6876 = add i64 %261, 83
  store i64 %6876, i64* %PC, align 8
  %6877 = inttoptr i64 %6875 to i64*
  %6878 = load i64, i64* %6877, align 8
  store i64 %6878, i64* %RAX, align 8, !tbaa !2428
  %6879 = add i64 %261, 87
  store i64 %6879, i64* %PC, align 8
  %6880 = load i64, i64* %6874, align 8
  store i64 %6880, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6881 = add i64 %261, 95
  store i64 %6881, i64* %PC, align 8
  %6882 = load i64, i64* %6874, align 8
  store i64 %6882, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6883 = add i64 %261, 103
  store i64 %6883, i64* %PC, align 8
  %6884 = load i64, i64* %6874, align 8
  store i64 %6884, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6885 = add i64 %6871, -52
  %6886 = add i64 %261, 110
  store i64 %6886, i64* %PC, align 8
  %6887 = inttoptr i64 %6885 to i32*
  %6888 = load i32, i32* %6887, align 4
  %6889 = zext i32 %6888 to i64
  store i64 %6889, i64* %RSI, align 8, !tbaa !2428
  %6890 = add i64 %261, 114
  store i64 %6890, i64* %PC, align 8
  %6891 = load i64, i64* %6874, align 8
  store i64 %6891, i64* %RCX, align 8, !tbaa !2428
  %6892 = add i64 %6891, 16
  %6893 = add i64 %261, 118
  store i64 %6893, i64* %PC, align 8
  %6894 = inttoptr i64 %6892 to i32*
  %6895 = load i32, i32* %6894, align 4
  %6896 = sext i32 %6888 to i64
  %6897 = sext i32 %6895 to i64
  %6898 = mul nsw i64 %6897, %6896
  %6899 = trunc i64 %6898 to i32
  %6900 = and i64 %6898, 4294967295
  store i64 %6900, i64* %RSI, align 8, !tbaa !2428
  %6901 = shl i64 %6898, 32
  %6902 = ashr exact i64 %6901, 32
  %6903 = icmp ne i64 %6902, %6898
  %6904 = zext i1 %6903 to i8
  store i8 %6904, i8* %70, align 1, !tbaa !2432
  %6905 = and i32 %6899, 255
  %6906 = tail call i32 @llvm.ctpop.i32(i32 %6905) #8
  %6907 = trunc i32 %6906 to i8
  %6908 = and i8 %6907, 1
  %6909 = xor i8 %6908, 1
  store i8 %6909, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6910 = lshr i32 %6899, 31
  %6911 = trunc i32 %6910 to i8
  store i8 %6911, i8* %87, align 1, !tbaa !2449
  store i8 %6904, i8* %93, align 1, !tbaa !2450
  %6912 = add i64 %261, 122
  store i64 %6912, i64* %PC, align 8
  %6913 = load i64, i64* %6874, align 8
  store i64 %6913, i64* %RCX, align 8, !tbaa !2428
  %6914 = add i64 %6913, 20
  %6915 = add i64 %261, 126
  store i64 %6915, i64* %PC, align 8
  %6916 = inttoptr i64 %6914 to i32*
  %6917 = load i32, i32* %6916, align 4
  %6918 = sext i32 %6917 to i64
  %6919 = mul nsw i64 %6918, %6902
  %6920 = and i64 %6919, 4294967295
  store i64 %6920, i64* %RSI, align 8, !tbaa !2428
  %6921 = trunc i64 %6919 to i32
  store i64 %6920, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6922 = and i32 %6921, 255
  %6923 = tail call i32 @llvm.ctpop.i32(i32 %6922) #8
  %6924 = trunc i32 %6923 to i8
  %6925 = and i8 %6924, 1
  %6926 = xor i8 %6925, 1
  store i8 %6926, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6927 = icmp eq i32 %6921, 0
  %6928 = zext i1 %6927 to i8
  store i8 %6928, i8* %84, align 1, !tbaa !2448
  %6929 = lshr i32 %6921, 31
  %6930 = trunc i32 %6929 to i8
  store i8 %6930, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6931 = load i64, i64* %RBP, align 8
  %6932 = add i64 %6931, -56
  %6933 = add i64 %261, 131
  store i64 %6933, i64* %PC, align 8
  %6934 = inttoptr i64 %6932 to i32*
  %6935 = load i32, i32* %6934, align 4
  %6936 = zext i32 %6935 to i64
  store i64 %6936, i64* %RSI, align 8, !tbaa !2428
  %6937 = add i64 %6931, -40
  %6938 = add i64 %261, 135
  store i64 %6938, i64* %PC, align 8
  %6939 = inttoptr i64 %6937 to i64*
  %6940 = load i64, i64* %6939, align 8
  store i64 %6940, i64* %RCX, align 8, !tbaa !2428
  %6941 = add i64 %6940, 20
  %6942 = add i64 %261, 139
  store i64 %6942, i64* %PC, align 8
  %6943 = inttoptr i64 %6941 to i32*
  %6944 = load i32, i32* %6943, align 4
  %6945 = sext i32 %6935 to i64
  %6946 = sext i32 %6944 to i64
  %6947 = mul nsw i64 %6946, %6945
  %6948 = and i64 %6947, 4294967295
  store i64 %6948, i64* %RSI, align 8, !tbaa !2428
  %6949 = trunc i64 %6947 to i32
  %6950 = add i32 %6949, %6921
  %6951 = zext i32 %6950 to i64
  store i64 %6951, i64* %RDX, align 8, !tbaa !2428
  %6952 = icmp ult i32 %6950, %6921
  %6953 = icmp ult i32 %6950, %6949
  %6954 = or i1 %6952, %6953
  %6955 = zext i1 %6954 to i8
  store i8 %6955, i8* %70, align 1, !tbaa !2432
  %6956 = and i32 %6950, 255
  %6957 = tail call i32 @llvm.ctpop.i32(i32 %6956) #8
  %6958 = trunc i32 %6957 to i8
  %6959 = and i8 %6958, 1
  %6960 = xor i8 %6959, 1
  store i8 %6960, i8* %76, align 1, !tbaa !2446
  %6961 = xor i64 %6947, %6919
  %6962 = trunc i64 %6961 to i32
  %6963 = xor i32 %6962, %6950
  %6964 = lshr i32 %6963, 4
  %6965 = trunc i32 %6964 to i8
  %6966 = and i8 %6965, 1
  store i8 %6966, i8* %81, align 1, !tbaa !2447
  %6967 = icmp eq i32 %6950, 0
  %6968 = zext i1 %6967 to i8
  store i8 %6968, i8* %84, align 1, !tbaa !2448
  %6969 = lshr i32 %6950, 31
  %6970 = trunc i32 %6969 to i8
  store i8 %6970, i8* %87, align 1, !tbaa !2449
  %6971 = lshr i32 %6949, 31
  %6972 = xor i32 %6969, %6929
  %6973 = xor i32 %6969, %6971
  %6974 = add nuw nsw i32 %6972, %6973
  %6975 = icmp eq i32 %6974, 2
  %6976 = zext i1 %6975 to i8
  store i8 %6976, i8* %93, align 1, !tbaa !2450
  %6977 = add i64 %6931, -60
  %6978 = add i64 %261, 144
  store i64 %6978, i64* %PC, align 8
  %6979 = inttoptr i64 %6977 to i32*
  %6980 = load i32, i32* %6979, align 4
  %6981 = add i32 %6980, %6950
  %6982 = zext i32 %6981 to i64
  store i64 %6982, i64* %RDX, align 8, !tbaa !2428
  %6983 = icmp ult i32 %6981, %6950
  %6984 = icmp ult i32 %6981, %6980
  %6985 = or i1 %6983, %6984
  %6986 = zext i1 %6985 to i8
  store i8 %6986, i8* %70, align 1, !tbaa !2432
  %6987 = and i32 %6981, 255
  %6988 = tail call i32 @llvm.ctpop.i32(i32 %6987) #8
  %6989 = trunc i32 %6988 to i8
  %6990 = and i8 %6989, 1
  %6991 = xor i8 %6990, 1
  store i8 %6991, i8* %76, align 1, !tbaa !2446
  %6992 = xor i32 %6980, %6950
  %6993 = xor i32 %6992, %6981
  %6994 = lshr i32 %6993, 4
  %6995 = trunc i32 %6994 to i8
  %6996 = and i8 %6995, 1
  store i8 %6996, i8* %81, align 1, !tbaa !2447
  %6997 = icmp eq i32 %6981, 0
  %6998 = zext i1 %6997 to i8
  store i8 %6998, i8* %84, align 1, !tbaa !2448
  %6999 = lshr i32 %6981, 31
  %7000 = trunc i32 %6999 to i8
  store i8 %7000, i8* %87, align 1, !tbaa !2449
  %7001 = lshr i32 %6980, 31
  %7002 = xor i32 %6999, %6969
  %7003 = xor i32 %6999, %7001
  %7004 = add nuw nsw i32 %7002, %7003
  %7005 = icmp eq i32 %7004, 2
  %7006 = zext i1 %7005 to i8
  store i8 %7006, i8* %93, align 1, !tbaa !2450
  %7007 = sext i32 %6981 to i64
  store i64 %7007, i64* %RCX, align 8, !tbaa !2428
  %7008 = load i64, i64* %RAX, align 8
  %7009 = shl nsw i64 %7007, 2
  %7010 = add i64 %7009, %7008
  %7011 = add i64 %261, 152
  store i64 %7011, i64* %PC, align 8
  %7012 = load <2 x float>, <2 x float>* %192, align 1
  %7013 = extractelement <2 x float> %7012, i32 0
  %7014 = inttoptr i64 %7010 to float*
  store float %7013, float* %7014, align 4
  %7015 = load i64, i64* %RBP, align 8
  %7016 = add i64 %7015, -60
  %7017 = load i64, i64* %PC, align 8
  %7018 = add i64 %7017, 3
  store i64 %7018, i64* %PC, align 8
  %7019 = inttoptr i64 %7016 to i32*
  %7020 = load i32, i32* %7019, align 4
  %7021 = add i32 %7020, 1
  %7022 = zext i32 %7021 to i64
  store i64 %7022, i64* %RAX, align 8, !tbaa !2428
  %7023 = icmp eq i32 %7020, -1
  %7024 = icmp eq i32 %7021, 0
  %7025 = or i1 %7023, %7024
  %7026 = zext i1 %7025 to i8
  store i8 %7026, i8* %70, align 1, !tbaa !2432
  %7027 = and i32 %7021, 255
  %7028 = tail call i32 @llvm.ctpop.i32(i32 %7027) #8
  %7029 = trunc i32 %7028 to i8
  %7030 = and i8 %7029, 1
  %7031 = xor i8 %7030, 1
  store i8 %7031, i8* %76, align 1, !tbaa !2446
  %7032 = xor i32 %7020, %7021
  %7033 = lshr i32 %7032, 4
  %7034 = trunc i32 %7033 to i8
  %7035 = and i8 %7034, 1
  store i8 %7035, i8* %81, align 1, !tbaa !2447
  %7036 = zext i1 %7024 to i8
  store i8 %7036, i8* %84, align 1, !tbaa !2448
  %7037 = lshr i32 %7021, 31
  %7038 = trunc i32 %7037 to i8
  store i8 %7038, i8* %87, align 1, !tbaa !2449
  %7039 = lshr i32 %7020, 31
  %7040 = xor i32 %7037, %7039
  %7041 = add nuw nsw i32 %7040, %7037
  %7042 = icmp eq i32 %7041, 2
  %7043 = zext i1 %7042 to i8
  store i8 %7043, i8* %93, align 1, !tbaa !2450
  %7044 = add i64 %7017, 9
  store i64 %7044, i64* %PC, align 8
  store i32 %7021, i32* %7019, align 4
  %7045 = load i64, i64* %PC, align 8
  %7046 = add i64 %7045, -173
  store i64 %7046, i64* %PC, align 8, !tbaa !2428
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
  %49 = add i64 %398, -12
  %50 = add i64 %438, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = add i64 %438, 7
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
  %78 = add i64 %438, 15
  store i64 %78, i64* %PC, align 8
  %79 = load i64, i64* %406, align 8
  store i64 %79, i64* %RCX, align 8, !tbaa !2428
  %80 = add i64 %79, 12
  %81 = add i64 %438, 18
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
  %106 = add i64 %438, 25
  store i64 %106, i64* %PC, align 8
  %107 = load i64, i64* %406, align 8
  store i64 %107, i64* %RCX, align 8, !tbaa !2428
  %108 = add i64 %107, 12
  %109 = add i64 %438, 28
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
  %148 = add i64 %438, 46
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RCX, align 8, !tbaa !2428
  %151 = add i64 %438, 49
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RCX, align 8, !tbaa !2428
  %154 = add i64 %438, 53
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
  %156 = add i64 %438, 61
  store i64 %156, i64* %PC, align 8
  %157 = load i64, i64* %149, align 8
  store i64 %157, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %158 = add i64 %438, 69
  store i64 %158, i64* %PC, align 8
  %159 = load i64, i64* %149, align 8
  store i64 %159, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %160 = add i64 %146, -12
  %161 = add i64 %438, 76
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RDX, align 8, !tbaa !2428
  %165 = add i64 %438, 80
  store i64 %165, i64* %PC, align 8
  %166 = load i64, i64* %149, align 8
  store i64 %166, i64* %RSI, align 8, !tbaa !2428
  %167 = add i64 %166, 16
  %168 = add i64 %438, 84
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %163 to i64
  %172 = sext i32 %170 to i64
  %173 = mul nsw i64 %172, %171
  %174 = trunc i64 %173 to i32
  %175 = and i64 %173, 4294967295
  store i64 %175, i64* %RDX, align 8, !tbaa !2428
  %176 = shl i64 %173, 32
  %177 = ashr exact i64 %176, 32
  %178 = icmp ne i64 %177, %173
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %21, align 1, !tbaa !2432
  %180 = and i32 %174, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #8
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %185 = lshr i32 %174, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %25, align 1, !tbaa !2449
  store i8 %179, i8* %26, align 1, !tbaa !2450
  %187 = add i64 %438, 88
  store i64 %187, i64* %PC, align 8
  %188 = load i64, i64* %149, align 8
  store i64 %188, i64* %RSI, align 8, !tbaa !2428
  %189 = add i64 %188, 20
  %190 = add i64 %438, 92
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = mul nsw i64 %193, %177
  %195 = and i64 %194, 4294967295
  store i64 %195, i64* %RDX, align 8, !tbaa !2428
  %196 = trunc i64 %194 to i32
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  %197 = and i32 %196, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #8
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  %202 = icmp eq i32 %196, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %24, align 1, !tbaa !2448
  %204 = lshr i32 %196, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -16
  %208 = add i64 %438, 97
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX, align 8, !tbaa !2428
  %212 = add i64 %206, -8
  %213 = add i64 %438, 101
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RSI, align 8, !tbaa !2428
  %216 = add i64 %215, 20
  %217 = add i64 %438, 105
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %210 to i64
  %221 = sext i32 %219 to i64
  %222 = mul nsw i64 %221, %220
  %223 = and i64 %222, 4294967295
  store i64 %223, i64* %RDX, align 8, !tbaa !2428
  %224 = trunc i64 %222 to i32
  %225 = add i32 %224, %196
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RAX, align 8, !tbaa !2428
  %227 = icmp ult i32 %225, %196
  %228 = icmp ult i32 %225, %224
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %21, align 1, !tbaa !2432
  %231 = and i32 %225, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231) #8
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %22, align 1, !tbaa !2446
  %236 = xor i64 %222, %194
  %237 = trunc i64 %236 to i32
  %238 = xor i32 %237, %225
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %23, align 1, !tbaa !2447
  %242 = icmp eq i32 %225, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %24, align 1, !tbaa !2448
  %244 = lshr i32 %225, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %25, align 1, !tbaa !2449
  %246 = lshr i32 %224, 31
  %247 = xor i32 %244, %204
  %248 = xor i32 %244, %246
  %249 = add nuw nsw i32 %247, %248
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %26, align 1, !tbaa !2450
  %252 = add i64 %206, -20
  %253 = add i64 %438, 110
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, %225
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = icmp ult i32 %256, %225
  %259 = icmp ult i32 %256, %255
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %21, align 1, !tbaa !2432
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #8
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %22, align 1, !tbaa !2446
  %267 = xor i32 %255, %225
  %268 = xor i32 %267, %256
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %23, align 1, !tbaa !2447
  %272 = icmp eq i32 %256, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %24, align 1, !tbaa !2448
  %274 = lshr i32 %256, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %25, align 1, !tbaa !2449
  %276 = lshr i32 %255, 31
  %277 = xor i32 %274, %244
  %278 = xor i32 %274, %276
  %279 = add nuw nsw i32 %277, %278
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %26, align 1, !tbaa !2450
  %282 = sext i32 %256 to i64
  store i64 %282, i64* %RSI, align 8, !tbaa !2428
  %283 = load i64, i64* %RCX, align 8
  %284 = shl nsw i64 %282, 2
  %285 = add i64 %284, %283
  %286 = add i64 %438, 118
  store i64 %286, i64* %PC, align 8
  %287 = load <2 x float>, <2 x float>* %47, align 1
  %288 = extractelement <2 x float> %287, i32 0
  %289 = inttoptr i64 %285 to float*
  store float %288, float* %289, align 4
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -20
  %292 = load i64, i64* %PC, align 8
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, 1
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = icmp eq i32 %295, -1
  %299 = icmp eq i32 %296, 0
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %21, align 1, !tbaa !2432
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #8
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %22, align 1, !tbaa !2446
  %307 = xor i32 %295, %296
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %23, align 1, !tbaa !2447
  %311 = zext i1 %299 to i8
  store i8 %311, i8* %24, align 1, !tbaa !2448
  %312 = lshr i32 %296, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %25, align 1, !tbaa !2449
  %314 = lshr i32 %295, 31
  %315 = xor i32 %312, %314
  %316 = add nuw nsw i32 %315, %312
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %26, align 1, !tbaa !2450
  %319 = add i64 %292, 9
  store i64 %319, i64* %PC, align 8
  store i32 %296, i32* %294, align 4
  %320 = load i64, i64* %PC, align 8
  %321 = add i64 %320, -143
  store i64 %321, i64* %PC, align 8, !tbaa !2428
  br label %block_400b2d

block_400b16:                                     ; preds = %block_400bc1, %block_400b0f
  %322 = phi i64 [ %522, %block_400bc1 ], [ %.pre1, %block_400b0f ]
  %323 = load i64, i64* %RBP, align 8
  %324 = add i64 %323, -16
  %325 = add i64 %322, 3
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX, align 8, !tbaa !2428
  %329 = add i64 %323, -8
  %330 = add i64 %322, 7
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RCX, align 8, !tbaa !2428
  %333 = add i64 %332, 16
  %334 = add i64 %322, 10
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sub i32 %327, %336
  %338 = icmp ult i32 %327, %336
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %21, align 1, !tbaa !2432
  %340 = and i32 %337, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340) #8
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %22, align 1, !tbaa !2446
  %345 = xor i32 %336, %327
  %346 = xor i32 %345, %337
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %23, align 1, !tbaa !2447
  %350 = icmp eq i32 %337, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %24, align 1, !tbaa !2448
  %352 = lshr i32 %337, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %25, align 1, !tbaa !2449
  %354 = lshr i32 %327, 31
  %355 = lshr i32 %336, 31
  %356 = xor i32 %355, %354
  %357 = xor i32 %352, %354
  %358 = add nuw nsw i32 %357, %356
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %26, align 1, !tbaa !2450
  %361 = icmp ne i8 %353, 0
  %362 = xor i1 %361, %359
  %.v3 = select i1 %362, i64 16, i64 190
  %363 = add i64 %322, %.v3
  store i64 %363, i64* %PC, align 8, !tbaa !2428
  br i1 %362, label %block_400b26, label %block_400bd4

block_400bd4:                                     ; preds = %block_400b16
  %364 = add i64 %323, -12
  %365 = add i64 %363, 8
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = add i32 %367, 1
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX, align 8, !tbaa !2428
  %370 = icmp eq i32 %367, -1
  %371 = icmp eq i32 %368, 0
  %372 = or i1 %370, %371
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %21, align 1, !tbaa !2432
  %374 = and i32 %368, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #8
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %22, align 1, !tbaa !2446
  %379 = xor i32 %367, %368
  %380 = lshr i32 %379, 4
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  store i8 %382, i8* %23, align 1, !tbaa !2447
  %383 = zext i1 %371 to i8
  store i8 %383, i8* %24, align 1, !tbaa !2448
  %384 = lshr i32 %368, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %25, align 1, !tbaa !2449
  %386 = lshr i32 %367, 31
  %387 = xor i32 %384, %386
  %388 = add nuw nsw i32 %387, %384
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %26, align 1, !tbaa !2450
  %391 = add i64 %363, 14
  store i64 %391, i64* %PC, align 8
  store i32 %368, i32* %366, align 4
  %392 = load i64, i64* %PC, align 8
  %393 = add i64 %392, -227
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  br label %block_400aff

block_400b0f:                                     ; preds = %block_400aff
  %394 = add i64 %449, -16
  %395 = add i64 %489, 7
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i32*
  store i32 0, i32* %396, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400b16

block_400b2d:                                     ; preds = %block_400b26, %block_400b3d
  %397 = phi i64 [ %.pre2, %block_400b26 ], [ %321, %block_400b3d ]
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -20
  %400 = add i64 %397, 3
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = add i64 %398, -8
  %405 = add i64 %397, 7
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = add i64 %407, 20
  %409 = add i64 %397, 10
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = sub i32 %402, %411
  %413 = icmp ult i32 %402, %411
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %21, align 1, !tbaa !2432
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415) #8
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %22, align 1, !tbaa !2446
  %420 = xor i32 %411, %402
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %23, align 1, !tbaa !2447
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %24, align 1, !tbaa !2448
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %25, align 1, !tbaa !2449
  %429 = lshr i32 %402, 31
  %430 = lshr i32 %411, 31
  %431 = xor i32 %430, %429
  %432 = xor i32 %427, %429
  %433 = add nuw nsw i32 %432, %431
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %26, align 1, !tbaa !2450
  %436 = icmp ne i8 %428, 0
  %437 = xor i1 %436, %434
  %.v4 = select i1 %437, i64 16, i64 148
  %438 = add i64 %397, %.v4
  store i64 %438, i64* %PC, align 8, !tbaa !2428
  br i1 %437, label %block_400b3d, label %block_400bc1

block_400be7:                                     ; preds = %block_400aff
  %439 = add i64 %489, 1
  store i64 %439, i64* %PC, align 8
  %440 = load i64, i64* %7, align 8, !tbaa !2428
  %441 = add i64 %440, 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RBP, align 8, !tbaa !2428
  store i64 %441, i64* %7, align 8, !tbaa !2428
  %444 = add i64 %489, 2
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %441 to i64*
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %PC, align 8, !tbaa !2428
  %447 = add i64 %440, 16
  store i64 %447, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400aff:                                     ; preds = %block_400bd4, %block_400af0
  %448 = phi i64 [ %393, %block_400bd4 ], [ %.pre, %block_400af0 ]
  %449 = load i64, i64* %RBP, align 8
  %450 = add i64 %449, -12
  %451 = add i64 %448, 3
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = add i64 %449, -8
  %456 = add i64 %448, 7
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RCX, align 8, !tbaa !2428
  %459 = add i64 %458, 12
  %460 = add i64 %448, 10
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sub i32 %453, %462
  %464 = icmp ult i32 %453, %462
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %21, align 1, !tbaa !2432
  %466 = and i32 %463, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466) #8
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %22, align 1, !tbaa !2446
  %471 = xor i32 %462, %453
  %472 = xor i32 %471, %463
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %23, align 1, !tbaa !2447
  %476 = icmp eq i32 %463, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %24, align 1, !tbaa !2448
  %478 = lshr i32 %463, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %25, align 1, !tbaa !2449
  %480 = lshr i32 %453, 31
  %481 = lshr i32 %462, 31
  %482 = xor i32 %481, %480
  %483 = xor i32 %478, %480
  %484 = add nuw nsw i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %26, align 1, !tbaa !2450
  %487 = icmp ne i8 %479, 0
  %488 = xor i1 %487, %485
  %.v = select i1 %488, i64 16, i64 232
  %489 = add i64 %448, %.v
  store i64 %489, i64* %PC, align 8, !tbaa !2428
  br i1 %488, label %block_400b0f, label %block_400be7

block_400b26:                                     ; preds = %block_400b16
  %490 = add i64 %323, -20
  %491 = add i64 %363, 7
  store i64 %491, i64* %PC, align 8
  %492 = inttoptr i64 %490 to i32*
  store i32 0, i32* %492, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400b2d

block_400bc1:                                     ; preds = %block_400b2d
  %493 = add i64 %398, -16
  %494 = add i64 %438, 8
  store i64 %494, i64* %PC, align 8
  %495 = inttoptr i64 %493 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = add i32 %496, 1
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RAX, align 8, !tbaa !2428
  %499 = icmp eq i32 %496, -1
  %500 = icmp eq i32 %497, 0
  %501 = or i1 %499, %500
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %21, align 1, !tbaa !2432
  %503 = and i32 %497, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503) #8
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %22, align 1, !tbaa !2446
  %508 = xor i32 %496, %497
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %23, align 1, !tbaa !2447
  %512 = zext i1 %500 to i8
  store i8 %512, i8* %24, align 1, !tbaa !2448
  %513 = lshr i32 %497, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %25, align 1, !tbaa !2449
  %515 = lshr i32 %496, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %513
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %26, align 1, !tbaa !2450
  %520 = add i64 %438, 14
  store i64 %520, i64* %PC, align 8
  store i32 %497, i32* %495, align 4
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, -185
  store i64 %522, i64* %PC, align 8, !tbaa !2428
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
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
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
  %105 = add i64 %37, -4
  %106 = add i64 %39, 27
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, -2
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RDX, align 8, !tbaa !2428
  %111 = icmp ult i32 %108, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %47, align 1, !tbaa !2432
  %113 = and i32 %109, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #8
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %53, align 1, !tbaa !2446
  %118 = xor i32 %108, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %58, align 1, !tbaa !2447
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %61, align 1, !tbaa !2448
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %64, align 1, !tbaa !2449
  %126 = lshr i32 %108, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %70, align 1, !tbaa !2450
  %131 = sitofp i32 %109 to double
  store double %131, double* %100, align 1, !tbaa !2455
  %132 = fmul double %104, %131
  %133 = bitcast [32 x %union.VectorReg]* %6 to double*
  %134 = load double, double* %133, align 1
  %135 = fmul double %132, %134
  store double %135, double* %72, align 1, !tbaa !2455
  %136 = bitcast double %135 to <2 x i32>
  %137 = extractelement <2 x i32> %136, i32 0
  %138 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %137, i32* %138, align 1, !tbaa !2451
  %139 = extractelement <2 x i32> %136, i32 1
  %140 = getelementptr inbounds i8, i8* %16, i64 4
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 1, !tbaa !2451
  %142 = extractelement <2 x i32> %103, i32 0
  %143 = bitcast i64* %19 to i32*
  store i32 %142, i32* %143, align 1, !tbaa !2451
  %144 = extractelement <2 x i32> %103, i32 1
  %145 = getelementptr inbounds i8, i8* %16, i64 12
  %146 = bitcast i8* %145 to i32*
  store i32 %144, i32* %146, align 1, !tbaa !2451
  %147 = add i64 %39, 46
  store i64 %147, i64* %PC, align 8
  %148 = load i64, i64* %11, align 8, !tbaa !2428
  %149 = add i64 %148, 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RBP, align 8, !tbaa !2428
  store i64 %149, i64* %11, align 8, !tbaa !2428
  %152 = add i64 %39, 47
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %149 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %PC, align 8, !tbaa !2428
  %155 = add i64 %148, 16
  store i64 %155, i64* %11, align 8, !tbaa !2428
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
  %.pre-phi = phi i64* [ %122, %block_401cbb ], [ %105, %block_401c94 ]
  %.pre-phi6 = phi double* [ %124, %block_401cbb ], [ %.pre5, %block_401c94 ]
  %45 = phi i64 [ %.pre1, %block_401cbb ], [ %109, %block_401c94 ]
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -24
  %48 = add i64 %45, 5
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %.pre-phi, align 1, !tbaa !2455
  store double 0.000000e+00, double* %.pre-phi6, align 1, !tbaa !2455
  %51 = load i64, i64* %RSP, align 8
  %52 = add i64 %51, 32
  store i64 %52, i64* %RSP, align 8, !tbaa !2428
  %53 = icmp ugt i64 %51, -33
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %13, align 1, !tbaa !2432
  %55 = trunc i64 %52 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %14, align 1, !tbaa !2446
  %61 = xor i64 %51, %52
  %62 = lshr i64 %61, 4
  %63 = trunc i64 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %15, align 1, !tbaa !2447
  %65 = icmp eq i64 %52, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %16, align 1, !tbaa !2448
  %67 = lshr i64 %52, 63
  %68 = trunc i64 %67 to i8
  store i8 %68, i8* %17, align 1, !tbaa !2449
  %69 = lshr i64 %51, 63
  %70 = xor i64 %67, %69
  %71 = add nuw nsw i64 %70, %67
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %18, align 1, !tbaa !2450
  %74 = add i64 %45, 10
  store i64 %74, i64* %PC, align 8
  %75 = add i64 %51, 40
  %76 = inttoptr i64 %52 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RBP, align 8, !tbaa !2428
  store i64 %75, i64* %RSP, align 8, !tbaa !2428
  %78 = add i64 %45, 11
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %75 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  %81 = add i64 %51, 48
  store i64 %81, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %24

block_401c94:                                     ; preds = %block_401c86
  %82 = bitcast [32 x %union.VectorReg]* %4 to i8*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %84 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 0, i32* %84, align 1, !tbaa !2454
  %85 = getelementptr inbounds i8, i8* %82, i64 4
  %86 = bitcast i8* %85 to i32*
  store i32 0, i32* %86, align 1, !tbaa !2454
  %87 = bitcast i64* %83 to i32*
  store i32 0, i32* %87, align 1, !tbaa !2454
  %88 = getelementptr inbounds i8, i8* %82, i64 12
  %89 = bitcast i8* %88 to i32*
  store i32 0, i32* %89, align 1, !tbaa !2454
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -16
  %92 = add i64 %119, 7
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %95 = and i64 %94, 4294967295
  store i64 %95, i64* %RCX, align 8, !tbaa !2428
  %96 = trunc i64 %94 to i32
  store i32 %96, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %97 = add i64 %90, -8
  %98 = add i64 %119, 20
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = and i64 %100, 4294967295
  store i64 %101, i64* %RCX, align 8, !tbaa !2428
  %102 = trunc i64 %100 to i32
  store i32 %102, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  %103 = add i64 %90, -24
  %104 = add i64 %119, 34
  store i64 %104, i64* %PC, align 8
  %105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %106 = load i64, i64* %105, align 1
  %107 = inttoptr i64 %103 to i64*
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, 66
  store i64 %109, i64* %PC, align 8, !tbaa !2428
  %.pre5 = bitcast i64* %83 to double*
  br label %block_401cf8

block_401c86:                                     ; preds = %block_401c60
  store i8 0, i8* %13, align 1, !tbaa !2432
  %110 = and i32 %.pre, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %115 = icmp eq i32 %.pre, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %16, align 1, !tbaa !2448
  %117 = lshr i32 %.pre, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v7 = select i1 %115, i64 14, i64 53
  %119 = add i64 %44, %.v7
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  br i1 %115, label %block_401c94, label %block_401cbb

block_401cbb:                                     ; preds = %block_401c60, %block_401c86
  %120 = phi i64 [ %119, %block_401c86 ], [ %44, %block_401c60 ]
  %121 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 32) to i64*), align 16
  %122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %121, i64* %122, align 1, !tbaa !2455
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %124 = bitcast i64* %123 to double*
  store double 0.000000e+00, double* %124, align 1, !tbaa !2455
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -16
  %127 = add i64 %120, 12
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %RCX, align 8, !tbaa !2428
  %132 = sub i64 %129, %131
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = icmp ult i64 %129, %131
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %13, align 1, !tbaa !2432
  %135 = trunc i64 %132 to i32
  %136 = and i32 %135, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #8
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %14, align 1, !tbaa !2446
  %141 = xor i64 %131, %129
  %142 = xor i64 %141, %132
  %143 = lshr i64 %142, 4
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %15, align 1, !tbaa !2447
  %146 = icmp eq i64 %132, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %16, align 1, !tbaa !2448
  %148 = lshr i64 %132, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %17, align 1, !tbaa !2449
  %150 = lshr i64 %129, 63
  %151 = lshr i64 %131, 63
  %152 = xor i64 %151, %150
  %153 = xor i64 %148, %150
  %154 = add nuw nsw i64 %153, %152
  %155 = icmp eq i64 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %18, align 1, !tbaa !2450
  %157 = sitofp i64 %132 to double
  %158 = bitcast %union.VectorReg* %5 to double*
  store double %157, double* %158, align 1, !tbaa !2455
  %159 = add i64 %125, -8
  %160 = add i64 %120, 32
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = sext i32 %.pre to i64
  store i64 %163, i64* %RCX, align 8, !tbaa !2428
  %164 = sub i64 %162, %163
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  %165 = icmp ult i64 %162, %163
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %13, align 1, !tbaa !2432
  %167 = trunc i64 %164 to i32
  %168 = and i32 %167, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168) #8
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %14, align 1, !tbaa !2446
  %173 = xor i64 %163, %162
  %174 = xor i64 %173, %164
  %175 = lshr i64 %174, 4
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %15, align 1, !tbaa !2447
  %178 = icmp eq i64 %164, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %16, align 1, !tbaa !2448
  %180 = lshr i64 %164, 63
  %181 = trunc i64 %180 to i8
  store i8 %181, i8* %17, align 1, !tbaa !2449
  %182 = lshr i64 %162, 63
  %183 = lshr i64 %163, 63
  %184 = xor i64 %183, %182
  %185 = xor i64 %180, %182
  %186 = add nuw nsw i64 %185, %184
  %187 = icmp eq i64 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %18, align 1, !tbaa !2450
  %189 = sitofp i64 %164 to double
  %190 = bitcast %union.VectorReg* %6 to double*
  %191 = bitcast [32 x %union.VectorReg]* %4 to double*
  %192 = bitcast i64 %121 to double
  %193 = fdiv double %189, %192
  store double %193, double* %190, align 1, !tbaa !2455
  %194 = fadd double %157, %193
  store double %194, double* %158, align 1, !tbaa !2455
  %195 = add i64 %125, -24
  %196 = add i64 %120, 61
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to double*
  store double %194, double* %197, align 8
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
