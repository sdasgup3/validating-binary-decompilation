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

declare %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400af0_mat_set_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004e0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400cd0_jacobi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %42 = bitcast %union.VectorReg* %4 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = bitcast i8* %43 to float*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %46 = bitcast i64* %45 to float*
  %47 = getelementptr inbounds i8, i8* %42, i64 12
  %48 = bitcast i8* %47 to float*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c07

block_400c35:                                     ; preds = %block_400c45, %block_400c2e
  %49 = phi i64 [ %522, %block_400c45 ], [ %.pre2, %block_400c2e ]
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -28
  %52 = add i64 %49, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  %56 = add i64 %50, -8
  %57 = add i64 %49, 7
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RCX, align 8, !tbaa !2428
  %60 = add i64 %59, 20
  %61 = add i64 %49, 10
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %54, %63
  %65 = icmp ult i32 %54, %63
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %35, align 1, !tbaa !2432
  %67 = and i32 %64, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67) #8
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %36, align 1, !tbaa !2446
  %72 = xor i32 %63, %54
  %73 = xor i32 %72, %64
  %74 = lshr i32 %73, 4
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %37, align 1, !tbaa !2447
  %77 = icmp eq i32 %64, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %38, align 1, !tbaa !2448
  %79 = lshr i32 %64, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %39, align 1, !tbaa !2449
  %81 = lshr i32 %54, 31
  %82 = lshr i32 %63, 31
  %83 = xor i32 %82, %81
  %84 = xor i32 %79, %81
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %40, align 1, !tbaa !2450
  %88 = icmp ne i8 %80, 0
  %89 = xor i1 %88, %86
  %.v4 = select i1 %89, i64 16, i64 114
  %90 = add i64 %49, %.v4
  store i64 %90, i64* %41, align 8, !tbaa !2428
  br i1 %89, label %block_400c45, label %block_400ca7

block_400c17:                                     ; preds = %block_400c07
  %91 = add i64 %107, -24
  %92 = add i64 %147, 7
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  store i32 0, i32* %93, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400c1e

block_400ccd:                                     ; preds = %block_400c07
  %94 = add i64 %147, 1
  store i64 %94, i64* %PC, align 8
  %95 = load i64, i64* %7, align 8, !tbaa !2428
  %96 = add i64 %95, 8
  %97 = inttoptr i64 %95 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %RBP, align 8, !tbaa !2428
  store i64 %96, i64* %7, align 8, !tbaa !2428
  %99 = add i64 %147, 2
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %96 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %41, align 8, !tbaa !2428
  %102 = add i64 %95, 16
  store i64 %102, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400c2e:                                     ; preds = %block_400c1e
  %103 = add i64 %180, -28
  %104 = add i64 %220, 7
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 0, i32* %105, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400c35

block_400c07:                                     ; preds = %block_400cba, %block_400bf0
  %106 = phi i64 [ %251, %block_400cba ], [ %.pre, %block_400bf0 ]
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -20
  %109 = add i64 %106, 3
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = add i64 %107, -8
  %114 = add i64 %106, 7
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RCX, align 8, !tbaa !2428
  %117 = add i64 %116, 12
  %118 = add i64 %106, 10
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %111, %120
  %122 = icmp ult i32 %111, %120
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %35, align 1, !tbaa !2432
  %124 = and i32 %121, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %36, align 1, !tbaa !2446
  %129 = xor i32 %120, %111
  %130 = xor i32 %129, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %37, align 1, !tbaa !2447
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %38, align 1, !tbaa !2448
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %39, align 1, !tbaa !2449
  %138 = lshr i32 %111, 31
  %139 = lshr i32 %120, 31
  %140 = xor i32 %139, %138
  %141 = xor i32 %136, %138
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %40, align 1, !tbaa !2450
  %145 = icmp ne i8 %137, 0
  %146 = xor i1 %145, %143
  %.v = select i1 %146, i64 16, i64 198
  %147 = add i64 %106, %.v
  store i64 %147, i64* %41, align 8, !tbaa !2428
  br i1 %146, label %block_400c17, label %block_400ccd

block_400ca7:                                     ; preds = %block_400c35
  %148 = add i64 %50, -24
  %149 = add i64 %90, 8
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = icmp eq i32 %151, -1
  %155 = icmp eq i32 %152, 0
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %35, align 1, !tbaa !2432
  %158 = and i32 %152, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #8
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %36, align 1, !tbaa !2446
  %163 = xor i32 %151, %152
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %37, align 1, !tbaa !2447
  %167 = icmp eq i32 %152, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %38, align 1, !tbaa !2448
  %169 = lshr i32 %152, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %39, align 1, !tbaa !2449
  %171 = lshr i32 %151, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %169
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %40, align 1, !tbaa !2450
  %176 = add i64 %90, 14
  store i64 %176, i64* %PC, align 8
  store i32 %152, i32* %150, align 4
  %177 = load i64, i64* %PC, align 8
  %178 = add i64 %177, -151
  store i64 %178, i64* %41, align 8, !tbaa !2428
  br label %block_400c1e

block_400c1e:                                     ; preds = %block_400ca7, %block_400c17
  %179 = phi i64 [ %178, %block_400ca7 ], [ %.pre1, %block_400c17 ]
  %180 = load i64, i64* %RBP, align 8
  %181 = add i64 %180, -24
  %182 = add i64 %179, 3
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = add i64 %180, -8
  %187 = add i64 %179, 7
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RCX, align 8, !tbaa !2428
  %190 = add i64 %189, 16
  %191 = add i64 %179, 10
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sub i32 %184, %193
  %195 = icmp ult i32 %184, %193
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %35, align 1, !tbaa !2432
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #8
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %36, align 1, !tbaa !2446
  %202 = xor i32 %193, %184
  %203 = xor i32 %202, %194
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %37, align 1, !tbaa !2447
  %207 = icmp eq i32 %194, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1, !tbaa !2448
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %39, align 1, !tbaa !2449
  %211 = lshr i32 %184, 31
  %212 = lshr i32 %193, 31
  %213 = xor i32 %212, %211
  %214 = xor i32 %209, %211
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %40, align 1, !tbaa !2450
  %218 = icmp ne i8 %210, 0
  %219 = xor i1 %218, %216
  %.v3 = select i1 %219, i64 16, i64 156
  %220 = add i64 %179, %.v3
  store i64 %220, i64* %41, align 8, !tbaa !2428
  br i1 %219, label %block_400c2e, label %block_400cba

block_400cba:                                     ; preds = %block_400c1e
  %221 = add i64 %180, -20
  %222 = add i64 %220, 8
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %224, 1
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RAX, align 8, !tbaa !2428
  %227 = icmp eq i32 %224, -1
  %228 = icmp eq i32 %225, 0
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %35, align 1, !tbaa !2432
  %231 = and i32 %225, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231) #8
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %36, align 1, !tbaa !2446
  %236 = xor i32 %224, %225
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %37, align 1, !tbaa !2447
  %240 = icmp eq i32 %225, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %38, align 1, !tbaa !2448
  %242 = lshr i32 %225, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %39, align 1, !tbaa !2449
  %244 = lshr i32 %224, 31
  %245 = xor i32 %242, %244
  %246 = add nuw nsw i32 %245, %242
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %40, align 1, !tbaa !2450
  %249 = add i64 %220, 14
  store i64 %249, i64* %PC, align 8
  store i32 %225, i32* %223, align 4
  %250 = load i64, i64* %PC, align 8
  %251 = add i64 %250, -193
  store i64 %251, i64* %41, align 8, !tbaa !2428
  br label %block_400c07

block_400c45:                                     ; preds = %block_400c35
  %252 = add i64 %50, -16
  %253 = add i64 %90, 5
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = bitcast %union.VectorReg* %4 to i32*
  store i32 %255, i32* %256, align 1, !tbaa !2451
  store float 0.000000e+00, float* %44, align 1, !tbaa !2451
  store float 0.000000e+00, float* %46, align 1, !tbaa !2451
  store float 0.000000e+00, float* %48, align 1, !tbaa !2451
  %257 = add i64 %90, 9
  store i64 %257, i64* %PC, align 8
  %258 = load i64, i64* %58, align 8
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = add i64 %90, 12
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = add i64 %50, -12
  %263 = add i64 %90, 15
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RCX, align 8, !tbaa !2428
  %267 = add i64 %90, 19
  store i64 %267, i64* %PC, align 8
  %268 = load i64, i64* %58, align 8
  store i64 %268, i64* %RDX, align 8, !tbaa !2428
  %269 = add i64 %268, 12
  %270 = add i64 %90, 23
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %265 to i64
  %274 = sext i32 %272 to i64
  %275 = mul nsw i64 %274, %273
  %276 = trunc i64 %275 to i32
  %277 = and i64 %275, 4294967295
  store i64 %277, i64* %RCX, align 8, !tbaa !2428
  %278 = shl i64 %275, 32
  %279 = ashr exact i64 %278, 32
  %280 = icmp ne i64 %279, %275
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %35, align 1, !tbaa !2432
  %282 = and i32 %276, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282) #8
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %287 = lshr i32 %276, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %39, align 1, !tbaa !2449
  store i8 %281, i8* %40, align 1, !tbaa !2450
  %289 = add i64 %90, 27
  store i64 %289, i64* %PC, align 8
  %290 = load i64, i64* %58, align 8
  store i64 %290, i64* %RDX, align 8, !tbaa !2428
  %291 = add i64 %290, 16
  %292 = add i64 %90, 31
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = shl i64 %275, 32
  %296 = ashr exact i64 %295, 32
  %297 = sext i32 %294 to i64
  %298 = mul nsw i64 %297, %296
  %299 = trunc i64 %298 to i32
  %300 = and i64 %298, 4294967295
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = shl i64 %298, 32
  %302 = ashr exact i64 %301, 32
  %303 = icmp ne i64 %302, %298
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %35, align 1, !tbaa !2432
  %305 = and i32 %299, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305) #8
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %310 = lshr i32 %299, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %39, align 1, !tbaa !2449
  store i8 %304, i8* %40, align 1, !tbaa !2450
  %312 = add i64 %90, 35
  store i64 %312, i64* %PC, align 8
  %313 = load i64, i64* %58, align 8
  store i64 %313, i64* %RDX, align 8, !tbaa !2428
  %314 = add i64 %313, 20
  %315 = add i64 %90, 39
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = shl i64 %298, 32
  %319 = ashr exact i64 %318, 32
  %320 = sext i32 %317 to i64
  %321 = mul nsw i64 %320, %319
  %322 = trunc i64 %321 to i32
  %323 = and i64 %321, 4294967295
  store i64 %323, i64* %RCX, align 8, !tbaa !2428
  %324 = shl i64 %321, 32
  %325 = ashr exact i64 %324, 32
  %326 = icmp ne i64 %325, %321
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %35, align 1, !tbaa !2432
  %328 = and i32 %322, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328) #8
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %333 = lshr i32 %322, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %39, align 1, !tbaa !2449
  store i8 %327, i8* %40, align 1, !tbaa !2450
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -20
  %337 = add i64 %90, 42
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RSI, align 8, !tbaa !2428
  %341 = add i64 %335, -8
  %342 = add i64 %90, 46
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RDX, align 8, !tbaa !2428
  %345 = add i64 %344, 16
  %346 = add i64 %90, 50
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %339 to i64
  %350 = sext i32 %348 to i64
  %351 = mul nsw i64 %350, %349
  %352 = trunc i64 %351 to i32
  %353 = and i64 %351, 4294967295
  store i64 %353, i64* %RSI, align 8, !tbaa !2428
  %354 = shl i64 %351, 32
  %355 = ashr exact i64 %354, 32
  %356 = icmp ne i64 %355, %351
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %35, align 1, !tbaa !2432
  %358 = and i32 %352, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #8
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %36, align 1, !tbaa !2446
  store i8 0, i8* %37, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2448
  %363 = lshr i32 %352, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %39, align 1, !tbaa !2449
  store i8 %357, i8* %40, align 1, !tbaa !2450
  %365 = add i64 %90, 54
  store i64 %365, i64* %PC, align 8
  %366 = load i64, i64* %343, align 8
  store i64 %366, i64* %RDX, align 8, !tbaa !2428
  %367 = add i64 %366, 20
  %368 = add i64 %90, 58
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = shl i64 %351, 32
  %372 = ashr exact i64 %371, 32
  %373 = sext i32 %370 to i64
  %374 = mul nsw i64 %373, %372
  %375 = and i64 %374, 4294967295
  store i64 %375, i64* %RSI, align 8, !tbaa !2428
  %376 = trunc i64 %374 to i32
  %377 = trunc i64 %321 to i32
  %378 = add i32 %376, %377
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RCX, align 8, !tbaa !2428
  %380 = icmp ult i32 %378, %377
  %381 = icmp ult i32 %378, %376
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %35, align 1, !tbaa !2432
  %384 = and i32 %378, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384) #8
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %36, align 1, !tbaa !2446
  %389 = xor i64 %374, %321
  %390 = trunc i64 %389 to i32
  %391 = xor i32 %390, %378
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %37, align 1, !tbaa !2447
  %395 = icmp eq i32 %378, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %38, align 1, !tbaa !2448
  %397 = lshr i32 %378, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %39, align 1, !tbaa !2449
  %399 = lshr i32 %377, 31
  %400 = lshr i32 %376, 31
  %401 = xor i32 %397, %399
  %402 = xor i32 %397, %400
  %403 = add nuw nsw i32 %401, %402
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %40, align 1, !tbaa !2450
  %406 = load i64, i64* %RBP, align 8
  %407 = add i64 %406, -24
  %408 = add i64 %90, 63
  store i64 %408, i64* %PC, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RSI, align 8, !tbaa !2428
  %412 = add i64 %406, -8
  %413 = add i64 %90, 67
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RDX, align 8, !tbaa !2428
  %416 = add i64 %415, 20
  %417 = add i64 %90, 71
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %410 to i64
  %421 = sext i32 %419 to i64
  %422 = mul nsw i64 %421, %420
  %423 = and i64 %422, 4294967295
  store i64 %423, i64* %RSI, align 8, !tbaa !2428
  %424 = trunc i64 %422 to i32
  %425 = add i32 %424, %378
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RCX, align 8, !tbaa !2428
  %427 = icmp ult i32 %425, %378
  %428 = icmp ult i32 %425, %424
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %35, align 1, !tbaa !2432
  %431 = and i32 %425, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431) #8
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %36, align 1, !tbaa !2446
  %436 = xor i64 %422, %379
  %437 = trunc i64 %436 to i32
  %438 = xor i32 %437, %425
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %37, align 1, !tbaa !2447
  %442 = icmp eq i32 %425, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %38, align 1, !tbaa !2448
  %444 = lshr i32 %425, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %39, align 1, !tbaa !2449
  %446 = lshr i32 %424, 31
  %447 = xor i32 %444, %397
  %448 = xor i32 %444, %446
  %449 = add nuw nsw i32 %447, %448
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %40, align 1, !tbaa !2450
  %452 = add i64 %406, -28
  %453 = add i64 %90, 76
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = add i32 %455, %425
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RCX, align 8, !tbaa !2428
  %458 = icmp ult i32 %456, %425
  %459 = icmp ult i32 %456, %455
  %460 = or i1 %458, %459
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %35, align 1, !tbaa !2432
  %462 = and i32 %456, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #8
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %36, align 1, !tbaa !2446
  %467 = xor i32 %455, %425
  %468 = xor i32 %467, %456
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %37, align 1, !tbaa !2447
  %472 = icmp eq i32 %456, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %38, align 1, !tbaa !2448
  %474 = lshr i32 %456, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %39, align 1, !tbaa !2449
  %476 = lshr i32 %455, 31
  %477 = xor i32 %474, %444
  %478 = xor i32 %474, %476
  %479 = add nuw nsw i32 %477, %478
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %40, align 1, !tbaa !2450
  %482 = sext i32 %456 to i64
  store i64 %482, i64* %RDX, align 8, !tbaa !2428
  %483 = load i64, i64* %RAX, align 8
  %484 = shl nsw i64 %482, 2
  %485 = add i64 %484, %483
  %486 = add i64 %90, 84
  store i64 %486, i64* %PC, align 8
  %487 = load <2 x float>, <2 x float>* %26, align 1
  %488 = extractelement <2 x float> %487, i32 0
  %489 = inttoptr i64 %485 to float*
  store float %488, float* %489, align 4
  %490 = load i64, i64* %RBP, align 8
  %491 = add i64 %490, -28
  %492 = load i64, i64* %PC, align 8
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %491 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, 1
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX, align 8, !tbaa !2428
  %498 = icmp eq i32 %495, -1
  %499 = icmp eq i32 %496, 0
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %35, align 1, !tbaa !2432
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502) #8
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %36, align 1, !tbaa !2446
  %507 = xor i32 %495, %496
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %37, align 1, !tbaa !2447
  %511 = icmp eq i32 %496, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %38, align 1, !tbaa !2448
  %513 = lshr i32 %496, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %39, align 1, !tbaa !2449
  %515 = lshr i32 %495, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %513
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %40, align 1, !tbaa !2450
  %520 = add i64 %492, 9
  store i64 %520, i64* %PC, align 8
  store i32 %496, i32* %494, align 4
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, -109
  store i64 %522, i64* %41, align 8, !tbaa !2428
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -184
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 176
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2432
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2446
  %25 = xor i64 %11, 16
  %26 = xor i64 %25, %14
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = icmp eq i64 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %14, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2449
  %37 = lshr i64 %11, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2450
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
  %43 = add i64 %10, -12
  %44 = add i64 %13, 27
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 0, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %EDI, align 4
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RSI, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -68
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 7
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 64, i32* %62, align 4
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -64
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 64, i32* %67, align 4
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -60
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 7
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 128, i32* %72, align 4
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -68
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 3
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %74 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RDI, align 8, !tbaa !2428
  %80 = add i64 %73, -48
  %81 = add i64 %75, 6
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 %78, i32* %82, align 4
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -64
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, 3
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %84 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RDI, align 8, !tbaa !2428
  %90 = add i64 %83, -52
  %91 = add i64 %85, 6
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 %88, i32* %92, align 4
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -60
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RDI, align 8, !tbaa !2428
  %100 = add i64 %93, -56
  %101 = add i64 %95, 6
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 %98, i32* %102, align 4
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -48
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, -1
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RDI, align 8, !tbaa !2428
  %111 = icmp eq i32 %108, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %17, align 1, !tbaa !2432
  %113 = and i32 %109, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #8
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %24, align 1, !tbaa !2446
  %118 = xor i32 %108, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %30, align 1, !tbaa !2447
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %33, align 1, !tbaa !2448
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %36, align 1, !tbaa !2449
  %126 = lshr i32 %108, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %42, align 1, !tbaa !2450
  %131 = add i64 %103, -36
  %132 = add i64 %105, 9
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 %109, i32* %133, align 4
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -52
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, -1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RDI, align 8, !tbaa !2428
  %142 = icmp eq i32 %139, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %17, align 1, !tbaa !2432
  %144 = and i32 %140, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #8
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %24, align 1, !tbaa !2446
  %149 = xor i32 %139, %140
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %30, align 1, !tbaa !2447
  %153 = icmp eq i32 %140, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %33, align 1, !tbaa !2448
  %155 = lshr i32 %140, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %36, align 1, !tbaa !2449
  %157 = lshr i32 %139, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %42, align 1, !tbaa !2450
  %162 = add i64 %134, -40
  %163 = add i64 %136, 9
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  store i32 %140, i32* %164, align 4
  %165 = load i64, i64* %RBP, align 8
  %166 = add i64 %165, -56
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, -1
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RDI, align 8, !tbaa !2428
  %173 = icmp eq i32 %170, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %17, align 1, !tbaa !2432
  %175 = and i32 %171, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #8
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %24, align 1, !tbaa !2446
  %180 = xor i32 %170, %171
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %30, align 1, !tbaa !2447
  %184 = icmp eq i32 %171, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %33, align 1, !tbaa !2448
  %186 = lshr i32 %171, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %36, align 1, !tbaa !2449
  %188 = lshr i32 %170, 31
  %189 = xor i32 %186, %188
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %42, align 1, !tbaa !2450
  %193 = add i64 %165, -44
  %194 = add i64 %167, 9
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  store i32 %171, i32* %195, align 4
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -48
  %198 = load i64, i64* %PC, align 8
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RSI, align 8, !tbaa !2428
  %203 = add i64 %196, -52
  %204 = add i64 %198, 6
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RDX, align 8, !tbaa !2428
  %208 = add i64 %196, -56
  %209 = add i64 %198, 9
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RCX, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX, align 8
  store i64 %213, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %214 = add i64 %198, -421
  %215 = add i64 %198, 19
  %216 = load i64, i64* %9, align 8, !tbaa !2428
  %217 = add i64 %216, -8
  %218 = inttoptr i64 %217 to i64*
  store i64 %215, i64* %218, align 8
  store i64 %217, i64* %9, align 8, !tbaa !2428
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %219, align 8, !tbaa !2428
  %220 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %221 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -36
  %224 = add i64 %221, 13
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RSI, align 8, !tbaa !2428
  %228 = add i64 %222, -40
  %229 = add i64 %221, 16
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RDX, align 8, !tbaa !2428
  %233 = add i64 %222, -44
  %234 = add i64 %221, 19
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RCX, align 8, !tbaa !2428
  %238 = add i64 %222, -108
  %239 = load i32, i32* %EAX, align 4
  %240 = add i64 %221, 22
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %238 to i32*
  store i32 %239, i32* %241, align 4
  %242 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %243 = add i64 %242, -462
  %244 = add i64 %242, 7
  %245 = load i64, i64* %9, align 8, !tbaa !2428
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %9, align 8, !tbaa !2428
  store i64 %243, i64* %219, align 8, !tbaa !2428
  %248 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %220)
  %249 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %250 = load i64, i64* %RBP, align 8
  %251 = add i64 %250, -48
  %252 = add i64 %249, 18
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RDX, align 8, !tbaa !2428
  %256 = add i64 %250, -52
  %257 = add i64 %249, 21
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RCX, align 8, !tbaa !2428
  %261 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %262 = add i64 %250, -56
  %263 = add i64 %249, 25
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %261, align 8, !tbaa !2428
  %267 = add i64 %250, -112
  %268 = load i32, i32* %EAX, align 4
  %269 = add i64 %249, 28
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %267 to i32*
  store i32 %268, i32* %270, align 4
  %271 = load i64, i64* %PC, align 8
  %272 = add i64 %271, 847
  %273 = add i64 %271, 5
  %274 = load i64, i64* %9, align 8, !tbaa !2428
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %9, align 8, !tbaa !2428
  store i64 %272, i64* %219, align 8, !tbaa !2428
  %277 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %272, %struct.Memory* %248)
  %278 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %279 = load i64, i64* %RBP, align 8
  %280 = add i64 %279, -48
  %281 = add i64 %278, 18
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RDX, align 8, !tbaa !2428
  %285 = add i64 %279, -52
  %286 = add i64 %278, 21
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RCX, align 8, !tbaa !2428
  %290 = add i64 %279, -56
  %291 = add i64 %278, 25
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %261, align 8, !tbaa !2428
  %295 = add i64 %279, -116
  %296 = load i32, i32* %EAX, align 4
  %297 = add i64 %278, 28
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %298, align 4
  %299 = load i64, i64* %PC, align 8
  %300 = add i64 %299, 814
  %301 = add i64 %299, 5
  %302 = load i64, i64* %9, align 8, !tbaa !2428
  %303 = add i64 %302, -8
  %304 = inttoptr i64 %303 to i64*
  store i64 %301, i64* %304, align 8
  store i64 %303, i64* %9, align 8, !tbaa !2428
  store i64 %300, i64* %219, align 8, !tbaa !2428
  %305 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %300, %struct.Memory* %277)
  %306 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %307 = load i64, i64* %RBP, align 8
  %308 = add i64 %307, -48
  %309 = add i64 %306, 18
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RDX, align 8, !tbaa !2428
  %313 = add i64 %307, -52
  %314 = add i64 %306, 21
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RCX, align 8, !tbaa !2428
  %318 = add i64 %307, -56
  %319 = add i64 %306, 25
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %261, align 8, !tbaa !2428
  %323 = add i64 %307, -120
  %324 = load i32, i32* %EAX, align 4
  %325 = add i64 %306, 28
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %323 to i32*
  store i32 %324, i32* %326, align 4
  %327 = load i64, i64* %PC, align 8
  %328 = add i64 %327, 781
  %329 = add i64 %327, 5
  %330 = load i64, i64* %9, align 8, !tbaa !2428
  %331 = add i64 %330, -8
  %332 = inttoptr i64 %331 to i64*
  store i64 %329, i64* %332, align 8
  store i64 %331, i64* %9, align 8, !tbaa !2428
  store i64 %328, i64* %219, align 8, !tbaa !2428
  %333 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %328, %struct.Memory* %305)
  %334 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -48
  %337 = add i64 %334, 18
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RDX, align 8, !tbaa !2428
  %341 = add i64 %335, -52
  %342 = add i64 %334, 21
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  %346 = add i64 %335, -56
  %347 = add i64 %334, 25
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %261, align 8, !tbaa !2428
  %351 = add i64 %335, -124
  %352 = load i32, i32* %EAX, align 4
  %353 = add i64 %334, 28
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %354, align 4
  %355 = load i64, i64* %PC, align 8
  %356 = add i64 %355, 748
  %357 = add i64 %355, 5
  %358 = load i64, i64* %9, align 8, !tbaa !2428
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %9, align 8, !tbaa !2428
  store i64 %356, i64* %219, align 8, !tbaa !2428
  %361 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %356, %struct.Memory* %333)
  %362 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -48
  %365 = add i64 %362, 18
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RDX, align 8, !tbaa !2428
  %369 = add i64 %363, -52
  %370 = add i64 %362, 21
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RCX, align 8, !tbaa !2428
  %374 = add i64 %363, -56
  %375 = add i64 %362, 25
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %261, align 8, !tbaa !2428
  %379 = add i64 %363, -128
  %380 = load i32, i32* %EAX, align 4
  %381 = add i64 %362, 28
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %379 to i32*
  store i32 %380, i32* %382, align 4
  %383 = load i64, i64* %PC, align 8
  %384 = add i64 %383, 715
  %385 = add i64 %383, 5
  %386 = load i64, i64* %9, align 8, !tbaa !2428
  %387 = add i64 %386, -8
  %388 = inttoptr i64 %387 to i64*
  store i64 %385, i64* %388, align 8
  store i64 %387, i64* %9, align 8, !tbaa !2428
  store i64 %384, i64* %219, align 8, !tbaa !2428
  %389 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %384, %struct.Memory* %361)
  %390 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %391 = load i64, i64* %RBP, align 8
  %392 = add i64 %391, -48
  %393 = add i64 %390, 18
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RDX, align 8, !tbaa !2428
  %397 = add i64 %391, -52
  %398 = add i64 %390, 21
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RCX, align 8, !tbaa !2428
  %402 = add i64 %391, -56
  %403 = add i64 %390, 25
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %261, align 8, !tbaa !2428
  %407 = add i64 %391, -132
  %408 = load i32, i32* %EAX, align 4
  %409 = add i64 %390, 31
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %407 to i32*
  store i32 %408, i32* %410, align 4
  %411 = load i64, i64* %PC, align 8
  %412 = add i64 %411, 679
  %413 = add i64 %411, 5
  %414 = load i64, i64* %9, align 8, !tbaa !2428
  %415 = add i64 %414, -8
  %416 = inttoptr i64 %415 to i64*
  store i64 %413, i64* %416, align 8
  store i64 %415, i64* %9, align 8, !tbaa !2428
  store i64 %412, i64* %219, align 8, !tbaa !2428
  %417 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %412, %struct.Memory* %389)
  %418 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %419 = load i64, i64* %RBP, align 8
  %420 = add i64 %419, -48
  %421 = add i64 %418, 18
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RDX, align 8, !tbaa !2428
  %425 = add i64 %419, -52
  %426 = add i64 %418, 21
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RCX, align 8, !tbaa !2428
  %430 = add i64 %419, -56
  %431 = add i64 %418, 25
  store i64 %431, i64* %PC, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %261, align 8, !tbaa !2428
  %435 = add i64 %419, -136
  %436 = load i32, i32* %EAX, align 4
  %437 = add i64 %418, 31
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %435 to i32*
  store i32 %436, i32* %438, align 4
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 643
  %441 = add i64 %439, 5
  %442 = load i64, i64* %9, align 8, !tbaa !2428
  %443 = add i64 %442, -8
  %444 = inttoptr i64 %443 to i64*
  store i64 %441, i64* %444, align 8
  store i64 %443, i64* %9, align 8, !tbaa !2428
  store i64 %440, i64* %219, align 8, !tbaa !2428
  %445 = tail call %struct.Memory* @sub_400a60_newMat_renamed_(%struct.State* nonnull %0, i64 %440, %struct.Memory* %417)
  %446 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  %447 = load i64, i64* %RBP, align 8
  %448 = add i64 %447, -140
  %449 = load i32, i32* %EAX, align 4
  %450 = add i64 %446, 16
  store i64 %450, i64* %PC, align 8
  %451 = inttoptr i64 %448 to i32*
  store i32 %449, i32* %451, align 4
  %452 = load i64, i64* %PC, align 8
  %453 = add i64 %452, 766
  %454 = add i64 %452, 5
  %455 = load i64, i64* %9, align 8, !tbaa !2428
  %456 = add i64 %455, -8
  %457 = inttoptr i64 %456 to i64*
  store i64 %454, i64* %457, align 8
  store i64 %456, i64* %9, align 8, !tbaa !2428
  store i64 %453, i64* %219, align 8, !tbaa !2428
  %458 = tail call %struct.Memory* @sub_400af0_mat_set_init_renamed_(%struct.State* nonnull %0, i64 %453, %struct.Memory* %445)
  %459 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %460 = bitcast %union.VectorReg* %6 to i8*
  %461 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %462 = bitcast %union.VectorReg* %6 to i32*
  store i32 %461, i32* %462, align 1, !tbaa !2451
  %463 = getelementptr inbounds i8, i8* %460, i64 4
  %464 = bitcast i8* %463 to float*
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %466 = bitcast i64* %465 to float*
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  %467 = getelementptr inbounds i8, i8* %460, i64 12
  %468 = bitcast i8* %467 to float*
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %469 = add i64 %459, 1017
  %470 = add i64 %459, 25
  %471 = load i64, i64* %9, align 8, !tbaa !2428
  %472 = add i64 %471, -8
  %473 = inttoptr i64 %472 to i64*
  store i64 %470, i64* %473, align 8
  store i64 %472, i64* %9, align 8, !tbaa !2428
  store i64 %469, i64* %219, align 8, !tbaa !2428
  %474 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %469, %struct.Memory* %458)
  %475 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %476 = bitcast %union.VectorReg* %6 to i32*
  store i32 0, i32* %476, align 1, !tbaa !2454
  %477 = bitcast i8* %463 to i32*
  store i32 0, i32* %477, align 1, !tbaa !2454
  %478 = bitcast i64* %465 to i32*
  store i32 0, i32* %478, align 1, !tbaa !2454
  %479 = bitcast i8* %467 to i32*
  store i32 0, i32* %479, align 1, !tbaa !2454
  %480 = add i64 %475, 992
  %481 = add i64 %475, 20
  %482 = load i64, i64* %9, align 8, !tbaa !2428
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %9, align 8, !tbaa !2428
  store i64 %480, i64* %219, align 8, !tbaa !2428
  %485 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %480, %struct.Memory* %474)
  %486 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i32 0, i32* %476, align 1, !tbaa !2454
  store i32 0, i32* %477, align 1, !tbaa !2454
  store i32 0, i32* %478, align 1, !tbaa !2454
  store i32 0, i32* %479, align 1, !tbaa !2454
  %487 = add i64 %486, 972
  %488 = add i64 %486, 20
  %489 = load i64, i64* %9, align 8, !tbaa !2428
  %490 = add i64 %489, -8
  %491 = inttoptr i64 %490 to i64*
  store i64 %488, i64* %491, align 8
  store i64 %490, i64* %9, align 8, !tbaa !2428
  store i64 %487, i64* %219, align 8, !tbaa !2428
  %492 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %487, %struct.Memory* %485)
  %493 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %494 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %495 = bitcast %union.VectorReg* %6 to i32*
  store i32 %494, i32* %495, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %496 = add i64 %493, 952
  %497 = add i64 %493, 25
  %498 = load i64, i64* %9, align 8, !tbaa !2428
  %499 = add i64 %498, -8
  %500 = inttoptr i64 %499 to i64*
  store i64 %497, i64* %500, align 8
  store i64 %499, i64* %9, align 8, !tbaa !2428
  store i64 %496, i64* %219, align 8, !tbaa !2428
  %501 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %496, %struct.Memory* %492)
  %502 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %503 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %504 = bitcast %union.VectorReg* %6 to i32*
  store i32 %503, i32* %504, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %505 = add i64 %502, 927
  %506 = add i64 %502, 28
  %507 = load i64, i64* %9, align 8, !tbaa !2428
  %508 = add i64 %507, -8
  %509 = inttoptr i64 %508 to i64*
  store i64 %506, i64* %509, align 8
  store i64 %508, i64* %9, align 8, !tbaa !2428
  store i64 %505, i64* %219, align 8, !tbaa !2428
  %510 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %505, %struct.Memory* %501)
  %511 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %512 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %513 = bitcast %union.VectorReg* %6 to i32*
  store i32 %512, i32* %513, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %514 = add i64 %511, 899
  %515 = add i64 %511, 28
  %516 = load i64, i64* %9, align 8, !tbaa !2428
  %517 = add i64 %516, -8
  %518 = inttoptr i64 %517 to i64*
  store i64 %515, i64* %518, align 8
  store i64 %517, i64* %9, align 8, !tbaa !2428
  store i64 %514, i64* %219, align 8, !tbaa !2428
  %519 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %514, %struct.Memory* %510)
  %520 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %521 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 8) to i32*), align 8
  %522 = bitcast %union.VectorReg* %6 to i32*
  store i32 %521, i32* %522, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %523 = add i64 %520, 871
  %524 = add i64 %520, 28
  %525 = load i64, i64* %9, align 8, !tbaa !2428
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %9, align 8, !tbaa !2428
  store i64 %523, i64* %219, align 8, !tbaa !2428
  %528 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %523, %struct.Memory* %519)
  %529 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i32 0, i32* %476, align 1, !tbaa !2454
  store i32 0, i32* %477, align 1, !tbaa !2454
  store i32 0, i32* %478, align 1, !tbaa !2454
  store i32 0, i32* %479, align 1, !tbaa !2454
  %530 = add i64 %529, 843
  %531 = add i64 %529, 20
  %532 = load i64, i64* %9, align 8, !tbaa !2428
  %533 = add i64 %532, -8
  %534 = inttoptr i64 %533 to i64*
  store i64 %531, i64* %534, align 8
  store i64 %533, i64* %9, align 8, !tbaa !2428
  store i64 %530, i64* %219, align 8, !tbaa !2428
  %535 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %530, %struct.Memory* %528)
  %536 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  store i32 0, i32* %476, align 1, !tbaa !2454
  store i32 0, i32* %477, align 1, !tbaa !2454
  store i32 0, i32* %478, align 1, !tbaa !2454
  store i32 0, i32* %479, align 1, !tbaa !2454
  %537 = add i64 %536, 823
  %538 = add i64 %536, 23
  %539 = load i64, i64* %9, align 8, !tbaa !2428
  %540 = add i64 %539, -8
  %541 = inttoptr i64 %540 to i64*
  store i64 %538, i64* %541, align 8
  store i64 %540, i64* %9, align 8, !tbaa !2428
  store i64 %537, i64* %219, align 8, !tbaa !2428
  %542 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %537, %struct.Memory* %535)
  %543 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  store i32 0, i32* %476, align 1, !tbaa !2454
  store i32 0, i32* %477, align 1, !tbaa !2454
  store i32 0, i32* %478, align 1, !tbaa !2454
  store i32 0, i32* %479, align 1, !tbaa !2454
  %544 = add i64 %543, 800
  %545 = add i64 %543, 23
  %546 = load i64, i64* %9, align 8, !tbaa !2428
  %547 = add i64 %546, -8
  %548 = inttoptr i64 %547 to i64*
  store i64 %545, i64* %548, align 8
  store i64 %547, i64* %9, align 8, !tbaa !2428
  store i64 %544, i64* %219, align 8, !tbaa !2428
  %549 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %544, %struct.Memory* %542)
  %550 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %551 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %552 = bitcast %union.VectorReg* %6 to i32*
  store i32 %551, i32* %552, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %553 = add i64 %550, 777
  %554 = add i64 %550, 25
  %555 = load i64, i64* %9, align 8, !tbaa !2428
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %9, align 8, !tbaa !2428
  store i64 %553, i64* %219, align 8, !tbaa !2428
  %558 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %553, %struct.Memory* %549)
  %559 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %560 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %561 = bitcast %union.VectorReg* %6 to i32*
  store i32 %560, i32* %561, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %562 = add i64 %559, 752
  %563 = add i64 %559, 28
  %564 = load i64, i64* %9, align 8, !tbaa !2428
  %565 = add i64 %564, -8
  %566 = inttoptr i64 %565 to i64*
  store i64 %563, i64* %566, align 8
  store i64 %565, i64* %9, align 8, !tbaa !2428
  store i64 %562, i64* %219, align 8, !tbaa !2428
  %567 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %562, %struct.Memory* %558)
  %568 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %569 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 4) to i32*), align 4
  %570 = bitcast %union.VectorReg* %6 to i32*
  store i32 %569, i32* %570, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %571 = add i64 %568, 724
  %572 = add i64 %568, 28
  %573 = load i64, i64* %9, align 8, !tbaa !2428
  %574 = add i64 %573, -8
  %575 = inttoptr i64 %574 to i64*
  store i64 %572, i64* %575, align 8
  store i64 %574, i64* %9, align 8, !tbaa !2428
  store i64 %571, i64* %219, align 8, !tbaa !2428
  %576 = tail call %struct.Memory* @sub_400bf0_mat_set_renamed_(%struct.State* nonnull %0, i64 %571, %struct.Memory* %567)
  %577 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RSI, align 8, !tbaa !2428
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDX, align 8, !tbaa !2428
  store i64 ptrtoint (%c_type* @c to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (%p_type* @p to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %R9, align 8, !tbaa !2428
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %R10, align 8, !tbaa !2428
  %578 = load i64, i64* %RBP, align 8
  %579 = add i64 %578, -32
  %580 = add i64 %577, 77
  store i64 %580, i64* %PC, align 8
  %581 = inttoptr i64 %579 to i32*
  store i32 64, i32* %581, align 4
  %582 = load i64, i64* %RBP, align 8
  %583 = add i64 %582, -32
  %584 = load i64, i64* %PC, align 8
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC, align 8
  %586 = inttoptr i64 %583 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = add i64 %582, -152
  %590 = load i64, i64* %RDI, align 8
  %591 = add i64 %584, 10
  store i64 %591, i64* %PC, align 8
  %592 = inttoptr i64 %589 to i64*
  store i64 %590, i64* %592, align 8
  %593 = load i32, i32* %EAX, align 4
  %594 = zext i32 %593 to i64
  %595 = load i64, i64* %PC, align 8
  store i64 %594, i64* %RDI, align 8, !tbaa !2428
  %596 = load i64, i64* %RBP, align 8
  %597 = add i64 %596, -152
  %598 = add i64 %595, 9
  store i64 %598, i64* %PC, align 8
  %599 = inttoptr i64 %597 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %R11, align 8, !tbaa !2428
  %601 = bitcast i64* %RSP to i64**
  %602 = load i64*, i64** %601, align 8
  %603 = add i64 %595, 13
  store i64 %603, i64* %PC, align 8
  store i64 %600, i64* %602, align 8
  %604 = load i64, i64* %RSP, align 8
  %605 = add i64 %604, 8
  %606 = load i64, i64* %R10, align 8
  %607 = load i64, i64* %PC, align 8
  %608 = add i64 %607, 5
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %605 to i64*
  store i64 %606, i64* %609, align 8
  %610 = load i64, i64* %PC, align 8
  %611 = add i64 %610, 815
  %612 = add i64 %610, 5
  %613 = load i64, i64* %9, align 8, !tbaa !2428
  %614 = add i64 %613, -8
  %615 = inttoptr i64 %614 to i64*
  store i64 %612, i64* %615, align 8
  store i64 %614, i64* %9, align 8, !tbaa !2428
  store i64 %611, i64* %219, align 8, !tbaa !2428
  %616 = tail call %struct.Memory* @sub_400cd0_jacobi_renamed_(%struct.State* nonnull %0, i64 %611, %struct.Memory* %576)
  %617 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 104), i64* %RDI, align 8, !tbaa !2428
  %618 = load i64, i64* %RBP, align 8
  %619 = add i64 %618, -72
  %620 = add i64 %617, 15
  store i64 %620, i64* %PC, align 8
  %621 = bitcast %union.VectorReg* %6 to <2 x float>*
  %622 = load <2 x float>, <2 x float>* %621, align 1
  %623 = extractelement <2 x float> %622, i32 0
  %624 = inttoptr i64 %619 to float*
  store float %623, float* %624, align 4
  %625 = load i64, i64* %RBP, align 8
  %626 = add i64 %625, -32
  %627 = load i64, i64* %PC, align 8
  %628 = add i64 %627, 3
  store i64 %628, i64* %PC, align 8
  %629 = inttoptr i64 %626 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %632 = add i64 %627, -1173
  %633 = add i64 %627, 10
  %634 = load i64, i64* %9, align 8, !tbaa !2428
  %635 = add i64 %634, -8
  %636 = inttoptr i64 %635 to i64*
  store i64 %633, i64* %636, align 8
  store i64 %635, i64* %9, align 8, !tbaa !2428
  store i64 %632, i64* %219, align 8, !tbaa !2428
  %637 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %616)
  %638 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 133), i64* %RDI, align 8, !tbaa !2428
  %639 = load i64, i64* %RBP, align 8
  %640 = add i64 %639, -72
  %641 = add i64 %638, 15
  store i64 %641, i64* %PC, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = bitcast %union.VectorReg* %6 to i32*
  store i32 %643, i32* %644, align 1, !tbaa !2451
  store float 0.000000e+00, float* %464, align 1, !tbaa !2451
  store float 0.000000e+00, float* %466, align 1, !tbaa !2451
  store float 0.000000e+00, float* %468, align 1, !tbaa !2451
  %645 = load <2 x float>, <2 x float>* %621, align 1
  %646 = extractelement <2 x float> %645, i32 0
  %647 = fpext float %646 to double
  %648 = bitcast %union.VectorReg* %6 to double*
  store double %647, double* %648, align 1, !tbaa !2455
  %649 = add i64 %639, -156
  %650 = load i32, i32* %EAX, align 4
  %651 = add i64 %638, 25
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %649 to i32*
  store i32 %650, i32* %652, align 4
  %653 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %654 = add i64 %653, -1208
  %655 = add i64 %653, 7
  %656 = load i64, i64* %9, align 8, !tbaa !2428
  %657 = add i64 %656, -8
  %658 = inttoptr i64 %657 to i64*
  store i64 %655, i64* %658, align 8
  store i64 %657, i64* %9, align 8, !tbaa !2428
  store i64 %654, i64* %219, align 8, !tbaa !2428
  %659 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %637)
  %660 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  %661 = load i64, i64* %RBP, align 8
  %662 = add i64 %661, -160
  %663 = load i32, i32* %EAX, align 4
  %664 = add i64 %660, 16
  store i64 %664, i64* %PC, align 8
  %665 = inttoptr i64 %662 to i32*
  store i32 %663, i32* %665, align 4
  %666 = load i64, i64* %PC, align 8
  %667 = add i64 %666, 3969
  %668 = add i64 %666, 5
  %669 = load i64, i64* %9, align 8, !tbaa !2428
  %670 = add i64 %669, -8
  %671 = inttoptr i64 %670 to i64*
  store i64 %668, i64* %671, align 8
  store i64 %670, i64* %9, align 8, !tbaa !2428
  store i64 %667, i64* %219, align 8, !tbaa !2428
  %672 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %667, %struct.Memory* %659)
  %673 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  %674 = add i64 %673, 3964
  %675 = add i64 %673, 15
  %676 = load i64, i64* %9, align 8, !tbaa !2428
  %677 = add i64 %676, -8
  %678 = inttoptr i64 %677 to i64*
  store i64 %675, i64* %678, align 8
  store i64 %677, i64* %9, align 8, !tbaa !2428
  store i64 %674, i64* %219, align 8, !tbaa !2428
  %679 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %674, %struct.Memory* %672)
  %680 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  %681 = add i64 %680, 3949
  %682 = add i64 %680, 15
  %683 = load i64, i64* %9, align 8, !tbaa !2428
  %684 = add i64 %683, -8
  %685 = inttoptr i64 %684 to i64*
  store i64 %682, i64* %685, align 8
  store i64 %684, i64* %9, align 8, !tbaa !2428
  store i64 %681, i64* %219, align 8, !tbaa !2428
  %686 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %681, %struct.Memory* %679)
  %687 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  %688 = add i64 %687, 3934
  %689 = add i64 %687, 15
  %690 = load i64, i64* %9, align 8, !tbaa !2428
  %691 = add i64 %690, -8
  %692 = inttoptr i64 %691 to i64*
  store i64 %689, i64* %692, align 8
  store i64 %691, i64* %9, align 8, !tbaa !2428
  store i64 %688, i64* %219, align 8, !tbaa !2428
  %693 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %688, %struct.Memory* %686)
  %694 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  %695 = add i64 %694, 3919
  %696 = add i64 %694, 15
  %697 = load i64, i64* %9, align 8, !tbaa !2428
  %698 = add i64 %697, -8
  %699 = inttoptr i64 %698 to i64*
  store i64 %696, i64* %699, align 8
  store i64 %698, i64* %9, align 8, !tbaa !2428
  store i64 %695, i64* %219, align 8, !tbaa !2428
  %700 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %695, %struct.Memory* %693)
  %701 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  %702 = add i64 %701, 3904
  %703 = add i64 %701, 15
  %704 = load i64, i64* %9, align 8, !tbaa !2428
  %705 = add i64 %704, -8
  %706 = inttoptr i64 %705 to i64*
  store i64 %703, i64* %706, align 8
  store i64 %705, i64* %9, align 8, !tbaa !2428
  store i64 %702, i64* %219, align 8, !tbaa !2428
  %707 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %702, %struct.Memory* %700)
  %708 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  %709 = add i64 %708, 3889
  %710 = add i64 %708, 15
  %711 = load i64, i64* %9, align 8, !tbaa !2428
  %712 = add i64 %711, -8
  %713 = inttoptr i64 %712 to i64*
  store i64 %710, i64* %713, align 8
  store i64 %712, i64* %9, align 8, !tbaa !2428
  store i64 %709, i64* %219, align 8, !tbaa !2428
  %714 = tail call %struct.Memory* @sub_401970_clearMat_renamed_(%struct.State* nonnull %0, i64 %709, %struct.Memory* %707)
  %715 = load i64, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %716 = load i64, i64* %RSP, align 8
  %717 = add i64 %716, 176
  store i64 %717, i64* %RSP, align 8, !tbaa !2428
  %718 = icmp ugt i64 %716, -177
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %17, align 1, !tbaa !2432
  %720 = trunc i64 %717 to i32
  %721 = and i32 %720, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721) #8
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %24, align 1, !tbaa !2446
  %726 = xor i64 %716, 16
  %727 = xor i64 %726, %717
  %728 = lshr i64 %727, 4
  %729 = trunc i64 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %30, align 1, !tbaa !2447
  %731 = icmp eq i64 %717, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %33, align 1, !tbaa !2448
  %733 = lshr i64 %717, 63
  %734 = trunc i64 %733 to i8
  store i8 %734, i8* %36, align 1, !tbaa !2449
  %735 = lshr i64 %716, 63
  %736 = xor i64 %733, %735
  %737 = add nuw nsw i64 %736, %733
  %738 = icmp eq i64 %737, 2
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %42, align 1, !tbaa !2450
  %740 = add i64 %715, 10
  store i64 %740, i64* %PC, align 8
  %741 = add i64 %716, 184
  %742 = inttoptr i64 %717 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RBP, align 8, !tbaa !2428
  store i64 %741, i64* %9, align 8, !tbaa !2428
  %744 = add i64 %715, 11
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %741 to i64*
  %746 = load i64, i64* %745, align 8
  store i64 %746, i64* %219, align 8, !tbaa !2428
  %747 = add i64 %716, 192
  store i64 %747, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %714
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_400618, label %block_400603

block_400618:                                     ; preds = %block_400603, %block_4005e0
  %36 = phi i64 [ %46, %block_400603 ], [ %35, %block_4005e0 ]
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
  store i64 %44, i64* %34, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400603:                                     ; preds = %block_4005e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %46 = add i64 %35, 21
  store i64 %46, i64* %34, align 8, !tbaa !2428
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #8
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
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 146), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 146), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %55 = add i64 %51, -5440
  %56 = add i64 %51, 16
  %57 = load i64, i64* %6, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %6, align 8, !tbaa !2428
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %55, i64* %60, align 8, !tbaa !2428
  %61 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %2)
  %62 = load i32, i32* %EAX, align 4
  %63 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %64 = and i32 %62, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #8
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %69 = icmp eq i32 %62, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %29, align 1, !tbaa !2448
  %71 = lshr i32 %62, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %69, i64 34, i64 9
  %73 = add i64 %63, %.v
  store i64 %73, i64* %60, align 8, !tbaa !2428
  br i1 %69, label %block_401c51, label %block_401a99

block_401b9e:                                     ; preds = %block_401b85
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -16
  %76 = add i64 %336, 4
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 160), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 160), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %79 = add i64 %336, -5726
  %80 = add i64 %336, 16
  %81 = load i64, i64* %6, align 8, !tbaa !2428
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*
  store i64 %80, i64* %83, align 8
  store i64 %82, i64* %6, align 8, !tbaa !2428
  store i64 %79, i64* %60, align 8, !tbaa !2428
  %84 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %324)
  %85 = load i32, i32* %EAX, align 4
  %86 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %87 = and i32 %85, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %92 = icmp eq i32 %85, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %29, align 1, !tbaa !2448
  %94 = lshr i32 %85, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v44 = select i1 %92, i64 9, i64 46
  %96 = add i64 %86, %.v44
  store i64 %96, i64* %60, align 8, !tbaa !2428
  br i1 %92, label %block_401c51, label %block_401bdc

block_401bdc:                                     ; preds = %block_401b9e
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -16
  %99 = add i64 %96, 4
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 156), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 156), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %102 = add i64 %96, -5788
  %103 = add i64 %96, 16
  %104 = load i64, i64* %6, align 8, !tbaa !2428
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*
  store i64 %103, i64* %106, align 8
  store i64 %105, i64* %6, align 8, !tbaa !2428
  store i64 %102, i64* %60, align 8, !tbaa !2428
  %107 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %84)
  %108 = load i32, i32* %EAX, align 4
  %109 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %110 = and i32 %108, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %115 = icmp eq i32 %108, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %29, align 1, !tbaa !2448
  %117 = lshr i32 %108, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v45 = select i1 %115, i64 34, i64 9
  %119 = add i64 %109, %.v45
  store i64 %119, i64* %60, align 8, !tbaa !2428
  br i1 %115, label %block_401c51, label %block_401bf5

block_401a99:                                     ; preds = %block_401a70
  %120 = load i64, i64* %RBP, align 8
  %121 = add i64 %120, -16
  %122 = add i64 %73, 4
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 149), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 149), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %125 = add i64 %73, -5465
  %126 = add i64 %73, 16
  %127 = load i64, i64* %6, align 8, !tbaa !2428
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %6, align 8, !tbaa !2428
  store i64 %125, i64* %60, align 8, !tbaa !2428
  %130 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %61)
  %131 = load i32, i32* %EAX, align 4
  %132 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %133 = and i32 %131, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133) #8
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %138 = icmp eq i32 %131, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %29, align 1, !tbaa !2448
  %140 = lshr i32 %131, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v38 = select i1 %138, i64 9, i64 46
  %142 = add i64 %132, %.v38
  store i64 %142, i64* %60, align 8, !tbaa !2428
  br i1 %138, label %block_401c51, label %block_401ad7

block_401bf5:                                     ; preds = %block_401bdc
  %143 = load i64, i64* %RBP, align 8
  %144 = add i64 %143, -16
  %145 = add i64 %119, 4
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 159), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 159), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %148 = add i64 %119, -5813
  %149 = add i64 %119, 16
  %150 = load i64, i64* %6, align 8, !tbaa !2428
  %151 = add i64 %150, -8
  %152 = inttoptr i64 %151 to i64*
  store i64 %149, i64* %152, align 8
  store i64 %151, i64* %6, align 8, !tbaa !2428
  store i64 %148, i64* %60, align 8, !tbaa !2428
  %153 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %107)
  %154 = load i32, i32* %EAX, align 4
  %155 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %156 = and i32 %154, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156) #8
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %161 = icmp eq i32 %154, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %29, align 1, !tbaa !2448
  %163 = lshr i32 %154, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v46 = select i1 %161, i64 9, i64 46
  %165 = add i64 %155, %.v46
  store i64 %165, i64* %60, align 8, !tbaa !2428
  br i1 %161, label %block_401c51, label %block_401c33

block_401c33:                                     ; preds = %block_401bf5
  store i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 162), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %166 = add i64 %165, -5907
  %167 = add i64 %165, 17
  %168 = load i64, i64* %6, align 8, !tbaa !2428
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %6, align 8, !tbaa !2428
  store i64 %166, i64* %60, align 8, !tbaa !2428
  %171 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %153)
  %172 = load i64, i64* %PC, align 8
  store i64 6, i64* %RDI, align 8, !tbaa !2428
  %173 = load i64, i64* %RBP, align 8
  %174 = add i64 %173, -20
  %175 = load i32, i32* %EAX, align 4
  %176 = add i64 %172, 8
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %177, align 4
  %178 = load i64, i64* %PC, align 8
  %179 = add i64 %178, -5868
  %180 = add i64 %178, 5
  %181 = load i64, i64* %6, align 8, !tbaa !2428
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %180, i64* %183, align 8
  store i64 %182, i64* %6, align 8, !tbaa !2428
  store i64 %179, i64* %60, align 8, !tbaa !2428
  %184 = tail call fastcc %struct.Memory* @ext_400560_exit(%struct.State* nonnull %0, %struct.Memory* %171)
  %185 = load i64, i64* %PC, align 8
  %186 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %185, %struct.Memory* %184)
  ret %struct.Memory* %186

block_401af0:                                     ; preds = %block_401ad7
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -16
  %189 = add i64 %232, 4
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 150), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 150), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %192 = add i64 %232, -5552
  %193 = add i64 %232, 16
  %194 = load i64, i64* %6, align 8, !tbaa !2428
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %193, i64* %196, align 8
  store i64 %195, i64* %6, align 8, !tbaa !2428
  store i64 %192, i64* %60, align 8, !tbaa !2428
  %197 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %220)
  %198 = load i32, i32* %EAX, align 4
  %199 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %200 = and i32 %198, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #8
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %205 = icmp eq i32 %198, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %29, align 1, !tbaa !2448
  %207 = lshr i32 %198, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v40 = select i1 %205, i64 9, i64 46
  %209 = add i64 %199, %.v40
  store i64 %209, i64* %60, align 8, !tbaa !2428
  br i1 %205, label %block_401c51, label %block_401b2e

block_401ad7:                                     ; preds = %block_401a99
  %210 = load i64, i64* %RBP, align 8
  %211 = add i64 %210, -16
  %212 = add i64 %142, 4
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 147), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 147), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %215 = add i64 %142, -5527
  %216 = add i64 %142, 16
  %217 = load i64, i64* %6, align 8, !tbaa !2428
  %218 = add i64 %217, -8
  %219 = inttoptr i64 %218 to i64*
  store i64 %216, i64* %219, align 8
  store i64 %218, i64* %6, align 8, !tbaa !2428
  store i64 %215, i64* %60, align 8, !tbaa !2428
  %220 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %130)
  %221 = load i32, i32* %EAX, align 4
  %222 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %223 = and i32 %221, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223) #8
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %228 = icmp eq i32 %221, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %29, align 1, !tbaa !2448
  %230 = lshr i32 %221, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v39 = select i1 %228, i64 34, i64 9
  %232 = add i64 %222, %.v39
  store i64 %232, i64* %60, align 8, !tbaa !2428
  br i1 %228, label %block_401c51, label %block_401af0

block_401c51:                                     ; preds = %block_401bf5, %block_401b9e, %block_401b47, %block_401af0, %block_401a99, %block_401b2e, %block_401ad7, %block_401bdc, %block_401a70, %block_401b85
  %.sink36 = phi i64 [ %336, %block_401b85 ], [ %96, %block_401b9e ], [ %73, %block_401a70 ], [ %142, %block_401a99 ], [ %119, %block_401bdc ], [ %165, %block_401bf5 ], [ %232, %block_401ad7 ], [ %209, %block_401af0 ], [ %359, %block_401b2e ], [ %313, %block_401b47 ]
  %.sink27 = phi i32 [ 256, %block_401b85 ], [ 256, %block_401b9e ], [ 32, %block_401a70 ], [ 32, %block_401a99 ], [ 512, %block_401bdc ], [ 512, %block_401bf5 ], [ 64, %block_401ad7 ], [ 64, %block_401af0 ], [ 128, %block_401b2e ], [ 128, %block_401b47 ]
  %.sink = phi i32 [ 512, %block_401b85 ], [ 512, %block_401b9e ], [ 64, %block_401a70 ], [ 64, %block_401a99 ], [ 1024, %block_401bdc ], [ 1024, %block_401bf5 ], [ 128, %block_401ad7 ], [ 128, %block_401af0 ], [ 256, %block_401b2e ], [ 256, %block_401b47 ]
  %.sink3 = phi i64 [ 122, %block_401b85 ], [ 122, %block_401b9e ], [ 383, %block_401a70 ], [ 383, %block_401a99 ], [ 35, %block_401bdc ], [ 35, %block_401bf5 ], [ 296, %block_401ad7 ], [ 296, %block_401af0 ], [ 209, %block_401b2e ], [ 209, %block_401b47 ]
  %MEMORY.4 = phi %struct.Memory* [ %324, %block_401b85 ], [ %84, %block_401b9e ], [ %61, %block_401a70 ], [ %130, %block_401a99 ], [ %107, %block_401bdc ], [ %153, %block_401bf5 ], [ %220, %block_401ad7 ], [ %197, %block_401af0 ], [ %347, %block_401b2e ], [ %301, %block_401b47 ]
  %233 = load i64, i64* %RBP, align 8
  %234 = add i64 %233, -8
  %235 = add i64 %.sink36, 4
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = add i64 %.sink36, 10
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  store i32 %.sink27, i32* %239, align 4
  %240 = load i64, i64* %RBP, align 8
  %241 = add i64 %240, -8
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RAX, align 8, !tbaa !2428
  %246 = add i64 %245, 4
  %247 = add i64 %242, 11
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i32*
  store i32 %.sink27, i32* %248, align 4
  %249 = load i64, i64* %RBP, align 8
  %250 = add i64 %249, -8
  %251 = load i64, i64* %PC, align 8
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %250 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RAX, align 8, !tbaa !2428
  %255 = add i64 %254, 8
  %256 = add i64 %251, 11
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  store i32 %.sink, i32* %257, align 4
  %258 = load i64, i64* %PC, align 8
  %259 = add i64 %258, %.sink3
  %260 = load i64, i64* %RSP, align 8
  %261 = add i64 %260, 32
  store i64 %261, i64* %RSP, align 8, !tbaa !2428
  %262 = icmp ugt i64 %260, -33
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %14, align 1, !tbaa !2432
  %264 = trunc i64 %261 to i32
  %265 = and i32 %264, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265) #8
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %21, align 1, !tbaa !2446
  %270 = xor i64 %260, %261
  %271 = lshr i64 %270, 4
  %272 = trunc i64 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %26, align 1, !tbaa !2447
  %274 = icmp eq i64 %261, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %29, align 1, !tbaa !2448
  %276 = lshr i64 %261, 63
  %277 = trunc i64 %276 to i8
  store i8 %277, i8* %32, align 1, !tbaa !2449
  %278 = lshr i64 %260, 63
  %279 = xor i64 %276, %278
  %280 = add nuw nsw i64 %279, %276
  %281 = icmp eq i64 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %38, align 1, !tbaa !2450
  %283 = add i64 %259, 5
  store i64 %283, i64* %PC, align 8
  %284 = add i64 %260, 40
  %285 = inttoptr i64 %261 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RBP, align 8, !tbaa !2428
  store i64 %284, i64* %6, align 8, !tbaa !2428
  %287 = add i64 %259, 6
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %284 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %60, align 8, !tbaa !2428
  %290 = add i64 %260, 48
  store i64 %290, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_401b47:                                     ; preds = %block_401b2e
  %291 = load i64, i64* %RBP, align 8
  %292 = add i64 %291, -16
  %293 = add i64 %359, 4
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 154), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 154), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %296 = add i64 %359, -5639
  %297 = add i64 %359, 16
  %298 = load i64, i64* %6, align 8, !tbaa !2428
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8, !tbaa !2428
  store i64 %296, i64* %60, align 8, !tbaa !2428
  %301 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %347)
  %302 = load i32, i32* %EAX, align 4
  %303 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %304 = and i32 %302, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #8
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %309 = icmp eq i32 %302, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %29, align 1, !tbaa !2448
  %311 = lshr i32 %302, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v42 = select i1 %309, i64 9, i64 46
  %313 = add i64 %303, %.v42
  store i64 %313, i64* %60, align 8, !tbaa !2428
  br i1 %309, label %block_401c51, label %block_401b85

block_401b85:                                     ; preds = %block_401b47
  %314 = load i64, i64* %RBP, align 8
  %315 = add i64 %314, -16
  %316 = add i64 %313, 4
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 157), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 157), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %319 = add i64 %313, -5701
  %320 = add i64 %313, 16
  %321 = load i64, i64* %6, align 8, !tbaa !2428
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %320, i64* %323, align 8
  store i64 %322, i64* %6, align 8, !tbaa !2428
  store i64 %319, i64* %60, align 8, !tbaa !2428
  %324 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %301)
  %325 = load i32, i32* %EAX, align 4
  %326 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %327 = and i32 %325, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327) #8
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %332 = icmp eq i32 %325, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %29, align 1, !tbaa !2448
  %334 = lshr i32 %325, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v43 = select i1 %332, i64 34, i64 9
  %336 = add i64 %326, %.v43
  store i64 %336, i64* %60, align 8, !tbaa !2428
  br i1 %332, label %block_401c51, label %block_401b9e

block_401b2e:                                     ; preds = %block_401af0
  %337 = load i64, i64* %RBP, align 8
  %338 = add i64 %337, -16
  %339 = add i64 %209, 4
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 152), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 152), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %342 = add i64 %209, -5614
  %343 = add i64 %209, 16
  %344 = load i64, i64* %6, align 8, !tbaa !2428
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %343, i64* %346, align 8
  store i64 %345, i64* %6, align 8, !tbaa !2428
  store i64 %342, i64* %60, align 8, !tbaa !2428
  %347 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %197)
  %348 = load i32, i32* %EAX, align 4
  %349 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %350 = and i32 %348, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350) #8
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %355 = icmp eq i32 %348, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %29, align 1, !tbaa !2448
  %357 = lshr i32 %348, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v41 = select i1 %355, i64 34, i64 9
  %359 = add i64 %349, %.v41
  store i64 %359, i64* %60, align 8, !tbaa !2428
  br i1 %355, label %block_401c51, label %block_401b47
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
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %68 = inttoptr i64 %63 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %67, align 8, !tbaa !2428
  %70 = add i64 %62, 16
  store i64 %70, i64* %9, align 8, !tbaa !2428
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
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %185 = bitcast [32 x %union.VectorReg]* %4 to i8*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %187 = bitcast [32 x %union.VectorReg]* %4 to i32*
  %188 = getelementptr inbounds i8, i8* %185, i64 4
  %189 = bitcast i8* %188 to i32*
  %190 = bitcast i64* %186 to i32*
  %191 = getelementptr inbounds i8, i8* %185, i64 12
  %192 = bitcast i8* %191 to i32*
  %193 = bitcast [32 x %union.VectorReg]* %4 to <2 x float>*
  %194 = bitcast [32 x %union.VectorReg]* %4 to float*
  %195 = bitcast i8* %188 to float*
  %196 = bitcast i64* %186 to float*
  %197 = bitcast i8* %191 to float*
  %198 = bitcast [32 x %union.VectorReg]* %4 to <2 x float>*
  %199 = bitcast i64* %186 to <2 x i32>*
  %200 = bitcast %union.VectorReg* %5 to i8*
  %201 = bitcast %union.VectorReg* %5 to float*
  %202 = getelementptr inbounds i8, i8* %200, i64 4
  %203 = bitcast i8* %202 to float*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %205 = bitcast i64* %204 to float*
  %206 = getelementptr inbounds i8, i8* %200, i64 12
  %207 = bitcast i8* %206 to float*
  %208 = bitcast %union.VectorReg* %5 to <2 x float>*
  %209 = bitcast i64* %204 to <2 x i32>*
  %210 = bitcast i8* %202 to i32*
  %211 = bitcast i64* %204 to i32*
  %212 = bitcast i8* %206 to i32*
  %213 = bitcast %union.VectorReg* %5 to <2 x float>*
  %214 = bitcast %union.VectorReg* %6 to i8*
  %215 = bitcast %union.VectorReg* %6 to float*
  %216 = getelementptr inbounds i8, i8* %214, i64 4
  %217 = bitcast i8* %216 to float*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %219 = bitcast i64* %218 to float*
  %220 = getelementptr inbounds i8, i8* %214, i64 12
  %221 = bitcast i8* %220 to float*
  %222 = bitcast %union.VectorReg* %6 to <2 x float>*
  %223 = bitcast i64* %218 to <2 x i32>*
  %224 = bitcast i8* %216 to i32*
  %225 = bitcast i64* %218 to i32*
  %226 = bitcast i8* %220 to i32*
  %227 = bitcast %union.VectorReg* %6 to <2 x float>*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400d29

block_40187e:                                     ; preds = %block_40188a, %block_401877
  %228 = phi i64 [ %7515, %block_40188a ], [ %.pre7, %block_401877 ]
  %229 = load i64, i64* %RBP, align 8
  %230 = add i64 %229, -60
  %231 = add i64 %228, 3
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = add i64 %229, -76
  %236 = add i64 %228, 6
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sub i32 %233, %238
  %240 = icmp ult i32 %233, %238
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %70, align 1, !tbaa !2432
  %242 = and i32 %239, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242) #8
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %76, align 1, !tbaa !2446
  %247 = xor i32 %238, %233
  %248 = xor i32 %247, %239
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %81, align 1, !tbaa !2447
  %252 = icmp eq i32 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %84, align 1, !tbaa !2448
  %254 = lshr i32 %239, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %87, align 1, !tbaa !2449
  %256 = lshr i32 %233, 31
  %257 = lshr i32 %238, 31
  %258 = xor i32 %257, %256
  %259 = xor i32 %254, %256
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %93, align 1, !tbaa !2450
  %263 = icmp ne i8 %255, 0
  %264 = xor i1 %263, %261
  %.v15 = select i1 %264, i64 12, i64 178
  %265 = add i64 %228, %.v15
  store i64 %265, i64* %184, align 8, !tbaa !2428
  br i1 %264, label %block_40188a, label %block_401930

block_401877:                                     ; preds = %block_40186b
  %266 = add i64 %270, -60
  %267 = add i64 %306, 7
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 1, i32* %268, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40187e

block_40186b:                                     ; preds = %block_401930, %block_401864
  %269 = phi i64 [ %7141, %block_401930 ], [ %.pre6, %block_401864 ]
  %270 = load i64, i64* %RBP, align 8
  %271 = add i64 %270, -56
  %272 = add i64 %269, 3
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = add i64 %270, -72
  %277 = add i64 %269, 6
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = sub i32 %274, %279
  %281 = icmp ult i32 %274, %279
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %70, align 1, !tbaa !2432
  %283 = and i32 %280, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283) #8
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %76, align 1, !tbaa !2446
  %288 = xor i32 %279, %274
  %289 = xor i32 %288, %280
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %81, align 1, !tbaa !2447
  %293 = icmp eq i32 %280, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %84, align 1, !tbaa !2448
  %295 = lshr i32 %280, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %87, align 1, !tbaa !2449
  %297 = lshr i32 %274, 31
  %298 = lshr i32 %279, 31
  %299 = xor i32 %298, %297
  %300 = xor i32 %295, %297
  %301 = add nuw nsw i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %93, align 1, !tbaa !2450
  %304 = icmp ne i8 %296, 0
  %305 = xor i1 %304, %302
  %.v14 = select i1 %305, i64 12, i64 216
  %306 = add i64 %269, %.v14
  store i64 %306, i64* %184, align 8, !tbaa !2428
  br i1 %305, label %block_401877, label %block_401943

block_401969:                                     ; preds = %block_400d29
  %307 = add i64 %7146, -80
  %308 = add i64 %7182, 5
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %310, i32* %311, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  store float 0.000000e+00, float* %197, align 1, !tbaa !2451
  %312 = add i64 %7182, 6
  store i64 %312, i64* %PC, align 8
  %313 = load i64, i64* %9, align 8, !tbaa !2428
  %314 = add i64 %313, 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RBP, align 8, !tbaa !2428
  store i64 %314, i64* %9, align 8, !tbaa !2428
  %317 = add i64 %7182, 7
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %314 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %184, align 8, !tbaa !2428
  %320 = add i64 %313, 16
  store i64 %320, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401864:                                     ; preds = %block_401858
  %321 = add i64 %6825, -56
  %322 = add i64 %6861, 7
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i32*
  store i32 1, i32* %323, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40186b

block_400d76:                                     ; preds = %block_400d6a
  %324 = add i64 %7033, -16
  %325 = add i64 %7069, 4
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = add i64 %7069, 7
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = add i64 %7069, 11
  store i64 %331, i64* %PC, align 8
  %332 = load i64, i64* %326, align 8
  store i64 %332, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %333 = add i64 %7069, 19
  store i64 %333, i64* %PC, align 8
  %334 = load i64, i64* %326, align 8
  store i64 %334, i64* %RCX, align 8, !tbaa !2428
  %335 = add i64 %7069, 23
  store i64 %335, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %336 = add i64 %7069, 27
  store i64 %336, i64* %PC, align 8
  %337 = load i64, i64* %326, align 8
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = add i64 %7069, 31
  store i64 %338, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %339 = add i64 %7033, -52
  %340 = add i64 %7069, 34
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RSI, align 8, !tbaa !2428
  %344 = add i64 %7069, 38
  store i64 %344, i64* %PC, align 8
  %345 = load i64, i64* %326, align 8
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  %346 = add i64 %345, 16
  %347 = add i64 %7069, 42
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %342 to i64
  %351 = sext i32 %349 to i64
  %352 = mul nsw i64 %351, %350
  %353 = trunc i64 %352 to i32
  %354 = and i64 %352, 4294967295
  store i64 %354, i64* %RSI, align 8, !tbaa !2428
  %355 = shl i64 %352, 32
  %356 = ashr exact i64 %355, 32
  %357 = icmp ne i64 %356, %352
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %70, align 1, !tbaa !2432
  %359 = and i32 %353, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359) #8
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %364 = lshr i32 %353, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %87, align 1, !tbaa !2449
  store i8 %358, i8* %93, align 1, !tbaa !2450
  %366 = add i64 %7069, 46
  store i64 %366, i64* %PC, align 8
  %367 = load i64, i64* %326, align 8
  store i64 %367, i64* %RCX, align 8, !tbaa !2428
  %368 = add i64 %367, 20
  %369 = add i64 %7069, 50
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = shl i64 %352, 32
  %373 = ashr exact i64 %372, 32
  %374 = sext i32 %371 to i64
  %375 = mul nsw i64 %374, %373
  %376 = and i64 %375, 4294967295
  store i64 %376, i64* %RSI, align 8, !tbaa !2428
  %377 = trunc i64 %375 to i32
  %378 = and i64 %375, 4294967295
  store i64 %378, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %379 = and i32 %377, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #8
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %384 = icmp eq i32 %377, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %84, align 1, !tbaa !2448
  %386 = lshr i32 %377, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -56
  %390 = add i64 %7069, 55
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RSI, align 8, !tbaa !2428
  %394 = add i64 %388, -16
  %395 = add i64 %7069, 59
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = add i64 %397, 20
  %399 = add i64 %7069, 63
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %392 to i64
  %403 = sext i32 %401 to i64
  %404 = mul nsw i64 %403, %402
  %405 = and i64 %404, 4294967295
  store i64 %405, i64* %RSI, align 8, !tbaa !2428
  %406 = trunc i64 %404 to i32
  %407 = add i32 %406, %377
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RDX, align 8, !tbaa !2428
  %409 = icmp ult i32 %407, %377
  %410 = icmp ult i32 %407, %406
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %70, align 1, !tbaa !2432
  %413 = and i32 %407, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #8
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %76, align 1, !tbaa !2446
  %418 = xor i64 %404, %375
  %419 = trunc i64 %418 to i32
  %420 = xor i32 %419, %407
  %421 = lshr i32 %420, 4
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %81, align 1, !tbaa !2447
  %424 = icmp eq i32 %407, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %84, align 1, !tbaa !2448
  %426 = lshr i32 %407, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %87, align 1, !tbaa !2449
  %428 = lshr i32 %406, 31
  %429 = xor i32 %426, %386
  %430 = xor i32 %426, %428
  %431 = add nuw nsw i32 %429, %430
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %93, align 1, !tbaa !2450
  %434 = add i64 %388, -60
  %435 = add i64 %7069, 68
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, %407
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RDX, align 8, !tbaa !2428
  %440 = icmp ult i32 %438, %407
  %441 = icmp ult i32 %438, %437
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %70, align 1, !tbaa !2432
  %444 = and i32 %438, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444) #8
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %76, align 1, !tbaa !2446
  %449 = xor i32 %437, %407
  %450 = xor i32 %449, %438
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %81, align 1, !tbaa !2447
  %454 = icmp eq i32 %438, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %84, align 1, !tbaa !2448
  %456 = lshr i32 %438, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %87, align 1, !tbaa !2449
  %458 = lshr i32 %437, 31
  %459 = xor i32 %456, %426
  %460 = xor i32 %456, %458
  %461 = add nuw nsw i32 %459, %460
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %93, align 1, !tbaa !2450
  %464 = sext i32 %438 to i64
  store i64 %464, i64* %RCX, align 8, !tbaa !2428
  %465 = load i64, i64* %RAX, align 8
  %466 = shl nsw i64 %464, 2
  %467 = add i64 %466, %465
  %468 = add i64 %7069, 76
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %470, i32* %471, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  store float 0.000000e+00, float* %197, align 1, !tbaa !2451
  %472 = load i64, i64* %RBP, align 8
  %473 = add i64 %472, -40
  %474 = add i64 %7069, 80
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = add i64 %7069, 83
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %480 = add i64 %7069, 87
  store i64 %480, i64* %PC, align 8
  %481 = load i64, i64* %475, align 8
  store i64 %481, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %482 = add i64 %7069, 95
  store i64 %482, i64* %PC, align 8
  %483 = load i64, i64* %475, align 8
  store i64 %483, i64* %RCX, align 8, !tbaa !2428
  %484 = add i64 %7069, 99
  store i64 %484, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %485 = add i64 %7069, 103
  store i64 %485, i64* %PC, align 8
  %486 = load i64, i64* %475, align 8
  store i64 %486, i64* %RCX, align 8, !tbaa !2428
  %487 = add i64 %7069, 107
  store i64 %487, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %488 = add i64 %472, -52
  %489 = add i64 %7069, 110
  store i64 %489, i64* %PC, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = add i32 %491, 1
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RSI, align 8, !tbaa !2428
  %494 = icmp eq i32 %491, -1
  %495 = icmp eq i32 %492, 0
  %496 = or i1 %494, %495
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %70, align 1, !tbaa !2432
  %498 = and i32 %492, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498) #8
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %76, align 1, !tbaa !2446
  %503 = xor i32 %491, %492
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %81, align 1, !tbaa !2447
  %507 = icmp eq i32 %492, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %84, align 1, !tbaa !2448
  %509 = lshr i32 %492, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %87, align 1, !tbaa !2449
  %511 = lshr i32 %491, 31
  %512 = xor i32 %509, %511
  %513 = add nuw nsw i32 %512, %509
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %93, align 1, !tbaa !2450
  %516 = load i64, i64* %RBP, align 8
  %517 = add i64 %516, -40
  %518 = add i64 %7069, 117
  store i64 %518, i64* %PC, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RCX, align 8, !tbaa !2428
  %521 = add i64 %520, 16
  %522 = add i64 %7069, 121
  store i64 %522, i64* %PC, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = sext i32 %492 to i64
  %526 = sext i32 %524 to i64
  %527 = mul nsw i64 %526, %525
  %528 = trunc i64 %527 to i32
  %529 = and i64 %527, 4294967295
  store i64 %529, i64* %RSI, align 8, !tbaa !2428
  %530 = shl i64 %527, 32
  %531 = ashr exact i64 %530, 32
  %532 = icmp ne i64 %531, %527
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %70, align 1, !tbaa !2432
  %534 = and i32 %528, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534) #8
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %539 = lshr i32 %528, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %87, align 1, !tbaa !2449
  store i8 %533, i8* %93, align 1, !tbaa !2450
  %541 = add i64 %7069, 125
  store i64 %541, i64* %PC, align 8
  %542 = load i64, i64* %519, align 8
  store i64 %542, i64* %RCX, align 8, !tbaa !2428
  %543 = add i64 %542, 20
  %544 = add i64 %7069, 129
  store i64 %544, i64* %PC, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = shl i64 %527, 32
  %548 = ashr exact i64 %547, 32
  %549 = sext i32 %546 to i64
  %550 = mul nsw i64 %549, %548
  %551 = and i64 %550, 4294967295
  store i64 %551, i64* %RSI, align 8, !tbaa !2428
  %552 = load i64, i64* %RDX, align 8
  %553 = trunc i64 %550 to i32
  %554 = trunc i64 %552 to i32
  %555 = add i32 %553, %554
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RDX, align 8, !tbaa !2428
  %557 = icmp ult i32 %555, %554
  %558 = icmp ult i32 %555, %553
  %559 = or i1 %557, %558
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %70, align 1, !tbaa !2432
  %561 = and i32 %555, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561) #8
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %76, align 1, !tbaa !2446
  %566 = xor i64 %550, %552
  %567 = trunc i64 %566 to i32
  %568 = xor i32 %567, %555
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %81, align 1, !tbaa !2447
  %572 = icmp eq i32 %555, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %84, align 1, !tbaa !2448
  %574 = lshr i32 %555, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %87, align 1, !tbaa !2449
  %576 = lshr i32 %554, 31
  %577 = lshr i32 %553, 31
  %578 = xor i32 %574, %576
  %579 = xor i32 %574, %577
  %580 = add nuw nsw i32 %578, %579
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %93, align 1, !tbaa !2450
  %583 = load i64, i64* %RBP, align 8
  %584 = add i64 %583, -56
  %585 = add i64 %7069, 134
  store i64 %585, i64* %PC, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RSI, align 8, !tbaa !2428
  %589 = add i64 %583, -40
  %590 = add i64 %7069, 138
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %RCX, align 8, !tbaa !2428
  %593 = add i64 %592, 20
  %594 = add i64 %7069, 142
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = sext i32 %587 to i64
  %598 = sext i32 %596 to i64
  %599 = mul nsw i64 %598, %597
  %600 = and i64 %599, 4294967295
  store i64 %600, i64* %RSI, align 8, !tbaa !2428
  %601 = trunc i64 %599 to i32
  %602 = add i32 %601, %555
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RDX, align 8, !tbaa !2428
  %604 = icmp ult i32 %602, %555
  %605 = icmp ult i32 %602, %601
  %606 = or i1 %604, %605
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %70, align 1, !tbaa !2432
  %608 = and i32 %602, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608) #8
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %76, align 1, !tbaa !2446
  %613 = xor i64 %599, %556
  %614 = trunc i64 %613 to i32
  %615 = xor i32 %614, %602
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %81, align 1, !tbaa !2447
  %619 = icmp eq i32 %602, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %84, align 1, !tbaa !2448
  %621 = lshr i32 %602, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %87, align 1, !tbaa !2449
  %623 = lshr i32 %601, 31
  %624 = xor i32 %621, %574
  %625 = xor i32 %621, %623
  %626 = add nuw nsw i32 %624, %625
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %93, align 1, !tbaa !2450
  %629 = add i64 %583, -60
  %630 = add i64 %7069, 147
  store i64 %630, i64* %PC, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i32 %632, %602
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RDX, align 8, !tbaa !2428
  %635 = icmp ult i32 %633, %602
  %636 = icmp ult i32 %633, %632
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %70, align 1, !tbaa !2432
  %639 = and i32 %633, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639) #8
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %76, align 1, !tbaa !2446
  %644 = xor i32 %632, %602
  %645 = xor i32 %644, %633
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %81, align 1, !tbaa !2447
  %649 = icmp eq i32 %633, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %84, align 1, !tbaa !2448
  %651 = lshr i32 %633, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %87, align 1, !tbaa !2449
  %653 = lshr i32 %632, 31
  %654 = xor i32 %651, %621
  %655 = xor i32 %651, %653
  %656 = add nuw nsw i32 %654, %655
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %93, align 1, !tbaa !2450
  %659 = sext i32 %633 to i64
  store i64 %659, i64* %RCX, align 8, !tbaa !2428
  %660 = load i64, i64* %RAX, align 8
  %661 = shl nsw i64 %659, 2
  %662 = add i64 %661, %660
  %663 = add i64 %7069, 155
  store i64 %663, i64* %PC, align 8
  %664 = load <2 x float>, <2 x float>* %198, align 1
  %665 = load <2 x i32>, <2 x i32>* %199, align 1
  %666 = inttoptr i64 %662 to float*
  %667 = load float, float* %666, align 4
  %668 = extractelement <2 x float> %664, i32 0
  %669 = fmul float %668, %667
  store float %669, float* %194, align 1, !tbaa !2451
  %670 = bitcast <2 x float> %664 to <2 x i32>
  %671 = extractelement <2 x i32> %670, i32 1
  store i32 %671, i32* %189, align 1, !tbaa !2451
  %672 = extractelement <2 x i32> %665, i32 0
  store i32 %672, i32* %190, align 1, !tbaa !2451
  %673 = extractelement <2 x i32> %665, i32 1
  store i32 %673, i32* %192, align 1, !tbaa !2451
  %674 = load i64, i64* %RBP, align 8
  %675 = add i64 %674, -16
  %676 = add i64 %7069, 159
  store i64 %676, i64* %PC, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RAX, align 8, !tbaa !2428
  %679 = add i64 %7069, 162
  store i64 %679, i64* %PC, align 8
  %680 = inttoptr i64 %678 to i64*
  %681 = load i64, i64* %680, align 8
  store i64 %681, i64* %RAX, align 8, !tbaa !2428
  %682 = add i64 %7069, 166
  store i64 %682, i64* %PC, align 8
  %683 = load i64, i64* %677, align 8
  store i64 %683, i64* %RCX, align 8, !tbaa !2428
  %684 = add i64 %683, 12
  %685 = add i64 %7069, 169
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RDX, align 8, !tbaa !2428
  %689 = add i64 %7069, 176
  store i64 %689, i64* %PC, align 8
  %690 = load i64, i64* %677, align 8
  store i64 %690, i64* %RCX, align 8, !tbaa !2428
  %691 = add i64 %690, 16
  %692 = add i64 %7069, 180
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = sext i32 %687 to i64
  %696 = sext i32 %694 to i64
  %697 = mul nsw i64 %696, %695
  %698 = trunc i64 %697 to i32
  %699 = and i64 %697, 4294967295
  store i64 %699, i64* %RDX, align 8, !tbaa !2428
  %700 = shl i64 %697, 32
  %701 = ashr exact i64 %700, 32
  %702 = icmp ne i64 %701, %697
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %70, align 1, !tbaa !2432
  %704 = and i32 %698, 255
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704) #8
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %709 = lshr i32 %698, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %87, align 1, !tbaa !2449
  store i8 %703, i8* %93, align 1, !tbaa !2450
  %711 = add i64 %7069, 184
  store i64 %711, i64* %PC, align 8
  %712 = load i64, i64* %677, align 8
  store i64 %712, i64* %RCX, align 8, !tbaa !2428
  %713 = add i64 %712, 20
  %714 = add i64 %7069, 188
  store i64 %714, i64* %PC, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = shl i64 %697, 32
  %718 = ashr exact i64 %717, 32
  %719 = sext i32 %716 to i64
  %720 = mul nsw i64 %719, %718
  %721 = trunc i64 %720 to i32
  %722 = and i64 %720, 4294967295
  store i64 %722, i64* %RDX, align 8, !tbaa !2428
  %723 = shl i64 %720, 32
  %724 = ashr exact i64 %723, 32
  %725 = icmp ne i64 %724, %720
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %70, align 1, !tbaa !2432
  %727 = and i32 %721, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727) #8
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %732 = lshr i32 %721, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %87, align 1, !tbaa !2449
  store i8 %726, i8* %93, align 1, !tbaa !2450
  %734 = add i64 %674, -52
  %735 = add i64 %7069, 191
  store i64 %735, i64* %PC, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RSI, align 8, !tbaa !2428
  %739 = add i64 %7069, 195
  store i64 %739, i64* %PC, align 8
  %740 = load i64, i64* %677, align 8
  store i64 %740, i64* %RCX, align 8, !tbaa !2428
  %741 = add i64 %740, 16
  %742 = add i64 %7069, 199
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = sext i32 %737 to i64
  %746 = sext i32 %744 to i64
  %747 = mul nsw i64 %746, %745
  %748 = trunc i64 %747 to i32
  %749 = and i64 %747, 4294967295
  store i64 %749, i64* %RSI, align 8, !tbaa !2428
  %750 = shl i64 %747, 32
  %751 = ashr exact i64 %750, 32
  %752 = icmp ne i64 %751, %747
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %70, align 1, !tbaa !2432
  %754 = and i32 %748, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754) #8
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %759 = lshr i32 %748, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %87, align 1, !tbaa !2449
  store i8 %753, i8* %93, align 1, !tbaa !2450
  %761 = load i64, i64* %RBP, align 8
  %762 = add i64 %761, -16
  %763 = add i64 %7069, 203
  store i64 %763, i64* %PC, align 8
  %764 = inttoptr i64 %762 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %765, i64* %RCX, align 8, !tbaa !2428
  %766 = add i64 %765, 20
  %767 = add i64 %7069, 207
  store i64 %767, i64* %PC, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = shl i64 %747, 32
  %771 = ashr exact i64 %770, 32
  %772 = sext i32 %769 to i64
  %773 = mul nsw i64 %772, %771
  %774 = and i64 %773, 4294967295
  store i64 %774, i64* %RSI, align 8, !tbaa !2428
  %775 = trunc i64 %773 to i32
  %776 = trunc i64 %720 to i32
  %777 = add i32 %775, %776
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RDX, align 8, !tbaa !2428
  %779 = icmp ult i32 %777, %776
  %780 = icmp ult i32 %777, %775
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %70, align 1, !tbaa !2432
  %783 = and i32 %777, 255
  %784 = tail call i32 @llvm.ctpop.i32(i32 %783) #8
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  store i8 %787, i8* %76, align 1, !tbaa !2446
  %788 = xor i64 %773, %720
  %789 = trunc i64 %788 to i32
  %790 = xor i32 %789, %777
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %81, align 1, !tbaa !2447
  %794 = icmp eq i32 %777, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %84, align 1, !tbaa !2448
  %796 = lshr i32 %777, 31
  %797 = trunc i32 %796 to i8
  store i8 %797, i8* %87, align 1, !tbaa !2449
  %798 = lshr i32 %776, 31
  %799 = lshr i32 %775, 31
  %800 = xor i32 %796, %798
  %801 = xor i32 %796, %799
  %802 = add nuw nsw i32 %800, %801
  %803 = icmp eq i32 %802, 2
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %93, align 1, !tbaa !2450
  %805 = add i64 %761, -56
  %806 = add i64 %7069, 212
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RSI, align 8, !tbaa !2428
  %810 = add i64 %7069, 216
  store i64 %810, i64* %PC, align 8
  %811 = load i64, i64* %764, align 8
  store i64 %811, i64* %RCX, align 8, !tbaa !2428
  %812 = add i64 %811, 20
  %813 = add i64 %7069, 220
  store i64 %813, i64* %PC, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sext i32 %808 to i64
  %817 = sext i32 %815 to i64
  %818 = mul nsw i64 %817, %816
  %819 = and i64 %818, 4294967295
  store i64 %819, i64* %RSI, align 8, !tbaa !2428
  %820 = trunc i64 %818 to i32
  %821 = add i32 %820, %777
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RDX, align 8, !tbaa !2428
  %823 = icmp ult i32 %821, %777
  %824 = icmp ult i32 %821, %820
  %825 = or i1 %823, %824
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %70, align 1, !tbaa !2432
  %827 = and i32 %821, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827) #8
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %76, align 1, !tbaa !2446
  %832 = xor i64 %818, %778
  %833 = trunc i64 %832 to i32
  %834 = xor i32 %833, %821
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %81, align 1, !tbaa !2447
  %838 = icmp eq i32 %821, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %84, align 1, !tbaa !2448
  %840 = lshr i32 %821, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %87, align 1, !tbaa !2449
  %842 = lshr i32 %820, 31
  %843 = xor i32 %840, %796
  %844 = xor i32 %840, %842
  %845 = add nuw nsw i32 %843, %844
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %93, align 1, !tbaa !2450
  %848 = load i64, i64* %RBP, align 8
  %849 = add i64 %848, -60
  %850 = add i64 %7069, 225
  store i64 %850, i64* %PC, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = add i32 %852, %821
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RDX, align 8, !tbaa !2428
  %855 = icmp ult i32 %853, %821
  %856 = icmp ult i32 %853, %852
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %70, align 1, !tbaa !2432
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859) #8
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %76, align 1, !tbaa !2446
  %864 = xor i32 %852, %821
  %865 = xor i32 %864, %853
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %81, align 1, !tbaa !2447
  %869 = icmp eq i32 %853, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %84, align 1, !tbaa !2448
  %871 = lshr i32 %853, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %87, align 1, !tbaa !2449
  %873 = lshr i32 %852, 31
  %874 = xor i32 %871, %840
  %875 = xor i32 %871, %873
  %876 = add nuw nsw i32 %874, %875
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %93, align 1, !tbaa !2450
  %879 = sext i32 %853 to i64
  store i64 %879, i64* %RCX, align 8, !tbaa !2428
  %880 = load i64, i64* %RAX, align 8
  %881 = shl nsw i64 %879, 2
  %882 = add i64 %881, %880
  %883 = add i64 %7069, 233
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = bitcast %union.VectorReg* %5 to i32*
  store i32 %885, i32* %886, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %887 = add i64 %848, -40
  %888 = add i64 %7069, 237
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  store i64 %890, i64* %RAX, align 8, !tbaa !2428
  %891 = add i64 %7069, 240
  store i64 %891, i64* %PC, align 8
  %892 = inttoptr i64 %890 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %RAX, align 8, !tbaa !2428
  %894 = add i64 %7069, 244
  store i64 %894, i64* %PC, align 8
  %895 = load i64, i64* %889, align 8
  store i64 %895, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %896 = add i64 %7069, 252
  store i64 %896, i64* %PC, align 8
  %897 = load i64, i64* %889, align 8
  store i64 %897, i64* %RCX, align 8, !tbaa !2428
  %898 = add i64 %7069, 256
  store i64 %898, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %899 = add i64 %7069, 260
  store i64 %899, i64* %PC, align 8
  %900 = load i64, i64* %889, align 8
  store i64 %900, i64* %RCX, align 8, !tbaa !2428
  %901 = add i64 %7069, 264
  store i64 %901, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %902 = load i64, i64* %RBP, align 8
  %903 = add i64 %902, -52
  %904 = add i64 %7069, 267
  store i64 %904, i64* %PC, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RSI, align 8, !tbaa !2428
  %908 = add i64 %902, -40
  %909 = add i64 %7069, 271
  store i64 %909, i64* %PC, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX, align 8, !tbaa !2428
  %912 = add i64 %911, 16
  %913 = add i64 %7069, 275
  store i64 %913, i64* %PC, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = sext i32 %906 to i64
  %917 = sext i32 %915 to i64
  %918 = mul nsw i64 %917, %916
  %919 = trunc i64 %918 to i32
  %920 = and i64 %918, 4294967295
  store i64 %920, i64* %RSI, align 8, !tbaa !2428
  %921 = shl i64 %918, 32
  %922 = ashr exact i64 %921, 32
  %923 = icmp ne i64 %922, %918
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %70, align 1, !tbaa !2432
  %925 = and i32 %919, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925) #8
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %930 = lshr i32 %919, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %87, align 1, !tbaa !2449
  store i8 %924, i8* %93, align 1, !tbaa !2450
  %932 = add i64 %7069, 279
  store i64 %932, i64* %PC, align 8
  %933 = load i64, i64* %910, align 8
  store i64 %933, i64* %RCX, align 8, !tbaa !2428
  %934 = add i64 %933, 20
  %935 = add i64 %7069, 283
  store i64 %935, i64* %PC, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = shl i64 %918, 32
  %939 = ashr exact i64 %938, 32
  %940 = sext i32 %937 to i64
  %941 = mul nsw i64 %940, %939
  %942 = and i64 %941, 4294967295
  store i64 %942, i64* %RSI, align 8, !tbaa !2428
  %943 = trunc i64 %941 to i32
  %944 = and i64 %941, 4294967295
  store i64 %944, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %945 = and i32 %943, 255
  %946 = tail call i32 @llvm.ctpop.i32(i32 %945) #8
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  store i8 %949, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %950 = icmp eq i32 %943, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %84, align 1, !tbaa !2448
  %952 = lshr i32 %943, 31
  %953 = trunc i32 %952 to i8
  store i8 %953, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %954 = add i64 %902, -56
  %955 = add i64 %7069, 288
  store i64 %955, i64* %PC, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = add i32 %957, 1
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RSI, align 8, !tbaa !2428
  %960 = icmp eq i32 %957, -1
  %961 = icmp eq i32 %958, 0
  %962 = or i1 %960, %961
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %70, align 1, !tbaa !2432
  %964 = and i32 %958, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964) #8
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %76, align 1, !tbaa !2446
  %969 = xor i32 %957, %958
  %970 = lshr i32 %969, 4
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  store i8 %972, i8* %81, align 1, !tbaa !2447
  %973 = icmp eq i32 %958, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %84, align 1, !tbaa !2448
  %975 = lshr i32 %958, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %87, align 1, !tbaa !2449
  %977 = lshr i32 %957, 31
  %978 = xor i32 %975, %977
  %979 = add nuw nsw i32 %978, %975
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %93, align 1, !tbaa !2450
  %982 = load i64, i64* %RBP, align 8
  %983 = add i64 %982, -40
  %984 = add i64 %7069, 295
  store i64 %984, i64* %PC, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RCX, align 8, !tbaa !2428
  %987 = add i64 %986, 20
  %988 = add i64 %7069, 299
  store i64 %988, i64* %PC, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = sext i32 %958 to i64
  %992 = sext i32 %990 to i64
  %993 = mul nsw i64 %992, %991
  %994 = and i64 %993, 4294967295
  store i64 %994, i64* %RSI, align 8, !tbaa !2428
  %995 = trunc i64 %993 to i32
  %996 = add i32 %995, %943
  %997 = zext i32 %996 to i64
  store i64 %997, i64* %RDX, align 8, !tbaa !2428
  %998 = icmp ult i32 %996, %943
  %999 = icmp ult i32 %996, %995
  %1000 = or i1 %998, %999
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %70, align 1, !tbaa !2432
  %1002 = and i32 %996, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002) #8
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %76, align 1, !tbaa !2446
  %1007 = xor i64 %993, %941
  %1008 = trunc i64 %1007 to i32
  %1009 = xor i32 %1008, %996
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %81, align 1, !tbaa !2447
  %1013 = icmp eq i32 %996, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %84, align 1, !tbaa !2448
  %1015 = lshr i32 %996, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %87, align 1, !tbaa !2449
  %1017 = lshr i32 %995, 31
  %1018 = xor i32 %1015, %952
  %1019 = xor i32 %1015, %1017
  %1020 = add nuw nsw i32 %1018, %1019
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %93, align 1, !tbaa !2450
  %1023 = add i64 %982, -60
  %1024 = add i64 %7069, 304
  store i64 %1024, i64* %PC, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = add i32 %1026, %996
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RDX, align 8, !tbaa !2428
  %1029 = icmp ult i32 %1027, %996
  %1030 = icmp ult i32 %1027, %1026
  %1031 = or i1 %1029, %1030
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %70, align 1, !tbaa !2432
  %1033 = and i32 %1027, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033) #8
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %76, align 1, !tbaa !2446
  %1038 = xor i32 %1026, %996
  %1039 = xor i32 %1038, %1027
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %81, align 1, !tbaa !2447
  %1043 = icmp eq i32 %1027, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %84, align 1, !tbaa !2448
  %1045 = lshr i32 %1027, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %87, align 1, !tbaa !2449
  %1047 = lshr i32 %1026, 31
  %1048 = xor i32 %1045, %1015
  %1049 = xor i32 %1045, %1047
  %1050 = add nuw nsw i32 %1048, %1049
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %93, align 1, !tbaa !2450
  %1053 = sext i32 %1027 to i64
  store i64 %1053, i64* %RCX, align 8, !tbaa !2428
  %1054 = load i64, i64* %RAX, align 8
  %1055 = shl nsw i64 %1053, 2
  %1056 = add i64 %1055, %1054
  %1057 = add i64 %7069, 312
  store i64 %1057, i64* %PC, align 8
  %1058 = load <2 x float>, <2 x float>* %208, align 1
  %1059 = load <2 x i32>, <2 x i32>* %209, align 1
  %1060 = inttoptr i64 %1056 to float*
  %1061 = load float, float* %1060, align 4
  %1062 = extractelement <2 x float> %1058, i32 0
  %1063 = fmul float %1062, %1061
  store float %1063, float* %201, align 1, !tbaa !2451
  %1064 = bitcast <2 x float> %1058 to <2 x i32>
  %1065 = extractelement <2 x i32> %1064, i32 1
  store i32 %1065, i32* %210, align 1, !tbaa !2451
  %1066 = extractelement <2 x i32> %1059, i32 0
  store i32 %1066, i32* %211, align 1, !tbaa !2451
  %1067 = extractelement <2 x i32> %1059, i32 1
  store i32 %1067, i32* %212, align 1, !tbaa !2451
  %1068 = load <2 x float>, <2 x float>* %198, align 1
  %1069 = load <2 x i32>, <2 x i32>* %199, align 1
  %1070 = load <2 x float>, <2 x float>* %213, align 1
  %1071 = extractelement <2 x float> %1068, i32 0
  %1072 = extractelement <2 x float> %1070, i32 0
  %1073 = fadd float %1071, %1072
  store float %1073, float* %194, align 1, !tbaa !2451
  %1074 = bitcast <2 x float> %1068 to <2 x i32>
  %1075 = extractelement <2 x i32> %1074, i32 1
  store i32 %1075, i32* %189, align 1, !tbaa !2451
  %1076 = extractelement <2 x i32> %1069, i32 0
  store i32 %1076, i32* %190, align 1, !tbaa !2451
  %1077 = extractelement <2 x i32> %1069, i32 1
  store i32 %1077, i32* %192, align 1, !tbaa !2451
  %1078 = load i64, i64* %RBP, align 8
  %1079 = add i64 %1078, -16
  %1080 = add i64 %7069, 320
  store i64 %1080, i64* %PC, align 8
  %1081 = inttoptr i64 %1079 to i64*
  %1082 = load i64, i64* %1081, align 8
  store i64 %1082, i64* %RAX, align 8, !tbaa !2428
  %1083 = add i64 %7069, 323
  store i64 %1083, i64* %PC, align 8
  %1084 = inttoptr i64 %1082 to i64*
  %1085 = load i64, i64* %1084, align 8
  store i64 %1085, i64* %RAX, align 8, !tbaa !2428
  %1086 = add i64 %7069, 327
  store i64 %1086, i64* %PC, align 8
  %1087 = load i64, i64* %1081, align 8
  store i64 %1087, i64* %RCX, align 8, !tbaa !2428
  %1088 = add i64 %1087, 12
  %1089 = add i64 %7069, 330
  store i64 %1089, i64* %PC, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = shl i32 %1091, 1
  %1093 = icmp slt i32 %1091, 0
  %1094 = icmp slt i32 %1092, 0
  %1095 = xor i1 %1093, %1094
  %1096 = zext i32 %1092 to i64
  store i64 %1096, i64* %RDX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1091, 31
  %1097 = trunc i32 %.lobit to i8
  store i8 %1097, i8* %70, align 1, !tbaa !2453
  %1098 = and i32 %1092, 254
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098) #8
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %1103 = icmp eq i32 %1092, 0
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %84, align 1, !tbaa !2453
  %1105 = lshr i32 %1091, 30
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %87, align 1, !tbaa !2453
  %1108 = zext i1 %1095 to i8
  store i8 %1108, i8* %93, align 1, !tbaa !2453
  %1109 = add i64 %7069, 337
  store i64 %1109, i64* %PC, align 8
  %1110 = load i64, i64* %1081, align 8
  store i64 %1110, i64* %RCX, align 8, !tbaa !2428
  %1111 = add i64 %1110, 16
  %1112 = add i64 %7069, 341
  store i64 %1112, i64* %PC, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1092 to i64
  %1116 = sext i32 %1114 to i64
  %1117 = mul nsw i64 %1116, %1115
  %1118 = trunc i64 %1117 to i32
  %1119 = and i64 %1117, 4294967294
  store i64 %1119, i64* %RDX, align 8, !tbaa !2428
  %1120 = shl i64 %1117, 32
  %1121 = ashr exact i64 %1120, 32
  %1122 = icmp ne i64 %1121, %1117
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %70, align 1, !tbaa !2432
  %1124 = and i32 %1118, 254
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
  %1131 = add i64 %7069, 345
  store i64 %1131, i64* %PC, align 8
  %1132 = load i64, i64* %1081, align 8
  store i64 %1132, i64* %RCX, align 8, !tbaa !2428
  %1133 = add i64 %1132, 20
  %1134 = add i64 %7069, 349
  store i64 %1134, i64* %PC, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = shl i64 %1117, 32
  %1138 = ashr exact i64 %1137, 32
  %1139 = sext i32 %1136 to i64
  %1140 = mul nsw i64 %1139, %1138
  %1141 = trunc i64 %1140 to i32
  %1142 = and i64 %1140, 4294967295
  store i64 %1142, i64* %RDX, align 8, !tbaa !2428
  %1143 = shl i64 %1140, 32
  %1144 = ashr exact i64 %1143, 32
  %1145 = icmp ne i64 %1144, %1140
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %70, align 1, !tbaa !2432
  %1147 = and i32 %1141, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147) #8
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1152 = lshr i32 %1141, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %87, align 1, !tbaa !2449
  store i8 %1146, i8* %93, align 1, !tbaa !2450
  %1154 = load i64, i64* %RBP, align 8
  %1155 = add i64 %1154, -52
  %1156 = add i64 %7069, 352
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RSI, align 8, !tbaa !2428
  %1160 = add i64 %1154, -16
  %1161 = add i64 %7069, 356
  store i64 %1161, i64* %PC, align 8
  %1162 = inttoptr i64 %1160 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %RCX, align 8, !tbaa !2428
  %1164 = add i64 %1163, 16
  %1165 = add i64 %7069, 360
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1158 to i64
  %1169 = sext i32 %1167 to i64
  %1170 = mul nsw i64 %1169, %1168
  %1171 = trunc i64 %1170 to i32
  %1172 = and i64 %1170, 4294967295
  store i64 %1172, i64* %RSI, align 8, !tbaa !2428
  %1173 = shl i64 %1170, 32
  %1174 = ashr exact i64 %1173, 32
  %1175 = icmp ne i64 %1174, %1170
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %70, align 1, !tbaa !2432
  %1177 = and i32 %1171, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177) #8
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1182 = lshr i32 %1171, 31
  %1183 = trunc i32 %1182 to i8
  store i8 %1183, i8* %87, align 1, !tbaa !2449
  store i8 %1176, i8* %93, align 1, !tbaa !2450
  %1184 = add i64 %7069, 364
  store i64 %1184, i64* %PC, align 8
  %1185 = load i64, i64* %1162, align 8
  store i64 %1185, i64* %RCX, align 8, !tbaa !2428
  %1186 = add i64 %1185, 20
  %1187 = add i64 %7069, 368
  store i64 %1187, i64* %PC, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = shl i64 %1170, 32
  %1191 = ashr exact i64 %1190, 32
  %1192 = sext i32 %1189 to i64
  %1193 = mul nsw i64 %1192, %1191
  %1194 = and i64 %1193, 4294967295
  store i64 %1194, i64* %RSI, align 8, !tbaa !2428
  %1195 = trunc i64 %1193 to i32
  %1196 = trunc i64 %1140 to i32
  %1197 = add i32 %1195, %1196
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RDX, align 8, !tbaa !2428
  %1199 = icmp ult i32 %1197, %1196
  %1200 = icmp ult i32 %1197, %1195
  %1201 = or i1 %1199, %1200
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %70, align 1, !tbaa !2432
  %1203 = and i32 %1197, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203) #8
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %76, align 1, !tbaa !2446
  %1208 = xor i64 %1193, %1140
  %1209 = trunc i64 %1208 to i32
  %1210 = xor i32 %1209, %1197
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %81, align 1, !tbaa !2447
  %1214 = icmp eq i32 %1197, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %84, align 1, !tbaa !2448
  %1216 = lshr i32 %1197, 31
  %1217 = trunc i32 %1216 to i8
  store i8 %1217, i8* %87, align 1, !tbaa !2449
  %1218 = lshr i32 %1196, 31
  %1219 = lshr i32 %1195, 31
  %1220 = xor i32 %1216, %1218
  %1221 = xor i32 %1216, %1219
  %1222 = add nuw nsw i32 %1220, %1221
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %93, align 1, !tbaa !2450
  %1225 = load i64, i64* %RBP, align 8
  %1226 = add i64 %1225, -56
  %1227 = add i64 %7069, 373
  store i64 %1227, i64* %PC, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RSI, align 8, !tbaa !2428
  %1231 = add i64 %1225, -16
  %1232 = add i64 %7069, 377
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i64*
  %1234 = load i64, i64* %1233, align 8
  store i64 %1234, i64* %RCX, align 8, !tbaa !2428
  %1235 = add i64 %1234, 20
  %1236 = add i64 %7069, 381
  store i64 %1236, i64* %PC, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = sext i32 %1229 to i64
  %1240 = sext i32 %1238 to i64
  %1241 = mul nsw i64 %1240, %1239
  %1242 = and i64 %1241, 4294967295
  store i64 %1242, i64* %RSI, align 8, !tbaa !2428
  %1243 = trunc i64 %1241 to i32
  %1244 = add i32 %1243, %1197
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RDX, align 8, !tbaa !2428
  %1246 = icmp ult i32 %1244, %1197
  %1247 = icmp ult i32 %1244, %1243
  %1248 = or i1 %1246, %1247
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %70, align 1, !tbaa !2432
  %1250 = and i32 %1244, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250) #8
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %76, align 1, !tbaa !2446
  %1255 = xor i64 %1241, %1198
  %1256 = trunc i64 %1255 to i32
  %1257 = xor i32 %1256, %1244
  %1258 = lshr i32 %1257, 4
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  store i8 %1260, i8* %81, align 1, !tbaa !2447
  %1261 = icmp eq i32 %1244, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %84, align 1, !tbaa !2448
  %1263 = lshr i32 %1244, 31
  %1264 = trunc i32 %1263 to i8
  store i8 %1264, i8* %87, align 1, !tbaa !2449
  %1265 = lshr i32 %1243, 31
  %1266 = xor i32 %1263, %1216
  %1267 = xor i32 %1263, %1265
  %1268 = add nuw nsw i32 %1266, %1267
  %1269 = icmp eq i32 %1268, 2
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %93, align 1, !tbaa !2450
  %1271 = add i64 %1225, -60
  %1272 = add i64 %7069, 386
  store i64 %1272, i64* %PC, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = add i32 %1274, %1244
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RDX, align 8, !tbaa !2428
  %1277 = icmp ult i32 %1275, %1244
  %1278 = icmp ult i32 %1275, %1274
  %1279 = or i1 %1277, %1278
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %70, align 1, !tbaa !2432
  %1281 = and i32 %1275, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281) #8
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %76, align 1, !tbaa !2446
  %1286 = xor i32 %1274, %1244
  %1287 = xor i32 %1286, %1275
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %81, align 1, !tbaa !2447
  %1291 = icmp eq i32 %1275, 0
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %84, align 1, !tbaa !2448
  %1293 = lshr i32 %1275, 31
  %1294 = trunc i32 %1293 to i8
  store i8 %1294, i8* %87, align 1, !tbaa !2449
  %1295 = lshr i32 %1274, 31
  %1296 = xor i32 %1293, %1263
  %1297 = xor i32 %1293, %1295
  %1298 = add nuw nsw i32 %1296, %1297
  %1299 = icmp eq i32 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %93, align 1, !tbaa !2450
  %1301 = sext i32 %1275 to i64
  store i64 %1301, i64* %RCX, align 8, !tbaa !2428
  %1302 = load i64, i64* %RAX, align 8
  %1303 = shl nsw i64 %1301, 2
  %1304 = add i64 %1303, %1302
  %1305 = add i64 %7069, 394
  store i64 %1305, i64* %PC, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = bitcast %union.VectorReg* %5 to i32*
  store i32 %1307, i32* %1308, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %1309 = load i64, i64* %RBP, align 8
  %1310 = add i64 %1309, -40
  %1311 = add i64 %7069, 398
  store i64 %1311, i64* %PC, align 8
  %1312 = inttoptr i64 %1310 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %RAX, align 8, !tbaa !2428
  %1314 = add i64 %7069, 401
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1313 to i64*
  %1316 = load i64, i64* %1315, align 8
  store i64 %1316, i64* %RAX, align 8, !tbaa !2428
  %1317 = add i64 %7069, 405
  store i64 %1317, i64* %PC, align 8
  %1318 = load i64, i64* %1312, align 8
  store i64 %1318, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1319 = add i64 %7069, 413
  store i64 %1319, i64* %PC, align 8
  %1320 = load i64, i64* %1312, align 8
  store i64 %1320, i64* %RCX, align 8, !tbaa !2428
  %1321 = add i64 %7069, 417
  store i64 %1321, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1322 = add i64 %7069, 421
  store i64 %1322, i64* %PC, align 8
  %1323 = load i64, i64* %1312, align 8
  store i64 %1323, i64* %RCX, align 8, !tbaa !2428
  %1324 = add i64 %7069, 425
  store i64 %1324, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1325 = add i64 %1309, -52
  %1326 = add i64 %7069, 428
  store i64 %1326, i64* %PC, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RSI, align 8, !tbaa !2428
  %1330 = add i64 %7069, 432
  store i64 %1330, i64* %PC, align 8
  %1331 = load i64, i64* %1312, align 8
  store i64 %1331, i64* %RCX, align 8, !tbaa !2428
  %1332 = add i64 %1331, 16
  %1333 = add i64 %7069, 436
  store i64 %1333, i64* %PC, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = sext i32 %1328 to i64
  %1337 = sext i32 %1335 to i64
  %1338 = mul nsw i64 %1337, %1336
  %1339 = trunc i64 %1338 to i32
  %1340 = and i64 %1338, 4294967295
  store i64 %1340, i64* %RSI, align 8, !tbaa !2428
  %1341 = shl i64 %1338, 32
  %1342 = ashr exact i64 %1341, 32
  %1343 = icmp ne i64 %1342, %1338
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %70, align 1, !tbaa !2432
  %1345 = and i32 %1339, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345) #8
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1350 = lshr i32 %1339, 31
  %1351 = trunc i32 %1350 to i8
  store i8 %1351, i8* %87, align 1, !tbaa !2449
  store i8 %1344, i8* %93, align 1, !tbaa !2450
  %1352 = add i64 %7069, 440
  store i64 %1352, i64* %PC, align 8
  %1353 = load i64, i64* %1312, align 8
  store i64 %1353, i64* %RCX, align 8, !tbaa !2428
  %1354 = add i64 %1353, 20
  %1355 = add i64 %7069, 444
  store i64 %1355, i64* %PC, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = shl i64 %1338, 32
  %1359 = ashr exact i64 %1358, 32
  %1360 = sext i32 %1357 to i64
  %1361 = mul nsw i64 %1360, %1359
  %1362 = and i64 %1361, 4294967295
  store i64 %1362, i64* %RSI, align 8, !tbaa !2428
  %1363 = trunc i64 %1361 to i32
  %1364 = and i64 %1361, 4294967295
  store i64 %1364, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1365 = and i32 %1363, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365) #8
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1370 = icmp eq i32 %1363, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %84, align 1, !tbaa !2448
  %1372 = lshr i32 %1363, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1374 = load i64, i64* %RBP, align 8
  %1375 = add i64 %1374, -56
  %1376 = add i64 %7069, 449
  store i64 %1376, i64* %PC, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RSI, align 8, !tbaa !2428
  %1380 = add i64 %1374, -40
  %1381 = add i64 %7069, 453
  store i64 %1381, i64* %PC, align 8
  %1382 = inttoptr i64 %1380 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RCX, align 8, !tbaa !2428
  %1384 = add i64 %1383, 20
  %1385 = add i64 %7069, 457
  store i64 %1385, i64* %PC, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = sext i32 %1378 to i64
  %1389 = sext i32 %1387 to i64
  %1390 = mul nsw i64 %1389, %1388
  %1391 = and i64 %1390, 4294967295
  store i64 %1391, i64* %RSI, align 8, !tbaa !2428
  %1392 = trunc i64 %1390 to i32
  %1393 = add i32 %1392, %1363
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RDX, align 8, !tbaa !2428
  %1395 = icmp ult i32 %1393, %1363
  %1396 = icmp ult i32 %1393, %1392
  %1397 = or i1 %1395, %1396
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %70, align 1, !tbaa !2432
  %1399 = and i32 %1393, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399) #8
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %76, align 1, !tbaa !2446
  %1404 = xor i64 %1390, %1361
  %1405 = trunc i64 %1404 to i32
  %1406 = xor i32 %1405, %1393
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %81, align 1, !tbaa !2447
  %1410 = icmp eq i32 %1393, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %84, align 1, !tbaa !2448
  %1412 = lshr i32 %1393, 31
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, i8* %87, align 1, !tbaa !2449
  %1414 = lshr i32 %1392, 31
  %1415 = xor i32 %1412, %1372
  %1416 = xor i32 %1412, %1414
  %1417 = add nuw nsw i32 %1415, %1416
  %1418 = icmp eq i32 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %93, align 1, !tbaa !2450
  %1420 = add i64 %1374, -60
  %1421 = add i64 %7069, 462
  store i64 %1421, i64* %PC, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = add i32 %1423, 1
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RSI, align 8, !tbaa !2428
  %1426 = lshr i32 %1424, 31
  %1427 = add i32 %1424, %1393
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RDX, align 8, !tbaa !2428
  %1429 = icmp ult i32 %1427, %1393
  %1430 = icmp ult i32 %1427, %1424
  %1431 = or i1 %1429, %1430
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %70, align 1, !tbaa !2432
  %1433 = and i32 %1427, 255
  %1434 = tail call i32 @llvm.ctpop.i32(i32 %1433) #8
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  store i8 %1437, i8* %76, align 1, !tbaa !2446
  %1438 = xor i32 %1424, %1393
  %1439 = xor i32 %1438, %1427
  %1440 = lshr i32 %1439, 4
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  store i8 %1442, i8* %81, align 1, !tbaa !2447
  %1443 = icmp eq i32 %1427, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %84, align 1, !tbaa !2448
  %1445 = lshr i32 %1427, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %87, align 1, !tbaa !2449
  %1447 = xor i32 %1445, %1412
  %1448 = xor i32 %1445, %1426
  %1449 = add nuw nsw i32 %1447, %1448
  %1450 = icmp eq i32 %1449, 2
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %93, align 1, !tbaa !2450
  %1452 = sext i32 %1427 to i64
  store i64 %1452, i64* %RCX, align 8, !tbaa !2428
  %1453 = load i64, i64* %RAX, align 8
  %1454 = shl nsw i64 %1452, 2
  %1455 = add i64 %1454, %1453
  %1456 = add i64 %7069, 475
  store i64 %1456, i64* %PC, align 8
  %1457 = load <2 x float>, <2 x float>* %208, align 1
  %1458 = load <2 x i32>, <2 x i32>* %209, align 1
  %1459 = inttoptr i64 %1455 to float*
  %1460 = load float, float* %1459, align 4
  %1461 = extractelement <2 x float> %1457, i32 0
  %1462 = fmul float %1461, %1460
  store float %1462, float* %201, align 1, !tbaa !2451
  %1463 = bitcast <2 x float> %1457 to <2 x i32>
  %1464 = extractelement <2 x i32> %1463, i32 1
  store i32 %1464, i32* %210, align 1, !tbaa !2451
  %1465 = extractelement <2 x i32> %1458, i32 0
  store i32 %1465, i32* %211, align 1, !tbaa !2451
  %1466 = extractelement <2 x i32> %1458, i32 1
  store i32 %1466, i32* %212, align 1, !tbaa !2451
  %1467 = load <2 x float>, <2 x float>* %198, align 1
  %1468 = load <2 x i32>, <2 x i32>* %199, align 1
  %1469 = load <2 x float>, <2 x float>* %213, align 1
  %1470 = extractelement <2 x float> %1467, i32 0
  %1471 = extractelement <2 x float> %1469, i32 0
  %1472 = fadd float %1470, %1471
  store float %1472, float* %194, align 1, !tbaa !2451
  %1473 = bitcast <2 x float> %1467 to <2 x i32>
  %1474 = extractelement <2 x i32> %1473, i32 1
  store i32 %1474, i32* %189, align 1, !tbaa !2451
  %1475 = extractelement <2 x i32> %1468, i32 0
  store i32 %1475, i32* %190, align 1, !tbaa !2451
  %1476 = extractelement <2 x i32> %1468, i32 1
  store i32 %1476, i32* %192, align 1, !tbaa !2451
  %1477 = load i64, i64* %RBP, align 8
  %1478 = add i64 %1477, -24
  %1479 = add i64 %7069, 483
  store i64 %1479, i64* %PC, align 8
  %1480 = inttoptr i64 %1478 to i64*
  %1481 = load i64, i64* %1480, align 8
  store i64 %1481, i64* %RAX, align 8, !tbaa !2428
  %1482 = add i64 %7069, 486
  store i64 %1482, i64* %PC, align 8
  %1483 = inttoptr i64 %1481 to i64*
  %1484 = load i64, i64* %1483, align 8
  store i64 %1484, i64* %RAX, align 8, !tbaa !2428
  %1485 = add i64 %7069, 490
  store i64 %1485, i64* %PC, align 8
  %1486 = load i64, i64* %1480, align 8
  store i64 %1486, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1487 = add i64 %7069, 498
  store i64 %1487, i64* %PC, align 8
  %1488 = load i64, i64* %1480, align 8
  store i64 %1488, i64* %RCX, align 8, !tbaa !2428
  %1489 = add i64 %7069, 502
  store i64 %1489, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1490 = add i64 %7069, 506
  store i64 %1490, i64* %PC, align 8
  %1491 = load i64, i64* %1480, align 8
  store i64 %1491, i64* %RCX, align 8, !tbaa !2428
  %1492 = add i64 %7069, 510
  store i64 %1492, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1493 = add i64 %1477, -52
  %1494 = add i64 %7069, 513
  store i64 %1494, i64* %PC, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RSI, align 8, !tbaa !2428
  %1498 = add i64 %7069, 517
  store i64 %1498, i64* %PC, align 8
  %1499 = load i64, i64* %1480, align 8
  store i64 %1499, i64* %RCX, align 8, !tbaa !2428
  %1500 = add i64 %1499, 16
  %1501 = add i64 %7069, 521
  store i64 %1501, i64* %PC, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = sext i32 %1496 to i64
  %1505 = sext i32 %1503 to i64
  %1506 = mul nsw i64 %1505, %1504
  %1507 = trunc i64 %1506 to i32
  %1508 = and i64 %1506, 4294967295
  store i64 %1508, i64* %RSI, align 8, !tbaa !2428
  %1509 = shl i64 %1506, 32
  %1510 = ashr exact i64 %1509, 32
  %1511 = icmp ne i64 %1510, %1506
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %70, align 1, !tbaa !2432
  %1513 = and i32 %1507, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513) #8
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1518 = lshr i32 %1507, 31
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, i8* %87, align 1, !tbaa !2449
  store i8 %1512, i8* %93, align 1, !tbaa !2450
  %1520 = add i64 %7069, 525
  store i64 %1520, i64* %PC, align 8
  %1521 = load i64, i64* %1480, align 8
  store i64 %1521, i64* %RCX, align 8, !tbaa !2428
  %1522 = add i64 %1521, 20
  %1523 = add i64 %7069, 529
  store i64 %1523, i64* %PC, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = shl i64 %1506, 32
  %1527 = ashr exact i64 %1526, 32
  %1528 = sext i32 %1525 to i64
  %1529 = mul nsw i64 %1528, %1527
  %1530 = and i64 %1529, 4294967295
  store i64 %1530, i64* %RSI, align 8, !tbaa !2428
  %1531 = trunc i64 %1529 to i32
  %1532 = and i64 %1529, 4294967295
  store i64 %1532, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %1533 = and i32 %1531, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533) #8
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %1538 = icmp eq i32 %1531, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %84, align 1, !tbaa !2448
  %1540 = lshr i32 %1531, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1542 = load i64, i64* %RBP, align 8
  %1543 = add i64 %1542, -56
  %1544 = add i64 %7069, 534
  store i64 %1544, i64* %PC, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RSI, align 8, !tbaa !2428
  %1548 = add i64 %1542, -24
  %1549 = add i64 %7069, 538
  store i64 %1549, i64* %PC, align 8
  %1550 = inttoptr i64 %1548 to i64*
  %1551 = load i64, i64* %1550, align 8
  store i64 %1551, i64* %RCX, align 8, !tbaa !2428
  %1552 = add i64 %1551, 20
  %1553 = add i64 %7069, 542
  store i64 %1553, i64* %PC, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1546 to i64
  %1557 = sext i32 %1555 to i64
  %1558 = mul nsw i64 %1557, %1556
  %1559 = and i64 %1558, 4294967295
  store i64 %1559, i64* %RSI, align 8, !tbaa !2428
  %1560 = trunc i64 %1558 to i32
  %1561 = add i32 %1560, %1531
  %1562 = zext i32 %1561 to i64
  store i64 %1562, i64* %RDX, align 8, !tbaa !2428
  %1563 = icmp ult i32 %1561, %1531
  %1564 = icmp ult i32 %1561, %1560
  %1565 = or i1 %1563, %1564
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %70, align 1, !tbaa !2432
  %1567 = and i32 %1561, 255
  %1568 = tail call i32 @llvm.ctpop.i32(i32 %1567) #8
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %76, align 1, !tbaa !2446
  %1572 = xor i64 %1558, %1529
  %1573 = trunc i64 %1572 to i32
  %1574 = xor i32 %1573, %1561
  %1575 = lshr i32 %1574, 4
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  store i8 %1577, i8* %81, align 1, !tbaa !2447
  %1578 = icmp eq i32 %1561, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %84, align 1, !tbaa !2448
  %1580 = lshr i32 %1561, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %87, align 1, !tbaa !2449
  %1582 = lshr i32 %1560, 31
  %1583 = xor i32 %1580, %1540
  %1584 = xor i32 %1580, %1582
  %1585 = add nuw nsw i32 %1583, %1584
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %93, align 1, !tbaa !2450
  %1588 = add i64 %1542, -60
  %1589 = add i64 %7069, 547
  store i64 %1589, i64* %PC, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = add i32 %1591, %1561
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RDX, align 8, !tbaa !2428
  %1594 = icmp ult i32 %1592, %1561
  %1595 = icmp ult i32 %1592, %1591
  %1596 = or i1 %1594, %1595
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %70, align 1, !tbaa !2432
  %1598 = and i32 %1592, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598) #8
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %76, align 1, !tbaa !2446
  %1603 = xor i32 %1591, %1561
  %1604 = xor i32 %1603, %1592
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %81, align 1, !tbaa !2447
  %1608 = icmp eq i32 %1592, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %84, align 1, !tbaa !2448
  %1610 = lshr i32 %1592, 31
  %1611 = trunc i32 %1610 to i8
  store i8 %1611, i8* %87, align 1, !tbaa !2449
  %1612 = lshr i32 %1591, 31
  %1613 = xor i32 %1610, %1580
  %1614 = xor i32 %1610, %1612
  %1615 = add nuw nsw i32 %1613, %1614
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %93, align 1, !tbaa !2450
  %1618 = sext i32 %1592 to i64
  store i64 %1618, i64* %RCX, align 8, !tbaa !2428
  %1619 = load i64, i64* %RAX, align 8
  %1620 = shl nsw i64 %1618, 2
  %1621 = add i64 %1620, %1619
  %1622 = add i64 %7069, 555
  store i64 %1622, i64* %PC, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = bitcast %union.VectorReg* %5 to i32*
  store i32 %1624, i32* %1625, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %1626 = load i64, i64* %RBP, align 8
  %1627 = add i64 %1626, -40
  %1628 = add i64 %7069, 559
  store i64 %1628, i64* %PC, align 8
  %1629 = inttoptr i64 %1627 to i64*
  %1630 = load i64, i64* %1629, align 8
  store i64 %1630, i64* %RAX, align 8, !tbaa !2428
  %1631 = add i64 %7069, 562
  store i64 %1631, i64* %PC, align 8
  %1632 = inttoptr i64 %1630 to i64*
  %1633 = load i64, i64* %1632, align 8
  store i64 %1633, i64* %RAX, align 8, !tbaa !2428
  %1634 = add i64 %7069, 566
  store i64 %1634, i64* %PC, align 8
  %1635 = load i64, i64* %1629, align 8
  store i64 %1635, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1636 = add i64 %7069, 574
  store i64 %1636, i64* %PC, align 8
  %1637 = load i64, i64* %1629, align 8
  store i64 %1637, i64* %RCX, align 8, !tbaa !2428
  %1638 = add i64 %7069, 578
  store i64 %1638, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1639 = add i64 %7069, 582
  store i64 %1639, i64* %PC, align 8
  %1640 = load i64, i64* %1629, align 8
  store i64 %1640, i64* %RCX, align 8, !tbaa !2428
  %1641 = add i64 %7069, 586
  store i64 %1641, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1642 = add i64 %1626, -52
  %1643 = add i64 %7069, 589
  store i64 %1643, i64* %PC, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, 1
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RSI, align 8, !tbaa !2428
  %1648 = icmp eq i32 %1645, -1
  %1649 = icmp eq i32 %1646, 0
  %1650 = or i1 %1648, %1649
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %70, align 1, !tbaa !2432
  %1652 = and i32 %1646, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652) #8
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %76, align 1, !tbaa !2446
  %1657 = xor i32 %1645, %1646
  %1658 = lshr i32 %1657, 4
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  store i8 %1660, i8* %81, align 1, !tbaa !2447
  %1661 = icmp eq i32 %1646, 0
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %84, align 1, !tbaa !2448
  %1663 = lshr i32 %1646, 31
  %1664 = trunc i32 %1663 to i8
  store i8 %1664, i8* %87, align 1, !tbaa !2449
  %1665 = lshr i32 %1645, 31
  %1666 = xor i32 %1663, %1665
  %1667 = add nuw nsw i32 %1666, %1663
  %1668 = icmp eq i32 %1667, 2
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %93, align 1, !tbaa !2450
  %1670 = load i64, i64* %RBP, align 8
  %1671 = add i64 %1670, -40
  %1672 = add i64 %7069, 596
  store i64 %1672, i64* %PC, align 8
  %1673 = inttoptr i64 %1671 to i64*
  %1674 = load i64, i64* %1673, align 8
  store i64 %1674, i64* %RCX, align 8, !tbaa !2428
  %1675 = add i64 %1674, 16
  %1676 = add i64 %7069, 600
  store i64 %1676, i64* %PC, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = sext i32 %1646 to i64
  %1680 = sext i32 %1678 to i64
  %1681 = mul nsw i64 %1680, %1679
  %1682 = trunc i64 %1681 to i32
  %1683 = and i64 %1681, 4294967295
  store i64 %1683, i64* %RSI, align 8, !tbaa !2428
  %1684 = shl i64 %1681, 32
  %1685 = ashr exact i64 %1684, 32
  %1686 = icmp ne i64 %1685, %1681
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %70, align 1, !tbaa !2432
  %1688 = and i32 %1682, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688) #8
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1693 = lshr i32 %1682, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %87, align 1, !tbaa !2449
  store i8 %1687, i8* %93, align 1, !tbaa !2450
  %1695 = add i64 %7069, 604
  store i64 %1695, i64* %PC, align 8
  %1696 = load i64, i64* %1673, align 8
  store i64 %1696, i64* %RCX, align 8, !tbaa !2428
  %1697 = add i64 %1696, 20
  %1698 = add i64 %7069, 608
  store i64 %1698, i64* %PC, align 8
  %1699 = inttoptr i64 %1697 to i32*
  %1700 = load i32, i32* %1699, align 4
  %1701 = shl i64 %1681, 32
  %1702 = ashr exact i64 %1701, 32
  %1703 = sext i32 %1700 to i64
  %1704 = mul nsw i64 %1703, %1702
  %1705 = and i64 %1704, 4294967295
  store i64 %1705, i64* %RSI, align 8, !tbaa !2428
  %1706 = load i64, i64* %RDX, align 8
  %1707 = trunc i64 %1704 to i32
  %1708 = trunc i64 %1706 to i32
  %1709 = add i32 %1707, %1708
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RDX, align 8, !tbaa !2428
  %1711 = icmp ult i32 %1709, %1708
  %1712 = icmp ult i32 %1709, %1707
  %1713 = or i1 %1711, %1712
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %70, align 1, !tbaa !2432
  %1715 = and i32 %1709, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715) #8
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %76, align 1, !tbaa !2446
  %1720 = xor i64 %1704, %1706
  %1721 = trunc i64 %1720 to i32
  %1722 = xor i32 %1721, %1709
  %1723 = lshr i32 %1722, 4
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  store i8 %1725, i8* %81, align 1, !tbaa !2447
  %1726 = icmp eq i32 %1709, 0
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %84, align 1, !tbaa !2448
  %1728 = lshr i32 %1709, 31
  %1729 = trunc i32 %1728 to i8
  store i8 %1729, i8* %87, align 1, !tbaa !2449
  %1730 = lshr i32 %1708, 31
  %1731 = lshr i32 %1707, 31
  %1732 = xor i32 %1728, %1730
  %1733 = xor i32 %1728, %1731
  %1734 = add nuw nsw i32 %1732, %1733
  %1735 = icmp eq i32 %1734, 2
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %93, align 1, !tbaa !2450
  %1737 = load i64, i64* %RBP, align 8
  %1738 = add i64 %1737, -56
  %1739 = add i64 %7069, 613
  store i64 %1739, i64* %PC, align 8
  %1740 = inttoptr i64 %1738 to i32*
  %1741 = load i32, i32* %1740, align 4
  %1742 = add i32 %1741, 1
  %1743 = zext i32 %1742 to i64
  store i64 %1743, i64* %RSI, align 8, !tbaa !2428
  %1744 = icmp eq i32 %1741, -1
  %1745 = icmp eq i32 %1742, 0
  %1746 = or i1 %1744, %1745
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %70, align 1, !tbaa !2432
  %1748 = and i32 %1742, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748) #8
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %76, align 1, !tbaa !2446
  %1753 = xor i32 %1741, %1742
  %1754 = lshr i32 %1753, 4
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  store i8 %1756, i8* %81, align 1, !tbaa !2447
  %1757 = icmp eq i32 %1742, 0
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %84, align 1, !tbaa !2448
  %1759 = lshr i32 %1742, 31
  %1760 = trunc i32 %1759 to i8
  store i8 %1760, i8* %87, align 1, !tbaa !2449
  %1761 = lshr i32 %1741, 31
  %1762 = xor i32 %1759, %1761
  %1763 = add nuw nsw i32 %1762, %1759
  %1764 = icmp eq i32 %1763, 2
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %93, align 1, !tbaa !2450
  %1766 = add i64 %1737, -40
  %1767 = add i64 %7069, 620
  store i64 %1767, i64* %PC, align 8
  %1768 = inttoptr i64 %1766 to i64*
  %1769 = load i64, i64* %1768, align 8
  store i64 %1769, i64* %RCX, align 8, !tbaa !2428
  %1770 = add i64 %1769, 20
  %1771 = add i64 %7069, 624
  store i64 %1771, i64* %PC, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = sext i32 %1742 to i64
  %1775 = sext i32 %1773 to i64
  %1776 = mul nsw i64 %1775, %1774
  %1777 = and i64 %1776, 4294967295
  store i64 %1777, i64* %RSI, align 8, !tbaa !2428
  %1778 = load i64, i64* %RDX, align 8
  %1779 = trunc i64 %1776 to i32
  %1780 = trunc i64 %1778 to i32
  %1781 = add i32 %1779, %1780
  %1782 = zext i32 %1781 to i64
  store i64 %1782, i64* %RDX, align 8, !tbaa !2428
  %1783 = icmp ult i32 %1781, %1780
  %1784 = icmp ult i32 %1781, %1779
  %1785 = or i1 %1783, %1784
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %70, align 1, !tbaa !2432
  %1787 = and i32 %1781, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787) #8
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %76, align 1, !tbaa !2446
  %1792 = xor i64 %1776, %1778
  %1793 = trunc i64 %1792 to i32
  %1794 = xor i32 %1793, %1781
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %81, align 1, !tbaa !2447
  %1798 = icmp eq i32 %1781, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %84, align 1, !tbaa !2448
  %1800 = lshr i32 %1781, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %87, align 1, !tbaa !2449
  %1802 = lshr i32 %1780, 31
  %1803 = lshr i32 %1779, 31
  %1804 = xor i32 %1800, %1802
  %1805 = xor i32 %1800, %1803
  %1806 = add nuw nsw i32 %1804, %1805
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %93, align 1, !tbaa !2450
  %1809 = load i64, i64* %RBP, align 8
  %1810 = add i64 %1809, -60
  %1811 = add i64 %7069, 629
  store i64 %1811, i64* %PC, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = add i32 %1813, %1781
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RDX, align 8, !tbaa !2428
  %1816 = icmp ult i32 %1814, %1781
  %1817 = icmp ult i32 %1814, %1813
  %1818 = or i1 %1816, %1817
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %70, align 1, !tbaa !2432
  %1820 = and i32 %1814, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820) #8
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %76, align 1, !tbaa !2446
  %1825 = xor i32 %1813, %1781
  %1826 = xor i32 %1825, %1814
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  store i8 %1829, i8* %81, align 1, !tbaa !2447
  %1830 = icmp eq i32 %1814, 0
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %84, align 1, !tbaa !2448
  %1832 = lshr i32 %1814, 31
  %1833 = trunc i32 %1832 to i8
  store i8 %1833, i8* %87, align 1, !tbaa !2449
  %1834 = lshr i32 %1813, 31
  %1835 = xor i32 %1832, %1800
  %1836 = xor i32 %1832, %1834
  %1837 = add nuw nsw i32 %1835, %1836
  %1838 = icmp eq i32 %1837, 2
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %93, align 1, !tbaa !2450
  %1840 = sext i32 %1814 to i64
  store i64 %1840, i64* %RCX, align 8, !tbaa !2428
  %1841 = load i64, i64* %RAX, align 8
  %1842 = shl nsw i64 %1840, 2
  %1843 = add i64 %1842, %1841
  %1844 = add i64 %7069, 637
  store i64 %1844, i64* %PC, align 8
  %1845 = inttoptr i64 %1843 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1846, i32* %1847, align 1, !tbaa !2451
  store float 0.000000e+00, float* %217, align 1, !tbaa !2451
  store float 0.000000e+00, float* %219, align 1, !tbaa !2451
  store float 0.000000e+00, float* %221, align 1, !tbaa !2451
  %1848 = add i64 %1809, -40
  %1849 = add i64 %7069, 641
  store i64 %1849, i64* %PC, align 8
  %1850 = inttoptr i64 %1848 to i64*
  %1851 = load i64, i64* %1850, align 8
  store i64 %1851, i64* %RAX, align 8, !tbaa !2428
  %1852 = add i64 %7069, 644
  store i64 %1852, i64* %PC, align 8
  %1853 = inttoptr i64 %1851 to i64*
  %1854 = load i64, i64* %1853, align 8
  store i64 %1854, i64* %RAX, align 8, !tbaa !2428
  %1855 = add i64 %7069, 648
  store i64 %1855, i64* %PC, align 8
  %1856 = load i64, i64* %1850, align 8
  store i64 %1856, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1857 = add i64 %7069, 656
  store i64 %1857, i64* %PC, align 8
  %1858 = load i64, i64* %1850, align 8
  store i64 %1858, i64* %RCX, align 8, !tbaa !2428
  %1859 = add i64 %7069, 660
  store i64 %1859, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1860 = add i64 %7069, 664
  store i64 %1860, i64* %PC, align 8
  %1861 = load i64, i64* %1850, align 8
  store i64 %1861, i64* %RCX, align 8, !tbaa !2428
  %1862 = add i64 %7069, 668
  store i64 %1862, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %1863 = load i64, i64* %RBP, align 8
  %1864 = add i64 %1863, -52
  %1865 = add i64 %7069, 671
  store i64 %1865, i64* %PC, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = add i32 %1867, 1
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RSI, align 8, !tbaa !2428
  %1870 = icmp eq i32 %1867, -1
  %1871 = icmp eq i32 %1868, 0
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %70, align 1, !tbaa !2432
  %1874 = and i32 %1868, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874) #8
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %76, align 1, !tbaa !2446
  %1879 = xor i32 %1867, %1868
  %1880 = lshr i32 %1879, 4
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  store i8 %1882, i8* %81, align 1, !tbaa !2447
  %1883 = icmp eq i32 %1868, 0
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %84, align 1, !tbaa !2448
  %1885 = lshr i32 %1868, 31
  %1886 = trunc i32 %1885 to i8
  store i8 %1886, i8* %87, align 1, !tbaa !2449
  %1887 = lshr i32 %1867, 31
  %1888 = xor i32 %1885, %1887
  %1889 = add nuw nsw i32 %1888, %1885
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %93, align 1, !tbaa !2450
  %1892 = add i64 %1863, -40
  %1893 = add i64 %7069, 678
  store i64 %1893, i64* %PC, align 8
  %1894 = inttoptr i64 %1892 to i64*
  %1895 = load i64, i64* %1894, align 8
  store i64 %1895, i64* %RCX, align 8, !tbaa !2428
  %1896 = add i64 %1895, 16
  %1897 = add i64 %7069, 682
  store i64 %1897, i64* %PC, align 8
  %1898 = inttoptr i64 %1896 to i32*
  %1899 = load i32, i32* %1898, align 4
  %1900 = sext i32 %1868 to i64
  %1901 = sext i32 %1899 to i64
  %1902 = mul nsw i64 %1901, %1900
  %1903 = trunc i64 %1902 to i32
  %1904 = and i64 %1902, 4294967295
  store i64 %1904, i64* %RSI, align 8, !tbaa !2428
  %1905 = shl i64 %1902, 32
  %1906 = ashr exact i64 %1905, 32
  %1907 = icmp ne i64 %1906, %1902
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %70, align 1, !tbaa !2432
  %1909 = and i32 %1903, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909) #8
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %1914 = lshr i32 %1903, 31
  %1915 = trunc i32 %1914 to i8
  store i8 %1915, i8* %87, align 1, !tbaa !2449
  store i8 %1908, i8* %93, align 1, !tbaa !2450
  %1916 = add i64 %7069, 686
  store i64 %1916, i64* %PC, align 8
  %1917 = load i64, i64* %1894, align 8
  store i64 %1917, i64* %RCX, align 8, !tbaa !2428
  %1918 = add i64 %1917, 20
  %1919 = add i64 %7069, 690
  store i64 %1919, i64* %PC, align 8
  %1920 = inttoptr i64 %1918 to i32*
  %1921 = load i32, i32* %1920, align 4
  %1922 = shl i64 %1902, 32
  %1923 = ashr exact i64 %1922, 32
  %1924 = sext i32 %1921 to i64
  %1925 = mul nsw i64 %1924, %1923
  %1926 = and i64 %1925, 4294967295
  store i64 %1926, i64* %RSI, align 8, !tbaa !2428
  %1927 = load i64, i64* %RDX, align 8
  %1928 = trunc i64 %1925 to i32
  %1929 = trunc i64 %1927 to i32
  %1930 = add i32 %1928, %1929
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RDX, align 8, !tbaa !2428
  %1932 = icmp ult i32 %1930, %1929
  %1933 = icmp ult i32 %1930, %1928
  %1934 = or i1 %1932, %1933
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %70, align 1, !tbaa !2432
  %1936 = and i32 %1930, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936) #8
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %76, align 1, !tbaa !2446
  %1941 = xor i64 %1925, %1927
  %1942 = trunc i64 %1941 to i32
  %1943 = xor i32 %1942, %1930
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %81, align 1, !tbaa !2447
  %1947 = icmp eq i32 %1930, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %84, align 1, !tbaa !2448
  %1949 = lshr i32 %1930, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %87, align 1, !tbaa !2449
  %1951 = lshr i32 %1929, 31
  %1952 = lshr i32 %1928, 31
  %1953 = xor i32 %1949, %1951
  %1954 = xor i32 %1949, %1952
  %1955 = add nuw nsw i32 %1953, %1954
  %1956 = icmp eq i32 %1955, 2
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %93, align 1, !tbaa !2450
  %1958 = load i64, i64* %RBP, align 8
  %1959 = add i64 %1958, -56
  %1960 = add i64 %7069, 695
  store i64 %1960, i64* %PC, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = add i32 %1962, -1
  %1964 = zext i32 %1963 to i64
  store i64 %1964, i64* %RSI, align 8, !tbaa !2428
  %1965 = icmp eq i32 %1962, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %70, align 1, !tbaa !2432
  %1967 = and i32 %1963, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967) #8
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %76, align 1, !tbaa !2446
  %1972 = xor i32 %1962, %1963
  %1973 = lshr i32 %1972, 4
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  store i8 %1975, i8* %81, align 1, !tbaa !2447
  %1976 = icmp eq i32 %1963, 0
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %84, align 1, !tbaa !2448
  %1978 = lshr i32 %1963, 31
  %1979 = trunc i32 %1978 to i8
  store i8 %1979, i8* %87, align 1, !tbaa !2449
  %1980 = lshr i32 %1962, 31
  %1981 = xor i32 %1978, %1980
  %1982 = add nuw nsw i32 %1981, %1980
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %93, align 1, !tbaa !2450
  %1985 = add i64 %1958, -40
  %1986 = add i64 %7069, 702
  store i64 %1986, i64* %PC, align 8
  %1987 = inttoptr i64 %1985 to i64*
  %1988 = load i64, i64* %1987, align 8
  store i64 %1988, i64* %RCX, align 8, !tbaa !2428
  %1989 = add i64 %1988, 20
  %1990 = add i64 %7069, 706
  store i64 %1990, i64* %PC, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = sext i32 %1963 to i64
  %1994 = sext i32 %1992 to i64
  %1995 = mul nsw i64 %1994, %1993
  %1996 = and i64 %1995, 4294967295
  store i64 %1996, i64* %RSI, align 8, !tbaa !2428
  %1997 = load i64, i64* %RDX, align 8
  %1998 = trunc i64 %1995 to i32
  %1999 = trunc i64 %1997 to i32
  %2000 = add i32 %1998, %1999
  %2001 = zext i32 %2000 to i64
  store i64 %2001, i64* %RDX, align 8, !tbaa !2428
  %2002 = icmp ult i32 %2000, %1999
  %2003 = icmp ult i32 %2000, %1998
  %2004 = or i1 %2002, %2003
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %70, align 1, !tbaa !2432
  %2006 = and i32 %2000, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006) #8
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %76, align 1, !tbaa !2446
  %2011 = xor i64 %1995, %1997
  %2012 = trunc i64 %2011 to i32
  %2013 = xor i32 %2012, %2000
  %2014 = lshr i32 %2013, 4
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  store i8 %2016, i8* %81, align 1, !tbaa !2447
  %2017 = icmp eq i32 %2000, 0
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %84, align 1, !tbaa !2448
  %2019 = lshr i32 %2000, 31
  %2020 = trunc i32 %2019 to i8
  store i8 %2020, i8* %87, align 1, !tbaa !2449
  %2021 = lshr i32 %1999, 31
  %2022 = lshr i32 %1998, 31
  %2023 = xor i32 %2019, %2021
  %2024 = xor i32 %2019, %2022
  %2025 = add nuw nsw i32 %2023, %2024
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %93, align 1, !tbaa !2450
  %2028 = load i64, i64* %RBP, align 8
  %2029 = add i64 %2028, -60
  %2030 = add i64 %7069, 711
  store i64 %2030, i64* %PC, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = add i32 %2032, %2000
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RDX, align 8, !tbaa !2428
  %2035 = icmp ult i32 %2033, %2000
  %2036 = icmp ult i32 %2033, %2032
  %2037 = or i1 %2035, %2036
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %70, align 1, !tbaa !2432
  %2039 = and i32 %2033, 255
  %2040 = tail call i32 @llvm.ctpop.i32(i32 %2039) #8
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = xor i8 %2042, 1
  store i8 %2043, i8* %76, align 1, !tbaa !2446
  %2044 = xor i32 %2032, %2000
  %2045 = xor i32 %2044, %2033
  %2046 = lshr i32 %2045, 4
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  store i8 %2048, i8* %81, align 1, !tbaa !2447
  %2049 = icmp eq i32 %2033, 0
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %84, align 1, !tbaa !2448
  %2051 = lshr i32 %2033, 31
  %2052 = trunc i32 %2051 to i8
  store i8 %2052, i8* %87, align 1, !tbaa !2449
  %2053 = lshr i32 %2032, 31
  %2054 = xor i32 %2051, %2019
  %2055 = xor i32 %2051, %2053
  %2056 = add nuw nsw i32 %2054, %2055
  %2057 = icmp eq i32 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %93, align 1, !tbaa !2450
  %2059 = sext i32 %2033 to i64
  store i64 %2059, i64* %RCX, align 8, !tbaa !2428
  %2060 = load i64, i64* %RAX, align 8
  %2061 = shl nsw i64 %2059, 2
  %2062 = add i64 %2061, %2060
  %2063 = add i64 %7069, 719
  store i64 %2063, i64* %PC, align 8
  %2064 = load <2 x float>, <2 x float>* %222, align 1
  %2065 = load <2 x i32>, <2 x i32>* %223, align 1
  %2066 = inttoptr i64 %2062 to float*
  %2067 = load float, float* %2066, align 4
  %2068 = extractelement <2 x float> %2064, i32 0
  %2069 = fsub float %2068, %2067
  store float %2069, float* %215, align 1, !tbaa !2451
  %2070 = bitcast <2 x float> %2064 to <2 x i32>
  %2071 = extractelement <2 x i32> %2070, i32 1
  store i32 %2071, i32* %224, align 1, !tbaa !2451
  %2072 = extractelement <2 x i32> %2065, i32 0
  store i32 %2072, i32* %225, align 1, !tbaa !2451
  %2073 = extractelement <2 x i32> %2065, i32 1
  store i32 %2073, i32* %226, align 1, !tbaa !2451
  %2074 = add i64 %2028, -40
  %2075 = add i64 %7069, 723
  store i64 %2075, i64* %PC, align 8
  %2076 = inttoptr i64 %2074 to i64*
  %2077 = load i64, i64* %2076, align 8
  store i64 %2077, i64* %RAX, align 8, !tbaa !2428
  %2078 = add i64 %7069, 726
  store i64 %2078, i64* %PC, align 8
  %2079 = inttoptr i64 %2077 to i64*
  %2080 = load i64, i64* %2079, align 8
  store i64 %2080, i64* %RAX, align 8, !tbaa !2428
  %2081 = add i64 %7069, 730
  store i64 %2081, i64* %PC, align 8
  %2082 = load i64, i64* %2076, align 8
  store i64 %2082, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2083 = add i64 %7069, 738
  store i64 %2083, i64* %PC, align 8
  %2084 = load i64, i64* %2076, align 8
  store i64 %2084, i64* %RCX, align 8, !tbaa !2428
  %2085 = add i64 %7069, 742
  store i64 %2085, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2086 = load i64, i64* %RBP, align 8
  %2087 = add i64 %2086, -40
  %2088 = add i64 %7069, 746
  store i64 %2088, i64* %PC, align 8
  %2089 = inttoptr i64 %2087 to i64*
  %2090 = load i64, i64* %2089, align 8
  store i64 %2090, i64* %RCX, align 8, !tbaa !2428
  %2091 = add i64 %7069, 750
  store i64 %2091, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2092 = add i64 %2086, -52
  %2093 = add i64 %7069, 753
  store i64 %2093, i64* %PC, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = add i32 %2095, -1
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RSI, align 8, !tbaa !2428
  %2098 = icmp eq i32 %2095, 0
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %70, align 1, !tbaa !2432
  %2100 = and i32 %2096, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100) #8
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %76, align 1, !tbaa !2446
  %2105 = xor i32 %2095, %2096
  %2106 = lshr i32 %2105, 4
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %81, align 1, !tbaa !2447
  %2109 = icmp eq i32 %2096, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %84, align 1, !tbaa !2448
  %2111 = lshr i32 %2096, 31
  %2112 = trunc i32 %2111 to i8
  store i8 %2112, i8* %87, align 1, !tbaa !2449
  %2113 = lshr i32 %2095, 31
  %2114 = xor i32 %2111, %2113
  %2115 = add nuw nsw i32 %2114, %2113
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %93, align 1, !tbaa !2450
  %2118 = add i64 %7069, 760
  store i64 %2118, i64* %PC, align 8
  %2119 = load i64, i64* %2089, align 8
  store i64 %2119, i64* %RCX, align 8, !tbaa !2428
  %2120 = add i64 %2119, 16
  %2121 = add i64 %7069, 764
  store i64 %2121, i64* %PC, align 8
  %2122 = inttoptr i64 %2120 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = sext i32 %2096 to i64
  %2125 = sext i32 %2123 to i64
  %2126 = mul nsw i64 %2125, %2124
  %2127 = trunc i64 %2126 to i32
  %2128 = and i64 %2126, 4294967295
  store i64 %2128, i64* %RSI, align 8, !tbaa !2428
  %2129 = shl i64 %2126, 32
  %2130 = ashr exact i64 %2129, 32
  %2131 = icmp ne i64 %2130, %2126
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %70, align 1, !tbaa !2432
  %2133 = and i32 %2127, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133) #8
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2138 = lshr i32 %2127, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %87, align 1, !tbaa !2449
  store i8 %2132, i8* %93, align 1, !tbaa !2450
  %2140 = add i64 %7069, 768
  store i64 %2140, i64* %PC, align 8
  %2141 = load i64, i64* %2089, align 8
  store i64 %2141, i64* %RCX, align 8, !tbaa !2428
  %2142 = add i64 %2141, 20
  %2143 = add i64 %7069, 772
  store i64 %2143, i64* %PC, align 8
  %2144 = inttoptr i64 %2142 to i32*
  %2145 = load i32, i32* %2144, align 4
  %2146 = shl i64 %2126, 32
  %2147 = ashr exact i64 %2146, 32
  %2148 = sext i32 %2145 to i64
  %2149 = mul nsw i64 %2148, %2147
  %2150 = and i64 %2149, 4294967295
  store i64 %2150, i64* %RSI, align 8, !tbaa !2428
  %2151 = load i64, i64* %RDX, align 8
  %2152 = trunc i64 %2149 to i32
  %2153 = trunc i64 %2151 to i32
  %2154 = add i32 %2152, %2153
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RDX, align 8, !tbaa !2428
  %2156 = icmp ult i32 %2154, %2153
  %2157 = icmp ult i32 %2154, %2152
  %2158 = or i1 %2156, %2157
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %70, align 1, !tbaa !2432
  %2160 = and i32 %2154, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160) #8
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %76, align 1, !tbaa !2446
  %2165 = xor i64 %2149, %2151
  %2166 = trunc i64 %2165 to i32
  %2167 = xor i32 %2166, %2154
  %2168 = lshr i32 %2167, 4
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  store i8 %2170, i8* %81, align 1, !tbaa !2447
  %2171 = icmp eq i32 %2154, 0
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %84, align 1, !tbaa !2448
  %2173 = lshr i32 %2154, 31
  %2174 = trunc i32 %2173 to i8
  store i8 %2174, i8* %87, align 1, !tbaa !2449
  %2175 = lshr i32 %2153, 31
  %2176 = lshr i32 %2152, 31
  %2177 = xor i32 %2173, %2175
  %2178 = xor i32 %2173, %2176
  %2179 = add nuw nsw i32 %2177, %2178
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %93, align 1, !tbaa !2450
  %2182 = load i64, i64* %RBP, align 8
  %2183 = add i64 %2182, -56
  %2184 = add i64 %7069, 777
  store i64 %2184, i64* %PC, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = add i32 %2186, 1
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RSI, align 8, !tbaa !2428
  %2189 = icmp eq i32 %2186, -1
  %2190 = icmp eq i32 %2187, 0
  %2191 = or i1 %2189, %2190
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %70, align 1, !tbaa !2432
  %2193 = and i32 %2187, 255
  %2194 = tail call i32 @llvm.ctpop.i32(i32 %2193) #8
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  store i8 %2197, i8* %76, align 1, !tbaa !2446
  %2198 = xor i32 %2186, %2187
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  store i8 %2201, i8* %81, align 1, !tbaa !2447
  %2202 = icmp eq i32 %2187, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %84, align 1, !tbaa !2448
  %2204 = lshr i32 %2187, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %87, align 1, !tbaa !2449
  %2206 = lshr i32 %2186, 31
  %2207 = xor i32 %2204, %2206
  %2208 = add nuw nsw i32 %2207, %2204
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %93, align 1, !tbaa !2450
  %2211 = add i64 %2182, -40
  %2212 = add i64 %7069, 784
  store i64 %2212, i64* %PC, align 8
  %2213 = inttoptr i64 %2211 to i64*
  %2214 = load i64, i64* %2213, align 8
  store i64 %2214, i64* %RCX, align 8, !tbaa !2428
  %2215 = add i64 %2214, 20
  %2216 = add i64 %7069, 788
  store i64 %2216, i64* %PC, align 8
  %2217 = inttoptr i64 %2215 to i32*
  %2218 = load i32, i32* %2217, align 4
  %2219 = sext i32 %2187 to i64
  %2220 = sext i32 %2218 to i64
  %2221 = mul nsw i64 %2220, %2219
  %2222 = and i64 %2221, 4294967295
  store i64 %2222, i64* %RSI, align 8, !tbaa !2428
  %2223 = load i64, i64* %RDX, align 8
  %2224 = trunc i64 %2221 to i32
  %2225 = trunc i64 %2223 to i32
  %2226 = add i32 %2224, %2225
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RDX, align 8, !tbaa !2428
  %2228 = icmp ult i32 %2226, %2225
  %2229 = icmp ult i32 %2226, %2224
  %2230 = or i1 %2228, %2229
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %70, align 1, !tbaa !2432
  %2232 = and i32 %2226, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232) #8
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %76, align 1, !tbaa !2446
  %2237 = xor i64 %2221, %2223
  %2238 = trunc i64 %2237 to i32
  %2239 = xor i32 %2238, %2226
  %2240 = lshr i32 %2239, 4
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  store i8 %2242, i8* %81, align 1, !tbaa !2447
  %2243 = icmp eq i32 %2226, 0
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %84, align 1, !tbaa !2448
  %2245 = lshr i32 %2226, 31
  %2246 = trunc i32 %2245 to i8
  store i8 %2246, i8* %87, align 1, !tbaa !2449
  %2247 = lshr i32 %2225, 31
  %2248 = lshr i32 %2224, 31
  %2249 = xor i32 %2245, %2247
  %2250 = xor i32 %2245, %2248
  %2251 = add nuw nsw i32 %2249, %2250
  %2252 = icmp eq i32 %2251, 2
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %93, align 1, !tbaa !2450
  %2254 = load i64, i64* %RBP, align 8
  %2255 = add i64 %2254, -60
  %2256 = add i64 %7069, 793
  store i64 %2256, i64* %PC, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = add i32 %2258, %2226
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RDX, align 8, !tbaa !2428
  %2261 = icmp ult i32 %2259, %2226
  %2262 = icmp ult i32 %2259, %2258
  %2263 = or i1 %2261, %2262
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %70, align 1, !tbaa !2432
  %2265 = and i32 %2259, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265) #8
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %76, align 1, !tbaa !2446
  %2270 = xor i32 %2258, %2226
  %2271 = xor i32 %2270, %2259
  %2272 = lshr i32 %2271, 4
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  store i8 %2274, i8* %81, align 1, !tbaa !2447
  %2275 = icmp eq i32 %2259, 0
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %84, align 1, !tbaa !2448
  %2277 = lshr i32 %2259, 31
  %2278 = trunc i32 %2277 to i8
  store i8 %2278, i8* %87, align 1, !tbaa !2449
  %2279 = lshr i32 %2258, 31
  %2280 = xor i32 %2277, %2245
  %2281 = xor i32 %2277, %2279
  %2282 = add nuw nsw i32 %2280, %2281
  %2283 = icmp eq i32 %2282, 2
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %93, align 1, !tbaa !2450
  %2285 = sext i32 %2259 to i64
  store i64 %2285, i64* %RCX, align 8, !tbaa !2428
  %2286 = load i64, i64* %RAX, align 8
  %2287 = shl nsw i64 %2285, 2
  %2288 = add i64 %2287, %2286
  %2289 = add i64 %7069, 801
  store i64 %2289, i64* %PC, align 8
  %2290 = load <2 x float>, <2 x float>* %222, align 1
  %2291 = load <2 x i32>, <2 x i32>* %223, align 1
  %2292 = inttoptr i64 %2288 to float*
  %2293 = load float, float* %2292, align 4
  %2294 = extractelement <2 x float> %2290, i32 0
  %2295 = fsub float %2294, %2293
  store float %2295, float* %215, align 1, !tbaa !2451
  %2296 = bitcast <2 x float> %2290 to <2 x i32>
  %2297 = extractelement <2 x i32> %2296, i32 1
  store i32 %2297, i32* %224, align 1, !tbaa !2451
  %2298 = extractelement <2 x i32> %2291, i32 0
  store i32 %2298, i32* %225, align 1, !tbaa !2451
  %2299 = extractelement <2 x i32> %2291, i32 1
  store i32 %2299, i32* %226, align 1, !tbaa !2451
  %2300 = add i64 %2254, -40
  %2301 = add i64 %7069, 805
  store i64 %2301, i64* %PC, align 8
  %2302 = inttoptr i64 %2300 to i64*
  %2303 = load i64, i64* %2302, align 8
  store i64 %2303, i64* %RAX, align 8, !tbaa !2428
  %2304 = add i64 %7069, 808
  store i64 %2304, i64* %PC, align 8
  %2305 = inttoptr i64 %2303 to i64*
  %2306 = load i64, i64* %2305, align 8
  store i64 %2306, i64* %RAX, align 8, !tbaa !2428
  %2307 = add i64 %7069, 812
  store i64 %2307, i64* %PC, align 8
  %2308 = load i64, i64* %2302, align 8
  store i64 %2308, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2309 = add i64 %7069, 820
  store i64 %2309, i64* %PC, align 8
  %2310 = load i64, i64* %2302, align 8
  store i64 %2310, i64* %RCX, align 8, !tbaa !2428
  %2311 = add i64 %7069, 824
  store i64 %2311, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2312 = load i64, i64* %RBP, align 8
  %2313 = add i64 %2312, -40
  %2314 = add i64 %7069, 828
  store i64 %2314, i64* %PC, align 8
  %2315 = inttoptr i64 %2313 to i64*
  %2316 = load i64, i64* %2315, align 8
  store i64 %2316, i64* %RCX, align 8, !tbaa !2428
  %2317 = add i64 %7069, 832
  store i64 %2317, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2318 = add i64 %2312, -52
  %2319 = add i64 %7069, 835
  store i64 %2319, i64* %PC, align 8
  %2320 = inttoptr i64 %2318 to i32*
  %2321 = load i32, i32* %2320, align 4
  %2322 = add i32 %2321, -1
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RSI, align 8, !tbaa !2428
  %2324 = icmp eq i32 %2321, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %70, align 1, !tbaa !2432
  %2326 = and i32 %2322, 255
  %2327 = tail call i32 @llvm.ctpop.i32(i32 %2326) #8
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  store i8 %2330, i8* %76, align 1, !tbaa !2446
  %2331 = xor i32 %2321, %2322
  %2332 = lshr i32 %2331, 4
  %2333 = trunc i32 %2332 to i8
  %2334 = and i8 %2333, 1
  store i8 %2334, i8* %81, align 1, !tbaa !2447
  %2335 = icmp eq i32 %2322, 0
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %84, align 1, !tbaa !2448
  %2337 = lshr i32 %2322, 31
  %2338 = trunc i32 %2337 to i8
  store i8 %2338, i8* %87, align 1, !tbaa !2449
  %2339 = lshr i32 %2321, 31
  %2340 = xor i32 %2337, %2339
  %2341 = add nuw nsw i32 %2340, %2339
  %2342 = icmp eq i32 %2341, 2
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %93, align 1, !tbaa !2450
  %2344 = add i64 %7069, 842
  store i64 %2344, i64* %PC, align 8
  %2345 = load i64, i64* %2315, align 8
  store i64 %2345, i64* %RCX, align 8, !tbaa !2428
  %2346 = add i64 %2345, 16
  %2347 = add i64 %7069, 846
  store i64 %2347, i64* %PC, align 8
  %2348 = inttoptr i64 %2346 to i32*
  %2349 = load i32, i32* %2348, align 4
  %2350 = sext i32 %2322 to i64
  %2351 = sext i32 %2349 to i64
  %2352 = mul nsw i64 %2351, %2350
  %2353 = trunc i64 %2352 to i32
  %2354 = and i64 %2352, 4294967295
  store i64 %2354, i64* %RSI, align 8, !tbaa !2428
  %2355 = shl i64 %2352, 32
  %2356 = ashr exact i64 %2355, 32
  %2357 = icmp ne i64 %2356, %2352
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %70, align 1, !tbaa !2432
  %2359 = and i32 %2353, 255
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359) #8
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2364 = lshr i32 %2353, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %87, align 1, !tbaa !2449
  store i8 %2358, i8* %93, align 1, !tbaa !2450
  %2366 = add i64 %7069, 850
  store i64 %2366, i64* %PC, align 8
  %2367 = load i64, i64* %2315, align 8
  store i64 %2367, i64* %RCX, align 8, !tbaa !2428
  %2368 = add i64 %2367, 20
  %2369 = add i64 %7069, 854
  store i64 %2369, i64* %PC, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = shl i64 %2352, 32
  %2373 = ashr exact i64 %2372, 32
  %2374 = sext i32 %2371 to i64
  %2375 = mul nsw i64 %2374, %2373
  %2376 = and i64 %2375, 4294967295
  store i64 %2376, i64* %RSI, align 8, !tbaa !2428
  %2377 = load i64, i64* %RDX, align 8
  %2378 = trunc i64 %2375 to i32
  %2379 = trunc i64 %2377 to i32
  %2380 = add i32 %2378, %2379
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RDX, align 8, !tbaa !2428
  %2382 = icmp ult i32 %2380, %2379
  %2383 = icmp ult i32 %2380, %2378
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %70, align 1, !tbaa !2432
  %2386 = and i32 %2380, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386) #8
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %76, align 1, !tbaa !2446
  %2391 = xor i64 %2375, %2377
  %2392 = trunc i64 %2391 to i32
  %2393 = xor i32 %2392, %2380
  %2394 = lshr i32 %2393, 4
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  store i8 %2396, i8* %81, align 1, !tbaa !2447
  %2397 = icmp eq i32 %2380, 0
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %84, align 1, !tbaa !2448
  %2399 = lshr i32 %2380, 31
  %2400 = trunc i32 %2399 to i8
  store i8 %2400, i8* %87, align 1, !tbaa !2449
  %2401 = lshr i32 %2379, 31
  %2402 = lshr i32 %2378, 31
  %2403 = xor i32 %2399, %2401
  %2404 = xor i32 %2399, %2402
  %2405 = add nuw nsw i32 %2403, %2404
  %2406 = icmp eq i32 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %93, align 1, !tbaa !2450
  %2408 = load i64, i64* %RBP, align 8
  %2409 = add i64 %2408, -56
  %2410 = add i64 %7069, 859
  store i64 %2410, i64* %PC, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = add i32 %2412, -1
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RSI, align 8, !tbaa !2428
  %2415 = icmp eq i32 %2412, 0
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %70, align 1, !tbaa !2432
  %2417 = and i32 %2413, 255
  %2418 = tail call i32 @llvm.ctpop.i32(i32 %2417) #8
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  %2421 = xor i8 %2420, 1
  store i8 %2421, i8* %76, align 1, !tbaa !2446
  %2422 = xor i32 %2412, %2413
  %2423 = lshr i32 %2422, 4
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  store i8 %2425, i8* %81, align 1, !tbaa !2447
  %2426 = icmp eq i32 %2413, 0
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %84, align 1, !tbaa !2448
  %2428 = lshr i32 %2413, 31
  %2429 = trunc i32 %2428 to i8
  store i8 %2429, i8* %87, align 1, !tbaa !2449
  %2430 = lshr i32 %2412, 31
  %2431 = xor i32 %2428, %2430
  %2432 = add nuw nsw i32 %2431, %2430
  %2433 = icmp eq i32 %2432, 2
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %93, align 1, !tbaa !2450
  %2435 = add i64 %2408, -40
  %2436 = add i64 %7069, 866
  store i64 %2436, i64* %PC, align 8
  %2437 = inttoptr i64 %2435 to i64*
  %2438 = load i64, i64* %2437, align 8
  store i64 %2438, i64* %RCX, align 8, !tbaa !2428
  %2439 = add i64 %2438, 20
  %2440 = add i64 %7069, 870
  store i64 %2440, i64* %PC, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = sext i32 %2413 to i64
  %2444 = sext i32 %2442 to i64
  %2445 = mul nsw i64 %2444, %2443
  %2446 = and i64 %2445, 4294967295
  store i64 %2446, i64* %RSI, align 8, !tbaa !2428
  %2447 = load i64, i64* %RDX, align 8
  %2448 = trunc i64 %2445 to i32
  %2449 = trunc i64 %2447 to i32
  %2450 = add i32 %2448, %2449
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RDX, align 8, !tbaa !2428
  %2452 = icmp ult i32 %2450, %2449
  %2453 = icmp ult i32 %2450, %2448
  %2454 = or i1 %2452, %2453
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %70, align 1, !tbaa !2432
  %2456 = and i32 %2450, 255
  %2457 = tail call i32 @llvm.ctpop.i32(i32 %2456) #8
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  store i8 %2460, i8* %76, align 1, !tbaa !2446
  %2461 = xor i64 %2445, %2447
  %2462 = trunc i64 %2461 to i32
  %2463 = xor i32 %2462, %2450
  %2464 = lshr i32 %2463, 4
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  store i8 %2466, i8* %81, align 1, !tbaa !2447
  %2467 = icmp eq i32 %2450, 0
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %84, align 1, !tbaa !2448
  %2469 = lshr i32 %2450, 31
  %2470 = trunc i32 %2469 to i8
  store i8 %2470, i8* %87, align 1, !tbaa !2449
  %2471 = lshr i32 %2449, 31
  %2472 = lshr i32 %2448, 31
  %2473 = xor i32 %2469, %2471
  %2474 = xor i32 %2469, %2472
  %2475 = add nuw nsw i32 %2473, %2474
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %93, align 1, !tbaa !2450
  %2478 = load i64, i64* %RBP, align 8
  %2479 = add i64 %2478, -60
  %2480 = add i64 %7069, 875
  store i64 %2480, i64* %PC, align 8
  %2481 = inttoptr i64 %2479 to i32*
  %2482 = load i32, i32* %2481, align 4
  %2483 = add i32 %2482, %2450
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RDX, align 8, !tbaa !2428
  %2485 = icmp ult i32 %2483, %2450
  %2486 = icmp ult i32 %2483, %2482
  %2487 = or i1 %2485, %2486
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %70, align 1, !tbaa !2432
  %2489 = and i32 %2483, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489) #8
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %76, align 1, !tbaa !2446
  %2494 = xor i32 %2482, %2450
  %2495 = xor i32 %2494, %2483
  %2496 = lshr i32 %2495, 4
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %81, align 1, !tbaa !2447
  %2499 = icmp eq i32 %2483, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %84, align 1, !tbaa !2448
  %2501 = lshr i32 %2483, 31
  %2502 = trunc i32 %2501 to i8
  store i8 %2502, i8* %87, align 1, !tbaa !2449
  %2503 = lshr i32 %2482, 31
  %2504 = xor i32 %2501, %2469
  %2505 = xor i32 %2501, %2503
  %2506 = add nuw nsw i32 %2504, %2505
  %2507 = icmp eq i32 %2506, 2
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %93, align 1, !tbaa !2450
  %2509 = sext i32 %2483 to i64
  store i64 %2509, i64* %RCX, align 8, !tbaa !2428
  %2510 = load i64, i64* %RAX, align 8
  %2511 = shl nsw i64 %2509, 2
  %2512 = add i64 %2511, %2510
  %2513 = add i64 %7069, 883
  store i64 %2513, i64* %PC, align 8
  %2514 = load <2 x float>, <2 x float>* %222, align 1
  %2515 = load <2 x i32>, <2 x i32>* %223, align 1
  %2516 = inttoptr i64 %2512 to float*
  %2517 = load float, float* %2516, align 4
  %2518 = extractelement <2 x float> %2514, i32 0
  %2519 = fadd float %2518, %2517
  store float %2519, float* %215, align 1, !tbaa !2451
  %2520 = bitcast <2 x float> %2514 to <2 x i32>
  %2521 = extractelement <2 x i32> %2520, i32 1
  store i32 %2521, i32* %224, align 1, !tbaa !2451
  %2522 = extractelement <2 x i32> %2515, i32 0
  store i32 %2522, i32* %225, align 1, !tbaa !2451
  %2523 = extractelement <2 x i32> %2515, i32 1
  store i32 %2523, i32* %226, align 1, !tbaa !2451
  %2524 = load <2 x float>, <2 x float>* %208, align 1
  %2525 = load <2 x i32>, <2 x i32>* %209, align 1
  %2526 = load <2 x float>, <2 x float>* %227, align 1
  %2527 = extractelement <2 x float> %2524, i32 0
  %2528 = extractelement <2 x float> %2526, i32 0
  %2529 = fmul float %2527, %2528
  store float %2529, float* %201, align 1, !tbaa !2451
  %2530 = bitcast <2 x float> %2524 to <2 x i32>
  %2531 = extractelement <2 x i32> %2530, i32 1
  store i32 %2531, i32* %210, align 1, !tbaa !2451
  %2532 = extractelement <2 x i32> %2525, i32 0
  store i32 %2532, i32* %211, align 1, !tbaa !2451
  %2533 = extractelement <2 x i32> %2525, i32 1
  store i32 %2533, i32* %212, align 1, !tbaa !2451
  %2534 = load <2 x float>, <2 x float>* %198, align 1
  %2535 = load <2 x i32>, <2 x i32>* %199, align 1
  %2536 = load <2 x float>, <2 x float>* %213, align 1
  %2537 = extractelement <2 x float> %2534, i32 0
  %2538 = extractelement <2 x float> %2536, i32 0
  %2539 = fadd float %2537, %2538
  store float %2539, float* %194, align 1, !tbaa !2451
  %2540 = bitcast <2 x float> %2534 to <2 x i32>
  %2541 = extractelement <2 x i32> %2540, i32 1
  store i32 %2541, i32* %189, align 1, !tbaa !2451
  %2542 = extractelement <2 x i32> %2535, i32 0
  store i32 %2542, i32* %190, align 1, !tbaa !2451
  %2543 = extractelement <2 x i32> %2535, i32 1
  store i32 %2543, i32* %192, align 1, !tbaa !2451
  %2544 = add i64 %2478, -24
  %2545 = add i64 %7069, 895
  store i64 %2545, i64* %PC, align 8
  %2546 = inttoptr i64 %2544 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i64 %2547, i64* %RAX, align 8, !tbaa !2428
  %2548 = add i64 %7069, 898
  store i64 %2548, i64* %PC, align 8
  %2549 = inttoptr i64 %2547 to i64*
  %2550 = load i64, i64* %2549, align 8
  store i64 %2550, i64* %RAX, align 8, !tbaa !2428
  %2551 = load i64, i64* %RBP, align 8
  %2552 = add i64 %2551, -24
  %2553 = add i64 %7069, 902
  store i64 %2553, i64* %PC, align 8
  %2554 = inttoptr i64 %2552 to i64*
  %2555 = load i64, i64* %2554, align 8
  store i64 %2555, i64* %RCX, align 8, !tbaa !2428
  %2556 = add i64 %2555, 12
  %2557 = add i64 %7069, 905
  store i64 %2557, i64* %PC, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RDX, align 8, !tbaa !2428
  %2561 = add i64 %7069, 912
  store i64 %2561, i64* %PC, align 8
  %2562 = load i64, i64* %2554, align 8
  store i64 %2562, i64* %RCX, align 8, !tbaa !2428
  %2563 = add i64 %2562, 16
  %2564 = add i64 %7069, 916
  store i64 %2564, i64* %PC, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = sext i32 %2559 to i64
  %2568 = sext i32 %2566 to i64
  %2569 = mul nsw i64 %2568, %2567
  %2570 = trunc i64 %2569 to i32
  %2571 = and i64 %2569, 4294967295
  store i64 %2571, i64* %RDX, align 8, !tbaa !2428
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
  %2583 = add i64 %7069, 920
  store i64 %2583, i64* %PC, align 8
  %2584 = load i64, i64* %2554, align 8
  store i64 %2584, i64* %RCX, align 8, !tbaa !2428
  %2585 = add i64 %2584, 20
  %2586 = add i64 %7069, 924
  store i64 %2586, i64* %PC, align 8
  %2587 = inttoptr i64 %2585 to i32*
  %2588 = load i32, i32* %2587, align 4
  %2589 = shl i64 %2569, 32
  %2590 = ashr exact i64 %2589, 32
  %2591 = sext i32 %2588 to i64
  %2592 = mul nsw i64 %2591, %2590
  %2593 = trunc i64 %2592 to i32
  %2594 = and i64 %2592, 4294967295
  store i64 %2594, i64* %RDX, align 8, !tbaa !2428
  %2595 = shl i64 %2592, 32
  %2596 = ashr exact i64 %2595, 32
  %2597 = icmp ne i64 %2596, %2592
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %70, align 1, !tbaa !2432
  %2599 = and i32 %2593, 255
  %2600 = tail call i32 @llvm.ctpop.i32(i32 %2599) #8
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2604 = lshr i32 %2593, 31
  %2605 = trunc i32 %2604 to i8
  store i8 %2605, i8* %87, align 1, !tbaa !2449
  store i8 %2598, i8* %93, align 1, !tbaa !2450
  %2606 = add i64 %2551, -52
  %2607 = add i64 %7069, 927
  store i64 %2607, i64* %PC, align 8
  %2608 = inttoptr i64 %2606 to i32*
  %2609 = load i32, i32* %2608, align 4
  %2610 = zext i32 %2609 to i64
  store i64 %2610, i64* %RSI, align 8, !tbaa !2428
  %2611 = add i64 %7069, 931
  store i64 %2611, i64* %PC, align 8
  %2612 = load i64, i64* %2554, align 8
  store i64 %2612, i64* %RCX, align 8, !tbaa !2428
  %2613 = add i64 %2612, 16
  %2614 = add i64 %7069, 935
  store i64 %2614, i64* %PC, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = sext i32 %2609 to i64
  %2618 = sext i32 %2616 to i64
  %2619 = mul nsw i64 %2618, %2617
  %2620 = trunc i64 %2619 to i32
  %2621 = and i64 %2619, 4294967295
  store i64 %2621, i64* %RSI, align 8, !tbaa !2428
  %2622 = shl i64 %2619, 32
  %2623 = ashr exact i64 %2622, 32
  %2624 = icmp ne i64 %2623, %2619
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %70, align 1, !tbaa !2432
  %2626 = and i32 %2620, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626) #8
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2631 = lshr i32 %2620, 31
  %2632 = trunc i32 %2631 to i8
  store i8 %2632, i8* %87, align 1, !tbaa !2449
  store i8 %2625, i8* %93, align 1, !tbaa !2450
  %2633 = load i64, i64* %RBP, align 8
  %2634 = add i64 %2633, -24
  %2635 = add i64 %7069, 939
  store i64 %2635, i64* %PC, align 8
  %2636 = inttoptr i64 %2634 to i64*
  %2637 = load i64, i64* %2636, align 8
  store i64 %2637, i64* %RCX, align 8, !tbaa !2428
  %2638 = add i64 %2637, 20
  %2639 = add i64 %7069, 943
  store i64 %2639, i64* %PC, align 8
  %2640 = inttoptr i64 %2638 to i32*
  %2641 = load i32, i32* %2640, align 4
  %2642 = shl i64 %2619, 32
  %2643 = ashr exact i64 %2642, 32
  %2644 = sext i32 %2641 to i64
  %2645 = mul nsw i64 %2644, %2643
  %2646 = and i64 %2645, 4294967295
  store i64 %2646, i64* %RSI, align 8, !tbaa !2428
  %2647 = trunc i64 %2645 to i32
  %2648 = trunc i64 %2592 to i32
  %2649 = add i32 %2647, %2648
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RDX, align 8, !tbaa !2428
  %2651 = icmp ult i32 %2649, %2648
  %2652 = icmp ult i32 %2649, %2647
  %2653 = or i1 %2651, %2652
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %70, align 1, !tbaa !2432
  %2655 = and i32 %2649, 255
  %2656 = tail call i32 @llvm.ctpop.i32(i32 %2655) #8
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  store i8 %2659, i8* %76, align 1, !tbaa !2446
  %2660 = xor i64 %2645, %2592
  %2661 = trunc i64 %2660 to i32
  %2662 = xor i32 %2661, %2649
  %2663 = lshr i32 %2662, 4
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  store i8 %2665, i8* %81, align 1, !tbaa !2447
  %2666 = icmp eq i32 %2649, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %84, align 1, !tbaa !2448
  %2668 = lshr i32 %2649, 31
  %2669 = trunc i32 %2668 to i8
  store i8 %2669, i8* %87, align 1, !tbaa !2449
  %2670 = lshr i32 %2648, 31
  %2671 = lshr i32 %2647, 31
  %2672 = xor i32 %2668, %2670
  %2673 = xor i32 %2668, %2671
  %2674 = add nuw nsw i32 %2672, %2673
  %2675 = icmp eq i32 %2674, 2
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %93, align 1, !tbaa !2450
  %2677 = add i64 %2633, -56
  %2678 = add i64 %7069, 948
  store i64 %2678, i64* %PC, align 8
  %2679 = inttoptr i64 %2677 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %RSI, align 8, !tbaa !2428
  %2682 = add i64 %7069, 952
  store i64 %2682, i64* %PC, align 8
  %2683 = load i64, i64* %2636, align 8
  store i64 %2683, i64* %RCX, align 8, !tbaa !2428
  %2684 = add i64 %2683, 20
  %2685 = add i64 %7069, 956
  store i64 %2685, i64* %PC, align 8
  %2686 = inttoptr i64 %2684 to i32*
  %2687 = load i32, i32* %2686, align 4
  %2688 = sext i32 %2680 to i64
  %2689 = sext i32 %2687 to i64
  %2690 = mul nsw i64 %2689, %2688
  %2691 = and i64 %2690, 4294967295
  store i64 %2691, i64* %RSI, align 8, !tbaa !2428
  %2692 = trunc i64 %2690 to i32
  %2693 = add i32 %2692, %2649
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RDX, align 8, !tbaa !2428
  %2695 = icmp ult i32 %2693, %2649
  %2696 = icmp ult i32 %2693, %2692
  %2697 = or i1 %2695, %2696
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %70, align 1, !tbaa !2432
  %2699 = and i32 %2693, 255
  %2700 = tail call i32 @llvm.ctpop.i32(i32 %2699) #8
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = xor i8 %2702, 1
  store i8 %2703, i8* %76, align 1, !tbaa !2446
  %2704 = xor i64 %2690, %2650
  %2705 = trunc i64 %2704 to i32
  %2706 = xor i32 %2705, %2693
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %81, align 1, !tbaa !2447
  %2710 = icmp eq i32 %2693, 0
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %84, align 1, !tbaa !2448
  %2712 = lshr i32 %2693, 31
  %2713 = trunc i32 %2712 to i8
  store i8 %2713, i8* %87, align 1, !tbaa !2449
  %2714 = lshr i32 %2692, 31
  %2715 = xor i32 %2712, %2668
  %2716 = xor i32 %2712, %2714
  %2717 = add nuw nsw i32 %2715, %2716
  %2718 = icmp eq i32 %2717, 2
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %93, align 1, !tbaa !2450
  %2720 = load i64, i64* %RBP, align 8
  %2721 = add i64 %2720, -60
  %2722 = add i64 %7069, 961
  store i64 %2722, i64* %PC, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = add i32 %2724, %2693
  %2726 = zext i32 %2725 to i64
  store i64 %2726, i64* %RDX, align 8, !tbaa !2428
  %2727 = icmp ult i32 %2725, %2693
  %2728 = icmp ult i32 %2725, %2724
  %2729 = or i1 %2727, %2728
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %70, align 1, !tbaa !2432
  %2731 = and i32 %2725, 255
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731) #8
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %76, align 1, !tbaa !2446
  %2736 = xor i32 %2724, %2693
  %2737 = xor i32 %2736, %2725
  %2738 = lshr i32 %2737, 4
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  store i8 %2740, i8* %81, align 1, !tbaa !2447
  %2741 = icmp eq i32 %2725, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %84, align 1, !tbaa !2448
  %2743 = lshr i32 %2725, 31
  %2744 = trunc i32 %2743 to i8
  store i8 %2744, i8* %87, align 1, !tbaa !2449
  %2745 = lshr i32 %2724, 31
  %2746 = xor i32 %2743, %2712
  %2747 = xor i32 %2743, %2745
  %2748 = add nuw nsw i32 %2746, %2747
  %2749 = icmp eq i32 %2748, 2
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %93, align 1, !tbaa !2450
  %2751 = sext i32 %2725 to i64
  store i64 %2751, i64* %RCX, align 8, !tbaa !2428
  %2752 = load i64, i64* %RAX, align 8
  %2753 = shl nsw i64 %2751, 2
  %2754 = add i64 %2753, %2752
  %2755 = add i64 %7069, 969
  store i64 %2755, i64* %PC, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = bitcast %union.VectorReg* %5 to i32*
  store i32 %2757, i32* %2758, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %2759 = add i64 %2720, -40
  %2760 = add i64 %7069, 973
  store i64 %2760, i64* %PC, align 8
  %2761 = inttoptr i64 %2759 to i64*
  %2762 = load i64, i64* %2761, align 8
  store i64 %2762, i64* %RAX, align 8, !tbaa !2428
  %2763 = add i64 %7069, 976
  store i64 %2763, i64* %PC, align 8
  %2764 = inttoptr i64 %2762 to i64*
  %2765 = load i64, i64* %2764, align 8
  store i64 %2765, i64* %RAX, align 8, !tbaa !2428
  %2766 = add i64 %7069, 980
  store i64 %2766, i64* %PC, align 8
  %2767 = load i64, i64* %2761, align 8
  store i64 %2767, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2768 = add i64 %7069, 988
  store i64 %2768, i64* %PC, align 8
  %2769 = load i64, i64* %2761, align 8
  store i64 %2769, i64* %RCX, align 8, !tbaa !2428
  %2770 = add i64 %7069, 992
  store i64 %2770, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2771 = add i64 %7069, 996
  store i64 %2771, i64* %PC, align 8
  %2772 = load i64, i64* %2761, align 8
  store i64 %2772, i64* %RCX, align 8, !tbaa !2428
  %2773 = add i64 %7069, 1000
  store i64 %2773, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2774 = load i64, i64* %RBP, align 8
  %2775 = add i64 %2774, -52
  %2776 = add i64 %7069, 1003
  store i64 %2776, i64* %PC, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RSI, align 8, !tbaa !2428
  %2780 = add i64 %2774, -40
  %2781 = add i64 %7069, 1007
  store i64 %2781, i64* %PC, align 8
  %2782 = inttoptr i64 %2780 to i64*
  %2783 = load i64, i64* %2782, align 8
  store i64 %2783, i64* %RCX, align 8, !tbaa !2428
  %2784 = add i64 %2783, 16
  %2785 = add i64 %7069, 1011
  store i64 %2785, i64* %PC, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = sext i32 %2778 to i64
  %2789 = sext i32 %2787 to i64
  %2790 = mul nsw i64 %2789, %2788
  %2791 = trunc i64 %2790 to i32
  %2792 = and i64 %2790, 4294967295
  store i64 %2792, i64* %RSI, align 8, !tbaa !2428
  %2793 = shl i64 %2790, 32
  %2794 = ashr exact i64 %2793, 32
  %2795 = icmp ne i64 %2794, %2790
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %70, align 1, !tbaa !2432
  %2797 = and i32 %2791, 255
  %2798 = tail call i32 @llvm.ctpop.i32(i32 %2797) #8
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = xor i8 %2800, 1
  store i8 %2801, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2802 = lshr i32 %2791, 31
  %2803 = trunc i32 %2802 to i8
  store i8 %2803, i8* %87, align 1, !tbaa !2449
  store i8 %2796, i8* %93, align 1, !tbaa !2450
  %2804 = add i64 %7069, 1015
  store i64 %2804, i64* %PC, align 8
  %2805 = load i64, i64* %2782, align 8
  store i64 %2805, i64* %RCX, align 8, !tbaa !2428
  %2806 = add i64 %2805, 20
  %2807 = add i64 %7069, 1019
  store i64 %2807, i64* %PC, align 8
  %2808 = inttoptr i64 %2806 to i32*
  %2809 = load i32, i32* %2808, align 4
  %2810 = shl i64 %2790, 32
  %2811 = ashr exact i64 %2810, 32
  %2812 = sext i32 %2809 to i64
  %2813 = mul nsw i64 %2812, %2811
  %2814 = and i64 %2813, 4294967295
  store i64 %2814, i64* %RSI, align 8, !tbaa !2428
  %2815 = trunc i64 %2813 to i32
  %2816 = and i64 %2813, 4294967295
  store i64 %2816, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2817 = and i32 %2815, 255
  %2818 = tail call i32 @llvm.ctpop.i32(i32 %2817) #8
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  %2821 = xor i8 %2820, 1
  store i8 %2821, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2822 = icmp eq i32 %2815, 0
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %84, align 1, !tbaa !2448
  %2824 = lshr i32 %2815, 31
  %2825 = trunc i32 %2824 to i8
  store i8 %2825, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2826 = add i64 %2774, -56
  %2827 = add i64 %7069, 1024
  store i64 %2827, i64* %PC, align 8
  %2828 = inttoptr i64 %2826 to i32*
  %2829 = load i32, i32* %2828, align 4
  %2830 = add i32 %2829, 1
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RSI, align 8, !tbaa !2428
  %2832 = icmp eq i32 %2829, -1
  %2833 = icmp eq i32 %2830, 0
  %2834 = or i1 %2832, %2833
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %70, align 1, !tbaa !2432
  %2836 = and i32 %2830, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836) #8
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %76, align 1, !tbaa !2446
  %2841 = xor i32 %2829, %2830
  %2842 = lshr i32 %2841, 4
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  store i8 %2844, i8* %81, align 1, !tbaa !2447
  %2845 = icmp eq i32 %2830, 0
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %84, align 1, !tbaa !2448
  %2847 = lshr i32 %2830, 31
  %2848 = trunc i32 %2847 to i8
  store i8 %2848, i8* %87, align 1, !tbaa !2449
  %2849 = lshr i32 %2829, 31
  %2850 = xor i32 %2847, %2849
  %2851 = add nuw nsw i32 %2850, %2847
  %2852 = icmp eq i32 %2851, 2
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %93, align 1, !tbaa !2450
  %2854 = load i64, i64* %RBP, align 8
  %2855 = add i64 %2854, -40
  %2856 = add i64 %7069, 1031
  store i64 %2856, i64* %PC, align 8
  %2857 = inttoptr i64 %2855 to i64*
  %2858 = load i64, i64* %2857, align 8
  store i64 %2858, i64* %RCX, align 8, !tbaa !2428
  %2859 = add i64 %2858, 20
  %2860 = add i64 %7069, 1035
  store i64 %2860, i64* %PC, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sext i32 %2830 to i64
  %2864 = sext i32 %2862 to i64
  %2865 = mul nsw i64 %2864, %2863
  %2866 = and i64 %2865, 4294967295
  store i64 %2866, i64* %RSI, align 8, !tbaa !2428
  %2867 = trunc i64 %2865 to i32
  %2868 = add i32 %2867, %2815
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RDX, align 8, !tbaa !2428
  %2870 = icmp ult i32 %2868, %2815
  %2871 = icmp ult i32 %2868, %2867
  %2872 = or i1 %2870, %2871
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %70, align 1, !tbaa !2432
  %2874 = and i32 %2868, 255
  %2875 = tail call i32 @llvm.ctpop.i32(i32 %2874) #8
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = xor i8 %2877, 1
  store i8 %2878, i8* %76, align 1, !tbaa !2446
  %2879 = xor i64 %2865, %2813
  %2880 = trunc i64 %2879 to i32
  %2881 = xor i32 %2880, %2868
  %2882 = lshr i32 %2881, 4
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  store i8 %2884, i8* %81, align 1, !tbaa !2447
  %2885 = icmp eq i32 %2868, 0
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %84, align 1, !tbaa !2448
  %2887 = lshr i32 %2868, 31
  %2888 = trunc i32 %2887 to i8
  store i8 %2888, i8* %87, align 1, !tbaa !2449
  %2889 = lshr i32 %2867, 31
  %2890 = xor i32 %2887, %2824
  %2891 = xor i32 %2887, %2889
  %2892 = add nuw nsw i32 %2890, %2891
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %93, align 1, !tbaa !2450
  %2895 = add i64 %2854, -60
  %2896 = add i64 %7069, 1040
  store i64 %2896, i64* %PC, align 8
  %2897 = inttoptr i64 %2895 to i32*
  %2898 = load i32, i32* %2897, align 4
  %2899 = add i32 %2898, 1
  %2900 = zext i32 %2899 to i64
  store i64 %2900, i64* %RSI, align 8, !tbaa !2428
  %2901 = lshr i32 %2899, 31
  %2902 = add i32 %2899, %2868
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RDX, align 8, !tbaa !2428
  %2904 = icmp ult i32 %2902, %2868
  %2905 = icmp ult i32 %2902, %2899
  %2906 = or i1 %2904, %2905
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %70, align 1, !tbaa !2432
  %2908 = and i32 %2902, 255
  %2909 = tail call i32 @llvm.ctpop.i32(i32 %2908) #8
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %76, align 1, !tbaa !2446
  %2913 = xor i32 %2899, %2868
  %2914 = xor i32 %2913, %2902
  %2915 = lshr i32 %2914, 4
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  store i8 %2917, i8* %81, align 1, !tbaa !2447
  %2918 = icmp eq i32 %2902, 0
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %84, align 1, !tbaa !2448
  %2920 = lshr i32 %2902, 31
  %2921 = trunc i32 %2920 to i8
  store i8 %2921, i8* %87, align 1, !tbaa !2449
  %2922 = xor i32 %2920, %2887
  %2923 = xor i32 %2920, %2901
  %2924 = add nuw nsw i32 %2922, %2923
  %2925 = icmp eq i32 %2924, 2
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %93, align 1, !tbaa !2450
  %2927 = sext i32 %2902 to i64
  store i64 %2927, i64* %RCX, align 8, !tbaa !2428
  %2928 = load i64, i64* %RAX, align 8
  %2929 = shl nsw i64 %2927, 2
  %2930 = add i64 %2929, %2928
  %2931 = add i64 %7069, 1053
  store i64 %2931, i64* %PC, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  %2934 = bitcast %union.VectorReg* %6 to i32*
  store i32 %2933, i32* %2934, align 1, !tbaa !2451
  store float 0.000000e+00, float* %217, align 1, !tbaa !2451
  store float 0.000000e+00, float* %219, align 1, !tbaa !2451
  store float 0.000000e+00, float* %221, align 1, !tbaa !2451
  %2935 = load i64, i64* %RBP, align 8
  %2936 = add i64 %2935, -40
  %2937 = add i64 %7069, 1057
  store i64 %2937, i64* %PC, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RAX, align 8, !tbaa !2428
  %2940 = add i64 %7069, 1060
  store i64 %2940, i64* %PC, align 8
  %2941 = inttoptr i64 %2939 to i64*
  %2942 = load i64, i64* %2941, align 8
  store i64 %2942, i64* %RAX, align 8, !tbaa !2428
  %2943 = add i64 %7069, 1064
  store i64 %2943, i64* %PC, align 8
  %2944 = load i64, i64* %2938, align 8
  store i64 %2944, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2945 = add i64 %7069, 1072
  store i64 %2945, i64* %PC, align 8
  %2946 = load i64, i64* %2938, align 8
  store i64 %2946, i64* %RCX, align 8, !tbaa !2428
  %2947 = add i64 %7069, 1076
  store i64 %2947, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2948 = add i64 %7069, 1080
  store i64 %2948, i64* %PC, align 8
  %2949 = load i64, i64* %2938, align 8
  store i64 %2949, i64* %RCX, align 8, !tbaa !2428
  %2950 = add i64 %7069, 1084
  store i64 %2950, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %2951 = add i64 %2935, -52
  %2952 = add i64 %7069, 1087
  store i64 %2952, i64* %PC, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = zext i32 %2954 to i64
  store i64 %2955, i64* %RSI, align 8, !tbaa !2428
  %2956 = add i64 %7069, 1091
  store i64 %2956, i64* %PC, align 8
  %2957 = load i64, i64* %2938, align 8
  store i64 %2957, i64* %RCX, align 8, !tbaa !2428
  %2958 = add i64 %2957, 16
  %2959 = add i64 %7069, 1095
  store i64 %2959, i64* %PC, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  %2962 = sext i32 %2954 to i64
  %2963 = sext i32 %2961 to i64
  %2964 = mul nsw i64 %2963, %2962
  %2965 = trunc i64 %2964 to i32
  %2966 = and i64 %2964, 4294967295
  store i64 %2966, i64* %RSI, align 8, !tbaa !2428
  %2967 = shl i64 %2964, 32
  %2968 = ashr exact i64 %2967, 32
  %2969 = icmp ne i64 %2968, %2964
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %70, align 1, !tbaa !2432
  %2971 = and i32 %2965, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971) #8
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %2976 = lshr i32 %2965, 31
  %2977 = trunc i32 %2976 to i8
  store i8 %2977, i8* %87, align 1, !tbaa !2449
  store i8 %2970, i8* %93, align 1, !tbaa !2450
  %2978 = add i64 %7069, 1099
  store i64 %2978, i64* %PC, align 8
  %2979 = load i64, i64* %2938, align 8
  store i64 %2979, i64* %RCX, align 8, !tbaa !2428
  %2980 = add i64 %2979, 20
  %2981 = add i64 %7069, 1103
  store i64 %2981, i64* %PC, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = shl i64 %2964, 32
  %2985 = ashr exact i64 %2984, 32
  %2986 = sext i32 %2983 to i64
  %2987 = mul nsw i64 %2986, %2985
  %2988 = and i64 %2987, 4294967295
  store i64 %2988, i64* %RSI, align 8, !tbaa !2428
  %2989 = trunc i64 %2987 to i32
  %2990 = and i64 %2987, 4294967295
  store i64 %2990, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %2991 = and i32 %2989, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991) #8
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %2996 = icmp eq i32 %2989, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %84, align 1, !tbaa !2448
  %2998 = lshr i32 %2989, 31
  %2999 = trunc i32 %2998 to i8
  store i8 %2999, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3000 = load i64, i64* %RBP, align 8
  %3001 = add i64 %3000, -56
  %3002 = add i64 %7069, 1108
  store i64 %3002, i64* %PC, align 8
  %3003 = inttoptr i64 %3001 to i32*
  %3004 = load i32, i32* %3003, align 4
  %3005 = add i32 %3004, -1
  %3006 = zext i32 %3005 to i64
  store i64 %3006, i64* %RSI, align 8, !tbaa !2428
  %3007 = icmp eq i32 %3004, 0
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %70, align 1, !tbaa !2432
  %3009 = and i32 %3005, 255
  %3010 = tail call i32 @llvm.ctpop.i32(i32 %3009) #8
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  store i8 %3013, i8* %76, align 1, !tbaa !2446
  %3014 = xor i32 %3004, %3005
  %3015 = lshr i32 %3014, 4
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  store i8 %3017, i8* %81, align 1, !tbaa !2447
  %3018 = icmp eq i32 %3005, 0
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %84, align 1, !tbaa !2448
  %3020 = lshr i32 %3005, 31
  %3021 = trunc i32 %3020 to i8
  store i8 %3021, i8* %87, align 1, !tbaa !2449
  %3022 = lshr i32 %3004, 31
  %3023 = xor i32 %3020, %3022
  %3024 = add nuw nsw i32 %3023, %3022
  %3025 = icmp eq i32 %3024, 2
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %93, align 1, !tbaa !2450
  %3027 = add i64 %3000, -40
  %3028 = add i64 %7069, 1115
  store i64 %3028, i64* %PC, align 8
  %3029 = inttoptr i64 %3027 to i64*
  %3030 = load i64, i64* %3029, align 8
  store i64 %3030, i64* %RCX, align 8, !tbaa !2428
  %3031 = add i64 %3030, 20
  %3032 = add i64 %7069, 1119
  store i64 %3032, i64* %PC, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = sext i32 %3005 to i64
  %3036 = sext i32 %3034 to i64
  %3037 = mul nsw i64 %3036, %3035
  %3038 = and i64 %3037, 4294967295
  store i64 %3038, i64* %RSI, align 8, !tbaa !2428
  %3039 = trunc i64 %3037 to i32
  %3040 = add i32 %3039, %2989
  %3041 = zext i32 %3040 to i64
  store i64 %3041, i64* %RDX, align 8, !tbaa !2428
  %3042 = icmp ult i32 %3040, %2989
  %3043 = icmp ult i32 %3040, %3039
  %3044 = or i1 %3042, %3043
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %70, align 1, !tbaa !2432
  %3046 = and i32 %3040, 255
  %3047 = tail call i32 @llvm.ctpop.i32(i32 %3046) #8
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  %3050 = xor i8 %3049, 1
  store i8 %3050, i8* %76, align 1, !tbaa !2446
  %3051 = xor i64 %3037, %2987
  %3052 = trunc i64 %3051 to i32
  %3053 = xor i32 %3052, %3040
  %3054 = lshr i32 %3053, 4
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  store i8 %3056, i8* %81, align 1, !tbaa !2447
  %3057 = icmp eq i32 %3040, 0
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %84, align 1, !tbaa !2448
  %3059 = lshr i32 %3040, 31
  %3060 = trunc i32 %3059 to i8
  store i8 %3060, i8* %87, align 1, !tbaa !2449
  %3061 = lshr i32 %3039, 31
  %3062 = xor i32 %3059, %2998
  %3063 = xor i32 %3059, %3061
  %3064 = add nuw nsw i32 %3062, %3063
  %3065 = icmp eq i32 %3064, 2
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %93, align 1, !tbaa !2450
  %3067 = load i64, i64* %RBP, align 8
  %3068 = add i64 %3067, -60
  %3069 = add i64 %7069, 1124
  store i64 %3069, i64* %PC, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = add i32 %3071, 1
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RSI, align 8, !tbaa !2428
  %3074 = lshr i32 %3072, 31
  %3075 = add i32 %3072, %3040
  %3076 = zext i32 %3075 to i64
  store i64 %3076, i64* %RDX, align 8, !tbaa !2428
  %3077 = icmp ult i32 %3075, %3040
  %3078 = icmp ult i32 %3075, %3072
  %3079 = or i1 %3077, %3078
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %70, align 1, !tbaa !2432
  %3081 = and i32 %3075, 255
  %3082 = tail call i32 @llvm.ctpop.i32(i32 %3081) #8
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  %3085 = xor i8 %3084, 1
  store i8 %3085, i8* %76, align 1, !tbaa !2446
  %3086 = xor i32 %3072, %3040
  %3087 = xor i32 %3086, %3075
  %3088 = lshr i32 %3087, 4
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  store i8 %3090, i8* %81, align 1, !tbaa !2447
  %3091 = icmp eq i32 %3075, 0
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %84, align 1, !tbaa !2448
  %3093 = lshr i32 %3075, 31
  %3094 = trunc i32 %3093 to i8
  store i8 %3094, i8* %87, align 1, !tbaa !2449
  %3095 = xor i32 %3093, %3059
  %3096 = xor i32 %3093, %3074
  %3097 = add nuw nsw i32 %3095, %3096
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %93, align 1, !tbaa !2450
  %3100 = sext i32 %3075 to i64
  store i64 %3100, i64* %RCX, align 8, !tbaa !2428
  %3101 = load i64, i64* %RAX, align 8
  %3102 = shl nsw i64 %3100, 2
  %3103 = add i64 %3102, %3101
  %3104 = add i64 %7069, 1137
  store i64 %3104, i64* %PC, align 8
  %3105 = load <2 x float>, <2 x float>* %222, align 1
  %3106 = load <2 x i32>, <2 x i32>* %223, align 1
  %3107 = inttoptr i64 %3103 to float*
  %3108 = load float, float* %3107, align 4
  %3109 = extractelement <2 x float> %3105, i32 0
  %3110 = fsub float %3109, %3108
  store float %3110, float* %215, align 1, !tbaa !2451
  %3111 = bitcast <2 x float> %3105 to <2 x i32>
  %3112 = extractelement <2 x i32> %3111, i32 1
  store i32 %3112, i32* %224, align 1, !tbaa !2451
  %3113 = extractelement <2 x i32> %3106, i32 0
  store i32 %3113, i32* %225, align 1, !tbaa !2451
  %3114 = extractelement <2 x i32> %3106, i32 1
  store i32 %3114, i32* %226, align 1, !tbaa !2451
  %3115 = load i64, i64* %RBP, align 8
  %3116 = add i64 %3115, -40
  %3117 = add i64 %7069, 1141
  store i64 %3117, i64* %PC, align 8
  %3118 = inttoptr i64 %3116 to i64*
  %3119 = load i64, i64* %3118, align 8
  store i64 %3119, i64* %RAX, align 8, !tbaa !2428
  %3120 = add i64 %7069, 1144
  store i64 %3120, i64* %PC, align 8
  %3121 = inttoptr i64 %3119 to i64*
  %3122 = load i64, i64* %3121, align 8
  store i64 %3122, i64* %RAX, align 8, !tbaa !2428
  %3123 = add i64 %7069, 1148
  store i64 %3123, i64* %PC, align 8
  %3124 = load i64, i64* %3118, align 8
  store i64 %3124, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3125 = add i64 %7069, 1156
  store i64 %3125, i64* %PC, align 8
  %3126 = load i64, i64* %3118, align 8
  store i64 %3126, i64* %RCX, align 8, !tbaa !2428
  %3127 = add i64 %7069, 1160
  store i64 %3127, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3128 = add i64 %7069, 1164
  store i64 %3128, i64* %PC, align 8
  %3129 = load i64, i64* %3118, align 8
  store i64 %3129, i64* %RCX, align 8, !tbaa !2428
  %3130 = add i64 %7069, 1168
  store i64 %3130, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3131 = add i64 %3115, -52
  %3132 = add i64 %7069, 1171
  store i64 %3132, i64* %PC, align 8
  %3133 = inttoptr i64 %3131 to i32*
  %3134 = load i32, i32* %3133, align 4
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RSI, align 8, !tbaa !2428
  %3136 = add i64 %7069, 1175
  store i64 %3136, i64* %PC, align 8
  %3137 = load i64, i64* %3118, align 8
  store i64 %3137, i64* %RCX, align 8, !tbaa !2428
  %3138 = add i64 %3137, 16
  %3139 = add i64 %7069, 1179
  store i64 %3139, i64* %PC, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3134 to i64
  %3143 = sext i32 %3141 to i64
  %3144 = mul nsw i64 %3143, %3142
  %3145 = trunc i64 %3144 to i32
  %3146 = and i64 %3144, 4294967295
  store i64 %3146, i64* %RSI, align 8, !tbaa !2428
  %3147 = shl i64 %3144, 32
  %3148 = ashr exact i64 %3147, 32
  %3149 = icmp ne i64 %3148, %3144
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %70, align 1, !tbaa !2432
  %3151 = and i32 %3145, 255
  %3152 = tail call i32 @llvm.ctpop.i32(i32 %3151) #8
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  store i8 %3155, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3156 = lshr i32 %3145, 31
  %3157 = trunc i32 %3156 to i8
  store i8 %3157, i8* %87, align 1, !tbaa !2449
  store i8 %3150, i8* %93, align 1, !tbaa !2450
  %3158 = add i64 %7069, 1183
  store i64 %3158, i64* %PC, align 8
  %3159 = load i64, i64* %3118, align 8
  store i64 %3159, i64* %RCX, align 8, !tbaa !2428
  %3160 = add i64 %3159, 20
  %3161 = add i64 %7069, 1187
  store i64 %3161, i64* %PC, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = shl i64 %3144, 32
  %3165 = ashr exact i64 %3164, 32
  %3166 = sext i32 %3163 to i64
  %3167 = mul nsw i64 %3166, %3165
  %3168 = and i64 %3167, 4294967295
  store i64 %3168, i64* %RSI, align 8, !tbaa !2428
  %3169 = trunc i64 %3167 to i32
  %3170 = and i64 %3167, 4294967295
  store i64 %3170, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3171 = and i32 %3169, 255
  %3172 = tail call i32 @llvm.ctpop.i32(i32 %3171) #8
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  store i8 %3175, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3176 = icmp eq i32 %3169, 0
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %84, align 1, !tbaa !2448
  %3178 = lshr i32 %3169, 31
  %3179 = trunc i32 %3178 to i8
  store i8 %3179, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3180 = load i64, i64* %RBP, align 8
  %3181 = add i64 %3180, -56
  %3182 = add i64 %7069, 1192
  store i64 %3182, i64* %PC, align 8
  %3183 = inttoptr i64 %3181 to i32*
  %3184 = load i32, i32* %3183, align 4
  %3185 = add i32 %3184, 1
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RSI, align 8, !tbaa !2428
  %3187 = icmp eq i32 %3184, -1
  %3188 = icmp eq i32 %3185, 0
  %3189 = or i1 %3187, %3188
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %70, align 1, !tbaa !2432
  %3191 = and i32 %3185, 255
  %3192 = tail call i32 @llvm.ctpop.i32(i32 %3191) #8
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = xor i8 %3194, 1
  store i8 %3195, i8* %76, align 1, !tbaa !2446
  %3196 = xor i32 %3184, %3185
  %3197 = lshr i32 %3196, 4
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  store i8 %3199, i8* %81, align 1, !tbaa !2447
  %3200 = icmp eq i32 %3185, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %84, align 1, !tbaa !2448
  %3202 = lshr i32 %3185, 31
  %3203 = trunc i32 %3202 to i8
  store i8 %3203, i8* %87, align 1, !tbaa !2449
  %3204 = lshr i32 %3184, 31
  %3205 = xor i32 %3202, %3204
  %3206 = add nuw nsw i32 %3205, %3202
  %3207 = icmp eq i32 %3206, 2
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %93, align 1, !tbaa !2450
  %3209 = add i64 %3180, -40
  %3210 = add i64 %7069, 1199
  store i64 %3210, i64* %PC, align 8
  %3211 = inttoptr i64 %3209 to i64*
  %3212 = load i64, i64* %3211, align 8
  store i64 %3212, i64* %RCX, align 8, !tbaa !2428
  %3213 = add i64 %3212, 20
  %3214 = add i64 %7069, 1203
  store i64 %3214, i64* %PC, align 8
  %3215 = inttoptr i64 %3213 to i32*
  %3216 = load i32, i32* %3215, align 4
  %3217 = sext i32 %3185 to i64
  %3218 = sext i32 %3216 to i64
  %3219 = mul nsw i64 %3218, %3217
  %3220 = and i64 %3219, 4294967295
  store i64 %3220, i64* %RSI, align 8, !tbaa !2428
  %3221 = trunc i64 %3219 to i32
  %3222 = add i32 %3221, %3169
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RDX, align 8, !tbaa !2428
  %3224 = icmp ult i32 %3222, %3169
  %3225 = icmp ult i32 %3222, %3221
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %70, align 1, !tbaa !2432
  %3228 = and i32 %3222, 255
  %3229 = tail call i32 @llvm.ctpop.i32(i32 %3228) #8
  %3230 = trunc i32 %3229 to i8
  %3231 = and i8 %3230, 1
  %3232 = xor i8 %3231, 1
  store i8 %3232, i8* %76, align 1, !tbaa !2446
  %3233 = xor i64 %3219, %3167
  %3234 = trunc i64 %3233 to i32
  %3235 = xor i32 %3234, %3222
  %3236 = lshr i32 %3235, 4
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  store i8 %3238, i8* %81, align 1, !tbaa !2447
  %3239 = icmp eq i32 %3222, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %84, align 1, !tbaa !2448
  %3241 = lshr i32 %3222, 31
  %3242 = trunc i32 %3241 to i8
  store i8 %3242, i8* %87, align 1, !tbaa !2449
  %3243 = lshr i32 %3221, 31
  %3244 = xor i32 %3241, %3178
  %3245 = xor i32 %3241, %3243
  %3246 = add nuw nsw i32 %3244, %3245
  %3247 = icmp eq i32 %3246, 2
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %93, align 1, !tbaa !2450
  %3249 = load i64, i64* %RBP, align 8
  %3250 = add i64 %3249, -60
  %3251 = add i64 %7069, 1208
  store i64 %3251, i64* %PC, align 8
  %3252 = inttoptr i64 %3250 to i32*
  %3253 = load i32, i32* %3252, align 4
  %3254 = add i32 %3253, -1
  %3255 = zext i32 %3254 to i64
  store i64 %3255, i64* %RSI, align 8, !tbaa !2428
  %3256 = lshr i32 %3254, 31
  %3257 = add i32 %3254, %3222
  %3258 = zext i32 %3257 to i64
  store i64 %3258, i64* %RDX, align 8, !tbaa !2428
  %3259 = icmp ult i32 %3257, %3222
  %3260 = icmp ult i32 %3257, %3254
  %3261 = or i1 %3259, %3260
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %70, align 1, !tbaa !2432
  %3263 = and i32 %3257, 255
  %3264 = tail call i32 @llvm.ctpop.i32(i32 %3263) #8
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = xor i8 %3266, 1
  store i8 %3267, i8* %76, align 1, !tbaa !2446
  %3268 = xor i32 %3254, %3222
  %3269 = xor i32 %3268, %3257
  %3270 = lshr i32 %3269, 4
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  store i8 %3272, i8* %81, align 1, !tbaa !2447
  %3273 = icmp eq i32 %3257, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %84, align 1, !tbaa !2448
  %3275 = lshr i32 %3257, 31
  %3276 = trunc i32 %3275 to i8
  store i8 %3276, i8* %87, align 1, !tbaa !2449
  %3277 = xor i32 %3275, %3241
  %3278 = xor i32 %3275, %3256
  %3279 = add nuw nsw i32 %3277, %3278
  %3280 = icmp eq i32 %3279, 2
  %3281 = zext i1 %3280 to i8
  store i8 %3281, i8* %93, align 1, !tbaa !2450
  %3282 = sext i32 %3257 to i64
  store i64 %3282, i64* %RCX, align 8, !tbaa !2428
  %3283 = load i64, i64* %RAX, align 8
  %3284 = shl nsw i64 %3282, 2
  %3285 = add i64 %3284, %3283
  %3286 = add i64 %7069, 1221
  store i64 %3286, i64* %PC, align 8
  %3287 = load <2 x float>, <2 x float>* %222, align 1
  %3288 = load <2 x i32>, <2 x i32>* %223, align 1
  %3289 = inttoptr i64 %3285 to float*
  %3290 = load float, float* %3289, align 4
  %3291 = extractelement <2 x float> %3287, i32 0
  %3292 = fsub float %3291, %3290
  store float %3292, float* %215, align 1, !tbaa !2451
  %3293 = bitcast <2 x float> %3287 to <2 x i32>
  %3294 = extractelement <2 x i32> %3293, i32 1
  store i32 %3294, i32* %224, align 1, !tbaa !2451
  %3295 = extractelement <2 x i32> %3288, i32 0
  store i32 %3295, i32* %225, align 1, !tbaa !2451
  %3296 = extractelement <2 x i32> %3288, i32 1
  store i32 %3296, i32* %226, align 1, !tbaa !2451
  %3297 = load i64, i64* %RBP, align 8
  %3298 = add i64 %3297, -40
  %3299 = add i64 %7069, 1225
  store i64 %3299, i64* %PC, align 8
  %3300 = inttoptr i64 %3298 to i64*
  %3301 = load i64, i64* %3300, align 8
  store i64 %3301, i64* %RAX, align 8, !tbaa !2428
  %3302 = add i64 %7069, 1228
  store i64 %3302, i64* %PC, align 8
  %3303 = inttoptr i64 %3301 to i64*
  %3304 = load i64, i64* %3303, align 8
  store i64 %3304, i64* %RAX, align 8, !tbaa !2428
  %3305 = add i64 %7069, 1232
  store i64 %3305, i64* %PC, align 8
  %3306 = load i64, i64* %3300, align 8
  store i64 %3306, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3307 = add i64 %7069, 1240
  store i64 %3307, i64* %PC, align 8
  %3308 = load i64, i64* %3300, align 8
  store i64 %3308, i64* %RCX, align 8, !tbaa !2428
  %3309 = add i64 %7069, 1244
  store i64 %3309, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3310 = add i64 %7069, 1248
  store i64 %3310, i64* %PC, align 8
  %3311 = load i64, i64* %3300, align 8
  store i64 %3311, i64* %RCX, align 8, !tbaa !2428
  %3312 = add i64 %7069, 1252
  store i64 %3312, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3313 = add i64 %3297, -52
  %3314 = add i64 %7069, 1255
  store i64 %3314, i64* %PC, align 8
  %3315 = inttoptr i64 %3313 to i32*
  %3316 = load i32, i32* %3315, align 4
  %3317 = zext i32 %3316 to i64
  store i64 %3317, i64* %RSI, align 8, !tbaa !2428
  %3318 = add i64 %7069, 1259
  store i64 %3318, i64* %PC, align 8
  %3319 = load i64, i64* %3300, align 8
  store i64 %3319, i64* %RCX, align 8, !tbaa !2428
  %3320 = add i64 %3319, 16
  %3321 = add i64 %7069, 1263
  store i64 %3321, i64* %PC, align 8
  %3322 = inttoptr i64 %3320 to i32*
  %3323 = load i32, i32* %3322, align 4
  %3324 = sext i32 %3316 to i64
  %3325 = sext i32 %3323 to i64
  %3326 = mul nsw i64 %3325, %3324
  %3327 = trunc i64 %3326 to i32
  %3328 = and i64 %3326, 4294967295
  store i64 %3328, i64* %RSI, align 8, !tbaa !2428
  %3329 = shl i64 %3326, 32
  %3330 = ashr exact i64 %3329, 32
  %3331 = icmp ne i64 %3330, %3326
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %70, align 1, !tbaa !2432
  %3333 = and i32 %3327, 255
  %3334 = tail call i32 @llvm.ctpop.i32(i32 %3333) #8
  %3335 = trunc i32 %3334 to i8
  %3336 = and i8 %3335, 1
  %3337 = xor i8 %3336, 1
  store i8 %3337, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3338 = lshr i32 %3327, 31
  %3339 = trunc i32 %3338 to i8
  store i8 %3339, i8* %87, align 1, !tbaa !2449
  store i8 %3332, i8* %93, align 1, !tbaa !2450
  %3340 = add i64 %7069, 1267
  store i64 %3340, i64* %PC, align 8
  %3341 = load i64, i64* %3300, align 8
  store i64 %3341, i64* %RCX, align 8, !tbaa !2428
  %3342 = add i64 %3341, 20
  %3343 = add i64 %7069, 1271
  store i64 %3343, i64* %PC, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = shl i64 %3326, 32
  %3347 = ashr exact i64 %3346, 32
  %3348 = sext i32 %3345 to i64
  %3349 = mul nsw i64 %3348, %3347
  %3350 = and i64 %3349, 4294967295
  store i64 %3350, i64* %RSI, align 8, !tbaa !2428
  %3351 = trunc i64 %3349 to i32
  %3352 = and i64 %3349, 4294967295
  store i64 %3352, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %3353 = and i32 %3351, 255
  %3354 = tail call i32 @llvm.ctpop.i32(i32 %3353) #8
  %3355 = trunc i32 %3354 to i8
  %3356 = and i8 %3355, 1
  %3357 = xor i8 %3356, 1
  store i8 %3357, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %3358 = icmp eq i32 %3351, 0
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %84, align 1, !tbaa !2448
  %3360 = lshr i32 %3351, 31
  %3361 = trunc i32 %3360 to i8
  store i8 %3361, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3362 = load i64, i64* %RBP, align 8
  %3363 = add i64 %3362, -56
  %3364 = add i64 %7069, 1276
  store i64 %3364, i64* %PC, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = add i32 %3366, -1
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RSI, align 8, !tbaa !2428
  %3369 = icmp eq i32 %3366, 0
  %3370 = zext i1 %3369 to i8
  store i8 %3370, i8* %70, align 1, !tbaa !2432
  %3371 = and i32 %3367, 255
  %3372 = tail call i32 @llvm.ctpop.i32(i32 %3371) #8
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  %3375 = xor i8 %3374, 1
  store i8 %3375, i8* %76, align 1, !tbaa !2446
  %3376 = xor i32 %3366, %3367
  %3377 = lshr i32 %3376, 4
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  store i8 %3379, i8* %81, align 1, !tbaa !2447
  %3380 = icmp eq i32 %3367, 0
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %84, align 1, !tbaa !2448
  %3382 = lshr i32 %3367, 31
  %3383 = trunc i32 %3382 to i8
  store i8 %3383, i8* %87, align 1, !tbaa !2449
  %3384 = lshr i32 %3366, 31
  %3385 = xor i32 %3382, %3384
  %3386 = add nuw nsw i32 %3385, %3384
  %3387 = icmp eq i32 %3386, 2
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %93, align 1, !tbaa !2450
  %3389 = add i64 %3362, -40
  %3390 = add i64 %7069, 1283
  store i64 %3390, i64* %PC, align 8
  %3391 = inttoptr i64 %3389 to i64*
  %3392 = load i64, i64* %3391, align 8
  store i64 %3392, i64* %RCX, align 8, !tbaa !2428
  %3393 = add i64 %3392, 20
  %3394 = add i64 %7069, 1287
  store i64 %3394, i64* %PC, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = sext i32 %3367 to i64
  %3398 = sext i32 %3396 to i64
  %3399 = mul nsw i64 %3398, %3397
  %3400 = and i64 %3399, 4294967295
  store i64 %3400, i64* %RSI, align 8, !tbaa !2428
  %3401 = trunc i64 %3399 to i32
  %3402 = add i32 %3401, %3351
  %3403 = zext i32 %3402 to i64
  store i64 %3403, i64* %RDX, align 8, !tbaa !2428
  %3404 = icmp ult i32 %3402, %3351
  %3405 = icmp ult i32 %3402, %3401
  %3406 = or i1 %3404, %3405
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %70, align 1, !tbaa !2432
  %3408 = and i32 %3402, 255
  %3409 = tail call i32 @llvm.ctpop.i32(i32 %3408) #8
  %3410 = trunc i32 %3409 to i8
  %3411 = and i8 %3410, 1
  %3412 = xor i8 %3411, 1
  store i8 %3412, i8* %76, align 1, !tbaa !2446
  %3413 = xor i64 %3399, %3349
  %3414 = trunc i64 %3413 to i32
  %3415 = xor i32 %3414, %3402
  %3416 = lshr i32 %3415, 4
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  store i8 %3418, i8* %81, align 1, !tbaa !2447
  %3419 = icmp eq i32 %3402, 0
  %3420 = zext i1 %3419 to i8
  store i8 %3420, i8* %84, align 1, !tbaa !2448
  %3421 = lshr i32 %3402, 31
  %3422 = trunc i32 %3421 to i8
  store i8 %3422, i8* %87, align 1, !tbaa !2449
  %3423 = lshr i32 %3401, 31
  %3424 = xor i32 %3421, %3360
  %3425 = xor i32 %3421, %3423
  %3426 = add nuw nsw i32 %3424, %3425
  %3427 = icmp eq i32 %3426, 2
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %93, align 1, !tbaa !2450
  %3429 = load i64, i64* %RBP, align 8
  %3430 = add i64 %3429, -60
  %3431 = add i64 %7069, 1292
  store i64 %3431, i64* %PC, align 8
  %3432 = inttoptr i64 %3430 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = add i32 %3433, -1
  %3435 = zext i32 %3434 to i64
  store i64 %3435, i64* %RSI, align 8, !tbaa !2428
  %3436 = lshr i32 %3434, 31
  %3437 = add i32 %3434, %3402
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RDX, align 8, !tbaa !2428
  %3439 = icmp ult i32 %3437, %3402
  %3440 = icmp ult i32 %3437, %3434
  %3441 = or i1 %3439, %3440
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %70, align 1, !tbaa !2432
  %3443 = and i32 %3437, 255
  %3444 = tail call i32 @llvm.ctpop.i32(i32 %3443) #8
  %3445 = trunc i32 %3444 to i8
  %3446 = and i8 %3445, 1
  %3447 = xor i8 %3446, 1
  store i8 %3447, i8* %76, align 1, !tbaa !2446
  %3448 = xor i32 %3434, %3402
  %3449 = xor i32 %3448, %3437
  %3450 = lshr i32 %3449, 4
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  store i8 %3452, i8* %81, align 1, !tbaa !2447
  %3453 = icmp eq i32 %3437, 0
  %3454 = zext i1 %3453 to i8
  store i8 %3454, i8* %84, align 1, !tbaa !2448
  %3455 = lshr i32 %3437, 31
  %3456 = trunc i32 %3455 to i8
  store i8 %3456, i8* %87, align 1, !tbaa !2449
  %3457 = xor i32 %3455, %3421
  %3458 = xor i32 %3455, %3436
  %3459 = add nuw nsw i32 %3457, %3458
  %3460 = icmp eq i32 %3459, 2
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %93, align 1, !tbaa !2450
  %3462 = sext i32 %3437 to i64
  store i64 %3462, i64* %RCX, align 8, !tbaa !2428
  %3463 = load i64, i64* %RAX, align 8
  %3464 = shl nsw i64 %3462, 2
  %3465 = add i64 %3464, %3463
  %3466 = add i64 %7069, 1305
  store i64 %3466, i64* %PC, align 8
  %3467 = load <2 x float>, <2 x float>* %222, align 1
  %3468 = load <2 x i32>, <2 x i32>* %223, align 1
  %3469 = inttoptr i64 %3465 to float*
  %3470 = load float, float* %3469, align 4
  %3471 = extractelement <2 x float> %3467, i32 0
  %3472 = fadd float %3471, %3470
  store float %3472, float* %215, align 1, !tbaa !2451
  %3473 = bitcast <2 x float> %3467 to <2 x i32>
  %3474 = extractelement <2 x i32> %3473, i32 1
  store i32 %3474, i32* %224, align 1, !tbaa !2451
  %3475 = extractelement <2 x i32> %3468, i32 0
  store i32 %3475, i32* %225, align 1, !tbaa !2451
  %3476 = extractelement <2 x i32> %3468, i32 1
  store i32 %3476, i32* %226, align 1, !tbaa !2451
  %3477 = load <2 x float>, <2 x float>* %208, align 1
  %3478 = load <2 x i32>, <2 x i32>* %209, align 1
  %3479 = load <2 x float>, <2 x float>* %227, align 1
  %3480 = extractelement <2 x float> %3477, i32 0
  %3481 = extractelement <2 x float> %3479, i32 0
  %3482 = fmul float %3480, %3481
  store float %3482, float* %201, align 1, !tbaa !2451
  %3483 = bitcast <2 x float> %3477 to <2 x i32>
  %3484 = extractelement <2 x i32> %3483, i32 1
  store i32 %3484, i32* %210, align 1, !tbaa !2451
  %3485 = extractelement <2 x i32> %3478, i32 0
  store i32 %3485, i32* %211, align 1, !tbaa !2451
  %3486 = extractelement <2 x i32> %3478, i32 1
  store i32 %3486, i32* %212, align 1, !tbaa !2451
  %3487 = load <2 x float>, <2 x float>* %198, align 1
  %3488 = load <2 x i32>, <2 x i32>* %199, align 1
  %3489 = load <2 x float>, <2 x float>* %213, align 1
  %3490 = extractelement <2 x float> %3487, i32 0
  %3491 = extractelement <2 x float> %3489, i32 0
  %3492 = fadd float %3490, %3491
  store float %3492, float* %194, align 1, !tbaa !2451
  %3493 = bitcast <2 x float> %3487 to <2 x i32>
  %3494 = extractelement <2 x i32> %3493, i32 1
  store i32 %3494, i32* %189, align 1, !tbaa !2451
  %3495 = extractelement <2 x i32> %3488, i32 0
  store i32 %3495, i32* %190, align 1, !tbaa !2451
  %3496 = extractelement <2 x i32> %3488, i32 1
  store i32 %3496, i32* %192, align 1, !tbaa !2451
  %3497 = load i64, i64* %RBP, align 8
  %3498 = add i64 %3497, -24
  %3499 = add i64 %7069, 1317
  store i64 %3499, i64* %PC, align 8
  %3500 = inttoptr i64 %3498 to i64*
  %3501 = load i64, i64* %3500, align 8
  store i64 %3501, i64* %RAX, align 8, !tbaa !2428
  %3502 = add i64 %7069, 1320
  store i64 %3502, i64* %PC, align 8
  %3503 = inttoptr i64 %3501 to i64*
  %3504 = load i64, i64* %3503, align 8
  store i64 %3504, i64* %RAX, align 8, !tbaa !2428
  %3505 = add i64 %7069, 1324
  store i64 %3505, i64* %PC, align 8
  %3506 = load i64, i64* %3500, align 8
  store i64 %3506, i64* %RCX, align 8, !tbaa !2428
  %3507 = add i64 %3506, 12
  %3508 = add i64 %7069, 1327
  store i64 %3508, i64* %PC, align 8
  %3509 = inttoptr i64 %3507 to i32*
  %3510 = load i32, i32* %3509, align 4
  %3511 = shl i32 %3510, 1
  %3512 = icmp slt i32 %3510, 0
  %3513 = icmp slt i32 %3511, 0
  %3514 = xor i1 %3512, %3513
  %3515 = zext i32 %3511 to i64
  store i64 %3515, i64* %RDX, align 8, !tbaa !2428
  %.lobit11 = lshr i32 %3510, 31
  %3516 = trunc i32 %.lobit11 to i8
  store i8 %3516, i8* %70, align 1, !tbaa !2453
  %3517 = and i32 %3511, 254
  %3518 = tail call i32 @llvm.ctpop.i32(i32 %3517) #8
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = xor i8 %3520, 1
  store i8 %3521, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %3522 = icmp eq i32 %3511, 0
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %84, align 1, !tbaa !2453
  %3524 = lshr i32 %3510, 30
  %3525 = trunc i32 %3524 to i8
  %3526 = and i8 %3525, 1
  store i8 %3526, i8* %87, align 1, !tbaa !2453
  %3527 = zext i1 %3514 to i8
  store i8 %3527, i8* %93, align 1, !tbaa !2453
  %3528 = add i64 %7069, 1334
  store i64 %3528, i64* %PC, align 8
  %3529 = load i64, i64* %3500, align 8
  store i64 %3529, i64* %RCX, align 8, !tbaa !2428
  %3530 = add i64 %3529, 16
  %3531 = add i64 %7069, 1338
  store i64 %3531, i64* %PC, align 8
  %3532 = inttoptr i64 %3530 to i32*
  %3533 = load i32, i32* %3532, align 4
  %3534 = sext i32 %3511 to i64
  %3535 = sext i32 %3533 to i64
  %3536 = mul nsw i64 %3535, %3534
  %3537 = trunc i64 %3536 to i32
  %3538 = and i64 %3536, 4294967294
  store i64 %3538, i64* %RDX, align 8, !tbaa !2428
  %3539 = shl i64 %3536, 32
  %3540 = ashr exact i64 %3539, 32
  %3541 = icmp ne i64 %3540, %3536
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %70, align 1, !tbaa !2432
  %3543 = and i32 %3537, 254
  %3544 = tail call i32 @llvm.ctpop.i32(i32 %3543) #8
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  store i8 %3547, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3548 = lshr i32 %3537, 31
  %3549 = trunc i32 %3548 to i8
  store i8 %3549, i8* %87, align 1, !tbaa !2449
  store i8 %3542, i8* %93, align 1, !tbaa !2450
  %3550 = add i64 %7069, 1342
  store i64 %3550, i64* %PC, align 8
  %3551 = load i64, i64* %3500, align 8
  store i64 %3551, i64* %RCX, align 8, !tbaa !2428
  %3552 = add i64 %3551, 20
  %3553 = add i64 %7069, 1346
  store i64 %3553, i64* %PC, align 8
  %3554 = inttoptr i64 %3552 to i32*
  %3555 = load i32, i32* %3554, align 4
  %3556 = shl i64 %3536, 32
  %3557 = ashr exact i64 %3556, 32
  %3558 = sext i32 %3555 to i64
  %3559 = mul nsw i64 %3558, %3557
  %3560 = trunc i64 %3559 to i32
  %3561 = and i64 %3559, 4294967295
  store i64 %3561, i64* %RDX, align 8, !tbaa !2428
  %3562 = shl i64 %3559, 32
  %3563 = ashr exact i64 %3562, 32
  %3564 = icmp ne i64 %3563, %3559
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %70, align 1, !tbaa !2432
  %3566 = and i32 %3560, 255
  %3567 = tail call i32 @llvm.ctpop.i32(i32 %3566) #8
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  store i8 %3570, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3571 = lshr i32 %3560, 31
  %3572 = trunc i32 %3571 to i8
  store i8 %3572, i8* %87, align 1, !tbaa !2449
  store i8 %3565, i8* %93, align 1, !tbaa !2450
  %3573 = load i64, i64* %RBP, align 8
  %3574 = add i64 %3573, -52
  %3575 = add i64 %7069, 1349
  store i64 %3575, i64* %PC, align 8
  %3576 = inttoptr i64 %3574 to i32*
  %3577 = load i32, i32* %3576, align 4
  %3578 = zext i32 %3577 to i64
  store i64 %3578, i64* %RSI, align 8, !tbaa !2428
  %3579 = add i64 %3573, -24
  %3580 = add i64 %7069, 1353
  store i64 %3580, i64* %PC, align 8
  %3581 = inttoptr i64 %3579 to i64*
  %3582 = load i64, i64* %3581, align 8
  store i64 %3582, i64* %RCX, align 8, !tbaa !2428
  %3583 = add i64 %3582, 16
  %3584 = add i64 %7069, 1357
  store i64 %3584, i64* %PC, align 8
  %3585 = inttoptr i64 %3583 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = sext i32 %3577 to i64
  %3588 = sext i32 %3586 to i64
  %3589 = mul nsw i64 %3588, %3587
  %3590 = trunc i64 %3589 to i32
  %3591 = and i64 %3589, 4294967295
  store i64 %3591, i64* %RSI, align 8, !tbaa !2428
  %3592 = shl i64 %3589, 32
  %3593 = ashr exact i64 %3592, 32
  %3594 = icmp ne i64 %3593, %3589
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %70, align 1, !tbaa !2432
  %3596 = and i32 %3590, 255
  %3597 = tail call i32 @llvm.ctpop.i32(i32 %3596) #8
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3601 = lshr i32 %3590, 31
  %3602 = trunc i32 %3601 to i8
  store i8 %3602, i8* %87, align 1, !tbaa !2449
  store i8 %3595, i8* %93, align 1, !tbaa !2450
  %3603 = add i64 %7069, 1361
  store i64 %3603, i64* %PC, align 8
  %3604 = load i64, i64* %3581, align 8
  store i64 %3604, i64* %RCX, align 8, !tbaa !2428
  %3605 = add i64 %3604, 20
  %3606 = add i64 %7069, 1365
  store i64 %3606, i64* %PC, align 8
  %3607 = inttoptr i64 %3605 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = shl i64 %3589, 32
  %3610 = ashr exact i64 %3609, 32
  %3611 = sext i32 %3608 to i64
  %3612 = mul nsw i64 %3611, %3610
  %3613 = and i64 %3612, 4294967295
  store i64 %3613, i64* %RSI, align 8, !tbaa !2428
  %3614 = trunc i64 %3612 to i32
  %3615 = trunc i64 %3559 to i32
  %3616 = add i32 %3614, %3615
  %3617 = zext i32 %3616 to i64
  store i64 %3617, i64* %RDX, align 8, !tbaa !2428
  %3618 = icmp ult i32 %3616, %3615
  %3619 = icmp ult i32 %3616, %3614
  %3620 = or i1 %3618, %3619
  %3621 = zext i1 %3620 to i8
  store i8 %3621, i8* %70, align 1, !tbaa !2432
  %3622 = and i32 %3616, 255
  %3623 = tail call i32 @llvm.ctpop.i32(i32 %3622) #8
  %3624 = trunc i32 %3623 to i8
  %3625 = and i8 %3624, 1
  %3626 = xor i8 %3625, 1
  store i8 %3626, i8* %76, align 1, !tbaa !2446
  %3627 = xor i64 %3612, %3559
  %3628 = trunc i64 %3627 to i32
  %3629 = xor i32 %3628, %3616
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  store i8 %3632, i8* %81, align 1, !tbaa !2447
  %3633 = icmp eq i32 %3616, 0
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %84, align 1, !tbaa !2448
  %3635 = lshr i32 %3616, 31
  %3636 = trunc i32 %3635 to i8
  store i8 %3636, i8* %87, align 1, !tbaa !2449
  %3637 = lshr i32 %3615, 31
  %3638 = lshr i32 %3614, 31
  %3639 = xor i32 %3635, %3637
  %3640 = xor i32 %3635, %3638
  %3641 = add nuw nsw i32 %3639, %3640
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %93, align 1, !tbaa !2450
  %3644 = load i64, i64* %RBP, align 8
  %3645 = add i64 %3644, -56
  %3646 = add i64 %7069, 1370
  store i64 %3646, i64* %PC, align 8
  %3647 = inttoptr i64 %3645 to i32*
  %3648 = load i32, i32* %3647, align 4
  %3649 = zext i32 %3648 to i64
  store i64 %3649, i64* %RSI, align 8, !tbaa !2428
  %3650 = add i64 %3644, -24
  %3651 = add i64 %7069, 1374
  store i64 %3651, i64* %PC, align 8
  %3652 = inttoptr i64 %3650 to i64*
  %3653 = load i64, i64* %3652, align 8
  store i64 %3653, i64* %RCX, align 8, !tbaa !2428
  %3654 = add i64 %3653, 20
  %3655 = add i64 %7069, 1378
  store i64 %3655, i64* %PC, align 8
  %3656 = inttoptr i64 %3654 to i32*
  %3657 = load i32, i32* %3656, align 4
  %3658 = sext i32 %3648 to i64
  %3659 = sext i32 %3657 to i64
  %3660 = mul nsw i64 %3659, %3658
  %3661 = and i64 %3660, 4294967295
  store i64 %3661, i64* %RSI, align 8, !tbaa !2428
  %3662 = trunc i64 %3660 to i32
  %3663 = add i32 %3662, %3616
  %3664 = zext i32 %3663 to i64
  store i64 %3664, i64* %RDX, align 8, !tbaa !2428
  %3665 = icmp ult i32 %3663, %3616
  %3666 = icmp ult i32 %3663, %3662
  %3667 = or i1 %3665, %3666
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %70, align 1, !tbaa !2432
  %3669 = and i32 %3663, 255
  %3670 = tail call i32 @llvm.ctpop.i32(i32 %3669) #8
  %3671 = trunc i32 %3670 to i8
  %3672 = and i8 %3671, 1
  %3673 = xor i8 %3672, 1
  store i8 %3673, i8* %76, align 1, !tbaa !2446
  %3674 = xor i64 %3660, %3617
  %3675 = trunc i64 %3674 to i32
  %3676 = xor i32 %3675, %3663
  %3677 = lshr i32 %3676, 4
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  store i8 %3679, i8* %81, align 1, !tbaa !2447
  %3680 = icmp eq i32 %3663, 0
  %3681 = zext i1 %3680 to i8
  store i8 %3681, i8* %84, align 1, !tbaa !2448
  %3682 = lshr i32 %3663, 31
  %3683 = trunc i32 %3682 to i8
  store i8 %3683, i8* %87, align 1, !tbaa !2449
  %3684 = lshr i32 %3662, 31
  %3685 = xor i32 %3682, %3635
  %3686 = xor i32 %3682, %3684
  %3687 = add nuw nsw i32 %3685, %3686
  %3688 = icmp eq i32 %3687, 2
  %3689 = zext i1 %3688 to i8
  store i8 %3689, i8* %93, align 1, !tbaa !2450
  %3690 = add i64 %3644, -60
  %3691 = add i64 %7069, 1383
  store i64 %3691, i64* %PC, align 8
  %3692 = inttoptr i64 %3690 to i32*
  %3693 = load i32, i32* %3692, align 4
  %3694 = add i32 %3693, %3663
  %3695 = zext i32 %3694 to i64
  store i64 %3695, i64* %RDX, align 8, !tbaa !2428
  %3696 = icmp ult i32 %3694, %3663
  %3697 = icmp ult i32 %3694, %3693
  %3698 = or i1 %3696, %3697
  %3699 = zext i1 %3698 to i8
  store i8 %3699, i8* %70, align 1, !tbaa !2432
  %3700 = and i32 %3694, 255
  %3701 = tail call i32 @llvm.ctpop.i32(i32 %3700) #8
  %3702 = trunc i32 %3701 to i8
  %3703 = and i8 %3702, 1
  %3704 = xor i8 %3703, 1
  store i8 %3704, i8* %76, align 1, !tbaa !2446
  %3705 = xor i32 %3693, %3663
  %3706 = xor i32 %3705, %3694
  %3707 = lshr i32 %3706, 4
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  store i8 %3709, i8* %81, align 1, !tbaa !2447
  %3710 = icmp eq i32 %3694, 0
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %84, align 1, !tbaa !2448
  %3712 = lshr i32 %3694, 31
  %3713 = trunc i32 %3712 to i8
  store i8 %3713, i8* %87, align 1, !tbaa !2449
  %3714 = lshr i32 %3693, 31
  %3715 = xor i32 %3712, %3682
  %3716 = xor i32 %3712, %3714
  %3717 = add nuw nsw i32 %3715, %3716
  %3718 = icmp eq i32 %3717, 2
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %93, align 1, !tbaa !2450
  %3720 = sext i32 %3694 to i64
  store i64 %3720, i64* %RCX, align 8, !tbaa !2428
  %3721 = load i64, i64* %RAX, align 8
  %3722 = shl nsw i64 %3720, 2
  %3723 = add i64 %3722, %3721
  %3724 = add i64 %7069, 1391
  store i64 %3724, i64* %PC, align 8
  %3725 = inttoptr i64 %3723 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = bitcast %union.VectorReg* %5 to i32*
  store i32 %3726, i32* %3727, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %3728 = load i64, i64* %RBP, align 8
  %3729 = add i64 %3728, -40
  %3730 = add i64 %7069, 1395
  store i64 %3730, i64* %PC, align 8
  %3731 = inttoptr i64 %3729 to i64*
  %3732 = load i64, i64* %3731, align 8
  store i64 %3732, i64* %RAX, align 8, !tbaa !2428
  %3733 = add i64 %7069, 1398
  store i64 %3733, i64* %PC, align 8
  %3734 = inttoptr i64 %3732 to i64*
  %3735 = load i64, i64* %3734, align 8
  store i64 %3735, i64* %RAX, align 8, !tbaa !2428
  %3736 = add i64 %7069, 1402
  store i64 %3736, i64* %PC, align 8
  %3737 = load i64, i64* %3731, align 8
  store i64 %3737, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3738 = add i64 %7069, 1410
  store i64 %3738, i64* %PC, align 8
  %3739 = load i64, i64* %3731, align 8
  store i64 %3739, i64* %RCX, align 8, !tbaa !2428
  %3740 = add i64 %7069, 1414
  store i64 %3740, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3741 = add i64 %7069, 1418
  store i64 %3741, i64* %PC, align 8
  %3742 = load i64, i64* %3731, align 8
  store i64 %3742, i64* %RCX, align 8, !tbaa !2428
  %3743 = add i64 %7069, 1422
  store i64 %3743, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3744 = add i64 %3728, -52
  %3745 = add i64 %7069, 1425
  store i64 %3745, i64* %PC, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = add i32 %3747, 1
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %RSI, align 8, !tbaa !2428
  %3750 = icmp eq i32 %3747, -1
  %3751 = icmp eq i32 %3748, 0
  %3752 = or i1 %3750, %3751
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %70, align 1, !tbaa !2432
  %3754 = and i32 %3748, 255
  %3755 = tail call i32 @llvm.ctpop.i32(i32 %3754) #8
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  store i8 %3758, i8* %76, align 1, !tbaa !2446
  %3759 = xor i32 %3747, %3748
  %3760 = lshr i32 %3759, 4
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  store i8 %3762, i8* %81, align 1, !tbaa !2447
  %3763 = icmp eq i32 %3748, 0
  %3764 = zext i1 %3763 to i8
  store i8 %3764, i8* %84, align 1, !tbaa !2448
  %3765 = lshr i32 %3748, 31
  %3766 = trunc i32 %3765 to i8
  store i8 %3766, i8* %87, align 1, !tbaa !2449
  %3767 = lshr i32 %3747, 31
  %3768 = xor i32 %3765, %3767
  %3769 = add nuw nsw i32 %3768, %3765
  %3770 = icmp eq i32 %3769, 2
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %93, align 1, !tbaa !2450
  %3772 = load i64, i64* %RBP, align 8
  %3773 = add i64 %3772, -40
  %3774 = add i64 %7069, 1432
  store i64 %3774, i64* %PC, align 8
  %3775 = inttoptr i64 %3773 to i64*
  %3776 = load i64, i64* %3775, align 8
  store i64 %3776, i64* %RCX, align 8, !tbaa !2428
  %3777 = add i64 %3776, 16
  %3778 = add i64 %7069, 1436
  store i64 %3778, i64* %PC, align 8
  %3779 = inttoptr i64 %3777 to i32*
  %3780 = load i32, i32* %3779, align 4
  %3781 = sext i32 %3748 to i64
  %3782 = sext i32 %3780 to i64
  %3783 = mul nsw i64 %3782, %3781
  %3784 = trunc i64 %3783 to i32
  %3785 = and i64 %3783, 4294967295
  store i64 %3785, i64* %RSI, align 8, !tbaa !2428
  %3786 = shl i64 %3783, 32
  %3787 = ashr exact i64 %3786, 32
  %3788 = icmp ne i64 %3787, %3783
  %3789 = zext i1 %3788 to i8
  store i8 %3789, i8* %70, align 1, !tbaa !2432
  %3790 = and i32 %3784, 255
  %3791 = tail call i32 @llvm.ctpop.i32(i32 %3790) #8
  %3792 = trunc i32 %3791 to i8
  %3793 = and i8 %3792, 1
  %3794 = xor i8 %3793, 1
  store i8 %3794, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3795 = lshr i32 %3784, 31
  %3796 = trunc i32 %3795 to i8
  store i8 %3796, i8* %87, align 1, !tbaa !2449
  store i8 %3789, i8* %93, align 1, !tbaa !2450
  %3797 = add i64 %7069, 1440
  store i64 %3797, i64* %PC, align 8
  %3798 = load i64, i64* %3775, align 8
  store i64 %3798, i64* %RCX, align 8, !tbaa !2428
  %3799 = add i64 %3798, 20
  %3800 = add i64 %7069, 1444
  store i64 %3800, i64* %PC, align 8
  %3801 = inttoptr i64 %3799 to i32*
  %3802 = load i32, i32* %3801, align 4
  %3803 = shl i64 %3783, 32
  %3804 = ashr exact i64 %3803, 32
  %3805 = sext i32 %3802 to i64
  %3806 = mul nsw i64 %3805, %3804
  %3807 = and i64 %3806, 4294967295
  store i64 %3807, i64* %RSI, align 8, !tbaa !2428
  %3808 = load i64, i64* %RDX, align 8
  %3809 = trunc i64 %3806 to i32
  %3810 = trunc i64 %3808 to i32
  %3811 = add i32 %3809, %3810
  %3812 = zext i32 %3811 to i64
  store i64 %3812, i64* %RDX, align 8, !tbaa !2428
  %3813 = icmp ult i32 %3811, %3810
  %3814 = icmp ult i32 %3811, %3809
  %3815 = or i1 %3813, %3814
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %70, align 1, !tbaa !2432
  %3817 = and i32 %3811, 255
  %3818 = tail call i32 @llvm.ctpop.i32(i32 %3817) #8
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = xor i8 %3820, 1
  store i8 %3821, i8* %76, align 1, !tbaa !2446
  %3822 = xor i64 %3806, %3808
  %3823 = trunc i64 %3822 to i32
  %3824 = xor i32 %3823, %3811
  %3825 = lshr i32 %3824, 4
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  store i8 %3827, i8* %81, align 1, !tbaa !2447
  %3828 = icmp eq i32 %3811, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %84, align 1, !tbaa !2448
  %3830 = lshr i32 %3811, 31
  %3831 = trunc i32 %3830 to i8
  store i8 %3831, i8* %87, align 1, !tbaa !2449
  %3832 = lshr i32 %3810, 31
  %3833 = lshr i32 %3809, 31
  %3834 = xor i32 %3830, %3832
  %3835 = xor i32 %3830, %3833
  %3836 = add nuw nsw i32 %3834, %3835
  %3837 = icmp eq i32 %3836, 2
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %93, align 1, !tbaa !2450
  %3839 = load i64, i64* %RBP, align 8
  %3840 = add i64 %3839, -56
  %3841 = add i64 %7069, 1449
  store i64 %3841, i64* %PC, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RSI, align 8, !tbaa !2428
  %3845 = add i64 %3839, -40
  %3846 = add i64 %7069, 1453
  store i64 %3846, i64* %PC, align 8
  %3847 = inttoptr i64 %3845 to i64*
  %3848 = load i64, i64* %3847, align 8
  store i64 %3848, i64* %RCX, align 8, !tbaa !2428
  %3849 = add i64 %3848, 20
  %3850 = add i64 %7069, 1457
  store i64 %3850, i64* %PC, align 8
  %3851 = inttoptr i64 %3849 to i32*
  %3852 = load i32, i32* %3851, align 4
  %3853 = sext i32 %3843 to i64
  %3854 = sext i32 %3852 to i64
  %3855 = mul nsw i64 %3854, %3853
  %3856 = and i64 %3855, 4294967295
  store i64 %3856, i64* %RSI, align 8, !tbaa !2428
  %3857 = trunc i64 %3855 to i32
  %3858 = add i32 %3857, %3811
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RDX, align 8, !tbaa !2428
  %3860 = icmp ult i32 %3858, %3811
  %3861 = icmp ult i32 %3858, %3857
  %3862 = or i1 %3860, %3861
  %3863 = zext i1 %3862 to i8
  store i8 %3863, i8* %70, align 1, !tbaa !2432
  %3864 = and i32 %3858, 255
  %3865 = tail call i32 @llvm.ctpop.i32(i32 %3864) #8
  %3866 = trunc i32 %3865 to i8
  %3867 = and i8 %3866, 1
  %3868 = xor i8 %3867, 1
  store i8 %3868, i8* %76, align 1, !tbaa !2446
  %3869 = xor i64 %3855, %3812
  %3870 = trunc i64 %3869 to i32
  %3871 = xor i32 %3870, %3858
  %3872 = lshr i32 %3871, 4
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  store i8 %3874, i8* %81, align 1, !tbaa !2447
  %3875 = icmp eq i32 %3858, 0
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %84, align 1, !tbaa !2448
  %3877 = lshr i32 %3858, 31
  %3878 = trunc i32 %3877 to i8
  store i8 %3878, i8* %87, align 1, !tbaa !2449
  %3879 = lshr i32 %3857, 31
  %3880 = xor i32 %3877, %3830
  %3881 = xor i32 %3877, %3879
  %3882 = add nuw nsw i32 %3880, %3881
  %3883 = icmp eq i32 %3882, 2
  %3884 = zext i1 %3883 to i8
  store i8 %3884, i8* %93, align 1, !tbaa !2450
  %3885 = add i64 %3839, -60
  %3886 = add i64 %7069, 1462
  store i64 %3886, i64* %PC, align 8
  %3887 = inttoptr i64 %3885 to i32*
  %3888 = load i32, i32* %3887, align 4
  %3889 = add i32 %3888, 1
  %3890 = zext i32 %3889 to i64
  store i64 %3890, i64* %RSI, align 8, !tbaa !2428
  %3891 = lshr i32 %3889, 31
  %3892 = add i32 %3889, %3858
  %3893 = zext i32 %3892 to i64
  store i64 %3893, i64* %RDX, align 8, !tbaa !2428
  %3894 = icmp ult i32 %3892, %3858
  %3895 = icmp ult i32 %3892, %3889
  %3896 = or i1 %3894, %3895
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %70, align 1, !tbaa !2432
  %3898 = and i32 %3892, 255
  %3899 = tail call i32 @llvm.ctpop.i32(i32 %3898) #8
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  %3902 = xor i8 %3901, 1
  store i8 %3902, i8* %76, align 1, !tbaa !2446
  %3903 = xor i32 %3889, %3858
  %3904 = xor i32 %3903, %3892
  %3905 = lshr i32 %3904, 4
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  store i8 %3907, i8* %81, align 1, !tbaa !2447
  %3908 = icmp eq i32 %3892, 0
  %3909 = zext i1 %3908 to i8
  store i8 %3909, i8* %84, align 1, !tbaa !2448
  %3910 = lshr i32 %3892, 31
  %3911 = trunc i32 %3910 to i8
  store i8 %3911, i8* %87, align 1, !tbaa !2449
  %3912 = xor i32 %3910, %3877
  %3913 = xor i32 %3910, %3891
  %3914 = add nuw nsw i32 %3912, %3913
  %3915 = icmp eq i32 %3914, 2
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %93, align 1, !tbaa !2450
  %3917 = sext i32 %3892 to i64
  store i64 %3917, i64* %RCX, align 8, !tbaa !2428
  %3918 = load i64, i64* %RAX, align 8
  %3919 = shl nsw i64 %3917, 2
  %3920 = add i64 %3919, %3918
  %3921 = add i64 %7069, 1475
  store i64 %3921, i64* %PC, align 8
  %3922 = inttoptr i64 %3920 to i32*
  %3923 = load i32, i32* %3922, align 4
  %3924 = bitcast %union.VectorReg* %6 to i32*
  store i32 %3923, i32* %3924, align 1, !tbaa !2451
  store float 0.000000e+00, float* %217, align 1, !tbaa !2451
  store float 0.000000e+00, float* %219, align 1, !tbaa !2451
  store float 0.000000e+00, float* %221, align 1, !tbaa !2451
  %3925 = load i64, i64* %RBP, align 8
  %3926 = add i64 %3925, -40
  %3927 = add i64 %7069, 1479
  store i64 %3927, i64* %PC, align 8
  %3928 = inttoptr i64 %3926 to i64*
  %3929 = load i64, i64* %3928, align 8
  store i64 %3929, i64* %RAX, align 8, !tbaa !2428
  %3930 = add i64 %7069, 1482
  store i64 %3930, i64* %PC, align 8
  %3931 = inttoptr i64 %3929 to i64*
  %3932 = load i64, i64* %3931, align 8
  store i64 %3932, i64* %RAX, align 8, !tbaa !2428
  %3933 = add i64 %7069, 1486
  store i64 %3933, i64* %PC, align 8
  %3934 = load i64, i64* %3928, align 8
  store i64 %3934, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3935 = add i64 %7069, 1494
  store i64 %3935, i64* %PC, align 8
  %3936 = load i64, i64* %3928, align 8
  store i64 %3936, i64* %RCX, align 8, !tbaa !2428
  %3937 = add i64 %7069, 1498
  store i64 %3937, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3938 = add i64 %7069, 1502
  store i64 %3938, i64* %PC, align 8
  %3939 = load i64, i64* %3928, align 8
  store i64 %3939, i64* %RCX, align 8, !tbaa !2428
  %3940 = add i64 %7069, 1506
  store i64 %3940, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %3941 = add i64 %3925, -52
  %3942 = add i64 %7069, 1509
  store i64 %3942, i64* %PC, align 8
  %3943 = inttoptr i64 %3941 to i32*
  %3944 = load i32, i32* %3943, align 4
  %3945 = add i32 %3944, -1
  %3946 = zext i32 %3945 to i64
  store i64 %3946, i64* %RSI, align 8, !tbaa !2428
  %3947 = icmp eq i32 %3944, 0
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %70, align 1, !tbaa !2432
  %3949 = and i32 %3945, 255
  %3950 = tail call i32 @llvm.ctpop.i32(i32 %3949) #8
  %3951 = trunc i32 %3950 to i8
  %3952 = and i8 %3951, 1
  %3953 = xor i8 %3952, 1
  store i8 %3953, i8* %76, align 1, !tbaa !2446
  %3954 = xor i32 %3944, %3945
  %3955 = lshr i32 %3954, 4
  %3956 = trunc i32 %3955 to i8
  %3957 = and i8 %3956, 1
  store i8 %3957, i8* %81, align 1, !tbaa !2447
  %3958 = icmp eq i32 %3945, 0
  %3959 = zext i1 %3958 to i8
  store i8 %3959, i8* %84, align 1, !tbaa !2448
  %3960 = lshr i32 %3945, 31
  %3961 = trunc i32 %3960 to i8
  store i8 %3961, i8* %87, align 1, !tbaa !2449
  %3962 = lshr i32 %3944, 31
  %3963 = xor i32 %3960, %3962
  %3964 = add nuw nsw i32 %3963, %3962
  %3965 = icmp eq i32 %3964, 2
  %3966 = zext i1 %3965 to i8
  store i8 %3966, i8* %93, align 1, !tbaa !2450
  %3967 = add i64 %7069, 1516
  store i64 %3967, i64* %PC, align 8
  %3968 = load i64, i64* %3928, align 8
  store i64 %3968, i64* %RCX, align 8, !tbaa !2428
  %3969 = add i64 %3968, 16
  %3970 = add i64 %7069, 1520
  store i64 %3970, i64* %PC, align 8
  %3971 = inttoptr i64 %3969 to i32*
  %3972 = load i32, i32* %3971, align 4
  %3973 = sext i32 %3945 to i64
  %3974 = sext i32 %3972 to i64
  %3975 = mul nsw i64 %3974, %3973
  %3976 = trunc i64 %3975 to i32
  %3977 = and i64 %3975, 4294967295
  store i64 %3977, i64* %RSI, align 8, !tbaa !2428
  %3978 = shl i64 %3975, 32
  %3979 = ashr exact i64 %3978, 32
  %3980 = icmp ne i64 %3979, %3975
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %70, align 1, !tbaa !2432
  %3982 = and i32 %3976, 255
  %3983 = tail call i32 @llvm.ctpop.i32(i32 %3982) #8
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = xor i8 %3985, 1
  store i8 %3986, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %3987 = lshr i32 %3976, 31
  %3988 = trunc i32 %3987 to i8
  store i8 %3988, i8* %87, align 1, !tbaa !2449
  store i8 %3981, i8* %93, align 1, !tbaa !2450
  %3989 = load i64, i64* %RBP, align 8
  %3990 = add i64 %3989, -40
  %3991 = add i64 %7069, 1524
  store i64 %3991, i64* %PC, align 8
  %3992 = inttoptr i64 %3990 to i64*
  %3993 = load i64, i64* %3992, align 8
  store i64 %3993, i64* %RCX, align 8, !tbaa !2428
  %3994 = add i64 %3993, 20
  %3995 = add i64 %7069, 1528
  store i64 %3995, i64* %PC, align 8
  %3996 = inttoptr i64 %3994 to i32*
  %3997 = load i32, i32* %3996, align 4
  %3998 = shl i64 %3975, 32
  %3999 = ashr exact i64 %3998, 32
  %4000 = sext i32 %3997 to i64
  %4001 = mul nsw i64 %4000, %3999
  %4002 = and i64 %4001, 4294967295
  store i64 %4002, i64* %RSI, align 8, !tbaa !2428
  %4003 = load i64, i64* %RDX, align 8
  %4004 = trunc i64 %4001 to i32
  %4005 = trunc i64 %4003 to i32
  %4006 = add i32 %4004, %4005
  %4007 = zext i32 %4006 to i64
  store i64 %4007, i64* %RDX, align 8, !tbaa !2428
  %4008 = icmp ult i32 %4006, %4005
  %4009 = icmp ult i32 %4006, %4004
  %4010 = or i1 %4008, %4009
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %70, align 1, !tbaa !2432
  %4012 = and i32 %4006, 255
  %4013 = tail call i32 @llvm.ctpop.i32(i32 %4012) #8
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  %4016 = xor i8 %4015, 1
  store i8 %4016, i8* %76, align 1, !tbaa !2446
  %4017 = xor i64 %4001, %4003
  %4018 = trunc i64 %4017 to i32
  %4019 = xor i32 %4018, %4006
  %4020 = lshr i32 %4019, 4
  %4021 = trunc i32 %4020 to i8
  %4022 = and i8 %4021, 1
  store i8 %4022, i8* %81, align 1, !tbaa !2447
  %4023 = icmp eq i32 %4006, 0
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %84, align 1, !tbaa !2448
  %4025 = lshr i32 %4006, 31
  %4026 = trunc i32 %4025 to i8
  store i8 %4026, i8* %87, align 1, !tbaa !2449
  %4027 = lshr i32 %4005, 31
  %4028 = lshr i32 %4004, 31
  %4029 = xor i32 %4025, %4027
  %4030 = xor i32 %4025, %4028
  %4031 = add nuw nsw i32 %4029, %4030
  %4032 = icmp eq i32 %4031, 2
  %4033 = zext i1 %4032 to i8
  store i8 %4033, i8* %93, align 1, !tbaa !2450
  %4034 = add i64 %3989, -56
  %4035 = add i64 %7069, 1533
  store i64 %4035, i64* %PC, align 8
  %4036 = inttoptr i64 %4034 to i32*
  %4037 = load i32, i32* %4036, align 4
  %4038 = zext i32 %4037 to i64
  store i64 %4038, i64* %RSI, align 8, !tbaa !2428
  %4039 = add i64 %7069, 1537
  store i64 %4039, i64* %PC, align 8
  %4040 = load i64, i64* %3992, align 8
  store i64 %4040, i64* %RCX, align 8, !tbaa !2428
  %4041 = add i64 %4040, 20
  %4042 = add i64 %7069, 1541
  store i64 %4042, i64* %PC, align 8
  %4043 = inttoptr i64 %4041 to i32*
  %4044 = load i32, i32* %4043, align 4
  %4045 = sext i32 %4037 to i64
  %4046 = sext i32 %4044 to i64
  %4047 = mul nsw i64 %4046, %4045
  %4048 = and i64 %4047, 4294967295
  store i64 %4048, i64* %RSI, align 8, !tbaa !2428
  %4049 = trunc i64 %4047 to i32
  %4050 = add i32 %4049, %4006
  %4051 = zext i32 %4050 to i64
  store i64 %4051, i64* %RDX, align 8, !tbaa !2428
  %4052 = icmp ult i32 %4050, %4006
  %4053 = icmp ult i32 %4050, %4049
  %4054 = or i1 %4052, %4053
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %70, align 1, !tbaa !2432
  %4056 = and i32 %4050, 255
  %4057 = tail call i32 @llvm.ctpop.i32(i32 %4056) #8
  %4058 = trunc i32 %4057 to i8
  %4059 = and i8 %4058, 1
  %4060 = xor i8 %4059, 1
  store i8 %4060, i8* %76, align 1, !tbaa !2446
  %4061 = xor i64 %4047, %4007
  %4062 = trunc i64 %4061 to i32
  %4063 = xor i32 %4062, %4050
  %4064 = lshr i32 %4063, 4
  %4065 = trunc i32 %4064 to i8
  %4066 = and i8 %4065, 1
  store i8 %4066, i8* %81, align 1, !tbaa !2447
  %4067 = icmp eq i32 %4050, 0
  %4068 = zext i1 %4067 to i8
  store i8 %4068, i8* %84, align 1, !tbaa !2448
  %4069 = lshr i32 %4050, 31
  %4070 = trunc i32 %4069 to i8
  store i8 %4070, i8* %87, align 1, !tbaa !2449
  %4071 = lshr i32 %4049, 31
  %4072 = xor i32 %4069, %4025
  %4073 = xor i32 %4069, %4071
  %4074 = add nuw nsw i32 %4072, %4073
  %4075 = icmp eq i32 %4074, 2
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %93, align 1, !tbaa !2450
  %4077 = load i64, i64* %RBP, align 8
  %4078 = add i64 %4077, -60
  %4079 = add i64 %7069, 1546
  store i64 %4079, i64* %PC, align 8
  %4080 = inttoptr i64 %4078 to i32*
  %4081 = load i32, i32* %4080, align 4
  %4082 = add i32 %4081, 1
  %4083 = zext i32 %4082 to i64
  store i64 %4083, i64* %RSI, align 8, !tbaa !2428
  %4084 = lshr i32 %4082, 31
  %4085 = add i32 %4082, %4050
  %4086 = zext i32 %4085 to i64
  store i64 %4086, i64* %RDX, align 8, !tbaa !2428
  %4087 = icmp ult i32 %4085, %4050
  %4088 = icmp ult i32 %4085, %4082
  %4089 = or i1 %4087, %4088
  %4090 = zext i1 %4089 to i8
  store i8 %4090, i8* %70, align 1, !tbaa !2432
  %4091 = and i32 %4085, 255
  %4092 = tail call i32 @llvm.ctpop.i32(i32 %4091) #8
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = xor i8 %4094, 1
  store i8 %4095, i8* %76, align 1, !tbaa !2446
  %4096 = xor i32 %4082, %4050
  %4097 = xor i32 %4096, %4085
  %4098 = lshr i32 %4097, 4
  %4099 = trunc i32 %4098 to i8
  %4100 = and i8 %4099, 1
  store i8 %4100, i8* %81, align 1, !tbaa !2447
  %4101 = icmp eq i32 %4085, 0
  %4102 = zext i1 %4101 to i8
  store i8 %4102, i8* %84, align 1, !tbaa !2448
  %4103 = lshr i32 %4085, 31
  %4104 = trunc i32 %4103 to i8
  store i8 %4104, i8* %87, align 1, !tbaa !2449
  %4105 = xor i32 %4103, %4069
  %4106 = xor i32 %4103, %4084
  %4107 = add nuw nsw i32 %4105, %4106
  %4108 = icmp eq i32 %4107, 2
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %93, align 1, !tbaa !2450
  %4110 = sext i32 %4085 to i64
  store i64 %4110, i64* %RCX, align 8, !tbaa !2428
  %4111 = load i64, i64* %RAX, align 8
  %4112 = shl nsw i64 %4110, 2
  %4113 = add i64 %4112, %4111
  %4114 = add i64 %7069, 1559
  store i64 %4114, i64* %PC, align 8
  %4115 = load <2 x float>, <2 x float>* %222, align 1
  %4116 = load <2 x i32>, <2 x i32>* %223, align 1
  %4117 = inttoptr i64 %4113 to float*
  %4118 = load float, float* %4117, align 4
  %4119 = extractelement <2 x float> %4115, i32 0
  %4120 = fsub float %4119, %4118
  store float %4120, float* %215, align 1, !tbaa !2451
  %4121 = bitcast <2 x float> %4115 to <2 x i32>
  %4122 = extractelement <2 x i32> %4121, i32 1
  store i32 %4122, i32* %224, align 1, !tbaa !2451
  %4123 = extractelement <2 x i32> %4116, i32 0
  store i32 %4123, i32* %225, align 1, !tbaa !2451
  %4124 = extractelement <2 x i32> %4116, i32 1
  store i32 %4124, i32* %226, align 1, !tbaa !2451
  %4125 = load i64, i64* %RBP, align 8
  %4126 = add i64 %4125, -40
  %4127 = add i64 %7069, 1563
  store i64 %4127, i64* %PC, align 8
  %4128 = inttoptr i64 %4126 to i64*
  %4129 = load i64, i64* %4128, align 8
  store i64 %4129, i64* %RAX, align 8, !tbaa !2428
  %4130 = add i64 %7069, 1566
  store i64 %4130, i64* %PC, align 8
  %4131 = inttoptr i64 %4129 to i64*
  %4132 = load i64, i64* %4131, align 8
  store i64 %4132, i64* %RAX, align 8, !tbaa !2428
  %4133 = add i64 %7069, 1570
  store i64 %4133, i64* %PC, align 8
  %4134 = load i64, i64* %4128, align 8
  store i64 %4134, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4135 = add i64 %7069, 1578
  store i64 %4135, i64* %PC, align 8
  %4136 = load i64, i64* %4128, align 8
  store i64 %4136, i64* %RCX, align 8, !tbaa !2428
  %4137 = add i64 %7069, 1582
  store i64 %4137, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4138 = add i64 %7069, 1586
  store i64 %4138, i64* %PC, align 8
  %4139 = load i64, i64* %4128, align 8
  store i64 %4139, i64* %RCX, align 8, !tbaa !2428
  %4140 = add i64 %7069, 1590
  store i64 %4140, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4141 = add i64 %4125, -52
  %4142 = add i64 %7069, 1593
  store i64 %4142, i64* %PC, align 8
  %4143 = inttoptr i64 %4141 to i32*
  %4144 = load i32, i32* %4143, align 4
  %4145 = add i32 %4144, 1
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RSI, align 8, !tbaa !2428
  %4147 = icmp eq i32 %4144, -1
  %4148 = icmp eq i32 %4145, 0
  %4149 = or i1 %4147, %4148
  %4150 = zext i1 %4149 to i8
  store i8 %4150, i8* %70, align 1, !tbaa !2432
  %4151 = and i32 %4145, 255
  %4152 = tail call i32 @llvm.ctpop.i32(i32 %4151) #8
  %4153 = trunc i32 %4152 to i8
  %4154 = and i8 %4153, 1
  %4155 = xor i8 %4154, 1
  store i8 %4155, i8* %76, align 1, !tbaa !2446
  %4156 = xor i32 %4144, %4145
  %4157 = lshr i32 %4156, 4
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  store i8 %4159, i8* %81, align 1, !tbaa !2447
  %4160 = icmp eq i32 %4145, 0
  %4161 = zext i1 %4160 to i8
  store i8 %4161, i8* %84, align 1, !tbaa !2448
  %4162 = lshr i32 %4145, 31
  %4163 = trunc i32 %4162 to i8
  store i8 %4163, i8* %87, align 1, !tbaa !2449
  %4164 = lshr i32 %4144, 31
  %4165 = xor i32 %4162, %4164
  %4166 = add nuw nsw i32 %4165, %4162
  %4167 = icmp eq i32 %4166, 2
  %4168 = zext i1 %4167 to i8
  store i8 %4168, i8* %93, align 1, !tbaa !2450
  %4169 = load i64, i64* %RBP, align 8
  %4170 = add i64 %4169, -40
  %4171 = add i64 %7069, 1600
  store i64 %4171, i64* %PC, align 8
  %4172 = inttoptr i64 %4170 to i64*
  %4173 = load i64, i64* %4172, align 8
  store i64 %4173, i64* %RCX, align 8, !tbaa !2428
  %4174 = add i64 %4173, 16
  %4175 = add i64 %7069, 1604
  store i64 %4175, i64* %PC, align 8
  %4176 = inttoptr i64 %4174 to i32*
  %4177 = load i32, i32* %4176, align 4
  %4178 = sext i32 %4145 to i64
  %4179 = sext i32 %4177 to i64
  %4180 = mul nsw i64 %4179, %4178
  %4181 = trunc i64 %4180 to i32
  %4182 = and i64 %4180, 4294967295
  store i64 %4182, i64* %RSI, align 8, !tbaa !2428
  %4183 = shl i64 %4180, 32
  %4184 = ashr exact i64 %4183, 32
  %4185 = icmp ne i64 %4184, %4180
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %70, align 1, !tbaa !2432
  %4187 = and i32 %4181, 255
  %4188 = tail call i32 @llvm.ctpop.i32(i32 %4187) #8
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  store i8 %4191, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4192 = lshr i32 %4181, 31
  %4193 = trunc i32 %4192 to i8
  store i8 %4193, i8* %87, align 1, !tbaa !2449
  store i8 %4186, i8* %93, align 1, !tbaa !2450
  %4194 = add i64 %7069, 1608
  store i64 %4194, i64* %PC, align 8
  %4195 = load i64, i64* %4172, align 8
  store i64 %4195, i64* %RCX, align 8, !tbaa !2428
  %4196 = add i64 %4195, 20
  %4197 = add i64 %7069, 1612
  store i64 %4197, i64* %PC, align 8
  %4198 = inttoptr i64 %4196 to i32*
  %4199 = load i32, i32* %4198, align 4
  %4200 = shl i64 %4180, 32
  %4201 = ashr exact i64 %4200, 32
  %4202 = sext i32 %4199 to i64
  %4203 = mul nsw i64 %4202, %4201
  %4204 = and i64 %4203, 4294967295
  store i64 %4204, i64* %RSI, align 8, !tbaa !2428
  %4205 = load i64, i64* %RDX, align 8
  %4206 = trunc i64 %4203 to i32
  %4207 = trunc i64 %4205 to i32
  %4208 = add i32 %4206, %4207
  %4209 = zext i32 %4208 to i64
  store i64 %4209, i64* %RDX, align 8, !tbaa !2428
  %4210 = icmp ult i32 %4208, %4207
  %4211 = icmp ult i32 %4208, %4206
  %4212 = or i1 %4210, %4211
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %70, align 1, !tbaa !2432
  %4214 = and i32 %4208, 255
  %4215 = tail call i32 @llvm.ctpop.i32(i32 %4214) #8
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = xor i8 %4217, 1
  store i8 %4218, i8* %76, align 1, !tbaa !2446
  %4219 = xor i64 %4203, %4205
  %4220 = trunc i64 %4219 to i32
  %4221 = xor i32 %4220, %4208
  %4222 = lshr i32 %4221, 4
  %4223 = trunc i32 %4222 to i8
  %4224 = and i8 %4223, 1
  store i8 %4224, i8* %81, align 1, !tbaa !2447
  %4225 = icmp eq i32 %4208, 0
  %4226 = zext i1 %4225 to i8
  store i8 %4226, i8* %84, align 1, !tbaa !2448
  %4227 = lshr i32 %4208, 31
  %4228 = trunc i32 %4227 to i8
  store i8 %4228, i8* %87, align 1, !tbaa !2449
  %4229 = lshr i32 %4207, 31
  %4230 = lshr i32 %4206, 31
  %4231 = xor i32 %4227, %4229
  %4232 = xor i32 %4227, %4230
  %4233 = add nuw nsw i32 %4231, %4232
  %4234 = icmp eq i32 %4233, 2
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %93, align 1, !tbaa !2450
  %4236 = load i64, i64* %RBP, align 8
  %4237 = add i64 %4236, -56
  %4238 = add i64 %7069, 1617
  store i64 %4238, i64* %PC, align 8
  %4239 = inttoptr i64 %4237 to i32*
  %4240 = load i32, i32* %4239, align 4
  %4241 = zext i32 %4240 to i64
  store i64 %4241, i64* %RSI, align 8, !tbaa !2428
  %4242 = add i64 %4236, -40
  %4243 = add i64 %7069, 1621
  store i64 %4243, i64* %PC, align 8
  %4244 = inttoptr i64 %4242 to i64*
  %4245 = load i64, i64* %4244, align 8
  store i64 %4245, i64* %RCX, align 8, !tbaa !2428
  %4246 = add i64 %4245, 20
  %4247 = add i64 %7069, 1625
  store i64 %4247, i64* %PC, align 8
  %4248 = inttoptr i64 %4246 to i32*
  %4249 = load i32, i32* %4248, align 4
  %4250 = sext i32 %4240 to i64
  %4251 = sext i32 %4249 to i64
  %4252 = mul nsw i64 %4251, %4250
  %4253 = and i64 %4252, 4294967295
  store i64 %4253, i64* %RSI, align 8, !tbaa !2428
  %4254 = trunc i64 %4252 to i32
  %4255 = add i32 %4254, %4208
  %4256 = zext i32 %4255 to i64
  store i64 %4256, i64* %RDX, align 8, !tbaa !2428
  %4257 = icmp ult i32 %4255, %4208
  %4258 = icmp ult i32 %4255, %4254
  %4259 = or i1 %4257, %4258
  %4260 = zext i1 %4259 to i8
  store i8 %4260, i8* %70, align 1, !tbaa !2432
  %4261 = and i32 %4255, 255
  %4262 = tail call i32 @llvm.ctpop.i32(i32 %4261) #8
  %4263 = trunc i32 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = xor i8 %4264, 1
  store i8 %4265, i8* %76, align 1, !tbaa !2446
  %4266 = xor i64 %4252, %4209
  %4267 = trunc i64 %4266 to i32
  %4268 = xor i32 %4267, %4255
  %4269 = lshr i32 %4268, 4
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  store i8 %4271, i8* %81, align 1, !tbaa !2447
  %4272 = icmp eq i32 %4255, 0
  %4273 = zext i1 %4272 to i8
  store i8 %4273, i8* %84, align 1, !tbaa !2448
  %4274 = lshr i32 %4255, 31
  %4275 = trunc i32 %4274 to i8
  store i8 %4275, i8* %87, align 1, !tbaa !2449
  %4276 = lshr i32 %4254, 31
  %4277 = xor i32 %4274, %4227
  %4278 = xor i32 %4274, %4276
  %4279 = add nuw nsw i32 %4277, %4278
  %4280 = icmp eq i32 %4279, 2
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %93, align 1, !tbaa !2450
  %4282 = add i64 %4236, -60
  %4283 = add i64 %7069, 1630
  store i64 %4283, i64* %PC, align 8
  %4284 = inttoptr i64 %4282 to i32*
  %4285 = load i32, i32* %4284, align 4
  %4286 = add i32 %4285, -1
  %4287 = zext i32 %4286 to i64
  store i64 %4287, i64* %RSI, align 8, !tbaa !2428
  %4288 = lshr i32 %4286, 31
  %4289 = add i32 %4286, %4255
  %4290 = zext i32 %4289 to i64
  store i64 %4290, i64* %RDX, align 8, !tbaa !2428
  %4291 = icmp ult i32 %4289, %4255
  %4292 = icmp ult i32 %4289, %4286
  %4293 = or i1 %4291, %4292
  %4294 = zext i1 %4293 to i8
  store i8 %4294, i8* %70, align 1, !tbaa !2432
  %4295 = and i32 %4289, 255
  %4296 = tail call i32 @llvm.ctpop.i32(i32 %4295) #8
  %4297 = trunc i32 %4296 to i8
  %4298 = and i8 %4297, 1
  %4299 = xor i8 %4298, 1
  store i8 %4299, i8* %76, align 1, !tbaa !2446
  %4300 = xor i32 %4286, %4255
  %4301 = xor i32 %4300, %4289
  %4302 = lshr i32 %4301, 4
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  store i8 %4304, i8* %81, align 1, !tbaa !2447
  %4305 = icmp eq i32 %4289, 0
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %84, align 1, !tbaa !2448
  %4307 = lshr i32 %4289, 31
  %4308 = trunc i32 %4307 to i8
  store i8 %4308, i8* %87, align 1, !tbaa !2449
  %4309 = xor i32 %4307, %4274
  %4310 = xor i32 %4307, %4288
  %4311 = add nuw nsw i32 %4309, %4310
  %4312 = icmp eq i32 %4311, 2
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %93, align 1, !tbaa !2450
  %4314 = sext i32 %4289 to i64
  store i64 %4314, i64* %RCX, align 8, !tbaa !2428
  %4315 = load i64, i64* %RAX, align 8
  %4316 = shl nsw i64 %4314, 2
  %4317 = add i64 %4316, %4315
  %4318 = add i64 %7069, 1643
  store i64 %4318, i64* %PC, align 8
  %4319 = load <2 x float>, <2 x float>* %222, align 1
  %4320 = load <2 x i32>, <2 x i32>* %223, align 1
  %4321 = inttoptr i64 %4317 to float*
  %4322 = load float, float* %4321, align 4
  %4323 = extractelement <2 x float> %4319, i32 0
  %4324 = fsub float %4323, %4322
  store float %4324, float* %215, align 1, !tbaa !2451
  %4325 = bitcast <2 x float> %4319 to <2 x i32>
  %4326 = extractelement <2 x i32> %4325, i32 1
  store i32 %4326, i32* %224, align 1, !tbaa !2451
  %4327 = extractelement <2 x i32> %4320, i32 0
  store i32 %4327, i32* %225, align 1, !tbaa !2451
  %4328 = extractelement <2 x i32> %4320, i32 1
  store i32 %4328, i32* %226, align 1, !tbaa !2451
  %4329 = load i64, i64* %RBP, align 8
  %4330 = add i64 %4329, -40
  %4331 = add i64 %7069, 1647
  store i64 %4331, i64* %PC, align 8
  %4332 = inttoptr i64 %4330 to i64*
  %4333 = load i64, i64* %4332, align 8
  store i64 %4333, i64* %RAX, align 8, !tbaa !2428
  %4334 = add i64 %7069, 1650
  store i64 %4334, i64* %PC, align 8
  %4335 = inttoptr i64 %4333 to i64*
  %4336 = load i64, i64* %4335, align 8
  store i64 %4336, i64* %RAX, align 8, !tbaa !2428
  %4337 = add i64 %7069, 1654
  store i64 %4337, i64* %PC, align 8
  %4338 = load i64, i64* %4332, align 8
  store i64 %4338, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4339 = add i64 %7069, 1662
  store i64 %4339, i64* %PC, align 8
  %4340 = load i64, i64* %4332, align 8
  store i64 %4340, i64* %RCX, align 8, !tbaa !2428
  %4341 = add i64 %7069, 1666
  store i64 %4341, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4342 = add i64 %7069, 1670
  store i64 %4342, i64* %PC, align 8
  %4343 = load i64, i64* %4332, align 8
  store i64 %4343, i64* %RCX, align 8, !tbaa !2428
  %4344 = add i64 %7069, 1674
  store i64 %4344, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4345 = add i64 %4329, -52
  %4346 = add i64 %7069, 1677
  store i64 %4346, i64* %PC, align 8
  %4347 = inttoptr i64 %4345 to i32*
  %4348 = load i32, i32* %4347, align 4
  %4349 = add i32 %4348, -1
  %4350 = zext i32 %4349 to i64
  store i64 %4350, i64* %RSI, align 8, !tbaa !2428
  %4351 = icmp eq i32 %4348, 0
  %4352 = zext i1 %4351 to i8
  store i8 %4352, i8* %70, align 1, !tbaa !2432
  %4353 = and i32 %4349, 255
  %4354 = tail call i32 @llvm.ctpop.i32(i32 %4353) #8
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = xor i8 %4356, 1
  store i8 %4357, i8* %76, align 1, !tbaa !2446
  %4358 = xor i32 %4348, %4349
  %4359 = lshr i32 %4358, 4
  %4360 = trunc i32 %4359 to i8
  %4361 = and i8 %4360, 1
  store i8 %4361, i8* %81, align 1, !tbaa !2447
  %4362 = icmp eq i32 %4349, 0
  %4363 = zext i1 %4362 to i8
  store i8 %4363, i8* %84, align 1, !tbaa !2448
  %4364 = lshr i32 %4349, 31
  %4365 = trunc i32 %4364 to i8
  store i8 %4365, i8* %87, align 1, !tbaa !2449
  %4366 = lshr i32 %4348, 31
  %4367 = xor i32 %4364, %4366
  %4368 = add nuw nsw i32 %4367, %4366
  %4369 = icmp eq i32 %4368, 2
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %93, align 1, !tbaa !2450
  %4371 = add i64 %7069, 1684
  store i64 %4371, i64* %PC, align 8
  %4372 = load i64, i64* %4332, align 8
  store i64 %4372, i64* %RCX, align 8, !tbaa !2428
  %4373 = add i64 %4372, 16
  %4374 = add i64 %7069, 1688
  store i64 %4374, i64* %PC, align 8
  %4375 = inttoptr i64 %4373 to i32*
  %4376 = load i32, i32* %4375, align 4
  %4377 = sext i32 %4349 to i64
  %4378 = sext i32 %4376 to i64
  %4379 = mul nsw i64 %4378, %4377
  %4380 = trunc i64 %4379 to i32
  %4381 = and i64 %4379, 4294967295
  store i64 %4381, i64* %RSI, align 8, !tbaa !2428
  %4382 = shl i64 %4379, 32
  %4383 = ashr exact i64 %4382, 32
  %4384 = icmp ne i64 %4383, %4379
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %70, align 1, !tbaa !2432
  %4386 = and i32 %4380, 255
  %4387 = tail call i32 @llvm.ctpop.i32(i32 %4386) #8
  %4388 = trunc i32 %4387 to i8
  %4389 = and i8 %4388, 1
  %4390 = xor i8 %4389, 1
  store i8 %4390, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4391 = lshr i32 %4380, 31
  %4392 = trunc i32 %4391 to i8
  store i8 %4392, i8* %87, align 1, !tbaa !2449
  store i8 %4385, i8* %93, align 1, !tbaa !2450
  %4393 = load i64, i64* %RBP, align 8
  %4394 = add i64 %4393, -40
  %4395 = add i64 %7069, 1692
  store i64 %4395, i64* %PC, align 8
  %4396 = inttoptr i64 %4394 to i64*
  %4397 = load i64, i64* %4396, align 8
  store i64 %4397, i64* %RCX, align 8, !tbaa !2428
  %4398 = add i64 %4397, 20
  %4399 = add i64 %7069, 1696
  store i64 %4399, i64* %PC, align 8
  %4400 = inttoptr i64 %4398 to i32*
  %4401 = load i32, i32* %4400, align 4
  %4402 = shl i64 %4379, 32
  %4403 = ashr exact i64 %4402, 32
  %4404 = sext i32 %4401 to i64
  %4405 = mul nsw i64 %4404, %4403
  %4406 = and i64 %4405, 4294967295
  store i64 %4406, i64* %RSI, align 8, !tbaa !2428
  %4407 = load i64, i64* %RDX, align 8
  %4408 = trunc i64 %4405 to i32
  %4409 = trunc i64 %4407 to i32
  %4410 = add i32 %4408, %4409
  %4411 = zext i32 %4410 to i64
  store i64 %4411, i64* %RDX, align 8, !tbaa !2428
  %4412 = icmp ult i32 %4410, %4409
  %4413 = icmp ult i32 %4410, %4408
  %4414 = or i1 %4412, %4413
  %4415 = zext i1 %4414 to i8
  store i8 %4415, i8* %70, align 1, !tbaa !2432
  %4416 = and i32 %4410, 255
  %4417 = tail call i32 @llvm.ctpop.i32(i32 %4416) #8
  %4418 = trunc i32 %4417 to i8
  %4419 = and i8 %4418, 1
  %4420 = xor i8 %4419, 1
  store i8 %4420, i8* %76, align 1, !tbaa !2446
  %4421 = xor i64 %4405, %4407
  %4422 = trunc i64 %4421 to i32
  %4423 = xor i32 %4422, %4410
  %4424 = lshr i32 %4423, 4
  %4425 = trunc i32 %4424 to i8
  %4426 = and i8 %4425, 1
  store i8 %4426, i8* %81, align 1, !tbaa !2447
  %4427 = icmp eq i32 %4410, 0
  %4428 = zext i1 %4427 to i8
  store i8 %4428, i8* %84, align 1, !tbaa !2448
  %4429 = lshr i32 %4410, 31
  %4430 = trunc i32 %4429 to i8
  store i8 %4430, i8* %87, align 1, !tbaa !2449
  %4431 = lshr i32 %4409, 31
  %4432 = lshr i32 %4408, 31
  %4433 = xor i32 %4429, %4431
  %4434 = xor i32 %4429, %4432
  %4435 = add nuw nsw i32 %4433, %4434
  %4436 = icmp eq i32 %4435, 2
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %93, align 1, !tbaa !2450
  %4438 = add i64 %4393, -56
  %4439 = add i64 %7069, 1701
  store i64 %4439, i64* %PC, align 8
  %4440 = inttoptr i64 %4438 to i32*
  %4441 = load i32, i32* %4440, align 4
  %4442 = zext i32 %4441 to i64
  store i64 %4442, i64* %RSI, align 8, !tbaa !2428
  %4443 = add i64 %7069, 1705
  store i64 %4443, i64* %PC, align 8
  %4444 = load i64, i64* %4396, align 8
  store i64 %4444, i64* %RCX, align 8, !tbaa !2428
  %4445 = add i64 %4444, 20
  %4446 = add i64 %7069, 1709
  store i64 %4446, i64* %PC, align 8
  %4447 = inttoptr i64 %4445 to i32*
  %4448 = load i32, i32* %4447, align 4
  %4449 = sext i32 %4441 to i64
  %4450 = sext i32 %4448 to i64
  %4451 = mul nsw i64 %4450, %4449
  %4452 = and i64 %4451, 4294967295
  store i64 %4452, i64* %RSI, align 8, !tbaa !2428
  %4453 = trunc i64 %4451 to i32
  %4454 = add i32 %4453, %4410
  %4455 = zext i32 %4454 to i64
  store i64 %4455, i64* %RDX, align 8, !tbaa !2428
  %4456 = icmp ult i32 %4454, %4410
  %4457 = icmp ult i32 %4454, %4453
  %4458 = or i1 %4456, %4457
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %70, align 1, !tbaa !2432
  %4460 = and i32 %4454, 255
  %4461 = tail call i32 @llvm.ctpop.i32(i32 %4460) #8
  %4462 = trunc i32 %4461 to i8
  %4463 = and i8 %4462, 1
  %4464 = xor i8 %4463, 1
  store i8 %4464, i8* %76, align 1, !tbaa !2446
  %4465 = xor i64 %4451, %4411
  %4466 = trunc i64 %4465 to i32
  %4467 = xor i32 %4466, %4454
  %4468 = lshr i32 %4467, 4
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  store i8 %4470, i8* %81, align 1, !tbaa !2447
  %4471 = icmp eq i32 %4454, 0
  %4472 = zext i1 %4471 to i8
  store i8 %4472, i8* %84, align 1, !tbaa !2448
  %4473 = lshr i32 %4454, 31
  %4474 = trunc i32 %4473 to i8
  store i8 %4474, i8* %87, align 1, !tbaa !2449
  %4475 = lshr i32 %4453, 31
  %4476 = xor i32 %4473, %4429
  %4477 = xor i32 %4473, %4475
  %4478 = add nuw nsw i32 %4476, %4477
  %4479 = icmp eq i32 %4478, 2
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %93, align 1, !tbaa !2450
  %4481 = load i64, i64* %RBP, align 8
  %4482 = add i64 %4481, -60
  %4483 = add i64 %7069, 1714
  store i64 %4483, i64* %PC, align 8
  %4484 = inttoptr i64 %4482 to i32*
  %4485 = load i32, i32* %4484, align 4
  %4486 = add i32 %4485, -1
  %4487 = zext i32 %4486 to i64
  store i64 %4487, i64* %RSI, align 8, !tbaa !2428
  %4488 = lshr i32 %4486, 31
  %4489 = add i32 %4486, %4454
  %4490 = zext i32 %4489 to i64
  store i64 %4490, i64* %RDX, align 8, !tbaa !2428
  %4491 = icmp ult i32 %4489, %4454
  %4492 = icmp ult i32 %4489, %4486
  %4493 = or i1 %4491, %4492
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %70, align 1, !tbaa !2432
  %4495 = and i32 %4489, 255
  %4496 = tail call i32 @llvm.ctpop.i32(i32 %4495) #8
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  %4499 = xor i8 %4498, 1
  store i8 %4499, i8* %76, align 1, !tbaa !2446
  %4500 = xor i32 %4486, %4454
  %4501 = xor i32 %4500, %4489
  %4502 = lshr i32 %4501, 4
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  store i8 %4504, i8* %81, align 1, !tbaa !2447
  %4505 = icmp eq i32 %4489, 0
  %4506 = zext i1 %4505 to i8
  store i8 %4506, i8* %84, align 1, !tbaa !2448
  %4507 = lshr i32 %4489, 31
  %4508 = trunc i32 %4507 to i8
  store i8 %4508, i8* %87, align 1, !tbaa !2449
  %4509 = xor i32 %4507, %4473
  %4510 = xor i32 %4507, %4488
  %4511 = add nuw nsw i32 %4509, %4510
  %4512 = icmp eq i32 %4511, 2
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %93, align 1, !tbaa !2450
  %4514 = sext i32 %4489 to i64
  store i64 %4514, i64* %RCX, align 8, !tbaa !2428
  %4515 = load i64, i64* %RAX, align 8
  %4516 = shl nsw i64 %4514, 2
  %4517 = add i64 %4516, %4515
  %4518 = add i64 %7069, 1727
  store i64 %4518, i64* %PC, align 8
  %4519 = load <2 x float>, <2 x float>* %222, align 1
  %4520 = load <2 x i32>, <2 x i32>* %223, align 1
  %4521 = inttoptr i64 %4517 to float*
  %4522 = load float, float* %4521, align 4
  %4523 = extractelement <2 x float> %4519, i32 0
  %4524 = fadd float %4523, %4522
  store float %4524, float* %215, align 1, !tbaa !2451
  %4525 = bitcast <2 x float> %4519 to <2 x i32>
  %4526 = extractelement <2 x i32> %4525, i32 1
  store i32 %4526, i32* %224, align 1, !tbaa !2451
  %4527 = extractelement <2 x i32> %4520, i32 0
  store i32 %4527, i32* %225, align 1, !tbaa !2451
  %4528 = extractelement <2 x i32> %4520, i32 1
  store i32 %4528, i32* %226, align 1, !tbaa !2451
  %4529 = load <2 x float>, <2 x float>* %208, align 1
  %4530 = load <2 x i32>, <2 x i32>* %209, align 1
  %4531 = load <2 x float>, <2 x float>* %227, align 1
  %4532 = extractelement <2 x float> %4529, i32 0
  %4533 = extractelement <2 x float> %4531, i32 0
  %4534 = fmul float %4532, %4533
  store float %4534, float* %201, align 1, !tbaa !2451
  %4535 = bitcast <2 x float> %4529 to <2 x i32>
  %4536 = extractelement <2 x i32> %4535, i32 1
  store i32 %4536, i32* %210, align 1, !tbaa !2451
  %4537 = extractelement <2 x i32> %4530, i32 0
  store i32 %4537, i32* %211, align 1, !tbaa !2451
  %4538 = extractelement <2 x i32> %4530, i32 1
  store i32 %4538, i32* %212, align 1, !tbaa !2451
  %4539 = load <2 x float>, <2 x float>* %198, align 1
  %4540 = load <2 x i32>, <2 x i32>* %199, align 1
  %4541 = load <2 x float>, <2 x float>* %213, align 1
  %4542 = extractelement <2 x float> %4539, i32 0
  %4543 = extractelement <2 x float> %4541, i32 0
  %4544 = fadd float %4542, %4543
  store float %4544, float* %194, align 1, !tbaa !2451
  %4545 = bitcast <2 x float> %4539 to <2 x i32>
  %4546 = extractelement <2 x i32> %4545, i32 1
  store i32 %4546, i32* %189, align 1, !tbaa !2451
  %4547 = extractelement <2 x i32> %4540, i32 0
  store i32 %4547, i32* %190, align 1, !tbaa !2451
  %4548 = extractelement <2 x i32> %4540, i32 1
  store i32 %4548, i32* %192, align 1, !tbaa !2451
  %4549 = load i64, i64* %RBP, align 8
  %4550 = add i64 %4549, -32
  %4551 = add i64 %7069, 1739
  store i64 %4551, i64* %PC, align 8
  %4552 = inttoptr i64 %4550 to i64*
  %4553 = load i64, i64* %4552, align 8
  store i64 %4553, i64* %RAX, align 8, !tbaa !2428
  %4554 = add i64 %7069, 1742
  store i64 %4554, i64* %PC, align 8
  %4555 = inttoptr i64 %4553 to i64*
  %4556 = load i64, i64* %4555, align 8
  store i64 %4556, i64* %RAX, align 8, !tbaa !2428
  %4557 = add i64 %7069, 1746
  store i64 %4557, i64* %PC, align 8
  %4558 = load i64, i64* %4552, align 8
  store i64 %4558, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4559 = add i64 %7069, 1754
  store i64 %4559, i64* %PC, align 8
  %4560 = load i64, i64* %4552, align 8
  store i64 %4560, i64* %RCX, align 8, !tbaa !2428
  %4561 = add i64 %7069, 1758
  store i64 %4561, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4562 = add i64 %7069, 1762
  store i64 %4562, i64* %PC, align 8
  %4563 = load i64, i64* %4552, align 8
  store i64 %4563, i64* %RCX, align 8, !tbaa !2428
  %4564 = add i64 %7069, 1766
  store i64 %4564, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4565 = add i64 %4549, -52
  %4566 = add i64 %7069, 1769
  store i64 %4566, i64* %PC, align 8
  %4567 = inttoptr i64 %4565 to i32*
  %4568 = load i32, i32* %4567, align 4
  %4569 = zext i32 %4568 to i64
  store i64 %4569, i64* %RSI, align 8, !tbaa !2428
  %4570 = add i64 %7069, 1773
  store i64 %4570, i64* %PC, align 8
  %4571 = load i64, i64* %4552, align 8
  store i64 %4571, i64* %RCX, align 8, !tbaa !2428
  %4572 = add i64 %4571, 16
  %4573 = add i64 %7069, 1777
  store i64 %4573, i64* %PC, align 8
  %4574 = inttoptr i64 %4572 to i32*
  %4575 = load i32, i32* %4574, align 4
  %4576 = sext i32 %4568 to i64
  %4577 = sext i32 %4575 to i64
  %4578 = mul nsw i64 %4577, %4576
  %4579 = trunc i64 %4578 to i32
  %4580 = and i64 %4578, 4294967295
  store i64 %4580, i64* %RSI, align 8, !tbaa !2428
  %4581 = shl i64 %4578, 32
  %4582 = ashr exact i64 %4581, 32
  %4583 = icmp ne i64 %4582, %4578
  %4584 = zext i1 %4583 to i8
  store i8 %4584, i8* %70, align 1, !tbaa !2432
  %4585 = and i32 %4579, 255
  %4586 = tail call i32 @llvm.ctpop.i32(i32 %4585) #8
  %4587 = trunc i32 %4586 to i8
  %4588 = and i8 %4587, 1
  %4589 = xor i8 %4588, 1
  store i8 %4589, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4590 = lshr i32 %4579, 31
  %4591 = trunc i32 %4590 to i8
  store i8 %4591, i8* %87, align 1, !tbaa !2449
  store i8 %4584, i8* %93, align 1, !tbaa !2450
  %4592 = add i64 %7069, 1781
  store i64 %4592, i64* %PC, align 8
  %4593 = load i64, i64* %4552, align 8
  store i64 %4593, i64* %RCX, align 8, !tbaa !2428
  %4594 = add i64 %4593, 20
  %4595 = add i64 %7069, 1785
  store i64 %4595, i64* %PC, align 8
  %4596 = inttoptr i64 %4594 to i32*
  %4597 = load i32, i32* %4596, align 4
  %4598 = shl i64 %4578, 32
  %4599 = ashr exact i64 %4598, 32
  %4600 = sext i32 %4597 to i64
  %4601 = mul nsw i64 %4600, %4599
  %4602 = and i64 %4601, 4294967295
  store i64 %4602, i64* %RSI, align 8, !tbaa !2428
  %4603 = trunc i64 %4601 to i32
  %4604 = and i64 %4601, 4294967295
  store i64 %4604, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %4605 = and i32 %4603, 255
  %4606 = tail call i32 @llvm.ctpop.i32(i32 %4605) #8
  %4607 = trunc i32 %4606 to i8
  %4608 = and i8 %4607, 1
  %4609 = xor i8 %4608, 1
  store i8 %4609, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %4610 = icmp eq i32 %4603, 0
  %4611 = zext i1 %4610 to i8
  store i8 %4611, i8* %84, align 1, !tbaa !2448
  %4612 = lshr i32 %4603, 31
  %4613 = trunc i32 %4612 to i8
  store i8 %4613, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4614 = load i64, i64* %RBP, align 8
  %4615 = add i64 %4614, -56
  %4616 = add i64 %7069, 1790
  store i64 %4616, i64* %PC, align 8
  %4617 = inttoptr i64 %4615 to i32*
  %4618 = load i32, i32* %4617, align 4
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %RSI, align 8, !tbaa !2428
  %4620 = add i64 %4614, -32
  %4621 = add i64 %7069, 1794
  store i64 %4621, i64* %PC, align 8
  %4622 = inttoptr i64 %4620 to i64*
  %4623 = load i64, i64* %4622, align 8
  store i64 %4623, i64* %RCX, align 8, !tbaa !2428
  %4624 = add i64 %4623, 20
  %4625 = add i64 %7069, 1798
  store i64 %4625, i64* %PC, align 8
  %4626 = inttoptr i64 %4624 to i32*
  %4627 = load i32, i32* %4626, align 4
  %4628 = sext i32 %4618 to i64
  %4629 = sext i32 %4627 to i64
  %4630 = mul nsw i64 %4629, %4628
  %4631 = and i64 %4630, 4294967295
  store i64 %4631, i64* %RSI, align 8, !tbaa !2428
  %4632 = trunc i64 %4630 to i32
  %4633 = add i32 %4632, %4603
  %4634 = zext i32 %4633 to i64
  store i64 %4634, i64* %RDX, align 8, !tbaa !2428
  %4635 = icmp ult i32 %4633, %4603
  %4636 = icmp ult i32 %4633, %4632
  %4637 = or i1 %4635, %4636
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %70, align 1, !tbaa !2432
  %4639 = and i32 %4633, 255
  %4640 = tail call i32 @llvm.ctpop.i32(i32 %4639) #8
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  store i8 %4643, i8* %76, align 1, !tbaa !2446
  %4644 = xor i64 %4630, %4601
  %4645 = trunc i64 %4644 to i32
  %4646 = xor i32 %4645, %4633
  %4647 = lshr i32 %4646, 4
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  store i8 %4649, i8* %81, align 1, !tbaa !2447
  %4650 = icmp eq i32 %4633, 0
  %4651 = zext i1 %4650 to i8
  store i8 %4651, i8* %84, align 1, !tbaa !2448
  %4652 = lshr i32 %4633, 31
  %4653 = trunc i32 %4652 to i8
  store i8 %4653, i8* %87, align 1, !tbaa !2449
  %4654 = lshr i32 %4632, 31
  %4655 = xor i32 %4652, %4612
  %4656 = xor i32 %4652, %4654
  %4657 = add nuw nsw i32 %4655, %4656
  %4658 = icmp eq i32 %4657, 2
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %93, align 1, !tbaa !2450
  %4660 = add i64 %4614, -60
  %4661 = add i64 %7069, 1803
  store i64 %4661, i64* %PC, align 8
  %4662 = inttoptr i64 %4660 to i32*
  %4663 = load i32, i32* %4662, align 4
  %4664 = add i32 %4663, %4633
  %4665 = zext i32 %4664 to i64
  store i64 %4665, i64* %RDX, align 8, !tbaa !2428
  %4666 = icmp ult i32 %4664, %4633
  %4667 = icmp ult i32 %4664, %4663
  %4668 = or i1 %4666, %4667
  %4669 = zext i1 %4668 to i8
  store i8 %4669, i8* %70, align 1, !tbaa !2432
  %4670 = and i32 %4664, 255
  %4671 = tail call i32 @llvm.ctpop.i32(i32 %4670) #8
  %4672 = trunc i32 %4671 to i8
  %4673 = and i8 %4672, 1
  %4674 = xor i8 %4673, 1
  store i8 %4674, i8* %76, align 1, !tbaa !2446
  %4675 = xor i32 %4663, %4633
  %4676 = xor i32 %4675, %4664
  %4677 = lshr i32 %4676, 4
  %4678 = trunc i32 %4677 to i8
  %4679 = and i8 %4678, 1
  store i8 %4679, i8* %81, align 1, !tbaa !2447
  %4680 = icmp eq i32 %4664, 0
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %84, align 1, !tbaa !2448
  %4682 = lshr i32 %4664, 31
  %4683 = trunc i32 %4682 to i8
  store i8 %4683, i8* %87, align 1, !tbaa !2449
  %4684 = lshr i32 %4663, 31
  %4685 = xor i32 %4682, %4652
  %4686 = xor i32 %4682, %4684
  %4687 = add nuw nsw i32 %4685, %4686
  %4688 = icmp eq i32 %4687, 2
  %4689 = zext i1 %4688 to i8
  store i8 %4689, i8* %93, align 1, !tbaa !2450
  %4690 = sext i32 %4664 to i64
  store i64 %4690, i64* %RCX, align 8, !tbaa !2428
  %4691 = load i64, i64* %RAX, align 8
  %4692 = shl nsw i64 %4690, 2
  %4693 = add i64 %4692, %4691
  %4694 = add i64 %7069, 1811
  store i64 %4694, i64* %PC, align 8
  %4695 = inttoptr i64 %4693 to i32*
  %4696 = load i32, i32* %4695, align 4
  %4697 = bitcast %union.VectorReg* %5 to i32*
  store i32 %4696, i32* %4697, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %4698 = load i64, i64* %RBP, align 8
  %4699 = add i64 %4698, -40
  %4700 = add i64 %7069, 1815
  store i64 %4700, i64* %PC, align 8
  %4701 = inttoptr i64 %4699 to i64*
  %4702 = load i64, i64* %4701, align 8
  store i64 %4702, i64* %RAX, align 8, !tbaa !2428
  %4703 = add i64 %7069, 1818
  store i64 %4703, i64* %PC, align 8
  %4704 = inttoptr i64 %4702 to i64*
  %4705 = load i64, i64* %4704, align 8
  store i64 %4705, i64* %RAX, align 8, !tbaa !2428
  %4706 = add i64 %7069, 1822
  store i64 %4706, i64* %PC, align 8
  %4707 = load i64, i64* %4701, align 8
  store i64 %4707, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4708 = add i64 %7069, 1830
  store i64 %4708, i64* %PC, align 8
  %4709 = load i64, i64* %4701, align 8
  store i64 %4709, i64* %RCX, align 8, !tbaa !2428
  %4710 = add i64 %7069, 1834
  store i64 %4710, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4711 = add i64 %7069, 1838
  store i64 %4711, i64* %PC, align 8
  %4712 = load i64, i64* %4701, align 8
  store i64 %4712, i64* %RCX, align 8, !tbaa !2428
  %4713 = add i64 %7069, 1842
  store i64 %4713, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %4714 = add i64 %4698, -52
  %4715 = add i64 %7069, 1845
  store i64 %4715, i64* %PC, align 8
  %4716 = inttoptr i64 %4714 to i32*
  %4717 = load i32, i32* %4716, align 4
  %4718 = add i32 %4717, -1
  %4719 = zext i32 %4718 to i64
  store i64 %4719, i64* %RSI, align 8, !tbaa !2428
  %4720 = icmp eq i32 %4717, 0
  %4721 = zext i1 %4720 to i8
  store i8 %4721, i8* %70, align 1, !tbaa !2432
  %4722 = and i32 %4718, 255
  %4723 = tail call i32 @llvm.ctpop.i32(i32 %4722) #8
  %4724 = trunc i32 %4723 to i8
  %4725 = and i8 %4724, 1
  %4726 = xor i8 %4725, 1
  store i8 %4726, i8* %76, align 1, !tbaa !2446
  %4727 = xor i32 %4717, %4718
  %4728 = lshr i32 %4727, 4
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  store i8 %4730, i8* %81, align 1, !tbaa !2447
  %4731 = icmp eq i32 %4718, 0
  %4732 = zext i1 %4731 to i8
  store i8 %4732, i8* %84, align 1, !tbaa !2448
  %4733 = lshr i32 %4718, 31
  %4734 = trunc i32 %4733 to i8
  store i8 %4734, i8* %87, align 1, !tbaa !2449
  %4735 = lshr i32 %4717, 31
  %4736 = xor i32 %4733, %4735
  %4737 = add nuw nsw i32 %4736, %4735
  %4738 = icmp eq i32 %4737, 2
  %4739 = zext i1 %4738 to i8
  store i8 %4739, i8* %93, align 1, !tbaa !2450
  %4740 = add i64 %7069, 1852
  store i64 %4740, i64* %PC, align 8
  %4741 = load i64, i64* %4701, align 8
  store i64 %4741, i64* %RCX, align 8, !tbaa !2428
  %4742 = add i64 %4741, 16
  %4743 = add i64 %7069, 1856
  store i64 %4743, i64* %PC, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = sext i32 %4718 to i64
  %4747 = sext i32 %4745 to i64
  %4748 = mul nsw i64 %4747, %4746
  %4749 = trunc i64 %4748 to i32
  %4750 = and i64 %4748, 4294967295
  store i64 %4750, i64* %RSI, align 8, !tbaa !2428
  %4751 = shl i64 %4748, 32
  %4752 = ashr exact i64 %4751, 32
  %4753 = icmp ne i64 %4752, %4748
  %4754 = zext i1 %4753 to i8
  store i8 %4754, i8* %70, align 1, !tbaa !2432
  %4755 = and i32 %4749, 255
  %4756 = tail call i32 @llvm.ctpop.i32(i32 %4755) #8
  %4757 = trunc i32 %4756 to i8
  %4758 = and i8 %4757, 1
  %4759 = xor i8 %4758, 1
  store i8 %4759, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4760 = lshr i32 %4749, 31
  %4761 = trunc i32 %4760 to i8
  store i8 %4761, i8* %87, align 1, !tbaa !2449
  store i8 %4754, i8* %93, align 1, !tbaa !2450
  %4762 = load i64, i64* %RBP, align 8
  %4763 = add i64 %4762, -40
  %4764 = add i64 %7069, 1860
  store i64 %4764, i64* %PC, align 8
  %4765 = inttoptr i64 %4763 to i64*
  %4766 = load i64, i64* %4765, align 8
  store i64 %4766, i64* %RCX, align 8, !tbaa !2428
  %4767 = add i64 %4766, 20
  %4768 = add i64 %7069, 1864
  store i64 %4768, i64* %PC, align 8
  %4769 = inttoptr i64 %4767 to i32*
  %4770 = load i32, i32* %4769, align 4
  %4771 = shl i64 %4748, 32
  %4772 = ashr exact i64 %4771, 32
  %4773 = sext i32 %4770 to i64
  %4774 = mul nsw i64 %4773, %4772
  %4775 = and i64 %4774, 4294967295
  store i64 %4775, i64* %RSI, align 8, !tbaa !2428
  %4776 = load i64, i64* %RDX, align 8
  %4777 = trunc i64 %4774 to i32
  %4778 = trunc i64 %4776 to i32
  %4779 = add i32 %4777, %4778
  %4780 = zext i32 %4779 to i64
  store i64 %4780, i64* %RDX, align 8, !tbaa !2428
  %4781 = icmp ult i32 %4779, %4778
  %4782 = icmp ult i32 %4779, %4777
  %4783 = or i1 %4781, %4782
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %70, align 1, !tbaa !2432
  %4785 = and i32 %4779, 255
  %4786 = tail call i32 @llvm.ctpop.i32(i32 %4785) #8
  %4787 = trunc i32 %4786 to i8
  %4788 = and i8 %4787, 1
  %4789 = xor i8 %4788, 1
  store i8 %4789, i8* %76, align 1, !tbaa !2446
  %4790 = xor i64 %4774, %4776
  %4791 = trunc i64 %4790 to i32
  %4792 = xor i32 %4791, %4779
  %4793 = lshr i32 %4792, 4
  %4794 = trunc i32 %4793 to i8
  %4795 = and i8 %4794, 1
  store i8 %4795, i8* %81, align 1, !tbaa !2447
  %4796 = icmp eq i32 %4779, 0
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %84, align 1, !tbaa !2448
  %4798 = lshr i32 %4779, 31
  %4799 = trunc i32 %4798 to i8
  store i8 %4799, i8* %87, align 1, !tbaa !2449
  %4800 = lshr i32 %4778, 31
  %4801 = lshr i32 %4777, 31
  %4802 = xor i32 %4798, %4800
  %4803 = xor i32 %4798, %4801
  %4804 = add nuw nsw i32 %4802, %4803
  %4805 = icmp eq i32 %4804, 2
  %4806 = zext i1 %4805 to i8
  store i8 %4806, i8* %93, align 1, !tbaa !2450
  %4807 = add i64 %4762, -56
  %4808 = add i64 %7069, 1869
  store i64 %4808, i64* %PC, align 8
  %4809 = inttoptr i64 %4807 to i32*
  %4810 = load i32, i32* %4809, align 4
  %4811 = zext i32 %4810 to i64
  store i64 %4811, i64* %RSI, align 8, !tbaa !2428
  %4812 = add i64 %7069, 1873
  store i64 %4812, i64* %PC, align 8
  %4813 = load i64, i64* %4765, align 8
  store i64 %4813, i64* %RCX, align 8, !tbaa !2428
  %4814 = add i64 %4813, 20
  %4815 = add i64 %7069, 1877
  store i64 %4815, i64* %PC, align 8
  %4816 = inttoptr i64 %4814 to i32*
  %4817 = load i32, i32* %4816, align 4
  %4818 = sext i32 %4810 to i64
  %4819 = sext i32 %4817 to i64
  %4820 = mul nsw i64 %4819, %4818
  %4821 = and i64 %4820, 4294967295
  store i64 %4821, i64* %RSI, align 8, !tbaa !2428
  %4822 = trunc i64 %4820 to i32
  %4823 = add i32 %4822, %4779
  %4824 = zext i32 %4823 to i64
  store i64 %4824, i64* %RDX, align 8, !tbaa !2428
  %4825 = icmp ult i32 %4823, %4779
  %4826 = icmp ult i32 %4823, %4822
  %4827 = or i1 %4825, %4826
  %4828 = zext i1 %4827 to i8
  store i8 %4828, i8* %70, align 1, !tbaa !2432
  %4829 = and i32 %4823, 255
  %4830 = tail call i32 @llvm.ctpop.i32(i32 %4829) #8
  %4831 = trunc i32 %4830 to i8
  %4832 = and i8 %4831, 1
  %4833 = xor i8 %4832, 1
  store i8 %4833, i8* %76, align 1, !tbaa !2446
  %4834 = xor i64 %4820, %4780
  %4835 = trunc i64 %4834 to i32
  %4836 = xor i32 %4835, %4823
  %4837 = lshr i32 %4836, 4
  %4838 = trunc i32 %4837 to i8
  %4839 = and i8 %4838, 1
  store i8 %4839, i8* %81, align 1, !tbaa !2447
  %4840 = icmp eq i32 %4823, 0
  %4841 = zext i1 %4840 to i8
  store i8 %4841, i8* %84, align 1, !tbaa !2448
  %4842 = lshr i32 %4823, 31
  %4843 = trunc i32 %4842 to i8
  store i8 %4843, i8* %87, align 1, !tbaa !2449
  %4844 = lshr i32 %4822, 31
  %4845 = xor i32 %4842, %4798
  %4846 = xor i32 %4842, %4844
  %4847 = add nuw nsw i32 %4845, %4846
  %4848 = icmp eq i32 %4847, 2
  %4849 = zext i1 %4848 to i8
  store i8 %4849, i8* %93, align 1, !tbaa !2450
  %4850 = load i64, i64* %RBP, align 8
  %4851 = add i64 %4850, -60
  %4852 = add i64 %7069, 1882
  store i64 %4852, i64* %PC, align 8
  %4853 = inttoptr i64 %4851 to i32*
  %4854 = load i32, i32* %4853, align 4
  %4855 = add i32 %4854, %4823
  %4856 = zext i32 %4855 to i64
  store i64 %4856, i64* %RDX, align 8, !tbaa !2428
  %4857 = icmp ult i32 %4855, %4823
  %4858 = icmp ult i32 %4855, %4854
  %4859 = or i1 %4857, %4858
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %70, align 1, !tbaa !2432
  %4861 = and i32 %4855, 255
  %4862 = tail call i32 @llvm.ctpop.i32(i32 %4861) #8
  %4863 = trunc i32 %4862 to i8
  %4864 = and i8 %4863, 1
  %4865 = xor i8 %4864, 1
  store i8 %4865, i8* %76, align 1, !tbaa !2446
  %4866 = xor i32 %4854, %4823
  %4867 = xor i32 %4866, %4855
  %4868 = lshr i32 %4867, 4
  %4869 = trunc i32 %4868 to i8
  %4870 = and i8 %4869, 1
  store i8 %4870, i8* %81, align 1, !tbaa !2447
  %4871 = icmp eq i32 %4855, 0
  %4872 = zext i1 %4871 to i8
  store i8 %4872, i8* %84, align 1, !tbaa !2448
  %4873 = lshr i32 %4855, 31
  %4874 = trunc i32 %4873 to i8
  store i8 %4874, i8* %87, align 1, !tbaa !2449
  %4875 = lshr i32 %4854, 31
  %4876 = xor i32 %4873, %4842
  %4877 = xor i32 %4873, %4875
  %4878 = add nuw nsw i32 %4876, %4877
  %4879 = icmp eq i32 %4878, 2
  %4880 = zext i1 %4879 to i8
  store i8 %4880, i8* %93, align 1, !tbaa !2450
  %4881 = sext i32 %4855 to i64
  store i64 %4881, i64* %RCX, align 8, !tbaa !2428
  %4882 = load i64, i64* %RAX, align 8
  %4883 = shl nsw i64 %4881, 2
  %4884 = add i64 %4883, %4882
  %4885 = add i64 %7069, 1890
  store i64 %4885, i64* %PC, align 8
  %4886 = load <2 x float>, <2 x float>* %208, align 1
  %4887 = load <2 x i32>, <2 x i32>* %209, align 1
  %4888 = inttoptr i64 %4884 to float*
  %4889 = load float, float* %4888, align 4
  %4890 = extractelement <2 x float> %4886, i32 0
  %4891 = fmul float %4890, %4889
  store float %4891, float* %201, align 1, !tbaa !2451
  %4892 = bitcast <2 x float> %4886 to <2 x i32>
  %4893 = extractelement <2 x i32> %4892, i32 1
  store i32 %4893, i32* %210, align 1, !tbaa !2451
  %4894 = extractelement <2 x i32> %4887, i32 0
  store i32 %4894, i32* %211, align 1, !tbaa !2451
  %4895 = extractelement <2 x i32> %4887, i32 1
  store i32 %4895, i32* %212, align 1, !tbaa !2451
  %4896 = load <2 x float>, <2 x float>* %198, align 1
  %4897 = load <2 x i32>, <2 x i32>* %199, align 1
  %4898 = load <2 x float>, <2 x float>* %213, align 1
  %4899 = extractelement <2 x float> %4896, i32 0
  %4900 = extractelement <2 x float> %4898, i32 0
  %4901 = fadd float %4899, %4900
  store float %4901, float* %194, align 1, !tbaa !2451
  %4902 = bitcast <2 x float> %4896 to <2 x i32>
  %4903 = extractelement <2 x i32> %4902, i32 1
  store i32 %4903, i32* %189, align 1, !tbaa !2451
  %4904 = extractelement <2 x i32> %4897, i32 0
  store i32 %4904, i32* %190, align 1, !tbaa !2451
  %4905 = extractelement <2 x i32> %4897, i32 1
  store i32 %4905, i32* %192, align 1, !tbaa !2451
  %4906 = add i64 %4850, -32
  %4907 = add i64 %7069, 1898
  store i64 %4907, i64* %PC, align 8
  %4908 = inttoptr i64 %4906 to i64*
  %4909 = load i64, i64* %4908, align 8
  store i64 %4909, i64* %RAX, align 8, !tbaa !2428
  %4910 = add i64 %7069, 1901
  store i64 %4910, i64* %PC, align 8
  %4911 = inttoptr i64 %4909 to i64*
  %4912 = load i64, i64* %4911, align 8
  store i64 %4912, i64* %RAX, align 8, !tbaa !2428
  %4913 = add i64 %7069, 1905
  store i64 %4913, i64* %PC, align 8
  %4914 = load i64, i64* %4908, align 8
  store i64 %4914, i64* %RCX, align 8, !tbaa !2428
  %4915 = add i64 %4914, 12
  %4916 = add i64 %7069, 1908
  store i64 %4916, i64* %PC, align 8
  %4917 = inttoptr i64 %4915 to i32*
  %4918 = load i32, i32* %4917, align 4
  %4919 = zext i32 %4918 to i64
  store i64 %4919, i64* %RDX, align 8, !tbaa !2428
  %4920 = load i64, i64* %RBP, align 8
  %4921 = add i64 %4920, -32
  %4922 = add i64 %7069, 1915
  store i64 %4922, i64* %PC, align 8
  %4923 = inttoptr i64 %4921 to i64*
  %4924 = load i64, i64* %4923, align 8
  store i64 %4924, i64* %RCX, align 8, !tbaa !2428
  %4925 = add i64 %4924, 16
  %4926 = add i64 %7069, 1919
  store i64 %4926, i64* %PC, align 8
  %4927 = inttoptr i64 %4925 to i32*
  %4928 = load i32, i32* %4927, align 4
  %4929 = sext i32 %4918 to i64
  %4930 = sext i32 %4928 to i64
  %4931 = mul nsw i64 %4930, %4929
  %4932 = trunc i64 %4931 to i32
  %4933 = and i64 %4931, 4294967295
  store i64 %4933, i64* %RDX, align 8, !tbaa !2428
  %4934 = shl i64 %4931, 32
  %4935 = ashr exact i64 %4934, 32
  %4936 = icmp ne i64 %4935, %4931
  %4937 = zext i1 %4936 to i8
  store i8 %4937, i8* %70, align 1, !tbaa !2432
  %4938 = and i32 %4932, 255
  %4939 = tail call i32 @llvm.ctpop.i32(i32 %4938) #8
  %4940 = trunc i32 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = xor i8 %4941, 1
  store i8 %4942, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4943 = lshr i32 %4932, 31
  %4944 = trunc i32 %4943 to i8
  store i8 %4944, i8* %87, align 1, !tbaa !2449
  store i8 %4937, i8* %93, align 1, !tbaa !2450
  %4945 = add i64 %7069, 1923
  store i64 %4945, i64* %PC, align 8
  %4946 = load i64, i64* %4923, align 8
  store i64 %4946, i64* %RCX, align 8, !tbaa !2428
  %4947 = add i64 %4946, 20
  %4948 = add i64 %7069, 1927
  store i64 %4948, i64* %PC, align 8
  %4949 = inttoptr i64 %4947 to i32*
  %4950 = load i32, i32* %4949, align 4
  %4951 = shl i64 %4931, 32
  %4952 = ashr exact i64 %4951, 32
  %4953 = sext i32 %4950 to i64
  %4954 = mul nsw i64 %4953, %4952
  %4955 = trunc i64 %4954 to i32
  %4956 = and i64 %4954, 4294967295
  store i64 %4956, i64* %RDX, align 8, !tbaa !2428
  %4957 = shl i64 %4954, 32
  %4958 = ashr exact i64 %4957, 32
  %4959 = icmp ne i64 %4958, %4954
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %70, align 1, !tbaa !2432
  %4961 = and i32 %4955, 255
  %4962 = tail call i32 @llvm.ctpop.i32(i32 %4961) #8
  %4963 = trunc i32 %4962 to i8
  %4964 = and i8 %4963, 1
  %4965 = xor i8 %4964, 1
  store i8 %4965, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4966 = lshr i32 %4955, 31
  %4967 = trunc i32 %4966 to i8
  store i8 %4967, i8* %87, align 1, !tbaa !2449
  store i8 %4960, i8* %93, align 1, !tbaa !2450
  %4968 = add i64 %4920, -52
  %4969 = add i64 %7069, 1930
  store i64 %4969, i64* %PC, align 8
  %4970 = inttoptr i64 %4968 to i32*
  %4971 = load i32, i32* %4970, align 4
  %4972 = zext i32 %4971 to i64
  store i64 %4972, i64* %RSI, align 8, !tbaa !2428
  %4973 = add i64 %7069, 1934
  store i64 %4973, i64* %PC, align 8
  %4974 = load i64, i64* %4923, align 8
  store i64 %4974, i64* %RCX, align 8, !tbaa !2428
  %4975 = add i64 %4974, 16
  %4976 = add i64 %7069, 1938
  store i64 %4976, i64* %PC, align 8
  %4977 = inttoptr i64 %4975 to i32*
  %4978 = load i32, i32* %4977, align 4
  %4979 = sext i32 %4971 to i64
  %4980 = sext i32 %4978 to i64
  %4981 = mul nsw i64 %4980, %4979
  %4982 = trunc i64 %4981 to i32
  %4983 = and i64 %4981, 4294967295
  store i64 %4983, i64* %RSI, align 8, !tbaa !2428
  %4984 = shl i64 %4981, 32
  %4985 = ashr exact i64 %4984, 32
  %4986 = icmp ne i64 %4985, %4981
  %4987 = zext i1 %4986 to i8
  store i8 %4987, i8* %70, align 1, !tbaa !2432
  %4988 = and i32 %4982, 255
  %4989 = tail call i32 @llvm.ctpop.i32(i32 %4988) #8
  %4990 = trunc i32 %4989 to i8
  %4991 = and i8 %4990, 1
  %4992 = xor i8 %4991, 1
  store i8 %4992, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %4993 = lshr i32 %4982, 31
  %4994 = trunc i32 %4993 to i8
  store i8 %4994, i8* %87, align 1, !tbaa !2449
  store i8 %4987, i8* %93, align 1, !tbaa !2450
  %4995 = load i64, i64* %RBP, align 8
  %4996 = add i64 %4995, -32
  %4997 = add i64 %7069, 1942
  store i64 %4997, i64* %PC, align 8
  %4998 = inttoptr i64 %4996 to i64*
  %4999 = load i64, i64* %4998, align 8
  store i64 %4999, i64* %RCX, align 8, !tbaa !2428
  %5000 = add i64 %4999, 20
  %5001 = add i64 %7069, 1946
  store i64 %5001, i64* %PC, align 8
  %5002 = inttoptr i64 %5000 to i32*
  %5003 = load i32, i32* %5002, align 4
  %5004 = shl i64 %4981, 32
  %5005 = ashr exact i64 %5004, 32
  %5006 = sext i32 %5003 to i64
  %5007 = mul nsw i64 %5006, %5005
  %5008 = and i64 %5007, 4294967295
  store i64 %5008, i64* %RSI, align 8, !tbaa !2428
  %5009 = trunc i64 %5007 to i32
  %5010 = trunc i64 %4954 to i32
  %5011 = add i32 %5009, %5010
  %5012 = zext i32 %5011 to i64
  store i64 %5012, i64* %RDX, align 8, !tbaa !2428
  %5013 = icmp ult i32 %5011, %5010
  %5014 = icmp ult i32 %5011, %5009
  %5015 = or i1 %5013, %5014
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %70, align 1, !tbaa !2432
  %5017 = and i32 %5011, 255
  %5018 = tail call i32 @llvm.ctpop.i32(i32 %5017) #8
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = xor i8 %5020, 1
  store i8 %5021, i8* %76, align 1, !tbaa !2446
  %5022 = xor i64 %5007, %4954
  %5023 = trunc i64 %5022 to i32
  %5024 = xor i32 %5023, %5011
  %5025 = lshr i32 %5024, 4
  %5026 = trunc i32 %5025 to i8
  %5027 = and i8 %5026, 1
  store i8 %5027, i8* %81, align 1, !tbaa !2447
  %5028 = icmp eq i32 %5011, 0
  %5029 = zext i1 %5028 to i8
  store i8 %5029, i8* %84, align 1, !tbaa !2448
  %5030 = lshr i32 %5011, 31
  %5031 = trunc i32 %5030 to i8
  store i8 %5031, i8* %87, align 1, !tbaa !2449
  %5032 = lshr i32 %5010, 31
  %5033 = lshr i32 %5009, 31
  %5034 = xor i32 %5030, %5032
  %5035 = xor i32 %5030, %5033
  %5036 = add nuw nsw i32 %5034, %5035
  %5037 = icmp eq i32 %5036, 2
  %5038 = zext i1 %5037 to i8
  store i8 %5038, i8* %93, align 1, !tbaa !2450
  %5039 = add i64 %4995, -56
  %5040 = add i64 %7069, 1951
  store i64 %5040, i64* %PC, align 8
  %5041 = inttoptr i64 %5039 to i32*
  %5042 = load i32, i32* %5041, align 4
  %5043 = zext i32 %5042 to i64
  store i64 %5043, i64* %RSI, align 8, !tbaa !2428
  %5044 = add i64 %7069, 1955
  store i64 %5044, i64* %PC, align 8
  %5045 = load i64, i64* %4998, align 8
  store i64 %5045, i64* %RCX, align 8, !tbaa !2428
  %5046 = add i64 %5045, 20
  %5047 = add i64 %7069, 1959
  store i64 %5047, i64* %PC, align 8
  %5048 = inttoptr i64 %5046 to i32*
  %5049 = load i32, i32* %5048, align 4
  %5050 = sext i32 %5042 to i64
  %5051 = sext i32 %5049 to i64
  %5052 = mul nsw i64 %5051, %5050
  %5053 = and i64 %5052, 4294967295
  store i64 %5053, i64* %RSI, align 8, !tbaa !2428
  %5054 = trunc i64 %5052 to i32
  %5055 = add i32 %5054, %5011
  %5056 = zext i32 %5055 to i64
  store i64 %5056, i64* %RDX, align 8, !tbaa !2428
  %5057 = icmp ult i32 %5055, %5011
  %5058 = icmp ult i32 %5055, %5054
  %5059 = or i1 %5057, %5058
  %5060 = zext i1 %5059 to i8
  store i8 %5060, i8* %70, align 1, !tbaa !2432
  %5061 = and i32 %5055, 255
  %5062 = tail call i32 @llvm.ctpop.i32(i32 %5061) #8
  %5063 = trunc i32 %5062 to i8
  %5064 = and i8 %5063, 1
  %5065 = xor i8 %5064, 1
  store i8 %5065, i8* %76, align 1, !tbaa !2446
  %5066 = xor i64 %5052, %5012
  %5067 = trunc i64 %5066 to i32
  %5068 = xor i32 %5067, %5055
  %5069 = lshr i32 %5068, 4
  %5070 = trunc i32 %5069 to i8
  %5071 = and i8 %5070, 1
  store i8 %5071, i8* %81, align 1, !tbaa !2447
  %5072 = icmp eq i32 %5055, 0
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %84, align 1, !tbaa !2448
  %5074 = lshr i32 %5055, 31
  %5075 = trunc i32 %5074 to i8
  store i8 %5075, i8* %87, align 1, !tbaa !2449
  %5076 = lshr i32 %5054, 31
  %5077 = xor i32 %5074, %5030
  %5078 = xor i32 %5074, %5076
  %5079 = add nuw nsw i32 %5077, %5078
  %5080 = icmp eq i32 %5079, 2
  %5081 = zext i1 %5080 to i8
  store i8 %5081, i8* %93, align 1, !tbaa !2450
  %5082 = load i64, i64* %RBP, align 8
  %5083 = add i64 %5082, -60
  %5084 = add i64 %7069, 1964
  store i64 %5084, i64* %PC, align 8
  %5085 = inttoptr i64 %5083 to i32*
  %5086 = load i32, i32* %5085, align 4
  %5087 = add i32 %5086, %5055
  %5088 = zext i32 %5087 to i64
  store i64 %5088, i64* %RDX, align 8, !tbaa !2428
  %5089 = icmp ult i32 %5087, %5055
  %5090 = icmp ult i32 %5087, %5086
  %5091 = or i1 %5089, %5090
  %5092 = zext i1 %5091 to i8
  store i8 %5092, i8* %70, align 1, !tbaa !2432
  %5093 = and i32 %5087, 255
  %5094 = tail call i32 @llvm.ctpop.i32(i32 %5093) #8
  %5095 = trunc i32 %5094 to i8
  %5096 = and i8 %5095, 1
  %5097 = xor i8 %5096, 1
  store i8 %5097, i8* %76, align 1, !tbaa !2446
  %5098 = xor i32 %5086, %5055
  %5099 = xor i32 %5098, %5087
  %5100 = lshr i32 %5099, 4
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  store i8 %5102, i8* %81, align 1, !tbaa !2447
  %5103 = icmp eq i32 %5087, 0
  %5104 = zext i1 %5103 to i8
  store i8 %5104, i8* %84, align 1, !tbaa !2448
  %5105 = lshr i32 %5087, 31
  %5106 = trunc i32 %5105 to i8
  store i8 %5106, i8* %87, align 1, !tbaa !2449
  %5107 = lshr i32 %5086, 31
  %5108 = xor i32 %5105, %5074
  %5109 = xor i32 %5105, %5107
  %5110 = add nuw nsw i32 %5108, %5109
  %5111 = icmp eq i32 %5110, 2
  %5112 = zext i1 %5111 to i8
  store i8 %5112, i8* %93, align 1, !tbaa !2450
  %5113 = sext i32 %5087 to i64
  store i64 %5113, i64* %RCX, align 8, !tbaa !2428
  %5114 = load i64, i64* %RAX, align 8
  %5115 = shl nsw i64 %5113, 2
  %5116 = add i64 %5115, %5114
  %5117 = add i64 %7069, 1972
  store i64 %5117, i64* %PC, align 8
  %5118 = inttoptr i64 %5116 to i32*
  %5119 = load i32, i32* %5118, align 4
  %5120 = bitcast %union.VectorReg* %5 to i32*
  store i32 %5119, i32* %5120, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %5121 = add i64 %5082, -40
  %5122 = add i64 %7069, 1976
  store i64 %5122, i64* %PC, align 8
  %5123 = inttoptr i64 %5121 to i64*
  %5124 = load i64, i64* %5123, align 8
  store i64 %5124, i64* %RAX, align 8, !tbaa !2428
  %5125 = add i64 %7069, 1979
  store i64 %5125, i64* %PC, align 8
  %5126 = inttoptr i64 %5124 to i64*
  %5127 = load i64, i64* %5126, align 8
  store i64 %5127, i64* %RAX, align 8, !tbaa !2428
  %5128 = add i64 %7069, 1983
  store i64 %5128, i64* %PC, align 8
  %5129 = load i64, i64* %5123, align 8
  store i64 %5129, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5130 = add i64 %7069, 1991
  store i64 %5130, i64* %PC, align 8
  %5131 = load i64, i64* %5123, align 8
  store i64 %5131, i64* %RCX, align 8, !tbaa !2428
  %5132 = add i64 %7069, 1995
  store i64 %5132, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5133 = add i64 %7069, 1999
  store i64 %5133, i64* %PC, align 8
  %5134 = load i64, i64* %5123, align 8
  store i64 %5134, i64* %RCX, align 8, !tbaa !2428
  %5135 = add i64 %7069, 2003
  store i64 %5135, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5136 = load i64, i64* %RBP, align 8
  %5137 = add i64 %5136, -52
  %5138 = add i64 %7069, 2006
  store i64 %5138, i64* %PC, align 8
  %5139 = inttoptr i64 %5137 to i32*
  %5140 = load i32, i32* %5139, align 4
  %5141 = zext i32 %5140 to i64
  store i64 %5141, i64* %RSI, align 8, !tbaa !2428
  %5142 = add i64 %5136, -40
  %5143 = add i64 %7069, 2010
  store i64 %5143, i64* %PC, align 8
  %5144 = inttoptr i64 %5142 to i64*
  %5145 = load i64, i64* %5144, align 8
  store i64 %5145, i64* %RCX, align 8, !tbaa !2428
  %5146 = add i64 %5145, 16
  %5147 = add i64 %7069, 2014
  store i64 %5147, i64* %PC, align 8
  %5148 = inttoptr i64 %5146 to i32*
  %5149 = load i32, i32* %5148, align 4
  %5150 = sext i32 %5140 to i64
  %5151 = sext i32 %5149 to i64
  %5152 = mul nsw i64 %5151, %5150
  %5153 = trunc i64 %5152 to i32
  %5154 = and i64 %5152, 4294967295
  store i64 %5154, i64* %RSI, align 8, !tbaa !2428
  %5155 = shl i64 %5152, 32
  %5156 = ashr exact i64 %5155, 32
  %5157 = icmp ne i64 %5156, %5152
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %70, align 1, !tbaa !2432
  %5159 = and i32 %5153, 255
  %5160 = tail call i32 @llvm.ctpop.i32(i32 %5159) #8
  %5161 = trunc i32 %5160 to i8
  %5162 = and i8 %5161, 1
  %5163 = xor i8 %5162, 1
  store i8 %5163, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5164 = lshr i32 %5153, 31
  %5165 = trunc i32 %5164 to i8
  store i8 %5165, i8* %87, align 1, !tbaa !2449
  store i8 %5158, i8* %93, align 1, !tbaa !2450
  %5166 = add i64 %7069, 2018
  store i64 %5166, i64* %PC, align 8
  %5167 = load i64, i64* %5144, align 8
  store i64 %5167, i64* %RCX, align 8, !tbaa !2428
  %5168 = add i64 %5167, 20
  %5169 = add i64 %7069, 2022
  store i64 %5169, i64* %PC, align 8
  %5170 = inttoptr i64 %5168 to i32*
  %5171 = load i32, i32* %5170, align 4
  %5172 = shl i64 %5152, 32
  %5173 = ashr exact i64 %5172, 32
  %5174 = sext i32 %5171 to i64
  %5175 = mul nsw i64 %5174, %5173
  %5176 = and i64 %5175, 4294967295
  store i64 %5176, i64* %RSI, align 8, !tbaa !2428
  %5177 = trunc i64 %5175 to i32
  %5178 = and i64 %5175, 4294967295
  store i64 %5178, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5179 = and i32 %5177, 255
  %5180 = tail call i32 @llvm.ctpop.i32(i32 %5179) #8
  %5181 = trunc i32 %5180 to i8
  %5182 = and i8 %5181, 1
  %5183 = xor i8 %5182, 1
  store i8 %5183, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5184 = icmp eq i32 %5177, 0
  %5185 = zext i1 %5184 to i8
  store i8 %5185, i8* %84, align 1, !tbaa !2448
  %5186 = lshr i32 %5177, 31
  %5187 = trunc i32 %5186 to i8
  store i8 %5187, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5188 = add i64 %5136, -56
  %5189 = add i64 %7069, 2027
  store i64 %5189, i64* %PC, align 8
  %5190 = inttoptr i64 %5188 to i32*
  %5191 = load i32, i32* %5190, align 4
  %5192 = add i32 %5191, -1
  %5193 = zext i32 %5192 to i64
  store i64 %5193, i64* %RSI, align 8, !tbaa !2428
  %5194 = icmp eq i32 %5191, 0
  %5195 = zext i1 %5194 to i8
  store i8 %5195, i8* %70, align 1, !tbaa !2432
  %5196 = and i32 %5192, 255
  %5197 = tail call i32 @llvm.ctpop.i32(i32 %5196) #8
  %5198 = trunc i32 %5197 to i8
  %5199 = and i8 %5198, 1
  %5200 = xor i8 %5199, 1
  store i8 %5200, i8* %76, align 1, !tbaa !2446
  %5201 = xor i32 %5191, %5192
  %5202 = lshr i32 %5201, 4
  %5203 = trunc i32 %5202 to i8
  %5204 = and i8 %5203, 1
  store i8 %5204, i8* %81, align 1, !tbaa !2447
  %5205 = icmp eq i32 %5192, 0
  %5206 = zext i1 %5205 to i8
  store i8 %5206, i8* %84, align 1, !tbaa !2448
  %5207 = lshr i32 %5192, 31
  %5208 = trunc i32 %5207 to i8
  store i8 %5208, i8* %87, align 1, !tbaa !2449
  %5209 = lshr i32 %5191, 31
  %5210 = xor i32 %5207, %5209
  %5211 = add nuw nsw i32 %5210, %5209
  %5212 = icmp eq i32 %5211, 2
  %5213 = zext i1 %5212 to i8
  store i8 %5213, i8* %93, align 1, !tbaa !2450
  %5214 = load i64, i64* %RBP, align 8
  %5215 = add i64 %5214, -40
  %5216 = add i64 %7069, 2034
  store i64 %5216, i64* %PC, align 8
  %5217 = inttoptr i64 %5215 to i64*
  %5218 = load i64, i64* %5217, align 8
  store i64 %5218, i64* %RCX, align 8, !tbaa !2428
  %5219 = add i64 %5218, 20
  %5220 = add i64 %7069, 2038
  store i64 %5220, i64* %PC, align 8
  %5221 = inttoptr i64 %5219 to i32*
  %5222 = load i32, i32* %5221, align 4
  %5223 = sext i32 %5192 to i64
  %5224 = sext i32 %5222 to i64
  %5225 = mul nsw i64 %5224, %5223
  %5226 = and i64 %5225, 4294967295
  store i64 %5226, i64* %RSI, align 8, !tbaa !2428
  %5227 = trunc i64 %5225 to i32
  %5228 = add i32 %5227, %5177
  %5229 = zext i32 %5228 to i64
  store i64 %5229, i64* %RDX, align 8, !tbaa !2428
  %5230 = icmp ult i32 %5228, %5177
  %5231 = icmp ult i32 %5228, %5227
  %5232 = or i1 %5230, %5231
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %70, align 1, !tbaa !2432
  %5234 = and i32 %5228, 255
  %5235 = tail call i32 @llvm.ctpop.i32(i32 %5234) #8
  %5236 = trunc i32 %5235 to i8
  %5237 = and i8 %5236, 1
  %5238 = xor i8 %5237, 1
  store i8 %5238, i8* %76, align 1, !tbaa !2446
  %5239 = xor i64 %5225, %5175
  %5240 = trunc i64 %5239 to i32
  %5241 = xor i32 %5240, %5228
  %5242 = lshr i32 %5241, 4
  %5243 = trunc i32 %5242 to i8
  %5244 = and i8 %5243, 1
  store i8 %5244, i8* %81, align 1, !tbaa !2447
  %5245 = icmp eq i32 %5228, 0
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %84, align 1, !tbaa !2448
  %5247 = lshr i32 %5228, 31
  %5248 = trunc i32 %5247 to i8
  store i8 %5248, i8* %87, align 1, !tbaa !2449
  %5249 = lshr i32 %5227, 31
  %5250 = xor i32 %5247, %5186
  %5251 = xor i32 %5247, %5249
  %5252 = add nuw nsw i32 %5250, %5251
  %5253 = icmp eq i32 %5252, 2
  %5254 = zext i1 %5253 to i8
  store i8 %5254, i8* %93, align 1, !tbaa !2450
  %5255 = add i64 %5214, -60
  %5256 = add i64 %7069, 2043
  store i64 %5256, i64* %PC, align 8
  %5257 = inttoptr i64 %5255 to i32*
  %5258 = load i32, i32* %5257, align 4
  %5259 = add i32 %5258, %5228
  %5260 = zext i32 %5259 to i64
  store i64 %5260, i64* %RDX, align 8, !tbaa !2428
  %5261 = icmp ult i32 %5259, %5228
  %5262 = icmp ult i32 %5259, %5258
  %5263 = or i1 %5261, %5262
  %5264 = zext i1 %5263 to i8
  store i8 %5264, i8* %70, align 1, !tbaa !2432
  %5265 = and i32 %5259, 255
  %5266 = tail call i32 @llvm.ctpop.i32(i32 %5265) #8
  %5267 = trunc i32 %5266 to i8
  %5268 = and i8 %5267, 1
  %5269 = xor i8 %5268, 1
  store i8 %5269, i8* %76, align 1, !tbaa !2446
  %5270 = xor i32 %5258, %5228
  %5271 = xor i32 %5270, %5259
  %5272 = lshr i32 %5271, 4
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  store i8 %5274, i8* %81, align 1, !tbaa !2447
  %5275 = icmp eq i32 %5259, 0
  %5276 = zext i1 %5275 to i8
  store i8 %5276, i8* %84, align 1, !tbaa !2448
  %5277 = lshr i32 %5259, 31
  %5278 = trunc i32 %5277 to i8
  store i8 %5278, i8* %87, align 1, !tbaa !2449
  %5279 = lshr i32 %5258, 31
  %5280 = xor i32 %5277, %5247
  %5281 = xor i32 %5277, %5279
  %5282 = add nuw nsw i32 %5280, %5281
  %5283 = icmp eq i32 %5282, 2
  %5284 = zext i1 %5283 to i8
  store i8 %5284, i8* %93, align 1, !tbaa !2450
  %5285 = sext i32 %5259 to i64
  store i64 %5285, i64* %RCX, align 8, !tbaa !2428
  %5286 = load i64, i64* %RAX, align 8
  %5287 = shl nsw i64 %5285, 2
  %5288 = add i64 %5287, %5286
  %5289 = add i64 %7069, 2051
  store i64 %5289, i64* %PC, align 8
  %5290 = load <2 x float>, <2 x float>* %208, align 1
  %5291 = load <2 x i32>, <2 x i32>* %209, align 1
  %5292 = inttoptr i64 %5288 to float*
  %5293 = load float, float* %5292, align 4
  %5294 = extractelement <2 x float> %5290, i32 0
  %5295 = fmul float %5294, %5293
  store float %5295, float* %201, align 1, !tbaa !2451
  %5296 = bitcast <2 x float> %5290 to <2 x i32>
  %5297 = extractelement <2 x i32> %5296, i32 1
  store i32 %5297, i32* %210, align 1, !tbaa !2451
  %5298 = extractelement <2 x i32> %5291, i32 0
  store i32 %5298, i32* %211, align 1, !tbaa !2451
  %5299 = extractelement <2 x i32> %5291, i32 1
  store i32 %5299, i32* %212, align 1, !tbaa !2451
  %5300 = load <2 x float>, <2 x float>* %198, align 1
  %5301 = load <2 x i32>, <2 x i32>* %199, align 1
  %5302 = load <2 x float>, <2 x float>* %213, align 1
  %5303 = extractelement <2 x float> %5300, i32 0
  %5304 = extractelement <2 x float> %5302, i32 0
  %5305 = fadd float %5303, %5304
  store float %5305, float* %194, align 1, !tbaa !2451
  %5306 = bitcast <2 x float> %5300 to <2 x i32>
  %5307 = extractelement <2 x i32> %5306, i32 1
  store i32 %5307, i32* %189, align 1, !tbaa !2451
  %5308 = extractelement <2 x i32> %5301, i32 0
  store i32 %5308, i32* %190, align 1, !tbaa !2451
  %5309 = extractelement <2 x i32> %5301, i32 1
  store i32 %5309, i32* %192, align 1, !tbaa !2451
  %5310 = load i64, i64* %RBP, align 8
  %5311 = add i64 %5310, -32
  %5312 = add i64 %7069, 2059
  store i64 %5312, i64* %PC, align 8
  %5313 = inttoptr i64 %5311 to i64*
  %5314 = load i64, i64* %5313, align 8
  store i64 %5314, i64* %RAX, align 8, !tbaa !2428
  %5315 = add i64 %7069, 2062
  store i64 %5315, i64* %PC, align 8
  %5316 = inttoptr i64 %5314 to i64*
  %5317 = load i64, i64* %5316, align 8
  store i64 %5317, i64* %RAX, align 8, !tbaa !2428
  %5318 = add i64 %7069, 2066
  store i64 %5318, i64* %PC, align 8
  %5319 = load i64, i64* %5313, align 8
  store i64 %5319, i64* %RCX, align 8, !tbaa !2428
  %5320 = add i64 %5319, 12
  %5321 = add i64 %7069, 2069
  store i64 %5321, i64* %PC, align 8
  %5322 = inttoptr i64 %5320 to i32*
  %5323 = load i32, i32* %5322, align 4
  %5324 = shl i32 %5323, 1
  %5325 = icmp slt i32 %5323, 0
  %5326 = icmp slt i32 %5324, 0
  %5327 = xor i1 %5325, %5326
  %5328 = zext i32 %5324 to i64
  store i64 %5328, i64* %RDX, align 8, !tbaa !2428
  %.lobit12 = lshr i32 %5323, 31
  %5329 = trunc i32 %.lobit12 to i8
  store i8 %5329, i8* %70, align 1, !tbaa !2453
  %5330 = and i32 %5324, 254
  %5331 = tail call i32 @llvm.ctpop.i32(i32 %5330) #8
  %5332 = trunc i32 %5331 to i8
  %5333 = and i8 %5332, 1
  %5334 = xor i8 %5333, 1
  store i8 %5334, i8* %76, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  %5335 = icmp eq i32 %5324, 0
  %5336 = zext i1 %5335 to i8
  store i8 %5336, i8* %84, align 1, !tbaa !2453
  %5337 = lshr i32 %5323, 30
  %5338 = trunc i32 %5337 to i8
  %5339 = and i8 %5338, 1
  store i8 %5339, i8* %87, align 1, !tbaa !2453
  %5340 = zext i1 %5327 to i8
  store i8 %5340, i8* %93, align 1, !tbaa !2453
  %5341 = add i64 %7069, 2076
  store i64 %5341, i64* %PC, align 8
  %5342 = load i64, i64* %5313, align 8
  store i64 %5342, i64* %RCX, align 8, !tbaa !2428
  %5343 = add i64 %5342, 16
  %5344 = add i64 %7069, 2080
  store i64 %5344, i64* %PC, align 8
  %5345 = inttoptr i64 %5343 to i32*
  %5346 = load i32, i32* %5345, align 4
  %5347 = sext i32 %5324 to i64
  %5348 = sext i32 %5346 to i64
  %5349 = mul nsw i64 %5348, %5347
  %5350 = trunc i64 %5349 to i32
  %5351 = and i64 %5349, 4294967294
  store i64 %5351, i64* %RDX, align 8, !tbaa !2428
  %5352 = shl i64 %5349, 32
  %5353 = ashr exact i64 %5352, 32
  %5354 = icmp ne i64 %5353, %5349
  %5355 = zext i1 %5354 to i8
  store i8 %5355, i8* %70, align 1, !tbaa !2432
  %5356 = and i32 %5350, 254
  %5357 = tail call i32 @llvm.ctpop.i32(i32 %5356) #8
  %5358 = trunc i32 %5357 to i8
  %5359 = and i8 %5358, 1
  %5360 = xor i8 %5359, 1
  store i8 %5360, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5361 = lshr i32 %5350, 31
  %5362 = trunc i32 %5361 to i8
  store i8 %5362, i8* %87, align 1, !tbaa !2449
  store i8 %5355, i8* %93, align 1, !tbaa !2450
  %5363 = add i64 %7069, 2084
  store i64 %5363, i64* %PC, align 8
  %5364 = load i64, i64* %5313, align 8
  store i64 %5364, i64* %RCX, align 8, !tbaa !2428
  %5365 = add i64 %5364, 20
  %5366 = add i64 %7069, 2088
  store i64 %5366, i64* %PC, align 8
  %5367 = inttoptr i64 %5365 to i32*
  %5368 = load i32, i32* %5367, align 4
  %5369 = shl i64 %5349, 32
  %5370 = ashr exact i64 %5369, 32
  %5371 = sext i32 %5368 to i64
  %5372 = mul nsw i64 %5371, %5370
  %5373 = trunc i64 %5372 to i32
  %5374 = and i64 %5372, 4294967295
  store i64 %5374, i64* %RDX, align 8, !tbaa !2428
  %5375 = shl i64 %5372, 32
  %5376 = ashr exact i64 %5375, 32
  %5377 = icmp ne i64 %5376, %5372
  %5378 = zext i1 %5377 to i8
  store i8 %5378, i8* %70, align 1, !tbaa !2432
  %5379 = and i32 %5373, 255
  %5380 = tail call i32 @llvm.ctpop.i32(i32 %5379) #8
  %5381 = trunc i32 %5380 to i8
  %5382 = and i8 %5381, 1
  %5383 = xor i8 %5382, 1
  store i8 %5383, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5384 = lshr i32 %5373, 31
  %5385 = trunc i32 %5384 to i8
  store i8 %5385, i8* %87, align 1, !tbaa !2449
  store i8 %5378, i8* %93, align 1, !tbaa !2450
  %5386 = load i64, i64* %RBP, align 8
  %5387 = add i64 %5386, -52
  %5388 = add i64 %7069, 2091
  store i64 %5388, i64* %PC, align 8
  %5389 = inttoptr i64 %5387 to i32*
  %5390 = load i32, i32* %5389, align 4
  %5391 = zext i32 %5390 to i64
  store i64 %5391, i64* %RSI, align 8, !tbaa !2428
  %5392 = add i64 %5386, -32
  %5393 = add i64 %7069, 2095
  store i64 %5393, i64* %PC, align 8
  %5394 = inttoptr i64 %5392 to i64*
  %5395 = load i64, i64* %5394, align 8
  store i64 %5395, i64* %RCX, align 8, !tbaa !2428
  %5396 = add i64 %5395, 16
  %5397 = add i64 %7069, 2099
  store i64 %5397, i64* %PC, align 8
  %5398 = inttoptr i64 %5396 to i32*
  %5399 = load i32, i32* %5398, align 4
  %5400 = sext i32 %5390 to i64
  %5401 = sext i32 %5399 to i64
  %5402 = mul nsw i64 %5401, %5400
  %5403 = trunc i64 %5402 to i32
  %5404 = and i64 %5402, 4294967295
  store i64 %5404, i64* %RSI, align 8, !tbaa !2428
  %5405 = shl i64 %5402, 32
  %5406 = ashr exact i64 %5405, 32
  %5407 = icmp ne i64 %5406, %5402
  %5408 = zext i1 %5407 to i8
  store i8 %5408, i8* %70, align 1, !tbaa !2432
  %5409 = and i32 %5403, 255
  %5410 = tail call i32 @llvm.ctpop.i32(i32 %5409) #8
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  store i8 %5413, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5414 = lshr i32 %5403, 31
  %5415 = trunc i32 %5414 to i8
  store i8 %5415, i8* %87, align 1, !tbaa !2449
  store i8 %5408, i8* %93, align 1, !tbaa !2450
  %5416 = add i64 %7069, 2103
  store i64 %5416, i64* %PC, align 8
  %5417 = load i64, i64* %5394, align 8
  store i64 %5417, i64* %RCX, align 8, !tbaa !2428
  %5418 = add i64 %5417, 20
  %5419 = add i64 %7069, 2107
  store i64 %5419, i64* %PC, align 8
  %5420 = inttoptr i64 %5418 to i32*
  %5421 = load i32, i32* %5420, align 4
  %5422 = shl i64 %5402, 32
  %5423 = ashr exact i64 %5422, 32
  %5424 = sext i32 %5421 to i64
  %5425 = mul nsw i64 %5424, %5423
  %5426 = and i64 %5425, 4294967295
  store i64 %5426, i64* %RSI, align 8, !tbaa !2428
  %5427 = trunc i64 %5425 to i32
  %5428 = trunc i64 %5372 to i32
  %5429 = add i32 %5427, %5428
  %5430 = zext i32 %5429 to i64
  store i64 %5430, i64* %RDX, align 8, !tbaa !2428
  %5431 = icmp ult i32 %5429, %5428
  %5432 = icmp ult i32 %5429, %5427
  %5433 = or i1 %5431, %5432
  %5434 = zext i1 %5433 to i8
  store i8 %5434, i8* %70, align 1, !tbaa !2432
  %5435 = and i32 %5429, 255
  %5436 = tail call i32 @llvm.ctpop.i32(i32 %5435) #8
  %5437 = trunc i32 %5436 to i8
  %5438 = and i8 %5437, 1
  %5439 = xor i8 %5438, 1
  store i8 %5439, i8* %76, align 1, !tbaa !2446
  %5440 = xor i64 %5425, %5372
  %5441 = trunc i64 %5440 to i32
  %5442 = xor i32 %5441, %5429
  %5443 = lshr i32 %5442, 4
  %5444 = trunc i32 %5443 to i8
  %5445 = and i8 %5444, 1
  store i8 %5445, i8* %81, align 1, !tbaa !2447
  %5446 = icmp eq i32 %5429, 0
  %5447 = zext i1 %5446 to i8
  store i8 %5447, i8* %84, align 1, !tbaa !2448
  %5448 = lshr i32 %5429, 31
  %5449 = trunc i32 %5448 to i8
  store i8 %5449, i8* %87, align 1, !tbaa !2449
  %5450 = lshr i32 %5428, 31
  %5451 = lshr i32 %5427, 31
  %5452 = xor i32 %5448, %5450
  %5453 = xor i32 %5448, %5451
  %5454 = add nuw nsw i32 %5452, %5453
  %5455 = icmp eq i32 %5454, 2
  %5456 = zext i1 %5455 to i8
  store i8 %5456, i8* %93, align 1, !tbaa !2450
  %5457 = load i64, i64* %RBP, align 8
  %5458 = add i64 %5457, -56
  %5459 = add i64 %7069, 2112
  store i64 %5459, i64* %PC, align 8
  %5460 = inttoptr i64 %5458 to i32*
  %5461 = load i32, i32* %5460, align 4
  %5462 = zext i32 %5461 to i64
  store i64 %5462, i64* %RSI, align 8, !tbaa !2428
  %5463 = add i64 %5457, -32
  %5464 = add i64 %7069, 2116
  store i64 %5464, i64* %PC, align 8
  %5465 = inttoptr i64 %5463 to i64*
  %5466 = load i64, i64* %5465, align 8
  store i64 %5466, i64* %RCX, align 8, !tbaa !2428
  %5467 = add i64 %5466, 20
  %5468 = add i64 %7069, 2120
  store i64 %5468, i64* %PC, align 8
  %5469 = inttoptr i64 %5467 to i32*
  %5470 = load i32, i32* %5469, align 4
  %5471 = sext i32 %5461 to i64
  %5472 = sext i32 %5470 to i64
  %5473 = mul nsw i64 %5472, %5471
  %5474 = and i64 %5473, 4294967295
  store i64 %5474, i64* %RSI, align 8, !tbaa !2428
  %5475 = trunc i64 %5473 to i32
  %5476 = add i32 %5475, %5429
  %5477 = zext i32 %5476 to i64
  store i64 %5477, i64* %RDX, align 8, !tbaa !2428
  %5478 = icmp ult i32 %5476, %5429
  %5479 = icmp ult i32 %5476, %5475
  %5480 = or i1 %5478, %5479
  %5481 = zext i1 %5480 to i8
  store i8 %5481, i8* %70, align 1, !tbaa !2432
  %5482 = and i32 %5476, 255
  %5483 = tail call i32 @llvm.ctpop.i32(i32 %5482) #8
  %5484 = trunc i32 %5483 to i8
  %5485 = and i8 %5484, 1
  %5486 = xor i8 %5485, 1
  store i8 %5486, i8* %76, align 1, !tbaa !2446
  %5487 = xor i64 %5473, %5430
  %5488 = trunc i64 %5487 to i32
  %5489 = xor i32 %5488, %5476
  %5490 = lshr i32 %5489, 4
  %5491 = trunc i32 %5490 to i8
  %5492 = and i8 %5491, 1
  store i8 %5492, i8* %81, align 1, !tbaa !2447
  %5493 = icmp eq i32 %5476, 0
  %5494 = zext i1 %5493 to i8
  store i8 %5494, i8* %84, align 1, !tbaa !2448
  %5495 = lshr i32 %5476, 31
  %5496 = trunc i32 %5495 to i8
  store i8 %5496, i8* %87, align 1, !tbaa !2449
  %5497 = lshr i32 %5475, 31
  %5498 = xor i32 %5495, %5448
  %5499 = xor i32 %5495, %5497
  %5500 = add nuw nsw i32 %5498, %5499
  %5501 = icmp eq i32 %5500, 2
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %93, align 1, !tbaa !2450
  %5503 = add i64 %5457, -60
  %5504 = add i64 %7069, 2125
  store i64 %5504, i64* %PC, align 8
  %5505 = inttoptr i64 %5503 to i32*
  %5506 = load i32, i32* %5505, align 4
  %5507 = add i32 %5506, %5476
  %5508 = zext i32 %5507 to i64
  store i64 %5508, i64* %RDX, align 8, !tbaa !2428
  %5509 = icmp ult i32 %5507, %5476
  %5510 = icmp ult i32 %5507, %5506
  %5511 = or i1 %5509, %5510
  %5512 = zext i1 %5511 to i8
  store i8 %5512, i8* %70, align 1, !tbaa !2432
  %5513 = and i32 %5507, 255
  %5514 = tail call i32 @llvm.ctpop.i32(i32 %5513) #8
  %5515 = trunc i32 %5514 to i8
  %5516 = and i8 %5515, 1
  %5517 = xor i8 %5516, 1
  store i8 %5517, i8* %76, align 1, !tbaa !2446
  %5518 = xor i32 %5506, %5476
  %5519 = xor i32 %5518, %5507
  %5520 = lshr i32 %5519, 4
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  store i8 %5522, i8* %81, align 1, !tbaa !2447
  %5523 = icmp eq i32 %5507, 0
  %5524 = zext i1 %5523 to i8
  store i8 %5524, i8* %84, align 1, !tbaa !2448
  %5525 = lshr i32 %5507, 31
  %5526 = trunc i32 %5525 to i8
  store i8 %5526, i8* %87, align 1, !tbaa !2449
  %5527 = lshr i32 %5506, 31
  %5528 = xor i32 %5525, %5495
  %5529 = xor i32 %5525, %5527
  %5530 = add nuw nsw i32 %5528, %5529
  %5531 = icmp eq i32 %5530, 2
  %5532 = zext i1 %5531 to i8
  store i8 %5532, i8* %93, align 1, !tbaa !2450
  %5533 = sext i32 %5507 to i64
  store i64 %5533, i64* %RCX, align 8, !tbaa !2428
  %5534 = load i64, i64* %RAX, align 8
  %5535 = shl nsw i64 %5533, 2
  %5536 = add i64 %5535, %5534
  %5537 = add i64 %7069, 2133
  store i64 %5537, i64* %PC, align 8
  %5538 = inttoptr i64 %5536 to i32*
  %5539 = load i32, i32* %5538, align 4
  %5540 = bitcast %union.VectorReg* %5 to i32*
  store i32 %5539, i32* %5540, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %5541 = load i64, i64* %RBP, align 8
  %5542 = add i64 %5541, -40
  %5543 = add i64 %7069, 2137
  store i64 %5543, i64* %PC, align 8
  %5544 = inttoptr i64 %5542 to i64*
  %5545 = load i64, i64* %5544, align 8
  store i64 %5545, i64* %RAX, align 8, !tbaa !2428
  %5546 = add i64 %7069, 2140
  store i64 %5546, i64* %PC, align 8
  %5547 = inttoptr i64 %5545 to i64*
  %5548 = load i64, i64* %5547, align 8
  store i64 %5548, i64* %RAX, align 8, !tbaa !2428
  %5549 = add i64 %7069, 2144
  store i64 %5549, i64* %PC, align 8
  %5550 = load i64, i64* %5544, align 8
  store i64 %5550, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5551 = add i64 %7069, 2152
  store i64 %5551, i64* %PC, align 8
  %5552 = load i64, i64* %5544, align 8
  store i64 %5552, i64* %RCX, align 8, !tbaa !2428
  %5553 = add i64 %7069, 2156
  store i64 %5553, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5554 = add i64 %7069, 2160
  store i64 %5554, i64* %PC, align 8
  %5555 = load i64, i64* %5544, align 8
  store i64 %5555, i64* %RCX, align 8, !tbaa !2428
  %5556 = add i64 %7069, 2164
  store i64 %5556, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5557 = add i64 %5541, -52
  %5558 = add i64 %7069, 2167
  store i64 %5558, i64* %PC, align 8
  %5559 = inttoptr i64 %5557 to i32*
  %5560 = load i32, i32* %5559, align 4
  %5561 = zext i32 %5560 to i64
  store i64 %5561, i64* %RSI, align 8, !tbaa !2428
  %5562 = add i64 %7069, 2171
  store i64 %5562, i64* %PC, align 8
  %5563 = load i64, i64* %5544, align 8
  store i64 %5563, i64* %RCX, align 8, !tbaa !2428
  %5564 = add i64 %5563, 16
  %5565 = add i64 %7069, 2175
  store i64 %5565, i64* %PC, align 8
  %5566 = inttoptr i64 %5564 to i32*
  %5567 = load i32, i32* %5566, align 4
  %5568 = sext i32 %5560 to i64
  %5569 = sext i32 %5567 to i64
  %5570 = mul nsw i64 %5569, %5568
  %5571 = trunc i64 %5570 to i32
  %5572 = and i64 %5570, 4294967295
  store i64 %5572, i64* %RSI, align 8, !tbaa !2428
  %5573 = shl i64 %5570, 32
  %5574 = ashr exact i64 %5573, 32
  %5575 = icmp ne i64 %5574, %5570
  %5576 = zext i1 %5575 to i8
  store i8 %5576, i8* %70, align 1, !tbaa !2432
  %5577 = and i32 %5571, 255
  %5578 = tail call i32 @llvm.ctpop.i32(i32 %5577) #8
  %5579 = trunc i32 %5578 to i8
  %5580 = and i8 %5579, 1
  %5581 = xor i8 %5580, 1
  store i8 %5581, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5582 = lshr i32 %5571, 31
  %5583 = trunc i32 %5582 to i8
  store i8 %5583, i8* %87, align 1, !tbaa !2449
  store i8 %5576, i8* %93, align 1, !tbaa !2450
  %5584 = add i64 %7069, 2179
  store i64 %5584, i64* %PC, align 8
  %5585 = load i64, i64* %5544, align 8
  store i64 %5585, i64* %RCX, align 8, !tbaa !2428
  %5586 = add i64 %5585, 20
  %5587 = add i64 %7069, 2183
  store i64 %5587, i64* %PC, align 8
  %5588 = inttoptr i64 %5586 to i32*
  %5589 = load i32, i32* %5588, align 4
  %5590 = shl i64 %5570, 32
  %5591 = ashr exact i64 %5590, 32
  %5592 = sext i32 %5589 to i64
  %5593 = mul nsw i64 %5592, %5591
  %5594 = and i64 %5593, 4294967295
  store i64 %5594, i64* %RSI, align 8, !tbaa !2428
  %5595 = trunc i64 %5593 to i32
  %5596 = and i64 %5593, 4294967295
  store i64 %5596, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5597 = and i32 %5595, 255
  %5598 = tail call i32 @llvm.ctpop.i32(i32 %5597) #8
  %5599 = trunc i32 %5598 to i8
  %5600 = and i8 %5599, 1
  %5601 = xor i8 %5600, 1
  store i8 %5601, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5602 = icmp eq i32 %5595, 0
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %84, align 1, !tbaa !2448
  %5604 = lshr i32 %5595, 31
  %5605 = trunc i32 %5604 to i8
  store i8 %5605, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5606 = load i64, i64* %RBP, align 8
  %5607 = add i64 %5606, -56
  %5608 = add i64 %7069, 2188
  store i64 %5608, i64* %PC, align 8
  %5609 = inttoptr i64 %5607 to i32*
  %5610 = load i32, i32* %5609, align 4
  %5611 = zext i32 %5610 to i64
  store i64 %5611, i64* %RSI, align 8, !tbaa !2428
  %5612 = add i64 %5606, -40
  %5613 = add i64 %7069, 2192
  store i64 %5613, i64* %PC, align 8
  %5614 = inttoptr i64 %5612 to i64*
  %5615 = load i64, i64* %5614, align 8
  store i64 %5615, i64* %RCX, align 8, !tbaa !2428
  %5616 = add i64 %5615, 20
  %5617 = add i64 %7069, 2196
  store i64 %5617, i64* %PC, align 8
  %5618 = inttoptr i64 %5616 to i32*
  %5619 = load i32, i32* %5618, align 4
  %5620 = sext i32 %5610 to i64
  %5621 = sext i32 %5619 to i64
  %5622 = mul nsw i64 %5621, %5620
  %5623 = and i64 %5622, 4294967295
  store i64 %5623, i64* %RSI, align 8, !tbaa !2428
  %5624 = trunc i64 %5622 to i32
  %5625 = add i32 %5624, %5595
  %5626 = zext i32 %5625 to i64
  store i64 %5626, i64* %RDX, align 8, !tbaa !2428
  %5627 = icmp ult i32 %5625, %5595
  %5628 = icmp ult i32 %5625, %5624
  %5629 = or i1 %5627, %5628
  %5630 = zext i1 %5629 to i8
  store i8 %5630, i8* %70, align 1, !tbaa !2432
  %5631 = and i32 %5625, 255
  %5632 = tail call i32 @llvm.ctpop.i32(i32 %5631) #8
  %5633 = trunc i32 %5632 to i8
  %5634 = and i8 %5633, 1
  %5635 = xor i8 %5634, 1
  store i8 %5635, i8* %76, align 1, !tbaa !2446
  %5636 = xor i64 %5622, %5593
  %5637 = trunc i64 %5636 to i32
  %5638 = xor i32 %5637, %5625
  %5639 = lshr i32 %5638, 4
  %5640 = trunc i32 %5639 to i8
  %5641 = and i8 %5640, 1
  store i8 %5641, i8* %81, align 1, !tbaa !2447
  %5642 = icmp eq i32 %5625, 0
  %5643 = zext i1 %5642 to i8
  store i8 %5643, i8* %84, align 1, !tbaa !2448
  %5644 = lshr i32 %5625, 31
  %5645 = trunc i32 %5644 to i8
  store i8 %5645, i8* %87, align 1, !tbaa !2449
  %5646 = lshr i32 %5624, 31
  %5647 = xor i32 %5644, %5604
  %5648 = xor i32 %5644, %5646
  %5649 = add nuw nsw i32 %5647, %5648
  %5650 = icmp eq i32 %5649, 2
  %5651 = zext i1 %5650 to i8
  store i8 %5651, i8* %93, align 1, !tbaa !2450
  %5652 = add i64 %5606, -60
  %5653 = add i64 %7069, 2201
  store i64 %5653, i64* %PC, align 8
  %5654 = inttoptr i64 %5652 to i32*
  %5655 = load i32, i32* %5654, align 4
  %5656 = add i32 %5655, -1
  %5657 = zext i32 %5656 to i64
  store i64 %5657, i64* %RSI, align 8, !tbaa !2428
  %5658 = lshr i32 %5656, 31
  %5659 = add i32 %5656, %5625
  %5660 = zext i32 %5659 to i64
  store i64 %5660, i64* %RDX, align 8, !tbaa !2428
  %5661 = icmp ult i32 %5659, %5625
  %5662 = icmp ult i32 %5659, %5656
  %5663 = or i1 %5661, %5662
  %5664 = zext i1 %5663 to i8
  store i8 %5664, i8* %70, align 1, !tbaa !2432
  %5665 = and i32 %5659, 255
  %5666 = tail call i32 @llvm.ctpop.i32(i32 %5665) #8
  %5667 = trunc i32 %5666 to i8
  %5668 = and i8 %5667, 1
  %5669 = xor i8 %5668, 1
  store i8 %5669, i8* %76, align 1, !tbaa !2446
  %5670 = xor i32 %5656, %5625
  %5671 = xor i32 %5670, %5659
  %5672 = lshr i32 %5671, 4
  %5673 = trunc i32 %5672 to i8
  %5674 = and i8 %5673, 1
  store i8 %5674, i8* %81, align 1, !tbaa !2447
  %5675 = icmp eq i32 %5659, 0
  %5676 = zext i1 %5675 to i8
  store i8 %5676, i8* %84, align 1, !tbaa !2448
  %5677 = lshr i32 %5659, 31
  %5678 = trunc i32 %5677 to i8
  store i8 %5678, i8* %87, align 1, !tbaa !2449
  %5679 = xor i32 %5677, %5644
  %5680 = xor i32 %5677, %5658
  %5681 = add nuw nsw i32 %5679, %5680
  %5682 = icmp eq i32 %5681, 2
  %5683 = zext i1 %5682 to i8
  store i8 %5683, i8* %93, align 1, !tbaa !2450
  %5684 = sext i32 %5659 to i64
  store i64 %5684, i64* %RCX, align 8, !tbaa !2428
  %5685 = load i64, i64* %RAX, align 8
  %5686 = shl nsw i64 %5684, 2
  %5687 = add i64 %5686, %5685
  %5688 = add i64 %7069, 2214
  store i64 %5688, i64* %PC, align 8
  %5689 = load <2 x float>, <2 x float>* %208, align 1
  %5690 = load <2 x i32>, <2 x i32>* %209, align 1
  %5691 = inttoptr i64 %5687 to float*
  %5692 = load float, float* %5691, align 4
  %5693 = extractelement <2 x float> %5689, i32 0
  %5694 = fmul float %5693, %5692
  store float %5694, float* %201, align 1, !tbaa !2451
  %5695 = bitcast <2 x float> %5689 to <2 x i32>
  %5696 = extractelement <2 x i32> %5695, i32 1
  store i32 %5696, i32* %210, align 1, !tbaa !2451
  %5697 = extractelement <2 x i32> %5690, i32 0
  store i32 %5697, i32* %211, align 1, !tbaa !2451
  %5698 = extractelement <2 x i32> %5690, i32 1
  store i32 %5698, i32* %212, align 1, !tbaa !2451
  %5699 = load <2 x float>, <2 x float>* %198, align 1
  %5700 = load <2 x i32>, <2 x i32>* %199, align 1
  %5701 = load <2 x float>, <2 x float>* %213, align 1
  %5702 = extractelement <2 x float> %5699, i32 0
  %5703 = extractelement <2 x float> %5701, i32 0
  %5704 = fadd float %5702, %5703
  store float %5704, float* %194, align 1, !tbaa !2451
  %5705 = bitcast <2 x float> %5699 to <2 x i32>
  %5706 = extractelement <2 x i32> %5705, i32 1
  store i32 %5706, i32* %189, align 1, !tbaa !2451
  %5707 = extractelement <2 x i32> %5700, i32 0
  store i32 %5707, i32* %190, align 1, !tbaa !2451
  %5708 = extractelement <2 x i32> %5700, i32 1
  store i32 %5708, i32* %192, align 1, !tbaa !2451
  %5709 = load i64, i64* %RBP, align 8
  %5710 = add i64 %5709, 16
  %5711 = add i64 %7069, 2222
  store i64 %5711, i64* %PC, align 8
  %5712 = inttoptr i64 %5710 to i64*
  %5713 = load i64, i64* %5712, align 8
  store i64 %5713, i64* %RAX, align 8, !tbaa !2428
  %5714 = add i64 %7069, 2225
  store i64 %5714, i64* %PC, align 8
  %5715 = inttoptr i64 %5713 to i64*
  %5716 = load i64, i64* %5715, align 8
  store i64 %5716, i64* %RAX, align 8, !tbaa !2428
  %5717 = add i64 %7069, 2229
  store i64 %5717, i64* %PC, align 8
  %5718 = load i64, i64* %5712, align 8
  store i64 %5718, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5719 = add i64 %7069, 2237
  store i64 %5719, i64* %PC, align 8
  %5720 = load i64, i64* %5712, align 8
  store i64 %5720, i64* %RCX, align 8, !tbaa !2428
  %5721 = add i64 %7069, 2241
  store i64 %5721, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5722 = add i64 %7069, 2245
  store i64 %5722, i64* %PC, align 8
  %5723 = load i64, i64* %5712, align 8
  store i64 %5723, i64* %RCX, align 8, !tbaa !2428
  %5724 = add i64 %7069, 2249
  store i64 %5724, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5725 = add i64 %5709, -52
  %5726 = add i64 %7069, 2252
  store i64 %5726, i64* %PC, align 8
  %5727 = inttoptr i64 %5725 to i32*
  %5728 = load i32, i32* %5727, align 4
  %5729 = zext i32 %5728 to i64
  store i64 %5729, i64* %RSI, align 8, !tbaa !2428
  %5730 = add i64 %7069, 2256
  store i64 %5730, i64* %PC, align 8
  %5731 = load i64, i64* %5712, align 8
  store i64 %5731, i64* %RCX, align 8, !tbaa !2428
  %5732 = add i64 %5731, 16
  %5733 = add i64 %7069, 2260
  store i64 %5733, i64* %PC, align 8
  %5734 = inttoptr i64 %5732 to i32*
  %5735 = load i32, i32* %5734, align 4
  %5736 = sext i32 %5728 to i64
  %5737 = sext i32 %5735 to i64
  %5738 = mul nsw i64 %5737, %5736
  %5739 = trunc i64 %5738 to i32
  %5740 = and i64 %5738, 4294967295
  store i64 %5740, i64* %RSI, align 8, !tbaa !2428
  %5741 = shl i64 %5738, 32
  %5742 = ashr exact i64 %5741, 32
  %5743 = icmp ne i64 %5742, %5738
  %5744 = zext i1 %5743 to i8
  store i8 %5744, i8* %70, align 1, !tbaa !2432
  %5745 = and i32 %5739, 255
  %5746 = tail call i32 @llvm.ctpop.i32(i32 %5745) #8
  %5747 = trunc i32 %5746 to i8
  %5748 = and i8 %5747, 1
  %5749 = xor i8 %5748, 1
  store i8 %5749, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5750 = lshr i32 %5739, 31
  %5751 = trunc i32 %5750 to i8
  store i8 %5751, i8* %87, align 1, !tbaa !2449
  store i8 %5744, i8* %93, align 1, !tbaa !2450
  %5752 = add i64 %7069, 2264
  store i64 %5752, i64* %PC, align 8
  %5753 = load i64, i64* %5712, align 8
  store i64 %5753, i64* %RCX, align 8, !tbaa !2428
  %5754 = add i64 %5753, 20
  %5755 = add i64 %7069, 2268
  store i64 %5755, i64* %PC, align 8
  %5756 = inttoptr i64 %5754 to i32*
  %5757 = load i32, i32* %5756, align 4
  %5758 = shl i64 %5738, 32
  %5759 = ashr exact i64 %5758, 32
  %5760 = sext i32 %5757 to i64
  %5761 = mul nsw i64 %5760, %5759
  %5762 = and i64 %5761, 4294967295
  store i64 %5762, i64* %RSI, align 8, !tbaa !2428
  %5763 = trunc i64 %5761 to i32
  %5764 = and i64 %5761, 4294967295
  store i64 %5764, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %5765 = and i32 %5763, 255
  %5766 = tail call i32 @llvm.ctpop.i32(i32 %5765) #8
  %5767 = trunc i32 %5766 to i8
  %5768 = and i8 %5767, 1
  %5769 = xor i8 %5768, 1
  store i8 %5769, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %5770 = icmp eq i32 %5763, 0
  %5771 = zext i1 %5770 to i8
  store i8 %5771, i8* %84, align 1, !tbaa !2448
  %5772 = lshr i32 %5763, 31
  %5773 = trunc i32 %5772 to i8
  store i8 %5773, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %5774 = load i64, i64* %RBP, align 8
  %5775 = add i64 %5774, -56
  %5776 = add i64 %7069, 2273
  store i64 %5776, i64* %PC, align 8
  %5777 = inttoptr i64 %5775 to i32*
  %5778 = load i32, i32* %5777, align 4
  %5779 = zext i32 %5778 to i64
  store i64 %5779, i64* %RSI, align 8, !tbaa !2428
  %5780 = add i64 %5774, 16
  %5781 = add i64 %7069, 2277
  store i64 %5781, i64* %PC, align 8
  %5782 = inttoptr i64 %5780 to i64*
  %5783 = load i64, i64* %5782, align 8
  store i64 %5783, i64* %RCX, align 8, !tbaa !2428
  %5784 = add i64 %5783, 20
  %5785 = add i64 %7069, 2281
  store i64 %5785, i64* %PC, align 8
  %5786 = inttoptr i64 %5784 to i32*
  %5787 = load i32, i32* %5786, align 4
  %5788 = sext i32 %5778 to i64
  %5789 = sext i32 %5787 to i64
  %5790 = mul nsw i64 %5789, %5788
  %5791 = and i64 %5790, 4294967295
  store i64 %5791, i64* %RSI, align 8, !tbaa !2428
  %5792 = trunc i64 %5790 to i32
  %5793 = add i32 %5792, %5763
  %5794 = zext i32 %5793 to i64
  store i64 %5794, i64* %RDX, align 8, !tbaa !2428
  %5795 = icmp ult i32 %5793, %5763
  %5796 = icmp ult i32 %5793, %5792
  %5797 = or i1 %5795, %5796
  %5798 = zext i1 %5797 to i8
  store i8 %5798, i8* %70, align 1, !tbaa !2432
  %5799 = and i32 %5793, 255
  %5800 = tail call i32 @llvm.ctpop.i32(i32 %5799) #8
  %5801 = trunc i32 %5800 to i8
  %5802 = and i8 %5801, 1
  %5803 = xor i8 %5802, 1
  store i8 %5803, i8* %76, align 1, !tbaa !2446
  %5804 = xor i64 %5790, %5761
  %5805 = trunc i64 %5804 to i32
  %5806 = xor i32 %5805, %5793
  %5807 = lshr i32 %5806, 4
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  store i8 %5809, i8* %81, align 1, !tbaa !2447
  %5810 = icmp eq i32 %5793, 0
  %5811 = zext i1 %5810 to i8
  store i8 %5811, i8* %84, align 1, !tbaa !2448
  %5812 = lshr i32 %5793, 31
  %5813 = trunc i32 %5812 to i8
  store i8 %5813, i8* %87, align 1, !tbaa !2449
  %5814 = lshr i32 %5792, 31
  %5815 = xor i32 %5812, %5772
  %5816 = xor i32 %5812, %5814
  %5817 = add nuw nsw i32 %5815, %5816
  %5818 = icmp eq i32 %5817, 2
  %5819 = zext i1 %5818 to i8
  store i8 %5819, i8* %93, align 1, !tbaa !2450
  %5820 = add i64 %5774, -60
  %5821 = add i64 %7069, 2286
  store i64 %5821, i64* %PC, align 8
  %5822 = inttoptr i64 %5820 to i32*
  %5823 = load i32, i32* %5822, align 4
  %5824 = add i32 %5823, %5793
  %5825 = zext i32 %5824 to i64
  store i64 %5825, i64* %RDX, align 8, !tbaa !2428
  %5826 = icmp ult i32 %5824, %5793
  %5827 = icmp ult i32 %5824, %5823
  %5828 = or i1 %5826, %5827
  %5829 = zext i1 %5828 to i8
  store i8 %5829, i8* %70, align 1, !tbaa !2432
  %5830 = and i32 %5824, 255
  %5831 = tail call i32 @llvm.ctpop.i32(i32 %5830) #8
  %5832 = trunc i32 %5831 to i8
  %5833 = and i8 %5832, 1
  %5834 = xor i8 %5833, 1
  store i8 %5834, i8* %76, align 1, !tbaa !2446
  %5835 = xor i32 %5823, %5793
  %5836 = xor i32 %5835, %5824
  %5837 = lshr i32 %5836, 4
  %5838 = trunc i32 %5837 to i8
  %5839 = and i8 %5838, 1
  store i8 %5839, i8* %81, align 1, !tbaa !2447
  %5840 = icmp eq i32 %5824, 0
  %5841 = zext i1 %5840 to i8
  store i8 %5841, i8* %84, align 1, !tbaa !2448
  %5842 = lshr i32 %5824, 31
  %5843 = trunc i32 %5842 to i8
  store i8 %5843, i8* %87, align 1, !tbaa !2449
  %5844 = lshr i32 %5823, 31
  %5845 = xor i32 %5842, %5812
  %5846 = xor i32 %5842, %5844
  %5847 = add nuw nsw i32 %5845, %5846
  %5848 = icmp eq i32 %5847, 2
  %5849 = zext i1 %5848 to i8
  store i8 %5849, i8* %93, align 1, !tbaa !2450
  %5850 = sext i32 %5824 to i64
  store i64 %5850, i64* %RCX, align 8, !tbaa !2428
  %5851 = load i64, i64* %RAX, align 8
  %5852 = shl nsw i64 %5850, 2
  %5853 = add i64 %5852, %5851
  %5854 = add i64 %7069, 2294
  store i64 %5854, i64* %PC, align 8
  %5855 = load <2 x float>, <2 x float>* %198, align 1
  %5856 = load <2 x i32>, <2 x i32>* %199, align 1
  %5857 = inttoptr i64 %5853 to float*
  %5858 = load float, float* %5857, align 4
  %5859 = extractelement <2 x float> %5855, i32 0
  %5860 = fadd float %5859, %5858
  store float %5860, float* %194, align 1, !tbaa !2451
  %5861 = bitcast <2 x float> %5855 to <2 x i32>
  %5862 = extractelement <2 x i32> %5861, i32 1
  store i32 %5862, i32* %189, align 1, !tbaa !2451
  %5863 = extractelement <2 x i32> %5856, i32 0
  store i32 %5863, i32* %190, align 1, !tbaa !2451
  %5864 = extractelement <2 x i32> %5856, i32 1
  store i32 %5864, i32* %192, align 1, !tbaa !2451
  %5865 = load i64, i64* %RBP, align 8
  %5866 = add i64 %5865, -84
  %5867 = add i64 %7069, 2299
  store i64 %5867, i64* %PC, align 8
  %5868 = load <2 x float>, <2 x float>* %193, align 1
  %5869 = extractelement <2 x float> %5868, i32 0
  %5870 = inttoptr i64 %5866 to float*
  store float %5869, float* %5870, align 4
  %5871 = load i64, i64* %RBP, align 8
  %5872 = add i64 %5871, -84
  %5873 = load i64, i64* %PC, align 8
  %5874 = add i64 %5873, 5
  store i64 %5874, i64* %PC, align 8
  %5875 = inttoptr i64 %5872 to i32*
  %5876 = load i32, i32* %5875, align 4
  %5877 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %5876, i32* %5877, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  store float 0.000000e+00, float* %197, align 1, !tbaa !2451
  %5878 = add i64 %5871, -16
  %5879 = add i64 %5873, 9
  store i64 %5879, i64* %PC, align 8
  %5880 = inttoptr i64 %5878 to i64*
  %5881 = load i64, i64* %5880, align 8
  store i64 %5881, i64* %RAX, align 8, !tbaa !2428
  %5882 = add i64 %5873, 12
  store i64 %5882, i64* %PC, align 8
  %5883 = inttoptr i64 %5881 to i64*
  %5884 = load i64, i64* %5883, align 8
  store i64 %5884, i64* %RAX, align 8, !tbaa !2428
  %5885 = add i64 %5873, 16
  store i64 %5885, i64* %PC, align 8
  %5886 = load i64, i64* %5880, align 8
  store i64 %5886, i64* %RCX, align 8, !tbaa !2428
  %5887 = add i64 %5886, 12
  %5888 = add i64 %5873, 20
  store i64 %5888, i64* %PC, align 8
  %5889 = inttoptr i64 %5887 to i32*
  %5890 = load i32, i32* %5889, align 4
  %5891 = sext i32 %5890 to i64
  %5892 = mul nsw i64 %5891, 3
  %5893 = trunc i64 %5892 to i32
  %5894 = and i64 %5892, 4294967295
  store i64 %5894, i64* %RDX, align 8, !tbaa !2428
  %5895 = mul i64 %5891, 12884901888
  %5896 = ashr exact i64 %5895, 32
  %5897 = icmp ne i64 %5896, %5892
  %5898 = zext i1 %5897 to i8
  store i8 %5898, i8* %70, align 1, !tbaa !2432
  %5899 = and i32 %5893, 255
  %5900 = tail call i32 @llvm.ctpop.i32(i32 %5899) #8
  %5901 = trunc i32 %5900 to i8
  %5902 = and i8 %5901, 1
  %5903 = xor i8 %5902, 1
  store i8 %5903, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5904 = lshr i32 %5893, 31
  %5905 = trunc i32 %5904 to i8
  store i8 %5905, i8* %87, align 1, !tbaa !2449
  store i8 %5898, i8* %93, align 1, !tbaa !2450
  %5906 = add i64 %5873, 24
  store i64 %5906, i64* %PC, align 8
  %5907 = load i64, i64* %5880, align 8
  store i64 %5907, i64* %RCX, align 8, !tbaa !2428
  %5908 = add i64 %5907, 16
  %5909 = add i64 %5873, 28
  store i64 %5909, i64* %PC, align 8
  %5910 = inttoptr i64 %5908 to i32*
  %5911 = load i32, i32* %5910, align 4
  %5912 = mul i64 %5891, 12884901888
  %5913 = ashr exact i64 %5912, 32
  %5914 = sext i32 %5911 to i64
  %5915 = mul nsw i64 %5914, %5913
  %5916 = trunc i64 %5915 to i32
  %5917 = and i64 %5915, 4294967295
  store i64 %5917, i64* %RDX, align 8, !tbaa !2428
  %5918 = shl i64 %5915, 32
  %5919 = ashr exact i64 %5918, 32
  %5920 = icmp ne i64 %5919, %5915
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %70, align 1, !tbaa !2432
  %5922 = and i32 %5916, 255
  %5923 = tail call i32 @llvm.ctpop.i32(i32 %5922) #8
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  store i8 %5926, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5927 = lshr i32 %5916, 31
  %5928 = trunc i32 %5927 to i8
  store i8 %5928, i8* %87, align 1, !tbaa !2449
  store i8 %5921, i8* %93, align 1, !tbaa !2450
  %5929 = add i64 %5873, 32
  store i64 %5929, i64* %PC, align 8
  %5930 = load i64, i64* %5880, align 8
  store i64 %5930, i64* %RCX, align 8, !tbaa !2428
  %5931 = add i64 %5930, 20
  %5932 = add i64 %5873, 36
  store i64 %5932, i64* %PC, align 8
  %5933 = inttoptr i64 %5931 to i32*
  %5934 = load i32, i32* %5933, align 4
  %5935 = shl i64 %5915, 32
  %5936 = ashr exact i64 %5935, 32
  %5937 = sext i32 %5934 to i64
  %5938 = mul nsw i64 %5937, %5936
  %5939 = trunc i64 %5938 to i32
  %5940 = and i64 %5938, 4294967295
  store i64 %5940, i64* %RDX, align 8, !tbaa !2428
  %5941 = shl i64 %5938, 32
  %5942 = ashr exact i64 %5941, 32
  %5943 = icmp ne i64 %5942, %5938
  %5944 = zext i1 %5943 to i8
  store i8 %5944, i8* %70, align 1, !tbaa !2432
  %5945 = and i32 %5939, 255
  %5946 = tail call i32 @llvm.ctpop.i32(i32 %5945) #8
  %5947 = trunc i32 %5946 to i8
  %5948 = and i8 %5947, 1
  %5949 = xor i8 %5948, 1
  store i8 %5949, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5950 = lshr i32 %5939, 31
  %5951 = trunc i32 %5950 to i8
  store i8 %5951, i8* %87, align 1, !tbaa !2449
  store i8 %5944, i8* %93, align 1, !tbaa !2450
  %5952 = load i64, i64* %RBP, align 8
  %5953 = add i64 %5952, -52
  %5954 = add i64 %5873, 39
  store i64 %5954, i64* %PC, align 8
  %5955 = inttoptr i64 %5953 to i32*
  %5956 = load i32, i32* %5955, align 4
  %5957 = zext i32 %5956 to i64
  store i64 %5957, i64* %RSI, align 8, !tbaa !2428
  %5958 = add i64 %5952, -16
  %5959 = add i64 %5873, 43
  store i64 %5959, i64* %PC, align 8
  %5960 = inttoptr i64 %5958 to i64*
  %5961 = load i64, i64* %5960, align 8
  store i64 %5961, i64* %RCX, align 8, !tbaa !2428
  %5962 = add i64 %5961, 16
  %5963 = add i64 %5873, 47
  store i64 %5963, i64* %PC, align 8
  %5964 = inttoptr i64 %5962 to i32*
  %5965 = load i32, i32* %5964, align 4
  %5966 = sext i32 %5956 to i64
  %5967 = sext i32 %5965 to i64
  %5968 = mul nsw i64 %5967, %5966
  %5969 = trunc i64 %5968 to i32
  %5970 = and i64 %5968, 4294967295
  store i64 %5970, i64* %RSI, align 8, !tbaa !2428
  %5971 = shl i64 %5968, 32
  %5972 = ashr exact i64 %5971, 32
  %5973 = icmp ne i64 %5972, %5968
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %70, align 1, !tbaa !2432
  %5975 = and i32 %5969, 255
  %5976 = tail call i32 @llvm.ctpop.i32(i32 %5975) #8
  %5977 = trunc i32 %5976 to i8
  %5978 = and i8 %5977, 1
  %5979 = xor i8 %5978, 1
  store i8 %5979, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %5980 = lshr i32 %5969, 31
  %5981 = trunc i32 %5980 to i8
  store i8 %5981, i8* %87, align 1, !tbaa !2449
  store i8 %5974, i8* %93, align 1, !tbaa !2450
  %5982 = add i64 %5873, 51
  store i64 %5982, i64* %PC, align 8
  %5983 = load i64, i64* %5960, align 8
  store i64 %5983, i64* %RCX, align 8, !tbaa !2428
  %5984 = add i64 %5983, 20
  %5985 = add i64 %5873, 55
  store i64 %5985, i64* %PC, align 8
  %5986 = inttoptr i64 %5984 to i32*
  %5987 = load i32, i32* %5986, align 4
  %5988 = shl i64 %5968, 32
  %5989 = ashr exact i64 %5988, 32
  %5990 = sext i32 %5987 to i64
  %5991 = mul nsw i64 %5990, %5989
  %5992 = and i64 %5991, 4294967295
  store i64 %5992, i64* %RSI, align 8, !tbaa !2428
  %5993 = trunc i64 %5991 to i32
  %5994 = trunc i64 %5938 to i32
  %5995 = add i32 %5993, %5994
  %5996 = zext i32 %5995 to i64
  store i64 %5996, i64* %RDX, align 8, !tbaa !2428
  %5997 = icmp ult i32 %5995, %5994
  %5998 = icmp ult i32 %5995, %5993
  %5999 = or i1 %5997, %5998
  %6000 = zext i1 %5999 to i8
  store i8 %6000, i8* %70, align 1, !tbaa !2432
  %6001 = and i32 %5995, 255
  %6002 = tail call i32 @llvm.ctpop.i32(i32 %6001) #8
  %6003 = trunc i32 %6002 to i8
  %6004 = and i8 %6003, 1
  %6005 = xor i8 %6004, 1
  store i8 %6005, i8* %76, align 1, !tbaa !2446
  %6006 = xor i64 %5991, %5938
  %6007 = trunc i64 %6006 to i32
  %6008 = xor i32 %6007, %5995
  %6009 = lshr i32 %6008, 4
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  store i8 %6011, i8* %81, align 1, !tbaa !2447
  %6012 = icmp eq i32 %5995, 0
  %6013 = zext i1 %6012 to i8
  store i8 %6013, i8* %84, align 1, !tbaa !2448
  %6014 = lshr i32 %5995, 31
  %6015 = trunc i32 %6014 to i8
  store i8 %6015, i8* %87, align 1, !tbaa !2449
  %6016 = lshr i32 %5994, 31
  %6017 = lshr i32 %5993, 31
  %6018 = xor i32 %6014, %6016
  %6019 = xor i32 %6014, %6017
  %6020 = add nuw nsw i32 %6018, %6019
  %6021 = icmp eq i32 %6020, 2
  %6022 = zext i1 %6021 to i8
  store i8 %6022, i8* %93, align 1, !tbaa !2450
  %6023 = load i64, i64* %RBP, align 8
  %6024 = add i64 %6023, -56
  %6025 = add i64 %5873, 60
  store i64 %6025, i64* %PC, align 8
  %6026 = inttoptr i64 %6024 to i32*
  %6027 = load i32, i32* %6026, align 4
  %6028 = zext i32 %6027 to i64
  store i64 %6028, i64* %RSI, align 8, !tbaa !2428
  %6029 = add i64 %6023, -16
  %6030 = add i64 %5873, 64
  store i64 %6030, i64* %PC, align 8
  %6031 = inttoptr i64 %6029 to i64*
  %6032 = load i64, i64* %6031, align 8
  store i64 %6032, i64* %RCX, align 8, !tbaa !2428
  %6033 = add i64 %6032, 20
  %6034 = add i64 %5873, 68
  store i64 %6034, i64* %PC, align 8
  %6035 = inttoptr i64 %6033 to i32*
  %6036 = load i32, i32* %6035, align 4
  %6037 = sext i32 %6027 to i64
  %6038 = sext i32 %6036 to i64
  %6039 = mul nsw i64 %6038, %6037
  %6040 = and i64 %6039, 4294967295
  store i64 %6040, i64* %RSI, align 8, !tbaa !2428
  %6041 = trunc i64 %6039 to i32
  %6042 = add i32 %6041, %5995
  %6043 = zext i32 %6042 to i64
  store i64 %6043, i64* %RDX, align 8, !tbaa !2428
  %6044 = icmp ult i32 %6042, %5995
  %6045 = icmp ult i32 %6042, %6041
  %6046 = or i1 %6044, %6045
  %6047 = zext i1 %6046 to i8
  store i8 %6047, i8* %70, align 1, !tbaa !2432
  %6048 = and i32 %6042, 255
  %6049 = tail call i32 @llvm.ctpop.i32(i32 %6048) #8
  %6050 = trunc i32 %6049 to i8
  %6051 = and i8 %6050, 1
  %6052 = xor i8 %6051, 1
  store i8 %6052, i8* %76, align 1, !tbaa !2446
  %6053 = xor i64 %6039, %5996
  %6054 = trunc i64 %6053 to i32
  %6055 = xor i32 %6054, %6042
  %6056 = lshr i32 %6055, 4
  %6057 = trunc i32 %6056 to i8
  %6058 = and i8 %6057, 1
  store i8 %6058, i8* %81, align 1, !tbaa !2447
  %6059 = icmp eq i32 %6042, 0
  %6060 = zext i1 %6059 to i8
  store i8 %6060, i8* %84, align 1, !tbaa !2448
  %6061 = lshr i32 %6042, 31
  %6062 = trunc i32 %6061 to i8
  store i8 %6062, i8* %87, align 1, !tbaa !2449
  %6063 = lshr i32 %6041, 31
  %6064 = xor i32 %6061, %6014
  %6065 = xor i32 %6061, %6063
  %6066 = add nuw nsw i32 %6064, %6065
  %6067 = icmp eq i32 %6066, 2
  %6068 = zext i1 %6067 to i8
  store i8 %6068, i8* %93, align 1, !tbaa !2450
  %6069 = add i64 %6023, -60
  %6070 = add i64 %5873, 73
  store i64 %6070, i64* %PC, align 8
  %6071 = inttoptr i64 %6069 to i32*
  %6072 = load i32, i32* %6071, align 4
  %6073 = add i32 %6072, %6042
  %6074 = zext i32 %6073 to i64
  store i64 %6074, i64* %RDX, align 8, !tbaa !2428
  %6075 = icmp ult i32 %6073, %6042
  %6076 = icmp ult i32 %6073, %6072
  %6077 = or i1 %6075, %6076
  %6078 = zext i1 %6077 to i8
  store i8 %6078, i8* %70, align 1, !tbaa !2432
  %6079 = and i32 %6073, 255
  %6080 = tail call i32 @llvm.ctpop.i32(i32 %6079) #8
  %6081 = trunc i32 %6080 to i8
  %6082 = and i8 %6081, 1
  %6083 = xor i8 %6082, 1
  store i8 %6083, i8* %76, align 1, !tbaa !2446
  %6084 = xor i32 %6072, %6042
  %6085 = xor i32 %6084, %6073
  %6086 = lshr i32 %6085, 4
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  store i8 %6088, i8* %81, align 1, !tbaa !2447
  %6089 = icmp eq i32 %6073, 0
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %84, align 1, !tbaa !2448
  %6091 = lshr i32 %6073, 31
  %6092 = trunc i32 %6091 to i8
  store i8 %6092, i8* %87, align 1, !tbaa !2449
  %6093 = lshr i32 %6072, 31
  %6094 = xor i32 %6091, %6061
  %6095 = xor i32 %6091, %6093
  %6096 = add nuw nsw i32 %6094, %6095
  %6097 = icmp eq i32 %6096, 2
  %6098 = zext i1 %6097 to i8
  store i8 %6098, i8* %93, align 1, !tbaa !2450
  %6099 = sext i32 %6073 to i64
  store i64 %6099, i64* %RCX, align 8, !tbaa !2428
  %6100 = load i64, i64* %RAX, align 8
  %6101 = shl nsw i64 %6099, 2
  %6102 = add i64 %6101, %6100
  %6103 = add i64 %5873, 81
  store i64 %6103, i64* %PC, align 8
  %6104 = load <2 x float>, <2 x float>* %198, align 1
  %6105 = load <2 x i32>, <2 x i32>* %199, align 1
  %6106 = inttoptr i64 %6102 to float*
  %6107 = load float, float* %6106, align 4
  %6108 = extractelement <2 x float> %6104, i32 0
  %6109 = fmul float %6108, %6107
  store float %6109, float* %194, align 1, !tbaa !2451
  %6110 = bitcast <2 x float> %6104 to <2 x i32>
  %6111 = extractelement <2 x i32> %6110, i32 1
  store i32 %6111, i32* %189, align 1, !tbaa !2451
  %6112 = extractelement <2 x i32> %6105, i32 0
  store i32 %6112, i32* %190, align 1, !tbaa !2451
  %6113 = extractelement <2 x i32> %6105, i32 1
  store i32 %6113, i32* %192, align 1, !tbaa !2451
  %6114 = load i64, i64* %RBP, align 8
  %6115 = add i64 %6114, -40
  %6116 = add i64 %5873, 85
  store i64 %6116, i64* %PC, align 8
  %6117 = inttoptr i64 %6115 to i64*
  %6118 = load i64, i64* %6117, align 8
  store i64 %6118, i64* %RAX, align 8, !tbaa !2428
  %6119 = add i64 %5873, 88
  store i64 %6119, i64* %PC, align 8
  %6120 = inttoptr i64 %6118 to i64*
  %6121 = load i64, i64* %6120, align 8
  store i64 %6121, i64* %RAX, align 8, !tbaa !2428
  %6122 = add i64 %5873, 92
  store i64 %6122, i64* %PC, align 8
  %6123 = load i64, i64* %6117, align 8
  store i64 %6123, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6124 = add i64 %5873, 100
  store i64 %6124, i64* %PC, align 8
  %6125 = load i64, i64* %6117, align 8
  store i64 %6125, i64* %RCX, align 8, !tbaa !2428
  %6126 = add i64 %5873, 104
  store i64 %6126, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6127 = add i64 %5873, 108
  store i64 %6127, i64* %PC, align 8
  %6128 = load i64, i64* %6117, align 8
  store i64 %6128, i64* %RCX, align 8, !tbaa !2428
  %6129 = add i64 %5873, 112
  store i64 %6129, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6130 = add i64 %6114, -52
  %6131 = add i64 %5873, 115
  store i64 %6131, i64* %PC, align 8
  %6132 = inttoptr i64 %6130 to i32*
  %6133 = load i32, i32* %6132, align 4
  %6134 = zext i32 %6133 to i64
  store i64 %6134, i64* %RSI, align 8, !tbaa !2428
  %6135 = add i64 %5873, 119
  store i64 %6135, i64* %PC, align 8
  %6136 = load i64, i64* %6117, align 8
  store i64 %6136, i64* %RCX, align 8, !tbaa !2428
  %6137 = add i64 %6136, 16
  %6138 = add i64 %5873, 123
  store i64 %6138, i64* %PC, align 8
  %6139 = inttoptr i64 %6137 to i32*
  %6140 = load i32, i32* %6139, align 4
  %6141 = sext i32 %6133 to i64
  %6142 = sext i32 %6140 to i64
  %6143 = mul nsw i64 %6142, %6141
  %6144 = trunc i64 %6143 to i32
  %6145 = and i64 %6143, 4294967295
  store i64 %6145, i64* %RSI, align 8, !tbaa !2428
  %6146 = shl i64 %6143, 32
  %6147 = ashr exact i64 %6146, 32
  %6148 = icmp ne i64 %6147, %6143
  %6149 = zext i1 %6148 to i8
  store i8 %6149, i8* %70, align 1, !tbaa !2432
  %6150 = and i32 %6144, 255
  %6151 = tail call i32 @llvm.ctpop.i32(i32 %6150) #8
  %6152 = trunc i32 %6151 to i8
  %6153 = and i8 %6152, 1
  %6154 = xor i8 %6153, 1
  store i8 %6154, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6155 = lshr i32 %6144, 31
  %6156 = trunc i32 %6155 to i8
  store i8 %6156, i8* %87, align 1, !tbaa !2449
  store i8 %6149, i8* %93, align 1, !tbaa !2450
  %6157 = add i64 %5873, 127
  store i64 %6157, i64* %PC, align 8
  %6158 = load i64, i64* %6117, align 8
  store i64 %6158, i64* %RCX, align 8, !tbaa !2428
  %6159 = add i64 %6158, 20
  %6160 = add i64 %5873, 131
  store i64 %6160, i64* %PC, align 8
  %6161 = inttoptr i64 %6159 to i32*
  %6162 = load i32, i32* %6161, align 4
  %6163 = shl i64 %6143, 32
  %6164 = ashr exact i64 %6163, 32
  %6165 = sext i32 %6162 to i64
  %6166 = mul nsw i64 %6165, %6164
  %6167 = and i64 %6166, 4294967295
  store i64 %6167, i64* %RSI, align 8, !tbaa !2428
  %6168 = trunc i64 %6166 to i32
  %6169 = and i64 %6166, 4294967295
  store i64 %6169, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6170 = and i32 %6168, 255
  %6171 = tail call i32 @llvm.ctpop.i32(i32 %6170) #8
  %6172 = trunc i32 %6171 to i8
  %6173 = and i8 %6172, 1
  %6174 = xor i8 %6173, 1
  store i8 %6174, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6175 = icmp eq i32 %6168, 0
  %6176 = zext i1 %6175 to i8
  store i8 %6176, i8* %84, align 1, !tbaa !2448
  %6177 = lshr i32 %6168, 31
  %6178 = trunc i32 %6177 to i8
  store i8 %6178, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6179 = load i64, i64* %RBP, align 8
  %6180 = add i64 %6179, -56
  %6181 = add i64 %5873, 136
  store i64 %6181, i64* %PC, align 8
  %6182 = inttoptr i64 %6180 to i32*
  %6183 = load i32, i32* %6182, align 4
  %6184 = zext i32 %6183 to i64
  store i64 %6184, i64* %RSI, align 8, !tbaa !2428
  %6185 = add i64 %6179, -40
  %6186 = add i64 %5873, 140
  store i64 %6186, i64* %PC, align 8
  %6187 = inttoptr i64 %6185 to i64*
  %6188 = load i64, i64* %6187, align 8
  store i64 %6188, i64* %RCX, align 8, !tbaa !2428
  %6189 = add i64 %6188, 20
  %6190 = add i64 %5873, 144
  store i64 %6190, i64* %PC, align 8
  %6191 = inttoptr i64 %6189 to i32*
  %6192 = load i32, i32* %6191, align 4
  %6193 = sext i32 %6183 to i64
  %6194 = sext i32 %6192 to i64
  %6195 = mul nsw i64 %6194, %6193
  %6196 = and i64 %6195, 4294967295
  store i64 %6196, i64* %RSI, align 8, !tbaa !2428
  %6197 = trunc i64 %6195 to i32
  %6198 = add i32 %6197, %6168
  %6199 = zext i32 %6198 to i64
  store i64 %6199, i64* %RDX, align 8, !tbaa !2428
  %6200 = icmp ult i32 %6198, %6168
  %6201 = icmp ult i32 %6198, %6197
  %6202 = or i1 %6200, %6201
  %6203 = zext i1 %6202 to i8
  store i8 %6203, i8* %70, align 1, !tbaa !2432
  %6204 = and i32 %6198, 255
  %6205 = tail call i32 @llvm.ctpop.i32(i32 %6204) #8
  %6206 = trunc i32 %6205 to i8
  %6207 = and i8 %6206, 1
  %6208 = xor i8 %6207, 1
  store i8 %6208, i8* %76, align 1, !tbaa !2446
  %6209 = xor i64 %6195, %6166
  %6210 = trunc i64 %6209 to i32
  %6211 = xor i32 %6210, %6198
  %6212 = lshr i32 %6211, 4
  %6213 = trunc i32 %6212 to i8
  %6214 = and i8 %6213, 1
  store i8 %6214, i8* %81, align 1, !tbaa !2447
  %6215 = icmp eq i32 %6198, 0
  %6216 = zext i1 %6215 to i8
  store i8 %6216, i8* %84, align 1, !tbaa !2448
  %6217 = lshr i32 %6198, 31
  %6218 = trunc i32 %6217 to i8
  store i8 %6218, i8* %87, align 1, !tbaa !2449
  %6219 = lshr i32 %6197, 31
  %6220 = xor i32 %6217, %6177
  %6221 = xor i32 %6217, %6219
  %6222 = add nuw nsw i32 %6220, %6221
  %6223 = icmp eq i32 %6222, 2
  %6224 = zext i1 %6223 to i8
  store i8 %6224, i8* %93, align 1, !tbaa !2450
  %6225 = add i64 %6179, -60
  %6226 = add i64 %5873, 149
  store i64 %6226, i64* %PC, align 8
  %6227 = inttoptr i64 %6225 to i32*
  %6228 = load i32, i32* %6227, align 4
  %6229 = add i32 %6228, %6198
  %6230 = zext i32 %6229 to i64
  store i64 %6230, i64* %RDX, align 8, !tbaa !2428
  %6231 = icmp ult i32 %6229, %6198
  %6232 = icmp ult i32 %6229, %6228
  %6233 = or i1 %6231, %6232
  %6234 = zext i1 %6233 to i8
  store i8 %6234, i8* %70, align 1, !tbaa !2432
  %6235 = and i32 %6229, 255
  %6236 = tail call i32 @llvm.ctpop.i32(i32 %6235) #8
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  %6239 = xor i8 %6238, 1
  store i8 %6239, i8* %76, align 1, !tbaa !2446
  %6240 = xor i32 %6228, %6198
  %6241 = xor i32 %6240, %6229
  %6242 = lshr i32 %6241, 4
  %6243 = trunc i32 %6242 to i8
  %6244 = and i8 %6243, 1
  store i8 %6244, i8* %81, align 1, !tbaa !2447
  %6245 = icmp eq i32 %6229, 0
  %6246 = zext i1 %6245 to i8
  store i8 %6246, i8* %84, align 1, !tbaa !2448
  %6247 = lshr i32 %6229, 31
  %6248 = trunc i32 %6247 to i8
  store i8 %6248, i8* %87, align 1, !tbaa !2449
  %6249 = lshr i32 %6228, 31
  %6250 = xor i32 %6247, %6217
  %6251 = xor i32 %6247, %6249
  %6252 = add nuw nsw i32 %6250, %6251
  %6253 = icmp eq i32 %6252, 2
  %6254 = zext i1 %6253 to i8
  store i8 %6254, i8* %93, align 1, !tbaa !2450
  %6255 = sext i32 %6229 to i64
  store i64 %6255, i64* %RCX, align 8, !tbaa !2428
  %6256 = load i64, i64* %RAX, align 8
  %6257 = shl nsw i64 %6255, 2
  %6258 = add i64 %6257, %6256
  %6259 = add i64 %5873, 157
  store i64 %6259, i64* %PC, align 8
  %6260 = load <2 x float>, <2 x float>* %198, align 1
  %6261 = load <2 x i32>, <2 x i32>* %199, align 1
  %6262 = inttoptr i64 %6258 to float*
  %6263 = load float, float* %6262, align 4
  %6264 = extractelement <2 x float> %6260, i32 0
  %6265 = fsub float %6264, %6263
  store float %6265, float* %194, align 1, !tbaa !2451
  %6266 = bitcast <2 x float> %6260 to <2 x i32>
  %6267 = extractelement <2 x i32> %6266, i32 1
  store i32 %6267, i32* %189, align 1, !tbaa !2451
  %6268 = extractelement <2 x i32> %6261, i32 0
  store i32 %6268, i32* %190, align 1, !tbaa !2451
  %6269 = extractelement <2 x i32> %6261, i32 1
  store i32 %6269, i32* %192, align 1, !tbaa !2451
  %6270 = load i64, i64* %RBP, align 8
  %6271 = add i64 %6270, -48
  %6272 = add i64 %5873, 161
  store i64 %6272, i64* %PC, align 8
  %6273 = inttoptr i64 %6271 to i64*
  %6274 = load i64, i64* %6273, align 8
  store i64 %6274, i64* %RAX, align 8, !tbaa !2428
  %6275 = add i64 %5873, 164
  store i64 %6275, i64* %PC, align 8
  %6276 = inttoptr i64 %6274 to i64*
  %6277 = load i64, i64* %6276, align 8
  store i64 %6277, i64* %RAX, align 8, !tbaa !2428
  %6278 = add i64 %5873, 168
  store i64 %6278, i64* %PC, align 8
  %6279 = load i64, i64* %6273, align 8
  store i64 %6279, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6280 = add i64 %5873, 176
  store i64 %6280, i64* %PC, align 8
  %6281 = load i64, i64* %6273, align 8
  store i64 %6281, i64* %RCX, align 8, !tbaa !2428
  %6282 = add i64 %5873, 180
  store i64 %6282, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6283 = add i64 %5873, 184
  store i64 %6283, i64* %PC, align 8
  %6284 = load i64, i64* %6273, align 8
  store i64 %6284, i64* %RCX, align 8, !tbaa !2428
  %6285 = add i64 %5873, 188
  store i64 %6285, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6286 = add i64 %6270, -52
  %6287 = add i64 %5873, 191
  store i64 %6287, i64* %PC, align 8
  %6288 = inttoptr i64 %6286 to i32*
  %6289 = load i32, i32* %6288, align 4
  %6290 = zext i32 %6289 to i64
  store i64 %6290, i64* %RSI, align 8, !tbaa !2428
  %6291 = add i64 %5873, 195
  store i64 %6291, i64* %PC, align 8
  %6292 = load i64, i64* %6273, align 8
  store i64 %6292, i64* %RCX, align 8, !tbaa !2428
  %6293 = add i64 %6292, 16
  %6294 = add i64 %5873, 199
  store i64 %6294, i64* %PC, align 8
  %6295 = inttoptr i64 %6293 to i32*
  %6296 = load i32, i32* %6295, align 4
  %6297 = sext i32 %6289 to i64
  %6298 = sext i32 %6296 to i64
  %6299 = mul nsw i64 %6298, %6297
  %6300 = trunc i64 %6299 to i32
  %6301 = and i64 %6299, 4294967295
  store i64 %6301, i64* %RSI, align 8, !tbaa !2428
  %6302 = shl i64 %6299, 32
  %6303 = ashr exact i64 %6302, 32
  %6304 = icmp ne i64 %6303, %6299
  %6305 = zext i1 %6304 to i8
  store i8 %6305, i8* %70, align 1, !tbaa !2432
  %6306 = and i32 %6300, 255
  %6307 = tail call i32 @llvm.ctpop.i32(i32 %6306) #8
  %6308 = trunc i32 %6307 to i8
  %6309 = and i8 %6308, 1
  %6310 = xor i8 %6309, 1
  store i8 %6310, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6311 = lshr i32 %6300, 31
  %6312 = trunc i32 %6311 to i8
  store i8 %6312, i8* %87, align 1, !tbaa !2449
  store i8 %6305, i8* %93, align 1, !tbaa !2450
  %6313 = add i64 %5873, 203
  store i64 %6313, i64* %PC, align 8
  %6314 = load i64, i64* %6273, align 8
  store i64 %6314, i64* %RCX, align 8, !tbaa !2428
  %6315 = add i64 %6314, 20
  %6316 = add i64 %5873, 207
  store i64 %6316, i64* %PC, align 8
  %6317 = inttoptr i64 %6315 to i32*
  %6318 = load i32, i32* %6317, align 4
  %6319 = shl i64 %6299, 32
  %6320 = ashr exact i64 %6319, 32
  %6321 = sext i32 %6318 to i64
  %6322 = mul nsw i64 %6321, %6320
  %6323 = and i64 %6322, 4294967295
  store i64 %6323, i64* %RSI, align 8, !tbaa !2428
  %6324 = trunc i64 %6322 to i32
  %6325 = and i64 %6322, 4294967295
  store i64 %6325, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6326 = and i32 %6324, 255
  %6327 = tail call i32 @llvm.ctpop.i32(i32 %6326) #8
  %6328 = trunc i32 %6327 to i8
  %6329 = and i8 %6328, 1
  %6330 = xor i8 %6329, 1
  store i8 %6330, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6331 = icmp eq i32 %6324, 0
  %6332 = zext i1 %6331 to i8
  store i8 %6332, i8* %84, align 1, !tbaa !2448
  %6333 = lshr i32 %6324, 31
  %6334 = trunc i32 %6333 to i8
  store i8 %6334, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6335 = load i64, i64* %RBP, align 8
  %6336 = add i64 %6335, -56
  %6337 = add i64 %5873, 212
  store i64 %6337, i64* %PC, align 8
  %6338 = inttoptr i64 %6336 to i32*
  %6339 = load i32, i32* %6338, align 4
  %6340 = zext i32 %6339 to i64
  store i64 %6340, i64* %RSI, align 8, !tbaa !2428
  %6341 = add i64 %6335, -48
  %6342 = add i64 %5873, 216
  store i64 %6342, i64* %PC, align 8
  %6343 = inttoptr i64 %6341 to i64*
  %6344 = load i64, i64* %6343, align 8
  store i64 %6344, i64* %RCX, align 8, !tbaa !2428
  %6345 = add i64 %6344, 20
  %6346 = add i64 %5873, 220
  store i64 %6346, i64* %PC, align 8
  %6347 = inttoptr i64 %6345 to i32*
  %6348 = load i32, i32* %6347, align 4
  %6349 = sext i32 %6339 to i64
  %6350 = sext i32 %6348 to i64
  %6351 = mul nsw i64 %6350, %6349
  %6352 = and i64 %6351, 4294967295
  store i64 %6352, i64* %RSI, align 8, !tbaa !2428
  %6353 = trunc i64 %6351 to i32
  %6354 = add i32 %6353, %6324
  %6355 = zext i32 %6354 to i64
  store i64 %6355, i64* %RDX, align 8, !tbaa !2428
  %6356 = icmp ult i32 %6354, %6324
  %6357 = icmp ult i32 %6354, %6353
  %6358 = or i1 %6356, %6357
  %6359 = zext i1 %6358 to i8
  store i8 %6359, i8* %70, align 1, !tbaa !2432
  %6360 = and i32 %6354, 255
  %6361 = tail call i32 @llvm.ctpop.i32(i32 %6360) #8
  %6362 = trunc i32 %6361 to i8
  %6363 = and i8 %6362, 1
  %6364 = xor i8 %6363, 1
  store i8 %6364, i8* %76, align 1, !tbaa !2446
  %6365 = xor i64 %6351, %6322
  %6366 = trunc i64 %6365 to i32
  %6367 = xor i32 %6366, %6354
  %6368 = lshr i32 %6367, 4
  %6369 = trunc i32 %6368 to i8
  %6370 = and i8 %6369, 1
  store i8 %6370, i8* %81, align 1, !tbaa !2447
  %6371 = icmp eq i32 %6354, 0
  %6372 = zext i1 %6371 to i8
  store i8 %6372, i8* %84, align 1, !tbaa !2448
  %6373 = lshr i32 %6354, 31
  %6374 = trunc i32 %6373 to i8
  store i8 %6374, i8* %87, align 1, !tbaa !2449
  %6375 = lshr i32 %6353, 31
  %6376 = xor i32 %6373, %6333
  %6377 = xor i32 %6373, %6375
  %6378 = add nuw nsw i32 %6376, %6377
  %6379 = icmp eq i32 %6378, 2
  %6380 = zext i1 %6379 to i8
  store i8 %6380, i8* %93, align 1, !tbaa !2450
  %6381 = add i64 %6335, -60
  %6382 = add i64 %5873, 225
  store i64 %6382, i64* %PC, align 8
  %6383 = inttoptr i64 %6381 to i32*
  %6384 = load i32, i32* %6383, align 4
  %6385 = add i32 %6384, %6354
  %6386 = zext i32 %6385 to i64
  store i64 %6386, i64* %RDX, align 8, !tbaa !2428
  %6387 = icmp ult i32 %6385, %6354
  %6388 = icmp ult i32 %6385, %6384
  %6389 = or i1 %6387, %6388
  %6390 = zext i1 %6389 to i8
  store i8 %6390, i8* %70, align 1, !tbaa !2432
  %6391 = and i32 %6385, 255
  %6392 = tail call i32 @llvm.ctpop.i32(i32 %6391) #8
  %6393 = trunc i32 %6392 to i8
  %6394 = and i8 %6393, 1
  %6395 = xor i8 %6394, 1
  store i8 %6395, i8* %76, align 1, !tbaa !2446
  %6396 = xor i32 %6384, %6354
  %6397 = xor i32 %6396, %6385
  %6398 = lshr i32 %6397, 4
  %6399 = trunc i32 %6398 to i8
  %6400 = and i8 %6399, 1
  store i8 %6400, i8* %81, align 1, !tbaa !2447
  %6401 = icmp eq i32 %6385, 0
  %6402 = zext i1 %6401 to i8
  store i8 %6402, i8* %84, align 1, !tbaa !2448
  %6403 = lshr i32 %6385, 31
  %6404 = trunc i32 %6403 to i8
  store i8 %6404, i8* %87, align 1, !tbaa !2449
  %6405 = lshr i32 %6384, 31
  %6406 = xor i32 %6403, %6373
  %6407 = xor i32 %6403, %6405
  %6408 = add nuw nsw i32 %6406, %6407
  %6409 = icmp eq i32 %6408, 2
  %6410 = zext i1 %6409 to i8
  store i8 %6410, i8* %93, align 1, !tbaa !2450
  %6411 = sext i32 %6385 to i64
  store i64 %6411, i64* %RCX, align 8, !tbaa !2428
  %6412 = load i64, i64* %RAX, align 8
  %6413 = shl nsw i64 %6411, 2
  %6414 = add i64 %6413, %6412
  %6415 = add i64 %5873, 233
  store i64 %6415, i64* %PC, align 8
  %6416 = load <2 x float>, <2 x float>* %198, align 1
  %6417 = load <2 x i32>, <2 x i32>* %199, align 1
  %6418 = inttoptr i64 %6414 to float*
  %6419 = load float, float* %6418, align 4
  %6420 = extractelement <2 x float> %6416, i32 0
  %6421 = fmul float %6420, %6419
  store float %6421, float* %194, align 1, !tbaa !2451
  %6422 = bitcast <2 x float> %6416 to <2 x i32>
  %6423 = extractelement <2 x i32> %6422, i32 1
  store i32 %6423, i32* %189, align 1, !tbaa !2451
  %6424 = extractelement <2 x i32> %6417, i32 0
  store i32 %6424, i32* %190, align 1, !tbaa !2451
  %6425 = extractelement <2 x i32> %6417, i32 1
  store i32 %6425, i32* %192, align 1, !tbaa !2451
  %6426 = load i64, i64* %RBP, align 8
  %6427 = add i64 %6426, -88
  %6428 = add i64 %5873, 238
  store i64 %6428, i64* %PC, align 8
  %6429 = load <2 x float>, <2 x float>* %193, align 1
  %6430 = extractelement <2 x float> %6429, i32 0
  %6431 = inttoptr i64 %6427 to float*
  store float %6430, float* %6431, align 4
  %6432 = load i64, i64* %RBP, align 8
  %6433 = add i64 %6432, -88
  %6434 = load i64, i64* %PC, align 8
  %6435 = add i64 %6434, 5
  store i64 %6435, i64* %PC, align 8
  %6436 = inttoptr i64 %6433 to float*
  %6437 = inttoptr i64 %6433 to i32*
  %6438 = load i32, i32* %6437, align 4
  %6439 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %6438, i32* %6439, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  store float 0.000000e+00, float* %197, align 1, !tbaa !2451
  %6440 = add i64 %6434, 10
  store i64 %6440, i64* %PC, align 8
  %6441 = load <2 x float>, <2 x float>* %198, align 1
  %6442 = load <2 x i32>, <2 x i32>* %199, align 1
  %6443 = load float, float* %6436, align 4
  %6444 = extractelement <2 x float> %6441, i32 0
  %6445 = fmul float %6444, %6443
  store float %6445, float* %194, align 1, !tbaa !2451
  %6446 = bitcast <2 x float> %6441 to <2 x i32>
  %6447 = extractelement <2 x i32> %6446, i32 1
  store i32 %6447, i32* %189, align 1, !tbaa !2451
  %6448 = extractelement <2 x i32> %6442, i32 0
  store i32 %6448, i32* %190, align 1, !tbaa !2451
  %6449 = extractelement <2 x i32> %6442, i32 1
  store i32 %6449, i32* %192, align 1, !tbaa !2451
  %6450 = add i64 %6432, -80
  %6451 = add i64 %6434, 15
  store i64 %6451, i64* %PC, align 8
  %6452 = load <2 x float>, <2 x float>* %198, align 1
  %6453 = load <2 x i32>, <2 x i32>* %199, align 1
  %6454 = inttoptr i64 %6450 to float*
  %6455 = load float, float* %6454, align 4
  %6456 = extractelement <2 x float> %6452, i32 0
  %6457 = fadd float %6456, %6455
  store float %6457, float* %194, align 1, !tbaa !2451
  %6458 = bitcast <2 x float> %6452 to <2 x i32>
  %6459 = extractelement <2 x i32> %6458, i32 1
  store i32 %6459, i32* %189, align 1, !tbaa !2451
  %6460 = extractelement <2 x i32> %6453, i32 0
  store i32 %6460, i32* %190, align 1, !tbaa !2451
  %6461 = extractelement <2 x i32> %6453, i32 1
  store i32 %6461, i32* %192, align 1, !tbaa !2451
  %6462 = add i64 %6434, 20
  store i64 %6462, i64* %PC, align 8
  %6463 = load <2 x float>, <2 x float>* %193, align 1
  %6464 = extractelement <2 x float> %6463, i32 0
  store float %6464, float* %6454, align 4
  %6465 = load i64, i64* %RBP, align 8
  %6466 = add i64 %6465, -40
  %6467 = load i64, i64* %PC, align 8
  %6468 = add i64 %6467, 4
  store i64 %6468, i64* %PC, align 8
  %6469 = inttoptr i64 %6466 to i64*
  %6470 = load i64, i64* %6469, align 8
  store i64 %6470, i64* %RAX, align 8, !tbaa !2428
  %6471 = add i64 %6467, 7
  store i64 %6471, i64* %PC, align 8
  %6472 = inttoptr i64 %6470 to i64*
  %6473 = load i64, i64* %6472, align 8
  store i64 %6473, i64* %RAX, align 8, !tbaa !2428
  %6474 = add i64 %6467, 11
  store i64 %6474, i64* %PC, align 8
  %6475 = load i64, i64* %6469, align 8
  store i64 %6475, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6476 = add i64 %6467, 19
  store i64 %6476, i64* %PC, align 8
  %6477 = load i64, i64* %6469, align 8
  store i64 %6477, i64* %RCX, align 8, !tbaa !2428
  %6478 = add i64 %6467, 23
  store i64 %6478, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6479 = add i64 %6467, 27
  store i64 %6479, i64* %PC, align 8
  %6480 = load i64, i64* %6469, align 8
  store i64 %6480, i64* %RCX, align 8, !tbaa !2428
  %6481 = add i64 %6467, 31
  store i64 %6481, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6482 = add i64 %6465, -52
  %6483 = add i64 %6467, 34
  store i64 %6483, i64* %PC, align 8
  %6484 = inttoptr i64 %6482 to i32*
  %6485 = load i32, i32* %6484, align 4
  %6486 = zext i32 %6485 to i64
  store i64 %6486, i64* %RSI, align 8, !tbaa !2428
  %6487 = add i64 %6467, 38
  store i64 %6487, i64* %PC, align 8
  %6488 = load i64, i64* %6469, align 8
  store i64 %6488, i64* %RCX, align 8, !tbaa !2428
  %6489 = add i64 %6488, 16
  %6490 = add i64 %6467, 42
  store i64 %6490, i64* %PC, align 8
  %6491 = inttoptr i64 %6489 to i32*
  %6492 = load i32, i32* %6491, align 4
  %6493 = sext i32 %6485 to i64
  %6494 = sext i32 %6492 to i64
  %6495 = mul nsw i64 %6494, %6493
  %6496 = trunc i64 %6495 to i32
  %6497 = and i64 %6495, 4294967295
  store i64 %6497, i64* %RSI, align 8, !tbaa !2428
  %6498 = shl i64 %6495, 32
  %6499 = ashr exact i64 %6498, 32
  %6500 = icmp ne i64 %6499, %6495
  %6501 = zext i1 %6500 to i8
  store i8 %6501, i8* %70, align 1, !tbaa !2432
  %6502 = and i32 %6496, 255
  %6503 = tail call i32 @llvm.ctpop.i32(i32 %6502) #8
  %6504 = trunc i32 %6503 to i8
  %6505 = and i8 %6504, 1
  %6506 = xor i8 %6505, 1
  store i8 %6506, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6507 = lshr i32 %6496, 31
  %6508 = trunc i32 %6507 to i8
  store i8 %6508, i8* %87, align 1, !tbaa !2449
  store i8 %6501, i8* %93, align 1, !tbaa !2450
  %6509 = load i64, i64* %RBP, align 8
  %6510 = add i64 %6509, -40
  %6511 = add i64 %6467, 46
  store i64 %6511, i64* %PC, align 8
  %6512 = inttoptr i64 %6510 to i64*
  %6513 = load i64, i64* %6512, align 8
  store i64 %6513, i64* %RCX, align 8, !tbaa !2428
  %6514 = add i64 %6513, 20
  %6515 = add i64 %6467, 50
  store i64 %6515, i64* %PC, align 8
  %6516 = inttoptr i64 %6514 to i32*
  %6517 = load i32, i32* %6516, align 4
  %6518 = shl i64 %6495, 32
  %6519 = ashr exact i64 %6518, 32
  %6520 = sext i32 %6517 to i64
  %6521 = mul nsw i64 %6520, %6519
  %6522 = and i64 %6521, 4294967295
  store i64 %6522, i64* %RSI, align 8, !tbaa !2428
  %6523 = trunc i64 %6521 to i32
  %6524 = and i64 %6521, 4294967295
  store i64 %6524, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6525 = and i32 %6523, 255
  %6526 = tail call i32 @llvm.ctpop.i32(i32 %6525) #8
  %6527 = trunc i32 %6526 to i8
  %6528 = and i8 %6527, 1
  %6529 = xor i8 %6528, 1
  store i8 %6529, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6530 = icmp eq i32 %6523, 0
  %6531 = zext i1 %6530 to i8
  store i8 %6531, i8* %84, align 1, !tbaa !2448
  %6532 = lshr i32 %6523, 31
  %6533 = trunc i32 %6532 to i8
  store i8 %6533, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6534 = add i64 %6509, -56
  %6535 = add i64 %6467, 55
  store i64 %6535, i64* %PC, align 8
  %6536 = inttoptr i64 %6534 to i32*
  %6537 = load i32, i32* %6536, align 4
  %6538 = zext i32 %6537 to i64
  store i64 %6538, i64* %RSI, align 8, !tbaa !2428
  %6539 = add i64 %6467, 59
  store i64 %6539, i64* %PC, align 8
  %6540 = load i64, i64* %6512, align 8
  store i64 %6540, i64* %RCX, align 8, !tbaa !2428
  %6541 = add i64 %6540, 20
  %6542 = add i64 %6467, 63
  store i64 %6542, i64* %PC, align 8
  %6543 = inttoptr i64 %6541 to i32*
  %6544 = load i32, i32* %6543, align 4
  %6545 = sext i32 %6537 to i64
  %6546 = sext i32 %6544 to i64
  %6547 = mul nsw i64 %6546, %6545
  %6548 = and i64 %6547, 4294967295
  store i64 %6548, i64* %RSI, align 8, !tbaa !2428
  %6549 = trunc i64 %6547 to i32
  %6550 = add i32 %6549, %6523
  %6551 = zext i32 %6550 to i64
  store i64 %6551, i64* %RDX, align 8, !tbaa !2428
  %6552 = icmp ult i32 %6550, %6523
  %6553 = icmp ult i32 %6550, %6549
  %6554 = or i1 %6552, %6553
  %6555 = zext i1 %6554 to i8
  store i8 %6555, i8* %70, align 1, !tbaa !2432
  %6556 = and i32 %6550, 255
  %6557 = tail call i32 @llvm.ctpop.i32(i32 %6556) #8
  %6558 = trunc i32 %6557 to i8
  %6559 = and i8 %6558, 1
  %6560 = xor i8 %6559, 1
  store i8 %6560, i8* %76, align 1, !tbaa !2446
  %6561 = xor i64 %6547, %6521
  %6562 = trunc i64 %6561 to i32
  %6563 = xor i32 %6562, %6550
  %6564 = lshr i32 %6563, 4
  %6565 = trunc i32 %6564 to i8
  %6566 = and i8 %6565, 1
  store i8 %6566, i8* %81, align 1, !tbaa !2447
  %6567 = icmp eq i32 %6550, 0
  %6568 = zext i1 %6567 to i8
  store i8 %6568, i8* %84, align 1, !tbaa !2448
  %6569 = lshr i32 %6550, 31
  %6570 = trunc i32 %6569 to i8
  store i8 %6570, i8* %87, align 1, !tbaa !2449
  %6571 = lshr i32 %6549, 31
  %6572 = xor i32 %6569, %6532
  %6573 = xor i32 %6569, %6571
  %6574 = add nuw nsw i32 %6572, %6573
  %6575 = icmp eq i32 %6574, 2
  %6576 = zext i1 %6575 to i8
  store i8 %6576, i8* %93, align 1, !tbaa !2450
  %6577 = load i64, i64* %RBP, align 8
  %6578 = add i64 %6577, -60
  %6579 = add i64 %6467, 68
  store i64 %6579, i64* %PC, align 8
  %6580 = inttoptr i64 %6578 to i32*
  %6581 = load i32, i32* %6580, align 4
  %6582 = add i32 %6581, %6550
  %6583 = zext i32 %6582 to i64
  store i64 %6583, i64* %RDX, align 8, !tbaa !2428
  %6584 = icmp ult i32 %6582, %6550
  %6585 = icmp ult i32 %6582, %6581
  %6586 = or i1 %6584, %6585
  %6587 = zext i1 %6586 to i8
  store i8 %6587, i8* %70, align 1, !tbaa !2432
  %6588 = and i32 %6582, 255
  %6589 = tail call i32 @llvm.ctpop.i32(i32 %6588) #8
  %6590 = trunc i32 %6589 to i8
  %6591 = and i8 %6590, 1
  %6592 = xor i8 %6591, 1
  store i8 %6592, i8* %76, align 1, !tbaa !2446
  %6593 = xor i32 %6581, %6550
  %6594 = xor i32 %6593, %6582
  %6595 = lshr i32 %6594, 4
  %6596 = trunc i32 %6595 to i8
  %6597 = and i8 %6596, 1
  store i8 %6597, i8* %81, align 1, !tbaa !2447
  %6598 = icmp eq i32 %6582, 0
  %6599 = zext i1 %6598 to i8
  store i8 %6599, i8* %84, align 1, !tbaa !2448
  %6600 = lshr i32 %6582, 31
  %6601 = trunc i32 %6600 to i8
  store i8 %6601, i8* %87, align 1, !tbaa !2449
  %6602 = lshr i32 %6581, 31
  %6603 = xor i32 %6600, %6569
  %6604 = xor i32 %6600, %6602
  %6605 = add nuw nsw i32 %6603, %6604
  %6606 = icmp eq i32 %6605, 2
  %6607 = zext i1 %6606 to i8
  store i8 %6607, i8* %93, align 1, !tbaa !2450
  %6608 = sext i32 %6582 to i64
  store i64 %6608, i64* %RCX, align 8, !tbaa !2428
  %6609 = load i64, i64* %RAX, align 8
  %6610 = shl nsw i64 %6608, 2
  %6611 = add i64 %6610, %6609
  %6612 = add i64 %6467, 76
  store i64 %6612, i64* %PC, align 8
  %6613 = inttoptr i64 %6611 to i32*
  %6614 = load i32, i32* %6613, align 4
  %6615 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %6614, i32* %6615, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  store float 0.000000e+00, float* %197, align 1, !tbaa !2451
  %6616 = load i32, i32* bitcast (%omega_type* @omega to i32*), align 8
  %6617 = bitcast %union.VectorReg* %5 to i32*
  store i32 %6616, i32* %6617, align 1, !tbaa !2451
  store float 0.000000e+00, float* %203, align 1, !tbaa !2451
  store float 0.000000e+00, float* %205, align 1, !tbaa !2451
  store float 0.000000e+00, float* %207, align 1, !tbaa !2451
  %6618 = add i64 %6577, -88
  %6619 = add i64 %6467, 90
  store i64 %6619, i64* %PC, align 8
  %6620 = load <2 x float>, <2 x float>* %208, align 1
  %6621 = load <2 x i32>, <2 x i32>* %209, align 1
  %6622 = inttoptr i64 %6618 to float*
  %6623 = load float, float* %6622, align 4
  %6624 = extractelement <2 x float> %6620, i32 0
  %6625 = fmul float %6624, %6623
  store float %6625, float* %201, align 1, !tbaa !2451
  %6626 = bitcast <2 x float> %6620 to <2 x i32>
  %6627 = extractelement <2 x i32> %6626, i32 1
  store i32 %6627, i32* %210, align 1, !tbaa !2451
  %6628 = extractelement <2 x i32> %6621, i32 0
  store i32 %6628, i32* %211, align 1, !tbaa !2451
  %6629 = extractelement <2 x i32> %6621, i32 1
  store i32 %6629, i32* %212, align 1, !tbaa !2451
  %6630 = load <2 x float>, <2 x float>* %198, align 1
  %6631 = load <2 x i32>, <2 x i32>* %199, align 1
  %6632 = load <2 x float>, <2 x float>* %213, align 1
  %6633 = extractelement <2 x float> %6630, i32 0
  %6634 = extractelement <2 x float> %6632, i32 0
  %6635 = fadd float %6633, %6634
  store float %6635, float* %194, align 1, !tbaa !2451
  %6636 = bitcast <2 x float> %6630 to <2 x i32>
  %6637 = extractelement <2 x i32> %6636, i32 1
  store i32 %6637, i32* %189, align 1, !tbaa !2451
  %6638 = extractelement <2 x i32> %6631, i32 0
  store i32 %6638, i32* %190, align 1, !tbaa !2451
  %6639 = extractelement <2 x i32> %6631, i32 1
  store i32 %6639, i32* %192, align 1, !tbaa !2451
  %6640 = add i64 %6577, 24
  %6641 = add i64 %6467, 98
  store i64 %6641, i64* %PC, align 8
  %6642 = inttoptr i64 %6640 to i64*
  %6643 = load i64, i64* %6642, align 8
  store i64 %6643, i64* %RAX, align 8, !tbaa !2428
  %6644 = add i64 %6467, 101
  store i64 %6644, i64* %PC, align 8
  %6645 = inttoptr i64 %6643 to i64*
  %6646 = load i64, i64* %6645, align 8
  store i64 %6646, i64* %RAX, align 8, !tbaa !2428
  %6647 = load i64, i64* %RBP, align 8
  %6648 = add i64 %6647, 24
  %6649 = add i64 %6467, 105
  store i64 %6649, i64* %PC, align 8
  %6650 = inttoptr i64 %6648 to i64*
  %6651 = load i64, i64* %6650, align 8
  store i64 %6651, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6652 = add i64 %6467, 113
  store i64 %6652, i64* %PC, align 8
  %6653 = load i64, i64* %6650, align 8
  store i64 %6653, i64* %RCX, align 8, !tbaa !2428
  %6654 = add i64 %6467, 117
  store i64 %6654, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6655 = add i64 %6467, 121
  store i64 %6655, i64* %PC, align 8
  %6656 = load i64, i64* %6650, align 8
  store i64 %6656, i64* %RCX, align 8, !tbaa !2428
  %6657 = add i64 %6467, 125
  store i64 %6657, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6658 = add i64 %6647, -52
  %6659 = add i64 %6467, 128
  store i64 %6659, i64* %PC, align 8
  %6660 = inttoptr i64 %6658 to i32*
  %6661 = load i32, i32* %6660, align 4
  %6662 = zext i32 %6661 to i64
  store i64 %6662, i64* %RSI, align 8, !tbaa !2428
  %6663 = add i64 %6467, 132
  store i64 %6663, i64* %PC, align 8
  %6664 = load i64, i64* %6650, align 8
  store i64 %6664, i64* %RCX, align 8, !tbaa !2428
  %6665 = add i64 %6664, 16
  %6666 = add i64 %6467, 136
  store i64 %6666, i64* %PC, align 8
  %6667 = inttoptr i64 %6665 to i32*
  %6668 = load i32, i32* %6667, align 4
  %6669 = sext i32 %6661 to i64
  %6670 = sext i32 %6668 to i64
  %6671 = mul nsw i64 %6670, %6669
  %6672 = trunc i64 %6671 to i32
  %6673 = and i64 %6671, 4294967295
  store i64 %6673, i64* %RSI, align 8, !tbaa !2428
  %6674 = shl i64 %6671, 32
  %6675 = ashr exact i64 %6674, 32
  %6676 = icmp ne i64 %6675, %6671
  %6677 = zext i1 %6676 to i8
  store i8 %6677, i8* %70, align 1, !tbaa !2432
  %6678 = and i32 %6672, 255
  %6679 = tail call i32 @llvm.ctpop.i32(i32 %6678) #8
  %6680 = trunc i32 %6679 to i8
  %6681 = and i8 %6680, 1
  %6682 = xor i8 %6681, 1
  store i8 %6682, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %6683 = lshr i32 %6672, 31
  %6684 = trunc i32 %6683 to i8
  store i8 %6684, i8* %87, align 1, !tbaa !2449
  store i8 %6677, i8* %93, align 1, !tbaa !2450
  %6685 = add i64 %6467, 140
  store i64 %6685, i64* %PC, align 8
  %6686 = load i64, i64* %6650, align 8
  store i64 %6686, i64* %RCX, align 8, !tbaa !2428
  %6687 = add i64 %6686, 20
  %6688 = add i64 %6467, 144
  store i64 %6688, i64* %PC, align 8
  %6689 = inttoptr i64 %6687 to i32*
  %6690 = load i32, i32* %6689, align 4
  %6691 = shl i64 %6671, 32
  %6692 = ashr exact i64 %6691, 32
  %6693 = sext i32 %6690 to i64
  %6694 = mul nsw i64 %6693, %6692
  %6695 = and i64 %6694, 4294967295
  store i64 %6695, i64* %RSI, align 8, !tbaa !2428
  %6696 = trunc i64 %6694 to i32
  %6697 = and i64 %6694, 4294967295
  store i64 %6697, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %6698 = and i32 %6696, 255
  %6699 = tail call i32 @llvm.ctpop.i32(i32 %6698) #8
  %6700 = trunc i32 %6699 to i8
  %6701 = and i8 %6700, 1
  %6702 = xor i8 %6701, 1
  store i8 %6702, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %6703 = icmp eq i32 %6696, 0
  %6704 = zext i1 %6703 to i8
  store i8 %6704, i8* %84, align 1, !tbaa !2448
  %6705 = lshr i32 %6696, 31
  %6706 = trunc i32 %6705 to i8
  store i8 %6706, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %6707 = load i64, i64* %RBP, align 8
  %6708 = add i64 %6707, -56
  %6709 = add i64 %6467, 149
  store i64 %6709, i64* %PC, align 8
  %6710 = inttoptr i64 %6708 to i32*
  %6711 = load i32, i32* %6710, align 4
  %6712 = zext i32 %6711 to i64
  store i64 %6712, i64* %RSI, align 8, !tbaa !2428
  %6713 = add i64 %6707, 24
  %6714 = add i64 %6467, 153
  store i64 %6714, i64* %PC, align 8
  %6715 = inttoptr i64 %6713 to i64*
  %6716 = load i64, i64* %6715, align 8
  store i64 %6716, i64* %RCX, align 8, !tbaa !2428
  %6717 = add i64 %6716, 20
  %6718 = add i64 %6467, 157
  store i64 %6718, i64* %PC, align 8
  %6719 = inttoptr i64 %6717 to i32*
  %6720 = load i32, i32* %6719, align 4
  %6721 = sext i32 %6711 to i64
  %6722 = sext i32 %6720 to i64
  %6723 = mul nsw i64 %6722, %6721
  %6724 = and i64 %6723, 4294967295
  store i64 %6724, i64* %RSI, align 8, !tbaa !2428
  %6725 = trunc i64 %6723 to i32
  %6726 = add i32 %6725, %6696
  %6727 = zext i32 %6726 to i64
  store i64 %6727, i64* %RDX, align 8, !tbaa !2428
  %6728 = icmp ult i32 %6726, %6696
  %6729 = icmp ult i32 %6726, %6725
  %6730 = or i1 %6728, %6729
  %6731 = zext i1 %6730 to i8
  store i8 %6731, i8* %70, align 1, !tbaa !2432
  %6732 = and i32 %6726, 255
  %6733 = tail call i32 @llvm.ctpop.i32(i32 %6732) #8
  %6734 = trunc i32 %6733 to i8
  %6735 = and i8 %6734, 1
  %6736 = xor i8 %6735, 1
  store i8 %6736, i8* %76, align 1, !tbaa !2446
  %6737 = xor i64 %6723, %6694
  %6738 = trunc i64 %6737 to i32
  %6739 = xor i32 %6738, %6726
  %6740 = lshr i32 %6739, 4
  %6741 = trunc i32 %6740 to i8
  %6742 = and i8 %6741, 1
  store i8 %6742, i8* %81, align 1, !tbaa !2447
  %6743 = icmp eq i32 %6726, 0
  %6744 = zext i1 %6743 to i8
  store i8 %6744, i8* %84, align 1, !tbaa !2448
  %6745 = lshr i32 %6726, 31
  %6746 = trunc i32 %6745 to i8
  store i8 %6746, i8* %87, align 1, !tbaa !2449
  %6747 = lshr i32 %6725, 31
  %6748 = xor i32 %6745, %6705
  %6749 = xor i32 %6745, %6747
  %6750 = add nuw nsw i32 %6748, %6749
  %6751 = icmp eq i32 %6750, 2
  %6752 = zext i1 %6751 to i8
  store i8 %6752, i8* %93, align 1, !tbaa !2450
  %6753 = add i64 %6707, -60
  %6754 = add i64 %6467, 162
  store i64 %6754, i64* %PC, align 8
  %6755 = inttoptr i64 %6753 to i32*
  %6756 = load i32, i32* %6755, align 4
  %6757 = add i32 %6756, %6726
  %6758 = zext i32 %6757 to i64
  store i64 %6758, i64* %RDX, align 8, !tbaa !2428
  %6759 = icmp ult i32 %6757, %6726
  %6760 = icmp ult i32 %6757, %6756
  %6761 = or i1 %6759, %6760
  %6762 = zext i1 %6761 to i8
  store i8 %6762, i8* %70, align 1, !tbaa !2432
  %6763 = and i32 %6757, 255
  %6764 = tail call i32 @llvm.ctpop.i32(i32 %6763) #8
  %6765 = trunc i32 %6764 to i8
  %6766 = and i8 %6765, 1
  %6767 = xor i8 %6766, 1
  store i8 %6767, i8* %76, align 1, !tbaa !2446
  %6768 = xor i32 %6756, %6726
  %6769 = xor i32 %6768, %6757
  %6770 = lshr i32 %6769, 4
  %6771 = trunc i32 %6770 to i8
  %6772 = and i8 %6771, 1
  store i8 %6772, i8* %81, align 1, !tbaa !2447
  %6773 = icmp eq i32 %6757, 0
  %6774 = zext i1 %6773 to i8
  store i8 %6774, i8* %84, align 1, !tbaa !2448
  %6775 = lshr i32 %6757, 31
  %6776 = trunc i32 %6775 to i8
  store i8 %6776, i8* %87, align 1, !tbaa !2449
  %6777 = lshr i32 %6756, 31
  %6778 = xor i32 %6775, %6745
  %6779 = xor i32 %6775, %6777
  %6780 = add nuw nsw i32 %6778, %6779
  %6781 = icmp eq i32 %6780, 2
  %6782 = zext i1 %6781 to i8
  store i8 %6782, i8* %93, align 1, !tbaa !2450
  %6783 = sext i32 %6757 to i64
  store i64 %6783, i64* %RCX, align 8, !tbaa !2428
  %6784 = load i64, i64* %RAX, align 8
  %6785 = shl nsw i64 %6783, 2
  %6786 = add i64 %6785, %6784
  %6787 = add i64 %6467, 170
  store i64 %6787, i64* %PC, align 8
  %6788 = load <2 x float>, <2 x float>* %193, align 1
  %6789 = extractelement <2 x float> %6788, i32 0
  %6790 = inttoptr i64 %6786 to float*
  store float %6789, float* %6790, align 4
  %6791 = load i64, i64* %RBP, align 8
  %6792 = add i64 %6791, -60
  %6793 = load i64, i64* %PC, align 8
  %6794 = add i64 %6793, 3
  store i64 %6794, i64* %PC, align 8
  %6795 = inttoptr i64 %6792 to i32*
  %6796 = load i32, i32* %6795, align 4
  %6797 = add i32 %6796, 1
  %6798 = zext i32 %6797 to i64
  store i64 %6798, i64* %RAX, align 8, !tbaa !2428
  %6799 = icmp eq i32 %6796, -1
  %6800 = icmp eq i32 %6797, 0
  %6801 = or i1 %6799, %6800
  %6802 = zext i1 %6801 to i8
  store i8 %6802, i8* %70, align 1, !tbaa !2432
  %6803 = and i32 %6797, 255
  %6804 = tail call i32 @llvm.ctpop.i32(i32 %6803) #8
  %6805 = trunc i32 %6804 to i8
  %6806 = and i8 %6805, 1
  %6807 = xor i8 %6806, 1
  store i8 %6807, i8* %76, align 1, !tbaa !2446
  %6808 = xor i32 %6796, %6797
  %6809 = lshr i32 %6808, 4
  %6810 = trunc i32 %6809 to i8
  %6811 = and i8 %6810, 1
  store i8 %6811, i8* %81, align 1, !tbaa !2447
  %6812 = icmp eq i32 %6797, 0
  %6813 = zext i1 %6812 to i8
  store i8 %6813, i8* %84, align 1, !tbaa !2448
  %6814 = lshr i32 %6797, 31
  %6815 = trunc i32 %6814 to i8
  store i8 %6815, i8* %87, align 1, !tbaa !2449
  %6816 = lshr i32 %6796, 31
  %6817 = xor i32 %6814, %6816
  %6818 = add nuw nsw i32 %6817, %6814
  %6819 = icmp eq i32 %6818, 2
  %6820 = zext i1 %6819 to i8
  store i8 %6820, i8* %93, align 1, !tbaa !2450
  %6821 = add i64 %6793, 9
  store i64 %6821, i64* %PC, align 8
  store i32 %6797, i32* %6795, align 4
  %6822 = load i64, i64* %PC, align 8
  %6823 = add i64 %6822, -2748
  store i64 %6823, i64* %184, align 8, !tbaa !2428
  br label %block_400d6a

block_401858:                                     ; preds = %block_401943, %block_401851
  %6824 = phi i64 [ %7000, %block_401943 ], [ %.pre5, %block_401851 ]
  %6825 = load i64, i64* %RBP, align 8
  %6826 = add i64 %6825, -52
  %6827 = add i64 %6824, 3
  store i64 %6827, i64* %PC, align 8
  %6828 = inttoptr i64 %6826 to i32*
  %6829 = load i32, i32* %6828, align 4
  %6830 = zext i32 %6829 to i64
  store i64 %6830, i64* %RAX, align 8, !tbaa !2428
  %6831 = add i64 %6825, -68
  %6832 = add i64 %6824, 6
  store i64 %6832, i64* %PC, align 8
  %6833 = inttoptr i64 %6831 to i32*
  %6834 = load i32, i32* %6833, align 4
  %6835 = sub i32 %6829, %6834
  %6836 = icmp ult i32 %6829, %6834
  %6837 = zext i1 %6836 to i8
  store i8 %6837, i8* %70, align 1, !tbaa !2432
  %6838 = and i32 %6835, 255
  %6839 = tail call i32 @llvm.ctpop.i32(i32 %6838) #8
  %6840 = trunc i32 %6839 to i8
  %6841 = and i8 %6840, 1
  %6842 = xor i8 %6841, 1
  store i8 %6842, i8* %76, align 1, !tbaa !2446
  %6843 = xor i32 %6834, %6829
  %6844 = xor i32 %6843, %6835
  %6845 = lshr i32 %6844, 4
  %6846 = trunc i32 %6845 to i8
  %6847 = and i8 %6846, 1
  store i8 %6847, i8* %81, align 1, !tbaa !2447
  %6848 = icmp eq i32 %6835, 0
  %6849 = zext i1 %6848 to i8
  store i8 %6849, i8* %84, align 1, !tbaa !2448
  %6850 = lshr i32 %6835, 31
  %6851 = trunc i32 %6850 to i8
  store i8 %6851, i8* %87, align 1, !tbaa !2449
  %6852 = lshr i32 %6829, 31
  %6853 = lshr i32 %6834, 31
  %6854 = xor i32 %6853, %6852
  %6855 = xor i32 %6850, %6852
  %6856 = add nuw nsw i32 %6855, %6854
  %6857 = icmp eq i32 %6856, 2
  %6858 = zext i1 %6857 to i8
  store i8 %6858, i8* %93, align 1, !tbaa !2450
  %6859 = icmp ne i8 %6851, 0
  %6860 = xor i1 %6859, %6857
  %.v13 = select i1 %6860, i64 12, i64 254
  %6861 = add i64 %6824, %.v13
  store i64 %6861, i64* %184, align 8, !tbaa !2428
  br i1 %6860, label %block_401864, label %block_401956

block_400d57:                                     ; preds = %block_400d50, %block_40182b
  %6862 = phi i64 [ %.pre3, %block_400d50 ], [ %7110, %block_40182b ]
  %6863 = load i64, i64* %RBP, align 8
  %6864 = add i64 %6863, -56
  %6865 = add i64 %6862, 3
  store i64 %6865, i64* %PC, align 8
  %6866 = inttoptr i64 %6864 to i32*
  %6867 = load i32, i32* %6866, align 4
  %6868 = zext i32 %6867 to i64
  store i64 %6868, i64* %RAX, align 8, !tbaa !2428
  %6869 = add i64 %6863, -72
  %6870 = add i64 %6862, 6
  store i64 %6870, i64* %PC, align 8
  %6871 = inttoptr i64 %6869 to i32*
  %6872 = load i32, i32* %6871, align 4
  %6873 = sub i32 %6867, %6872
  %6874 = icmp ult i32 %6867, %6872
  %6875 = zext i1 %6874 to i8
  store i8 %6875, i8* %70, align 1, !tbaa !2432
  %6876 = and i32 %6873, 255
  %6877 = tail call i32 @llvm.ctpop.i32(i32 %6876) #8
  %6878 = trunc i32 %6877 to i8
  %6879 = and i8 %6878, 1
  %6880 = xor i8 %6879, 1
  store i8 %6880, i8* %76, align 1, !tbaa !2446
  %6881 = xor i32 %6872, %6867
  %6882 = xor i32 %6881, %6873
  %6883 = lshr i32 %6882, 4
  %6884 = trunc i32 %6883 to i8
  %6885 = and i8 %6884, 1
  store i8 %6885, i8* %81, align 1, !tbaa !2447
  %6886 = icmp eq i32 %6873, 0
  %6887 = zext i1 %6886 to i8
  store i8 %6887, i8* %84, align 1, !tbaa !2448
  %6888 = lshr i32 %6873, 31
  %6889 = trunc i32 %6888 to i8
  store i8 %6889, i8* %87, align 1, !tbaa !2449
  %6890 = lshr i32 %6867, 31
  %6891 = lshr i32 %6872, 31
  %6892 = xor i32 %6891, %6890
  %6893 = xor i32 %6888, %6890
  %6894 = add nuw nsw i32 %6893, %6892
  %6895 = icmp eq i32 %6894, 2
  %6896 = zext i1 %6895 to i8
  store i8 %6896, i8* %93, align 1, !tbaa !2450
  %6897 = icmp ne i8 %6889, 0
  %6898 = xor i1 %6897, %6895
  %.v9 = select i1 %6898, i64 12, i64 2791
  %6899 = add i64 %6862, %.v9
  store i64 %6899, i64* %184, align 8, !tbaa !2428
  br i1 %6898, label %block_400d63, label %block_40183e

block_401956:                                     ; preds = %block_401858
  %6900 = add i64 %6825, -64
  %6901 = add i64 %6861, 8
  store i64 %6901, i64* %PC, align 8
  %6902 = inttoptr i64 %6900 to i32*
  %6903 = load i32, i32* %6902, align 4
  %6904 = add i32 %6903, 1
  %6905 = zext i32 %6904 to i64
  store i64 %6905, i64* %RAX, align 8, !tbaa !2428
  %6906 = icmp eq i32 %6903, -1
  %6907 = icmp eq i32 %6904, 0
  %6908 = or i1 %6906, %6907
  %6909 = zext i1 %6908 to i8
  store i8 %6909, i8* %70, align 1, !tbaa !2432
  %6910 = and i32 %6904, 255
  %6911 = tail call i32 @llvm.ctpop.i32(i32 %6910) #8
  %6912 = trunc i32 %6911 to i8
  %6913 = and i8 %6912, 1
  %6914 = xor i8 %6913, 1
  store i8 %6914, i8* %76, align 1, !tbaa !2446
  %6915 = xor i32 %6903, %6904
  %6916 = lshr i32 %6915, 4
  %6917 = trunc i32 %6916 to i8
  %6918 = and i8 %6917, 1
  store i8 %6918, i8* %81, align 1, !tbaa !2447
  %6919 = icmp eq i32 %6904, 0
  %6920 = zext i1 %6919 to i8
  store i8 %6920, i8* %84, align 1, !tbaa !2448
  %6921 = lshr i32 %6904, 31
  %6922 = trunc i32 %6921 to i8
  store i8 %6922, i8* %87, align 1, !tbaa !2449
  %6923 = lshr i32 %6903, 31
  %6924 = xor i32 %6921, %6923
  %6925 = add nuw nsw i32 %6924, %6921
  %6926 = icmp eq i32 %6925, 2
  %6927 = zext i1 %6926 to i8
  store i8 %6927, i8* %93, align 1, !tbaa !2450
  %6928 = add i64 %6861, 14
  store i64 %6928, i64* %PC, align 8
  store i32 %6904, i32* %6902, align 4
  %6929 = load i64, i64* %PC, align 8
  %6930 = add i64 %6929, -3131
  store i64 %6930, i64* %184, align 8, !tbaa !2428
  br label %block_400d29

block_401851:                                     ; preds = %block_400d44
  %6931 = add i64 %6969, 7
  store i64 %6931, i64* %PC, align 8
  store i32 1, i32* %6936, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401858

block_400d44:                                     ; preds = %block_400d35, %block_40183e
  %6932 = phi i64 [ %.pre2, %block_400d35 ], [ %7031, %block_40183e ]
  %6933 = load i64, i64* %RBP, align 8
  %6934 = add i64 %6933, -52
  %6935 = add i64 %6932, 3
  store i64 %6935, i64* %PC, align 8
  %6936 = inttoptr i64 %6934 to i32*
  %6937 = load i32, i32* %6936, align 4
  %6938 = zext i32 %6937 to i64
  store i64 %6938, i64* %RAX, align 8, !tbaa !2428
  %6939 = add i64 %6933, -68
  %6940 = add i64 %6932, 6
  store i64 %6940, i64* %PC, align 8
  %6941 = inttoptr i64 %6939 to i32*
  %6942 = load i32, i32* %6941, align 4
  %6943 = sub i32 %6937, %6942
  %6944 = icmp ult i32 %6937, %6942
  %6945 = zext i1 %6944 to i8
  store i8 %6945, i8* %70, align 1, !tbaa !2432
  %6946 = and i32 %6943, 255
  %6947 = tail call i32 @llvm.ctpop.i32(i32 %6946) #8
  %6948 = trunc i32 %6947 to i8
  %6949 = and i8 %6948, 1
  %6950 = xor i8 %6949, 1
  store i8 %6950, i8* %76, align 1, !tbaa !2446
  %6951 = xor i32 %6942, %6937
  %6952 = xor i32 %6951, %6943
  %6953 = lshr i32 %6952, 4
  %6954 = trunc i32 %6953 to i8
  %6955 = and i8 %6954, 1
  store i8 %6955, i8* %81, align 1, !tbaa !2447
  %6956 = icmp eq i32 %6943, 0
  %6957 = zext i1 %6956 to i8
  store i8 %6957, i8* %84, align 1, !tbaa !2448
  %6958 = lshr i32 %6943, 31
  %6959 = trunc i32 %6958 to i8
  store i8 %6959, i8* %87, align 1, !tbaa !2449
  %6960 = lshr i32 %6937, 31
  %6961 = lshr i32 %6942, 31
  %6962 = xor i32 %6961, %6960
  %6963 = xor i32 %6958, %6960
  %6964 = add nuw nsw i32 %6963, %6962
  %6965 = icmp eq i32 %6964, 2
  %6966 = zext i1 %6965 to i8
  store i8 %6966, i8* %93, align 1, !tbaa !2450
  %6967 = icmp ne i8 %6959, 0
  %6968 = xor i1 %6967, %6965
  %.v8 = select i1 %6968, i64 12, i64 2829
  %6969 = add i64 %6932, %.v8
  store i64 %6969, i64* %184, align 8, !tbaa !2428
  br i1 %6968, label %block_400d50, label %block_401851

block_401943:                                     ; preds = %block_40186b
  %6970 = add i64 %270, -52
  %6971 = add i64 %306, 8
  store i64 %6971, i64* %PC, align 8
  %6972 = inttoptr i64 %6970 to i32*
  %6973 = load i32, i32* %6972, align 4
  %6974 = add i32 %6973, 1
  %6975 = zext i32 %6974 to i64
  store i64 %6975, i64* %RAX, align 8, !tbaa !2428
  %6976 = icmp eq i32 %6973, -1
  %6977 = icmp eq i32 %6974, 0
  %6978 = or i1 %6976, %6977
  %6979 = zext i1 %6978 to i8
  store i8 %6979, i8* %70, align 1, !tbaa !2432
  %6980 = and i32 %6974, 255
  %6981 = tail call i32 @llvm.ctpop.i32(i32 %6980) #8
  %6982 = trunc i32 %6981 to i8
  %6983 = and i8 %6982, 1
  %6984 = xor i8 %6983, 1
  store i8 %6984, i8* %76, align 1, !tbaa !2446
  %6985 = xor i32 %6973, %6974
  %6986 = lshr i32 %6985, 4
  %6987 = trunc i32 %6986 to i8
  %6988 = and i8 %6987, 1
  store i8 %6988, i8* %81, align 1, !tbaa !2447
  %6989 = icmp eq i32 %6974, 0
  %6990 = zext i1 %6989 to i8
  store i8 %6990, i8* %84, align 1, !tbaa !2448
  %6991 = lshr i32 %6974, 31
  %6992 = trunc i32 %6991 to i8
  store i8 %6992, i8* %87, align 1, !tbaa !2449
  %6993 = lshr i32 %6973, 31
  %6994 = xor i32 %6991, %6993
  %6995 = add nuw nsw i32 %6994, %6991
  %6996 = icmp eq i32 %6995, 2
  %6997 = zext i1 %6996 to i8
  store i8 %6997, i8* %93, align 1, !tbaa !2450
  %6998 = add i64 %306, 14
  store i64 %6998, i64* %PC, align 8
  store i32 %6974, i32* %6972, align 4
  %6999 = load i64, i64* %PC, align 8
  %7000 = add i64 %6999, -249
  store i64 %7000, i64* %184, align 8, !tbaa !2428
  br label %block_401858

block_40183e:                                     ; preds = %block_400d57
  %7001 = add i64 %6863, -52
  %7002 = add i64 %6899, 8
  store i64 %7002, i64* %PC, align 8
  %7003 = inttoptr i64 %7001 to i32*
  %7004 = load i32, i32* %7003, align 4
  %7005 = add i32 %7004, 1
  %7006 = zext i32 %7005 to i64
  store i64 %7006, i64* %RAX, align 8, !tbaa !2428
  %7007 = icmp eq i32 %7004, -1
  %7008 = icmp eq i32 %7005, 0
  %7009 = or i1 %7007, %7008
  %7010 = zext i1 %7009 to i8
  store i8 %7010, i8* %70, align 1, !tbaa !2432
  %7011 = and i32 %7005, 255
  %7012 = tail call i32 @llvm.ctpop.i32(i32 %7011) #8
  %7013 = trunc i32 %7012 to i8
  %7014 = and i8 %7013, 1
  %7015 = xor i8 %7014, 1
  store i8 %7015, i8* %76, align 1, !tbaa !2446
  %7016 = xor i32 %7004, %7005
  %7017 = lshr i32 %7016, 4
  %7018 = trunc i32 %7017 to i8
  %7019 = and i8 %7018, 1
  store i8 %7019, i8* %81, align 1, !tbaa !2447
  %7020 = icmp eq i32 %7005, 0
  %7021 = zext i1 %7020 to i8
  store i8 %7021, i8* %84, align 1, !tbaa !2448
  %7022 = lshr i32 %7005, 31
  %7023 = trunc i32 %7022 to i8
  store i8 %7023, i8* %87, align 1, !tbaa !2449
  %7024 = lshr i32 %7004, 31
  %7025 = xor i32 %7022, %7024
  %7026 = add nuw nsw i32 %7025, %7022
  %7027 = icmp eq i32 %7026, 2
  %7028 = zext i1 %7027 to i8
  store i8 %7028, i8* %93, align 1, !tbaa !2450
  %7029 = add i64 %6899, 14
  store i64 %7029, i64* %PC, align 8
  store i32 %7005, i32* %7003, align 4
  %7030 = load i64, i64* %PC, align 8
  %7031 = add i64 %7030, -2824
  store i64 %7031, i64* %184, align 8, !tbaa !2428
  br label %block_400d44

block_400d6a:                                     ; preds = %block_400d63, %block_400d76
  %7032 = phi i64 [ %.pre4, %block_400d63 ], [ %6823, %block_400d76 ]
  %7033 = load i64, i64* %RBP, align 8
  %7034 = add i64 %7033, -60
  %7035 = add i64 %7032, 3
  store i64 %7035, i64* %PC, align 8
  %7036 = inttoptr i64 %7034 to i32*
  %7037 = load i32, i32* %7036, align 4
  %7038 = zext i32 %7037 to i64
  store i64 %7038, i64* %RAX, align 8, !tbaa !2428
  %7039 = add i64 %7033, -76
  %7040 = add i64 %7032, 6
  store i64 %7040, i64* %PC, align 8
  %7041 = inttoptr i64 %7039 to i32*
  %7042 = load i32, i32* %7041, align 4
  %7043 = sub i32 %7037, %7042
  %7044 = icmp ult i32 %7037, %7042
  %7045 = zext i1 %7044 to i8
  store i8 %7045, i8* %70, align 1, !tbaa !2432
  %7046 = and i32 %7043, 255
  %7047 = tail call i32 @llvm.ctpop.i32(i32 %7046) #8
  %7048 = trunc i32 %7047 to i8
  %7049 = and i8 %7048, 1
  %7050 = xor i8 %7049, 1
  store i8 %7050, i8* %76, align 1, !tbaa !2446
  %7051 = xor i32 %7042, %7037
  %7052 = xor i32 %7051, %7043
  %7053 = lshr i32 %7052, 4
  %7054 = trunc i32 %7053 to i8
  %7055 = and i8 %7054, 1
  store i8 %7055, i8* %81, align 1, !tbaa !2447
  %7056 = icmp eq i32 %7043, 0
  %7057 = zext i1 %7056 to i8
  store i8 %7057, i8* %84, align 1, !tbaa !2448
  %7058 = lshr i32 %7043, 31
  %7059 = trunc i32 %7058 to i8
  store i8 %7059, i8* %87, align 1, !tbaa !2449
  %7060 = lshr i32 %7037, 31
  %7061 = lshr i32 %7042, 31
  %7062 = xor i32 %7061, %7060
  %7063 = xor i32 %7058, %7060
  %7064 = add nuw nsw i32 %7063, %7062
  %7065 = icmp eq i32 %7064, 2
  %7066 = zext i1 %7065 to i8
  store i8 %7066, i8* %93, align 1, !tbaa !2450
  %7067 = icmp ne i8 %7059, 0
  %7068 = xor i1 %7067, %7065
  %.v10 = select i1 %7068, i64 12, i64 2753
  %7069 = add i64 %7032, %.v10
  store i64 %7069, i64* %184, align 8, !tbaa !2428
  br i1 %7068, label %block_400d76, label %block_40182b

block_400d35:                                     ; preds = %block_400d29
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %7070 = add i64 %7146, -80
  %7071 = add i64 %7182, 8
  store i64 %7071, i64* %PC, align 8
  %7072 = load <2 x float>, <2 x float>* %193, align 1
  %7073 = extractelement <2 x float> %7072, i32 0
  %7074 = inttoptr i64 %7070 to float*
  store float %7073, float* %7074, align 4
  %7075 = load i64, i64* %RBP, align 8
  %7076 = add i64 %7075, -52
  %7077 = load i64, i64* %PC, align 8
  %7078 = add i64 %7077, 7
  store i64 %7078, i64* %PC, align 8
  %7079 = inttoptr i64 %7076 to i32*
  store i32 1, i32* %7079, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400d44

block_40182b:                                     ; preds = %block_400d6a
  %7080 = add i64 %7033, -56
  %7081 = add i64 %7069, 8
  store i64 %7081, i64* %PC, align 8
  %7082 = inttoptr i64 %7080 to i32*
  %7083 = load i32, i32* %7082, align 4
  %7084 = add i32 %7083, 1
  %7085 = zext i32 %7084 to i64
  store i64 %7085, i64* %RAX, align 8, !tbaa !2428
  %7086 = icmp eq i32 %7083, -1
  %7087 = icmp eq i32 %7084, 0
  %7088 = or i1 %7086, %7087
  %7089 = zext i1 %7088 to i8
  store i8 %7089, i8* %70, align 1, !tbaa !2432
  %7090 = and i32 %7084, 255
  %7091 = tail call i32 @llvm.ctpop.i32(i32 %7090) #8
  %7092 = trunc i32 %7091 to i8
  %7093 = and i8 %7092, 1
  %7094 = xor i8 %7093, 1
  store i8 %7094, i8* %76, align 1, !tbaa !2446
  %7095 = xor i32 %7083, %7084
  %7096 = lshr i32 %7095, 4
  %7097 = trunc i32 %7096 to i8
  %7098 = and i8 %7097, 1
  store i8 %7098, i8* %81, align 1, !tbaa !2447
  %7099 = icmp eq i32 %7084, 0
  %7100 = zext i1 %7099 to i8
  store i8 %7100, i8* %84, align 1, !tbaa !2448
  %7101 = lshr i32 %7084, 31
  %7102 = trunc i32 %7101 to i8
  store i8 %7102, i8* %87, align 1, !tbaa !2449
  %7103 = lshr i32 %7083, 31
  %7104 = xor i32 %7101, %7103
  %7105 = add nuw nsw i32 %7104, %7101
  %7106 = icmp eq i32 %7105, 2
  %7107 = zext i1 %7106 to i8
  store i8 %7107, i8* %93, align 1, !tbaa !2450
  %7108 = add i64 %7069, 14
  store i64 %7108, i64* %PC, align 8
  store i32 %7084, i32* %7082, align 4
  %7109 = load i64, i64* %PC, align 8
  %7110 = add i64 %7109, -2786
  store i64 %7110, i64* %184, align 8, !tbaa !2428
  br label %block_400d57

block_401930:                                     ; preds = %block_40187e
  %7111 = add i64 %229, -56
  %7112 = add i64 %265, 8
  store i64 %7112, i64* %PC, align 8
  %7113 = inttoptr i64 %7111 to i32*
  %7114 = load i32, i32* %7113, align 4
  %7115 = add i32 %7114, 1
  %7116 = zext i32 %7115 to i64
  store i64 %7116, i64* %RAX, align 8, !tbaa !2428
  %7117 = icmp eq i32 %7114, -1
  %7118 = icmp eq i32 %7115, 0
  %7119 = or i1 %7117, %7118
  %7120 = zext i1 %7119 to i8
  store i8 %7120, i8* %70, align 1, !tbaa !2432
  %7121 = and i32 %7115, 255
  %7122 = tail call i32 @llvm.ctpop.i32(i32 %7121) #8
  %7123 = trunc i32 %7122 to i8
  %7124 = and i8 %7123, 1
  %7125 = xor i8 %7124, 1
  store i8 %7125, i8* %76, align 1, !tbaa !2446
  %7126 = xor i32 %7114, %7115
  %7127 = lshr i32 %7126, 4
  %7128 = trunc i32 %7127 to i8
  %7129 = and i8 %7128, 1
  store i8 %7129, i8* %81, align 1, !tbaa !2447
  %7130 = icmp eq i32 %7115, 0
  %7131 = zext i1 %7130 to i8
  store i8 %7131, i8* %84, align 1, !tbaa !2448
  %7132 = lshr i32 %7115, 31
  %7133 = trunc i32 %7132 to i8
  store i8 %7133, i8* %87, align 1, !tbaa !2449
  %7134 = lshr i32 %7114, 31
  %7135 = xor i32 %7132, %7134
  %7136 = add nuw nsw i32 %7135, %7132
  %7137 = icmp eq i32 %7136, 2
  %7138 = zext i1 %7137 to i8
  store i8 %7138, i8* %93, align 1, !tbaa !2450
  %7139 = add i64 %265, 14
  store i64 %7139, i64* %PC, align 8
  store i32 %7115, i32* %7113, align 4
  %7140 = load i64, i64* %PC, align 8
  %7141 = add i64 %7140, -211
  store i64 %7141, i64* %184, align 8, !tbaa !2428
  br label %block_40186b

block_400d63:                                     ; preds = %block_400d57
  %7142 = add i64 %6863, -60
  %7143 = add i64 %6899, 7
  store i64 %7143, i64* %PC, align 8
  %7144 = inttoptr i64 %7142 to i32*
  store i32 1, i32* %7144, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400d6a

block_400d29:                                     ; preds = %block_401956, %block_400cd0
  %7145 = phi i64 [ %6930, %block_401956 ], [ %.pre, %block_400cd0 ]
  %7146 = load i64, i64* %RBP, align 8
  %7147 = add i64 %7146, -64
  %7148 = add i64 %7145, 3
  store i64 %7148, i64* %PC, align 8
  %7149 = inttoptr i64 %7147 to i32*
  %7150 = load i32, i32* %7149, align 4
  %7151 = zext i32 %7150 to i64
  store i64 %7151, i64* %RAX, align 8, !tbaa !2428
  %7152 = add i64 %7146, -4
  %7153 = add i64 %7145, 6
  store i64 %7153, i64* %PC, align 8
  %7154 = inttoptr i64 %7152 to i32*
  %7155 = load i32, i32* %7154, align 4
  %7156 = sub i32 %7150, %7155
  %7157 = icmp ult i32 %7150, %7155
  %7158 = zext i1 %7157 to i8
  store i8 %7158, i8* %70, align 1, !tbaa !2432
  %7159 = and i32 %7156, 255
  %7160 = tail call i32 @llvm.ctpop.i32(i32 %7159) #8
  %7161 = trunc i32 %7160 to i8
  %7162 = and i8 %7161, 1
  %7163 = xor i8 %7162, 1
  store i8 %7163, i8* %76, align 1, !tbaa !2446
  %7164 = xor i32 %7155, %7150
  %7165 = xor i32 %7164, %7156
  %7166 = lshr i32 %7165, 4
  %7167 = trunc i32 %7166 to i8
  %7168 = and i8 %7167, 1
  store i8 %7168, i8* %81, align 1, !tbaa !2447
  %7169 = icmp eq i32 %7156, 0
  %7170 = zext i1 %7169 to i8
  store i8 %7170, i8* %84, align 1, !tbaa !2448
  %7171 = lshr i32 %7156, 31
  %7172 = trunc i32 %7171 to i8
  store i8 %7172, i8* %87, align 1, !tbaa !2449
  %7173 = lshr i32 %7150, 31
  %7174 = lshr i32 %7155, 31
  %7175 = xor i32 %7174, %7173
  %7176 = xor i32 %7171, %7173
  %7177 = add nuw nsw i32 %7176, %7175
  %7178 = icmp eq i32 %7177, 2
  %7179 = zext i1 %7178 to i8
  store i8 %7179, i8* %93, align 1, !tbaa !2450
  %7180 = icmp ne i8 %7172, 0
  %7181 = xor i1 %7180, %7178
  %.v = select i1 %7181, i64 12, i64 3136
  %7182 = add i64 %7145, %.v
  store i64 %7182, i64* %184, align 8, !tbaa !2428
  br i1 %7181, label %block_400d35, label %block_401969

block_400d50:                                     ; preds = %block_400d44
  %7183 = add i64 %6933, -56
  %7184 = add i64 %6969, 7
  store i64 %7184, i64* %PC, align 8
  %7185 = inttoptr i64 %7183 to i32*
  store i32 1, i32* %7185, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400d57

block_40188a:                                     ; preds = %block_40187e
  %7186 = add i64 %229, 24
  %7187 = add i64 %265, 4
  store i64 %7187, i64* %PC, align 8
  %7188 = inttoptr i64 %7186 to i64*
  %7189 = load i64, i64* %7188, align 8
  store i64 %7189, i64* %RAX, align 8, !tbaa !2428
  %7190 = add i64 %265, 7
  store i64 %7190, i64* %PC, align 8
  %7191 = inttoptr i64 %7189 to i64*
  %7192 = load i64, i64* %7191, align 8
  store i64 %7192, i64* %RAX, align 8, !tbaa !2428
  %7193 = add i64 %265, 11
  store i64 %7193, i64* %PC, align 8
  %7194 = load i64, i64* %7188, align 8
  store i64 %7194, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7195 = add i64 %265, 19
  store i64 %7195, i64* %PC, align 8
  %7196 = load i64, i64* %7188, align 8
  store i64 %7196, i64* %RCX, align 8, !tbaa !2428
  %7197 = add i64 %265, 23
  store i64 %7197, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7198 = add i64 %265, 27
  store i64 %7198, i64* %PC, align 8
  %7199 = load i64, i64* %7188, align 8
  store i64 %7199, i64* %RCX, align 8, !tbaa !2428
  %7200 = add i64 %265, 31
  store i64 %7200, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7201 = add i64 %229, -52
  %7202 = add i64 %265, 34
  store i64 %7202, i64* %PC, align 8
  %7203 = inttoptr i64 %7201 to i32*
  %7204 = load i32, i32* %7203, align 4
  %7205 = zext i32 %7204 to i64
  store i64 %7205, i64* %RSI, align 8, !tbaa !2428
  %7206 = add i64 %265, 38
  store i64 %7206, i64* %PC, align 8
  %7207 = load i64, i64* %7188, align 8
  store i64 %7207, i64* %RCX, align 8, !tbaa !2428
  %7208 = add i64 %7207, 16
  %7209 = add i64 %265, 42
  store i64 %7209, i64* %PC, align 8
  %7210 = inttoptr i64 %7208 to i32*
  %7211 = load i32, i32* %7210, align 4
  %7212 = sext i32 %7204 to i64
  %7213 = sext i32 %7211 to i64
  %7214 = mul nsw i64 %7213, %7212
  %7215 = trunc i64 %7214 to i32
  %7216 = and i64 %7214, 4294967295
  store i64 %7216, i64* %RSI, align 8, !tbaa !2428
  %7217 = shl i64 %7214, 32
  %7218 = ashr exact i64 %7217, 32
  %7219 = icmp ne i64 %7218, %7214
  %7220 = zext i1 %7219 to i8
  store i8 %7220, i8* %70, align 1, !tbaa !2432
  %7221 = and i32 %7215, 255
  %7222 = tail call i32 @llvm.ctpop.i32(i32 %7221) #8
  %7223 = trunc i32 %7222 to i8
  %7224 = and i8 %7223, 1
  %7225 = xor i8 %7224, 1
  store i8 %7225, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %7226 = lshr i32 %7215, 31
  %7227 = trunc i32 %7226 to i8
  store i8 %7227, i8* %87, align 1, !tbaa !2449
  store i8 %7220, i8* %93, align 1, !tbaa !2450
  %7228 = add i64 %265, 46
  store i64 %7228, i64* %PC, align 8
  %7229 = load i64, i64* %7188, align 8
  store i64 %7229, i64* %RCX, align 8, !tbaa !2428
  %7230 = add i64 %7229, 20
  %7231 = add i64 %265, 50
  store i64 %7231, i64* %PC, align 8
  %7232 = inttoptr i64 %7230 to i32*
  %7233 = load i32, i32* %7232, align 4
  %7234 = shl i64 %7214, 32
  %7235 = ashr exact i64 %7234, 32
  %7236 = sext i32 %7233 to i64
  %7237 = mul nsw i64 %7236, %7235
  %7238 = and i64 %7237, 4294967295
  store i64 %7238, i64* %RSI, align 8, !tbaa !2428
  %7239 = trunc i64 %7237 to i32
  %7240 = and i64 %7237, 4294967295
  store i64 %7240, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %7241 = and i32 %7239, 255
  %7242 = tail call i32 @llvm.ctpop.i32(i32 %7241) #8
  %7243 = trunc i32 %7242 to i8
  %7244 = and i8 %7243, 1
  %7245 = xor i8 %7244, 1
  store i8 %7245, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %7246 = icmp eq i32 %7239, 0
  %7247 = zext i1 %7246 to i8
  store i8 %7247, i8* %84, align 1, !tbaa !2448
  %7248 = lshr i32 %7239, 31
  %7249 = trunc i32 %7248 to i8
  store i8 %7249, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7250 = load i64, i64* %RBP, align 8
  %7251 = add i64 %7250, -56
  %7252 = add i64 %265, 55
  store i64 %7252, i64* %PC, align 8
  %7253 = inttoptr i64 %7251 to i32*
  %7254 = load i32, i32* %7253, align 4
  %7255 = zext i32 %7254 to i64
  store i64 %7255, i64* %RSI, align 8, !tbaa !2428
  %7256 = add i64 %7250, 24
  %7257 = add i64 %265, 59
  store i64 %7257, i64* %PC, align 8
  %7258 = inttoptr i64 %7256 to i64*
  %7259 = load i64, i64* %7258, align 8
  store i64 %7259, i64* %RCX, align 8, !tbaa !2428
  %7260 = add i64 %7259, 20
  %7261 = add i64 %265, 63
  store i64 %7261, i64* %PC, align 8
  %7262 = inttoptr i64 %7260 to i32*
  %7263 = load i32, i32* %7262, align 4
  %7264 = sext i32 %7254 to i64
  %7265 = sext i32 %7263 to i64
  %7266 = mul nsw i64 %7265, %7264
  %7267 = and i64 %7266, 4294967295
  store i64 %7267, i64* %RSI, align 8, !tbaa !2428
  %7268 = trunc i64 %7266 to i32
  %7269 = add i32 %7268, %7239
  %7270 = zext i32 %7269 to i64
  store i64 %7270, i64* %RDX, align 8, !tbaa !2428
  %7271 = icmp ult i32 %7269, %7239
  %7272 = icmp ult i32 %7269, %7268
  %7273 = or i1 %7271, %7272
  %7274 = zext i1 %7273 to i8
  store i8 %7274, i8* %70, align 1, !tbaa !2432
  %7275 = and i32 %7269, 255
  %7276 = tail call i32 @llvm.ctpop.i32(i32 %7275) #8
  %7277 = trunc i32 %7276 to i8
  %7278 = and i8 %7277, 1
  %7279 = xor i8 %7278, 1
  store i8 %7279, i8* %76, align 1, !tbaa !2446
  %7280 = xor i64 %7266, %7237
  %7281 = trunc i64 %7280 to i32
  %7282 = xor i32 %7281, %7269
  %7283 = lshr i32 %7282, 4
  %7284 = trunc i32 %7283 to i8
  %7285 = and i8 %7284, 1
  store i8 %7285, i8* %81, align 1, !tbaa !2447
  %7286 = icmp eq i32 %7269, 0
  %7287 = zext i1 %7286 to i8
  store i8 %7287, i8* %84, align 1, !tbaa !2448
  %7288 = lshr i32 %7269, 31
  %7289 = trunc i32 %7288 to i8
  store i8 %7289, i8* %87, align 1, !tbaa !2449
  %7290 = lshr i32 %7268, 31
  %7291 = xor i32 %7288, %7248
  %7292 = xor i32 %7288, %7290
  %7293 = add nuw nsw i32 %7291, %7292
  %7294 = icmp eq i32 %7293, 2
  %7295 = zext i1 %7294 to i8
  store i8 %7295, i8* %93, align 1, !tbaa !2450
  %7296 = add i64 %7250, -60
  %7297 = add i64 %265, 68
  store i64 %7297, i64* %PC, align 8
  %7298 = inttoptr i64 %7296 to i32*
  %7299 = load i32, i32* %7298, align 4
  %7300 = add i32 %7299, %7269
  %7301 = zext i32 %7300 to i64
  store i64 %7301, i64* %RDX, align 8, !tbaa !2428
  %7302 = icmp ult i32 %7300, %7269
  %7303 = icmp ult i32 %7300, %7299
  %7304 = or i1 %7302, %7303
  %7305 = zext i1 %7304 to i8
  store i8 %7305, i8* %70, align 1, !tbaa !2432
  %7306 = and i32 %7300, 255
  %7307 = tail call i32 @llvm.ctpop.i32(i32 %7306) #8
  %7308 = trunc i32 %7307 to i8
  %7309 = and i8 %7308, 1
  %7310 = xor i8 %7309, 1
  store i8 %7310, i8* %76, align 1, !tbaa !2446
  %7311 = xor i32 %7299, %7269
  %7312 = xor i32 %7311, %7300
  %7313 = lshr i32 %7312, 4
  %7314 = trunc i32 %7313 to i8
  %7315 = and i8 %7314, 1
  store i8 %7315, i8* %81, align 1, !tbaa !2447
  %7316 = icmp eq i32 %7300, 0
  %7317 = zext i1 %7316 to i8
  store i8 %7317, i8* %84, align 1, !tbaa !2448
  %7318 = lshr i32 %7300, 31
  %7319 = trunc i32 %7318 to i8
  store i8 %7319, i8* %87, align 1, !tbaa !2449
  %7320 = lshr i32 %7299, 31
  %7321 = xor i32 %7318, %7288
  %7322 = xor i32 %7318, %7320
  %7323 = add nuw nsw i32 %7321, %7322
  %7324 = icmp eq i32 %7323, 2
  %7325 = zext i1 %7324 to i8
  store i8 %7325, i8* %93, align 1, !tbaa !2450
  %7326 = sext i32 %7300 to i64
  store i64 %7326, i64* %RCX, align 8, !tbaa !2428
  %7327 = load i64, i64* %RAX, align 8
  %7328 = shl nsw i64 %7326, 2
  %7329 = add i64 %7328, %7327
  %7330 = add i64 %265, 76
  store i64 %7330, i64* %PC, align 8
  %7331 = inttoptr i64 %7329 to i32*
  %7332 = load i32, i32* %7331, align 4
  %7333 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %7332, i32* %7333, align 1, !tbaa !2451
  store float 0.000000e+00, float* %195, align 1, !tbaa !2451
  store float 0.000000e+00, float* %196, align 1, !tbaa !2451
  store float 0.000000e+00, float* %197, align 1, !tbaa !2451
  %7334 = load i64, i64* %RBP, align 8
  %7335 = add i64 %7334, -40
  %7336 = add i64 %265, 80
  store i64 %7336, i64* %PC, align 8
  %7337 = inttoptr i64 %7335 to i64*
  %7338 = load i64, i64* %7337, align 8
  store i64 %7338, i64* %RAX, align 8, !tbaa !2428
  %7339 = add i64 %265, 83
  store i64 %7339, i64* %PC, align 8
  %7340 = inttoptr i64 %7338 to i64*
  %7341 = load i64, i64* %7340, align 8
  store i64 %7341, i64* %RAX, align 8, !tbaa !2428
  %7342 = add i64 %265, 87
  store i64 %7342, i64* %PC, align 8
  %7343 = load i64, i64* %7337, align 8
  store i64 %7343, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7344 = add i64 %265, 95
  store i64 %7344, i64* %PC, align 8
  %7345 = load i64, i64* %7337, align 8
  store i64 %7345, i64* %RCX, align 8, !tbaa !2428
  %7346 = add i64 %265, 99
  store i64 %7346, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7347 = add i64 %265, 103
  store i64 %7347, i64* %PC, align 8
  %7348 = load i64, i64* %7337, align 8
  store i64 %7348, i64* %RCX, align 8, !tbaa !2428
  %7349 = add i64 %265, 107
  store i64 %7349, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  store i8 1, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  store i8 0, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7350 = add i64 %7334, -52
  %7351 = add i64 %265, 110
  store i64 %7351, i64* %PC, align 8
  %7352 = inttoptr i64 %7350 to i32*
  %7353 = load i32, i32* %7352, align 4
  %7354 = zext i32 %7353 to i64
  store i64 %7354, i64* %RSI, align 8, !tbaa !2428
  %7355 = add i64 %265, 114
  store i64 %7355, i64* %PC, align 8
  %7356 = load i64, i64* %7337, align 8
  store i64 %7356, i64* %RCX, align 8, !tbaa !2428
  %7357 = add i64 %7356, 16
  %7358 = add i64 %265, 118
  store i64 %7358, i64* %PC, align 8
  %7359 = inttoptr i64 %7357 to i32*
  %7360 = load i32, i32* %7359, align 4
  %7361 = sext i32 %7353 to i64
  %7362 = sext i32 %7360 to i64
  %7363 = mul nsw i64 %7362, %7361
  %7364 = trunc i64 %7363 to i32
  %7365 = and i64 %7363, 4294967295
  store i64 %7365, i64* %RSI, align 8, !tbaa !2428
  %7366 = shl i64 %7363, 32
  %7367 = ashr exact i64 %7366, 32
  %7368 = icmp ne i64 %7367, %7363
  %7369 = zext i1 %7368 to i8
  store i8 %7369, i8* %70, align 1, !tbaa !2432
  %7370 = and i32 %7364, 255
  %7371 = tail call i32 @llvm.ctpop.i32(i32 %7370) #8
  %7372 = trunc i32 %7371 to i8
  %7373 = and i8 %7372, 1
  %7374 = xor i8 %7373, 1
  store i8 %7374, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %7375 = lshr i32 %7364, 31
  %7376 = trunc i32 %7375 to i8
  store i8 %7376, i8* %87, align 1, !tbaa !2449
  store i8 %7369, i8* %93, align 1, !tbaa !2450
  %7377 = add i64 %265, 122
  store i64 %7377, i64* %PC, align 8
  %7378 = load i64, i64* %7337, align 8
  store i64 %7378, i64* %RCX, align 8, !tbaa !2428
  %7379 = add i64 %7378, 20
  %7380 = add i64 %265, 126
  store i64 %7380, i64* %PC, align 8
  %7381 = inttoptr i64 %7379 to i32*
  %7382 = load i32, i32* %7381, align 4
  %7383 = shl i64 %7363, 32
  %7384 = ashr exact i64 %7383, 32
  %7385 = sext i32 %7382 to i64
  %7386 = mul nsw i64 %7385, %7384
  %7387 = and i64 %7386, 4294967295
  store i64 %7387, i64* %RSI, align 8, !tbaa !2428
  %7388 = trunc i64 %7386 to i32
  %7389 = and i64 %7386, 4294967295
  store i64 %7389, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %70, align 1, !tbaa !2432
  %7390 = and i32 %7388, 255
  %7391 = tail call i32 @llvm.ctpop.i32(i32 %7390) #8
  %7392 = trunc i32 %7391 to i8
  %7393 = and i8 %7392, 1
  %7394 = xor i8 %7393, 1
  store i8 %7394, i8* %76, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %7395 = icmp eq i32 %7388, 0
  %7396 = zext i1 %7395 to i8
  store i8 %7396, i8* %84, align 1, !tbaa !2448
  %7397 = lshr i32 %7388, 31
  %7398 = trunc i32 %7397 to i8
  store i8 %7398, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %93, align 1, !tbaa !2450
  %7399 = load i64, i64* %RBP, align 8
  %7400 = add i64 %7399, -56
  %7401 = add i64 %265, 131
  store i64 %7401, i64* %PC, align 8
  %7402 = inttoptr i64 %7400 to i32*
  %7403 = load i32, i32* %7402, align 4
  %7404 = zext i32 %7403 to i64
  store i64 %7404, i64* %RSI, align 8, !tbaa !2428
  %7405 = add i64 %7399, -40
  %7406 = add i64 %265, 135
  store i64 %7406, i64* %PC, align 8
  %7407 = inttoptr i64 %7405 to i64*
  %7408 = load i64, i64* %7407, align 8
  store i64 %7408, i64* %RCX, align 8, !tbaa !2428
  %7409 = add i64 %7408, 20
  %7410 = add i64 %265, 139
  store i64 %7410, i64* %PC, align 8
  %7411 = inttoptr i64 %7409 to i32*
  %7412 = load i32, i32* %7411, align 4
  %7413 = sext i32 %7403 to i64
  %7414 = sext i32 %7412 to i64
  %7415 = mul nsw i64 %7414, %7413
  %7416 = and i64 %7415, 4294967295
  store i64 %7416, i64* %RSI, align 8, !tbaa !2428
  %7417 = trunc i64 %7415 to i32
  %7418 = add i32 %7417, %7388
  %7419 = zext i32 %7418 to i64
  store i64 %7419, i64* %RDX, align 8, !tbaa !2428
  %7420 = icmp ult i32 %7418, %7388
  %7421 = icmp ult i32 %7418, %7417
  %7422 = or i1 %7420, %7421
  %7423 = zext i1 %7422 to i8
  store i8 %7423, i8* %70, align 1, !tbaa !2432
  %7424 = and i32 %7418, 255
  %7425 = tail call i32 @llvm.ctpop.i32(i32 %7424) #8
  %7426 = trunc i32 %7425 to i8
  %7427 = and i8 %7426, 1
  %7428 = xor i8 %7427, 1
  store i8 %7428, i8* %76, align 1, !tbaa !2446
  %7429 = xor i64 %7415, %7386
  %7430 = trunc i64 %7429 to i32
  %7431 = xor i32 %7430, %7418
  %7432 = lshr i32 %7431, 4
  %7433 = trunc i32 %7432 to i8
  %7434 = and i8 %7433, 1
  store i8 %7434, i8* %81, align 1, !tbaa !2447
  %7435 = icmp eq i32 %7418, 0
  %7436 = zext i1 %7435 to i8
  store i8 %7436, i8* %84, align 1, !tbaa !2448
  %7437 = lshr i32 %7418, 31
  %7438 = trunc i32 %7437 to i8
  store i8 %7438, i8* %87, align 1, !tbaa !2449
  %7439 = lshr i32 %7417, 31
  %7440 = xor i32 %7437, %7397
  %7441 = xor i32 %7437, %7439
  %7442 = add nuw nsw i32 %7440, %7441
  %7443 = icmp eq i32 %7442, 2
  %7444 = zext i1 %7443 to i8
  store i8 %7444, i8* %93, align 1, !tbaa !2450
  %7445 = add i64 %7399, -60
  %7446 = add i64 %265, 144
  store i64 %7446, i64* %PC, align 8
  %7447 = inttoptr i64 %7445 to i32*
  %7448 = load i32, i32* %7447, align 4
  %7449 = add i32 %7448, %7418
  %7450 = zext i32 %7449 to i64
  store i64 %7450, i64* %RDX, align 8, !tbaa !2428
  %7451 = icmp ult i32 %7449, %7418
  %7452 = icmp ult i32 %7449, %7448
  %7453 = or i1 %7451, %7452
  %7454 = zext i1 %7453 to i8
  store i8 %7454, i8* %70, align 1, !tbaa !2432
  %7455 = and i32 %7449, 255
  %7456 = tail call i32 @llvm.ctpop.i32(i32 %7455) #8
  %7457 = trunc i32 %7456 to i8
  %7458 = and i8 %7457, 1
  %7459 = xor i8 %7458, 1
  store i8 %7459, i8* %76, align 1, !tbaa !2446
  %7460 = xor i32 %7448, %7418
  %7461 = xor i32 %7460, %7449
  %7462 = lshr i32 %7461, 4
  %7463 = trunc i32 %7462 to i8
  %7464 = and i8 %7463, 1
  store i8 %7464, i8* %81, align 1, !tbaa !2447
  %7465 = icmp eq i32 %7449, 0
  %7466 = zext i1 %7465 to i8
  store i8 %7466, i8* %84, align 1, !tbaa !2448
  %7467 = lshr i32 %7449, 31
  %7468 = trunc i32 %7467 to i8
  store i8 %7468, i8* %87, align 1, !tbaa !2449
  %7469 = lshr i32 %7448, 31
  %7470 = xor i32 %7467, %7437
  %7471 = xor i32 %7467, %7469
  %7472 = add nuw nsw i32 %7470, %7471
  %7473 = icmp eq i32 %7472, 2
  %7474 = zext i1 %7473 to i8
  store i8 %7474, i8* %93, align 1, !tbaa !2450
  %7475 = sext i32 %7449 to i64
  store i64 %7475, i64* %RCX, align 8, !tbaa !2428
  %7476 = load i64, i64* %RAX, align 8
  %7477 = shl nsw i64 %7475, 2
  %7478 = add i64 %7477, %7476
  %7479 = add i64 %265, 152
  store i64 %7479, i64* %PC, align 8
  %7480 = load <2 x float>, <2 x float>* %193, align 1
  %7481 = extractelement <2 x float> %7480, i32 0
  %7482 = inttoptr i64 %7478 to float*
  store float %7481, float* %7482, align 4
  %7483 = load i64, i64* %RBP, align 8
  %7484 = add i64 %7483, -60
  %7485 = load i64, i64* %PC, align 8
  %7486 = add i64 %7485, 3
  store i64 %7486, i64* %PC, align 8
  %7487 = inttoptr i64 %7484 to i32*
  %7488 = load i32, i32* %7487, align 4
  %7489 = add i32 %7488, 1
  %7490 = zext i32 %7489 to i64
  store i64 %7490, i64* %RAX, align 8, !tbaa !2428
  %7491 = icmp eq i32 %7488, -1
  %7492 = icmp eq i32 %7489, 0
  %7493 = or i1 %7491, %7492
  %7494 = zext i1 %7493 to i8
  store i8 %7494, i8* %70, align 1, !tbaa !2432
  %7495 = and i32 %7489, 255
  %7496 = tail call i32 @llvm.ctpop.i32(i32 %7495) #8
  %7497 = trunc i32 %7496 to i8
  %7498 = and i8 %7497, 1
  %7499 = xor i8 %7498, 1
  store i8 %7499, i8* %76, align 1, !tbaa !2446
  %7500 = xor i32 %7488, %7489
  %7501 = lshr i32 %7500, 4
  %7502 = trunc i32 %7501 to i8
  %7503 = and i8 %7502, 1
  store i8 %7503, i8* %81, align 1, !tbaa !2447
  %7504 = icmp eq i32 %7489, 0
  %7505 = zext i1 %7504 to i8
  store i8 %7505, i8* %84, align 1, !tbaa !2448
  %7506 = lshr i32 %7489, 31
  %7507 = trunc i32 %7506 to i8
  store i8 %7507, i8* %87, align 1, !tbaa !2449
  %7508 = lshr i32 %7488, 31
  %7509 = xor i32 %7506, %7508
  %7510 = add nuw nsw i32 %7509, %7506
  %7511 = icmp eq i32 %7510, 2
  %7512 = zext i1 %7511 to i8
  store i8 %7512, i8* %93, align 1, !tbaa !2450
  %7513 = add i64 %7485, 9
  store i64 %7513, i64* %PC, align 8
  store i32 %7489, i32* %7487, align 4
  %7514 = load i64, i64* %PC, align 8
  %7515 = add i64 %7514, -173
  store i64 %7515, i64* %184, align 8, !tbaa !2428
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %12, i64 9, i64 32
  %19 = add i64 %.v, %1
  store i64 %19, i64* %18, align 8, !tbaa !2428
  br i1 %12, label %block_400629, label %block_400640

block_400640:                                     ; preds = %block_400620
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

block_400629:                                     ; preds = %block_400620
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
  %37 = tail call %struct.Memory* @sub_4005b0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 8
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %28 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %29 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %31 = bitcast i64* %30 to <2 x i32>*
  %32 = bitcast [32 x %union.VectorReg]* %3 to float*
  %33 = getelementptr inbounds i8, i8* %28, i64 4
  %34 = bitcast i8* %33 to i32*
  %35 = bitcast i64* %30 to i32*
  %36 = getelementptr inbounds i8, i8* %28, i64 12
  %37 = bitcast i8* %36 to i32*
  %38 = bitcast %union.VectorReg* %4 to i8*
  %39 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %41 = bitcast i64* %40 to <2 x i32>*
  %42 = bitcast %union.VectorReg* %4 to float*
  %43 = getelementptr inbounds i8, i8* %38, i64 4
  %44 = bitcast i8* %43 to i32*
  %45 = bitcast i64* %40 to i32*
  %46 = getelementptr inbounds i8, i8* %38, i64 12
  %47 = bitcast i8* %46 to i32*
  %48 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %49 = bitcast %union.VectorReg* %4 to <2 x float>*
  %50 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400aff

block_400b3d:                                     ; preds = %block_400b2d
  %51 = add i64 %409, -12
  %52 = add i64 %449, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  %56 = add i64 %449, 7
  store i64 %56, i64* %PC, align 8
  %57 = load i32, i32* %53, align 4
  %58 = sext i32 %54 to i64
  %59 = sext i32 %57 to i64
  %60 = mul nsw i64 %59, %58
  %61 = trunc i64 %60 to i32
  %62 = and i64 %60, 4294967295
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = shl i64 %60, 32
  %64 = ashr exact i64 %63, 32
  %65 = icmp ne i64 %64, %60
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %21, align 1, !tbaa !2432
  %67 = and i32 %61, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67) #8
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %72 = lshr i32 %61, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %25, align 1, !tbaa !2449
  store i8 %66, i8* %26, align 1, !tbaa !2450
  %74 = trunc i64 %60 to i32
  %75 = load <2 x i32>, <2 x i32>* %29, align 1
  %76 = load <2 x i32>, <2 x i32>* %31, align 1
  %77 = sitofp i32 %74 to float
  store float %77, float* %32, align 1, !tbaa !2451
  %78 = extractelement <2 x i32> %75, i32 1
  store i32 %78, i32* %34, align 1, !tbaa !2451
  %79 = extractelement <2 x i32> %76, i32 0
  store i32 %79, i32* %35, align 1, !tbaa !2451
  %80 = extractelement <2 x i32> %76, i32 1
  store i32 %80, i32* %37, align 1, !tbaa !2451
  %81 = add i64 %449, 15
  store i64 %81, i64* %PC, align 8
  %82 = load i64, i64* %417, align 8
  store i64 %82, i64* %RCX, align 8, !tbaa !2428
  %83 = add i64 %82, 12
  %84 = add i64 %449, 18
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, -1
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = icmp eq i32 %86, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %21, align 1, !tbaa !2432
  %91 = and i32 %87, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91) #8
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %22, align 1, !tbaa !2446
  %96 = xor i32 %86, %87
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %23, align 1, !tbaa !2447
  %100 = icmp eq i32 %87, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %24, align 1, !tbaa !2448
  %102 = lshr i32 %87, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %25, align 1, !tbaa !2449
  %104 = lshr i32 %86, 31
  %105 = xor i32 %102, %104
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %26, align 1, !tbaa !2450
  %109 = add i64 %449, 25
  store i64 %109, i64* %PC, align 8
  %110 = load i64, i64* %417, align 8
  store i64 %110, i64* %RCX, align 8, !tbaa !2428
  %111 = add i64 %110, 12
  %112 = add i64 %449, 28
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, -1
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RDX, align 8, !tbaa !2428
  %117 = sext i32 %87 to i64
  %118 = sext i32 %115 to i64
  %119 = mul nsw i64 %118, %117
  %120 = trunc i64 %119 to i32
  %121 = and i64 %119, 4294967295
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = shl i64 %119, 32
  %123 = ashr exact i64 %122, 32
  %124 = icmp ne i64 %123, %119
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %21, align 1, !tbaa !2432
  %126 = and i32 %120, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #8
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %131 = lshr i32 %120, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %25, align 1, !tbaa !2449
  store i8 %125, i8* %26, align 1, !tbaa !2450
  %133 = trunc i64 %119 to i32
  %134 = load <2 x i32>, <2 x i32>* %39, align 1
  %135 = load <2 x i32>, <2 x i32>* %41, align 1
  %136 = sitofp i32 %133 to float
  store float %136, float* %42, align 1, !tbaa !2451
  %137 = extractelement <2 x i32> %134, i32 1
  store i32 %137, i32* %44, align 1, !tbaa !2451
  %138 = extractelement <2 x i32> %135, i32 0
  store i32 %138, i32* %45, align 1, !tbaa !2451
  %139 = extractelement <2 x i32> %135, i32 1
  store i32 %139, i32* %47, align 1, !tbaa !2451
  %140 = load <2 x float>, <2 x float>* %48, align 1
  %141 = load <2 x i32>, <2 x i32>* %31, align 1
  %142 = load <2 x float>, <2 x float>* %49, align 1
  %143 = extractelement <2 x float> %140, i32 0
  %144 = extractelement <2 x float> %142, i32 0
  %145 = fdiv float %143, %144
  store float %145, float* %32, align 1, !tbaa !2451
  %146 = bitcast <2 x float> %140 to <2 x i32>
  %147 = extractelement <2 x i32> %146, i32 1
  store i32 %147, i32* %34, align 1, !tbaa !2451
  %148 = extractelement <2 x i32> %141, i32 0
  store i32 %148, i32* %35, align 1, !tbaa !2451
  %149 = extractelement <2 x i32> %141, i32 1
  store i32 %149, i32* %37, align 1, !tbaa !2451
  %150 = load i64, i64* %RBP, align 8
  %151 = add i64 %150, -8
  %152 = add i64 %449, 46
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %RCX, align 8, !tbaa !2428
  %155 = add i64 %449, 49
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RCX, align 8, !tbaa !2428
  %158 = add i64 %449, 53
  store i64 %158, i64* %PC, align 8
  %159 = load i64, i64* %153, align 8
  store i64 %159, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %160 = add i64 %449, 61
  store i64 %160, i64* %PC, align 8
  %161 = load i64, i64* %153, align 8
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  %162 = add i64 %449, 65
  store i64 %162, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %163 = add i64 %449, 69
  store i64 %163, i64* %PC, align 8
  %164 = load i64, i64* %153, align 8
  store i64 %164, i64* %RSI, align 8, !tbaa !2428
  %165 = add i64 %449, 73
  store i64 %165, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  store i8 1, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %166 = add i64 %150, -12
  %167 = add i64 %449, 76
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RDX, align 8, !tbaa !2428
  %171 = add i64 %449, 80
  store i64 %171, i64* %PC, align 8
  %172 = load i64, i64* %153, align 8
  store i64 %172, i64* %RSI, align 8, !tbaa !2428
  %173 = add i64 %172, 16
  %174 = add i64 %449, 84
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %169 to i64
  %178 = sext i32 %176 to i64
  %179 = mul nsw i64 %178, %177
  %180 = trunc i64 %179 to i32
  %181 = and i64 %179, 4294967295
  store i64 %181, i64* %RDX, align 8, !tbaa !2428
  %182 = shl i64 %179, 32
  %183 = ashr exact i64 %182, 32
  %184 = icmp ne i64 %183, %179
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %21, align 1, !tbaa !2432
  %186 = and i32 %180, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #8
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %191 = lshr i32 %180, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %25, align 1, !tbaa !2449
  store i8 %185, i8* %26, align 1, !tbaa !2450
  %193 = add i64 %449, 88
  store i64 %193, i64* %PC, align 8
  %194 = load i64, i64* %153, align 8
  store i64 %194, i64* %RSI, align 8, !tbaa !2428
  %195 = add i64 %194, 20
  %196 = add i64 %449, 92
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = shl i64 %179, 32
  %200 = ashr exact i64 %199, 32
  %201 = sext i32 %198 to i64
  %202 = mul nsw i64 %201, %200
  %203 = and i64 %202, 4294967295
  store i64 %203, i64* %RDX, align 8, !tbaa !2428
  %204 = trunc i64 %202 to i32
  %205 = and i64 %202, 4294967295
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2432
  %206 = and i32 %204, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206) #8
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %23, align 1, !tbaa !2447
  %211 = icmp eq i32 %204, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %24, align 1, !tbaa !2448
  %213 = lshr i32 %204, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %215 = load i64, i64* %RBP, align 8
  %216 = add i64 %215, -16
  %217 = add i64 %449, 97
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RDX, align 8, !tbaa !2428
  %221 = add i64 %215, -8
  %222 = add i64 %449, 101
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RSI, align 8, !tbaa !2428
  %225 = add i64 %224, 20
  %226 = add i64 %449, 105
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %219 to i64
  %230 = sext i32 %228 to i64
  %231 = mul nsw i64 %230, %229
  %232 = and i64 %231, 4294967295
  store i64 %232, i64* %RDX, align 8, !tbaa !2428
  %233 = trunc i64 %231 to i32
  %234 = add i32 %233, %204
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = icmp ult i32 %234, %204
  %237 = icmp ult i32 %234, %233
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %21, align 1, !tbaa !2432
  %240 = and i32 %234, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #8
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %22, align 1, !tbaa !2446
  %245 = xor i64 %231, %202
  %246 = trunc i64 %245 to i32
  %247 = xor i32 %246, %234
  %248 = lshr i32 %247, 4
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %23, align 1, !tbaa !2447
  %251 = icmp eq i32 %234, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %24, align 1, !tbaa !2448
  %253 = lshr i32 %234, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %25, align 1, !tbaa !2449
  %255 = lshr i32 %233, 31
  %256 = xor i32 %253, %213
  %257 = xor i32 %253, %255
  %258 = add nuw nsw i32 %256, %257
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %26, align 1, !tbaa !2450
  %261 = add i64 %215, -20
  %262 = add i64 %449, 110
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = add i32 %264, %234
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  %267 = icmp ult i32 %265, %234
  %268 = icmp ult i32 %265, %264
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %21, align 1, !tbaa !2432
  %271 = and i32 %265, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #8
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %22, align 1, !tbaa !2446
  %276 = xor i32 %264, %234
  %277 = xor i32 %276, %265
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %23, align 1, !tbaa !2447
  %281 = icmp eq i32 %265, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %24, align 1, !tbaa !2448
  %283 = lshr i32 %265, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %25, align 1, !tbaa !2449
  %285 = lshr i32 %264, 31
  %286 = xor i32 %283, %253
  %287 = xor i32 %283, %285
  %288 = add nuw nsw i32 %286, %287
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %26, align 1, !tbaa !2450
  %291 = sext i32 %265 to i64
  store i64 %291, i64* %RSI, align 8, !tbaa !2428
  %292 = load i64, i64* %RCX, align 8
  %293 = shl nsw i64 %291, 2
  %294 = add i64 %293, %292
  %295 = add i64 %449, 118
  store i64 %295, i64* %PC, align 8
  %296 = load <2 x float>, <2 x float>* %50, align 1
  %297 = extractelement <2 x float> %296, i32 0
  %298 = inttoptr i64 %294 to float*
  store float %297, float* %298, align 4
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -20
  %301 = load i64, i64* %PC, align 8
  %302 = add i64 %301, 3
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %300 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = add i32 %304, 1
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = icmp eq i32 %304, -1
  %308 = icmp eq i32 %305, 0
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %21, align 1, !tbaa !2432
  %311 = and i32 %305, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311) #8
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %22, align 1, !tbaa !2446
  %316 = xor i32 %304, %305
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %23, align 1, !tbaa !2447
  %320 = icmp eq i32 %305, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %24, align 1, !tbaa !2448
  %322 = lshr i32 %305, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %25, align 1, !tbaa !2449
  %324 = lshr i32 %304, 31
  %325 = xor i32 %322, %324
  %326 = add nuw nsw i32 %325, %322
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %26, align 1, !tbaa !2450
  %329 = add i64 %301, 9
  store i64 %329, i64* %PC, align 8
  store i32 %305, i32* %303, align 4
  %330 = load i64, i64* %PC, align 8
  %331 = add i64 %330, -143
  store i64 %331, i64* %27, align 8, !tbaa !2428
  br label %block_400b2d

block_400b16:                                     ; preds = %block_400bc1, %block_400b0f
  %332 = phi i64 [ %534, %block_400bc1 ], [ %.pre1, %block_400b0f ]
  %333 = load i64, i64* %RBP, align 8
  %334 = add i64 %333, -16
  %335 = add i64 %332, 3
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = add i64 %333, -8
  %340 = add i64 %332, 7
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RCX, align 8, !tbaa !2428
  %343 = add i64 %342, 16
  %344 = add i64 %332, 10
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sub i32 %337, %346
  %348 = icmp ult i32 %337, %346
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %21, align 1, !tbaa !2432
  %350 = and i32 %347, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350) #8
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %22, align 1, !tbaa !2446
  %355 = xor i32 %346, %337
  %356 = xor i32 %355, %347
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %23, align 1, !tbaa !2447
  %360 = icmp eq i32 %347, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %24, align 1, !tbaa !2448
  %362 = lshr i32 %347, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %25, align 1, !tbaa !2449
  %364 = lshr i32 %337, 31
  %365 = lshr i32 %346, 31
  %366 = xor i32 %365, %364
  %367 = xor i32 %362, %364
  %368 = add nuw nsw i32 %367, %366
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %26, align 1, !tbaa !2450
  %371 = icmp ne i8 %363, 0
  %372 = xor i1 %371, %369
  %.v3 = select i1 %372, i64 16, i64 190
  %373 = add i64 %332, %.v3
  store i64 %373, i64* %27, align 8, !tbaa !2428
  br i1 %372, label %block_400b26, label %block_400bd4

block_400bd4:                                     ; preds = %block_400b16
  %374 = add i64 %333, -12
  %375 = add i64 %373, 8
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, 1
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RAX, align 8, !tbaa !2428
  %380 = icmp eq i32 %377, -1
  %381 = icmp eq i32 %378, 0
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %21, align 1, !tbaa !2432
  %384 = and i32 %378, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384) #8
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %22, align 1, !tbaa !2446
  %389 = xor i32 %377, %378
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %23, align 1, !tbaa !2447
  %393 = icmp eq i32 %378, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %24, align 1, !tbaa !2448
  %395 = lshr i32 %378, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %25, align 1, !tbaa !2449
  %397 = lshr i32 %377, 31
  %398 = xor i32 %395, %397
  %399 = add nuw nsw i32 %398, %395
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %26, align 1, !tbaa !2450
  %402 = add i64 %373, 14
  store i64 %402, i64* %PC, align 8
  store i32 %378, i32* %376, align 4
  %403 = load i64, i64* %PC, align 8
  %404 = add i64 %403, -227
  store i64 %404, i64* %27, align 8, !tbaa !2428
  br label %block_400aff

block_400b0f:                                     ; preds = %block_400aff
  %405 = add i64 %460, -16
  %406 = add i64 %500, 7
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i32*
  store i32 0, i32* %407, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400b16

block_400b2d:                                     ; preds = %block_400b26, %block_400b3d
  %408 = phi i64 [ %.pre2, %block_400b26 ], [ %331, %block_400b3d ]
  %409 = load i64, i64* %RBP, align 8
  %410 = add i64 %409, -20
  %411 = add i64 %408, 3
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RAX, align 8, !tbaa !2428
  %415 = add i64 %409, -8
  %416 = add i64 %408, 7
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RCX, align 8, !tbaa !2428
  %419 = add i64 %418, 20
  %420 = add i64 %408, 10
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = sub i32 %413, %422
  %424 = icmp ult i32 %413, %422
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %21, align 1, !tbaa !2432
  %426 = and i32 %423, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426) #8
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %22, align 1, !tbaa !2446
  %431 = xor i32 %422, %413
  %432 = xor i32 %431, %423
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %23, align 1, !tbaa !2447
  %436 = icmp eq i32 %423, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %24, align 1, !tbaa !2448
  %438 = lshr i32 %423, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %25, align 1, !tbaa !2449
  %440 = lshr i32 %413, 31
  %441 = lshr i32 %422, 31
  %442 = xor i32 %441, %440
  %443 = xor i32 %438, %440
  %444 = add nuw nsw i32 %443, %442
  %445 = icmp eq i32 %444, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %26, align 1, !tbaa !2450
  %447 = icmp ne i8 %439, 0
  %448 = xor i1 %447, %445
  %.v4 = select i1 %448, i64 16, i64 148
  %449 = add i64 %408, %.v4
  store i64 %449, i64* %27, align 8, !tbaa !2428
  br i1 %448, label %block_400b3d, label %block_400bc1

block_400be7:                                     ; preds = %block_400aff
  %450 = add i64 %500, 1
  store i64 %450, i64* %PC, align 8
  %451 = load i64, i64* %7, align 8, !tbaa !2428
  %452 = add i64 %451, 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RBP, align 8, !tbaa !2428
  store i64 %452, i64* %7, align 8, !tbaa !2428
  %455 = add i64 %500, 2
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %452 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %27, align 8, !tbaa !2428
  %458 = add i64 %451, 16
  store i64 %458, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400aff:                                     ; preds = %block_400bd4, %block_400af0
  %459 = phi i64 [ %404, %block_400bd4 ], [ %.pre, %block_400af0 ]
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -12
  %462 = add i64 %459, 3
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = add i64 %460, -8
  %467 = add i64 %459, 7
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = add i64 %469, 12
  %471 = add i64 %459, 10
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sub i32 %464, %473
  %475 = icmp ult i32 %464, %473
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %21, align 1, !tbaa !2432
  %477 = and i32 %474, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477) #8
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %22, align 1, !tbaa !2446
  %482 = xor i32 %473, %464
  %483 = xor i32 %482, %474
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %23, align 1, !tbaa !2447
  %487 = icmp eq i32 %474, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %24, align 1, !tbaa !2448
  %489 = lshr i32 %474, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %25, align 1, !tbaa !2449
  %491 = lshr i32 %464, 31
  %492 = lshr i32 %473, 31
  %493 = xor i32 %492, %491
  %494 = xor i32 %489, %491
  %495 = add nuw nsw i32 %494, %493
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %26, align 1, !tbaa !2450
  %498 = icmp ne i8 %490, 0
  %499 = xor i1 %498, %496
  %.v = select i1 %499, i64 16, i64 232
  %500 = add i64 %459, %.v
  store i64 %500, i64* %27, align 8, !tbaa !2428
  br i1 %499, label %block_400b0f, label %block_400be7

block_400b26:                                     ; preds = %block_400b16
  %501 = add i64 %333, -20
  %502 = add i64 %373, 7
  store i64 %502, i64* %PC, align 8
  %503 = inttoptr i64 %501 to i32*
  store i32 0, i32* %503, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400b2d

block_400bc1:                                     ; preds = %block_400b2d
  %504 = add i64 %409, -16
  %505 = add i64 %449, 8
  store i64 %505, i64* %PC, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = add i32 %507, 1
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX, align 8, !tbaa !2428
  %510 = icmp eq i32 %507, -1
  %511 = icmp eq i32 %508, 0
  %512 = or i1 %510, %511
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %21, align 1, !tbaa !2432
  %514 = and i32 %508, 255
  %515 = tail call i32 @llvm.ctpop.i32(i32 %514) #8
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  store i8 %518, i8* %22, align 1, !tbaa !2446
  %519 = xor i32 %507, %508
  %520 = lshr i32 %519, 4
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  store i8 %522, i8* %23, align 1, !tbaa !2447
  %523 = icmp eq i32 %508, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %24, align 1, !tbaa !2448
  %525 = lshr i32 %508, 31
  %526 = trunc i32 %525 to i8
  store i8 %526, i8* %25, align 1, !tbaa !2449
  %527 = lshr i32 %507, 31
  %528 = xor i32 %525, %527
  %529 = add nuw nsw i32 %528, %525
  %530 = icmp eq i32 %529, 2
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %26, align 1, !tbaa !2450
  %532 = add i64 %449, 14
  store i64 %532, i64* %PC, align 8
  store i32 %508, i32* %506, align 4
  %533 = load i64, i64* %PC, align 8
  %534 = add i64 %533, -185
  store i64 %534, i64* %27, align 8, !tbaa !2428
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %18, i64 18, i64 16
  %23 = add i64 %.v, %1
  store i64 %23, i64* %22, align 8, !tbaa !2428
  br i1 %18, label %block_4004e0.block_4004f2_crit_edge, label %block_4004f0

block_4004e0.block_4004f2_crit_edge:              ; preds = %block_4004e0
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_4004f2

block_4004f0:                                     ; preds = %block_4004e0
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
  br label %block_4004f2

block_4004f2:                                     ; preds = %block_4004e0.block_4004f2_crit_edge, %block_4004f0
  %.pre-phi = phi i64* [ %.pre2, %block_4004e0.block_4004f2_crit_edge ], [ %25, %block_4004f0 ]
  %29 = phi i64 [ %23, %block_4004e0.block_4004f2_crit_edge ], [ %.pre1, %block_4004f0 ]
  %30 = phi i64 [ %4, %block_4004e0.block_4004f2_crit_edge ], [ %.pre, %block_4004f0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004e0.block_4004f2_crit_edge ], [ %28, %block_4004f0 ]
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
  store i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %8, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  store i8 %53, i8* %45, align 1, !tbaa !2453
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2453
  store i8 0, i8* %47, align 1, !tbaa !2453
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2453
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2453
  store i8 0, i8* %50, align 1, !tbaa !2453
  %65 = add i64 %40, -6219
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_4004e0__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  br i1 %79, label %block_401d66, label %block_401d46

block_401d66:                                     ; preds = %block_401d50, %block_401d10
  %84 = phi i64 [ %83, %block_401d10 ], [ %182, %block_401d50 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_401d10 ], [ %152, %block_401d50 ]
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

block_401d46:                                     ; preds = %block_401d10
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401d50

block_401d50:                                     ; preds = %block_401d50, %block_401d46
  %137 = phi i64 [ 0, %block_401d46 ], [ %155, %block_401d50 ]
  %138 = phi i64 [ %136, %block_401d46 ], [ %182, %block_401d50 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401d46 ], [ %152, %block_401d50 ]
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
  br i1 %172, label %block_401d66, label %block_401d50
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -40
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 32
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2432
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2446
  %25 = xor i64 %11, %14
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2449
  %36 = lshr i64 %11, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2450
  %42 = add i64 %10, -16
  %43 = load i64, i64* %RDI, align 8
  %44 = add i64 %13, 11
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -12
  %48 = load i32, i32* %ESI, align 4
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i32, i32* %EDX, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -20
  %60 = load i32, i32* %ECX, align 4
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -24
  %66 = load i32, i32* %R8D, align 4
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -12
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 3
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RCX, align 8, !tbaa !2428
  %77 = add i64 %70, -8
  %78 = add i64 %72, 7
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RDI, align 8, !tbaa !2428
  %81 = add i64 %80, 8
  %82 = add i64 %72, 10
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  store i32 %75, i32* %83, align 4
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -16
  %86 = load i64, i64* %PC, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %85 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = add i64 %84, -8
  %92 = add i64 %86, 7
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RDI, align 8, !tbaa !2428
  %95 = add i64 %94, 12
  %96 = add i64 %86, 10
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 %89, i32* %97, align 4
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -20
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  %105 = add i64 %98, -8
  %106 = add i64 %100, 7
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RDI, align 8, !tbaa !2428
  %109 = add i64 %108, 16
  %110 = add i64 %100, 10
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  store i32 %103, i32* %111, align 4
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -24
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %113 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RCX, align 8, !tbaa !2428
  %119 = add i64 %112, -8
  %120 = add i64 %114, 7
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RDI, align 8, !tbaa !2428
  %123 = add i64 %122, 20
  %124 = add i64 %114, 10
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  store i32 %117, i32* %125, align 4
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -8
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RDI, align 8, !tbaa !2428
  %132 = add i64 %128, 11
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i64*
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -12
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = add i64 %134, -16
  %142 = add i64 %136, 7
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %139 to i64
  %146 = sext i32 %144 to i64
  %147 = mul nsw i64 %146, %145
  %148 = trunc i64 %147 to i32
  %149 = and i64 %147, 4294967295
  store i64 %149, i64* %RCX, align 8, !tbaa !2428
  %150 = shl i64 %147, 32
  %151 = ashr exact i64 %150, 32
  %152 = icmp ne i64 %151, %147
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %17, align 1, !tbaa !2432
  %154 = and i32 %148, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #8
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  %159 = lshr i32 %148, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %35, align 1, !tbaa !2449
  store i8 %153, i8* %41, align 1, !tbaa !2450
  %161 = add i64 %134, -20
  %162 = add i64 %136, 11
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = shl i64 %147, 32
  %166 = ashr exact i64 %165, 32
  %167 = sext i32 %164 to i64
  %168 = mul nsw i64 %167, %166
  %169 = trunc i64 %168 to i32
  %170 = and i64 %168, 4294967295
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = shl i64 %168, 32
  %172 = ashr exact i64 %171, 32
  %173 = icmp ne i64 %172, %168
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %17, align 1, !tbaa !2432
  %175 = and i32 %169, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #8
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  %180 = lshr i32 %169, 31
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %35, align 1, !tbaa !2449
  store i8 %174, i8* %41, align 1, !tbaa !2450
  %182 = add i64 %134, -24
  %183 = add i64 %136, 15
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = shl i64 %168, 32
  %187 = ashr exact i64 %186, 32
  %188 = sext i32 %185 to i64
  %189 = mul nsw i64 %188, %187
  %190 = and i64 %189, 4294967295
  store i64 %190, i64* %RCX, align 8, !tbaa !2428
  %191 = shl i64 %189, 32
  %192 = ashr exact i64 %191, 30
  store i64 %192, i64* %RDI, align 8, !tbaa !2428
  %193 = lshr i64 %189, 31
  %194 = trunc i64 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %17, align 1, !tbaa !2453
  %196 = trunc i64 %192 to i32
  %197 = and i32 %196, 252
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #8
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %24, align 1, !tbaa !2453
  store i8 0, i8* %29, align 1, !tbaa !2453
  %202 = icmp eq i64 %192, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %32, align 1, !tbaa !2453
  %204 = lshr i64 %192, 63
  %205 = trunc i64 %204 to i8
  store i8 %205, i8* %35, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  %206 = add i64 %136, -1372
  %207 = add i64 %136, 27
  %208 = load i64, i64* %9, align 8, !tbaa !2428
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %207, i64* %210, align 8
  store i64 %209, i64* %9, align 8, !tbaa !2428
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %206, i64* %211, align 8, !tbaa !2428
  %212 = tail call fastcc %struct.Memory* @ext_603140_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %213 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i64 1, i64* %RDX, align 8, !tbaa !2428
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -8
  %216 = add i64 %213, 11
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RDI, align 8, !tbaa !2428
  %219 = load i64, i64* %RAX, align 8
  %220 = add i64 %213, 14
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %218 to i64*
  store i64 %219, i64* %221, align 8
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -8
  %224 = load i64, i64* %PC, align 8
  %225 = add i64 %224, 4
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %223 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RAX, align 8, !tbaa !2428
  %228 = add i64 %224, 8
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  %232 = load i32, i32* %EDX, align 4
  %233 = zext i32 %232 to i64
  %234 = load i64, i64* %RCX, align 8, !tbaa !2428
  %235 = select i1 %231, i64 %234, i64 %233
  %236 = and i64 %235, 4294967295
  store i64 %236, i64* %RCX, align 8, !tbaa !2428
  %237 = and i64 %235, 4294967295
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = load i64, i64* %RSP, align 8
  %239 = add i64 %238, 32
  store i64 %239, i64* %RSP, align 8, !tbaa !2428
  %240 = icmp ugt i64 %238, -33
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %17, align 1, !tbaa !2432
  %242 = trunc i64 %239 to i32
  %243 = and i32 %242, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243) #8
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %24, align 1, !tbaa !2446
  %248 = xor i64 %238, %239
  %249 = lshr i64 %248, 4
  %250 = trunc i64 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %29, align 1, !tbaa !2447
  %252 = icmp eq i64 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %32, align 1, !tbaa !2448
  %254 = lshr i64 %239, 63
  %255 = trunc i64 %254 to i8
  store i8 %255, i8* %35, align 1, !tbaa !2449
  %256 = lshr i64 %238, 63
  %257 = xor i64 %254, %256
  %258 = add nuw nsw i64 %257, %254
  %259 = icmp eq i64 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %41, align 1, !tbaa !2450
  %261 = add i64 %224, 18
  store i64 %261, i64* %PC, align 8
  %262 = add i64 %238, 40
  %263 = inttoptr i64 %239 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RBP, align 8, !tbaa !2428
  store i64 %262, i64* %9, align 8, !tbaa !2428
  %265 = add i64 %224, 19
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %262 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %211, align 8, !tbaa !2428
  %268 = add i64 %238, 48
  store i64 %268, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %212
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %12, i64* %13, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4005e0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
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
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %155 = inttoptr i64 %150 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %154, align 8, !tbaa !2428
  %157 = add i64 %149, 16
  store i64 %157, i64* %11, align 8, !tbaa !2428
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
define %struct.Memory* @sub_401d80___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401d80:
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_603168___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %20 = add i64 %10, -24
  store i64 %20, i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %21 = add i64 %13, -5937
  %22 = add i64 %13, 20
  %23 = add i64 %10, -48
  %24 = inttoptr i64 %23 to i64*
  store i64 %22, i64* %24, align 8
  store i64 %23, i64* %9, align 8, !tbaa !2428
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %21, i64* %25, align 8, !tbaa !2428
  %26 = tail call fastcc %struct.Memory* @ext_400530_gettimeofday(%struct.State* nonnull %0, %struct.Memory* %2)
  %27 = load i64, i64* %PC, align 8
  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #8
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %34 = icmp eq i32 %28, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %17, align 1, !tbaa !2448
  %36 = lshr i32 %28, 31
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -28
  %40 = load i32, i32* %EAX, align 4
  %41 = add i64 %27, 11
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %PC, align 8
  %44 = load i8, i8* %17, align 1, !tbaa !2448
  %45 = icmp eq i8 %44, 0
  %.v = select i1 %45, i64 59, i64 6
  %46 = add i64 %43, %.v
  store i64 %46, i64* %25, align 8, !tbaa !2428
  %.pre = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  br i1 %45, label %block_401cbb, label %block_401c86

block_401cf8:                                     ; preds = %block_401cbb, %block_401c94
  %.pre-phi6 = phi double* [ %128, %block_401cbb ], [ %.pre5, %block_401c94 ]
  %47 = phi i64 [ %.pre1, %block_401cbb ], [ %112, %block_401c94 ]
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -24
  %50 = add i64 %47, 5
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %52, i64* %53, align 1, !tbaa !2455
  store double 0.000000e+00, double* %.pre-phi6, align 1, !tbaa !2455
  %54 = load i64, i64* %RSP, align 8
  %55 = add i64 %54, 32
  store i64 %55, i64* %RSP, align 8, !tbaa !2428
  %56 = icmp ugt i64 %54, -33
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %14, align 1, !tbaa !2432
  %58 = trunc i64 %55 to i32
  %59 = and i32 %58, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #8
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %15, align 1, !tbaa !2446
  %64 = xor i64 %54, %55
  %65 = lshr i64 %64, 4
  %66 = trunc i64 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %16, align 1, !tbaa !2447
  %68 = icmp eq i64 %55, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %17, align 1, !tbaa !2448
  %70 = lshr i64 %55, 63
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* %18, align 1, !tbaa !2449
  %72 = lshr i64 %54, 63
  %73 = xor i64 %70, %72
  %74 = add nuw nsw i64 %73, %70
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %19, align 1, !tbaa !2450
  %77 = add i64 %47, 10
  store i64 %77, i64* %PC, align 8
  %78 = add i64 %54, 40
  %79 = inttoptr i64 %55 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RBP, align 8, !tbaa !2428
  store i64 %78, i64* %9, align 8, !tbaa !2428
  %81 = add i64 %47, 11
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %78 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %25, align 8, !tbaa !2428
  %84 = add i64 %54, 48
  store i64 %84, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %26

block_401c94:                                     ; preds = %block_401c86
  %85 = bitcast [32 x %union.VectorReg]* %4 to i8*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %87 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 0, i32* %87, align 1, !tbaa !2454
  %88 = getelementptr inbounds i8, i8* %85, i64 4
  %89 = bitcast i8* %88 to i32*
  store i32 0, i32* %89, align 1, !tbaa !2454
  %90 = bitcast i64* %86 to i32*
  store i32 0, i32* %90, align 1, !tbaa !2454
  %91 = getelementptr inbounds i8, i8* %85, i64 12
  %92 = bitcast i8* %91 to i32*
  store i32 0, i32* %92, align 1, !tbaa !2454
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -16
  %95 = add i64 %122, 7
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = and i64 %97, 4294967295
  store i64 %98, i64* %RCX, align 8, !tbaa !2428
  %99 = trunc i64 %97 to i32
  store i32 %99, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %100 = add i64 %93, -8
  %101 = add i64 %122, 20
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = and i64 %103, 4294967295
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  %105 = trunc i64 %103 to i32
  store i32 %105, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  %106 = add i64 %93, -24
  %107 = add i64 %122, 34
  store i64 %107, i64* %PC, align 8
  %108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %109 = load i64, i64* %108, align 1
  %110 = inttoptr i64 %106 to i64*
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, 66
  store i64 %112, i64* %25, align 8, !tbaa !2428
  %.pre5 = bitcast i64* %86 to double*
  br label %block_401cf8

block_401c86:                                     ; preds = %block_401c60
  store i8 0, i8* %14, align 1, !tbaa !2432
  %113 = and i32 %.pre, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #8
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2447
  %118 = icmp eq i32 %.pre, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %17, align 1, !tbaa !2448
  %120 = lshr i32 %.pre, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  %.v7 = select i1 %118, i64 14, i64 53
  %122 = add i64 %46, %.v7
  store i64 %122, i64* %25, align 8, !tbaa !2428
  br i1 %118, label %block_401c94, label %block_401cbb

block_401cbb:                                     ; preds = %block_401c60, %block_401c86
  %123 = phi i32 [ %.pre, %block_401c86 ], [ %.pre, %block_401c60 ]
  %124 = phi i64 [ %122, %block_401c86 ], [ %46, %block_401c60 ]
  %125 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401d90__rodata_type* @seg_401d90__rodata to i64), i64 32) to i64*), align 16
  %126 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %125, i64* %126, align 1, !tbaa !2455
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %128 = bitcast i64* %127 to double*
  store double 0.000000e+00, double* %128, align 1, !tbaa !2455
  %129 = load i64, i64* %RBP, align 8
  %130 = add i64 %129, -16
  %131 = add i64 %124, 12
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %RCX, align 8, !tbaa !2428
  %136 = sub i64 %133, %135
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = icmp ult i64 %133, %135
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %14, align 1, !tbaa !2432
  %139 = trunc i64 %136 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #8
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %15, align 1, !tbaa !2446
  %145 = xor i64 %135, %133
  %146 = xor i64 %145, %136
  %147 = lshr i64 %146, 4
  %148 = trunc i64 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %16, align 1, !tbaa !2447
  %150 = icmp eq i64 %136, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %17, align 1, !tbaa !2448
  %152 = lshr i64 %136, 63
  %153 = trunc i64 %152 to i8
  store i8 %153, i8* %18, align 1, !tbaa !2449
  %154 = lshr i64 %133, 63
  %155 = lshr i64 %135, 63
  %156 = xor i64 %155, %154
  %157 = xor i64 %152, %154
  %158 = add nuw nsw i64 %157, %156
  %159 = icmp eq i64 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %19, align 1, !tbaa !2450
  %161 = sitofp i64 %136 to double
  %162 = bitcast %union.VectorReg* %5 to double*
  store double %161, double* %162, align 1, !tbaa !2455
  %163 = add i64 %129, -8
  %164 = add i64 %124, 32
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  %167 = sext i32 %123 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = sub i64 %166, %167
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = icmp ult i64 %166, %167
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %14, align 1, !tbaa !2432
  %171 = trunc i64 %168 to i32
  %172 = and i32 %171, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #8
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %15, align 1, !tbaa !2446
  %177 = xor i64 %167, %166
  %178 = xor i64 %177, %168
  %179 = lshr i64 %178, 4
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %16, align 1, !tbaa !2447
  %182 = icmp eq i64 %168, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %17, align 1, !tbaa !2448
  %184 = lshr i64 %168, 63
  %185 = trunc i64 %184 to i8
  store i8 %185, i8* %18, align 1, !tbaa !2449
  %186 = lshr i64 %166, 63
  %187 = lshr i64 %167, 63
  %188 = xor i64 %187, %186
  %189 = xor i64 %184, %186
  %190 = add nuw nsw i64 %189, %188
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %19, align 1, !tbaa !2450
  %193 = sitofp i64 %168 to double
  %194 = bitcast %union.VectorReg* %6 to double*
  %195 = bitcast [32 x %union.VectorReg]* %4 to double*
  %196 = load double, double* %195, align 1
  %197 = fdiv double %193, %196
  store double %197, double* %194, align 1, !tbaa !2455
  %198 = fadd double %161, %197
  store double %198, double* %162, align 1, !tbaa !2455
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -24
  %201 = add i64 %124, 61
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to double*
  store double %198, double* %202, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401cf8
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005a0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005a0:
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
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16)
  store i64 %21, i64* %20, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), label %block_4005d8, label %block_4005c1

block_4005d8:                                     ; preds = %block_4005c1, %block_4005b0
  %22 = phi i64 [ %29, %block_4005c1 ], [ %21, %block_4005b0 ]
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %25 = add i64 %22, 2
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %6 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %20, align 8, !tbaa !2428
  %28 = add i64 %6, 8
  store i64 %28, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005c1:                                     ; preds = %block_4005b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %29 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %29, i64* %20, align 8, !tbaa !2428
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
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 11
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %RDI, align 8, !tbaa !2428
  %49 = add i64 %45, 8
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i64*
  %51 = load i64, i64* %50, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %58 = icmp eq i64 %51, 0
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %29, align 1, !tbaa !2448
  %60 = lshr i64 %51, 63
  %61 = trunc i64 %60 to i8
  store i8 %61, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %58, i64 29, i64 14
  %63 = add i64 %45, %.v
  store i64 %63, i64* %62, align 8, !tbaa !2428
  br i1 %58, label %block_401999, label %block_40198a

block_40198a:                                     ; preds = %block_401970
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = load i64, i64* %47, align 8
  store i64 %65, i64* %RAX, align 8, !tbaa !2428
  %66 = add i64 %63, 7
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  store i64 %68, i64* %RDI, align 8, !tbaa !2428
  %69 = add i64 %63, -5242
  %70 = add i64 %63, 15
  %71 = load i64, i64* %5, align 8, !tbaa !2428
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %5, align 8, !tbaa !2428
  store i64 %69, i64* %62, align 8, !tbaa !2428
  %74 = tail call fastcc %struct.Memory* @ext_603118_free(%struct.State* nonnull %0, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401999

block_401999:                                     ; preds = %block_40198a, %block_401970
  %75 = phi i64 [ %63, %block_401970 ], [ %.pre1, %block_40198a ]
  %76 = phi i64 [ %43, %block_401970 ], [ %.pre, %block_40198a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401970 ], [ %74, %block_40198a ]
  %77 = add i64 %76, -8
  %78 = add i64 %75, 4
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = add i64 %75, 11
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i64*
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -8
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %84 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = add i64 %88, 8
  %90 = add i64 %85, 11
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 0, i32* %91, align 4
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -8
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = add i64 %97, 16
  %99 = add i64 %94, 11
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  store i32 0, i32* %100, align 4
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -8
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RAX, align 8, !tbaa !2428
  %107 = add i64 %106, 12
  %108 = add i64 %103, 11
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  store i32 0, i32* %109, align 4
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -8
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = add i64 %115, 20
  %117 = add i64 %112, 11
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 0, i32* %118, align 4
  %119 = load i64, i64* %RSP, align 8
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %119, 16
  store i64 %121, i64* %RSP, align 8, !tbaa !2428
  %122 = icmp ugt i64 %119, -17
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %13, align 1, !tbaa !2432
  %124 = trunc i64 %121 to i32
  %125 = and i32 %124, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125) #8
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %20, align 1, !tbaa !2446
  %130 = xor i64 %119, 16
  %131 = xor i64 %130, %121
  %132 = lshr i64 %131, 4
  %133 = trunc i64 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %26, align 1, !tbaa !2447
  %135 = icmp eq i64 %121, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %29, align 1, !tbaa !2448
  %137 = lshr i64 %121, 63
  %138 = trunc i64 %137 to i8
  store i8 %138, i8* %32, align 1, !tbaa !2449
  %139 = lshr i64 %119, 63
  %140 = xor i64 %137, %139
  %141 = add nuw nsw i64 %140, %137
  %142 = icmp eq i64 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %38, align 1, !tbaa !2450
  %144 = add i64 %120, 5
  store i64 %144, i64* %PC, align 8
  %145 = add i64 %119, 24
  %146 = inttoptr i64 %121 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RBP, align 8, !tbaa !2428
  store i64 %145, i64* %5, align 8, !tbaa !2428
  %148 = add i64 %120, 6
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %145 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %62, align 8, !tbaa !2428
  %151 = add i64 %119, 32
  store i64 %151, i64* %5, align 8, !tbaa !2428
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
