; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401dc0__rodata_type = type <{ [40 x i8], [34 x i8], [30 x i8], [29 x i8], [13 x i8], [3 x i8], [3 x i8], [2 x i8], [2 x i8], [3 x i8], [3 x i8], [28 x i8] }>
%seg_602de0__init_array_type = type <{ i64, i64 }>
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
@seg_401dc0__rodata = internal constant %seg_401dc0__rodata_type <{ [40 x i8] c"\01\00\02\00\00\00\80?\AB\AA*>\00\00\00\00\00\00\00\00\00\00A@\8D\ED\B5\A0\F7\C6\B0>\00\00\00\00\80\84.A", [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", [29 x i8] c" Loop executed for %d times\0A\00", [13 x i8] c" Gosa : %e \0A\00", [3 x i8] c"XS\00", [3 x i8] c"xs\00", [2 x i8] c"M\00", [2 x i8] c"m\00", [3 x i8] c"XL\00", [3 x i8] c"xl\00", [28 x i8] c"Invalid input character !!\0A\00" }>
@seg_602de0__init_array = internal global %seg_602de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400680_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400650___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400680_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400650___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401db0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401d40___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @set_param_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mflops_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newMat_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @jacobi_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @fflop_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mat_set_init_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @clearMat_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mat_set_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @second_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400d00_jacobi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400518__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005e0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b20_mat_set_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400610_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400610:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %10 = sub i64 %8, ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)
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
  store i8 %21, i8* %11, align 1, !tbaa !2432
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %13, align 1, !tbaa !2432
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2432
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2432
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400648, label %block_400633

block_400633:                                     ; preds = %block_400610
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2433
  store i8 1, i8* %12, align 1, !tbaa !2447
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2451
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400648

block_400648:                                     ; preds = %block_400633, %block_400610
  %35 = phi i64 [ %34, %block_400633 ], [ %33, %block_400610 ]
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
define %struct.Memory* @sub_401aa0_set_param(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401aa0:
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
  store i8 %12, i8* %13, align 1, !tbaa !2433
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #12
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2451
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
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 146), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 146), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2433
  %62 = and i32 %60, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #12
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
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
  br i1 %67, label %block_401c81, label %block_401ac9

block_401bb5:                                     ; preds = %block_401b77
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -16
  %74 = add i64 %186, 4
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 157), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 157), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %77 = add i64 %186, -5701
  %78 = add i64 %186, 16
  %79 = load i64, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %RSP, align 8, !tbaa !2428
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  %82 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %174)
  %83 = load i32, i32* %EAX, align 4
  %84 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %85 = and i32 %83, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #12
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %90 = icmp eq i32 %83, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %28, align 1, !tbaa !2448
  %92 = lshr i32 %83, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v54 = select i1 %90, i64 34, i64 9
  %94 = add i64 %84, %.v54
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_401c81, label %block_401bce

block_401bce:                                     ; preds = %block_401bb5
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -16
  %97 = add i64 %94, 4
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 160), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 160), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %100 = add i64 %94, -5726
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
  store i8 0, i8* %13, align 1, !tbaa !2433
  %108 = and i32 %106, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #12
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %113 = icmp eq i32 %106, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %28, align 1, !tbaa !2448
  %115 = lshr i32 %106, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v55 = select i1 %113, i64 9, i64 46
  %117 = add i64 %107, %.v55
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %113, label %block_401c81, label %block_401c0c

block_401c0c:                                     ; preds = %block_401bce
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -16
  %120 = add i64 %117, 4
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 156), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 156), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %123 = add i64 %117, -5788
  %124 = add i64 %117, 16
  %125 = load i64, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %128 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %105)
  %129 = load i32, i32* %EAX, align 4
  %130 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %131 = and i32 %129, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #12
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %136 = icmp eq i32 %129, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %28, align 1, !tbaa !2448
  %138 = lshr i32 %129, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v56 = select i1 %136, i64 34, i64 9
  %140 = add i64 %130, %.v56
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  br i1 %136, label %block_401c81, label %block_401c25

block_401ac9:                                     ; preds = %block_401aa0
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -16
  %143 = add i64 %71, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 149), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 149), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %146 = add i64 %71, -5465
  %147 = add i64 %71, 16
  %148 = load i64, i64* %RSP, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %RSP, align 8, !tbaa !2428
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  %151 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %59)
  %152 = load i32, i32* %EAX, align 4
  %153 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %154 = and i32 %152, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #12
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %159 = icmp eq i32 %152, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %28, align 1, !tbaa !2448
  %161 = lshr i32 %152, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v49 = select i1 %159, i64 9, i64 46
  %163 = add i64 %153, %.v49
  store i64 %163, i64* %PC, align 8, !tbaa !2428
  br i1 %159, label %block_401c81, label %block_401b07

block_401b77:                                     ; preds = %block_401b5e
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -16
  %166 = add i64 %358, 4
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 154), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 154), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %169 = add i64 %358, -5639
  %170 = add i64 %358, 16
  %171 = load i64, i64* %RSP, align 8, !tbaa !2428
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %RSP, align 8, !tbaa !2428
  store i64 %169, i64* %PC, align 8, !tbaa !2428
  %174 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %346)
  %175 = load i32, i32* %EAX, align 4
  %176 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %177 = and i32 %175, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177) #12
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %182 = icmp eq i32 %175, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %28, align 1, !tbaa !2448
  %184 = lshr i32 %175, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v53 = select i1 %182, i64 9, i64 46
  %186 = add i64 %176, %.v53
  store i64 %186, i64* %PC, align 8, !tbaa !2428
  br i1 %182, label %block_401c81, label %block_401bb5

block_401c81:                                     ; preds = %block_401c25, %block_401bce, %block_401b77, %block_401b20, %block_401ac9, %block_401c0c, %block_401aa0, %block_401bb5, %block_401b5e, %block_401b07
  %187 = phi i64 [ %335, %block_401b20 ], [ %268, %block_401b07 ], [ %358, %block_401b5e ], [ %186, %block_401b77 ], [ %117, %block_401bce ], [ %94, %block_401bb5 ], [ %163, %block_401ac9 ], [ %71, %block_401aa0 ], [ %291, %block_401c25 ], [ %140, %block_401c0c ]
  %.sink29 = phi i32 [ 64, %block_401b20 ], [ 64, %block_401b07 ], [ 128, %block_401b5e ], [ 128, %block_401b77 ], [ 256, %block_401bce ], [ 256, %block_401bb5 ], [ 32, %block_401ac9 ], [ 32, %block_401aa0 ], [ 512, %block_401c25 ], [ 512, %block_401c0c ]
  %.sink = phi i32 [ 128, %block_401b20 ], [ 128, %block_401b07 ], [ 256, %block_401b5e ], [ 256, %block_401b77 ], [ 512, %block_401bce ], [ 512, %block_401bb5 ], [ 64, %block_401ac9 ], [ 64, %block_401aa0 ], [ 1024, %block_401c25 ], [ 1024, %block_401c0c ]
  %.sink5 = phi i64 [ 296, %block_401b20 ], [ 296, %block_401b07 ], [ 209, %block_401b5e ], [ 209, %block_401b77 ], [ 122, %block_401bce ], [ 122, %block_401bb5 ], [ 383, %block_401ac9 ], [ 383, %block_401aa0 ], [ 35, %block_401c25 ], [ 35, %block_401c0c ]
  %MEMORY.4 = phi %struct.Memory* [ %323, %block_401b20 ], [ %256, %block_401b07 ], [ %346, %block_401b5e ], [ %174, %block_401b77 ], [ %105, %block_401bce ], [ %82, %block_401bb5 ], [ %151, %block_401ac9 ], [ %59, %block_401aa0 ], [ %279, %block_401c25 ], [ %128, %block_401c0c ]
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -8
  %190 = add i64 %187, 4
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = add i64 %187, 10
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 %.sink29, i32* %194, align 4
  %195 = load i64, i64* %RBP, align 8
  %196 = add i64 %195, -8
  %197 = load i64, i64* %PC, align 8
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %196 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RAX, align 8, !tbaa !2428
  %201 = add i64 %200, 4
  %202 = add i64 %197, 11
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 %.sink29, i32* %203, align 4
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -8
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, 4
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %205 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = add i64 %209, 8
  %211 = add i64 %206, 11
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i32*
  store i32 %.sink, i32* %212, align 4
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, %.sink5
  %215 = load i64, i64* %RSP, align 8
  %216 = add i64 %215, 32
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  %217 = icmp ugt i64 %215, -33
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %13, align 1, !tbaa !2433
  %219 = trunc i64 %216 to i32
  %220 = and i32 %219, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #12
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %20, align 1, !tbaa !2447
  %225 = xor i64 %216, %215
  %226 = lshr i64 %225, 4
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %25, align 1, !tbaa !2451
  %229 = icmp eq i64 %216, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %28, align 1, !tbaa !2448
  %231 = lshr i64 %216, 63
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %31, align 1, !tbaa !2449
  %233 = lshr i64 %215, 63
  %234 = xor i64 %231, %233
  %235 = add nuw nsw i64 %234, %231
  %236 = icmp eq i64 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %37, align 1, !tbaa !2450
  %238 = add i64 %214, 5
  store i64 %238, i64* %PC, align 8
  %239 = add i64 %215, 40
  %240 = inttoptr i64 %216 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RBP, align 8, !tbaa !2428
  store i64 %239, i64* %RSP, align 8, !tbaa !2428
  %242 = add i64 %214, 6
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %239 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %PC, align 8, !tbaa !2428
  %245 = add i64 %215, 48
  store i64 %245, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_401b07:                                     ; preds = %block_401ac9
  %246 = load i64, i64* %RBP, align 8
  %247 = add i64 %246, -16
  %248 = add i64 %163, 4
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 147), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 147), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %251 = add i64 %163, -5527
  %252 = add i64 %163, 16
  %253 = load i64, i64* %RSP, align 8, !tbaa !2428
  %254 = add i64 %253, -8
  %255 = inttoptr i64 %254 to i64*
  store i64 %252, i64* %255, align 8
  store i64 %254, i64* %RSP, align 8, !tbaa !2428
  store i64 %251, i64* %PC, align 8, !tbaa !2428
  %256 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %151)
  %257 = load i32, i32* %EAX, align 4
  %258 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %259 = and i32 %257, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #12
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %264 = icmp eq i32 %257, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %28, align 1, !tbaa !2448
  %266 = lshr i32 %257, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v50 = select i1 %264, i64 34, i64 9
  %268 = add i64 %258, %.v50
  store i64 %268, i64* %PC, align 8, !tbaa !2428
  br i1 %264, label %block_401c81, label %block_401b20

block_401c25:                                     ; preds = %block_401c0c
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -16
  %271 = add i64 %140, 4
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i64*
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 159), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 159), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %274 = add i64 %140, -5813
  %275 = add i64 %140, 16
  %276 = load i64, i64* %RSP, align 8, !tbaa !2428
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278, align 8
  store i64 %277, i64* %RSP, align 8, !tbaa !2428
  store i64 %274, i64* %PC, align 8, !tbaa !2428
  %279 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %128)
  %280 = load i32, i32* %EAX, align 4
  %281 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %282 = and i32 %280, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282) #12
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %287 = icmp eq i32 %280, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %28, align 1, !tbaa !2448
  %289 = lshr i32 %280, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v57 = select i1 %287, i64 9, i64 46
  %291 = add i64 %281, %.v57
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  br i1 %287, label %block_401c81, label %block_401c63

block_401c63:                                     ; preds = %block_401c25
  store i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 162), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %292 = add i64 %291, -5907
  %293 = add i64 %291, 17
  %294 = load i64, i64* %RSP, align 8, !tbaa !2428
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %RSP, align 8, !tbaa !2428
  store i64 %292, i64* %PC, align 8, !tbaa !2428
  %297 = tail call fastcc %struct.Memory* @ext_400550_printf(%struct.State* nonnull %0, %struct.Memory* %279)
  %298 = load i64, i64* %PC, align 8
  store i64 6, i64* %RDI, align 8, !tbaa !2428
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -20
  %301 = load i32, i32* %EAX, align 4
  %302 = add i64 %298, 8
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %300 to i32*
  store i32 %301, i32* %303, align 4
  %304 = load i64, i64* %PC, align 8
  %305 = add i64 %304, -5868
  %306 = add i64 %304, 5
  %307 = load i64, i64* %RSP, align 8, !tbaa !2428
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %RSP, align 8, !tbaa !2428
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  %310 = tail call fastcc %struct.Memory* @ext_400590_exit(%struct.State* nonnull %0, %struct.Memory* %297)
  %311 = load i64, i64* %PC, align 8
  %312 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %311, %struct.Memory* %310)
  ret %struct.Memory* %312

block_401b20:                                     ; preds = %block_401b07
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -16
  %315 = add i64 %268, 4
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 150), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 150), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %318 = add i64 %268, -5552
  %319 = add i64 %268, 16
  %320 = load i64, i64* %RSP, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %RSP, align 8, !tbaa !2428
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  %323 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %256)
  %324 = load i32, i32* %EAX, align 4
  %325 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %326 = and i32 %324, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326) #12
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %331 = icmp eq i32 %324, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %28, align 1, !tbaa !2448
  %333 = lshr i32 %324, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v51 = select i1 %331, i64 9, i64 46
  %335 = add i64 %325, %.v51
  store i64 %335, i64* %PC, align 8, !tbaa !2428
  br i1 %331, label %block_401c81, label %block_401b5e

block_401b5e:                                     ; preds = %block_401b20
  %336 = load i64, i64* %RBP, align 8
  %337 = add i64 %336, -16
  %338 = add i64 %335, 4
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 152), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 152), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %341 = add i64 %335, -5614
  %342 = add i64 %335, 16
  %343 = load i64, i64* %RSP, align 8, !tbaa !2428
  %344 = add i64 %343, -8
  %345 = inttoptr i64 %344 to i64*
  store i64 %342, i64* %345, align 8
  store i64 %344, i64* %RSP, align 8, !tbaa !2428
  store i64 %341, i64* %PC, align 8, !tbaa !2428
  %346 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %323)
  %347 = load i32, i32* %EAX, align 4
  %348 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2433
  %349 = and i32 %347, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #12
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %354 = icmp eq i32 %347, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %28, align 1, !tbaa !2448
  %356 = lshr i32 %347, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v52 = select i1 %354, i64 34, i64 9
  %358 = add i64 %348, %.v52
  store i64 %358, i64* %PC, align 8, !tbaa !2428
  br i1 %354, label %block_401c81, label %block_401b77
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400650:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2433
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #12
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2447
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2451
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
  br i1 %12, label %block_400659, label %block_400670

block_400670:                                     ; preds = %block_400650
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

block_400659:                                     ; preds = %block_400650
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
  %36 = tail call %struct.Memory* @sub_4005e0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_4005e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e0:
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
  store i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)) to i8), i8* %9, align 1, !tbaa !2433
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)) to i32), i32 255)) #12
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2447
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2451
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2449
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), label %block_400608, label %block_4005f1

block_4005f1:                                     ; preds = %block_4005e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2433
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2451
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br label %block_400608

block_400608:                                     ; preds = %block_4005f1, %block_4005e0
  %21 = phi i64 [ %20, %block_4005f1 ], [ %19, %block_4005e0 ]
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

; Function Attrs: noinline
define %struct.Memory* @sub_400690_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400690:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -184
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 176
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2433
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2447
  %23 = xor i64 %9, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2451
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
  store i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
  %41 = add i64 %8, -12
  %42 = add i64 %11, 27
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -8
  %46 = load i32, i32* %EDI, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -68
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 64, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -64
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 7
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  store i32 64, i32* %65, align 4
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -60
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %67 to i32*
  store i32 128, i32* %70, align 4
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -68
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %72 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RDI, align 8, !tbaa !2428
  %78 = add i64 %71, -48
  %79 = add i64 %73, 6
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i32*
  store i32 %76, i32* %80, align 4
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -64
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 3
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %82 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RDI, align 8, !tbaa !2428
  %88 = add i64 %81, -52
  %89 = add i64 %83, 6
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i32*
  store i32 %86, i32* %90, align 4
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -60
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RDI, align 8, !tbaa !2428
  %98 = add i64 %91, -56
  %99 = add i64 %93, 6
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  store i32 %96, i32* %100, align 4
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -48
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %102 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, -1
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RDI, align 8, !tbaa !2428
  %109 = icmp eq i32 %106, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %15, align 1, !tbaa !2433
  %111 = and i32 %107, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #12
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %22, align 1, !tbaa !2447
  %116 = xor i32 %107, %106
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %28, align 1, !tbaa !2451
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %31, align 1, !tbaa !2448
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %34, align 1, !tbaa !2449
  %124 = lshr i32 %106, 31
  %125 = xor i32 %122, %124
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %40, align 1, !tbaa !2450
  %129 = add i64 %101, -36
  %130 = add i64 %103, 9
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  store i32 %107, i32* %131, align 4
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -52
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, -1
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDI, align 8, !tbaa !2428
  %140 = icmp eq i32 %137, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %15, align 1, !tbaa !2433
  %142 = and i32 %138, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142) #12
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %22, align 1, !tbaa !2447
  %147 = xor i32 %138, %137
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %28, align 1, !tbaa !2451
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2448
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %34, align 1, !tbaa !2449
  %155 = lshr i32 %137, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %40, align 1, !tbaa !2450
  %160 = add i64 %132, -40
  %161 = add i64 %134, 9
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %138, i32* %162, align 4
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -56
  %165 = load i64, i64* %PC, align 8
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, -1
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RDI, align 8, !tbaa !2428
  %171 = icmp eq i32 %168, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %15, align 1, !tbaa !2433
  %173 = and i32 %169, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #12
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %22, align 1, !tbaa !2447
  %178 = xor i32 %169, %168
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %28, align 1, !tbaa !2451
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %31, align 1, !tbaa !2448
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %34, align 1, !tbaa !2449
  %186 = lshr i32 %168, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %40, align 1, !tbaa !2450
  %191 = add i64 %163, -44
  %192 = add i64 %165, 9
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  store i32 %169, i32* %193, align 4
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -48
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RSI, align 8, !tbaa !2428
  %201 = add i64 %194, -52
  %202 = add i64 %196, 6
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RDX, align 8, !tbaa !2428
  %206 = add i64 %194, -56
  %207 = add i64 %196, 9
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RCX, align 8, !tbaa !2428
  %211 = load i64, i64* %RAX, align 8
  store i64 %211, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %212 = add i64 %196, -421
  %213 = add i64 %196, 19
  %214 = load i64, i64* %RSP, align 8, !tbaa !2428
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %RSP, align 8, !tbaa !2428
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  %217 = tail call fastcc %struct.Memory* @ext_400550_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %218 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -36
  %221 = add i64 %218, 13
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RSI, align 8, !tbaa !2428
  %225 = add i64 %219, -40
  %226 = add i64 %218, 16
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RDX, align 8, !tbaa !2428
  %230 = add i64 %219, -44
  %231 = add i64 %218, 19
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = add i64 %219, -108
  %236 = load i32, i32* %EAX, align 4
  %237 = add i64 %218, 22
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %235 to i32*
  store i32 %236, i32* %238, align 4
  %239 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %240 = add i64 %239, -462
  %241 = add i64 %239, 7
  %242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %RSP, align 8, !tbaa !2428
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  %245 = tail call fastcc %struct.Memory* @ext_400550_printf(%struct.State* nonnull %0, %struct.Memory* %217)
  %246 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %247 = load i64, i64* %RBP, align 8
  %248 = add i64 %247, -48
  %249 = add i64 %246, 18
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RDX, align 8, !tbaa !2428
  %253 = add i64 %247, -52
  %254 = add i64 %246, 21
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RCX, align 8, !tbaa !2428
  %258 = add i64 %247, -56
  %259 = add i64 %246, 25
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %R8, align 8, !tbaa !2428
  %263 = add i64 %247, -112
  %264 = load i32, i32* %EAX, align 4
  %265 = add i64 %246, 28
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %266, align 4
  %267 = load i64, i64* %PC, align 8
  %268 = add i64 %267, 847
  %269 = add i64 %267, 5
  %270 = load i64, i64* %RSP, align 8, !tbaa !2428
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 %269, i64* %272, align 8
  store i64 %271, i64* %RSP, align 8, !tbaa !2428
  store i64 %268, i64* %PC, align 8, !tbaa !2428
  %273 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %268, %struct.Memory* %245)
  %274 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %275 = load i64, i64* %RBP, align 8
  %276 = add i64 %275, -48
  %277 = add i64 %274, 18
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RDX, align 8, !tbaa !2428
  %281 = add i64 %275, -52
  %282 = add i64 %274, 21
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RCX, align 8, !tbaa !2428
  %286 = add i64 %275, -56
  %287 = add i64 %274, 25
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %R8, align 8, !tbaa !2428
  %291 = add i64 %275, -116
  %292 = load i32, i32* %EAX, align 4
  %293 = add i64 %274, 28
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %294, align 4
  %295 = load i64, i64* %PC, align 8
  %296 = add i64 %295, 814
  %297 = add i64 %295, 5
  %298 = load i64, i64* %RSP, align 8, !tbaa !2428
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %RSP, align 8, !tbaa !2428
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  %301 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %296, %struct.Memory* %273)
  %302 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %303 = load i64, i64* %RBP, align 8
  %304 = add i64 %303, -48
  %305 = add i64 %302, 18
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RDX, align 8, !tbaa !2428
  %309 = add i64 %303, -52
  %310 = add i64 %302, 21
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RCX, align 8, !tbaa !2428
  %314 = add i64 %303, -56
  %315 = add i64 %302, 25
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %R8, align 8, !tbaa !2428
  %319 = add i64 %303, -120
  %320 = load i32, i32* %EAX, align 4
  %321 = add i64 %302, 28
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %319 to i32*
  store i32 %320, i32* %322, align 4
  %323 = load i64, i64* %PC, align 8
  %324 = add i64 %323, 781
  %325 = add i64 %323, 5
  %326 = load i64, i64* %RSP, align 8, !tbaa !2428
  %327 = add i64 %326, -8
  %328 = inttoptr i64 %327 to i64*
  store i64 %325, i64* %328, align 8
  store i64 %327, i64* %RSP, align 8, !tbaa !2428
  store i64 %324, i64* %PC, align 8, !tbaa !2428
  %329 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %324, %struct.Memory* %301)
  %330 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -48
  %333 = add i64 %330, 18
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RDX, align 8, !tbaa !2428
  %337 = add i64 %331, -52
  %338 = add i64 %330, 21
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RCX, align 8, !tbaa !2428
  %342 = add i64 %331, -56
  %343 = add i64 %330, 25
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %R8, align 8, !tbaa !2428
  %347 = add i64 %331, -124
  %348 = load i32, i32* %EAX, align 4
  %349 = add i64 %330, 28
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %347 to i32*
  store i32 %348, i32* %350, align 4
  %351 = load i64, i64* %PC, align 8
  %352 = add i64 %351, 748
  %353 = add i64 %351, 5
  %354 = load i64, i64* %RSP, align 8, !tbaa !2428
  %355 = add i64 %354, -8
  %356 = inttoptr i64 %355 to i64*
  store i64 %353, i64* %356, align 8
  store i64 %355, i64* %RSP, align 8, !tbaa !2428
  store i64 %352, i64* %PC, align 8, !tbaa !2428
  %357 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %352, %struct.Memory* %329)
  %358 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %359 = load i64, i64* %RBP, align 8
  %360 = add i64 %359, -48
  %361 = add i64 %358, 18
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RDX, align 8, !tbaa !2428
  %365 = add i64 %359, -52
  %366 = add i64 %358, 21
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RCX, align 8, !tbaa !2428
  %370 = add i64 %359, -56
  %371 = add i64 %358, 25
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %R8, align 8, !tbaa !2428
  %375 = add i64 %359, -128
  %376 = load i32, i32* %EAX, align 4
  %377 = add i64 %358, 28
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %375 to i32*
  store i32 %376, i32* %378, align 4
  %379 = load i64, i64* %PC, align 8
  %380 = add i64 %379, 715
  %381 = add i64 %379, 5
  %382 = load i64, i64* %RSP, align 8, !tbaa !2428
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %381, i64* %384, align 8
  store i64 %383, i64* %RSP, align 8, !tbaa !2428
  store i64 %380, i64* %PC, align 8, !tbaa !2428
  %385 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %380, %struct.Memory* %357)
  %386 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %387 = load i64, i64* %RBP, align 8
  %388 = add i64 %387, -48
  %389 = add i64 %386, 18
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RDX, align 8, !tbaa !2428
  %393 = add i64 %387, -52
  %394 = add i64 %386, 21
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = add i64 %387, -56
  %399 = add i64 %386, 25
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %R8, align 8, !tbaa !2428
  %403 = add i64 %387, -132
  %404 = load i32, i32* %EAX, align 4
  %405 = add i64 %386, 31
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %403 to i32*
  store i32 %404, i32* %406, align 4
  %407 = load i64, i64* %PC, align 8
  %408 = add i64 %407, 679
  %409 = add i64 %407, 5
  %410 = load i64, i64* %RSP, align 8, !tbaa !2428
  %411 = add i64 %410, -8
  %412 = inttoptr i64 %411 to i64*
  store i64 %409, i64* %412, align 8
  store i64 %411, i64* %RSP, align 8, !tbaa !2428
  store i64 %408, i64* %PC, align 8, !tbaa !2428
  %413 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %408, %struct.Memory* %385)
  %414 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %415 = load i64, i64* %RBP, align 8
  %416 = add i64 %415, -48
  %417 = add i64 %414, 18
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RDX, align 8, !tbaa !2428
  %421 = add i64 %415, -52
  %422 = add i64 %414, 21
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RCX, align 8, !tbaa !2428
  %426 = add i64 %415, -56
  %427 = add i64 %414, 25
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %R8, align 8, !tbaa !2428
  %431 = add i64 %415, -136
  %432 = load i32, i32* %EAX, align 4
  %433 = add i64 %414, 31
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %431 to i32*
  store i32 %432, i32* %434, align 4
  %435 = load i64, i64* %PC, align 8
  %436 = add i64 %435, 643
  %437 = add i64 %435, 5
  %438 = load i64, i64* %RSP, align 8, !tbaa !2428
  %439 = add i64 %438, -8
  %440 = inttoptr i64 %439 to i64*
  store i64 %437, i64* %440, align 8
  store i64 %439, i64* %RSP, align 8, !tbaa !2428
  store i64 %436, i64* %PC, align 8, !tbaa !2428
  %441 = tail call %struct.Memory* @sub_400a90_newMat_renamed_(%struct.State* nonnull %0, i64 %436, %struct.Memory* %413)
  %442 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  %443 = load i64, i64* %RBP, align 8
  %444 = add i64 %443, -140
  %445 = load i32, i32* %EAX, align 4
  %446 = add i64 %442, 16
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %444 to i32*
  store i32 %445, i32* %447, align 4
  %448 = load i64, i64* %PC, align 8
  %449 = add i64 %448, 766
  %450 = add i64 %448, 5
  %451 = load i64, i64* %RSP, align 8, !tbaa !2428
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %450, i64* %453, align 8
  store i64 %452, i64* %RSP, align 8, !tbaa !2428
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  %454 = tail call %struct.Memory* @sub_400b20_mat_set_init_renamed_(%struct.State* nonnull %0, i64 %449, %struct.Memory* %441)
  %455 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %456 = bitcast %union.VectorReg* %5 to i8*
  %457 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  %458 = bitcast %union.VectorReg* %5 to i32*
  store i32 %457, i32* %458, align 1, !tbaa !2452
  %459 = getelementptr inbounds i8, i8* %456, i64 4
  %460 = bitcast i8* %459 to float*
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %462 = bitcast i64* %461 to float*
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  %463 = getelementptr inbounds i8, i8* %456, i64 12
  %464 = bitcast i8* %463 to float*
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %465 = add i64 %455, 1017
  %466 = add i64 %455, 25
  %467 = load i64, i64* %RSP, align 8, !tbaa !2428
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %466, i64* %469, align 8
  store i64 %468, i64* %RSP, align 8, !tbaa !2428
  store i64 %465, i64* %PC, align 8, !tbaa !2428
  %470 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %465, %struct.Memory* %454)
  %471 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %472 = bitcast i8* %459 to i32*
  %473 = bitcast i64* %461 to i32*
  %474 = bitcast i8* %463 to i32*
  %475 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %475, align 1, !tbaa !2454
  %476 = add i64 %471, 992
  %477 = add i64 %471, 20
  %478 = load i64, i64* %RSP, align 8, !tbaa !2428
  %479 = add i64 %478, -8
  %480 = inttoptr i64 %479 to i64*
  store i64 %477, i64* %480, align 8
  store i64 %479, i64* %RSP, align 8, !tbaa !2428
  store i64 %476, i64* %PC, align 8, !tbaa !2428
  %481 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %476, %struct.Memory* %470)
  %482 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i32 0, i32* %458, align 1, !tbaa !2454
  store i32 0, i32* %472, align 1, !tbaa !2454
  store i32 0, i32* %473, align 1, !tbaa !2454
  store i32 0, i32* %474, align 1, !tbaa !2454
  %483 = add i64 %482, 972
  %484 = add i64 %482, 20
  %485 = load i64, i64* %RSP, align 8, !tbaa !2428
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %RSP, align 8, !tbaa !2428
  store i64 %483, i64* %PC, align 8, !tbaa !2428
  %488 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %483, %struct.Memory* %481)
  %489 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %490 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  store i32 %490, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %491 = add i64 %489, 952
  %492 = add i64 %489, 25
  %493 = load i64, i64* %RSP, align 8, !tbaa !2428
  %494 = add i64 %493, -8
  %495 = inttoptr i64 %494 to i64*
  store i64 %492, i64* %495, align 8
  store i64 %494, i64* %RSP, align 8, !tbaa !2428
  store i64 %491, i64* %PC, align 8, !tbaa !2428
  %496 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %491, %struct.Memory* %488)
  %497 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %498 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  store i32 %498, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %499 = add i64 %497, 927
  %500 = add i64 %497, 28
  %501 = load i64, i64* %RSP, align 8, !tbaa !2428
  %502 = add i64 %501, -8
  %503 = inttoptr i64 %502 to i64*
  store i64 %500, i64* %503, align 8
  store i64 %502, i64* %RSP, align 8, !tbaa !2428
  store i64 %499, i64* %PC, align 8, !tbaa !2428
  %504 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %499, %struct.Memory* %496)
  %505 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %506 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  store i32 %506, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %507 = add i64 %505, 899
  %508 = add i64 %505, 28
  %509 = load i64, i64* %RSP, align 8, !tbaa !2428
  %510 = add i64 %509, -8
  %511 = inttoptr i64 %510 to i64*
  store i64 %508, i64* %511, align 8
  store i64 %510, i64* %RSP, align 8, !tbaa !2428
  store i64 %507, i64* %PC, align 8, !tbaa !2428
  %512 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %507, %struct.Memory* %504)
  %513 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %514 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 8) to i32*), align 8
  store i32 %514, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %515 = add i64 %513, 871
  %516 = add i64 %513, 28
  %517 = load i64, i64* %RSP, align 8, !tbaa !2428
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %516, i64* %519, align 8
  store i64 %518, i64* %RSP, align 8, !tbaa !2428
  store i64 %515, i64* %PC, align 8, !tbaa !2428
  %520 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %515, %struct.Memory* %512)
  %521 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %522 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %522, align 1, !tbaa !2454
  %523 = add i64 %521, 843
  %524 = add i64 %521, 20
  %525 = load i64, i64* %RSP, align 8, !tbaa !2428
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %RSP, align 8, !tbaa !2428
  store i64 %523, i64* %PC, align 8, !tbaa !2428
  %528 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %523, %struct.Memory* %520)
  %529 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %530 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %530, align 1, !tbaa !2454
  %531 = add i64 %529, 823
  %532 = add i64 %529, 23
  %533 = load i64, i64* %RSP, align 8, !tbaa !2428
  %534 = add i64 %533, -8
  %535 = inttoptr i64 %534 to i64*
  store i64 %532, i64* %535, align 8
  store i64 %534, i64* %RSP, align 8, !tbaa !2428
  store i64 %531, i64* %PC, align 8, !tbaa !2428
  %536 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %531, %struct.Memory* %528)
  %537 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %538 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %538, align 1, !tbaa !2454
  %539 = add i64 %537, 800
  %540 = add i64 %537, 23
  %541 = load i64, i64* %RSP, align 8, !tbaa !2428
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %540, i64* %543, align 8
  store i64 %542, i64* %RSP, align 8, !tbaa !2428
  store i64 %539, i64* %PC, align 8, !tbaa !2428
  %544 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %539, %struct.Memory* %536)
  %545 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %546 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  store i32 %546, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %547 = add i64 %545, 777
  %548 = add i64 %545, 25
  %549 = load i64, i64* %RSP, align 8, !tbaa !2428
  %550 = add i64 %549, -8
  %551 = inttoptr i64 %550 to i64*
  store i64 %548, i64* %551, align 8
  store i64 %550, i64* %RSP, align 8, !tbaa !2428
  store i64 %547, i64* %PC, align 8, !tbaa !2428
  %552 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %547, %struct.Memory* %544)
  %553 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %554 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  store i32 %554, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %555 = add i64 %553, 752
  %556 = add i64 %553, 28
  %557 = load i64, i64* %RSP, align 8, !tbaa !2428
  %558 = add i64 %557, -8
  %559 = inttoptr i64 %558 to i64*
  store i64 %556, i64* %559, align 8
  store i64 %558, i64* %RSP, align 8, !tbaa !2428
  store i64 %555, i64* %PC, align 8, !tbaa !2428
  %560 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %555, %struct.Memory* %552)
  %561 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %562 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 4) to i32*), align 4
  store i32 %562, i32* %458, align 1, !tbaa !2452
  store float 0.000000e+00, float* %460, align 1, !tbaa !2452
  store float 0.000000e+00, float* %462, align 1, !tbaa !2452
  store float 0.000000e+00, float* %464, align 1, !tbaa !2452
  %563 = add i64 %561, 724
  %564 = add i64 %561, 28
  %565 = load i64, i64* %RSP, align 8, !tbaa !2428
  %566 = add i64 %565, -8
  %567 = inttoptr i64 %566 to i64*
  store i64 %564, i64* %567, align 8
  store i64 %566, i64* %RSP, align 8, !tbaa !2428
  store i64 %563, i64* %PC, align 8, !tbaa !2428
  %568 = tail call %struct.Memory* @sub_400c20_mat_set_renamed_(%struct.State* nonnull %0, i64 %563, %struct.Memory* %560)
  %569 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RSI, align 8, !tbaa !2428
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDX, align 8, !tbaa !2428
  store i64 ptrtoint (%c_type* @c to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (%p_type* @p to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %R9, align 8, !tbaa !2428
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %R10, align 8, !tbaa !2428
  %570 = load i64, i64* %RBP, align 8
  %571 = add i64 %570, -32
  %572 = add i64 %569, 77
  store i64 %572, i64* %PC, align 8
  %573 = inttoptr i64 %571 to i32*
  store i32 64, i32* %573, align 4
  %574 = load i64, i64* %RBP, align 8
  %575 = add i64 %574, -32
  %576 = load i64, i64* %PC, align 8
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC, align 8
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RAX, align 8, !tbaa !2428
  %581 = add i64 %574, -152
  %582 = load i64, i64* %RDI, align 8
  %583 = add i64 %576, 10
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %581 to i64*
  store i64 %582, i64* %584, align 8
  %585 = load i32, i32* %EAX, align 4
  %586 = zext i32 %585 to i64
  %587 = load i64, i64* %PC, align 8
  store i64 %586, i64* %RDI, align 8, !tbaa !2428
  %588 = load i64, i64* %RBP, align 8
  %589 = add i64 %588, -152
  %590 = add i64 %587, 9
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %R11, align 8, !tbaa !2428
  %593 = bitcast i64* %RSP to i64**
  %594 = load i64*, i64** %593, align 8
  %595 = add i64 %587, 13
  store i64 %595, i64* %PC, align 8
  store i64 %592, i64* %594, align 8
  %596 = load i64, i64* %RSP, align 8
  %597 = add i64 %596, 8
  %598 = load i64, i64* %R10, align 8
  %599 = load i64, i64* %PC, align 8
  %600 = add i64 %599, 5
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %597 to i64*
  store i64 %598, i64* %601, align 8
  %602 = load i64, i64* %PC, align 8
  %603 = add i64 %602, 815
  %604 = add i64 %602, 5
  %605 = load i64, i64* %RSP, align 8, !tbaa !2428
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %607, align 8
  store i64 %606, i64* %RSP, align 8, !tbaa !2428
  store i64 %603, i64* %PC, align 8, !tbaa !2428
  %608 = tail call %struct.Memory* @sub_400d00_jacobi_renamed_(%struct.State* nonnull %0, i64 %603, %struct.Memory* %568)
  %609 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 104), i64* %RDI, align 8, !tbaa !2428
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -72
  %612 = add i64 %609, 15
  store i64 %612, i64* %PC, align 8
  %613 = bitcast %union.VectorReg* %5 to <2 x float>*
  %614 = load <2 x float>, <2 x float>* %613, align 1
  %615 = extractelement <2 x float> %614, i32 0
  %616 = inttoptr i64 %611 to float*
  store float %615, float* %616, align 4
  %617 = load i64, i64* %RBP, align 8
  %618 = add i64 %617, -32
  %619 = load i64, i64* %PC, align 8
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC, align 8
  %621 = inttoptr i64 %618 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %624 = add i64 %619, -1173
  %625 = add i64 %619, 10
  %626 = load i64, i64* %RSP, align 8, !tbaa !2428
  %627 = add i64 %626, -8
  %628 = inttoptr i64 %627 to i64*
  store i64 %625, i64* %628, align 8
  store i64 %627, i64* %RSP, align 8, !tbaa !2428
  store i64 %624, i64* %PC, align 8, !tbaa !2428
  %629 = tail call fastcc %struct.Memory* @ext_400550_printf(%struct.State* nonnull %0, %struct.Memory* %608)
  %630 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 133), i64* %RDI, align 8, !tbaa !2428
  %631 = load i64, i64* %RBP, align 8
  %632 = add i64 %631, -72
  %633 = add i64 %630, 15
  store i64 %633, i64* %PC, align 8
  %634 = inttoptr i64 %632 to float*
  %635 = load float, float* %634, align 4
  %636 = fpext float %635 to double
  %637 = bitcast %union.VectorReg* %5 to double*
  store double %636, double* %637, align 1, !tbaa !2455
  %638 = add i64 %631, -156
  %639 = load i32, i32* %EAX, align 4
  %640 = add i64 %630, 21
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %638 to i32*
  store i32 %639, i32* %641, align 4
  %642 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2432
  %643 = add i64 %642, -1204
  %644 = add i64 %642, 7
  %645 = load i64, i64* %RSP, align 8, !tbaa !2428
  %646 = add i64 %645, -8
  %647 = inttoptr i64 %646 to i64*
  store i64 %644, i64* %647, align 8
  store i64 %646, i64* %RSP, align 8, !tbaa !2428
  store i64 %643, i64* %PC, align 8, !tbaa !2428
  %648 = tail call fastcc %struct.Memory* @ext_400550_printf(%struct.State* nonnull %0, %struct.Memory* %629)
  %649 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%p_type* @p to i64), i64* %RDI, align 8, !tbaa !2428
  %650 = load i64, i64* %RBP, align 8
  %651 = add i64 %650, -160
  %652 = load i32, i32* %EAX, align 4
  %653 = add i64 %649, 16
  store i64 %653, i64* %PC, align 8
  %654 = inttoptr i64 %651 to i32*
  store i32 %652, i32* %654, align 4
  %655 = load i64, i64* %PC, align 8
  %656 = add i64 %655, 3973
  %657 = add i64 %655, 5
  %658 = load i64, i64* %RSP, align 8, !tbaa !2428
  %659 = add i64 %658, -8
  %660 = inttoptr i64 %659 to i64*
  store i64 %657, i64* %660, align 8
  store i64 %659, i64* %RSP, align 8, !tbaa !2428
  store i64 %656, i64* %PC, align 8, !tbaa !2428
  %661 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %656, %struct.Memory* %648)
  %662 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  %663 = add i64 %662, 3968
  %664 = add i64 %662, 15
  %665 = load i64, i64* %RSP, align 8, !tbaa !2428
  %666 = add i64 %665, -8
  %667 = inttoptr i64 %666 to i64*
  store i64 %664, i64* %667, align 8
  store i64 %666, i64* %RSP, align 8, !tbaa !2428
  store i64 %663, i64* %PC, align 8, !tbaa !2428
  %668 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %663, %struct.Memory* %661)
  %669 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  %670 = add i64 %669, 3953
  %671 = add i64 %669, 15
  %672 = load i64, i64* %RSP, align 8, !tbaa !2428
  %673 = add i64 %672, -8
  %674 = inttoptr i64 %673 to i64*
  store i64 %671, i64* %674, align 8
  store i64 %673, i64* %RSP, align 8, !tbaa !2428
  store i64 %670, i64* %PC, align 8, !tbaa !2428
  %675 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %670, %struct.Memory* %668)
  %676 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  %677 = add i64 %676, 3938
  %678 = add i64 %676, 15
  %679 = load i64, i64* %RSP, align 8, !tbaa !2428
  %680 = add i64 %679, -8
  %681 = inttoptr i64 %680 to i64*
  store i64 %678, i64* %681, align 8
  store i64 %680, i64* %RSP, align 8, !tbaa !2428
  store i64 %677, i64* %PC, align 8, !tbaa !2428
  %682 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %677, %struct.Memory* %675)
  %683 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  %684 = add i64 %683, 3923
  %685 = add i64 %683, 15
  %686 = load i64, i64* %RSP, align 8, !tbaa !2428
  %687 = add i64 %686, -8
  %688 = inttoptr i64 %687 to i64*
  store i64 %685, i64* %688, align 8
  store i64 %687, i64* %RSP, align 8, !tbaa !2428
  store i64 %684, i64* %PC, align 8, !tbaa !2428
  %689 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %684, %struct.Memory* %682)
  %690 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  %691 = add i64 %690, 3908
  %692 = add i64 %690, 15
  %693 = load i64, i64* %RSP, align 8, !tbaa !2428
  %694 = add i64 %693, -8
  %695 = inttoptr i64 %694 to i64*
  store i64 %692, i64* %695, align 8
  store i64 %694, i64* %RSP, align 8, !tbaa !2428
  store i64 %691, i64* %PC, align 8, !tbaa !2428
  %696 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %691, %struct.Memory* %689)
  %697 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  %698 = add i64 %697, 3893
  %699 = add i64 %697, 15
  %700 = load i64, i64* %RSP, align 8, !tbaa !2428
  %701 = add i64 %700, -8
  %702 = inttoptr i64 %701 to i64*
  store i64 %699, i64* %702, align 8
  store i64 %701, i64* %RSP, align 8, !tbaa !2428
  store i64 %698, i64* %PC, align 8, !tbaa !2428
  %703 = tail call %struct.Memory* @sub_4019a0_clearMat_renamed_(%struct.State* nonnull %0, i64 %698, %struct.Memory* %696)
  %704 = load i64, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %705 = load i64, i64* %RSP, align 8
  %706 = add i64 %705, 176
  store i64 %706, i64* %RSP, align 8, !tbaa !2428
  %707 = icmp ugt i64 %705, -177
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %15, align 1, !tbaa !2433
  %709 = trunc i64 %706 to i32
  %710 = and i32 %709, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710) #12
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %22, align 1, !tbaa !2447
  %715 = xor i64 %705, 16
  %716 = xor i64 %715, %706
  %717 = lshr i64 %716, 4
  %718 = trunc i64 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %28, align 1, !tbaa !2451
  %720 = icmp eq i64 %706, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %31, align 1, !tbaa !2448
  %722 = lshr i64 %706, 63
  %723 = trunc i64 %722 to i8
  store i8 %723, i8* %34, align 1, !tbaa !2449
  %724 = lshr i64 %705, 63
  %725 = xor i64 %722, %724
  %726 = add nuw nsw i64 %725, %722
  %727 = icmp eq i64 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %40, align 1, !tbaa !2450
  %729 = add i64 %704, 10
  store i64 %729, i64* %PC, align 8
  %730 = add i64 %705, 184
  %731 = inttoptr i64 %706 to i64*
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %RBP, align 8, !tbaa !2428
  store i64 %730, i64* %RSP, align 8, !tbaa !2428
  %733 = add i64 %704, 11
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %730 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %PC, align 8, !tbaa !2428
  %736 = add i64 %705, 192
  store i64 %736, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %703
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400518__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400518:
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
  store i8 0, i8* %5, align 1, !tbaa !2433
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #12
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2447
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2451
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_40052a, label %block_400528

block_400528:                                     ; preds = %block_400518
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40052a

block_40052a:                                     ; preds = %block_400528, %block_400518
  %27 = phi i64 [ %22, %block_400518 ], [ %.pre1, %block_400528 ]
  %28 = phi i64 [ %4, %block_400518 ], [ %.pre, %block_400528 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400518 ], [ %26, %block_400528 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2433
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #12
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2447
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2451
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
define %struct.Memory* @sub_401c90_second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401c90:
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
  store i8 0, i8* %13, align 1, !tbaa !2433
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2451
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %20 = add i64 %12, -5937
  %21 = add i64 %12, 20
  %22 = add i64 %9, -48
  %23 = inttoptr i64 %22 to i64*
  store i64 %21, i64* %23, align 8
  store i64 %22, i64* %RSP, align 8, !tbaa !2428
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %24 = tail call fastcc %struct.Memory* @ext_400560_gettimeofday(%struct.State* nonnull %0, %struct.Memory* %2)
  %25 = load i64, i64* %PC, align 8
  %26 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  store i8 0, i8* %13, align 1, !tbaa !2433
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #12
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2451
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
  %42 = add i64 %41, 59
  %43 = add i64 %41, 6
  %44 = load i8, i8* %16, align 1, !tbaa !2448
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i64 %42, i64 %43
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %.pre = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  br i1 %45, label %block_401ceb, label %block_401cb6

block_401ceb:                                     ; preds = %block_401c90, %block_401cb6
  %47 = phi i64 [ %172, %block_401cb6 ], [ %42, %block_401c90 ]
  %48 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 32) to i64*), align 16
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %48, i64* %49, align 1, !tbaa !2455
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to double*
  store double 0.000000e+00, double* %51, align 1, !tbaa !2455
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = add i64 %47, 12
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %RCX, align 8, !tbaa !2428
  %59 = sub i64 %56, %58
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  %60 = icmp ult i64 %56, %58
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %13, align 1, !tbaa !2433
  %62 = trunc i64 %59 to i32
  %63 = and i32 %62, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #12
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %14, align 1, !tbaa !2447
  %68 = xor i64 %58, %56
  %69 = xor i64 %68, %59
  %70 = lshr i64 %69, 4
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %15, align 1, !tbaa !2451
  %73 = icmp eq i64 %59, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %16, align 1, !tbaa !2448
  %75 = lshr i64 %59, 63
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %17, align 1, !tbaa !2449
  %77 = lshr i64 %56, 63
  %78 = lshr i64 %58, 63
  %79 = xor i64 %78, %77
  %80 = xor i64 %75, %77
  %81 = add nuw nsw i64 %80, %79
  %82 = icmp eq i64 %81, 2
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %18, align 1, !tbaa !2450
  %84 = sitofp i64 %59 to double
  %85 = bitcast %union.VectorReg* %5 to double*
  store double %84, double* %85, align 1, !tbaa !2455
  %86 = add i64 %52, -8
  %87 = add i64 %47, 32
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = sext i32 %.pre to i64
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = sub i64 %89, %90
  store i64 %91, i64* %RAX, align 8, !tbaa !2428
  %92 = icmp ult i64 %89, %90
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %13, align 1, !tbaa !2433
  %94 = trunc i64 %91 to i32
  %95 = and i32 %94, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #12
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %14, align 1, !tbaa !2447
  %100 = xor i64 %90, %89
  %101 = xor i64 %100, %91
  %102 = lshr i64 %101, 4
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %15, align 1, !tbaa !2451
  %105 = icmp eq i64 %91, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %16, align 1, !tbaa !2448
  %107 = lshr i64 %91, 63
  %108 = trunc i64 %107 to i8
  store i8 %108, i8* %17, align 1, !tbaa !2449
  %109 = lshr i64 %89, 63
  %110 = lshr i64 %90, 63
  %111 = xor i64 %110, %109
  %112 = xor i64 %107, %109
  %113 = add nuw nsw i64 %112, %111
  %114 = icmp eq i64 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %18, align 1, !tbaa !2450
  %116 = sitofp i64 %91 to double
  %117 = bitcast %union.VectorReg* %6 to double*
  %118 = bitcast [32 x %union.VectorReg]* %4 to double*
  %119 = load double, double* %118, align 1
  %120 = fdiv double %116, %119
  store double %120, double* %117, align 1, !tbaa !2455
  %121 = fadd double %84, %120
  store double %121, double* %85, align 1, !tbaa !2455
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -24
  %124 = add i64 %47, 61
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to double*
  store double %121, double* %125, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_401d28

block_401d28:                                     ; preds = %block_401cc4, %block_401ceb
  %.pre-phi5 = phi double* [ %.pre4, %block_401cc4 ], [ %51, %block_401ceb ]
  %.pre-phi = phi i64* [ %190, %block_401cc4 ], [ %49, %block_401ceb ]
  %126 = phi i64 [ %194, %block_401cc4 ], [ %.pre2, %block_401ceb ]
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -24
  %129 = add i64 %126, 5
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %.pre-phi, align 1, !tbaa !2455
  store double 0.000000e+00, double* %.pre-phi5, align 1, !tbaa !2455
  %132 = load i64, i64* %RSP, align 8
  %133 = add i64 %132, 32
  store i64 %133, i64* %RSP, align 8, !tbaa !2428
  %134 = icmp ugt i64 %132, -33
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %13, align 1, !tbaa !2433
  %136 = trunc i64 %133 to i32
  %137 = and i32 %136, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #12
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %14, align 1, !tbaa !2447
  %142 = xor i64 %133, %132
  %143 = lshr i64 %142, 4
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %15, align 1, !tbaa !2451
  %146 = icmp eq i64 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %16, align 1, !tbaa !2448
  %148 = lshr i64 %133, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %17, align 1, !tbaa !2449
  %150 = lshr i64 %132, 63
  %151 = xor i64 %148, %150
  %152 = add nuw nsw i64 %151, %148
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %18, align 1, !tbaa !2450
  %155 = add i64 %126, 10
  store i64 %155, i64* %PC, align 8
  %156 = add i64 %132, 40
  %157 = inttoptr i64 %133 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RBP, align 8, !tbaa !2428
  store i64 %156, i64* %RSP, align 8, !tbaa !2428
  %159 = add i64 %126, 11
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %156 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %PC, align 8, !tbaa !2428
  %162 = add i64 %132, 48
  store i64 %162, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %24

block_401cb6:                                     ; preds = %block_401c90
  store i8 0, i8* %13, align 1, !tbaa !2433
  %163 = and i32 %.pre, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #12
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2451
  %168 = icmp eq i32 %.pre, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %16, align 1, !tbaa !2448
  %170 = lshr i32 %.pre, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %.v = select i1 %168, i64 14, i64 53
  %172 = add i64 %46, %.v
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  br i1 %168, label %block_401cc4, label %block_401ceb

block_401cc4:                                     ; preds = %block_401cb6
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %174 = bitcast [32 x %union.VectorReg]* %4 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %174, align 1, !tbaa !2454
  %175 = load i64, i64* %RBP, align 8
  %176 = add i64 %175, -16
  %177 = add i64 %172, 7
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = trunc i64 %179 to i32
  %181 = and i64 %179, 4294967295
  store i64 %181, i64* %RCX, align 8, !tbaa !2428
  store i32 %180, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %182 = add i64 %175, -8
  %183 = add i64 %172, 20
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = trunc i64 %185 to i32
  %187 = and i64 %185, 4294967295
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  store i32 %186, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  %188 = add i64 %175, -24
  %189 = add i64 %172, 34
  store i64 %189, i64* %PC, align 8
  %190 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %191 = load i64, i64* %190, align 1
  %192 = inttoptr i64 %188 to i64*
  store i64 %191, i64* %192, align 8
  %193 = load i64, i64* %PC, align 8
  %194 = add i64 %193, 66
  store i64 %194, i64* %PC, align 8, !tbaa !2428
  %.pre4 = bitcast i64* %173 to double*
  br label %block_401d28
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401a10_fflop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401a10:
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
  %17 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 16) to i64*), align 16
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
  store i8 %46, i8* %47, align 1, !tbaa !2433
  %48 = and i32 %43, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #12
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = xor i32 %43, %42
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1, !tbaa !2451
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
  store i8 %80, i8* %47, align 1, !tbaa !2433
  %81 = and i32 %77, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #12
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %53, align 1, !tbaa !2447
  %86 = xor i32 %77, %76
  %87 = lshr i32 %86, 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %58, align 1, !tbaa !2451
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
  %104 = fmul double %99, %71
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
  store i8 %113, i8* %47, align 1, !tbaa !2433
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #12
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %53, align 1, !tbaa !2447
  %119 = xor i32 %110, %109
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %58, align 1, !tbaa !2451
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
  %133 = fmul double %132, %104
  %134 = bitcast [32 x %union.VectorReg]* %6 to double*
  %135 = load double, double* %134, align 1
  %136 = fmul double %133, %135
  store double %136, double* %72, align 1, !tbaa !2455
  %.cast = bitcast double %136 to <2 x i32>
  %137 = extractelement <2 x i32> %.cast, i32 0
  %138 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %137, i32* %138, align 1, !tbaa !2452
  %139 = extractelement <2 x i32> %.cast, i32 1
  %140 = getelementptr inbounds i8, i8* %16, i64 4
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 1, !tbaa !2452
  %142 = extractelement <2 x i32> %103, i32 0
  %143 = bitcast i64* %19 to i32*
  store i32 %142, i32* %143, align 1, !tbaa !2452
  %144 = extractelement <2 x i32> %103, i32 1
  %145 = getelementptr inbounds i8, i8* %16, i64 12
  %146 = bitcast i8* %145 to i32*
  store i32 %144, i32* %146, align 1, !tbaa !2452
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401db4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401db4:
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
  store i8 %22, i8* %5, align 1, !tbaa !2433
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2447
  store i8 %10, i8* %11, align 1, !tbaa !2451
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
define %struct.Memory* @sub_400b20_mat_set_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400b20:
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
  br label %block_400b2f

block_400b3f:                                     ; preds = %block_400b2f
  %49 = add i64 %445, -16
  %50 = add i64 %485, 7
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  store i32 0, i32* %51, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400b46

block_400b5d:                                     ; preds = %block_400b56, %block_400b6d
  %52 = phi i64 [ %.pre8, %block_400b56 ], [ %401, %block_400b6d ]
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -20
  %55 = add i64 %52, 3
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %59 = add i64 %53, -8
  %60 = add i64 %52, 7
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RCX, align 8, !tbaa !2428
  %63 = add i64 %62, 20
  %64 = add i64 %52, 10
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %57, %66
  %68 = icmp ult i32 %57, %66
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %21, align 1, !tbaa !2433
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #12
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %22, align 1, !tbaa !2447
  %75 = xor i32 %66, %57
  %76 = xor i32 %75, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %23, align 1, !tbaa !2451
  %80 = icmp eq i32 %67, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %24, align 1, !tbaa !2448
  %82 = lshr i32 %67, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %25, align 1, !tbaa !2449
  %84 = lshr i32 %57, 31
  %85 = lshr i32 %66, 31
  %86 = xor i32 %85, %84
  %87 = xor i32 %82, %84
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %26, align 1, !tbaa !2450
  %91 = icmp ne i8 %83, 0
  %92 = xor i1 %91, %89
  %.v9 = select i1 %92, i64 16, i64 148
  %93 = add i64 %52, %.v9
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  br i1 %92, label %block_400b6d, label %block_400bf1

block_400bf1:                                     ; preds = %block_400b5d
  %94 = add i64 %53, -16
  %95 = add i64 %93, 8
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = icmp eq i32 %97, -1
  %101 = icmp eq i32 %98, 0
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %21, align 1, !tbaa !2433
  %104 = and i32 %98, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #12
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %22, align 1, !tbaa !2447
  %109 = xor i32 %98, %97
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %23, align 1, !tbaa !2451
  %113 = zext i1 %101 to i8
  store i8 %113, i8* %24, align 1, !tbaa !2448
  %114 = lshr i32 %98, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %25, align 1, !tbaa !2449
  %116 = lshr i32 %97, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %114
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %26, align 1, !tbaa !2450
  %121 = add i64 %93, 14
  store i64 %121, i64* %PC, align 8
  store i32 %98, i32* %96, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, -185
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br label %block_400b46

block_400b6d:                                     ; preds = %block_400b5d
  %124 = add i64 %53, -12
  %125 = add i64 %93, 3
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = add i64 %93, 7
  store i64 %129, i64* %PC, align 8
  %130 = load i32, i32* %126, align 4
  %131 = sext i32 %127 to i64
  %132 = sext i32 %130 to i64
  %133 = mul nsw i64 %132, %131
  %134 = trunc i64 %133 to i32
  %135 = and i64 %133, 4294967295
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  %136 = shl i64 %133, 32
  %137 = ashr exact i64 %136, 32
  %138 = icmp ne i64 %137, %133
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %21, align 1, !tbaa !2433
  %140 = and i32 %134, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #12
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %24, align 1, !tbaa !2448
  %145 = lshr i32 %134, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %25, align 1, !tbaa !2449
  store i8 %139, i8* %26, align 1, !tbaa !2450
  %147 = trunc i64 %133 to i32
  %148 = load <2 x i32>, <2 x i32>* %28, align 1
  %149 = load <2 x i32>, <2 x i32>* %30, align 1
  %150 = sitofp i32 %147 to float
  store float %150, float* %31, align 1, !tbaa !2452
  %151 = extractelement <2 x i32> %148, i32 1
  store i32 %151, i32* %33, align 1, !tbaa !2452
  %152 = extractelement <2 x i32> %149, i32 0
  store i32 %152, i32* %34, align 1, !tbaa !2452
  %153 = extractelement <2 x i32> %149, i32 1
  store i32 %153, i32* %36, align 1, !tbaa !2452
  %154 = add i64 %93, 15
  store i64 %154, i64* %PC, align 8
  %155 = load i64, i64* %61, align 8
  store i64 %155, i64* %RCX, align 8, !tbaa !2428
  %156 = add i64 %155, 12
  %157 = add i64 %93, 18
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, -1
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = icmp eq i32 %159, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %21, align 1, !tbaa !2433
  %164 = and i32 %160, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #12
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %22, align 1, !tbaa !2447
  %169 = xor i32 %160, %159
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %23, align 1, !tbaa !2451
  %173 = icmp eq i32 %160, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %24, align 1, !tbaa !2448
  %175 = lshr i32 %160, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %25, align 1, !tbaa !2449
  %177 = lshr i32 %159, 31
  %178 = xor i32 %175, %177
  %179 = add nuw nsw i32 %178, %177
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %26, align 1, !tbaa !2450
  %182 = add i64 %93, 25
  store i64 %182, i64* %PC, align 8
  %183 = load i64, i64* %61, align 8
  store i64 %183, i64* %RCX, align 8, !tbaa !2428
  %184 = add i64 %183, 12
  %185 = add i64 %93, 28
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, -1
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDX, align 8, !tbaa !2428
  %190 = sext i32 %160 to i64
  %191 = sext i32 %188 to i64
  %192 = mul nsw i64 %191, %190
  %193 = trunc i64 %192 to i32
  %194 = and i64 %192, 4294967295
  store i64 %194, i64* %RAX, align 8, !tbaa !2428
  %195 = shl i64 %192, 32
  %196 = ashr exact i64 %195, 32
  %197 = icmp ne i64 %196, %192
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %21, align 1, !tbaa !2433
  %199 = and i32 %193, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #12
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %24, align 1, !tbaa !2448
  %204 = lshr i32 %193, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %25, align 1, !tbaa !2449
  store i8 %198, i8* %26, align 1, !tbaa !2450
  %206 = trunc i64 %192 to i32
  %207 = load <2 x i32>, <2 x i32>* %38, align 1
  %208 = load <2 x i32>, <2 x i32>* %40, align 1
  %209 = sitofp i32 %206 to float
  store float %209, float* %41, align 1, !tbaa !2452
  %210 = extractelement <2 x i32> %207, i32 1
  store i32 %210, i32* %43, align 1, !tbaa !2452
  %211 = extractelement <2 x i32> %208, i32 0
  store i32 %211, i32* %44, align 1, !tbaa !2452
  %212 = extractelement <2 x i32> %208, i32 1
  store i32 %212, i32* %46, align 1, !tbaa !2452
  %213 = load <2 x float>, <2 x float>* %47, align 1
  %214 = load <2 x i32>, <2 x i32>* %30, align 1
  %215 = load <2 x float>, <2 x float>* %48, align 1
  %216 = extractelement <2 x float> %213, i32 0
  %217 = extractelement <2 x float> %215, i32 0
  %218 = fdiv float %216, %217
  store float %218, float* %31, align 1, !tbaa !2452
  %219 = bitcast <2 x float> %213 to <2 x i32>
  %220 = extractelement <2 x i32> %219, i32 1
  store i32 %220, i32* %33, align 1, !tbaa !2452
  %221 = extractelement <2 x i32> %214, i32 0
  store i32 %221, i32* %34, align 1, !tbaa !2452
  %222 = extractelement <2 x i32> %214, i32 1
  store i32 %222, i32* %36, align 1, !tbaa !2452
  %223 = load i64, i64* %RBP, align 8
  %224 = add i64 %223, -8
  %225 = add i64 %93, 46
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RCX, align 8, !tbaa !2428
  %228 = add i64 %93, 49
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RCX, align 8, !tbaa !2428
  %231 = add i64 %93, 53
  store i64 %231, i64* %PC, align 8
  %232 = load i64, i64* %226, align 8
  store i64 %232, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %233 = add i64 %93, 61
  store i64 %233, i64* %PC, align 8
  %234 = load i64, i64* %226, align 8
  store i64 %234, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %235 = add i64 %93, 69
  store i64 %235, i64* %PC, align 8
  %236 = load i64, i64* %226, align 8
  store i64 %236, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2433
  store i8 1, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %237 = add i64 %223, -12
  %238 = add i64 %93, 76
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RDX, align 8, !tbaa !2428
  %242 = add i64 %93, 80
  store i64 %242, i64* %PC, align 8
  %243 = load i64, i64* %226, align 8
  store i64 %243, i64* %RSI, align 8, !tbaa !2428
  %244 = add i64 %243, 16
  %245 = add i64 %93, 84
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %240 to i64
  %249 = sext i32 %247 to i64
  %250 = mul nsw i64 %249, %248
  %251 = trunc i64 %250 to i32
  %252 = and i64 %250, 4294967295
  store i64 %252, i64* %RDX, align 8, !tbaa !2428
  %253 = shl i64 %250, 32
  %254 = ashr exact i64 %253, 32
  %255 = icmp ne i64 %254, %250
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %21, align 1, !tbaa !2433
  %257 = and i32 %251, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257) #12
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %24, align 1, !tbaa !2448
  %262 = lshr i32 %251, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %25, align 1, !tbaa !2449
  store i8 %256, i8* %26, align 1, !tbaa !2450
  %264 = add i64 %93, 88
  store i64 %264, i64* %PC, align 8
  %265 = load i64, i64* %226, align 8
  store i64 %265, i64* %RSI, align 8, !tbaa !2428
  %266 = add i64 %265, 20
  %267 = add i64 %93, 92
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = shl i64 %250, 32
  %271 = ashr exact i64 %270, 32
  %272 = sext i32 %269 to i64
  %273 = mul nsw i64 %272, %271
  %274 = and i64 %273, 4294967295
  store i64 %274, i64* %RDX, align 8, !tbaa !2428
  %275 = trunc i64 %273 to i32
  %276 = and i64 %273, 4294967295
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2433
  %277 = and i32 %275, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277) #12
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %23, align 1, !tbaa !2451
  %282 = icmp eq i32 %275, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %24, align 1, !tbaa !2448
  %284 = lshr i32 %275, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %286 = load i64, i64* %RBP, align 8
  %287 = add i64 %286, -16
  %288 = add i64 %93, 97
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RDX, align 8, !tbaa !2428
  %292 = add i64 %286, -8
  %293 = add i64 %93, 101
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RSI, align 8, !tbaa !2428
  %296 = add i64 %295, 20
  %297 = add i64 %93, 105
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %290 to i64
  %301 = sext i32 %299 to i64
  %302 = mul nsw i64 %301, %300
  %303 = and i64 %302, 4294967295
  store i64 %303, i64* %RDX, align 8, !tbaa !2428
  %304 = trunc i64 %302 to i32
  %305 = add i32 %304, %275
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = icmp ult i32 %305, %275
  %308 = icmp ult i32 %305, %304
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %21, align 1, !tbaa !2433
  %311 = and i32 %305, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311) #12
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %22, align 1, !tbaa !2447
  %316 = xor i64 %302, %273
  %317 = trunc i64 %316 to i32
  %318 = xor i32 %317, %305
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %23, align 1, !tbaa !2451
  %322 = icmp eq i32 %305, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %24, align 1, !tbaa !2448
  %324 = lshr i32 %305, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %25, align 1, !tbaa !2449
  %326 = lshr i32 %304, 31
  %327 = xor i32 %324, %284
  %328 = xor i32 %324, %326
  %329 = add nuw nsw i32 %327, %328
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %26, align 1, !tbaa !2450
  %332 = add i64 %286, -20
  %333 = add i64 %93, 110
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, %305
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RAX, align 8, !tbaa !2428
  %338 = icmp ult i32 %336, %305
  %339 = icmp ult i32 %336, %335
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %21, align 1, !tbaa !2433
  %342 = and i32 %336, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342) #12
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %22, align 1, !tbaa !2447
  %347 = xor i32 %335, %305
  %348 = xor i32 %347, %336
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %23, align 1, !tbaa !2451
  %352 = icmp eq i32 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %24, align 1, !tbaa !2448
  %354 = lshr i32 %336, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %25, align 1, !tbaa !2449
  %356 = lshr i32 %335, 31
  %357 = xor i32 %354, %324
  %358 = xor i32 %354, %356
  %359 = add nuw nsw i32 %357, %358
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %26, align 1, !tbaa !2450
  %362 = sext i32 %336 to i64
  store i64 %362, i64* %RSI, align 8, !tbaa !2428
  %363 = load i64, i64* %RCX, align 8
  %364 = shl nsw i64 %362, 2
  %365 = add i64 %363, %364
  %366 = add i64 %93, 118
  store i64 %366, i64* %PC, align 8
  %367 = load <2 x float>, <2 x float>* %47, align 1
  %368 = extractelement <2 x float> %367, i32 0
  %369 = inttoptr i64 %365 to float*
  store float %368, float* %369, align 4
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -20
  %372 = load i64, i64* %PC, align 8
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = add i32 %375, 1
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = icmp eq i32 %375, -1
  %379 = icmp eq i32 %376, 0
  %380 = or i1 %378, %379
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %21, align 1, !tbaa !2433
  %382 = and i32 %376, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382) #12
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %22, align 1, !tbaa !2447
  %387 = xor i32 %376, %375
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %23, align 1, !tbaa !2451
  %391 = zext i1 %379 to i8
  store i8 %391, i8* %24, align 1, !tbaa !2448
  %392 = lshr i32 %376, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %25, align 1, !tbaa !2449
  %394 = lshr i32 %375, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %392
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %26, align 1, !tbaa !2450
  %399 = add i64 %372, 9
  store i64 %399, i64* %PC, align 8
  store i32 %376, i32* %374, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, -143
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  br label %block_400b5d

block_400b46:                                     ; preds = %block_400bf1, %block_400b3f
  %402 = phi i64 [ %123, %block_400bf1 ], [ %.pre7, %block_400b3f ]
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -16
  %405 = add i64 %402, 3
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX, align 8, !tbaa !2428
  %409 = add i64 %403, -8
  %410 = add i64 %402, 7
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RCX, align 8, !tbaa !2428
  %413 = add i64 %412, 16
  %414 = add i64 %402, 10
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sub i32 %407, %416
  %418 = icmp ult i32 %407, %416
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %21, align 1, !tbaa !2433
  %420 = and i32 %417, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #12
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %22, align 1, !tbaa !2447
  %425 = xor i32 %416, %407
  %426 = xor i32 %425, %417
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %23, align 1, !tbaa !2451
  %430 = icmp eq i32 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %24, align 1, !tbaa !2448
  %432 = lshr i32 %417, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %25, align 1, !tbaa !2449
  %434 = lshr i32 %407, 31
  %435 = lshr i32 %416, 31
  %436 = xor i32 %435, %434
  %437 = xor i32 %432, %434
  %438 = add nuw nsw i32 %437, %436
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %26, align 1, !tbaa !2450
  %441 = icmp ne i8 %433, 0
  %442 = xor i1 %441, %439
  %.v = select i1 %442, i64 16, i64 190
  %443 = add i64 %402, %.v
  store i64 %443, i64* %PC, align 8, !tbaa !2428
  br i1 %442, label %block_400b56, label %block_400c04

block_400b2f:                                     ; preds = %block_400c04, %block_400b20
  %444 = phi i64 [ %518, %block_400c04 ], [ %.pre, %block_400b20 ]
  %445 = load i64, i64* %RBP, align 8
  %446 = add i64 %445, -12
  %447 = add i64 %444, 3
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RAX, align 8, !tbaa !2428
  %451 = add i64 %445, -8
  %452 = add i64 %444, 7
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RCX, align 8, !tbaa !2428
  %455 = add i64 %454, 12
  %456 = add i64 %444, 10
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sub i32 %449, %458
  %460 = icmp ult i32 %449, %458
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %21, align 1, !tbaa !2433
  %462 = and i32 %459, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #12
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %22, align 1, !tbaa !2447
  %467 = xor i32 %458, %449
  %468 = xor i32 %467, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %23, align 1, !tbaa !2451
  %472 = icmp eq i32 %459, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %24, align 1, !tbaa !2448
  %474 = lshr i32 %459, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %25, align 1, !tbaa !2449
  %476 = lshr i32 %449, 31
  %477 = lshr i32 %458, 31
  %478 = xor i32 %477, %476
  %479 = xor i32 %474, %476
  %480 = add nuw nsw i32 %479, %478
  %481 = icmp eq i32 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %26, align 1, !tbaa !2450
  %483 = icmp ne i8 %475, 0
  %484 = xor i1 %483, %481
  %.v10 = select i1 %484, i64 16, i64 232
  %485 = add i64 %444, %.v10
  store i64 %485, i64* %PC, align 8, !tbaa !2428
  br i1 %484, label %block_400b3f, label %block_400c17

block_400b56:                                     ; preds = %block_400b46
  %486 = add i64 %403, -20
  %487 = add i64 %443, 7
  store i64 %487, i64* %PC, align 8
  %488 = inttoptr i64 %486 to i32*
  store i32 0, i32* %488, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400b5d

block_400c04:                                     ; preds = %block_400b46
  %489 = add i64 %403, -12
  %490 = add i64 %443, 8
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, 1
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX, align 8, !tbaa !2428
  %495 = icmp eq i32 %492, -1
  %496 = icmp eq i32 %493, 0
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %21, align 1, !tbaa !2433
  %499 = and i32 %493, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499) #12
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %22, align 1, !tbaa !2447
  %504 = xor i32 %493, %492
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %23, align 1, !tbaa !2451
  %508 = zext i1 %496 to i8
  store i8 %508, i8* %24, align 1, !tbaa !2448
  %509 = lshr i32 %493, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %25, align 1, !tbaa !2449
  %511 = lshr i32 %492, 31
  %512 = xor i32 %509, %511
  %513 = add nuw nsw i32 %512, %509
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %26, align 1, !tbaa !2450
  %516 = add i64 %443, 14
  store i64 %516, i64* %PC, align 8
  store i32 %493, i32* %491, align 4
  %517 = load i64, i64* %PC, align 8
  %518 = add i64 %517, -227
  store i64 %518, i64* %PC, align 8, !tbaa !2428
  br label %block_400b2f

block_400c17:                                     ; preds = %block_400b2f
  %519 = add i64 %485, 1
  store i64 %519, i64* %PC, align 8
  %520 = load i64, i64* %7, align 8, !tbaa !2428
  %521 = add i64 %520, 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %RBP, align 8, !tbaa !2428
  store i64 %521, i64* %7, align 8, !tbaa !2428
  %524 = add i64 %485, 2
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %521 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %PC, align 8, !tbaa !2428
  %527 = add i64 %520, 16
  store i64 %527, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401db0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401db0:
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
define %struct.Memory* @sub_4005a0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4005a0:
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
  store i8 0, i8* %3, align 1, !tbaa !2433
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2447
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2448
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2449
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2450
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2451
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
  store i8 0, i8* %3, align 1, !tbaa !2433
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2447
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2448
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2451
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
  store i64 ptrtoint (void ()* @callback_sub_401db0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401d40___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_603168___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline
define %struct.Memory* @sub_401d40___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401d40:
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
  store i64 ptrtoint (%seg_602de0__init_array_type* @seg_602de0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602de0__init_array_type* @seg_602de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  store i8 %51, i8* %43, align 1, !tbaa !2432
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2432
  store i8 0, i8* %45, align 1, !tbaa !2432
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2432
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2432
  store i8 0, i8* %48, align 1, !tbaa !2432
  %63 = add i64 %38, -6211
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400518__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2433
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #12
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2447
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2448
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2451
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401d96, label %block_401d76

block_401d96.loopexit:                            ; preds = %block_401d80
  br label %block_401d96

block_401d96:                                     ; preds = %block_401d96.loopexit, %block_401d40
  %81 = phi i64 [ %80, %block_401d40 ], [ %179, %block_401d96.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401d40 ], [ %149, %block_401d96.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2433
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #12
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2447
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2451
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

block_401d76:                                     ; preds = %block_401d40
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2433
  store i8 1, i8* %44, align 1, !tbaa !2447
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2451
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401d80

block_401d80:                                     ; preds = %block_401d80, %block_401d76
  %134 = phi i64 [ 0, %block_401d76 ], [ %152, %block_401d80 ]
  %135 = phi i64 [ %133, %block_401d76 ], [ %179, %block_401d80 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401d76 ], [ %149, %block_401d80 ]
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
  store i8 %157, i8* %43, align 1, !tbaa !2433
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #12
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2447
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2451
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
  br i1 %169, label %block_401d96.loopexit, label %block_401d80
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401a60_mflops(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401a60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
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
  %14 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401dc0__rodata_type* @seg_401dc0__rodata to i64), i64 24) to i64*), align 8
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
  %40 = inttoptr i64 %37 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = bitcast [32 x %union.VectorReg]* %4 to double*
  store i64 %41, i64* %26, align 1, !tbaa !2455
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = bitcast i64* %43 to double*
  store double 0.000000e+00, double* %44, align 1, !tbaa !2455
  %45 = add i64 %36, -16
  %46 = add i64 %38, 10
  store i64 %46, i64* %PC, align 8
  %47 = bitcast i64 %41 to double
  %48 = inttoptr i64 %45 to double*
  %49 = load double, double* %48, align 8
  %50 = fdiv double %47, %49
  %51 = bitcast %union.VectorReg* %6 to double*
  %52 = load double, double* %51, align 1
  %53 = fmul double %50, %52
  store double %53, double* %42, align 1, !tbaa !2455
  store i64 0, i64* %43, align 1, !tbaa !2455
  %54 = add i64 %36, -4
  %55 = add i64 %38, 19
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = bitcast %union.VectorReg* %5 to double*
  store double %58, double* %59, align 1, !tbaa !2455
  %60 = fmul double %58, %53
  store double %60, double* %42, align 1, !tbaa !2455
  store i64 0, i64* %43, align 1, !tbaa !2455
  %61 = add i64 %38, 24
  store i64 %61, i64* %PC, align 8
  %62 = load i64, i64* %9, align 8, !tbaa !2428
  %63 = add i64 %62, 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  store i64 %63, i64* %9, align 8, !tbaa !2428
  %66 = add i64 %38, 25
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %PC, align 8, !tbaa !2428
  %69 = add i64 %62, 16
  store i64 %69, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4005d0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4005d0:
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
define %struct.Memory* @sub_400a90_newMat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400a90:
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
  store i8 %15, i8* %16, align 1, !tbaa !2433
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #12
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2447
  %24 = xor i64 %10, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2451
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
  store i8 %152, i8* %16, align 1, !tbaa !2433
  %153 = and i32 %147, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #12
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
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
  %164 = shl i64 %146, 32
  %165 = ashr exact i64 %164, 32
  %166 = sext i32 %163 to i64
  %167 = mul nsw i64 %166, %165
  %168 = trunc i64 %167 to i32
  %169 = and i64 %167, 4294967295
  store i64 %169, i64* %RCX, align 8, !tbaa !2428
  %170 = shl i64 %167, 32
  %171 = ashr exact i64 %170, 32
  %172 = icmp ne i64 %171, %167
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %16, align 1, !tbaa !2433
  %174 = and i32 %168, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #12
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i8 0, i8* %31, align 1, !tbaa !2448
  %179 = lshr i32 %168, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %34, align 1, !tbaa !2449
  store i8 %173, i8* %40, align 1, !tbaa !2450
  %181 = add i64 %133, -24
  %182 = add i64 %135, 15
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = shl i64 %167, 32
  %186 = ashr exact i64 %185, 32
  %187 = sext i32 %184 to i64
  %188 = mul nsw i64 %187, %186
  %189 = and i64 %188, 4294967295
  store i64 %189, i64* %RCX, align 8, !tbaa !2428
  %190 = trunc i64 %188 to i32
  %sext = shl i64 %188, 32
  %191 = ashr exact i64 %sext, 32
  %192 = ashr exact i64 %sext, 30
  store i64 %192, i64* %RDI, align 8, !tbaa !2428
  %.lobit = lshr i32 %190, 31
  %193 = trunc i32 %.lobit to i8
  store i8 %193, i8* %16, align 1, !tbaa !2432
  %194 = trunc i64 %192 to i32
  %195 = and i32 %194, 252
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #12
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %23, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2432
  %200 = icmp eq i32 %190, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %31, align 1, !tbaa !2432
  %202 = lshr i64 %191, 61
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %34, align 1, !tbaa !2432
  store i8 0, i8* %40, align 1, !tbaa !2432
  %205 = add i64 %135, -1372
  %206 = add i64 %135, 27
  %207 = load i64, i64* %RSP, align 8, !tbaa !2428
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209, align 8
  store i64 %208, i64* %RSP, align 8, !tbaa !2428
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  %210 = tail call fastcc %struct.Memory* @ext_603140_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %211 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2433
  store i8 1, i8* %23, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i64 1, i64* %RDX, align 8, !tbaa !2428
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -8
  %214 = add i64 %211, 11
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RDI, align 8, !tbaa !2428
  %217 = load i64, i64* %RAX, align 8
  %218 = add i64 %211, 14
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -8
  %222 = load i64, i64* %PC, align 8
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %221 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = add i64 %222, 8
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  %230 = load i32, i32* %EDX, align 4
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* %RCX, align 8, !tbaa !2428
  %233 = select i1 %229, i64 %232, i64 %231
  %234 = and i64 %233, 4294967295
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = and i64 %233, 4294967295
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = load i64, i64* %RSP, align 8
  %237 = add i64 %236, 32
  store i64 %237, i64* %RSP, align 8, !tbaa !2428
  %238 = icmp ugt i64 %236, -33
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %16, align 1, !tbaa !2433
  %240 = trunc i64 %237 to i32
  %241 = and i32 %240, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #12
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %23, align 1, !tbaa !2447
  %246 = xor i64 %237, %236
  %247 = lshr i64 %246, 4
  %248 = trunc i64 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %28, align 1, !tbaa !2451
  %250 = icmp eq i64 %237, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %31, align 1, !tbaa !2448
  %252 = lshr i64 %237, 63
  %253 = trunc i64 %252 to i8
  store i8 %253, i8* %34, align 1, !tbaa !2449
  %254 = lshr i64 %236, 63
  %255 = xor i64 %252, %254
  %256 = add nuw nsw i64 %255, %252
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %40, align 1, !tbaa !2450
  %259 = add i64 %222, 18
  store i64 %259, i64* %PC, align 8
  %260 = add i64 %236, 40
  %261 = inttoptr i64 %237 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %RBP, align 8, !tbaa !2428
  store i64 %260, i64* %RSP, align 8, !tbaa !2428
  %263 = add i64 %222, 19
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %260 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %PC, align 8, !tbaa !2428
  %266 = add i64 %236, 48
  store i64 %266, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %210
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400d00_jacobi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400d00:
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
  %57 = add i64 %56, -56
  %58 = load i64, i64* %R10, align 8
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -64
  %64 = load i64, i64* %RAX, align 8
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -40
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RAX, align 8, !tbaa !2428
  %74 = add i64 %73, 12
  %75 = add i64 %70, 7
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, -1
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RDI, align 8, !tbaa !2428
  %80 = icmp eq i32 %77, 0
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %81, i8* %82, align 1, !tbaa !2433
  %83 = and i32 %78, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #12
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %87, i8* %88, align 1, !tbaa !2447
  %89 = xor i32 %78, %77
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1, !tbaa !2451
  %94 = icmp eq i32 %78, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1, !tbaa !2448
  %97 = lshr i32 %78, 31
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1, !tbaa !2449
  %100 = lshr i32 %77, 31
  %101 = xor i32 %97, %100
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1, !tbaa !2450
  %106 = add i64 %68, -84
  %107 = add i64 %70, 13
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 %78, i32* %108, align 4
  %109 = load i64, i64* %RBP, align 8
  %110 = add i64 %109, -40
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  %115 = add i64 %114, 16
  %116 = add i64 %111, 7
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, -1
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RDI, align 8, !tbaa !2428
  %121 = icmp eq i32 %118, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %82, align 1, !tbaa !2433
  %123 = and i32 %119, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #12
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %88, align 1, !tbaa !2447
  %128 = xor i32 %119, %118
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %93, align 1, !tbaa !2451
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %96, align 1, !tbaa !2448
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %99, align 1, !tbaa !2449
  %136 = lshr i32 %118, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %105, align 1, !tbaa !2450
  %141 = add i64 %109, -88
  %142 = add i64 %111, 13
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i32*
  store i32 %119, i32* %143, align 4
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -40
  %146 = load i64, i64* %PC, align 8
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %145 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = add i64 %149, 20
  %151 = add i64 %146, 7
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = add i32 %153, -1
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RDI, align 8, !tbaa !2428
  %156 = icmp eq i32 %153, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %82, align 1, !tbaa !2433
  %158 = and i32 %154, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #12
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %88, align 1, !tbaa !2447
  %163 = xor i32 %154, %153
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %93, align 1, !tbaa !2451
  %167 = icmp eq i32 %154, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %96, align 1, !tbaa !2448
  %169 = lshr i32 %154, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %99, align 1, !tbaa !2449
  %171 = lshr i32 %153, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %105, align 1, !tbaa !2450
  %176 = add i64 %144, -92
  %177 = add i64 %146, 13
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 %154, i32* %178, align 4
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -80
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, 7
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %180 to i32*
  store i32 0, i32* %183, align 4
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
  %200 = bitcast %union.VectorReg* %5 to i32*
  %201 = getelementptr inbounds i8, i8* %198, i64 4
  %202 = bitcast i8* %201 to float*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %204 = bitcast i64* %203 to float*
  %205 = getelementptr inbounds i8, i8* %198, i64 12
  %206 = bitcast i8* %205 to float*
  %207 = bitcast %union.VectorReg* %5 to <2 x float>*
  %208 = bitcast i64* %203 to <2 x i32>*
  %209 = bitcast i8* %201 to i32*
  %210 = bitcast i64* %203 to i32*
  %211 = bitcast i8* %205 to i32*
  %212 = bitcast %union.VectorReg* %6 to i8*
  %213 = bitcast %union.VectorReg* %6 to float*
  %214 = bitcast %union.VectorReg* %6 to i32*
  %215 = getelementptr inbounds i8, i8* %212, i64 4
  %216 = bitcast i8* %215 to float*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %218 = bitcast i64* %217 to float*
  %219 = getelementptr inbounds i8, i8* %212, i64 12
  %220 = bitcast i8* %219 to float*
  %221 = bitcast %union.VectorReg* %6 to <2 x float>*
  %222 = bitcast i64* %217 to <2 x i32>*
  %223 = bitcast i8* %215 to i32*
  %224 = bitcast i64* %217 to i32*
  %225 = bitcast i8* %219 to i32*
  %.pre = load i64, i64* %PC, align 8
  %226 = bitcast [32 x %union.VectorReg]* %4 to <4 x i32>*
  br label %block_400d59

block_401973:                                     ; preds = %block_40189b
  %227 = add i64 %723, -68
  %228 = add i64 %759, 8
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, 1
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX, align 8, !tbaa !2428
  %233 = icmp eq i32 %230, -1
  %234 = icmp eq i32 %231, 0
  %235 = or i1 %233, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %82, align 1, !tbaa !2433
  %237 = and i32 %231, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237) #12
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %88, align 1, !tbaa !2447
  %242 = xor i32 %231, %230
  %243 = lshr i32 %242, 4
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %93, align 1, !tbaa !2451
  %246 = zext i1 %234 to i8
  store i8 %246, i8* %96, align 1, !tbaa !2448
  %247 = lshr i32 %231, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %99, align 1, !tbaa !2449
  %249 = lshr i32 %230, 31
  %250 = xor i32 %247, %249
  %251 = add nuw nsw i32 %250, %247
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %105, align 1, !tbaa !2450
  %254 = add i64 %759, 14
  store i64 %254, i64* %PC, align 8
  store i32 %231, i32* %229, align 4
  %255 = load i64, i64* %PC, align 8
  %256 = add i64 %255, -249
  store i64 %256, i64* %PC, align 8, !tbaa !2428
  br label %block_401888

block_40186e:                                     ; preds = %block_400d87
  %257 = add i64 %7310, -68
  %258 = add i64 %7346, 8
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
  store i8 %266, i8* %82, align 1, !tbaa !2433
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #12
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %88, align 1, !tbaa !2447
  %272 = xor i32 %261, %260
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %93, align 1, !tbaa !2451
  %276 = zext i1 %264 to i8
  store i8 %276, i8* %96, align 1, !tbaa !2448
  %277 = lshr i32 %261, 31
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %99, align 1, !tbaa !2449
  %279 = lshr i32 %260, 31
  %280 = xor i32 %277, %279
  %281 = add nuw nsw i32 %280, %277
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %105, align 1, !tbaa !2450
  %284 = add i64 %7346, 14
  store i64 %284, i64* %PC, align 8
  store i32 %261, i32* %259, align 4
  %285 = load i64, i64* %PC, align 8
  %286 = add i64 %285, -2824
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  br label %block_400d74

block_400d65:                                     ; preds = %block_400d59
  store <4 x i32> zeroinitializer, <4 x i32>* %226, align 1, !tbaa !2454
  %287 = add i64 %815, -96
  %288 = add i64 %851, 8
  store i64 %288, i64* %PC, align 8
  %289 = load <2 x float>, <2 x float>* %192, align 1
  %290 = extractelement <2 x float> %289, i32 0
  %291 = inttoptr i64 %287 to float*
  store float %290, float* %291, align 4
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -68
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, 7
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %293 to i32*
  store i32 1, i32* %296, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400d74

block_4018ba:                                     ; preds = %block_4018ae
  %297 = add i64 %682, -64
  %298 = add i64 %718, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX, align 8, !tbaa !2428
  %301 = add i64 %718, 7
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i64*
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %RAX, align 8, !tbaa !2428
  %304 = add i64 %718, 11
  store i64 %304, i64* %PC, align 8
  %305 = load i64, i64* %299, align 8
  store i64 %305, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %306 = add i64 %718, 19
  store i64 %306, i64* %PC, align 8
  %307 = load i64, i64* %299, align 8
  store i64 %307, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %308 = add i64 %718, 27
  store i64 %308, i64* %PC, align 8
  %309 = load i64, i64* %299, align 8
  store i64 %309, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %310 = add i64 %682, -68
  %311 = add i64 %718, 34
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RSI, align 8, !tbaa !2428
  %315 = add i64 %718, 38
  store i64 %315, i64* %PC, align 8
  %316 = load i64, i64* %299, align 8
  store i64 %316, i64* %RCX, align 8, !tbaa !2428
  %317 = add i64 %316, 16
  %318 = add i64 %718, 42
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %313 to i64
  %322 = sext i32 %320 to i64
  %323 = mul nsw i64 %322, %321
  %324 = trunc i64 %323 to i32
  %325 = and i64 %323, 4294967295
  store i64 %325, i64* %RSI, align 8, !tbaa !2428
  %326 = shl i64 %323, 32
  %327 = ashr exact i64 %326, 32
  %328 = icmp ne i64 %327, %323
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %82, align 1, !tbaa !2433
  %330 = and i32 %324, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #12
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %335 = lshr i32 %324, 31
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %99, align 1, !tbaa !2449
  store i8 %329, i8* %105, align 1, !tbaa !2450
  %337 = add i64 %718, 46
  store i64 %337, i64* %PC, align 8
  %338 = load i64, i64* %299, align 8
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = add i64 %338, 20
  %340 = add i64 %718, 50
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = shl i64 %323, 32
  %344 = ashr exact i64 %343, 32
  %345 = sext i32 %342 to i64
  %346 = mul nsw i64 %345, %344
  %347 = and i64 %346, 4294967295
  store i64 %347, i64* %RSI, align 8, !tbaa !2428
  %348 = trunc i64 %346 to i32
  %349 = and i64 %346, 4294967295
  store i64 %349, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %350 = and i32 %348, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350) #12
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %355 = icmp eq i32 %348, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %96, align 1, !tbaa !2448
  %357 = lshr i32 %348, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %359 = load i64, i64* %RBP, align 8
  %360 = add i64 %359, -72
  %361 = add i64 %718, 55
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RSI, align 8, !tbaa !2428
  %365 = add i64 %359, -64
  %366 = add i64 %718, 59
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RCX, align 8, !tbaa !2428
  %369 = add i64 %368, 20
  %370 = add i64 %718, 63
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %363 to i64
  %374 = sext i32 %372 to i64
  %375 = mul nsw i64 %374, %373
  %376 = and i64 %375, 4294967295
  store i64 %376, i64* %RSI, align 8, !tbaa !2428
  %377 = trunc i64 %375 to i32
  %378 = add i32 %377, %348
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RDX, align 8, !tbaa !2428
  %380 = icmp ult i32 %378, %348
  %381 = icmp ult i32 %378, %377
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %82, align 1, !tbaa !2433
  %384 = and i32 %378, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384) #12
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %88, align 1, !tbaa !2447
  %389 = xor i64 %375, %346
  %390 = trunc i64 %389 to i32
  %391 = xor i32 %390, %378
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %93, align 1, !tbaa !2451
  %395 = icmp eq i32 %378, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %96, align 1, !tbaa !2448
  %397 = lshr i32 %378, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %99, align 1, !tbaa !2449
  %399 = lshr i32 %377, 31
  %400 = xor i32 %397, %357
  %401 = xor i32 %397, %399
  %402 = add nuw nsw i32 %400, %401
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %105, align 1, !tbaa !2450
  %405 = add i64 %359, -76
  %406 = add i64 %718, 68
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = add i32 %408, %378
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RDX, align 8, !tbaa !2428
  %411 = icmp ult i32 %409, %378
  %412 = icmp ult i32 %409, %408
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %82, align 1, !tbaa !2433
  %415 = and i32 %409, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415) #12
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %88, align 1, !tbaa !2447
  %420 = xor i32 %408, %378
  %421 = xor i32 %420, %409
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %93, align 1, !tbaa !2451
  %425 = icmp eq i32 %409, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %96, align 1, !tbaa !2448
  %427 = lshr i32 %409, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %99, align 1, !tbaa !2449
  %429 = lshr i32 %408, 31
  %430 = xor i32 %427, %397
  %431 = xor i32 %427, %429
  %432 = add nuw nsw i32 %430, %431
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %105, align 1, !tbaa !2450
  %435 = sext i32 %409 to i64
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = load i64, i64* %RAX, align 8
  %437 = shl nsw i64 %435, 2
  %438 = add i64 %436, %437
  %439 = add i64 %718, 76
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %186, align 1, !tbaa !2452
  store float 0.000000e+00, float* %194, align 1, !tbaa !2452
  store float 0.000000e+00, float* %195, align 1, !tbaa !2452
  store float 0.000000e+00, float* %196, align 1, !tbaa !2452
  %442 = load i64, i64* %RBP, align 8
  %443 = add i64 %442, -40
  %444 = add i64 %718, 80
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %443 to i64*
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %RAX, align 8, !tbaa !2428
  %447 = add i64 %718, 83
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %RAX, align 8, !tbaa !2428
  %450 = add i64 %718, 87
  store i64 %450, i64* %PC, align 8
  %451 = load i64, i64* %445, align 8
  store i64 %451, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %452 = add i64 %718, 95
  store i64 %452, i64* %PC, align 8
  %453 = load i64, i64* %445, align 8
  store i64 %453, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %454 = add i64 %718, 103
  store i64 %454, i64* %PC, align 8
  %455 = load i64, i64* %445, align 8
  store i64 %455, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %456 = add i64 %442, -68
  %457 = add i64 %718, 110
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RSI, align 8, !tbaa !2428
  %461 = add i64 %718, 114
  store i64 %461, i64* %PC, align 8
  %462 = load i64, i64* %445, align 8
  store i64 %462, i64* %RCX, align 8, !tbaa !2428
  %463 = add i64 %462, 16
  %464 = add i64 %718, 118
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %459 to i64
  %468 = sext i32 %466 to i64
  %469 = mul nsw i64 %468, %467
  %470 = trunc i64 %469 to i32
  %471 = and i64 %469, 4294967295
  store i64 %471, i64* %RSI, align 8, !tbaa !2428
  %472 = shl i64 %469, 32
  %473 = ashr exact i64 %472, 32
  %474 = icmp ne i64 %473, %469
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %82, align 1, !tbaa !2433
  %476 = and i32 %470, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476) #12
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %481 = lshr i32 %470, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %99, align 1, !tbaa !2449
  store i8 %475, i8* %105, align 1, !tbaa !2450
  %483 = add i64 %718, 122
  store i64 %483, i64* %PC, align 8
  %484 = load i64, i64* %445, align 8
  store i64 %484, i64* %RCX, align 8, !tbaa !2428
  %485 = add i64 %484, 20
  %486 = add i64 %718, 126
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = shl i64 %469, 32
  %490 = ashr exact i64 %489, 32
  %491 = sext i32 %488 to i64
  %492 = mul nsw i64 %491, %490
  %493 = and i64 %492, 4294967295
  store i64 %493, i64* %RSI, align 8, !tbaa !2428
  %494 = trunc i64 %492 to i32
  %495 = and i64 %492, 4294967295
  store i64 %495, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %496 = and i32 %494, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496) #12
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %501 = icmp eq i32 %494, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %96, align 1, !tbaa !2448
  %503 = lshr i32 %494, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %505 = load i64, i64* %RBP, align 8
  %506 = add i64 %505, -72
  %507 = add i64 %718, 131
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %RSI, align 8, !tbaa !2428
  %511 = add i64 %505, -40
  %512 = add i64 %718, 135
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %RCX, align 8, !tbaa !2428
  %515 = add i64 %514, 20
  %516 = add i64 %718, 139
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = sext i32 %509 to i64
  %520 = sext i32 %518 to i64
  %521 = mul nsw i64 %520, %519
  %522 = and i64 %521, 4294967295
  store i64 %522, i64* %RSI, align 8, !tbaa !2428
  %523 = trunc i64 %521 to i32
  %524 = add i32 %523, %494
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RDX, align 8, !tbaa !2428
  %526 = icmp ult i32 %524, %494
  %527 = icmp ult i32 %524, %523
  %528 = or i1 %526, %527
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %82, align 1, !tbaa !2433
  %530 = and i32 %524, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530) #12
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %88, align 1, !tbaa !2447
  %535 = xor i64 %521, %492
  %536 = trunc i64 %535 to i32
  %537 = xor i32 %536, %524
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %93, align 1, !tbaa !2451
  %541 = icmp eq i32 %524, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %96, align 1, !tbaa !2448
  %543 = lshr i32 %524, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %99, align 1, !tbaa !2449
  %545 = lshr i32 %523, 31
  %546 = xor i32 %543, %503
  %547 = xor i32 %543, %545
  %548 = add nuw nsw i32 %546, %547
  %549 = icmp eq i32 %548, 2
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %105, align 1, !tbaa !2450
  %551 = add i64 %505, -76
  %552 = add i64 %718, 144
  store i64 %552, i64* %PC, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = add i32 %554, %524
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RDX, align 8, !tbaa !2428
  %557 = icmp ult i32 %555, %524
  %558 = icmp ult i32 %555, %554
  %559 = or i1 %557, %558
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %82, align 1, !tbaa !2433
  %561 = and i32 %555, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561) #12
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %88, align 1, !tbaa !2447
  %566 = xor i32 %554, %524
  %567 = xor i32 %566, %555
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %93, align 1, !tbaa !2451
  %571 = icmp eq i32 %555, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %96, align 1, !tbaa !2448
  %573 = lshr i32 %555, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %99, align 1, !tbaa !2449
  %575 = lshr i32 %554, 31
  %576 = xor i32 %573, %543
  %577 = xor i32 %573, %575
  %578 = add nuw nsw i32 %576, %577
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %105, align 1, !tbaa !2450
  %581 = sext i32 %555 to i64
  store i64 %581, i64* %RCX, align 8, !tbaa !2428
  %582 = load i64, i64* %RAX, align 8
  %583 = shl nsw i64 %581, 2
  %584 = add i64 %582, %583
  %585 = add i64 %718, 152
  store i64 %585, i64* %PC, align 8
  %586 = load <2 x float>, <2 x float>* %192, align 1
  %587 = extractelement <2 x float> %586, i32 0
  %588 = inttoptr i64 %584 to float*
  store float %587, float* %588, align 4
  %589 = load i64, i64* %RBP, align 8
  %590 = add i64 %589, -76
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
  store i8 %600, i8* %82, align 1, !tbaa !2433
  %601 = and i32 %595, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601) #12
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %88, align 1, !tbaa !2447
  %606 = xor i32 %595, %594
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %93, align 1, !tbaa !2451
  %610 = zext i1 %598 to i8
  store i8 %610, i8* %96, align 1, !tbaa !2448
  %611 = lshr i32 %595, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %99, align 1, !tbaa !2449
  %613 = lshr i32 %594, 31
  %614 = xor i32 %611, %613
  %615 = add nuw nsw i32 %614, %611
  %616 = icmp eq i32 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %105, align 1, !tbaa !2450
  %618 = add i64 %591, 9
  store i64 %618, i64* %PC, align 8
  store i32 %595, i32* %593, align 4
  %619 = load i64, i64* %PC, align 8
  %620 = add i64 %619, -173
  store i64 %620, i64* %PC, align 8, !tbaa !2428
  br label %block_4018ae

block_40185b:                                     ; preds = %block_400d9a
  %621 = add i64 %761, -72
  %622 = add i64 %797, 8
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
  store i8 %630, i8* %82, align 1, !tbaa !2433
  %631 = and i32 %625, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631) #12
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %88, align 1, !tbaa !2447
  %636 = xor i32 %625, %624
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %93, align 1, !tbaa !2451
  %640 = zext i1 %628 to i8
  store i8 %640, i8* %96, align 1, !tbaa !2448
  %641 = lshr i32 %625, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %99, align 1, !tbaa !2449
  %643 = lshr i32 %624, 31
  %644 = xor i32 %641, %643
  %645 = add nuw nsw i32 %644, %641
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %105, align 1, !tbaa !2450
  %648 = add i64 %797, 14
  store i64 %648, i64* %PC, align 8
  store i32 %625, i32* %623, align 4
  %649 = load i64, i64* %PC, align 8
  %650 = add i64 %649, -2786
  store i64 %650, i64* %PC, align 8, !tbaa !2428
  br label %block_400d87

block_401960:                                     ; preds = %block_4018ae
  %651 = add i64 %682, -72
  %652 = add i64 %718, 8
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
  store i8 %660, i8* %82, align 1, !tbaa !2433
  %661 = and i32 %655, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661) #12
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %88, align 1, !tbaa !2447
  %666 = xor i32 %655, %654
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %93, align 1, !tbaa !2451
  %670 = zext i1 %658 to i8
  store i8 %670, i8* %96, align 1, !tbaa !2448
  %671 = lshr i32 %655, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %99, align 1, !tbaa !2449
  %673 = lshr i32 %654, 31
  %674 = xor i32 %671, %673
  %675 = add nuw nsw i32 %674, %671
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %105, align 1, !tbaa !2450
  %678 = add i64 %718, 14
  store i64 %678, i64* %PC, align 8
  store i32 %655, i32* %653, align 4
  %679 = load i64, i64* %PC, align 8
  %680 = add i64 %679, -211
  store i64 %680, i64* %PC, align 8, !tbaa !2428
  br label %block_40189b

block_4018ae:                                     ; preds = %block_4018a7, %block_4018ba
  %681 = phi i64 [ %.pre27, %block_4018a7 ], [ %620, %block_4018ba ]
  %682 = load i64, i64* %RBP, align 8
  %683 = add i64 %682, -76
  %684 = add i64 %681, 3
  store i64 %684, i64* %PC, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RAX, align 8, !tbaa !2428
  %688 = add i64 %682, -92
  %689 = add i64 %681, 6
  store i64 %689, i64* %PC, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = sub i32 %686, %691
  %693 = icmp ult i32 %686, %691
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %82, align 1, !tbaa !2433
  %695 = and i32 %692, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695) #12
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %88, align 1, !tbaa !2447
  %700 = xor i32 %691, %686
  %701 = xor i32 %700, %692
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %93, align 1, !tbaa !2451
  %705 = icmp eq i32 %692, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %96, align 1, !tbaa !2448
  %707 = lshr i32 %692, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %99, align 1, !tbaa !2449
  %709 = lshr i32 %686, 31
  %710 = lshr i32 %691, 31
  %711 = xor i32 %710, %709
  %712 = xor i32 %707, %709
  %713 = add nuw nsw i32 %712, %711
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %105, align 1, !tbaa !2450
  %716 = icmp ne i8 %708, 0
  %717 = xor i1 %716, %714
  %.v31 = select i1 %717, i64 12, i64 178
  %718 = add i64 %681, %.v31
  store i64 %718, i64* %PC, align 8, !tbaa !2428
  br i1 %717, label %block_4018ba, label %block_401960

block_4018a7:                                     ; preds = %block_40189b
  %719 = add i64 %723, -76
  %720 = add i64 %759, 7
  store i64 %720, i64* %PC, align 8
  %721 = inttoptr i64 %719 to i32*
  store i32 1, i32* %721, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_4018ae

block_40189b:                                     ; preds = %block_401894, %block_401960
  %722 = phi i64 [ %.pre26, %block_401894 ], [ %680, %block_401960 ]
  %723 = load i64, i64* %RBP, align 8
  %724 = add i64 %723, -72
  %725 = add i64 %722, 3
  store i64 %725, i64* %PC, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX, align 8, !tbaa !2428
  %729 = add i64 %723, -88
  %730 = add i64 %722, 6
  store i64 %730, i64* %PC, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sub i32 %727, %732
  %734 = icmp ult i32 %727, %732
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %82, align 1, !tbaa !2433
  %736 = and i32 %733, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736) #12
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %88, align 1, !tbaa !2447
  %741 = xor i32 %732, %727
  %742 = xor i32 %741, %733
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %93, align 1, !tbaa !2451
  %746 = icmp eq i32 %733, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %96, align 1, !tbaa !2448
  %748 = lshr i32 %733, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %99, align 1, !tbaa !2449
  %750 = lshr i32 %727, 31
  %751 = lshr i32 %732, 31
  %752 = xor i32 %751, %750
  %753 = xor i32 %748, %750
  %754 = add nuw nsw i32 %753, %752
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %105, align 1, !tbaa !2450
  %757 = icmp ne i8 %749, 0
  %758 = xor i1 %757, %755
  %.v30 = select i1 %758, i64 12, i64 216
  %759 = add i64 %722, %.v30
  store i64 %759, i64* %PC, align 8, !tbaa !2428
  br i1 %758, label %block_4018a7, label %block_401973

block_400d9a:                                     ; preds = %block_400da6, %block_400d93
  %760 = phi i64 [ %7270, %block_400da6 ], [ %.pre29, %block_400d93 ]
  %761 = load i64, i64* %RBP, align 8
  %762 = add i64 %761, -76
  %763 = add i64 %760, 3
  store i64 %763, i64* %PC, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RAX, align 8, !tbaa !2428
  %767 = add i64 %761, -92
  %768 = add i64 %760, 6
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = sub i32 %765, %770
  %772 = icmp ult i32 %765, %770
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %82, align 1, !tbaa !2433
  %774 = and i32 %771, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774) #12
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %88, align 1, !tbaa !2447
  %779 = xor i32 %770, %765
  %780 = xor i32 %779, %771
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %93, align 1, !tbaa !2451
  %784 = icmp eq i32 %771, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %96, align 1, !tbaa !2448
  %786 = lshr i32 %771, 31
  %787 = trunc i32 %786 to i8
  store i8 %787, i8* %99, align 1, !tbaa !2449
  %788 = lshr i32 %765, 31
  %789 = lshr i32 %770, 31
  %790 = xor i32 %789, %788
  %791 = xor i32 %786, %788
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %105, align 1, !tbaa !2450
  %795 = icmp ne i8 %787, 0
  %796 = xor i1 %795, %793
  %.v33 = select i1 %796, i64 12, i64 2753
  %797 = add i64 %760, %.v33
  store i64 %797, i64* %PC, align 8, !tbaa !2428
  br i1 %796, label %block_400da6, label %block_40185b

block_401999:                                     ; preds = %block_400d59
  %798 = add i64 %815, -96
  %799 = add i64 %851, 5
  store i64 %799, i64* %PC, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  store i32 %801, i32* %186, align 1, !tbaa !2452
  store float 0.000000e+00, float* %194, align 1, !tbaa !2452
  store float 0.000000e+00, float* %195, align 1, !tbaa !2452
  store float 0.000000e+00, float* %196, align 1, !tbaa !2452
  %802 = add i64 %851, 6
  store i64 %802, i64* %PC, align 8
  %803 = load i64, i64* %9, align 8, !tbaa !2428
  %804 = add i64 %803, 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RBP, align 8, !tbaa !2428
  store i64 %804, i64* %9, align 8, !tbaa !2428
  %807 = add i64 %851, 7
  store i64 %807, i64* %PC, align 8
  %808 = inttoptr i64 %804 to i64*
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %PC, align 8, !tbaa !2428
  %810 = add i64 %803, 16
  store i64 %810, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401894:                                     ; preds = %block_401888
  %811 = add i64 %7272, -72
  %812 = add i64 %7308, 7
  store i64 %812, i64* %PC, align 8
  %813 = inttoptr i64 %811 to i32*
  store i32 1, i32* %813, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_40189b

block_400d59:                                     ; preds = %block_401986, %block_400d00
  %814 = phi i64 [ %7377, %block_401986 ], [ %.pre, %block_400d00 ]
  %815 = load i64, i64* %RBP, align 8
  %816 = add i64 %815, -80
  %817 = add i64 %814, 3
  store i64 %817, i64* %PC, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX, align 8, !tbaa !2428
  %821 = add i64 %815, -4
  %822 = add i64 %814, 6
  store i64 %822, i64* %PC, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = sub i32 %819, %824
  %826 = icmp ult i32 %819, %824
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %82, align 1, !tbaa !2433
  %828 = and i32 %825, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828) #12
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %88, align 1, !tbaa !2447
  %833 = xor i32 %824, %819
  %834 = xor i32 %833, %825
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %93, align 1, !tbaa !2451
  %838 = icmp eq i32 %825, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %96, align 1, !tbaa !2448
  %840 = lshr i32 %825, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %99, align 1, !tbaa !2449
  %842 = lshr i32 %819, 31
  %843 = lshr i32 %824, 31
  %844 = xor i32 %843, %842
  %845 = xor i32 %840, %842
  %846 = add nuw nsw i32 %845, %844
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %105, align 1, !tbaa !2450
  %849 = icmp ne i8 %841, 0
  %850 = xor i1 %849, %847
  %.v34 = select i1 %850, i64 12, i64 3136
  %851 = add i64 %814, %.v34
  store i64 %851, i64* %PC, align 8, !tbaa !2428
  br i1 %850, label %block_400d65, label %block_401999

block_400d93:                                     ; preds = %block_400d87
  %852 = add i64 %7310, -76
  %853 = add i64 %7346, 7
  store i64 %853, i64* %PC, align 8
  %854 = inttoptr i64 %852 to i32*
  store i32 1, i32* %854, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400d9a

block_400da6:                                     ; preds = %block_400d9a
  %855 = add i64 %761, -16
  %856 = add i64 %797, 4
  store i64 %856, i64* %PC, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %RAX, align 8, !tbaa !2428
  %859 = add i64 %797, 7
  store i64 %859, i64* %PC, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  store i64 %861, i64* %RAX, align 8, !tbaa !2428
  %862 = add i64 %797, 11
  store i64 %862, i64* %PC, align 8
  %863 = load i64, i64* %857, align 8
  store i64 %863, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %864 = add i64 %797, 19
  store i64 %864, i64* %PC, align 8
  %865 = load i64, i64* %857, align 8
  store i64 %865, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %866 = add i64 %797, 27
  store i64 %866, i64* %PC, align 8
  %867 = load i64, i64* %857, align 8
  store i64 %867, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %868 = add i64 %761, -68
  %869 = add i64 %797, 34
  store i64 %869, i64* %PC, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RSI, align 8, !tbaa !2428
  %873 = add i64 %797, 38
  store i64 %873, i64* %PC, align 8
  %874 = load i64, i64* %857, align 8
  store i64 %874, i64* %RCX, align 8, !tbaa !2428
  %875 = add i64 %874, 16
  %876 = add i64 %797, 42
  store i64 %876, i64* %PC, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = sext i32 %871 to i64
  %880 = sext i32 %878 to i64
  %881 = mul nsw i64 %880, %879
  %882 = trunc i64 %881 to i32
  %883 = and i64 %881, 4294967295
  store i64 %883, i64* %RSI, align 8, !tbaa !2428
  %884 = shl i64 %881, 32
  %885 = ashr exact i64 %884, 32
  %886 = icmp ne i64 %885, %881
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %82, align 1, !tbaa !2433
  %888 = and i32 %882, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888) #12
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %893 = lshr i32 %882, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %99, align 1, !tbaa !2449
  store i8 %887, i8* %105, align 1, !tbaa !2450
  %895 = add i64 %797, 46
  store i64 %895, i64* %PC, align 8
  %896 = load i64, i64* %857, align 8
  store i64 %896, i64* %RCX, align 8, !tbaa !2428
  %897 = add i64 %896, 20
  %898 = add i64 %797, 50
  store i64 %898, i64* %PC, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = shl i64 %881, 32
  %902 = ashr exact i64 %901, 32
  %903 = sext i32 %900 to i64
  %904 = mul nsw i64 %903, %902
  %905 = and i64 %904, 4294967295
  store i64 %905, i64* %RSI, align 8, !tbaa !2428
  %906 = trunc i64 %904 to i32
  %907 = and i64 %904, 4294967295
  store i64 %907, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %908 = and i32 %906, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908) #12
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %913 = icmp eq i32 %906, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %96, align 1, !tbaa !2448
  %915 = lshr i32 %906, 31
  %916 = trunc i32 %915 to i8
  store i8 %916, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %917 = load i64, i64* %RBP, align 8
  %918 = add i64 %917, -72
  %919 = add i64 %797, 55
  store i64 %919, i64* %PC, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RSI, align 8, !tbaa !2428
  %923 = add i64 %917, -16
  %924 = add i64 %797, 59
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RCX, align 8, !tbaa !2428
  %927 = add i64 %926, 20
  %928 = add i64 %797, 63
  store i64 %928, i64* %PC, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = sext i32 %921 to i64
  %932 = sext i32 %930 to i64
  %933 = mul nsw i64 %932, %931
  %934 = and i64 %933, 4294967295
  store i64 %934, i64* %RSI, align 8, !tbaa !2428
  %935 = trunc i64 %933 to i32
  %936 = add i32 %935, %906
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RDX, align 8, !tbaa !2428
  %938 = icmp ult i32 %936, %906
  %939 = icmp ult i32 %936, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %82, align 1, !tbaa !2433
  %942 = and i32 %936, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942) #12
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %88, align 1, !tbaa !2447
  %947 = xor i64 %933, %904
  %948 = trunc i64 %947 to i32
  %949 = xor i32 %948, %936
  %950 = lshr i32 %949, 4
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  store i8 %952, i8* %93, align 1, !tbaa !2451
  %953 = icmp eq i32 %936, 0
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %96, align 1, !tbaa !2448
  %955 = lshr i32 %936, 31
  %956 = trunc i32 %955 to i8
  store i8 %956, i8* %99, align 1, !tbaa !2449
  %957 = lshr i32 %935, 31
  %958 = xor i32 %955, %915
  %959 = xor i32 %955, %957
  %960 = add nuw nsw i32 %958, %959
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %105, align 1, !tbaa !2450
  %963 = add i64 %917, -76
  %964 = add i64 %797, 68
  store i64 %964, i64* %PC, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = add i32 %966, %936
  %968 = zext i32 %967 to i64
  store i64 %968, i64* %RDX, align 8, !tbaa !2428
  %969 = icmp ult i32 %967, %936
  %970 = icmp ult i32 %967, %966
  %971 = or i1 %969, %970
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %82, align 1, !tbaa !2433
  %973 = and i32 %967, 255
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973) #12
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  store i8 %977, i8* %88, align 1, !tbaa !2447
  %978 = xor i32 %966, %936
  %979 = xor i32 %978, %967
  %980 = lshr i32 %979, 4
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  store i8 %982, i8* %93, align 1, !tbaa !2451
  %983 = icmp eq i32 %967, 0
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %96, align 1, !tbaa !2448
  %985 = lshr i32 %967, 31
  %986 = trunc i32 %985 to i8
  store i8 %986, i8* %99, align 1, !tbaa !2449
  %987 = lshr i32 %966, 31
  %988 = xor i32 %985, %955
  %989 = xor i32 %985, %987
  %990 = add nuw nsw i32 %988, %989
  %991 = icmp eq i32 %990, 2
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %105, align 1, !tbaa !2450
  %993 = sext i32 %967 to i64
  store i64 %993, i64* %RCX, align 8, !tbaa !2428
  %994 = load i64, i64* %RAX, align 8
  %995 = shl nsw i64 %993, 2
  %996 = add i64 %994, %995
  %997 = add i64 %797, 76
  store i64 %997, i64* %PC, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  store i32 %999, i32* %186, align 1, !tbaa !2452
  store float 0.000000e+00, float* %194, align 1, !tbaa !2452
  store float 0.000000e+00, float* %195, align 1, !tbaa !2452
  store float 0.000000e+00, float* %196, align 1, !tbaa !2452
  %1000 = load i64, i64* %RBP, align 8
  %1001 = add i64 %1000, -40
  %1002 = add i64 %797, 80
  store i64 %1002, i64* %PC, align 8
  %1003 = inttoptr i64 %1001 to i64*
  %1004 = load i64, i64* %1003, align 8
  store i64 %1004, i64* %RAX, align 8, !tbaa !2428
  %1005 = add i64 %797, 83
  store i64 %1005, i64* %PC, align 8
  %1006 = inttoptr i64 %1004 to i64*
  %1007 = load i64, i64* %1006, align 8
  store i64 %1007, i64* %RAX, align 8, !tbaa !2428
  %1008 = add i64 %797, 87
  store i64 %1008, i64* %PC, align 8
  %1009 = load i64, i64* %1003, align 8
  store i64 %1009, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1010 = add i64 %797, 95
  store i64 %1010, i64* %PC, align 8
  %1011 = load i64, i64* %1003, align 8
  store i64 %1011, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1012 = add i64 %797, 103
  store i64 %1012, i64* %PC, align 8
  %1013 = load i64, i64* %1003, align 8
  store i64 %1013, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1014 = add i64 %1000, -68
  %1015 = add i64 %797, 110
  store i64 %1015, i64* %PC, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = add i32 %1017, 1
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RSI, align 8, !tbaa !2428
  %1020 = icmp eq i32 %1017, -1
  %1021 = icmp eq i32 %1018, 0
  %1022 = or i1 %1020, %1021
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %82, align 1, !tbaa !2433
  %1024 = and i32 %1018, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024) #12
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %88, align 1, !tbaa !2447
  %1029 = xor i32 %1018, %1017
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %93, align 1, !tbaa !2451
  %1033 = zext i1 %1021 to i8
  store i8 %1033, i8* %96, align 1, !tbaa !2448
  %1034 = lshr i32 %1018, 31
  %1035 = trunc i32 %1034 to i8
  store i8 %1035, i8* %99, align 1, !tbaa !2449
  %1036 = lshr i32 %1017, 31
  %1037 = xor i32 %1034, %1036
  %1038 = add nuw nsw i32 %1037, %1034
  %1039 = icmp eq i32 %1038, 2
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %105, align 1, !tbaa !2450
  %1041 = add i64 %797, 117
  store i64 %1041, i64* %PC, align 8
  %1042 = load i64, i64* %1003, align 8
  store i64 %1042, i64* %RCX, align 8, !tbaa !2428
  %1043 = add i64 %1042, 16
  %1044 = add i64 %797, 121
  store i64 %1044, i64* %PC, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = sext i32 %1018 to i64
  %1048 = sext i32 %1046 to i64
  %1049 = mul nsw i64 %1048, %1047
  %1050 = trunc i64 %1049 to i32
  %1051 = and i64 %1049, 4294967295
  store i64 %1051, i64* %RSI, align 8, !tbaa !2428
  %1052 = shl i64 %1049, 32
  %1053 = ashr exact i64 %1052, 32
  %1054 = icmp ne i64 %1053, %1049
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %82, align 1, !tbaa !2433
  %1056 = and i32 %1050, 255
  %1057 = tail call i32 @llvm.ctpop.i32(i32 %1056) #12
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  store i8 %1060, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1061 = lshr i32 %1050, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %99, align 1, !tbaa !2449
  store i8 %1055, i8* %105, align 1, !tbaa !2450
  %1063 = load i64, i64* %RBP, align 8
  %1064 = add i64 %1063, -40
  %1065 = add i64 %797, 125
  store i64 %1065, i64* %PC, align 8
  %1066 = inttoptr i64 %1064 to i64*
  %1067 = load i64, i64* %1066, align 8
  store i64 %1067, i64* %RCX, align 8, !tbaa !2428
  %1068 = add i64 %1067, 20
  %1069 = add i64 %797, 129
  store i64 %1069, i64* %PC, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = shl i64 %1049, 32
  %1073 = ashr exact i64 %1072, 32
  %1074 = sext i32 %1071 to i64
  %1075 = mul nsw i64 %1074, %1073
  %1076 = and i64 %1075, 4294967295
  store i64 %1076, i64* %RSI, align 8, !tbaa !2428
  %1077 = load i64, i64* %RDX, align 8
  %1078 = trunc i64 %1075 to i32
  %1079 = trunc i64 %1077 to i32
  %1080 = add i32 %1078, %1079
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RDX, align 8, !tbaa !2428
  %1082 = icmp ult i32 %1080, %1079
  %1083 = icmp ult i32 %1080, %1078
  %1084 = or i1 %1082, %1083
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %82, align 1, !tbaa !2433
  %1086 = and i32 %1080, 255
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086) #12
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %88, align 1, !tbaa !2447
  %1091 = xor i64 %1075, %1077
  %1092 = trunc i64 %1091 to i32
  %1093 = xor i32 %1092, %1080
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %93, align 1, !tbaa !2451
  %1097 = icmp eq i32 %1080, 0
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %96, align 1, !tbaa !2448
  %1099 = lshr i32 %1080, 31
  %1100 = trunc i32 %1099 to i8
  store i8 %1100, i8* %99, align 1, !tbaa !2449
  %1101 = lshr i32 %1079, 31
  %1102 = lshr i32 %1078, 31
  %1103 = xor i32 %1099, %1101
  %1104 = xor i32 %1099, %1102
  %1105 = add nuw nsw i32 %1103, %1104
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %105, align 1, !tbaa !2450
  %1108 = add i64 %1063, -72
  %1109 = add i64 %797, 134
  store i64 %1109, i64* %PC, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RSI, align 8, !tbaa !2428
  %1113 = add i64 %797, 138
  store i64 %1113, i64* %PC, align 8
  %1114 = load i64, i64* %1066, align 8
  store i64 %1114, i64* %RCX, align 8, !tbaa !2428
  %1115 = add i64 %1114, 20
  %1116 = add i64 %797, 142
  store i64 %1116, i64* %PC, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = sext i32 %1111 to i64
  %1120 = sext i32 %1118 to i64
  %1121 = mul nsw i64 %1120, %1119
  %1122 = and i64 %1121, 4294967295
  store i64 %1122, i64* %RSI, align 8, !tbaa !2428
  %1123 = trunc i64 %1121 to i32
  %1124 = add i32 %1123, %1080
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RDX, align 8, !tbaa !2428
  %1126 = icmp ult i32 %1124, %1080
  %1127 = icmp ult i32 %1124, %1123
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %82, align 1, !tbaa !2433
  %1130 = and i32 %1124, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130) #12
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %88, align 1, !tbaa !2447
  %1135 = xor i64 %1121, %1081
  %1136 = trunc i64 %1135 to i32
  %1137 = xor i32 %1136, %1124
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %93, align 1, !tbaa !2451
  %1141 = icmp eq i32 %1124, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %96, align 1, !tbaa !2448
  %1143 = lshr i32 %1124, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %99, align 1, !tbaa !2449
  %1145 = lshr i32 %1123, 31
  %1146 = xor i32 %1143, %1099
  %1147 = xor i32 %1143, %1145
  %1148 = add nuw nsw i32 %1146, %1147
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %105, align 1, !tbaa !2450
  %1151 = load i64, i64* %RBP, align 8
  %1152 = add i64 %1151, -76
  %1153 = add i64 %797, 147
  store i64 %1153, i64* %PC, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = add i32 %1155, %1124
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RDX, align 8, !tbaa !2428
  %1158 = icmp ult i32 %1156, %1124
  %1159 = icmp ult i32 %1156, %1155
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %82, align 1, !tbaa !2433
  %1162 = and i32 %1156, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162) #12
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %88, align 1, !tbaa !2447
  %1167 = xor i32 %1155, %1124
  %1168 = xor i32 %1167, %1156
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  store i8 %1171, i8* %93, align 1, !tbaa !2451
  %1172 = icmp eq i32 %1156, 0
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %96, align 1, !tbaa !2448
  %1174 = lshr i32 %1156, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %99, align 1, !tbaa !2449
  %1176 = lshr i32 %1155, 31
  %1177 = xor i32 %1174, %1143
  %1178 = xor i32 %1174, %1176
  %1179 = add nuw nsw i32 %1177, %1178
  %1180 = icmp eq i32 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %105, align 1, !tbaa !2450
  %1182 = sext i32 %1156 to i64
  store i64 %1182, i64* %RCX, align 8, !tbaa !2428
  %1183 = load i64, i64* %RAX, align 8
  %1184 = shl nsw i64 %1182, 2
  %1185 = add i64 %1183, %1184
  %1186 = add i64 %797, 155
  store i64 %1186, i64* %PC, align 8
  %1187 = load <2 x float>, <2 x float>* %192, align 1
  %1188 = load <2 x i32>, <2 x i32>* %197, align 1
  %1189 = inttoptr i64 %1185 to float*
  %1190 = load float, float* %1189, align 4
  %1191 = extractelement <2 x float> %1187, i32 0
  %1192 = fmul float %1191, %1190
  store float %1192, float* %193, align 1, !tbaa !2452
  %1193 = bitcast <2 x float> %1187 to <2 x i32>
  %1194 = extractelement <2 x i32> %1193, i32 1
  store i32 %1194, i32* %188, align 1, !tbaa !2452
  %1195 = extractelement <2 x i32> %1188, i32 0
  store i32 %1195, i32* %189, align 1, !tbaa !2452
  %1196 = extractelement <2 x i32> %1188, i32 1
  store i32 %1196, i32* %191, align 1, !tbaa !2452
  %1197 = add i64 %1151, -16
  %1198 = add i64 %797, 159
  store i64 %1198, i64* %PC, align 8
  %1199 = inttoptr i64 %1197 to i64*
  %1200 = load i64, i64* %1199, align 8
  store i64 %1200, i64* %RAX, align 8, !tbaa !2428
  %1201 = add i64 %797, 162
  store i64 %1201, i64* %PC, align 8
  %1202 = inttoptr i64 %1200 to i64*
  %1203 = load i64, i64* %1202, align 8
  store i64 %1203, i64* %RAX, align 8, !tbaa !2428
  %1204 = add i64 %797, 166
  store i64 %1204, i64* %PC, align 8
  %1205 = load i64, i64* %1199, align 8
  store i64 %1205, i64* %RCX, align 8, !tbaa !2428
  %1206 = add i64 %1205, 12
  %1207 = add i64 %797, 169
  store i64 %1207, i64* %PC, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RDX, align 8, !tbaa !2428
  %1211 = add i64 %797, 176
  store i64 %1211, i64* %PC, align 8
  %1212 = load i64, i64* %1199, align 8
  store i64 %1212, i64* %RCX, align 8, !tbaa !2428
  %1213 = add i64 %1212, 16
  %1214 = add i64 %797, 180
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  %1217 = sext i32 %1209 to i64
  %1218 = sext i32 %1216 to i64
  %1219 = mul nsw i64 %1218, %1217
  %1220 = trunc i64 %1219 to i32
  %1221 = and i64 %1219, 4294967295
  store i64 %1221, i64* %RDX, align 8, !tbaa !2428
  %1222 = shl i64 %1219, 32
  %1223 = ashr exact i64 %1222, 32
  %1224 = icmp ne i64 %1223, %1219
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %82, align 1, !tbaa !2433
  %1226 = and i32 %1220, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226) #12
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1231 = lshr i32 %1220, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %99, align 1, !tbaa !2449
  store i8 %1225, i8* %105, align 1, !tbaa !2450
  %1233 = load i64, i64* %RBP, align 8
  %1234 = add i64 %1233, -16
  %1235 = add i64 %797, 184
  store i64 %1235, i64* %PC, align 8
  %1236 = inttoptr i64 %1234 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %RCX, align 8, !tbaa !2428
  %1238 = add i64 %1237, 20
  %1239 = add i64 %797, 188
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = shl i64 %1219, 32
  %1243 = ashr exact i64 %1242, 32
  %1244 = sext i32 %1241 to i64
  %1245 = mul nsw i64 %1244, %1243
  %1246 = trunc i64 %1245 to i32
  %1247 = and i64 %1245, 4294967295
  store i64 %1247, i64* %RDX, align 8, !tbaa !2428
  %1248 = shl i64 %1245, 32
  %1249 = ashr exact i64 %1248, 32
  %1250 = icmp ne i64 %1249, %1245
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %82, align 1, !tbaa !2433
  %1252 = and i32 %1246, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252) #12
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1257 = lshr i32 %1246, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %99, align 1, !tbaa !2449
  store i8 %1251, i8* %105, align 1, !tbaa !2450
  %1259 = add i64 %1233, -68
  %1260 = add i64 %797, 191
  store i64 %1260, i64* %PC, align 8
  %1261 = inttoptr i64 %1259 to i32*
  %1262 = load i32, i32* %1261, align 4
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RSI, align 8, !tbaa !2428
  %1264 = add i64 %797, 195
  store i64 %1264, i64* %PC, align 8
  %1265 = load i64, i64* %1236, align 8
  store i64 %1265, i64* %RCX, align 8, !tbaa !2428
  %1266 = add i64 %1265, 16
  %1267 = add i64 %797, 199
  store i64 %1267, i64* %PC, align 8
  %1268 = inttoptr i64 %1266 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = sext i32 %1262 to i64
  %1271 = sext i32 %1269 to i64
  %1272 = mul nsw i64 %1271, %1270
  %1273 = trunc i64 %1272 to i32
  %1274 = and i64 %1272, 4294967295
  store i64 %1274, i64* %RSI, align 8, !tbaa !2428
  %1275 = shl i64 %1272, 32
  %1276 = ashr exact i64 %1275, 32
  %1277 = icmp ne i64 %1276, %1272
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %82, align 1, !tbaa !2433
  %1279 = and i32 %1273, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279) #12
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1284 = lshr i32 %1273, 31
  %1285 = trunc i32 %1284 to i8
  store i8 %1285, i8* %99, align 1, !tbaa !2449
  store i8 %1278, i8* %105, align 1, !tbaa !2450
  %1286 = add i64 %797, 203
  store i64 %1286, i64* %PC, align 8
  %1287 = load i64, i64* %1236, align 8
  store i64 %1287, i64* %RCX, align 8, !tbaa !2428
  %1288 = add i64 %1287, 20
  %1289 = add i64 %797, 207
  store i64 %1289, i64* %PC, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = shl i64 %1272, 32
  %1293 = ashr exact i64 %1292, 32
  %1294 = sext i32 %1291 to i64
  %1295 = mul nsw i64 %1294, %1293
  %1296 = and i64 %1295, 4294967295
  store i64 %1296, i64* %RSI, align 8, !tbaa !2428
  %1297 = trunc i64 %1295 to i32
  %1298 = trunc i64 %1245 to i32
  %1299 = add i32 %1297, %1298
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RDX, align 8, !tbaa !2428
  %1301 = icmp ult i32 %1299, %1298
  %1302 = icmp ult i32 %1299, %1297
  %1303 = or i1 %1301, %1302
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %82, align 1, !tbaa !2433
  %1305 = and i32 %1299, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305) #12
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %88, align 1, !tbaa !2447
  %1310 = xor i64 %1295, %1245
  %1311 = trunc i64 %1310 to i32
  %1312 = xor i32 %1311, %1299
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %93, align 1, !tbaa !2451
  %1316 = icmp eq i32 %1299, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %96, align 1, !tbaa !2448
  %1318 = lshr i32 %1299, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %99, align 1, !tbaa !2449
  %1320 = lshr i32 %1298, 31
  %1321 = lshr i32 %1297, 31
  %1322 = xor i32 %1318, %1320
  %1323 = xor i32 %1318, %1321
  %1324 = add nuw nsw i32 %1322, %1323
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %105, align 1, !tbaa !2450
  %1327 = load i64, i64* %RBP, align 8
  %1328 = add i64 %1327, -72
  %1329 = add i64 %797, 212
  store i64 %1329, i64* %PC, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RSI, align 8, !tbaa !2428
  %1333 = add i64 %1327, -16
  %1334 = add i64 %797, 216
  store i64 %1334, i64* %PC, align 8
  %1335 = inttoptr i64 %1333 to i64*
  %1336 = load i64, i64* %1335, align 8
  store i64 %1336, i64* %RCX, align 8, !tbaa !2428
  %1337 = add i64 %1336, 20
  %1338 = add i64 %797, 220
  store i64 %1338, i64* %PC, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = sext i32 %1331 to i64
  %1342 = sext i32 %1340 to i64
  %1343 = mul nsw i64 %1342, %1341
  %1344 = and i64 %1343, 4294967295
  store i64 %1344, i64* %RSI, align 8, !tbaa !2428
  %1345 = trunc i64 %1343 to i32
  %1346 = add i32 %1345, %1299
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RDX, align 8, !tbaa !2428
  %1348 = icmp ult i32 %1346, %1299
  %1349 = icmp ult i32 %1346, %1345
  %1350 = or i1 %1348, %1349
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %82, align 1, !tbaa !2433
  %1352 = and i32 %1346, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352) #12
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %88, align 1, !tbaa !2447
  %1357 = xor i64 %1343, %1300
  %1358 = trunc i64 %1357 to i32
  %1359 = xor i32 %1358, %1346
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %93, align 1, !tbaa !2451
  %1363 = icmp eq i32 %1346, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %96, align 1, !tbaa !2448
  %1365 = lshr i32 %1346, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %99, align 1, !tbaa !2449
  %1367 = lshr i32 %1345, 31
  %1368 = xor i32 %1365, %1318
  %1369 = xor i32 %1365, %1367
  %1370 = add nuw nsw i32 %1368, %1369
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %105, align 1, !tbaa !2450
  %1373 = add i64 %1327, -76
  %1374 = add i64 %797, 225
  store i64 %1374, i64* %PC, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = add i32 %1376, %1346
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RDX, align 8, !tbaa !2428
  %1379 = icmp ult i32 %1377, %1346
  %1380 = icmp ult i32 %1377, %1376
  %1381 = or i1 %1379, %1380
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %82, align 1, !tbaa !2433
  %1383 = and i32 %1377, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383) #12
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %88, align 1, !tbaa !2447
  %1388 = xor i32 %1376, %1346
  %1389 = xor i32 %1388, %1377
  %1390 = lshr i32 %1389, 4
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  store i8 %1392, i8* %93, align 1, !tbaa !2451
  %1393 = icmp eq i32 %1377, 0
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %96, align 1, !tbaa !2448
  %1395 = lshr i32 %1377, 31
  %1396 = trunc i32 %1395 to i8
  store i8 %1396, i8* %99, align 1, !tbaa !2449
  %1397 = lshr i32 %1376, 31
  %1398 = xor i32 %1395, %1365
  %1399 = xor i32 %1395, %1397
  %1400 = add nuw nsw i32 %1398, %1399
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %105, align 1, !tbaa !2450
  %1403 = sext i32 %1377 to i64
  store i64 %1403, i64* %RCX, align 8, !tbaa !2428
  %1404 = load i64, i64* %RAX, align 8
  %1405 = shl nsw i64 %1403, 2
  %1406 = add i64 %1404, %1405
  %1407 = add i64 %797, 233
  store i64 %1407, i64* %PC, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  store i32 %1409, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %1410 = load i64, i64* %RBP, align 8
  %1411 = add i64 %1410, -40
  %1412 = add i64 %797, 237
  store i64 %1412, i64* %PC, align 8
  %1413 = inttoptr i64 %1411 to i64*
  %1414 = load i64, i64* %1413, align 8
  store i64 %1414, i64* %RAX, align 8, !tbaa !2428
  %1415 = add i64 %797, 240
  store i64 %1415, i64* %PC, align 8
  %1416 = inttoptr i64 %1414 to i64*
  %1417 = load i64, i64* %1416, align 8
  store i64 %1417, i64* %RAX, align 8, !tbaa !2428
  %1418 = add i64 %797, 244
  store i64 %1418, i64* %PC, align 8
  %1419 = load i64, i64* %1413, align 8
  store i64 %1419, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1420 = add i64 %797, 252
  store i64 %1420, i64* %PC, align 8
  %1421 = load i64, i64* %1413, align 8
  store i64 %1421, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1422 = add i64 %797, 260
  store i64 %1422, i64* %PC, align 8
  %1423 = load i64, i64* %1413, align 8
  store i64 %1423, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1424 = add i64 %1410, -68
  %1425 = add i64 %797, 267
  store i64 %1425, i64* %PC, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RSI, align 8, !tbaa !2428
  %1429 = add i64 %797, 271
  store i64 %1429, i64* %PC, align 8
  %1430 = load i64, i64* %1413, align 8
  store i64 %1430, i64* %RCX, align 8, !tbaa !2428
  %1431 = add i64 %1430, 16
  %1432 = add i64 %797, 275
  store i64 %1432, i64* %PC, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = sext i32 %1427 to i64
  %1436 = sext i32 %1434 to i64
  %1437 = mul nsw i64 %1436, %1435
  %1438 = trunc i64 %1437 to i32
  %1439 = and i64 %1437, 4294967295
  store i64 %1439, i64* %RSI, align 8, !tbaa !2428
  %1440 = shl i64 %1437, 32
  %1441 = ashr exact i64 %1440, 32
  %1442 = icmp ne i64 %1441, %1437
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %82, align 1, !tbaa !2433
  %1444 = and i32 %1438, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444) #12
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1449 = lshr i32 %1438, 31
  %1450 = trunc i32 %1449 to i8
  store i8 %1450, i8* %99, align 1, !tbaa !2449
  store i8 %1443, i8* %105, align 1, !tbaa !2450
  %1451 = add i64 %797, 279
  store i64 %1451, i64* %PC, align 8
  %1452 = load i64, i64* %1413, align 8
  store i64 %1452, i64* %RCX, align 8, !tbaa !2428
  %1453 = add i64 %1452, 20
  %1454 = add i64 %797, 283
  store i64 %1454, i64* %PC, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = shl i64 %1437, 32
  %1458 = ashr exact i64 %1457, 32
  %1459 = sext i32 %1456 to i64
  %1460 = mul nsw i64 %1459, %1458
  %1461 = and i64 %1460, 4294967295
  store i64 %1461, i64* %RSI, align 8, !tbaa !2428
  %1462 = trunc i64 %1460 to i32
  %1463 = and i64 %1460, 4294967295
  store i64 %1463, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %1464 = and i32 %1462, 255
  %1465 = tail call i32 @llvm.ctpop.i32(i32 %1464) #12
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  store i8 %1468, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %1469 = icmp eq i32 %1462, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %96, align 1, !tbaa !2448
  %1471 = lshr i32 %1462, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1473 = load i64, i64* %RBP, align 8
  %1474 = add i64 %1473, -72
  %1475 = add i64 %797, 288
  store i64 %1475, i64* %PC, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = add i32 %1477, 1
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RSI, align 8, !tbaa !2428
  %1480 = icmp eq i32 %1477, -1
  %1481 = icmp eq i32 %1478, 0
  %1482 = or i1 %1480, %1481
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %82, align 1, !tbaa !2433
  %1484 = and i32 %1478, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484) #12
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %88, align 1, !tbaa !2447
  %1489 = xor i32 %1478, %1477
  %1490 = lshr i32 %1489, 4
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  store i8 %1492, i8* %93, align 1, !tbaa !2451
  %1493 = zext i1 %1481 to i8
  store i8 %1493, i8* %96, align 1, !tbaa !2448
  %1494 = lshr i32 %1478, 31
  %1495 = trunc i32 %1494 to i8
  store i8 %1495, i8* %99, align 1, !tbaa !2449
  %1496 = lshr i32 %1477, 31
  %1497 = xor i32 %1494, %1496
  %1498 = add nuw nsw i32 %1497, %1494
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %105, align 1, !tbaa !2450
  %1501 = add i64 %1473, -40
  %1502 = add i64 %797, 295
  store i64 %1502, i64* %PC, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RCX, align 8, !tbaa !2428
  %1505 = add i64 %1504, 20
  %1506 = add i64 %797, 299
  store i64 %1506, i64* %PC, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1478 to i64
  %1510 = sext i32 %1508 to i64
  %1511 = mul nsw i64 %1510, %1509
  %1512 = and i64 %1511, 4294967295
  store i64 %1512, i64* %RSI, align 8, !tbaa !2428
  %1513 = trunc i64 %1511 to i32
  %1514 = add i32 %1513, %1462
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RDX, align 8, !tbaa !2428
  %1516 = icmp ult i32 %1514, %1462
  %1517 = icmp ult i32 %1514, %1513
  %1518 = or i1 %1516, %1517
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %82, align 1, !tbaa !2433
  %1520 = and i32 %1514, 255
  %1521 = tail call i32 @llvm.ctpop.i32(i32 %1520) #12
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = xor i8 %1523, 1
  store i8 %1524, i8* %88, align 1, !tbaa !2447
  %1525 = xor i64 %1511, %1460
  %1526 = trunc i64 %1525 to i32
  %1527 = xor i32 %1526, %1514
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %93, align 1, !tbaa !2451
  %1531 = icmp eq i32 %1514, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %96, align 1, !tbaa !2448
  %1533 = lshr i32 %1514, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %99, align 1, !tbaa !2449
  %1535 = lshr i32 %1513, 31
  %1536 = xor i32 %1533, %1471
  %1537 = xor i32 %1533, %1535
  %1538 = add nuw nsw i32 %1536, %1537
  %1539 = icmp eq i32 %1538, 2
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %105, align 1, !tbaa !2450
  %1541 = load i64, i64* %RBP, align 8
  %1542 = add i64 %1541, -76
  %1543 = add i64 %797, 304
  store i64 %1543, i64* %PC, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = add i32 %1545, %1514
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RDX, align 8, !tbaa !2428
  %1548 = icmp ult i32 %1546, %1514
  %1549 = icmp ult i32 %1546, %1545
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %82, align 1, !tbaa !2433
  %1552 = and i32 %1546, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552) #12
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %88, align 1, !tbaa !2447
  %1557 = xor i32 %1545, %1514
  %1558 = xor i32 %1557, %1546
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %93, align 1, !tbaa !2451
  %1562 = icmp eq i32 %1546, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %96, align 1, !tbaa !2448
  %1564 = lshr i32 %1546, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %99, align 1, !tbaa !2449
  %1566 = lshr i32 %1545, 31
  %1567 = xor i32 %1564, %1533
  %1568 = xor i32 %1564, %1566
  %1569 = add nuw nsw i32 %1567, %1568
  %1570 = icmp eq i32 %1569, 2
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %105, align 1, !tbaa !2450
  %1572 = sext i32 %1546 to i64
  store i64 %1572, i64* %RCX, align 8, !tbaa !2428
  %1573 = load i64, i64* %RAX, align 8
  %1574 = shl nsw i64 %1572, 2
  %1575 = add i64 %1573, %1574
  %1576 = add i64 %797, 312
  store i64 %1576, i64* %PC, align 8
  %1577 = load <2 x float>, <2 x float>* %207, align 1
  %1578 = load <2 x i32>, <2 x i32>* %208, align 1
  %1579 = inttoptr i64 %1575 to float*
  %1580 = load float, float* %1579, align 4
  %1581 = extractelement <2 x float> %1577, i32 0
  %1582 = fmul float %1581, %1580
  store float %1582, float* %199, align 1, !tbaa !2452
  %1583 = bitcast <2 x float> %1577 to <2 x i32>
  %1584 = extractelement <2 x i32> %1583, i32 1
  store i32 %1584, i32* %209, align 1, !tbaa !2452
  %1585 = extractelement <2 x i32> %1578, i32 0
  store i32 %1585, i32* %210, align 1, !tbaa !2452
  %1586 = extractelement <2 x i32> %1578, i32 1
  store i32 %1586, i32* %211, align 1, !tbaa !2452
  %1587 = load <2 x float>, <2 x float>* %192, align 1
  %1588 = load <2 x i32>, <2 x i32>* %197, align 1
  %1589 = load <2 x float>, <2 x float>* %207, align 1
  %1590 = extractelement <2 x float> %1587, i32 0
  %1591 = extractelement <2 x float> %1589, i32 0
  %1592 = fadd float %1590, %1591
  store float %1592, float* %193, align 1, !tbaa !2452
  %1593 = bitcast <2 x float> %1587 to <2 x i32>
  %1594 = extractelement <2 x i32> %1593, i32 1
  store i32 %1594, i32* %188, align 1, !tbaa !2452
  %1595 = extractelement <2 x i32> %1588, i32 0
  store i32 %1595, i32* %189, align 1, !tbaa !2452
  %1596 = extractelement <2 x i32> %1588, i32 1
  store i32 %1596, i32* %191, align 1, !tbaa !2452
  %1597 = add i64 %1541, -16
  %1598 = add i64 %797, 320
  store i64 %1598, i64* %PC, align 8
  %1599 = inttoptr i64 %1597 to i64*
  %1600 = load i64, i64* %1599, align 8
  store i64 %1600, i64* %RAX, align 8, !tbaa !2428
  %1601 = add i64 %797, 323
  store i64 %1601, i64* %PC, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX, align 8, !tbaa !2428
  %1604 = add i64 %797, 327
  store i64 %1604, i64* %PC, align 8
  %1605 = load i64, i64* %1599, align 8
  store i64 %1605, i64* %RCX, align 8, !tbaa !2428
  %1606 = add i64 %1605, 12
  %1607 = add i64 %797, 330
  store i64 %1607, i64* %PC, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = shl i32 %1609, 1
  %1611 = icmp slt i32 %1609, 0
  %1612 = icmp slt i32 %1610, 0
  %1613 = xor i1 %1611, %1612
  %1614 = zext i32 %1610 to i64
  store i64 %1614, i64* %RDX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1609, 31
  %1615 = trunc i32 %.lobit to i8
  store i8 %1615, i8* %82, align 1, !tbaa !2432
  %1616 = and i32 %1610, 254
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616) #12
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %88, align 1, !tbaa !2432
  store i8 0, i8* %93, align 1, !tbaa !2432
  %1621 = icmp eq i32 %1610, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %96, align 1, !tbaa !2432
  %1623 = lshr i32 %1609, 30
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %99, align 1, !tbaa !2432
  %1626 = zext i1 %1613 to i8
  store i8 %1626, i8* %105, align 1, !tbaa !2432
  %1627 = load i64, i64* %RBP, align 8
  %1628 = add i64 %1627, -16
  %1629 = add i64 %797, 337
  store i64 %1629, i64* %PC, align 8
  %1630 = inttoptr i64 %1628 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %RCX, align 8, !tbaa !2428
  %1632 = add i64 %1631, 16
  %1633 = add i64 %797, 341
  store i64 %1633, i64* %PC, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = sext i32 %1610 to i64
  %1637 = sext i32 %1635 to i64
  %1638 = mul nsw i64 %1637, %1636
  %1639 = trunc i64 %1638 to i32
  %1640 = and i64 %1638, 4294967294
  store i64 %1640, i64* %RDX, align 8, !tbaa !2428
  %1641 = shl i64 %1638, 32
  %1642 = ashr exact i64 %1641, 32
  %1643 = icmp ne i64 %1642, %1638
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %82, align 1, !tbaa !2433
  %1645 = and i32 %1639, 254
  %1646 = tail call i32 @llvm.ctpop.i32(i32 %1645) #12
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  store i8 %1649, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1650 = lshr i32 %1639, 31
  %1651 = trunc i32 %1650 to i8
  store i8 %1651, i8* %99, align 1, !tbaa !2449
  store i8 %1644, i8* %105, align 1, !tbaa !2450
  %1652 = add i64 %797, 345
  store i64 %1652, i64* %PC, align 8
  %1653 = load i64, i64* %1630, align 8
  store i64 %1653, i64* %RCX, align 8, !tbaa !2428
  %1654 = add i64 %1653, 20
  %1655 = add i64 %797, 349
  store i64 %1655, i64* %PC, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = shl i64 %1638, 32
  %1659 = ashr exact i64 %1658, 32
  %1660 = sext i32 %1657 to i64
  %1661 = mul nsw i64 %1660, %1659
  %1662 = trunc i64 %1661 to i32
  %1663 = and i64 %1661, 4294967295
  store i64 %1663, i64* %RDX, align 8, !tbaa !2428
  %1664 = shl i64 %1661, 32
  %1665 = ashr exact i64 %1664, 32
  %1666 = icmp ne i64 %1665, %1661
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %82, align 1, !tbaa !2433
  %1668 = and i32 %1662, 255
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668) #12
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1673 = lshr i32 %1662, 31
  %1674 = trunc i32 %1673 to i8
  store i8 %1674, i8* %99, align 1, !tbaa !2449
  store i8 %1667, i8* %105, align 1, !tbaa !2450
  %1675 = add i64 %1627, -68
  %1676 = add i64 %797, 352
  store i64 %1676, i64* %PC, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RSI, align 8, !tbaa !2428
  %1680 = add i64 %797, 356
  store i64 %1680, i64* %PC, align 8
  %1681 = load i64, i64* %1630, align 8
  store i64 %1681, i64* %RCX, align 8, !tbaa !2428
  %1682 = add i64 %1681, 16
  %1683 = add i64 %797, 360
  store i64 %1683, i64* %PC, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = sext i32 %1678 to i64
  %1687 = sext i32 %1685 to i64
  %1688 = mul nsw i64 %1687, %1686
  %1689 = trunc i64 %1688 to i32
  %1690 = and i64 %1688, 4294967295
  store i64 %1690, i64* %RSI, align 8, !tbaa !2428
  %1691 = shl i64 %1688, 32
  %1692 = ashr exact i64 %1691, 32
  %1693 = icmp ne i64 %1692, %1688
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %82, align 1, !tbaa !2433
  %1695 = and i32 %1689, 255
  %1696 = tail call i32 @llvm.ctpop.i32(i32 %1695) #12
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  store i8 %1699, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1700 = lshr i32 %1689, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %99, align 1, !tbaa !2449
  store i8 %1694, i8* %105, align 1, !tbaa !2450
  %1702 = load i64, i64* %RBP, align 8
  %1703 = add i64 %1702, -16
  %1704 = add i64 %797, 364
  store i64 %1704, i64* %PC, align 8
  %1705 = inttoptr i64 %1703 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %RCX, align 8, !tbaa !2428
  %1707 = add i64 %1706, 20
  %1708 = add i64 %797, 368
  store i64 %1708, i64* %PC, align 8
  %1709 = inttoptr i64 %1707 to i32*
  %1710 = load i32, i32* %1709, align 4
  %1711 = shl i64 %1688, 32
  %1712 = ashr exact i64 %1711, 32
  %1713 = sext i32 %1710 to i64
  %1714 = mul nsw i64 %1713, %1712
  %1715 = and i64 %1714, 4294967295
  store i64 %1715, i64* %RSI, align 8, !tbaa !2428
  %1716 = trunc i64 %1714 to i32
  %1717 = trunc i64 %1661 to i32
  %1718 = add i32 %1716, %1717
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RDX, align 8, !tbaa !2428
  %1720 = icmp ult i32 %1718, %1717
  %1721 = icmp ult i32 %1718, %1716
  %1722 = or i1 %1720, %1721
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %82, align 1, !tbaa !2433
  %1724 = and i32 %1718, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724) #12
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %88, align 1, !tbaa !2447
  %1729 = xor i64 %1714, %1661
  %1730 = trunc i64 %1729 to i32
  %1731 = xor i32 %1730, %1718
  %1732 = lshr i32 %1731, 4
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  store i8 %1734, i8* %93, align 1, !tbaa !2451
  %1735 = icmp eq i32 %1718, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %96, align 1, !tbaa !2448
  %1737 = lshr i32 %1718, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %99, align 1, !tbaa !2449
  %1739 = lshr i32 %1717, 31
  %1740 = lshr i32 %1716, 31
  %1741 = xor i32 %1737, %1739
  %1742 = xor i32 %1737, %1740
  %1743 = add nuw nsw i32 %1741, %1742
  %1744 = icmp eq i32 %1743, 2
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %105, align 1, !tbaa !2450
  %1746 = add i64 %1702, -72
  %1747 = add i64 %797, 373
  store i64 %1747, i64* %PC, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RSI, align 8, !tbaa !2428
  %1751 = add i64 %797, 377
  store i64 %1751, i64* %PC, align 8
  %1752 = load i64, i64* %1705, align 8
  store i64 %1752, i64* %RCX, align 8, !tbaa !2428
  %1753 = add i64 %1752, 20
  %1754 = add i64 %797, 381
  store i64 %1754, i64* %PC, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sext i32 %1749 to i64
  %1758 = sext i32 %1756 to i64
  %1759 = mul nsw i64 %1758, %1757
  %1760 = and i64 %1759, 4294967295
  store i64 %1760, i64* %RSI, align 8, !tbaa !2428
  %1761 = trunc i64 %1759 to i32
  %1762 = add i32 %1761, %1718
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RDX, align 8, !tbaa !2428
  %1764 = icmp ult i32 %1762, %1718
  %1765 = icmp ult i32 %1762, %1761
  %1766 = or i1 %1764, %1765
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %82, align 1, !tbaa !2433
  %1768 = and i32 %1762, 255
  %1769 = tail call i32 @llvm.ctpop.i32(i32 %1768) #12
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = xor i8 %1771, 1
  store i8 %1772, i8* %88, align 1, !tbaa !2447
  %1773 = xor i64 %1759, %1719
  %1774 = trunc i64 %1773 to i32
  %1775 = xor i32 %1774, %1762
  %1776 = lshr i32 %1775, 4
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  store i8 %1778, i8* %93, align 1, !tbaa !2451
  %1779 = icmp eq i32 %1762, 0
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %96, align 1, !tbaa !2448
  %1781 = lshr i32 %1762, 31
  %1782 = trunc i32 %1781 to i8
  store i8 %1782, i8* %99, align 1, !tbaa !2449
  %1783 = lshr i32 %1761, 31
  %1784 = xor i32 %1781, %1737
  %1785 = xor i32 %1781, %1783
  %1786 = add nuw nsw i32 %1784, %1785
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %105, align 1, !tbaa !2450
  %1789 = load i64, i64* %RBP, align 8
  %1790 = add i64 %1789, -76
  %1791 = add i64 %797, 386
  store i64 %1791, i64* %PC, align 8
  %1792 = inttoptr i64 %1790 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = add i32 %1793, %1762
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RDX, align 8, !tbaa !2428
  %1796 = icmp ult i32 %1794, %1762
  %1797 = icmp ult i32 %1794, %1793
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %82, align 1, !tbaa !2433
  %1800 = and i32 %1794, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800) #12
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %88, align 1, !tbaa !2447
  %1805 = xor i32 %1793, %1762
  %1806 = xor i32 %1805, %1794
  %1807 = lshr i32 %1806, 4
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  store i8 %1809, i8* %93, align 1, !tbaa !2451
  %1810 = icmp eq i32 %1794, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %96, align 1, !tbaa !2448
  %1812 = lshr i32 %1794, 31
  %1813 = trunc i32 %1812 to i8
  store i8 %1813, i8* %99, align 1, !tbaa !2449
  %1814 = lshr i32 %1793, 31
  %1815 = xor i32 %1812, %1781
  %1816 = xor i32 %1812, %1814
  %1817 = add nuw nsw i32 %1815, %1816
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %105, align 1, !tbaa !2450
  %1820 = sext i32 %1794 to i64
  store i64 %1820, i64* %RCX, align 8, !tbaa !2428
  %1821 = load i64, i64* %RAX, align 8
  %1822 = shl nsw i64 %1820, 2
  %1823 = add i64 %1821, %1822
  %1824 = add i64 %797, 394
  store i64 %1824, i64* %PC, align 8
  %1825 = inttoptr i64 %1823 to i32*
  %1826 = load i32, i32* %1825, align 4
  store i32 %1826, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %1827 = add i64 %1789, -40
  %1828 = add i64 %797, 398
  store i64 %1828, i64* %PC, align 8
  %1829 = inttoptr i64 %1827 to i64*
  %1830 = load i64, i64* %1829, align 8
  store i64 %1830, i64* %RAX, align 8, !tbaa !2428
  %1831 = add i64 %797, 401
  store i64 %1831, i64* %PC, align 8
  %1832 = inttoptr i64 %1830 to i64*
  %1833 = load i64, i64* %1832, align 8
  store i64 %1833, i64* %RAX, align 8, !tbaa !2428
  %1834 = add i64 %797, 405
  store i64 %1834, i64* %PC, align 8
  %1835 = load i64, i64* %1829, align 8
  store i64 %1835, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1836 = add i64 %797, 413
  store i64 %1836, i64* %PC, align 8
  %1837 = load i64, i64* %1829, align 8
  store i64 %1837, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1838 = add i64 %797, 421
  store i64 %1838, i64* %PC, align 8
  %1839 = load i64, i64* %1829, align 8
  store i64 %1839, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1840 = load i64, i64* %RBP, align 8
  %1841 = add i64 %1840, -68
  %1842 = add i64 %797, 428
  store i64 %1842, i64* %PC, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RSI, align 8, !tbaa !2428
  %1846 = add i64 %1840, -40
  %1847 = add i64 %797, 432
  store i64 %1847, i64* %PC, align 8
  %1848 = inttoptr i64 %1846 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %RCX, align 8, !tbaa !2428
  %1850 = add i64 %1849, 16
  %1851 = add i64 %797, 436
  store i64 %1851, i64* %PC, align 8
  %1852 = inttoptr i64 %1850 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = sext i32 %1844 to i64
  %1855 = sext i32 %1853 to i64
  %1856 = mul nsw i64 %1855, %1854
  %1857 = trunc i64 %1856 to i32
  %1858 = and i64 %1856, 4294967295
  store i64 %1858, i64* %RSI, align 8, !tbaa !2428
  %1859 = shl i64 %1856, 32
  %1860 = ashr exact i64 %1859, 32
  %1861 = icmp ne i64 %1860, %1856
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %82, align 1, !tbaa !2433
  %1863 = and i32 %1857, 255
  %1864 = tail call i32 @llvm.ctpop.i32(i32 %1863) #12
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = xor i8 %1866, 1
  store i8 %1867, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %1868 = lshr i32 %1857, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %99, align 1, !tbaa !2449
  store i8 %1862, i8* %105, align 1, !tbaa !2450
  %1870 = add i64 %797, 440
  store i64 %1870, i64* %PC, align 8
  %1871 = load i64, i64* %1848, align 8
  store i64 %1871, i64* %RCX, align 8, !tbaa !2428
  %1872 = add i64 %1871, 20
  %1873 = add i64 %797, 444
  store i64 %1873, i64* %PC, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = shl i64 %1856, 32
  %1877 = ashr exact i64 %1876, 32
  %1878 = sext i32 %1875 to i64
  %1879 = mul nsw i64 %1878, %1877
  %1880 = and i64 %1879, 4294967295
  store i64 %1880, i64* %RSI, align 8, !tbaa !2428
  %1881 = trunc i64 %1879 to i32
  %1882 = and i64 %1879, 4294967295
  store i64 %1882, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %1883 = and i32 %1881, 255
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883) #12
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %1888 = icmp eq i32 %1881, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %96, align 1, !tbaa !2448
  %1890 = lshr i32 %1881, 31
  %1891 = trunc i32 %1890 to i8
  store i8 %1891, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %1892 = add i64 %1840, -72
  %1893 = add i64 %797, 449
  store i64 %1893, i64* %PC, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = zext i32 %1895 to i64
  store i64 %1896, i64* %RSI, align 8, !tbaa !2428
  %1897 = load i64, i64* %RBP, align 8
  %1898 = add i64 %1897, -40
  %1899 = add i64 %797, 453
  store i64 %1899, i64* %PC, align 8
  %1900 = inttoptr i64 %1898 to i64*
  %1901 = load i64, i64* %1900, align 8
  store i64 %1901, i64* %RCX, align 8, !tbaa !2428
  %1902 = add i64 %1901, 20
  %1903 = add i64 %797, 457
  store i64 %1903, i64* %PC, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = sext i32 %1895 to i64
  %1907 = sext i32 %1905 to i64
  %1908 = mul nsw i64 %1907, %1906
  %1909 = and i64 %1908, 4294967295
  store i64 %1909, i64* %RSI, align 8, !tbaa !2428
  %1910 = trunc i64 %1908 to i32
  %1911 = add i32 %1910, %1881
  %1912 = zext i32 %1911 to i64
  store i64 %1912, i64* %RDX, align 8, !tbaa !2428
  %1913 = icmp ult i32 %1911, %1881
  %1914 = icmp ult i32 %1911, %1910
  %1915 = or i1 %1913, %1914
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %82, align 1, !tbaa !2433
  %1917 = and i32 %1911, 255
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917) #12
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %88, align 1, !tbaa !2447
  %1922 = xor i64 %1908, %1879
  %1923 = trunc i64 %1922 to i32
  %1924 = xor i32 %1923, %1911
  %1925 = lshr i32 %1924, 4
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  store i8 %1927, i8* %93, align 1, !tbaa !2451
  %1928 = icmp eq i32 %1911, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %96, align 1, !tbaa !2448
  %1930 = lshr i32 %1911, 31
  %1931 = trunc i32 %1930 to i8
  store i8 %1931, i8* %99, align 1, !tbaa !2449
  %1932 = lshr i32 %1910, 31
  %1933 = xor i32 %1930, %1890
  %1934 = xor i32 %1930, %1932
  %1935 = add nuw nsw i32 %1933, %1934
  %1936 = icmp eq i32 %1935, 2
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %105, align 1, !tbaa !2450
  %1938 = add i64 %1897, -76
  %1939 = add i64 %797, 462
  store i64 %1939, i64* %PC, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = add i32 %1941, 1
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RSI, align 8, !tbaa !2428
  %1944 = lshr i32 %1942, 31
  %1945 = add i32 %1942, %1911
  %1946 = zext i32 %1945 to i64
  store i64 %1946, i64* %RDX, align 8, !tbaa !2428
  %1947 = icmp ult i32 %1945, %1911
  %1948 = icmp ult i32 %1945, %1942
  %1949 = or i1 %1947, %1948
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %82, align 1, !tbaa !2433
  %1951 = and i32 %1945, 255
  %1952 = tail call i32 @llvm.ctpop.i32(i32 %1951) #12
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  store i8 %1955, i8* %88, align 1, !tbaa !2447
  %1956 = xor i32 %1942, %1911
  %1957 = xor i32 %1956, %1945
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  store i8 %1960, i8* %93, align 1, !tbaa !2451
  %1961 = icmp eq i32 %1945, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %96, align 1, !tbaa !2448
  %1963 = lshr i32 %1945, 31
  %1964 = trunc i32 %1963 to i8
  store i8 %1964, i8* %99, align 1, !tbaa !2449
  %1965 = xor i32 %1963, %1930
  %1966 = xor i32 %1963, %1944
  %1967 = add nuw nsw i32 %1965, %1966
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %105, align 1, !tbaa !2450
  %1970 = sext i32 %1945 to i64
  store i64 %1970, i64* %RCX, align 8, !tbaa !2428
  %1971 = load i64, i64* %RAX, align 8
  %1972 = shl nsw i64 %1970, 2
  %1973 = add i64 %1971, %1972
  %1974 = add i64 %797, 475
  store i64 %1974, i64* %PC, align 8
  %1975 = load <2 x float>, <2 x float>* %207, align 1
  %1976 = load <2 x i32>, <2 x i32>* %208, align 1
  %1977 = inttoptr i64 %1973 to float*
  %1978 = load float, float* %1977, align 4
  %1979 = extractelement <2 x float> %1975, i32 0
  %1980 = fmul float %1979, %1978
  store float %1980, float* %199, align 1, !tbaa !2452
  %1981 = bitcast <2 x float> %1975 to <2 x i32>
  %1982 = extractelement <2 x i32> %1981, i32 1
  store i32 %1982, i32* %209, align 1, !tbaa !2452
  %1983 = extractelement <2 x i32> %1976, i32 0
  store i32 %1983, i32* %210, align 1, !tbaa !2452
  %1984 = extractelement <2 x i32> %1976, i32 1
  store i32 %1984, i32* %211, align 1, !tbaa !2452
  %1985 = load <2 x float>, <2 x float>* %192, align 1
  %1986 = load <2 x i32>, <2 x i32>* %197, align 1
  %1987 = load <2 x float>, <2 x float>* %207, align 1
  %1988 = extractelement <2 x float> %1985, i32 0
  %1989 = extractelement <2 x float> %1987, i32 0
  %1990 = fadd float %1988, %1989
  store float %1990, float* %193, align 1, !tbaa !2452
  %1991 = bitcast <2 x float> %1985 to <2 x i32>
  %1992 = extractelement <2 x i32> %1991, i32 1
  store i32 %1992, i32* %188, align 1, !tbaa !2452
  %1993 = extractelement <2 x i32> %1986, i32 0
  store i32 %1993, i32* %189, align 1, !tbaa !2452
  %1994 = extractelement <2 x i32> %1986, i32 1
  store i32 %1994, i32* %191, align 1, !tbaa !2452
  %1995 = load i64, i64* %RBP, align 8
  %1996 = add i64 %1995, -24
  %1997 = add i64 %797, 483
  store i64 %1997, i64* %PC, align 8
  %1998 = inttoptr i64 %1996 to i64*
  %1999 = load i64, i64* %1998, align 8
  store i64 %1999, i64* %RAX, align 8, !tbaa !2428
  %2000 = add i64 %797, 486
  store i64 %2000, i64* %PC, align 8
  %2001 = inttoptr i64 %1999 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %RAX, align 8, !tbaa !2428
  %2003 = add i64 %797, 490
  store i64 %2003, i64* %PC, align 8
  %2004 = load i64, i64* %1998, align 8
  store i64 %2004, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2005 = add i64 %797, 498
  store i64 %2005, i64* %PC, align 8
  %2006 = load i64, i64* %1998, align 8
  store i64 %2006, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2007 = add i64 %797, 506
  store i64 %2007, i64* %PC, align 8
  %2008 = load i64, i64* %1998, align 8
  store i64 %2008, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2009 = add i64 %1995, -68
  %2010 = add i64 %797, 513
  store i64 %2010, i64* %PC, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RSI, align 8, !tbaa !2428
  %2014 = add i64 %797, 517
  store i64 %2014, i64* %PC, align 8
  %2015 = load i64, i64* %1998, align 8
  store i64 %2015, i64* %RCX, align 8, !tbaa !2428
  %2016 = add i64 %2015, 16
  %2017 = add i64 %797, 521
  store i64 %2017, i64* %PC, align 8
  %2018 = inttoptr i64 %2016 to i32*
  %2019 = load i32, i32* %2018, align 4
  %2020 = sext i32 %2012 to i64
  %2021 = sext i32 %2019 to i64
  %2022 = mul nsw i64 %2021, %2020
  %2023 = trunc i64 %2022 to i32
  %2024 = and i64 %2022, 4294967295
  store i64 %2024, i64* %RSI, align 8, !tbaa !2428
  %2025 = shl i64 %2022, 32
  %2026 = ashr exact i64 %2025, 32
  %2027 = icmp ne i64 %2026, %2022
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %82, align 1, !tbaa !2433
  %2029 = and i32 %2023, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029) #12
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %2034 = lshr i32 %2023, 31
  %2035 = trunc i32 %2034 to i8
  store i8 %2035, i8* %99, align 1, !tbaa !2449
  store i8 %2028, i8* %105, align 1, !tbaa !2450
  %2036 = add i64 %797, 525
  store i64 %2036, i64* %PC, align 8
  %2037 = load i64, i64* %1998, align 8
  store i64 %2037, i64* %RCX, align 8, !tbaa !2428
  %2038 = add i64 %2037, 20
  %2039 = add i64 %797, 529
  store i64 %2039, i64* %PC, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = shl i64 %2022, 32
  %2043 = ashr exact i64 %2042, 32
  %2044 = sext i32 %2041 to i64
  %2045 = mul nsw i64 %2044, %2043
  %2046 = and i64 %2045, 4294967295
  store i64 %2046, i64* %RSI, align 8, !tbaa !2428
  %2047 = trunc i64 %2045 to i32
  %2048 = and i64 %2045, 4294967295
  store i64 %2048, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %2049 = and i32 %2047, 255
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049) #12
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %2054 = icmp eq i32 %2047, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %96, align 1, !tbaa !2448
  %2056 = lshr i32 %2047, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2058 = load i64, i64* %RBP, align 8
  %2059 = add i64 %2058, -72
  %2060 = add i64 %797, 534
  store i64 %2060, i64* %PC, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  %2063 = zext i32 %2062 to i64
  store i64 %2063, i64* %RSI, align 8, !tbaa !2428
  %2064 = add i64 %2058, -24
  %2065 = add i64 %797, 538
  store i64 %2065, i64* %PC, align 8
  %2066 = inttoptr i64 %2064 to i64*
  %2067 = load i64, i64* %2066, align 8
  store i64 %2067, i64* %RCX, align 8, !tbaa !2428
  %2068 = add i64 %2067, 20
  %2069 = add i64 %797, 542
  store i64 %2069, i64* %PC, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = sext i32 %2062 to i64
  %2073 = sext i32 %2071 to i64
  %2074 = mul nsw i64 %2073, %2072
  %2075 = and i64 %2074, 4294967295
  store i64 %2075, i64* %RSI, align 8, !tbaa !2428
  %2076 = trunc i64 %2074 to i32
  %2077 = add i32 %2076, %2047
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RDX, align 8, !tbaa !2428
  %2079 = icmp ult i32 %2077, %2047
  %2080 = icmp ult i32 %2077, %2076
  %2081 = or i1 %2079, %2080
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %82, align 1, !tbaa !2433
  %2083 = and i32 %2077, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083) #12
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %88, align 1, !tbaa !2447
  %2088 = xor i64 %2074, %2045
  %2089 = trunc i64 %2088 to i32
  %2090 = xor i32 %2089, %2077
  %2091 = lshr i32 %2090, 4
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  store i8 %2093, i8* %93, align 1, !tbaa !2451
  %2094 = icmp eq i32 %2077, 0
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %96, align 1, !tbaa !2448
  %2096 = lshr i32 %2077, 31
  %2097 = trunc i32 %2096 to i8
  store i8 %2097, i8* %99, align 1, !tbaa !2449
  %2098 = lshr i32 %2076, 31
  %2099 = xor i32 %2096, %2056
  %2100 = xor i32 %2096, %2098
  %2101 = add nuw nsw i32 %2099, %2100
  %2102 = icmp eq i32 %2101, 2
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %105, align 1, !tbaa !2450
  %2104 = add i64 %2058, -76
  %2105 = add i64 %797, 547
  store i64 %2105, i64* %PC, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = add i32 %2107, %2077
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RDX, align 8, !tbaa !2428
  %2110 = icmp ult i32 %2108, %2077
  %2111 = icmp ult i32 %2108, %2107
  %2112 = or i1 %2110, %2111
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %82, align 1, !tbaa !2433
  %2114 = and i32 %2108, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114) #12
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %88, align 1, !tbaa !2447
  %2119 = xor i32 %2107, %2077
  %2120 = xor i32 %2119, %2108
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %93, align 1, !tbaa !2451
  %2124 = icmp eq i32 %2108, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %96, align 1, !tbaa !2448
  %2126 = lshr i32 %2108, 31
  %2127 = trunc i32 %2126 to i8
  store i8 %2127, i8* %99, align 1, !tbaa !2449
  %2128 = lshr i32 %2107, 31
  %2129 = xor i32 %2126, %2096
  %2130 = xor i32 %2126, %2128
  %2131 = add nuw nsw i32 %2129, %2130
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %105, align 1, !tbaa !2450
  %2134 = sext i32 %2108 to i64
  store i64 %2134, i64* %RCX, align 8, !tbaa !2428
  %2135 = load i64, i64* %RAX, align 8
  %2136 = shl nsw i64 %2134, 2
  %2137 = add i64 %2135, %2136
  %2138 = add i64 %797, 555
  store i64 %2138, i64* %PC, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  store i32 %2140, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %2141 = load i64, i64* %RBP, align 8
  %2142 = add i64 %2141, -40
  %2143 = add i64 %797, 559
  store i64 %2143, i64* %PC, align 8
  %2144 = inttoptr i64 %2142 to i64*
  %2145 = load i64, i64* %2144, align 8
  store i64 %2145, i64* %RAX, align 8, !tbaa !2428
  %2146 = add i64 %797, 562
  store i64 %2146, i64* %PC, align 8
  %2147 = inttoptr i64 %2145 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RAX, align 8, !tbaa !2428
  %2149 = add i64 %797, 566
  store i64 %2149, i64* %PC, align 8
  %2150 = load i64, i64* %2144, align 8
  store i64 %2150, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2151 = add i64 %797, 574
  store i64 %2151, i64* %PC, align 8
  %2152 = load i64, i64* %2144, align 8
  store i64 %2152, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2153 = add i64 %797, 582
  store i64 %2153, i64* %PC, align 8
  %2154 = load i64, i64* %2144, align 8
  store i64 %2154, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2155 = add i64 %2141, -68
  %2156 = add i64 %797, 589
  store i64 %2156, i64* %PC, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = add i32 %2158, 1
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RSI, align 8, !tbaa !2428
  %2161 = icmp eq i32 %2158, -1
  %2162 = icmp eq i32 %2159, 0
  %2163 = or i1 %2161, %2162
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %82, align 1, !tbaa !2433
  %2165 = and i32 %2159, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165) #12
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %88, align 1, !tbaa !2447
  %2170 = xor i32 %2159, %2158
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %93, align 1, !tbaa !2451
  %2174 = zext i1 %2162 to i8
  store i8 %2174, i8* %96, align 1, !tbaa !2448
  %2175 = lshr i32 %2159, 31
  %2176 = trunc i32 %2175 to i8
  store i8 %2176, i8* %99, align 1, !tbaa !2449
  %2177 = lshr i32 %2158, 31
  %2178 = xor i32 %2175, %2177
  %2179 = add nuw nsw i32 %2178, %2175
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %105, align 1, !tbaa !2450
  %2182 = add i64 %797, 596
  store i64 %2182, i64* %PC, align 8
  %2183 = load i64, i64* %2144, align 8
  store i64 %2183, i64* %RCX, align 8, !tbaa !2428
  %2184 = add i64 %2183, 16
  %2185 = add i64 %797, 600
  store i64 %2185, i64* %PC, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  %2188 = sext i32 %2159 to i64
  %2189 = sext i32 %2187 to i64
  %2190 = mul nsw i64 %2189, %2188
  %2191 = trunc i64 %2190 to i32
  %2192 = and i64 %2190, 4294967295
  store i64 %2192, i64* %RSI, align 8, !tbaa !2428
  %2193 = shl i64 %2190, 32
  %2194 = ashr exact i64 %2193, 32
  %2195 = icmp ne i64 %2194, %2190
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %82, align 1, !tbaa !2433
  %2197 = and i32 %2191, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197) #12
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %2202 = lshr i32 %2191, 31
  %2203 = trunc i32 %2202 to i8
  store i8 %2203, i8* %99, align 1, !tbaa !2449
  store i8 %2196, i8* %105, align 1, !tbaa !2450
  %2204 = load i64, i64* %RBP, align 8
  %2205 = add i64 %2204, -40
  %2206 = add i64 %797, 604
  store i64 %2206, i64* %PC, align 8
  %2207 = inttoptr i64 %2205 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %RCX, align 8, !tbaa !2428
  %2209 = add i64 %2208, 20
  %2210 = add i64 %797, 608
  store i64 %2210, i64* %PC, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = shl i64 %2190, 32
  %2214 = ashr exact i64 %2213, 32
  %2215 = sext i32 %2212 to i64
  %2216 = mul nsw i64 %2215, %2214
  %2217 = and i64 %2216, 4294967295
  store i64 %2217, i64* %RSI, align 8, !tbaa !2428
  %2218 = load i64, i64* %RDX, align 8
  %2219 = trunc i64 %2216 to i32
  %2220 = trunc i64 %2218 to i32
  %2221 = add i32 %2219, %2220
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RDX, align 8, !tbaa !2428
  %2223 = icmp ult i32 %2221, %2220
  %2224 = icmp ult i32 %2221, %2219
  %2225 = or i1 %2223, %2224
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %82, align 1, !tbaa !2433
  %2227 = and i32 %2221, 255
  %2228 = tail call i32 @llvm.ctpop.i32(i32 %2227) #12
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  %2231 = xor i8 %2230, 1
  store i8 %2231, i8* %88, align 1, !tbaa !2447
  %2232 = xor i64 %2216, %2218
  %2233 = trunc i64 %2232 to i32
  %2234 = xor i32 %2233, %2221
  %2235 = lshr i32 %2234, 4
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  store i8 %2237, i8* %93, align 1, !tbaa !2451
  %2238 = icmp eq i32 %2221, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %96, align 1, !tbaa !2448
  %2240 = lshr i32 %2221, 31
  %2241 = trunc i32 %2240 to i8
  store i8 %2241, i8* %99, align 1, !tbaa !2449
  %2242 = lshr i32 %2220, 31
  %2243 = lshr i32 %2219, 31
  %2244 = xor i32 %2240, %2242
  %2245 = xor i32 %2240, %2243
  %2246 = add nuw nsw i32 %2244, %2245
  %2247 = icmp eq i32 %2246, 2
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %105, align 1, !tbaa !2450
  %2249 = add i64 %2204, -72
  %2250 = add i64 %797, 613
  store i64 %2250, i64* %PC, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = add i32 %2252, 1
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RSI, align 8, !tbaa !2428
  %2255 = icmp eq i32 %2252, -1
  %2256 = icmp eq i32 %2253, 0
  %2257 = or i1 %2255, %2256
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %82, align 1, !tbaa !2433
  %2259 = and i32 %2253, 255
  %2260 = tail call i32 @llvm.ctpop.i32(i32 %2259) #12
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  %2263 = xor i8 %2262, 1
  store i8 %2263, i8* %88, align 1, !tbaa !2447
  %2264 = xor i32 %2253, %2252
  %2265 = lshr i32 %2264, 4
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  store i8 %2267, i8* %93, align 1, !tbaa !2451
  %2268 = zext i1 %2256 to i8
  store i8 %2268, i8* %96, align 1, !tbaa !2448
  %2269 = lshr i32 %2253, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %99, align 1, !tbaa !2449
  %2271 = lshr i32 %2252, 31
  %2272 = xor i32 %2269, %2271
  %2273 = add nuw nsw i32 %2272, %2269
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %105, align 1, !tbaa !2450
  %2276 = load i64, i64* %RBP, align 8
  %2277 = add i64 %2276, -40
  %2278 = add i64 %797, 620
  store i64 %2278, i64* %PC, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RCX, align 8, !tbaa !2428
  %2281 = add i64 %2280, 20
  %2282 = add i64 %797, 624
  store i64 %2282, i64* %PC, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = sext i32 %2253 to i64
  %2286 = sext i32 %2284 to i64
  %2287 = mul nsw i64 %2286, %2285
  %2288 = and i64 %2287, 4294967295
  store i64 %2288, i64* %RSI, align 8, !tbaa !2428
  %2289 = load i64, i64* %RDX, align 8
  %2290 = trunc i64 %2287 to i32
  %2291 = trunc i64 %2289 to i32
  %2292 = add i32 %2290, %2291
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RDX, align 8, !tbaa !2428
  %2294 = icmp ult i32 %2292, %2291
  %2295 = icmp ult i32 %2292, %2290
  %2296 = or i1 %2294, %2295
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %82, align 1, !tbaa !2433
  %2298 = and i32 %2292, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298) #12
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %88, align 1, !tbaa !2447
  %2303 = xor i64 %2287, %2289
  %2304 = trunc i64 %2303 to i32
  %2305 = xor i32 %2304, %2292
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  store i8 %2308, i8* %93, align 1, !tbaa !2451
  %2309 = icmp eq i32 %2292, 0
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %96, align 1, !tbaa !2448
  %2311 = lshr i32 %2292, 31
  %2312 = trunc i32 %2311 to i8
  store i8 %2312, i8* %99, align 1, !tbaa !2449
  %2313 = lshr i32 %2291, 31
  %2314 = lshr i32 %2290, 31
  %2315 = xor i32 %2311, %2313
  %2316 = xor i32 %2311, %2314
  %2317 = add nuw nsw i32 %2315, %2316
  %2318 = icmp eq i32 %2317, 2
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %105, align 1, !tbaa !2450
  %2320 = add i64 %2276, -76
  %2321 = add i64 %797, 629
  store i64 %2321, i64* %PC, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = add i32 %2323, %2292
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RDX, align 8, !tbaa !2428
  %2326 = icmp ult i32 %2324, %2292
  %2327 = icmp ult i32 %2324, %2323
  %2328 = or i1 %2326, %2327
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %82, align 1, !tbaa !2433
  %2330 = and i32 %2324, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330) #12
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %88, align 1, !tbaa !2447
  %2335 = xor i32 %2323, %2292
  %2336 = xor i32 %2335, %2324
  %2337 = lshr i32 %2336, 4
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  store i8 %2339, i8* %93, align 1, !tbaa !2451
  %2340 = icmp eq i32 %2324, 0
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %96, align 1, !tbaa !2448
  %2342 = lshr i32 %2324, 31
  %2343 = trunc i32 %2342 to i8
  store i8 %2343, i8* %99, align 1, !tbaa !2449
  %2344 = lshr i32 %2323, 31
  %2345 = xor i32 %2342, %2311
  %2346 = xor i32 %2342, %2344
  %2347 = add nuw nsw i32 %2345, %2346
  %2348 = icmp eq i32 %2347, 2
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %105, align 1, !tbaa !2450
  %2350 = sext i32 %2324 to i64
  store i64 %2350, i64* %RCX, align 8, !tbaa !2428
  %2351 = load i64, i64* %RAX, align 8
  %2352 = shl nsw i64 %2350, 2
  %2353 = add i64 %2351, %2352
  %2354 = add i64 %797, 637
  store i64 %2354, i64* %PC, align 8
  %2355 = inttoptr i64 %2353 to i32*
  %2356 = load i32, i32* %2355, align 4
  store i32 %2356, i32* %214, align 1, !tbaa !2452
  store float 0.000000e+00, float* %216, align 1, !tbaa !2452
  store float 0.000000e+00, float* %218, align 1, !tbaa !2452
  store float 0.000000e+00, float* %220, align 1, !tbaa !2452
  %2357 = load i64, i64* %RBP, align 8
  %2358 = add i64 %2357, -40
  %2359 = add i64 %797, 641
  store i64 %2359, i64* %PC, align 8
  %2360 = inttoptr i64 %2358 to i64*
  %2361 = load i64, i64* %2360, align 8
  store i64 %2361, i64* %RAX, align 8, !tbaa !2428
  %2362 = add i64 %797, 644
  store i64 %2362, i64* %PC, align 8
  %2363 = inttoptr i64 %2361 to i64*
  %2364 = load i64, i64* %2363, align 8
  store i64 %2364, i64* %RAX, align 8, !tbaa !2428
  %2365 = add i64 %797, 648
  store i64 %2365, i64* %PC, align 8
  %2366 = load i64, i64* %2360, align 8
  store i64 %2366, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2367 = add i64 %797, 656
  store i64 %2367, i64* %PC, align 8
  %2368 = load i64, i64* %2360, align 8
  store i64 %2368, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2369 = add i64 %797, 664
  store i64 %2369, i64* %PC, align 8
  %2370 = load i64, i64* %2360, align 8
  store i64 %2370, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2371 = add i64 %2357, -68
  %2372 = add i64 %797, 671
  store i64 %2372, i64* %PC, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = add i32 %2374, 1
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RSI, align 8, !tbaa !2428
  %2377 = icmp eq i32 %2374, -1
  %2378 = icmp eq i32 %2375, 0
  %2379 = or i1 %2377, %2378
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %82, align 1, !tbaa !2433
  %2381 = and i32 %2375, 255
  %2382 = tail call i32 @llvm.ctpop.i32(i32 %2381) #12
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = xor i8 %2384, 1
  store i8 %2385, i8* %88, align 1, !tbaa !2447
  %2386 = xor i32 %2375, %2374
  %2387 = lshr i32 %2386, 4
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  store i8 %2389, i8* %93, align 1, !tbaa !2451
  %2390 = zext i1 %2378 to i8
  store i8 %2390, i8* %96, align 1, !tbaa !2448
  %2391 = lshr i32 %2375, 31
  %2392 = trunc i32 %2391 to i8
  store i8 %2392, i8* %99, align 1, !tbaa !2449
  %2393 = lshr i32 %2374, 31
  %2394 = xor i32 %2391, %2393
  %2395 = add nuw nsw i32 %2394, %2391
  %2396 = icmp eq i32 %2395, 2
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %105, align 1, !tbaa !2450
  %2398 = add i64 %797, 678
  store i64 %2398, i64* %PC, align 8
  %2399 = load i64, i64* %2360, align 8
  store i64 %2399, i64* %RCX, align 8, !tbaa !2428
  %2400 = add i64 %2399, 16
  %2401 = add i64 %797, 682
  store i64 %2401, i64* %PC, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = sext i32 %2375 to i64
  %2405 = sext i32 %2403 to i64
  %2406 = mul nsw i64 %2405, %2404
  %2407 = trunc i64 %2406 to i32
  %2408 = and i64 %2406, 4294967295
  store i64 %2408, i64* %RSI, align 8, !tbaa !2428
  %2409 = shl i64 %2406, 32
  %2410 = ashr exact i64 %2409, 32
  %2411 = icmp ne i64 %2410, %2406
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %82, align 1, !tbaa !2433
  %2413 = and i32 %2407, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413) #12
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %2418 = lshr i32 %2407, 31
  %2419 = trunc i32 %2418 to i8
  store i8 %2419, i8* %99, align 1, !tbaa !2449
  store i8 %2412, i8* %105, align 1, !tbaa !2450
  %2420 = load i64, i64* %RBP, align 8
  %2421 = add i64 %2420, -40
  %2422 = add i64 %797, 686
  store i64 %2422, i64* %PC, align 8
  %2423 = inttoptr i64 %2421 to i64*
  %2424 = load i64, i64* %2423, align 8
  store i64 %2424, i64* %RCX, align 8, !tbaa !2428
  %2425 = add i64 %2424, 20
  %2426 = add i64 %797, 690
  store i64 %2426, i64* %PC, align 8
  %2427 = inttoptr i64 %2425 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = shl i64 %2406, 32
  %2430 = ashr exact i64 %2429, 32
  %2431 = sext i32 %2428 to i64
  %2432 = mul nsw i64 %2431, %2430
  %2433 = and i64 %2432, 4294967295
  store i64 %2433, i64* %RSI, align 8, !tbaa !2428
  %2434 = load i64, i64* %RDX, align 8
  %2435 = trunc i64 %2432 to i32
  %2436 = trunc i64 %2434 to i32
  %2437 = add i32 %2435, %2436
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RDX, align 8, !tbaa !2428
  %2439 = icmp ult i32 %2437, %2436
  %2440 = icmp ult i32 %2437, %2435
  %2441 = or i1 %2439, %2440
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %82, align 1, !tbaa !2433
  %2443 = and i32 %2437, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443) #12
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  store i8 %2447, i8* %88, align 1, !tbaa !2447
  %2448 = xor i64 %2432, %2434
  %2449 = trunc i64 %2448 to i32
  %2450 = xor i32 %2449, %2437
  %2451 = lshr i32 %2450, 4
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  store i8 %2453, i8* %93, align 1, !tbaa !2451
  %2454 = icmp eq i32 %2437, 0
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %96, align 1, !tbaa !2448
  %2456 = lshr i32 %2437, 31
  %2457 = trunc i32 %2456 to i8
  store i8 %2457, i8* %99, align 1, !tbaa !2449
  %2458 = lshr i32 %2436, 31
  %2459 = lshr i32 %2435, 31
  %2460 = xor i32 %2456, %2458
  %2461 = xor i32 %2456, %2459
  %2462 = add nuw nsw i32 %2460, %2461
  %2463 = icmp eq i32 %2462, 2
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %105, align 1, !tbaa !2450
  %2465 = add i64 %2420, -72
  %2466 = add i64 %797, 695
  store i64 %2466, i64* %PC, align 8
  %2467 = inttoptr i64 %2465 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = add i32 %2468, -1
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RSI, align 8, !tbaa !2428
  %2471 = icmp eq i32 %2468, 0
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %82, align 1, !tbaa !2433
  %2473 = and i32 %2469, 255
  %2474 = tail call i32 @llvm.ctpop.i32(i32 %2473) #12
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = xor i8 %2476, 1
  store i8 %2477, i8* %88, align 1, !tbaa !2447
  %2478 = xor i32 %2469, %2468
  %2479 = lshr i32 %2478, 4
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  store i8 %2481, i8* %93, align 1, !tbaa !2451
  %2482 = icmp eq i32 %2469, 0
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %96, align 1, !tbaa !2448
  %2484 = lshr i32 %2469, 31
  %2485 = trunc i32 %2484 to i8
  store i8 %2485, i8* %99, align 1, !tbaa !2449
  %2486 = lshr i32 %2468, 31
  %2487 = xor i32 %2484, %2486
  %2488 = add nuw nsw i32 %2487, %2486
  %2489 = icmp eq i32 %2488, 2
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %105, align 1, !tbaa !2450
  %2491 = load i64, i64* %RBP, align 8
  %2492 = add i64 %2491, -40
  %2493 = add i64 %797, 702
  store i64 %2493, i64* %PC, align 8
  %2494 = inttoptr i64 %2492 to i64*
  %2495 = load i64, i64* %2494, align 8
  store i64 %2495, i64* %RCX, align 8, !tbaa !2428
  %2496 = add i64 %2495, 20
  %2497 = add i64 %797, 706
  store i64 %2497, i64* %PC, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = sext i32 %2469 to i64
  %2501 = sext i32 %2499 to i64
  %2502 = mul nsw i64 %2501, %2500
  %2503 = and i64 %2502, 4294967295
  store i64 %2503, i64* %RSI, align 8, !tbaa !2428
  %2504 = load i64, i64* %RDX, align 8
  %2505 = trunc i64 %2502 to i32
  %2506 = trunc i64 %2504 to i32
  %2507 = add i32 %2505, %2506
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RDX, align 8, !tbaa !2428
  %2509 = icmp ult i32 %2507, %2506
  %2510 = icmp ult i32 %2507, %2505
  %2511 = or i1 %2509, %2510
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %82, align 1, !tbaa !2433
  %2513 = and i32 %2507, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513) #12
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %88, align 1, !tbaa !2447
  %2518 = xor i64 %2502, %2504
  %2519 = trunc i64 %2518 to i32
  %2520 = xor i32 %2519, %2507
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  store i8 %2523, i8* %93, align 1, !tbaa !2451
  %2524 = icmp eq i32 %2507, 0
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %96, align 1, !tbaa !2448
  %2526 = lshr i32 %2507, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %99, align 1, !tbaa !2449
  %2528 = lshr i32 %2506, 31
  %2529 = lshr i32 %2505, 31
  %2530 = xor i32 %2526, %2528
  %2531 = xor i32 %2526, %2529
  %2532 = add nuw nsw i32 %2530, %2531
  %2533 = icmp eq i32 %2532, 2
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %105, align 1, !tbaa !2450
  %2535 = add i64 %2491, -76
  %2536 = add i64 %797, 711
  store i64 %2536, i64* %PC, align 8
  %2537 = inttoptr i64 %2535 to i32*
  %2538 = load i32, i32* %2537, align 4
  %2539 = add i32 %2538, %2507
  %2540 = zext i32 %2539 to i64
  store i64 %2540, i64* %RDX, align 8, !tbaa !2428
  %2541 = icmp ult i32 %2539, %2507
  %2542 = icmp ult i32 %2539, %2538
  %2543 = or i1 %2541, %2542
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %82, align 1, !tbaa !2433
  %2545 = and i32 %2539, 255
  %2546 = tail call i32 @llvm.ctpop.i32(i32 %2545) #12
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  store i8 %2549, i8* %88, align 1, !tbaa !2447
  %2550 = xor i32 %2538, %2507
  %2551 = xor i32 %2550, %2539
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %93, align 1, !tbaa !2451
  %2555 = icmp eq i32 %2539, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %96, align 1, !tbaa !2448
  %2557 = lshr i32 %2539, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %99, align 1, !tbaa !2449
  %2559 = lshr i32 %2538, 31
  %2560 = xor i32 %2557, %2526
  %2561 = xor i32 %2557, %2559
  %2562 = add nuw nsw i32 %2560, %2561
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %105, align 1, !tbaa !2450
  %2565 = sext i32 %2539 to i64
  store i64 %2565, i64* %RCX, align 8, !tbaa !2428
  %2566 = load i64, i64* %RAX, align 8
  %2567 = shl nsw i64 %2565, 2
  %2568 = add i64 %2566, %2567
  %2569 = add i64 %797, 719
  store i64 %2569, i64* %PC, align 8
  %2570 = load <2 x float>, <2 x float>* %221, align 1
  %2571 = load <2 x i32>, <2 x i32>* %222, align 1
  %2572 = inttoptr i64 %2568 to float*
  %2573 = load float, float* %2572, align 4
  %2574 = extractelement <2 x float> %2570, i32 0
  %2575 = fsub float %2574, %2573
  store float %2575, float* %213, align 1, !tbaa !2452
  %2576 = bitcast <2 x float> %2570 to <2 x i32>
  %2577 = extractelement <2 x i32> %2576, i32 1
  store i32 %2577, i32* %223, align 1, !tbaa !2452
  %2578 = extractelement <2 x i32> %2571, i32 0
  store i32 %2578, i32* %224, align 1, !tbaa !2452
  %2579 = extractelement <2 x i32> %2571, i32 1
  store i32 %2579, i32* %225, align 1, !tbaa !2452
  %2580 = load i64, i64* %RBP, align 8
  %2581 = add i64 %2580, -40
  %2582 = add i64 %797, 723
  store i64 %2582, i64* %PC, align 8
  %2583 = inttoptr i64 %2581 to i64*
  %2584 = load i64, i64* %2583, align 8
  store i64 %2584, i64* %RAX, align 8, !tbaa !2428
  %2585 = add i64 %797, 726
  store i64 %2585, i64* %PC, align 8
  %2586 = inttoptr i64 %2584 to i64*
  %2587 = load i64, i64* %2586, align 8
  store i64 %2587, i64* %RAX, align 8, !tbaa !2428
  %2588 = add i64 %797, 730
  store i64 %2588, i64* %PC, align 8
  %2589 = load i64, i64* %2583, align 8
  store i64 %2589, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2590 = add i64 %797, 738
  store i64 %2590, i64* %PC, align 8
  %2591 = load i64, i64* %2583, align 8
  store i64 %2591, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2592 = add i64 %797, 746
  store i64 %2592, i64* %PC, align 8
  %2593 = load i64, i64* %2583, align 8
  store i64 %2593, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2594 = add i64 %2580, -68
  %2595 = add i64 %797, 753
  store i64 %2595, i64* %PC, align 8
  %2596 = inttoptr i64 %2594 to i32*
  %2597 = load i32, i32* %2596, align 4
  %2598 = add i32 %2597, -1
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RSI, align 8, !tbaa !2428
  %2600 = icmp eq i32 %2597, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %82, align 1, !tbaa !2433
  %2602 = and i32 %2598, 255
  %2603 = tail call i32 @llvm.ctpop.i32(i32 %2602) #12
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %88, align 1, !tbaa !2447
  %2607 = xor i32 %2598, %2597
  %2608 = lshr i32 %2607, 4
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  store i8 %2610, i8* %93, align 1, !tbaa !2451
  %2611 = icmp eq i32 %2598, 0
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %96, align 1, !tbaa !2448
  %2613 = lshr i32 %2598, 31
  %2614 = trunc i32 %2613 to i8
  store i8 %2614, i8* %99, align 1, !tbaa !2449
  %2615 = lshr i32 %2597, 31
  %2616 = xor i32 %2613, %2615
  %2617 = add nuw nsw i32 %2616, %2615
  %2618 = icmp eq i32 %2617, 2
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %105, align 1, !tbaa !2450
  %2620 = add i64 %797, 760
  store i64 %2620, i64* %PC, align 8
  %2621 = load i64, i64* %2583, align 8
  store i64 %2621, i64* %RCX, align 8, !tbaa !2428
  %2622 = add i64 %2621, 16
  %2623 = add i64 %797, 764
  store i64 %2623, i64* %PC, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = sext i32 %2598 to i64
  %2627 = sext i32 %2625 to i64
  %2628 = mul nsw i64 %2627, %2626
  %2629 = trunc i64 %2628 to i32
  %2630 = and i64 %2628, 4294967295
  store i64 %2630, i64* %RSI, align 8, !tbaa !2428
  %2631 = shl i64 %2628, 32
  %2632 = ashr exact i64 %2631, 32
  %2633 = icmp ne i64 %2632, %2628
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %82, align 1, !tbaa !2433
  %2635 = and i32 %2629, 255
  %2636 = tail call i32 @llvm.ctpop.i32(i32 %2635) #12
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = xor i8 %2638, 1
  store i8 %2639, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %2640 = lshr i32 %2629, 31
  %2641 = trunc i32 %2640 to i8
  store i8 %2641, i8* %99, align 1, !tbaa !2449
  store i8 %2634, i8* %105, align 1, !tbaa !2450
  %2642 = load i64, i64* %RBP, align 8
  %2643 = add i64 %2642, -40
  %2644 = add i64 %797, 768
  store i64 %2644, i64* %PC, align 8
  %2645 = inttoptr i64 %2643 to i64*
  %2646 = load i64, i64* %2645, align 8
  store i64 %2646, i64* %RCX, align 8, !tbaa !2428
  %2647 = add i64 %2646, 20
  %2648 = add i64 %797, 772
  store i64 %2648, i64* %PC, align 8
  %2649 = inttoptr i64 %2647 to i32*
  %2650 = load i32, i32* %2649, align 4
  %2651 = shl i64 %2628, 32
  %2652 = ashr exact i64 %2651, 32
  %2653 = sext i32 %2650 to i64
  %2654 = mul nsw i64 %2653, %2652
  %2655 = and i64 %2654, 4294967295
  store i64 %2655, i64* %RSI, align 8, !tbaa !2428
  %2656 = load i64, i64* %RDX, align 8
  %2657 = trunc i64 %2654 to i32
  %2658 = trunc i64 %2656 to i32
  %2659 = add i32 %2657, %2658
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RDX, align 8, !tbaa !2428
  %2661 = icmp ult i32 %2659, %2658
  %2662 = icmp ult i32 %2659, %2657
  %2663 = or i1 %2661, %2662
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %82, align 1, !tbaa !2433
  %2665 = and i32 %2659, 255
  %2666 = tail call i32 @llvm.ctpop.i32(i32 %2665) #12
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  store i8 %2669, i8* %88, align 1, !tbaa !2447
  %2670 = xor i64 %2654, %2656
  %2671 = trunc i64 %2670 to i32
  %2672 = xor i32 %2671, %2659
  %2673 = lshr i32 %2672, 4
  %2674 = trunc i32 %2673 to i8
  %2675 = and i8 %2674, 1
  store i8 %2675, i8* %93, align 1, !tbaa !2451
  %2676 = icmp eq i32 %2659, 0
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %96, align 1, !tbaa !2448
  %2678 = lshr i32 %2659, 31
  %2679 = trunc i32 %2678 to i8
  store i8 %2679, i8* %99, align 1, !tbaa !2449
  %2680 = lshr i32 %2658, 31
  %2681 = lshr i32 %2657, 31
  %2682 = xor i32 %2678, %2680
  %2683 = xor i32 %2678, %2681
  %2684 = add nuw nsw i32 %2682, %2683
  %2685 = icmp eq i32 %2684, 2
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %105, align 1, !tbaa !2450
  %2687 = add i64 %2642, -72
  %2688 = add i64 %797, 777
  store i64 %2688, i64* %PC, align 8
  %2689 = inttoptr i64 %2687 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = add i32 %2690, 1
  %2692 = zext i32 %2691 to i64
  store i64 %2692, i64* %RSI, align 8, !tbaa !2428
  %2693 = icmp eq i32 %2690, -1
  %2694 = icmp eq i32 %2691, 0
  %2695 = or i1 %2693, %2694
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %82, align 1, !tbaa !2433
  %2697 = and i32 %2691, 255
  %2698 = tail call i32 @llvm.ctpop.i32(i32 %2697) #12
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = xor i8 %2700, 1
  store i8 %2701, i8* %88, align 1, !tbaa !2447
  %2702 = xor i32 %2691, %2690
  %2703 = lshr i32 %2702, 4
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  store i8 %2705, i8* %93, align 1, !tbaa !2451
  %2706 = zext i1 %2694 to i8
  store i8 %2706, i8* %96, align 1, !tbaa !2448
  %2707 = lshr i32 %2691, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %99, align 1, !tbaa !2449
  %2709 = lshr i32 %2690, 31
  %2710 = xor i32 %2707, %2709
  %2711 = add nuw nsw i32 %2710, %2707
  %2712 = icmp eq i32 %2711, 2
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %105, align 1, !tbaa !2450
  %2714 = load i64, i64* %RBP, align 8
  %2715 = add i64 %2714, -40
  %2716 = add i64 %797, 784
  store i64 %2716, i64* %PC, align 8
  %2717 = inttoptr i64 %2715 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RCX, align 8, !tbaa !2428
  %2719 = add i64 %2718, 20
  %2720 = add i64 %797, 788
  store i64 %2720, i64* %PC, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = sext i32 %2691 to i64
  %2724 = sext i32 %2722 to i64
  %2725 = mul nsw i64 %2724, %2723
  %2726 = and i64 %2725, 4294967295
  store i64 %2726, i64* %RSI, align 8, !tbaa !2428
  %2727 = load i64, i64* %RDX, align 8
  %2728 = trunc i64 %2725 to i32
  %2729 = trunc i64 %2727 to i32
  %2730 = add i32 %2728, %2729
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RDX, align 8, !tbaa !2428
  %2732 = icmp ult i32 %2730, %2729
  %2733 = icmp ult i32 %2730, %2728
  %2734 = or i1 %2732, %2733
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %82, align 1, !tbaa !2433
  %2736 = and i32 %2730, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736) #12
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %88, align 1, !tbaa !2447
  %2741 = xor i64 %2725, %2727
  %2742 = trunc i64 %2741 to i32
  %2743 = xor i32 %2742, %2730
  %2744 = lshr i32 %2743, 4
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  store i8 %2746, i8* %93, align 1, !tbaa !2451
  %2747 = icmp eq i32 %2730, 0
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %96, align 1, !tbaa !2448
  %2749 = lshr i32 %2730, 31
  %2750 = trunc i32 %2749 to i8
  store i8 %2750, i8* %99, align 1, !tbaa !2449
  %2751 = lshr i32 %2729, 31
  %2752 = lshr i32 %2728, 31
  %2753 = xor i32 %2749, %2751
  %2754 = xor i32 %2749, %2752
  %2755 = add nuw nsw i32 %2753, %2754
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %105, align 1, !tbaa !2450
  %2758 = add i64 %2714, -76
  %2759 = add i64 %797, 793
  store i64 %2759, i64* %PC, align 8
  %2760 = inttoptr i64 %2758 to i32*
  %2761 = load i32, i32* %2760, align 4
  %2762 = add i32 %2761, %2730
  %2763 = zext i32 %2762 to i64
  store i64 %2763, i64* %RDX, align 8, !tbaa !2428
  %2764 = icmp ult i32 %2762, %2730
  %2765 = icmp ult i32 %2762, %2761
  %2766 = or i1 %2764, %2765
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %82, align 1, !tbaa !2433
  %2768 = and i32 %2762, 255
  %2769 = tail call i32 @llvm.ctpop.i32(i32 %2768) #12
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = xor i8 %2771, 1
  store i8 %2772, i8* %88, align 1, !tbaa !2447
  %2773 = xor i32 %2761, %2730
  %2774 = xor i32 %2773, %2762
  %2775 = lshr i32 %2774, 4
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %93, align 1, !tbaa !2451
  %2778 = icmp eq i32 %2762, 0
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %96, align 1, !tbaa !2448
  %2780 = lshr i32 %2762, 31
  %2781 = trunc i32 %2780 to i8
  store i8 %2781, i8* %99, align 1, !tbaa !2449
  %2782 = lshr i32 %2761, 31
  %2783 = xor i32 %2780, %2749
  %2784 = xor i32 %2780, %2782
  %2785 = add nuw nsw i32 %2783, %2784
  %2786 = icmp eq i32 %2785, 2
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %105, align 1, !tbaa !2450
  %2788 = sext i32 %2762 to i64
  store i64 %2788, i64* %RCX, align 8, !tbaa !2428
  %2789 = load i64, i64* %RAX, align 8
  %2790 = shl nsw i64 %2788, 2
  %2791 = add i64 %2789, %2790
  %2792 = add i64 %797, 801
  store i64 %2792, i64* %PC, align 8
  %2793 = load <2 x float>, <2 x float>* %221, align 1
  %2794 = load <2 x i32>, <2 x i32>* %222, align 1
  %2795 = inttoptr i64 %2791 to float*
  %2796 = load float, float* %2795, align 4
  %2797 = extractelement <2 x float> %2793, i32 0
  %2798 = fsub float %2797, %2796
  store float %2798, float* %213, align 1, !tbaa !2452
  %2799 = bitcast <2 x float> %2793 to <2 x i32>
  %2800 = extractelement <2 x i32> %2799, i32 1
  store i32 %2800, i32* %223, align 1, !tbaa !2452
  %2801 = extractelement <2 x i32> %2794, i32 0
  store i32 %2801, i32* %224, align 1, !tbaa !2452
  %2802 = extractelement <2 x i32> %2794, i32 1
  store i32 %2802, i32* %225, align 1, !tbaa !2452
  %2803 = load i64, i64* %RBP, align 8
  %2804 = add i64 %2803, -40
  %2805 = add i64 %797, 805
  store i64 %2805, i64* %PC, align 8
  %2806 = inttoptr i64 %2804 to i64*
  %2807 = load i64, i64* %2806, align 8
  store i64 %2807, i64* %RAX, align 8, !tbaa !2428
  %2808 = add i64 %797, 808
  store i64 %2808, i64* %PC, align 8
  %2809 = inttoptr i64 %2807 to i64*
  %2810 = load i64, i64* %2809, align 8
  store i64 %2810, i64* %RAX, align 8, !tbaa !2428
  %2811 = add i64 %797, 812
  store i64 %2811, i64* %PC, align 8
  %2812 = load i64, i64* %2806, align 8
  store i64 %2812, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2813 = add i64 %797, 820
  store i64 %2813, i64* %PC, align 8
  %2814 = load i64, i64* %2806, align 8
  store i64 %2814, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2815 = add i64 %797, 828
  store i64 %2815, i64* %PC, align 8
  %2816 = load i64, i64* %2806, align 8
  store i64 %2816, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %2817 = add i64 %2803, -68
  %2818 = add i64 %797, 835
  store i64 %2818, i64* %PC, align 8
  %2819 = inttoptr i64 %2817 to i32*
  %2820 = load i32, i32* %2819, align 4
  %2821 = add i32 %2820, -1
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RSI, align 8, !tbaa !2428
  %2823 = icmp eq i32 %2820, 0
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %82, align 1, !tbaa !2433
  %2825 = and i32 %2821, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825) #12
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %88, align 1, !tbaa !2447
  %2830 = xor i32 %2821, %2820
  %2831 = lshr i32 %2830, 4
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %93, align 1, !tbaa !2451
  %2834 = icmp eq i32 %2821, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %96, align 1, !tbaa !2448
  %2836 = lshr i32 %2821, 31
  %2837 = trunc i32 %2836 to i8
  store i8 %2837, i8* %99, align 1, !tbaa !2449
  %2838 = lshr i32 %2820, 31
  %2839 = xor i32 %2836, %2838
  %2840 = add nuw nsw i32 %2839, %2838
  %2841 = icmp eq i32 %2840, 2
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %105, align 1, !tbaa !2450
  %2843 = add i64 %797, 842
  store i64 %2843, i64* %PC, align 8
  %2844 = load i64, i64* %2806, align 8
  store i64 %2844, i64* %RCX, align 8, !tbaa !2428
  %2845 = add i64 %2844, 16
  %2846 = add i64 %797, 846
  store i64 %2846, i64* %PC, align 8
  %2847 = inttoptr i64 %2845 to i32*
  %2848 = load i32, i32* %2847, align 4
  %2849 = sext i32 %2821 to i64
  %2850 = sext i32 %2848 to i64
  %2851 = mul nsw i64 %2850, %2849
  %2852 = trunc i64 %2851 to i32
  %2853 = and i64 %2851, 4294967295
  store i64 %2853, i64* %RSI, align 8, !tbaa !2428
  %2854 = shl i64 %2851, 32
  %2855 = ashr exact i64 %2854, 32
  %2856 = icmp ne i64 %2855, %2851
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %82, align 1, !tbaa !2433
  %2858 = and i32 %2852, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858) #12
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %2863 = lshr i32 %2852, 31
  %2864 = trunc i32 %2863 to i8
  store i8 %2864, i8* %99, align 1, !tbaa !2449
  store i8 %2857, i8* %105, align 1, !tbaa !2450
  %2865 = load i64, i64* %RBP, align 8
  %2866 = add i64 %2865, -40
  %2867 = add i64 %797, 850
  store i64 %2867, i64* %PC, align 8
  %2868 = inttoptr i64 %2866 to i64*
  %2869 = load i64, i64* %2868, align 8
  store i64 %2869, i64* %RCX, align 8, !tbaa !2428
  %2870 = add i64 %2869, 20
  %2871 = add i64 %797, 854
  store i64 %2871, i64* %PC, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = shl i64 %2851, 32
  %2875 = ashr exact i64 %2874, 32
  %2876 = sext i32 %2873 to i64
  %2877 = mul nsw i64 %2876, %2875
  %2878 = and i64 %2877, 4294967295
  store i64 %2878, i64* %RSI, align 8, !tbaa !2428
  %2879 = load i64, i64* %RDX, align 8
  %2880 = trunc i64 %2877 to i32
  %2881 = trunc i64 %2879 to i32
  %2882 = add i32 %2880, %2881
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RDX, align 8, !tbaa !2428
  %2884 = icmp ult i32 %2882, %2881
  %2885 = icmp ult i32 %2882, %2880
  %2886 = or i1 %2884, %2885
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %82, align 1, !tbaa !2433
  %2888 = and i32 %2882, 255
  %2889 = tail call i32 @llvm.ctpop.i32(i32 %2888) #12
  %2890 = trunc i32 %2889 to i8
  %2891 = and i8 %2890, 1
  %2892 = xor i8 %2891, 1
  store i8 %2892, i8* %88, align 1, !tbaa !2447
  %2893 = xor i64 %2877, %2879
  %2894 = trunc i64 %2893 to i32
  %2895 = xor i32 %2894, %2882
  %2896 = lshr i32 %2895, 4
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  store i8 %2898, i8* %93, align 1, !tbaa !2451
  %2899 = icmp eq i32 %2882, 0
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %96, align 1, !tbaa !2448
  %2901 = lshr i32 %2882, 31
  %2902 = trunc i32 %2901 to i8
  store i8 %2902, i8* %99, align 1, !tbaa !2449
  %2903 = lshr i32 %2881, 31
  %2904 = lshr i32 %2880, 31
  %2905 = xor i32 %2901, %2903
  %2906 = xor i32 %2901, %2904
  %2907 = add nuw nsw i32 %2905, %2906
  %2908 = icmp eq i32 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %105, align 1, !tbaa !2450
  %2910 = add i64 %2865, -72
  %2911 = add i64 %797, 859
  store i64 %2911, i64* %PC, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = add i32 %2913, -1
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RSI, align 8, !tbaa !2428
  %2916 = icmp eq i32 %2913, 0
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %82, align 1, !tbaa !2433
  %2918 = and i32 %2914, 255
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2918) #12
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  store i8 %2922, i8* %88, align 1, !tbaa !2447
  %2923 = xor i32 %2914, %2913
  %2924 = lshr i32 %2923, 4
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %93, align 1, !tbaa !2451
  %2927 = icmp eq i32 %2914, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %96, align 1, !tbaa !2448
  %2929 = lshr i32 %2914, 31
  %2930 = trunc i32 %2929 to i8
  store i8 %2930, i8* %99, align 1, !tbaa !2449
  %2931 = lshr i32 %2913, 31
  %2932 = xor i32 %2929, %2931
  %2933 = add nuw nsw i32 %2932, %2931
  %2934 = icmp eq i32 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %105, align 1, !tbaa !2450
  %2936 = load i64, i64* %RBP, align 8
  %2937 = add i64 %2936, -40
  %2938 = add i64 %797, 866
  store i64 %2938, i64* %PC, align 8
  %2939 = inttoptr i64 %2937 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RCX, align 8, !tbaa !2428
  %2941 = add i64 %2940, 20
  %2942 = add i64 %797, 870
  store i64 %2942, i64* %PC, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = sext i32 %2914 to i64
  %2946 = sext i32 %2944 to i64
  %2947 = mul nsw i64 %2946, %2945
  %2948 = and i64 %2947, 4294967295
  store i64 %2948, i64* %RSI, align 8, !tbaa !2428
  %2949 = load i64, i64* %RDX, align 8
  %2950 = trunc i64 %2947 to i32
  %2951 = trunc i64 %2949 to i32
  %2952 = add i32 %2950, %2951
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RDX, align 8, !tbaa !2428
  %2954 = icmp ult i32 %2952, %2951
  %2955 = icmp ult i32 %2952, %2950
  %2956 = or i1 %2954, %2955
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %82, align 1, !tbaa !2433
  %2958 = and i32 %2952, 255
  %2959 = tail call i32 @llvm.ctpop.i32(i32 %2958) #12
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  store i8 %2962, i8* %88, align 1, !tbaa !2447
  %2963 = xor i64 %2947, %2949
  %2964 = trunc i64 %2963 to i32
  %2965 = xor i32 %2964, %2952
  %2966 = lshr i32 %2965, 4
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  store i8 %2968, i8* %93, align 1, !tbaa !2451
  %2969 = icmp eq i32 %2952, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %96, align 1, !tbaa !2448
  %2971 = lshr i32 %2952, 31
  %2972 = trunc i32 %2971 to i8
  store i8 %2972, i8* %99, align 1, !tbaa !2449
  %2973 = lshr i32 %2951, 31
  %2974 = lshr i32 %2950, 31
  %2975 = xor i32 %2971, %2973
  %2976 = xor i32 %2971, %2974
  %2977 = add nuw nsw i32 %2975, %2976
  %2978 = icmp eq i32 %2977, 2
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %105, align 1, !tbaa !2450
  %2980 = add i64 %2936, -76
  %2981 = add i64 %797, 875
  store i64 %2981, i64* %PC, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = add i32 %2983, %2952
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RDX, align 8, !tbaa !2428
  %2986 = icmp ult i32 %2984, %2952
  %2987 = icmp ult i32 %2984, %2983
  %2988 = or i1 %2986, %2987
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %82, align 1, !tbaa !2433
  %2990 = and i32 %2984, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990) #12
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %88, align 1, !tbaa !2447
  %2995 = xor i32 %2983, %2952
  %2996 = xor i32 %2995, %2984
  %2997 = lshr i32 %2996, 4
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %93, align 1, !tbaa !2451
  %3000 = icmp eq i32 %2984, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %96, align 1, !tbaa !2448
  %3002 = lshr i32 %2984, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %99, align 1, !tbaa !2449
  %3004 = lshr i32 %2983, 31
  %3005 = xor i32 %3002, %2971
  %3006 = xor i32 %3002, %3004
  %3007 = add nuw nsw i32 %3005, %3006
  %3008 = icmp eq i32 %3007, 2
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %105, align 1, !tbaa !2450
  %3010 = sext i32 %2984 to i64
  store i64 %3010, i64* %RCX, align 8, !tbaa !2428
  %3011 = load i64, i64* %RAX, align 8
  %3012 = shl nsw i64 %3010, 2
  %3013 = add i64 %3011, %3012
  %3014 = add i64 %797, 883
  store i64 %3014, i64* %PC, align 8
  %3015 = load <2 x float>, <2 x float>* %221, align 1
  %3016 = load <2 x i32>, <2 x i32>* %222, align 1
  %3017 = inttoptr i64 %3013 to float*
  %3018 = load float, float* %3017, align 4
  %3019 = extractelement <2 x float> %3015, i32 0
  %3020 = fadd float %3019, %3018
  store float %3020, float* %213, align 1, !tbaa !2452
  %3021 = bitcast <2 x float> %3015 to <2 x i32>
  %3022 = extractelement <2 x i32> %3021, i32 1
  store i32 %3022, i32* %223, align 1, !tbaa !2452
  %3023 = extractelement <2 x i32> %3016, i32 0
  store i32 %3023, i32* %224, align 1, !tbaa !2452
  %3024 = extractelement <2 x i32> %3016, i32 1
  store i32 %3024, i32* %225, align 1, !tbaa !2452
  %3025 = load <2 x float>, <2 x float>* %207, align 1
  %3026 = load <2 x i32>, <2 x i32>* %208, align 1
  %3027 = load <2 x float>, <2 x float>* %221, align 1
  %3028 = extractelement <2 x float> %3025, i32 0
  %3029 = extractelement <2 x float> %3027, i32 0
  %3030 = fmul float %3028, %3029
  store float %3030, float* %199, align 1, !tbaa !2452
  %3031 = bitcast <2 x float> %3025 to <2 x i32>
  %3032 = extractelement <2 x i32> %3031, i32 1
  store i32 %3032, i32* %209, align 1, !tbaa !2452
  %3033 = extractelement <2 x i32> %3026, i32 0
  store i32 %3033, i32* %210, align 1, !tbaa !2452
  %3034 = extractelement <2 x i32> %3026, i32 1
  store i32 %3034, i32* %211, align 1, !tbaa !2452
  %3035 = load <2 x float>, <2 x float>* %192, align 1
  %3036 = load <2 x i32>, <2 x i32>* %197, align 1
  %3037 = load <2 x float>, <2 x float>* %207, align 1
  %3038 = extractelement <2 x float> %3035, i32 0
  %3039 = extractelement <2 x float> %3037, i32 0
  %3040 = fadd float %3038, %3039
  store float %3040, float* %193, align 1, !tbaa !2452
  %3041 = bitcast <2 x float> %3035 to <2 x i32>
  %3042 = extractelement <2 x i32> %3041, i32 1
  store i32 %3042, i32* %188, align 1, !tbaa !2452
  %3043 = extractelement <2 x i32> %3036, i32 0
  store i32 %3043, i32* %189, align 1, !tbaa !2452
  %3044 = extractelement <2 x i32> %3036, i32 1
  store i32 %3044, i32* %191, align 1, !tbaa !2452
  %3045 = load i64, i64* %RBP, align 8
  %3046 = add i64 %3045, -24
  %3047 = add i64 %797, 895
  store i64 %3047, i64* %PC, align 8
  %3048 = inttoptr i64 %3046 to i64*
  %3049 = load i64, i64* %3048, align 8
  store i64 %3049, i64* %RAX, align 8, !tbaa !2428
  %3050 = add i64 %797, 898
  store i64 %3050, i64* %PC, align 8
  %3051 = inttoptr i64 %3049 to i64*
  %3052 = load i64, i64* %3051, align 8
  store i64 %3052, i64* %RAX, align 8, !tbaa !2428
  %3053 = add i64 %797, 902
  store i64 %3053, i64* %PC, align 8
  %3054 = load i64, i64* %3048, align 8
  store i64 %3054, i64* %RCX, align 8, !tbaa !2428
  %3055 = add i64 %3054, 12
  %3056 = add i64 %797, 905
  store i64 %3056, i64* %PC, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = zext i32 %3058 to i64
  store i64 %3059, i64* %RDX, align 8, !tbaa !2428
  %3060 = add i64 %797, 912
  store i64 %3060, i64* %PC, align 8
  %3061 = load i64, i64* %3048, align 8
  store i64 %3061, i64* %RCX, align 8, !tbaa !2428
  %3062 = add i64 %3061, 16
  %3063 = add i64 %797, 916
  store i64 %3063, i64* %PC, align 8
  %3064 = inttoptr i64 %3062 to i32*
  %3065 = load i32, i32* %3064, align 4
  %3066 = sext i32 %3058 to i64
  %3067 = sext i32 %3065 to i64
  %3068 = mul nsw i64 %3067, %3066
  %3069 = trunc i64 %3068 to i32
  %3070 = and i64 %3068, 4294967295
  store i64 %3070, i64* %RDX, align 8, !tbaa !2428
  %3071 = shl i64 %3068, 32
  %3072 = ashr exact i64 %3071, 32
  %3073 = icmp ne i64 %3072, %3068
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %82, align 1, !tbaa !2433
  %3075 = and i32 %3069, 255
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075) #12
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3080 = lshr i32 %3069, 31
  %3081 = trunc i32 %3080 to i8
  store i8 %3081, i8* %99, align 1, !tbaa !2449
  store i8 %3074, i8* %105, align 1, !tbaa !2450
  %3082 = add i64 %797, 920
  store i64 %3082, i64* %PC, align 8
  %3083 = load i64, i64* %3048, align 8
  store i64 %3083, i64* %RCX, align 8, !tbaa !2428
  %3084 = add i64 %3083, 20
  %3085 = add i64 %797, 924
  store i64 %3085, i64* %PC, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  %3088 = shl i64 %3068, 32
  %3089 = ashr exact i64 %3088, 32
  %3090 = sext i32 %3087 to i64
  %3091 = mul nsw i64 %3090, %3089
  %3092 = trunc i64 %3091 to i32
  %3093 = and i64 %3091, 4294967295
  store i64 %3093, i64* %RDX, align 8, !tbaa !2428
  %3094 = shl i64 %3091, 32
  %3095 = ashr exact i64 %3094, 32
  %3096 = icmp ne i64 %3095, %3091
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %82, align 1, !tbaa !2433
  %3098 = and i32 %3092, 255
  %3099 = tail call i32 @llvm.ctpop.i32(i32 %3098) #12
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  %3102 = xor i8 %3101, 1
  store i8 %3102, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3103 = lshr i32 %3092, 31
  %3104 = trunc i32 %3103 to i8
  store i8 %3104, i8* %99, align 1, !tbaa !2449
  store i8 %3097, i8* %105, align 1, !tbaa !2450
  %3105 = add i64 %3045, -68
  %3106 = add i64 %797, 927
  store i64 %3106, i64* %PC, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RSI, align 8, !tbaa !2428
  %3110 = add i64 %797, 931
  store i64 %3110, i64* %PC, align 8
  %3111 = load i64, i64* %3048, align 8
  store i64 %3111, i64* %RCX, align 8, !tbaa !2428
  %3112 = add i64 %3111, 16
  %3113 = add i64 %797, 935
  store i64 %3113, i64* %PC, align 8
  %3114 = inttoptr i64 %3112 to i32*
  %3115 = load i32, i32* %3114, align 4
  %3116 = sext i32 %3108 to i64
  %3117 = sext i32 %3115 to i64
  %3118 = mul nsw i64 %3117, %3116
  %3119 = trunc i64 %3118 to i32
  %3120 = and i64 %3118, 4294967295
  store i64 %3120, i64* %RSI, align 8, !tbaa !2428
  %3121 = shl i64 %3118, 32
  %3122 = ashr exact i64 %3121, 32
  %3123 = icmp ne i64 %3122, %3118
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %82, align 1, !tbaa !2433
  %3125 = and i32 %3119, 255
  %3126 = tail call i32 @llvm.ctpop.i32(i32 %3125) #12
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = xor i8 %3128, 1
  store i8 %3129, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3130 = lshr i32 %3119, 31
  %3131 = trunc i32 %3130 to i8
  store i8 %3131, i8* %99, align 1, !tbaa !2449
  store i8 %3124, i8* %105, align 1, !tbaa !2450
  %3132 = load i64, i64* %RBP, align 8
  %3133 = add i64 %3132, -24
  %3134 = add i64 %797, 939
  store i64 %3134, i64* %PC, align 8
  %3135 = inttoptr i64 %3133 to i64*
  %3136 = load i64, i64* %3135, align 8
  store i64 %3136, i64* %RCX, align 8, !tbaa !2428
  %3137 = add i64 %3136, 20
  %3138 = add i64 %797, 943
  store i64 %3138, i64* %PC, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = shl i64 %3118, 32
  %3142 = ashr exact i64 %3141, 32
  %3143 = sext i32 %3140 to i64
  %3144 = mul nsw i64 %3143, %3142
  %3145 = and i64 %3144, 4294967295
  store i64 %3145, i64* %RSI, align 8, !tbaa !2428
  %3146 = trunc i64 %3144 to i32
  %3147 = trunc i64 %3091 to i32
  %3148 = add i32 %3146, %3147
  %3149 = zext i32 %3148 to i64
  store i64 %3149, i64* %RDX, align 8, !tbaa !2428
  %3150 = icmp ult i32 %3148, %3147
  %3151 = icmp ult i32 %3148, %3146
  %3152 = or i1 %3150, %3151
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %82, align 1, !tbaa !2433
  %3154 = and i32 %3148, 255
  %3155 = tail call i32 @llvm.ctpop.i32(i32 %3154) #12
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  %3158 = xor i8 %3157, 1
  store i8 %3158, i8* %88, align 1, !tbaa !2447
  %3159 = xor i64 %3144, %3091
  %3160 = trunc i64 %3159 to i32
  %3161 = xor i32 %3160, %3148
  %3162 = lshr i32 %3161, 4
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  store i8 %3164, i8* %93, align 1, !tbaa !2451
  %3165 = icmp eq i32 %3148, 0
  %3166 = zext i1 %3165 to i8
  store i8 %3166, i8* %96, align 1, !tbaa !2448
  %3167 = lshr i32 %3148, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %99, align 1, !tbaa !2449
  %3169 = lshr i32 %3147, 31
  %3170 = lshr i32 %3146, 31
  %3171 = xor i32 %3167, %3169
  %3172 = xor i32 %3167, %3170
  %3173 = add nuw nsw i32 %3171, %3172
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %105, align 1, !tbaa !2450
  %3176 = add i64 %3132, -72
  %3177 = add i64 %797, 948
  store i64 %3177, i64* %PC, align 8
  %3178 = inttoptr i64 %3176 to i32*
  %3179 = load i32, i32* %3178, align 4
  %3180 = zext i32 %3179 to i64
  store i64 %3180, i64* %RSI, align 8, !tbaa !2428
  %3181 = add i64 %797, 952
  store i64 %3181, i64* %PC, align 8
  %3182 = load i64, i64* %3135, align 8
  store i64 %3182, i64* %RCX, align 8, !tbaa !2428
  %3183 = add i64 %3182, 20
  %3184 = add i64 %797, 956
  store i64 %3184, i64* %PC, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = sext i32 %3179 to i64
  %3188 = sext i32 %3186 to i64
  %3189 = mul nsw i64 %3188, %3187
  %3190 = and i64 %3189, 4294967295
  store i64 %3190, i64* %RSI, align 8, !tbaa !2428
  %3191 = trunc i64 %3189 to i32
  %3192 = add i32 %3191, %3148
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RDX, align 8, !tbaa !2428
  %3194 = icmp ult i32 %3192, %3148
  %3195 = icmp ult i32 %3192, %3191
  %3196 = or i1 %3194, %3195
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %82, align 1, !tbaa !2433
  %3198 = and i32 %3192, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198) #12
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %88, align 1, !tbaa !2447
  %3203 = xor i64 %3189, %3149
  %3204 = trunc i64 %3203 to i32
  %3205 = xor i32 %3204, %3192
  %3206 = lshr i32 %3205, 4
  %3207 = trunc i32 %3206 to i8
  %3208 = and i8 %3207, 1
  store i8 %3208, i8* %93, align 1, !tbaa !2451
  %3209 = icmp eq i32 %3192, 0
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %96, align 1, !tbaa !2448
  %3211 = lshr i32 %3192, 31
  %3212 = trunc i32 %3211 to i8
  store i8 %3212, i8* %99, align 1, !tbaa !2449
  %3213 = lshr i32 %3191, 31
  %3214 = xor i32 %3211, %3167
  %3215 = xor i32 %3211, %3213
  %3216 = add nuw nsw i32 %3214, %3215
  %3217 = icmp eq i32 %3216, 2
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %105, align 1, !tbaa !2450
  %3219 = load i64, i64* %RBP, align 8
  %3220 = add i64 %3219, -76
  %3221 = add i64 %797, 961
  store i64 %3221, i64* %PC, align 8
  %3222 = inttoptr i64 %3220 to i32*
  %3223 = load i32, i32* %3222, align 4
  %3224 = add i32 %3223, %3192
  %3225 = zext i32 %3224 to i64
  store i64 %3225, i64* %RDX, align 8, !tbaa !2428
  %3226 = icmp ult i32 %3224, %3192
  %3227 = icmp ult i32 %3224, %3223
  %3228 = or i1 %3226, %3227
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %82, align 1, !tbaa !2433
  %3230 = and i32 %3224, 255
  %3231 = tail call i32 @llvm.ctpop.i32(i32 %3230) #12
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  store i8 %3234, i8* %88, align 1, !tbaa !2447
  %3235 = xor i32 %3223, %3192
  %3236 = xor i32 %3235, %3224
  %3237 = lshr i32 %3236, 4
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  store i8 %3239, i8* %93, align 1, !tbaa !2451
  %3240 = icmp eq i32 %3224, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %96, align 1, !tbaa !2448
  %3242 = lshr i32 %3224, 31
  %3243 = trunc i32 %3242 to i8
  store i8 %3243, i8* %99, align 1, !tbaa !2449
  %3244 = lshr i32 %3223, 31
  %3245 = xor i32 %3242, %3211
  %3246 = xor i32 %3242, %3244
  %3247 = add nuw nsw i32 %3245, %3246
  %3248 = icmp eq i32 %3247, 2
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %105, align 1, !tbaa !2450
  %3250 = sext i32 %3224 to i64
  store i64 %3250, i64* %RCX, align 8, !tbaa !2428
  %3251 = load i64, i64* %RAX, align 8
  %3252 = shl nsw i64 %3250, 2
  %3253 = add i64 %3251, %3252
  %3254 = add i64 %797, 969
  store i64 %3254, i64* %PC, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  store i32 %3256, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %3257 = add i64 %3219, -40
  %3258 = add i64 %797, 973
  store i64 %3258, i64* %PC, align 8
  %3259 = inttoptr i64 %3257 to i64*
  %3260 = load i64, i64* %3259, align 8
  store i64 %3260, i64* %RAX, align 8, !tbaa !2428
  %3261 = add i64 %797, 976
  store i64 %3261, i64* %PC, align 8
  %3262 = inttoptr i64 %3260 to i64*
  %3263 = load i64, i64* %3262, align 8
  store i64 %3263, i64* %RAX, align 8, !tbaa !2428
  %3264 = add i64 %797, 980
  store i64 %3264, i64* %PC, align 8
  %3265 = load i64, i64* %3259, align 8
  store i64 %3265, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3266 = add i64 %797, 988
  store i64 %3266, i64* %PC, align 8
  %3267 = load i64, i64* %3259, align 8
  store i64 %3267, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3268 = add i64 %797, 996
  store i64 %3268, i64* %PC, align 8
  %3269 = load i64, i64* %3259, align 8
  store i64 %3269, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3270 = load i64, i64* %RBP, align 8
  %3271 = add i64 %3270, -68
  %3272 = add i64 %797, 1003
  store i64 %3272, i64* %PC, align 8
  %3273 = inttoptr i64 %3271 to i32*
  %3274 = load i32, i32* %3273, align 4
  %3275 = zext i32 %3274 to i64
  store i64 %3275, i64* %RSI, align 8, !tbaa !2428
  %3276 = add i64 %3270, -40
  %3277 = add i64 %797, 1007
  store i64 %3277, i64* %PC, align 8
  %3278 = inttoptr i64 %3276 to i64*
  %3279 = load i64, i64* %3278, align 8
  store i64 %3279, i64* %RCX, align 8, !tbaa !2428
  %3280 = add i64 %3279, 16
  %3281 = add i64 %797, 1011
  store i64 %3281, i64* %PC, align 8
  %3282 = inttoptr i64 %3280 to i32*
  %3283 = load i32, i32* %3282, align 4
  %3284 = sext i32 %3274 to i64
  %3285 = sext i32 %3283 to i64
  %3286 = mul nsw i64 %3285, %3284
  %3287 = trunc i64 %3286 to i32
  %3288 = and i64 %3286, 4294967295
  store i64 %3288, i64* %RSI, align 8, !tbaa !2428
  %3289 = shl i64 %3286, 32
  %3290 = ashr exact i64 %3289, 32
  %3291 = icmp ne i64 %3290, %3286
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %82, align 1, !tbaa !2433
  %3293 = and i32 %3287, 255
  %3294 = tail call i32 @llvm.ctpop.i32(i32 %3293) #12
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  %3297 = xor i8 %3296, 1
  store i8 %3297, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3298 = lshr i32 %3287, 31
  %3299 = trunc i32 %3298 to i8
  store i8 %3299, i8* %99, align 1, !tbaa !2449
  store i8 %3292, i8* %105, align 1, !tbaa !2450
  %3300 = add i64 %797, 1015
  store i64 %3300, i64* %PC, align 8
  %3301 = load i64, i64* %3278, align 8
  store i64 %3301, i64* %RCX, align 8, !tbaa !2428
  %3302 = add i64 %3301, 20
  %3303 = add i64 %797, 1019
  store i64 %3303, i64* %PC, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = shl i64 %3286, 32
  %3307 = ashr exact i64 %3306, 32
  %3308 = sext i32 %3305 to i64
  %3309 = mul nsw i64 %3308, %3307
  %3310 = and i64 %3309, 4294967295
  store i64 %3310, i64* %RSI, align 8, !tbaa !2428
  %3311 = trunc i64 %3309 to i32
  %3312 = and i64 %3309, 4294967295
  store i64 %3312, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %3313 = and i32 %3311, 255
  %3314 = tail call i32 @llvm.ctpop.i32(i32 %3313) #12
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  store i8 %3317, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %3318 = icmp eq i32 %3311, 0
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %96, align 1, !tbaa !2448
  %3320 = lshr i32 %3311, 31
  %3321 = trunc i32 %3320 to i8
  store i8 %3321, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3322 = add i64 %3270, -72
  %3323 = add i64 %797, 1024
  store i64 %3323, i64* %PC, align 8
  %3324 = inttoptr i64 %3322 to i32*
  %3325 = load i32, i32* %3324, align 4
  %3326 = add i32 %3325, 1
  %3327 = zext i32 %3326 to i64
  store i64 %3327, i64* %RSI, align 8, !tbaa !2428
  %3328 = icmp eq i32 %3325, -1
  %3329 = icmp eq i32 %3326, 0
  %3330 = or i1 %3328, %3329
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %82, align 1, !tbaa !2433
  %3332 = and i32 %3326, 255
  %3333 = tail call i32 @llvm.ctpop.i32(i32 %3332) #12
  %3334 = trunc i32 %3333 to i8
  %3335 = and i8 %3334, 1
  %3336 = xor i8 %3335, 1
  store i8 %3336, i8* %88, align 1, !tbaa !2447
  %3337 = xor i32 %3326, %3325
  %3338 = lshr i32 %3337, 4
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  store i8 %3340, i8* %93, align 1, !tbaa !2451
  %3341 = zext i1 %3329 to i8
  store i8 %3341, i8* %96, align 1, !tbaa !2448
  %3342 = lshr i32 %3326, 31
  %3343 = trunc i32 %3342 to i8
  store i8 %3343, i8* %99, align 1, !tbaa !2449
  %3344 = lshr i32 %3325, 31
  %3345 = xor i32 %3342, %3344
  %3346 = add nuw nsw i32 %3345, %3342
  %3347 = icmp eq i32 %3346, 2
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %105, align 1, !tbaa !2450
  %3349 = load i64, i64* %RBP, align 8
  %3350 = add i64 %3349, -40
  %3351 = add i64 %797, 1031
  store i64 %3351, i64* %PC, align 8
  %3352 = inttoptr i64 %3350 to i64*
  %3353 = load i64, i64* %3352, align 8
  store i64 %3353, i64* %RCX, align 8, !tbaa !2428
  %3354 = add i64 %3353, 20
  %3355 = add i64 %797, 1035
  store i64 %3355, i64* %PC, align 8
  %3356 = inttoptr i64 %3354 to i32*
  %3357 = load i32, i32* %3356, align 4
  %3358 = sext i32 %3326 to i64
  %3359 = sext i32 %3357 to i64
  %3360 = mul nsw i64 %3359, %3358
  %3361 = and i64 %3360, 4294967295
  store i64 %3361, i64* %RSI, align 8, !tbaa !2428
  %3362 = trunc i64 %3360 to i32
  %3363 = add i32 %3362, %3311
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RDX, align 8, !tbaa !2428
  %3365 = icmp ult i32 %3363, %3311
  %3366 = icmp ult i32 %3363, %3362
  %3367 = or i1 %3365, %3366
  %3368 = zext i1 %3367 to i8
  store i8 %3368, i8* %82, align 1, !tbaa !2433
  %3369 = and i32 %3363, 255
  %3370 = tail call i32 @llvm.ctpop.i32(i32 %3369) #12
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = xor i8 %3372, 1
  store i8 %3373, i8* %88, align 1, !tbaa !2447
  %3374 = xor i64 %3360, %3309
  %3375 = trunc i64 %3374 to i32
  %3376 = xor i32 %3375, %3363
  %3377 = lshr i32 %3376, 4
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  store i8 %3379, i8* %93, align 1, !tbaa !2451
  %3380 = icmp eq i32 %3363, 0
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %96, align 1, !tbaa !2448
  %3382 = lshr i32 %3363, 31
  %3383 = trunc i32 %3382 to i8
  store i8 %3383, i8* %99, align 1, !tbaa !2449
  %3384 = lshr i32 %3362, 31
  %3385 = xor i32 %3382, %3320
  %3386 = xor i32 %3382, %3384
  %3387 = add nuw nsw i32 %3385, %3386
  %3388 = icmp eq i32 %3387, 2
  %3389 = zext i1 %3388 to i8
  store i8 %3389, i8* %105, align 1, !tbaa !2450
  %3390 = add i64 %3349, -76
  %3391 = add i64 %797, 1040
  store i64 %3391, i64* %PC, align 8
  %3392 = inttoptr i64 %3390 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = add i32 %3393, 1
  %3395 = zext i32 %3394 to i64
  store i64 %3395, i64* %RSI, align 8, !tbaa !2428
  %3396 = lshr i32 %3394, 31
  %3397 = add i32 %3394, %3363
  %3398 = zext i32 %3397 to i64
  store i64 %3398, i64* %RDX, align 8, !tbaa !2428
  %3399 = icmp ult i32 %3397, %3363
  %3400 = icmp ult i32 %3397, %3394
  %3401 = or i1 %3399, %3400
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %82, align 1, !tbaa !2433
  %3403 = and i32 %3397, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403) #12
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %88, align 1, !tbaa !2447
  %3408 = xor i32 %3394, %3363
  %3409 = xor i32 %3408, %3397
  %3410 = lshr i32 %3409, 4
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  store i8 %3412, i8* %93, align 1, !tbaa !2451
  %3413 = icmp eq i32 %3397, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %96, align 1, !tbaa !2448
  %3415 = lshr i32 %3397, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %99, align 1, !tbaa !2449
  %3417 = xor i32 %3415, %3382
  %3418 = xor i32 %3415, %3396
  %3419 = add nuw nsw i32 %3417, %3418
  %3420 = icmp eq i32 %3419, 2
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %105, align 1, !tbaa !2450
  %3422 = sext i32 %3397 to i64
  store i64 %3422, i64* %RCX, align 8, !tbaa !2428
  %3423 = load i64, i64* %RAX, align 8
  %3424 = shl nsw i64 %3422, 2
  %3425 = add i64 %3423, %3424
  %3426 = add i64 %797, 1053
  store i64 %3426, i64* %PC, align 8
  %3427 = inttoptr i64 %3425 to i32*
  %3428 = load i32, i32* %3427, align 4
  store i32 %3428, i32* %214, align 1, !tbaa !2452
  store float 0.000000e+00, float* %216, align 1, !tbaa !2452
  store float 0.000000e+00, float* %218, align 1, !tbaa !2452
  store float 0.000000e+00, float* %220, align 1, !tbaa !2452
  %3429 = load i64, i64* %RBP, align 8
  %3430 = add i64 %3429, -40
  %3431 = add i64 %797, 1057
  store i64 %3431, i64* %PC, align 8
  %3432 = inttoptr i64 %3430 to i64*
  %3433 = load i64, i64* %3432, align 8
  store i64 %3433, i64* %RAX, align 8, !tbaa !2428
  %3434 = add i64 %797, 1060
  store i64 %3434, i64* %PC, align 8
  %3435 = inttoptr i64 %3433 to i64*
  %3436 = load i64, i64* %3435, align 8
  store i64 %3436, i64* %RAX, align 8, !tbaa !2428
  %3437 = add i64 %797, 1064
  store i64 %3437, i64* %PC, align 8
  %3438 = load i64, i64* %3432, align 8
  store i64 %3438, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3439 = add i64 %797, 1072
  store i64 %3439, i64* %PC, align 8
  %3440 = load i64, i64* %3432, align 8
  store i64 %3440, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3441 = add i64 %797, 1080
  store i64 %3441, i64* %PC, align 8
  %3442 = load i64, i64* %3432, align 8
  store i64 %3442, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3443 = add i64 %3429, -68
  %3444 = add i64 %797, 1087
  store i64 %3444, i64* %PC, align 8
  %3445 = inttoptr i64 %3443 to i32*
  %3446 = load i32, i32* %3445, align 4
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RSI, align 8, !tbaa !2428
  %3448 = add i64 %797, 1091
  store i64 %3448, i64* %PC, align 8
  %3449 = load i64, i64* %3432, align 8
  store i64 %3449, i64* %RCX, align 8, !tbaa !2428
  %3450 = add i64 %3449, 16
  %3451 = add i64 %797, 1095
  store i64 %3451, i64* %PC, align 8
  %3452 = inttoptr i64 %3450 to i32*
  %3453 = load i32, i32* %3452, align 4
  %3454 = sext i32 %3446 to i64
  %3455 = sext i32 %3453 to i64
  %3456 = mul nsw i64 %3455, %3454
  %3457 = trunc i64 %3456 to i32
  %3458 = and i64 %3456, 4294967295
  store i64 %3458, i64* %RSI, align 8, !tbaa !2428
  %3459 = shl i64 %3456, 32
  %3460 = ashr exact i64 %3459, 32
  %3461 = icmp ne i64 %3460, %3456
  %3462 = zext i1 %3461 to i8
  store i8 %3462, i8* %82, align 1, !tbaa !2433
  %3463 = and i32 %3457, 255
  %3464 = tail call i32 @llvm.ctpop.i32(i32 %3463) #12
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  %3467 = xor i8 %3466, 1
  store i8 %3467, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3468 = lshr i32 %3457, 31
  %3469 = trunc i32 %3468 to i8
  store i8 %3469, i8* %99, align 1, !tbaa !2449
  store i8 %3462, i8* %105, align 1, !tbaa !2450
  %3470 = add i64 %797, 1099
  store i64 %3470, i64* %PC, align 8
  %3471 = load i64, i64* %3432, align 8
  store i64 %3471, i64* %RCX, align 8, !tbaa !2428
  %3472 = add i64 %3471, 20
  %3473 = add i64 %797, 1103
  store i64 %3473, i64* %PC, align 8
  %3474 = inttoptr i64 %3472 to i32*
  %3475 = load i32, i32* %3474, align 4
  %3476 = shl i64 %3456, 32
  %3477 = ashr exact i64 %3476, 32
  %3478 = sext i32 %3475 to i64
  %3479 = mul nsw i64 %3478, %3477
  %3480 = and i64 %3479, 4294967295
  store i64 %3480, i64* %RSI, align 8, !tbaa !2428
  %3481 = trunc i64 %3479 to i32
  %3482 = and i64 %3479, 4294967295
  store i64 %3482, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %3483 = and i32 %3481, 255
  %3484 = tail call i32 @llvm.ctpop.i32(i32 %3483) #12
  %3485 = trunc i32 %3484 to i8
  %3486 = and i8 %3485, 1
  %3487 = xor i8 %3486, 1
  store i8 %3487, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %3488 = icmp eq i32 %3481, 0
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %96, align 1, !tbaa !2448
  %3490 = lshr i32 %3481, 31
  %3491 = trunc i32 %3490 to i8
  store i8 %3491, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3492 = load i64, i64* %RBP, align 8
  %3493 = add i64 %3492, -72
  %3494 = add i64 %797, 1108
  store i64 %3494, i64* %PC, align 8
  %3495 = inttoptr i64 %3493 to i32*
  %3496 = load i32, i32* %3495, align 4
  %3497 = add i32 %3496, -1
  %3498 = zext i32 %3497 to i64
  store i64 %3498, i64* %RSI, align 8, !tbaa !2428
  %3499 = icmp eq i32 %3496, 0
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %82, align 1, !tbaa !2433
  %3501 = and i32 %3497, 255
  %3502 = tail call i32 @llvm.ctpop.i32(i32 %3501) #12
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  store i8 %3505, i8* %88, align 1, !tbaa !2447
  %3506 = xor i32 %3497, %3496
  %3507 = lshr i32 %3506, 4
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  store i8 %3509, i8* %93, align 1, !tbaa !2451
  %3510 = icmp eq i32 %3497, 0
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %96, align 1, !tbaa !2448
  %3512 = lshr i32 %3497, 31
  %3513 = trunc i32 %3512 to i8
  store i8 %3513, i8* %99, align 1, !tbaa !2449
  %3514 = lshr i32 %3496, 31
  %3515 = xor i32 %3512, %3514
  %3516 = add nuw nsw i32 %3515, %3514
  %3517 = icmp eq i32 %3516, 2
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %105, align 1, !tbaa !2450
  %3519 = add i64 %3492, -40
  %3520 = add i64 %797, 1115
  store i64 %3520, i64* %PC, align 8
  %3521 = inttoptr i64 %3519 to i64*
  %3522 = load i64, i64* %3521, align 8
  store i64 %3522, i64* %RCX, align 8, !tbaa !2428
  %3523 = add i64 %3522, 20
  %3524 = add i64 %797, 1119
  store i64 %3524, i64* %PC, align 8
  %3525 = inttoptr i64 %3523 to i32*
  %3526 = load i32, i32* %3525, align 4
  %3527 = sext i32 %3497 to i64
  %3528 = sext i32 %3526 to i64
  %3529 = mul nsw i64 %3528, %3527
  %3530 = and i64 %3529, 4294967295
  store i64 %3530, i64* %RSI, align 8, !tbaa !2428
  %3531 = trunc i64 %3529 to i32
  %3532 = add i32 %3531, %3481
  %3533 = zext i32 %3532 to i64
  store i64 %3533, i64* %RDX, align 8, !tbaa !2428
  %3534 = icmp ult i32 %3532, %3481
  %3535 = icmp ult i32 %3532, %3531
  %3536 = or i1 %3534, %3535
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %82, align 1, !tbaa !2433
  %3538 = and i32 %3532, 255
  %3539 = tail call i32 @llvm.ctpop.i32(i32 %3538) #12
  %3540 = trunc i32 %3539 to i8
  %3541 = and i8 %3540, 1
  %3542 = xor i8 %3541, 1
  store i8 %3542, i8* %88, align 1, !tbaa !2447
  %3543 = xor i64 %3529, %3479
  %3544 = trunc i64 %3543 to i32
  %3545 = xor i32 %3544, %3532
  %3546 = lshr i32 %3545, 4
  %3547 = trunc i32 %3546 to i8
  %3548 = and i8 %3547, 1
  store i8 %3548, i8* %93, align 1, !tbaa !2451
  %3549 = icmp eq i32 %3532, 0
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %96, align 1, !tbaa !2448
  %3551 = lshr i32 %3532, 31
  %3552 = trunc i32 %3551 to i8
  store i8 %3552, i8* %99, align 1, !tbaa !2449
  %3553 = lshr i32 %3531, 31
  %3554 = xor i32 %3551, %3490
  %3555 = xor i32 %3551, %3553
  %3556 = add nuw nsw i32 %3554, %3555
  %3557 = icmp eq i32 %3556, 2
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %105, align 1, !tbaa !2450
  %3559 = load i64, i64* %RBP, align 8
  %3560 = add i64 %3559, -76
  %3561 = add i64 %797, 1124
  store i64 %3561, i64* %PC, align 8
  %3562 = inttoptr i64 %3560 to i32*
  %3563 = load i32, i32* %3562, align 4
  %3564 = add i32 %3563, 1
  %3565 = zext i32 %3564 to i64
  store i64 %3565, i64* %RSI, align 8, !tbaa !2428
  %3566 = lshr i32 %3564, 31
  %3567 = add i32 %3564, %3532
  %3568 = zext i32 %3567 to i64
  store i64 %3568, i64* %RDX, align 8, !tbaa !2428
  %3569 = icmp ult i32 %3567, %3532
  %3570 = icmp ult i32 %3567, %3564
  %3571 = or i1 %3569, %3570
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %82, align 1, !tbaa !2433
  %3573 = and i32 %3567, 255
  %3574 = tail call i32 @llvm.ctpop.i32(i32 %3573) #12
  %3575 = trunc i32 %3574 to i8
  %3576 = and i8 %3575, 1
  %3577 = xor i8 %3576, 1
  store i8 %3577, i8* %88, align 1, !tbaa !2447
  %3578 = xor i32 %3564, %3532
  %3579 = xor i32 %3578, %3567
  %3580 = lshr i32 %3579, 4
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  store i8 %3582, i8* %93, align 1, !tbaa !2451
  %3583 = icmp eq i32 %3567, 0
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %96, align 1, !tbaa !2448
  %3585 = lshr i32 %3567, 31
  %3586 = trunc i32 %3585 to i8
  store i8 %3586, i8* %99, align 1, !tbaa !2449
  %3587 = xor i32 %3585, %3551
  %3588 = xor i32 %3585, %3566
  %3589 = add nuw nsw i32 %3587, %3588
  %3590 = icmp eq i32 %3589, 2
  %3591 = zext i1 %3590 to i8
  store i8 %3591, i8* %105, align 1, !tbaa !2450
  %3592 = sext i32 %3567 to i64
  store i64 %3592, i64* %RCX, align 8, !tbaa !2428
  %3593 = load i64, i64* %RAX, align 8
  %3594 = shl nsw i64 %3592, 2
  %3595 = add i64 %3593, %3594
  %3596 = add i64 %797, 1137
  store i64 %3596, i64* %PC, align 8
  %3597 = load <2 x float>, <2 x float>* %221, align 1
  %3598 = load <2 x i32>, <2 x i32>* %222, align 1
  %3599 = inttoptr i64 %3595 to float*
  %3600 = load float, float* %3599, align 4
  %3601 = extractelement <2 x float> %3597, i32 0
  %3602 = fsub float %3601, %3600
  store float %3602, float* %213, align 1, !tbaa !2452
  %3603 = bitcast <2 x float> %3597 to <2 x i32>
  %3604 = extractelement <2 x i32> %3603, i32 1
  store i32 %3604, i32* %223, align 1, !tbaa !2452
  %3605 = extractelement <2 x i32> %3598, i32 0
  store i32 %3605, i32* %224, align 1, !tbaa !2452
  %3606 = extractelement <2 x i32> %3598, i32 1
  store i32 %3606, i32* %225, align 1, !tbaa !2452
  %3607 = load i64, i64* %RBP, align 8
  %3608 = add i64 %3607, -40
  %3609 = add i64 %797, 1141
  store i64 %3609, i64* %PC, align 8
  %3610 = inttoptr i64 %3608 to i64*
  %3611 = load i64, i64* %3610, align 8
  store i64 %3611, i64* %RAX, align 8, !tbaa !2428
  %3612 = add i64 %797, 1144
  store i64 %3612, i64* %PC, align 8
  %3613 = inttoptr i64 %3611 to i64*
  %3614 = load i64, i64* %3613, align 8
  store i64 %3614, i64* %RAX, align 8, !tbaa !2428
  %3615 = add i64 %797, 1148
  store i64 %3615, i64* %PC, align 8
  %3616 = load i64, i64* %3610, align 8
  store i64 %3616, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3617 = add i64 %797, 1156
  store i64 %3617, i64* %PC, align 8
  %3618 = load i64, i64* %3610, align 8
  store i64 %3618, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3619 = add i64 %797, 1164
  store i64 %3619, i64* %PC, align 8
  %3620 = load i64, i64* %3610, align 8
  store i64 %3620, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3621 = add i64 %3607, -68
  %3622 = add i64 %797, 1171
  store i64 %3622, i64* %PC, align 8
  %3623 = inttoptr i64 %3621 to i32*
  %3624 = load i32, i32* %3623, align 4
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RSI, align 8, !tbaa !2428
  %3626 = add i64 %797, 1175
  store i64 %3626, i64* %PC, align 8
  %3627 = load i64, i64* %3610, align 8
  store i64 %3627, i64* %RCX, align 8, !tbaa !2428
  %3628 = add i64 %3627, 16
  %3629 = add i64 %797, 1179
  store i64 %3629, i64* %PC, align 8
  %3630 = inttoptr i64 %3628 to i32*
  %3631 = load i32, i32* %3630, align 4
  %3632 = sext i32 %3624 to i64
  %3633 = sext i32 %3631 to i64
  %3634 = mul nsw i64 %3633, %3632
  %3635 = trunc i64 %3634 to i32
  %3636 = and i64 %3634, 4294967295
  store i64 %3636, i64* %RSI, align 8, !tbaa !2428
  %3637 = shl i64 %3634, 32
  %3638 = ashr exact i64 %3637, 32
  %3639 = icmp ne i64 %3638, %3634
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %82, align 1, !tbaa !2433
  %3641 = and i32 %3635, 255
  %3642 = tail call i32 @llvm.ctpop.i32(i32 %3641) #12
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  store i8 %3645, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3646 = lshr i32 %3635, 31
  %3647 = trunc i32 %3646 to i8
  store i8 %3647, i8* %99, align 1, !tbaa !2449
  store i8 %3640, i8* %105, align 1, !tbaa !2450
  %3648 = add i64 %797, 1183
  store i64 %3648, i64* %PC, align 8
  %3649 = load i64, i64* %3610, align 8
  store i64 %3649, i64* %RCX, align 8, !tbaa !2428
  %3650 = add i64 %3649, 20
  %3651 = add i64 %797, 1187
  store i64 %3651, i64* %PC, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = shl i64 %3634, 32
  %3655 = ashr exact i64 %3654, 32
  %3656 = sext i32 %3653 to i64
  %3657 = mul nsw i64 %3656, %3655
  %3658 = and i64 %3657, 4294967295
  store i64 %3658, i64* %RSI, align 8, !tbaa !2428
  %3659 = trunc i64 %3657 to i32
  %3660 = and i64 %3657, 4294967295
  store i64 %3660, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %3661 = and i32 %3659, 255
  %3662 = tail call i32 @llvm.ctpop.i32(i32 %3661) #12
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = xor i8 %3664, 1
  store i8 %3665, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %3666 = icmp eq i32 %3659, 0
  %3667 = zext i1 %3666 to i8
  store i8 %3667, i8* %96, align 1, !tbaa !2448
  %3668 = lshr i32 %3659, 31
  %3669 = trunc i32 %3668 to i8
  store i8 %3669, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3670 = load i64, i64* %RBP, align 8
  %3671 = add i64 %3670, -72
  %3672 = add i64 %797, 1192
  store i64 %3672, i64* %PC, align 8
  %3673 = inttoptr i64 %3671 to i32*
  %3674 = load i32, i32* %3673, align 4
  %3675 = add i32 %3674, 1
  %3676 = zext i32 %3675 to i64
  store i64 %3676, i64* %RSI, align 8, !tbaa !2428
  %3677 = icmp eq i32 %3674, -1
  %3678 = icmp eq i32 %3675, 0
  %3679 = or i1 %3677, %3678
  %3680 = zext i1 %3679 to i8
  store i8 %3680, i8* %82, align 1, !tbaa !2433
  %3681 = and i32 %3675, 255
  %3682 = tail call i32 @llvm.ctpop.i32(i32 %3681) #12
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  %3685 = xor i8 %3684, 1
  store i8 %3685, i8* %88, align 1, !tbaa !2447
  %3686 = xor i32 %3675, %3674
  %3687 = lshr i32 %3686, 4
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  store i8 %3689, i8* %93, align 1, !tbaa !2451
  %3690 = zext i1 %3678 to i8
  store i8 %3690, i8* %96, align 1, !tbaa !2448
  %3691 = lshr i32 %3675, 31
  %3692 = trunc i32 %3691 to i8
  store i8 %3692, i8* %99, align 1, !tbaa !2449
  %3693 = lshr i32 %3674, 31
  %3694 = xor i32 %3691, %3693
  %3695 = add nuw nsw i32 %3694, %3691
  %3696 = icmp eq i32 %3695, 2
  %3697 = zext i1 %3696 to i8
  store i8 %3697, i8* %105, align 1, !tbaa !2450
  %3698 = add i64 %3670, -40
  %3699 = add i64 %797, 1199
  store i64 %3699, i64* %PC, align 8
  %3700 = inttoptr i64 %3698 to i64*
  %3701 = load i64, i64* %3700, align 8
  store i64 %3701, i64* %RCX, align 8, !tbaa !2428
  %3702 = add i64 %3701, 20
  %3703 = add i64 %797, 1203
  store i64 %3703, i64* %PC, align 8
  %3704 = inttoptr i64 %3702 to i32*
  %3705 = load i32, i32* %3704, align 4
  %3706 = sext i32 %3675 to i64
  %3707 = sext i32 %3705 to i64
  %3708 = mul nsw i64 %3707, %3706
  %3709 = and i64 %3708, 4294967295
  store i64 %3709, i64* %RSI, align 8, !tbaa !2428
  %3710 = trunc i64 %3708 to i32
  %3711 = add i32 %3710, %3659
  %3712 = zext i32 %3711 to i64
  store i64 %3712, i64* %RDX, align 8, !tbaa !2428
  %3713 = icmp ult i32 %3711, %3659
  %3714 = icmp ult i32 %3711, %3710
  %3715 = or i1 %3713, %3714
  %3716 = zext i1 %3715 to i8
  store i8 %3716, i8* %82, align 1, !tbaa !2433
  %3717 = and i32 %3711, 255
  %3718 = tail call i32 @llvm.ctpop.i32(i32 %3717) #12
  %3719 = trunc i32 %3718 to i8
  %3720 = and i8 %3719, 1
  %3721 = xor i8 %3720, 1
  store i8 %3721, i8* %88, align 1, !tbaa !2447
  %3722 = xor i64 %3708, %3657
  %3723 = trunc i64 %3722 to i32
  %3724 = xor i32 %3723, %3711
  %3725 = lshr i32 %3724, 4
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  store i8 %3727, i8* %93, align 1, !tbaa !2451
  %3728 = icmp eq i32 %3711, 0
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %96, align 1, !tbaa !2448
  %3730 = lshr i32 %3711, 31
  %3731 = trunc i32 %3730 to i8
  store i8 %3731, i8* %99, align 1, !tbaa !2449
  %3732 = lshr i32 %3710, 31
  %3733 = xor i32 %3730, %3668
  %3734 = xor i32 %3730, %3732
  %3735 = add nuw nsw i32 %3733, %3734
  %3736 = icmp eq i32 %3735, 2
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %105, align 1, !tbaa !2450
  %3738 = load i64, i64* %RBP, align 8
  %3739 = add i64 %3738, -76
  %3740 = add i64 %797, 1208
  store i64 %3740, i64* %PC, align 8
  %3741 = inttoptr i64 %3739 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = add i32 %3742, -1
  %3744 = zext i32 %3743 to i64
  store i64 %3744, i64* %RSI, align 8, !tbaa !2428
  %3745 = lshr i32 %3743, 31
  %3746 = add i32 %3743, %3711
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RDX, align 8, !tbaa !2428
  %3748 = icmp ult i32 %3746, %3711
  %3749 = icmp ult i32 %3746, %3743
  %3750 = or i1 %3748, %3749
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %82, align 1, !tbaa !2433
  %3752 = and i32 %3746, 255
  %3753 = tail call i32 @llvm.ctpop.i32(i32 %3752) #12
  %3754 = trunc i32 %3753 to i8
  %3755 = and i8 %3754, 1
  %3756 = xor i8 %3755, 1
  store i8 %3756, i8* %88, align 1, !tbaa !2447
  %3757 = xor i32 %3743, %3711
  %3758 = xor i32 %3757, %3746
  %3759 = lshr i32 %3758, 4
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  store i8 %3761, i8* %93, align 1, !tbaa !2451
  %3762 = icmp eq i32 %3746, 0
  %3763 = zext i1 %3762 to i8
  store i8 %3763, i8* %96, align 1, !tbaa !2448
  %3764 = lshr i32 %3746, 31
  %3765 = trunc i32 %3764 to i8
  store i8 %3765, i8* %99, align 1, !tbaa !2449
  %3766 = xor i32 %3764, %3730
  %3767 = xor i32 %3764, %3745
  %3768 = add nuw nsw i32 %3766, %3767
  %3769 = icmp eq i32 %3768, 2
  %3770 = zext i1 %3769 to i8
  store i8 %3770, i8* %105, align 1, !tbaa !2450
  %3771 = sext i32 %3746 to i64
  store i64 %3771, i64* %RCX, align 8, !tbaa !2428
  %3772 = load i64, i64* %RAX, align 8
  %3773 = shl nsw i64 %3771, 2
  %3774 = add i64 %3772, %3773
  %3775 = add i64 %797, 1221
  store i64 %3775, i64* %PC, align 8
  %3776 = load <2 x float>, <2 x float>* %221, align 1
  %3777 = load <2 x i32>, <2 x i32>* %222, align 1
  %3778 = inttoptr i64 %3774 to float*
  %3779 = load float, float* %3778, align 4
  %3780 = extractelement <2 x float> %3776, i32 0
  %3781 = fsub float %3780, %3779
  store float %3781, float* %213, align 1, !tbaa !2452
  %3782 = bitcast <2 x float> %3776 to <2 x i32>
  %3783 = extractelement <2 x i32> %3782, i32 1
  store i32 %3783, i32* %223, align 1, !tbaa !2452
  %3784 = extractelement <2 x i32> %3777, i32 0
  store i32 %3784, i32* %224, align 1, !tbaa !2452
  %3785 = extractelement <2 x i32> %3777, i32 1
  store i32 %3785, i32* %225, align 1, !tbaa !2452
  %3786 = load i64, i64* %RBP, align 8
  %3787 = add i64 %3786, -40
  %3788 = add i64 %797, 1225
  store i64 %3788, i64* %PC, align 8
  %3789 = inttoptr i64 %3787 to i64*
  %3790 = load i64, i64* %3789, align 8
  store i64 %3790, i64* %RAX, align 8, !tbaa !2428
  %3791 = add i64 %797, 1228
  store i64 %3791, i64* %PC, align 8
  %3792 = inttoptr i64 %3790 to i64*
  %3793 = load i64, i64* %3792, align 8
  store i64 %3793, i64* %RAX, align 8, !tbaa !2428
  %3794 = add i64 %797, 1232
  store i64 %3794, i64* %PC, align 8
  %3795 = load i64, i64* %3789, align 8
  store i64 %3795, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3796 = add i64 %797, 1240
  store i64 %3796, i64* %PC, align 8
  %3797 = load i64, i64* %3789, align 8
  store i64 %3797, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3798 = add i64 %797, 1248
  store i64 %3798, i64* %PC, align 8
  %3799 = load i64, i64* %3789, align 8
  store i64 %3799, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3800 = add i64 %3786, -68
  %3801 = add i64 %797, 1255
  store i64 %3801, i64* %PC, align 8
  %3802 = inttoptr i64 %3800 to i32*
  %3803 = load i32, i32* %3802, align 4
  %3804 = zext i32 %3803 to i64
  store i64 %3804, i64* %RSI, align 8, !tbaa !2428
  %3805 = add i64 %797, 1259
  store i64 %3805, i64* %PC, align 8
  %3806 = load i64, i64* %3789, align 8
  store i64 %3806, i64* %RCX, align 8, !tbaa !2428
  %3807 = add i64 %3806, 16
  %3808 = add i64 %797, 1263
  store i64 %3808, i64* %PC, align 8
  %3809 = inttoptr i64 %3807 to i32*
  %3810 = load i32, i32* %3809, align 4
  %3811 = sext i32 %3803 to i64
  %3812 = sext i32 %3810 to i64
  %3813 = mul nsw i64 %3812, %3811
  %3814 = trunc i64 %3813 to i32
  %3815 = and i64 %3813, 4294967295
  store i64 %3815, i64* %RSI, align 8, !tbaa !2428
  %3816 = shl i64 %3813, 32
  %3817 = ashr exact i64 %3816, 32
  %3818 = icmp ne i64 %3817, %3813
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %82, align 1, !tbaa !2433
  %3820 = and i32 %3814, 255
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820) #12
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %3825 = lshr i32 %3814, 31
  %3826 = trunc i32 %3825 to i8
  store i8 %3826, i8* %99, align 1, !tbaa !2449
  store i8 %3819, i8* %105, align 1, !tbaa !2450
  %3827 = add i64 %797, 1267
  store i64 %3827, i64* %PC, align 8
  %3828 = load i64, i64* %3789, align 8
  store i64 %3828, i64* %RCX, align 8, !tbaa !2428
  %3829 = add i64 %3828, 20
  %3830 = add i64 %797, 1271
  store i64 %3830, i64* %PC, align 8
  %3831 = inttoptr i64 %3829 to i32*
  %3832 = load i32, i32* %3831, align 4
  %3833 = shl i64 %3813, 32
  %3834 = ashr exact i64 %3833, 32
  %3835 = sext i32 %3832 to i64
  %3836 = mul nsw i64 %3835, %3834
  %3837 = and i64 %3836, 4294967295
  store i64 %3837, i64* %RSI, align 8, !tbaa !2428
  %3838 = trunc i64 %3836 to i32
  %3839 = and i64 %3836, 4294967295
  store i64 %3839, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %3840 = and i32 %3838, 255
  %3841 = tail call i32 @llvm.ctpop.i32(i32 %3840) #12
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  store i8 %3844, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %3845 = icmp eq i32 %3838, 0
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %96, align 1, !tbaa !2448
  %3847 = lshr i32 %3838, 31
  %3848 = trunc i32 %3847 to i8
  store i8 %3848, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %3849 = load i64, i64* %RBP, align 8
  %3850 = add i64 %3849, -72
  %3851 = add i64 %797, 1276
  store i64 %3851, i64* %PC, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = add i32 %3853, -1
  %3855 = zext i32 %3854 to i64
  store i64 %3855, i64* %RSI, align 8, !tbaa !2428
  %3856 = icmp eq i32 %3853, 0
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %82, align 1, !tbaa !2433
  %3858 = and i32 %3854, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858) #12
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %88, align 1, !tbaa !2447
  %3863 = xor i32 %3854, %3853
  %3864 = lshr i32 %3863, 4
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  store i8 %3866, i8* %93, align 1, !tbaa !2451
  %3867 = icmp eq i32 %3854, 0
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %96, align 1, !tbaa !2448
  %3869 = lshr i32 %3854, 31
  %3870 = trunc i32 %3869 to i8
  store i8 %3870, i8* %99, align 1, !tbaa !2449
  %3871 = lshr i32 %3853, 31
  %3872 = xor i32 %3869, %3871
  %3873 = add nuw nsw i32 %3872, %3871
  %3874 = icmp eq i32 %3873, 2
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %105, align 1, !tbaa !2450
  %3876 = add i64 %3849, -40
  %3877 = add i64 %797, 1283
  store i64 %3877, i64* %PC, align 8
  %3878 = inttoptr i64 %3876 to i64*
  %3879 = load i64, i64* %3878, align 8
  store i64 %3879, i64* %RCX, align 8, !tbaa !2428
  %3880 = add i64 %3879, 20
  %3881 = add i64 %797, 1287
  store i64 %3881, i64* %PC, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3854 to i64
  %3885 = sext i32 %3883 to i64
  %3886 = mul nsw i64 %3885, %3884
  %3887 = and i64 %3886, 4294967295
  store i64 %3887, i64* %RSI, align 8, !tbaa !2428
  %3888 = trunc i64 %3886 to i32
  %3889 = add i32 %3888, %3838
  %3890 = zext i32 %3889 to i64
  store i64 %3890, i64* %RDX, align 8, !tbaa !2428
  %3891 = icmp ult i32 %3889, %3838
  %3892 = icmp ult i32 %3889, %3888
  %3893 = or i1 %3891, %3892
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %82, align 1, !tbaa !2433
  %3895 = and i32 %3889, 255
  %3896 = tail call i32 @llvm.ctpop.i32(i32 %3895) #12
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  store i8 %3899, i8* %88, align 1, !tbaa !2447
  %3900 = xor i64 %3886, %3836
  %3901 = trunc i64 %3900 to i32
  %3902 = xor i32 %3901, %3889
  %3903 = lshr i32 %3902, 4
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  store i8 %3905, i8* %93, align 1, !tbaa !2451
  %3906 = icmp eq i32 %3889, 0
  %3907 = zext i1 %3906 to i8
  store i8 %3907, i8* %96, align 1, !tbaa !2448
  %3908 = lshr i32 %3889, 31
  %3909 = trunc i32 %3908 to i8
  store i8 %3909, i8* %99, align 1, !tbaa !2449
  %3910 = lshr i32 %3888, 31
  %3911 = xor i32 %3908, %3847
  %3912 = xor i32 %3908, %3910
  %3913 = add nuw nsw i32 %3911, %3912
  %3914 = icmp eq i32 %3913, 2
  %3915 = zext i1 %3914 to i8
  store i8 %3915, i8* %105, align 1, !tbaa !2450
  %3916 = load i64, i64* %RBP, align 8
  %3917 = add i64 %3916, -76
  %3918 = add i64 %797, 1292
  store i64 %3918, i64* %PC, align 8
  %3919 = inttoptr i64 %3917 to i32*
  %3920 = load i32, i32* %3919, align 4
  %3921 = add i32 %3920, -1
  %3922 = zext i32 %3921 to i64
  store i64 %3922, i64* %RSI, align 8, !tbaa !2428
  %3923 = lshr i32 %3921, 31
  %3924 = add i32 %3921, %3889
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %RDX, align 8, !tbaa !2428
  %3926 = icmp ult i32 %3924, %3889
  %3927 = icmp ult i32 %3924, %3921
  %3928 = or i1 %3926, %3927
  %3929 = zext i1 %3928 to i8
  store i8 %3929, i8* %82, align 1, !tbaa !2433
  %3930 = and i32 %3924, 255
  %3931 = tail call i32 @llvm.ctpop.i32(i32 %3930) #12
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = xor i8 %3933, 1
  store i8 %3934, i8* %88, align 1, !tbaa !2447
  %3935 = xor i32 %3921, %3889
  %3936 = xor i32 %3935, %3924
  %3937 = lshr i32 %3936, 4
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  store i8 %3939, i8* %93, align 1, !tbaa !2451
  %3940 = icmp eq i32 %3924, 0
  %3941 = zext i1 %3940 to i8
  store i8 %3941, i8* %96, align 1, !tbaa !2448
  %3942 = lshr i32 %3924, 31
  %3943 = trunc i32 %3942 to i8
  store i8 %3943, i8* %99, align 1, !tbaa !2449
  %3944 = xor i32 %3942, %3908
  %3945 = xor i32 %3942, %3923
  %3946 = add nuw nsw i32 %3944, %3945
  %3947 = icmp eq i32 %3946, 2
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %105, align 1, !tbaa !2450
  %3949 = sext i32 %3924 to i64
  store i64 %3949, i64* %RCX, align 8, !tbaa !2428
  %3950 = load i64, i64* %RAX, align 8
  %3951 = shl nsw i64 %3949, 2
  %3952 = add i64 %3950, %3951
  %3953 = add i64 %797, 1305
  store i64 %3953, i64* %PC, align 8
  %3954 = load <2 x float>, <2 x float>* %221, align 1
  %3955 = load <2 x i32>, <2 x i32>* %222, align 1
  %3956 = inttoptr i64 %3952 to float*
  %3957 = load float, float* %3956, align 4
  %3958 = extractelement <2 x float> %3954, i32 0
  %3959 = fadd float %3958, %3957
  store float %3959, float* %213, align 1, !tbaa !2452
  %3960 = bitcast <2 x float> %3954 to <2 x i32>
  %3961 = extractelement <2 x i32> %3960, i32 1
  store i32 %3961, i32* %223, align 1, !tbaa !2452
  %3962 = extractelement <2 x i32> %3955, i32 0
  store i32 %3962, i32* %224, align 1, !tbaa !2452
  %3963 = extractelement <2 x i32> %3955, i32 1
  store i32 %3963, i32* %225, align 1, !tbaa !2452
  %3964 = load <2 x float>, <2 x float>* %207, align 1
  %3965 = load <2 x i32>, <2 x i32>* %208, align 1
  %3966 = load <2 x float>, <2 x float>* %221, align 1
  %3967 = extractelement <2 x float> %3964, i32 0
  %3968 = extractelement <2 x float> %3966, i32 0
  %3969 = fmul float %3967, %3968
  store float %3969, float* %199, align 1, !tbaa !2452
  %3970 = bitcast <2 x float> %3964 to <2 x i32>
  %3971 = extractelement <2 x i32> %3970, i32 1
  store i32 %3971, i32* %209, align 1, !tbaa !2452
  %3972 = extractelement <2 x i32> %3965, i32 0
  store i32 %3972, i32* %210, align 1, !tbaa !2452
  %3973 = extractelement <2 x i32> %3965, i32 1
  store i32 %3973, i32* %211, align 1, !tbaa !2452
  %3974 = load <2 x float>, <2 x float>* %192, align 1
  %3975 = load <2 x i32>, <2 x i32>* %197, align 1
  %3976 = load <2 x float>, <2 x float>* %207, align 1
  %3977 = extractelement <2 x float> %3974, i32 0
  %3978 = extractelement <2 x float> %3976, i32 0
  %3979 = fadd float %3977, %3978
  store float %3979, float* %193, align 1, !tbaa !2452
  %3980 = bitcast <2 x float> %3974 to <2 x i32>
  %3981 = extractelement <2 x i32> %3980, i32 1
  store i32 %3981, i32* %188, align 1, !tbaa !2452
  %3982 = extractelement <2 x i32> %3975, i32 0
  store i32 %3982, i32* %189, align 1, !tbaa !2452
  %3983 = extractelement <2 x i32> %3975, i32 1
  store i32 %3983, i32* %191, align 1, !tbaa !2452
  %3984 = load i64, i64* %RBP, align 8
  %3985 = add i64 %3984, -24
  %3986 = add i64 %797, 1317
  store i64 %3986, i64* %PC, align 8
  %3987 = inttoptr i64 %3985 to i64*
  %3988 = load i64, i64* %3987, align 8
  store i64 %3988, i64* %RAX, align 8, !tbaa !2428
  %3989 = add i64 %797, 1320
  store i64 %3989, i64* %PC, align 8
  %3990 = inttoptr i64 %3988 to i64*
  %3991 = load i64, i64* %3990, align 8
  store i64 %3991, i64* %RAX, align 8, !tbaa !2428
  %3992 = add i64 %797, 1324
  store i64 %3992, i64* %PC, align 8
  %3993 = load i64, i64* %3987, align 8
  store i64 %3993, i64* %RCX, align 8, !tbaa !2428
  %3994 = add i64 %3993, 12
  %3995 = add i64 %797, 1327
  store i64 %3995, i64* %PC, align 8
  %3996 = inttoptr i64 %3994 to i32*
  %3997 = load i32, i32* %3996, align 4
  %3998 = shl i32 %3997, 1
  %3999 = icmp slt i32 %3997, 0
  %4000 = icmp slt i32 %3998, 0
  %4001 = xor i1 %3999, %4000
  %4002 = zext i32 %3998 to i64
  store i64 %4002, i64* %RDX, align 8, !tbaa !2428
  %.lobit7 = lshr i32 %3997, 31
  %4003 = trunc i32 %.lobit7 to i8
  store i8 %4003, i8* %82, align 1, !tbaa !2432
  %4004 = and i32 %3998, 254
  %4005 = tail call i32 @llvm.ctpop.i32(i32 %4004) #12
  %4006 = trunc i32 %4005 to i8
  %4007 = and i8 %4006, 1
  %4008 = xor i8 %4007, 1
  store i8 %4008, i8* %88, align 1, !tbaa !2432
  store i8 0, i8* %93, align 1, !tbaa !2432
  %4009 = icmp eq i32 %3998, 0
  %4010 = zext i1 %4009 to i8
  store i8 %4010, i8* %96, align 1, !tbaa !2432
  %4011 = lshr i32 %3997, 30
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  store i8 %4013, i8* %99, align 1, !tbaa !2432
  %4014 = zext i1 %4001 to i8
  store i8 %4014, i8* %105, align 1, !tbaa !2432
  %4015 = add i64 %797, 1334
  store i64 %4015, i64* %PC, align 8
  %4016 = load i64, i64* %3987, align 8
  store i64 %4016, i64* %RCX, align 8, !tbaa !2428
  %4017 = add i64 %4016, 16
  %4018 = add i64 %797, 1338
  store i64 %4018, i64* %PC, align 8
  %4019 = inttoptr i64 %4017 to i32*
  %4020 = load i32, i32* %4019, align 4
  %4021 = sext i32 %3998 to i64
  %4022 = sext i32 %4020 to i64
  %4023 = mul nsw i64 %4022, %4021
  %4024 = trunc i64 %4023 to i32
  %4025 = and i64 %4023, 4294967294
  store i64 %4025, i64* %RDX, align 8, !tbaa !2428
  %4026 = shl i64 %4023, 32
  %4027 = ashr exact i64 %4026, 32
  %4028 = icmp ne i64 %4027, %4023
  %4029 = zext i1 %4028 to i8
  store i8 %4029, i8* %82, align 1, !tbaa !2433
  %4030 = and i32 %4024, 254
  %4031 = tail call i32 @llvm.ctpop.i32(i32 %4030) #12
  %4032 = trunc i32 %4031 to i8
  %4033 = and i8 %4032, 1
  %4034 = xor i8 %4033, 1
  store i8 %4034, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4035 = lshr i32 %4024, 31
  %4036 = trunc i32 %4035 to i8
  store i8 %4036, i8* %99, align 1, !tbaa !2449
  store i8 %4029, i8* %105, align 1, !tbaa !2450
  %4037 = add i64 %797, 1342
  store i64 %4037, i64* %PC, align 8
  %4038 = load i64, i64* %3987, align 8
  store i64 %4038, i64* %RCX, align 8, !tbaa !2428
  %4039 = add i64 %4038, 20
  %4040 = add i64 %797, 1346
  store i64 %4040, i64* %PC, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = shl i64 %4023, 32
  %4044 = ashr exact i64 %4043, 32
  %4045 = sext i32 %4042 to i64
  %4046 = mul nsw i64 %4045, %4044
  %4047 = trunc i64 %4046 to i32
  %4048 = and i64 %4046, 4294967295
  store i64 %4048, i64* %RDX, align 8, !tbaa !2428
  %4049 = shl i64 %4046, 32
  %4050 = ashr exact i64 %4049, 32
  %4051 = icmp ne i64 %4050, %4046
  %4052 = zext i1 %4051 to i8
  store i8 %4052, i8* %82, align 1, !tbaa !2433
  %4053 = and i32 %4047, 255
  %4054 = tail call i32 @llvm.ctpop.i32(i32 %4053) #12
  %4055 = trunc i32 %4054 to i8
  %4056 = and i8 %4055, 1
  %4057 = xor i8 %4056, 1
  store i8 %4057, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4058 = lshr i32 %4047, 31
  %4059 = trunc i32 %4058 to i8
  store i8 %4059, i8* %99, align 1, !tbaa !2449
  store i8 %4052, i8* %105, align 1, !tbaa !2450
  %4060 = load i64, i64* %RBP, align 8
  %4061 = add i64 %4060, -68
  %4062 = add i64 %797, 1349
  store i64 %4062, i64* %PC, align 8
  %4063 = inttoptr i64 %4061 to i32*
  %4064 = load i32, i32* %4063, align 4
  %4065 = zext i32 %4064 to i64
  store i64 %4065, i64* %RSI, align 8, !tbaa !2428
  %4066 = add i64 %4060, -24
  %4067 = add i64 %797, 1353
  store i64 %4067, i64* %PC, align 8
  %4068 = inttoptr i64 %4066 to i64*
  %4069 = load i64, i64* %4068, align 8
  store i64 %4069, i64* %RCX, align 8, !tbaa !2428
  %4070 = add i64 %4069, 16
  %4071 = add i64 %797, 1357
  store i64 %4071, i64* %PC, align 8
  %4072 = inttoptr i64 %4070 to i32*
  %4073 = load i32, i32* %4072, align 4
  %4074 = sext i32 %4064 to i64
  %4075 = sext i32 %4073 to i64
  %4076 = mul nsw i64 %4075, %4074
  %4077 = trunc i64 %4076 to i32
  %4078 = and i64 %4076, 4294967295
  store i64 %4078, i64* %RSI, align 8, !tbaa !2428
  %4079 = shl i64 %4076, 32
  %4080 = ashr exact i64 %4079, 32
  %4081 = icmp ne i64 %4080, %4076
  %4082 = zext i1 %4081 to i8
  store i8 %4082, i8* %82, align 1, !tbaa !2433
  %4083 = and i32 %4077, 255
  %4084 = tail call i32 @llvm.ctpop.i32(i32 %4083) #12
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  store i8 %4087, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4088 = lshr i32 %4077, 31
  %4089 = trunc i32 %4088 to i8
  store i8 %4089, i8* %99, align 1, !tbaa !2449
  store i8 %4082, i8* %105, align 1, !tbaa !2450
  %4090 = add i64 %797, 1361
  store i64 %4090, i64* %PC, align 8
  %4091 = load i64, i64* %4068, align 8
  store i64 %4091, i64* %RCX, align 8, !tbaa !2428
  %4092 = add i64 %4091, 20
  %4093 = add i64 %797, 1365
  store i64 %4093, i64* %PC, align 8
  %4094 = inttoptr i64 %4092 to i32*
  %4095 = load i32, i32* %4094, align 4
  %4096 = shl i64 %4076, 32
  %4097 = ashr exact i64 %4096, 32
  %4098 = sext i32 %4095 to i64
  %4099 = mul nsw i64 %4098, %4097
  %4100 = and i64 %4099, 4294967295
  store i64 %4100, i64* %RSI, align 8, !tbaa !2428
  %4101 = trunc i64 %4099 to i32
  %4102 = trunc i64 %4046 to i32
  %4103 = add i32 %4101, %4102
  %4104 = zext i32 %4103 to i64
  store i64 %4104, i64* %RDX, align 8, !tbaa !2428
  %4105 = icmp ult i32 %4103, %4102
  %4106 = icmp ult i32 %4103, %4101
  %4107 = or i1 %4105, %4106
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %82, align 1, !tbaa !2433
  %4109 = and i32 %4103, 255
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109) #12
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %88, align 1, !tbaa !2447
  %4114 = xor i64 %4099, %4046
  %4115 = trunc i64 %4114 to i32
  %4116 = xor i32 %4115, %4103
  %4117 = lshr i32 %4116, 4
  %4118 = trunc i32 %4117 to i8
  %4119 = and i8 %4118, 1
  store i8 %4119, i8* %93, align 1, !tbaa !2451
  %4120 = icmp eq i32 %4103, 0
  %4121 = zext i1 %4120 to i8
  store i8 %4121, i8* %96, align 1, !tbaa !2448
  %4122 = lshr i32 %4103, 31
  %4123 = trunc i32 %4122 to i8
  store i8 %4123, i8* %99, align 1, !tbaa !2449
  %4124 = lshr i32 %4102, 31
  %4125 = lshr i32 %4101, 31
  %4126 = xor i32 %4122, %4124
  %4127 = xor i32 %4122, %4125
  %4128 = add nuw nsw i32 %4126, %4127
  %4129 = icmp eq i32 %4128, 2
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %105, align 1, !tbaa !2450
  %4131 = load i64, i64* %RBP, align 8
  %4132 = add i64 %4131, -72
  %4133 = add i64 %797, 1370
  store i64 %4133, i64* %PC, align 8
  %4134 = inttoptr i64 %4132 to i32*
  %4135 = load i32, i32* %4134, align 4
  %4136 = zext i32 %4135 to i64
  store i64 %4136, i64* %RSI, align 8, !tbaa !2428
  %4137 = add i64 %4131, -24
  %4138 = add i64 %797, 1374
  store i64 %4138, i64* %PC, align 8
  %4139 = inttoptr i64 %4137 to i64*
  %4140 = load i64, i64* %4139, align 8
  store i64 %4140, i64* %RCX, align 8, !tbaa !2428
  %4141 = add i64 %4140, 20
  %4142 = add i64 %797, 1378
  store i64 %4142, i64* %PC, align 8
  %4143 = inttoptr i64 %4141 to i32*
  %4144 = load i32, i32* %4143, align 4
  %4145 = sext i32 %4135 to i64
  %4146 = sext i32 %4144 to i64
  %4147 = mul nsw i64 %4146, %4145
  %4148 = and i64 %4147, 4294967295
  store i64 %4148, i64* %RSI, align 8, !tbaa !2428
  %4149 = trunc i64 %4147 to i32
  %4150 = add i32 %4149, %4103
  %4151 = zext i32 %4150 to i64
  store i64 %4151, i64* %RDX, align 8, !tbaa !2428
  %4152 = icmp ult i32 %4150, %4103
  %4153 = icmp ult i32 %4150, %4149
  %4154 = or i1 %4152, %4153
  %4155 = zext i1 %4154 to i8
  store i8 %4155, i8* %82, align 1, !tbaa !2433
  %4156 = and i32 %4150, 255
  %4157 = tail call i32 @llvm.ctpop.i32(i32 %4156) #12
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  store i8 %4160, i8* %88, align 1, !tbaa !2447
  %4161 = xor i64 %4147, %4104
  %4162 = trunc i64 %4161 to i32
  %4163 = xor i32 %4162, %4150
  %4164 = lshr i32 %4163, 4
  %4165 = trunc i32 %4164 to i8
  %4166 = and i8 %4165, 1
  store i8 %4166, i8* %93, align 1, !tbaa !2451
  %4167 = icmp eq i32 %4150, 0
  %4168 = zext i1 %4167 to i8
  store i8 %4168, i8* %96, align 1, !tbaa !2448
  %4169 = lshr i32 %4150, 31
  %4170 = trunc i32 %4169 to i8
  store i8 %4170, i8* %99, align 1, !tbaa !2449
  %4171 = lshr i32 %4149, 31
  %4172 = xor i32 %4169, %4122
  %4173 = xor i32 %4169, %4171
  %4174 = add nuw nsw i32 %4172, %4173
  %4175 = icmp eq i32 %4174, 2
  %4176 = zext i1 %4175 to i8
  store i8 %4176, i8* %105, align 1, !tbaa !2450
  %4177 = add i64 %4131, -76
  %4178 = add i64 %797, 1383
  store i64 %4178, i64* %PC, align 8
  %4179 = inttoptr i64 %4177 to i32*
  %4180 = load i32, i32* %4179, align 4
  %4181 = add i32 %4180, %4150
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RDX, align 8, !tbaa !2428
  %4183 = icmp ult i32 %4181, %4150
  %4184 = icmp ult i32 %4181, %4180
  %4185 = or i1 %4183, %4184
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %82, align 1, !tbaa !2433
  %4187 = and i32 %4181, 255
  %4188 = tail call i32 @llvm.ctpop.i32(i32 %4187) #12
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  store i8 %4191, i8* %88, align 1, !tbaa !2447
  %4192 = xor i32 %4180, %4150
  %4193 = xor i32 %4192, %4181
  %4194 = lshr i32 %4193, 4
  %4195 = trunc i32 %4194 to i8
  %4196 = and i8 %4195, 1
  store i8 %4196, i8* %93, align 1, !tbaa !2451
  %4197 = icmp eq i32 %4181, 0
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %96, align 1, !tbaa !2448
  %4199 = lshr i32 %4181, 31
  %4200 = trunc i32 %4199 to i8
  store i8 %4200, i8* %99, align 1, !tbaa !2449
  %4201 = lshr i32 %4180, 31
  %4202 = xor i32 %4199, %4169
  %4203 = xor i32 %4199, %4201
  %4204 = add nuw nsw i32 %4202, %4203
  %4205 = icmp eq i32 %4204, 2
  %4206 = zext i1 %4205 to i8
  store i8 %4206, i8* %105, align 1, !tbaa !2450
  %4207 = sext i32 %4181 to i64
  store i64 %4207, i64* %RCX, align 8, !tbaa !2428
  %4208 = load i64, i64* %RAX, align 8
  %4209 = shl nsw i64 %4207, 2
  %4210 = add i64 %4208, %4209
  %4211 = add i64 %797, 1391
  store i64 %4211, i64* %PC, align 8
  %4212 = inttoptr i64 %4210 to i32*
  %4213 = load i32, i32* %4212, align 4
  store i32 %4213, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %4214 = load i64, i64* %RBP, align 8
  %4215 = add i64 %4214, -40
  %4216 = add i64 %797, 1395
  store i64 %4216, i64* %PC, align 8
  %4217 = inttoptr i64 %4215 to i64*
  %4218 = load i64, i64* %4217, align 8
  store i64 %4218, i64* %RAX, align 8, !tbaa !2428
  %4219 = add i64 %797, 1398
  store i64 %4219, i64* %PC, align 8
  %4220 = inttoptr i64 %4218 to i64*
  %4221 = load i64, i64* %4220, align 8
  store i64 %4221, i64* %RAX, align 8, !tbaa !2428
  %4222 = add i64 %797, 1402
  store i64 %4222, i64* %PC, align 8
  %4223 = load i64, i64* %4217, align 8
  store i64 %4223, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4224 = add i64 %797, 1410
  store i64 %4224, i64* %PC, align 8
  %4225 = load i64, i64* %4217, align 8
  store i64 %4225, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4226 = add i64 %797, 1418
  store i64 %4226, i64* %PC, align 8
  %4227 = load i64, i64* %4217, align 8
  store i64 %4227, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4228 = add i64 %4214, -68
  %4229 = add i64 %797, 1425
  store i64 %4229, i64* %PC, align 8
  %4230 = inttoptr i64 %4228 to i32*
  %4231 = load i32, i32* %4230, align 4
  %4232 = add i32 %4231, 1
  %4233 = zext i32 %4232 to i64
  store i64 %4233, i64* %RSI, align 8, !tbaa !2428
  %4234 = icmp eq i32 %4231, -1
  %4235 = icmp eq i32 %4232, 0
  %4236 = or i1 %4234, %4235
  %4237 = zext i1 %4236 to i8
  store i8 %4237, i8* %82, align 1, !tbaa !2433
  %4238 = and i32 %4232, 255
  %4239 = tail call i32 @llvm.ctpop.i32(i32 %4238) #12
  %4240 = trunc i32 %4239 to i8
  %4241 = and i8 %4240, 1
  %4242 = xor i8 %4241, 1
  store i8 %4242, i8* %88, align 1, !tbaa !2447
  %4243 = xor i32 %4232, %4231
  %4244 = lshr i32 %4243, 4
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  store i8 %4246, i8* %93, align 1, !tbaa !2451
  %4247 = zext i1 %4235 to i8
  store i8 %4247, i8* %96, align 1, !tbaa !2448
  %4248 = lshr i32 %4232, 31
  %4249 = trunc i32 %4248 to i8
  store i8 %4249, i8* %99, align 1, !tbaa !2449
  %4250 = lshr i32 %4231, 31
  %4251 = xor i32 %4248, %4250
  %4252 = add nuw nsw i32 %4251, %4248
  %4253 = icmp eq i32 %4252, 2
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %105, align 1, !tbaa !2450
  %4255 = add i64 %797, 1432
  store i64 %4255, i64* %PC, align 8
  %4256 = load i64, i64* %4217, align 8
  store i64 %4256, i64* %RCX, align 8, !tbaa !2428
  %4257 = add i64 %4256, 16
  %4258 = add i64 %797, 1436
  store i64 %4258, i64* %PC, align 8
  %4259 = inttoptr i64 %4257 to i32*
  %4260 = load i32, i32* %4259, align 4
  %4261 = sext i32 %4232 to i64
  %4262 = sext i32 %4260 to i64
  %4263 = mul nsw i64 %4262, %4261
  %4264 = trunc i64 %4263 to i32
  %4265 = and i64 %4263, 4294967295
  store i64 %4265, i64* %RSI, align 8, !tbaa !2428
  %4266 = shl i64 %4263, 32
  %4267 = ashr exact i64 %4266, 32
  %4268 = icmp ne i64 %4267, %4263
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %82, align 1, !tbaa !2433
  %4270 = and i32 %4264, 255
  %4271 = tail call i32 @llvm.ctpop.i32(i32 %4270) #12
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = xor i8 %4273, 1
  store i8 %4274, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4275 = lshr i32 %4264, 31
  %4276 = trunc i32 %4275 to i8
  store i8 %4276, i8* %99, align 1, !tbaa !2449
  store i8 %4269, i8* %105, align 1, !tbaa !2450
  %4277 = load i64, i64* %RBP, align 8
  %4278 = add i64 %4277, -40
  %4279 = add i64 %797, 1440
  store i64 %4279, i64* %PC, align 8
  %4280 = inttoptr i64 %4278 to i64*
  %4281 = load i64, i64* %4280, align 8
  store i64 %4281, i64* %RCX, align 8, !tbaa !2428
  %4282 = add i64 %4281, 20
  %4283 = add i64 %797, 1444
  store i64 %4283, i64* %PC, align 8
  %4284 = inttoptr i64 %4282 to i32*
  %4285 = load i32, i32* %4284, align 4
  %4286 = shl i64 %4263, 32
  %4287 = ashr exact i64 %4286, 32
  %4288 = sext i32 %4285 to i64
  %4289 = mul nsw i64 %4288, %4287
  %4290 = and i64 %4289, 4294967295
  store i64 %4290, i64* %RSI, align 8, !tbaa !2428
  %4291 = load i64, i64* %RDX, align 8
  %4292 = trunc i64 %4289 to i32
  %4293 = trunc i64 %4291 to i32
  %4294 = add i32 %4292, %4293
  %4295 = zext i32 %4294 to i64
  store i64 %4295, i64* %RDX, align 8, !tbaa !2428
  %4296 = icmp ult i32 %4294, %4293
  %4297 = icmp ult i32 %4294, %4292
  %4298 = or i1 %4296, %4297
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %82, align 1, !tbaa !2433
  %4300 = and i32 %4294, 255
  %4301 = tail call i32 @llvm.ctpop.i32(i32 %4300) #12
  %4302 = trunc i32 %4301 to i8
  %4303 = and i8 %4302, 1
  %4304 = xor i8 %4303, 1
  store i8 %4304, i8* %88, align 1, !tbaa !2447
  %4305 = xor i64 %4289, %4291
  %4306 = trunc i64 %4305 to i32
  %4307 = xor i32 %4306, %4294
  %4308 = lshr i32 %4307, 4
  %4309 = trunc i32 %4308 to i8
  %4310 = and i8 %4309, 1
  store i8 %4310, i8* %93, align 1, !tbaa !2451
  %4311 = icmp eq i32 %4294, 0
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %96, align 1, !tbaa !2448
  %4313 = lshr i32 %4294, 31
  %4314 = trunc i32 %4313 to i8
  store i8 %4314, i8* %99, align 1, !tbaa !2449
  %4315 = lshr i32 %4293, 31
  %4316 = lshr i32 %4292, 31
  %4317 = xor i32 %4313, %4315
  %4318 = xor i32 %4313, %4316
  %4319 = add nuw nsw i32 %4317, %4318
  %4320 = icmp eq i32 %4319, 2
  %4321 = zext i1 %4320 to i8
  store i8 %4321, i8* %105, align 1, !tbaa !2450
  %4322 = add i64 %4277, -72
  %4323 = add i64 %797, 1449
  store i64 %4323, i64* %PC, align 8
  %4324 = inttoptr i64 %4322 to i32*
  %4325 = load i32, i32* %4324, align 4
  %4326 = zext i32 %4325 to i64
  store i64 %4326, i64* %RSI, align 8, !tbaa !2428
  %4327 = add i64 %797, 1453
  store i64 %4327, i64* %PC, align 8
  %4328 = load i64, i64* %4280, align 8
  store i64 %4328, i64* %RCX, align 8, !tbaa !2428
  %4329 = add i64 %4328, 20
  %4330 = add i64 %797, 1457
  store i64 %4330, i64* %PC, align 8
  %4331 = inttoptr i64 %4329 to i32*
  %4332 = load i32, i32* %4331, align 4
  %4333 = sext i32 %4325 to i64
  %4334 = sext i32 %4332 to i64
  %4335 = mul nsw i64 %4334, %4333
  %4336 = and i64 %4335, 4294967295
  store i64 %4336, i64* %RSI, align 8, !tbaa !2428
  %4337 = trunc i64 %4335 to i32
  %4338 = add i32 %4337, %4294
  %4339 = zext i32 %4338 to i64
  store i64 %4339, i64* %RDX, align 8, !tbaa !2428
  %4340 = icmp ult i32 %4338, %4294
  %4341 = icmp ult i32 %4338, %4337
  %4342 = or i1 %4340, %4341
  %4343 = zext i1 %4342 to i8
  store i8 %4343, i8* %82, align 1, !tbaa !2433
  %4344 = and i32 %4338, 255
  %4345 = tail call i32 @llvm.ctpop.i32(i32 %4344) #12
  %4346 = trunc i32 %4345 to i8
  %4347 = and i8 %4346, 1
  %4348 = xor i8 %4347, 1
  store i8 %4348, i8* %88, align 1, !tbaa !2447
  %4349 = xor i64 %4335, %4295
  %4350 = trunc i64 %4349 to i32
  %4351 = xor i32 %4350, %4338
  %4352 = lshr i32 %4351, 4
  %4353 = trunc i32 %4352 to i8
  %4354 = and i8 %4353, 1
  store i8 %4354, i8* %93, align 1, !tbaa !2451
  %4355 = icmp eq i32 %4338, 0
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %96, align 1, !tbaa !2448
  %4357 = lshr i32 %4338, 31
  %4358 = trunc i32 %4357 to i8
  store i8 %4358, i8* %99, align 1, !tbaa !2449
  %4359 = lshr i32 %4337, 31
  %4360 = xor i32 %4357, %4313
  %4361 = xor i32 %4357, %4359
  %4362 = add nuw nsw i32 %4360, %4361
  %4363 = icmp eq i32 %4362, 2
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %105, align 1, !tbaa !2450
  %4365 = load i64, i64* %RBP, align 8
  %4366 = add i64 %4365, -76
  %4367 = add i64 %797, 1462
  store i64 %4367, i64* %PC, align 8
  %4368 = inttoptr i64 %4366 to i32*
  %4369 = load i32, i32* %4368, align 4
  %4370 = add i32 %4369, 1
  %4371 = zext i32 %4370 to i64
  store i64 %4371, i64* %RSI, align 8, !tbaa !2428
  %4372 = lshr i32 %4370, 31
  %4373 = add i32 %4370, %4338
  %4374 = zext i32 %4373 to i64
  store i64 %4374, i64* %RDX, align 8, !tbaa !2428
  %4375 = icmp ult i32 %4373, %4338
  %4376 = icmp ult i32 %4373, %4370
  %4377 = or i1 %4375, %4376
  %4378 = zext i1 %4377 to i8
  store i8 %4378, i8* %82, align 1, !tbaa !2433
  %4379 = and i32 %4373, 255
  %4380 = tail call i32 @llvm.ctpop.i32(i32 %4379) #12
  %4381 = trunc i32 %4380 to i8
  %4382 = and i8 %4381, 1
  %4383 = xor i8 %4382, 1
  store i8 %4383, i8* %88, align 1, !tbaa !2447
  %4384 = xor i32 %4370, %4338
  %4385 = xor i32 %4384, %4373
  %4386 = lshr i32 %4385, 4
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  store i8 %4388, i8* %93, align 1, !tbaa !2451
  %4389 = icmp eq i32 %4373, 0
  %4390 = zext i1 %4389 to i8
  store i8 %4390, i8* %96, align 1, !tbaa !2448
  %4391 = lshr i32 %4373, 31
  %4392 = trunc i32 %4391 to i8
  store i8 %4392, i8* %99, align 1, !tbaa !2449
  %4393 = xor i32 %4391, %4357
  %4394 = xor i32 %4391, %4372
  %4395 = add nuw nsw i32 %4393, %4394
  %4396 = icmp eq i32 %4395, 2
  %4397 = zext i1 %4396 to i8
  store i8 %4397, i8* %105, align 1, !tbaa !2450
  %4398 = sext i32 %4373 to i64
  store i64 %4398, i64* %RCX, align 8, !tbaa !2428
  %4399 = load i64, i64* %RAX, align 8
  %4400 = shl nsw i64 %4398, 2
  %4401 = add i64 %4399, %4400
  %4402 = add i64 %797, 1475
  store i64 %4402, i64* %PC, align 8
  %4403 = inttoptr i64 %4401 to i32*
  %4404 = load i32, i32* %4403, align 4
  store i32 %4404, i32* %214, align 1, !tbaa !2452
  store float 0.000000e+00, float* %216, align 1, !tbaa !2452
  store float 0.000000e+00, float* %218, align 1, !tbaa !2452
  store float 0.000000e+00, float* %220, align 1, !tbaa !2452
  %4405 = add i64 %4365, -40
  %4406 = add i64 %797, 1479
  store i64 %4406, i64* %PC, align 8
  %4407 = inttoptr i64 %4405 to i64*
  %4408 = load i64, i64* %4407, align 8
  store i64 %4408, i64* %RAX, align 8, !tbaa !2428
  %4409 = add i64 %797, 1482
  store i64 %4409, i64* %PC, align 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410, align 8
  store i64 %4411, i64* %RAX, align 8, !tbaa !2428
  %4412 = load i64, i64* %RBP, align 8
  %4413 = add i64 %4412, -40
  %4414 = add i64 %797, 1486
  store i64 %4414, i64* %PC, align 8
  %4415 = inttoptr i64 %4413 to i64*
  %4416 = load i64, i64* %4415, align 8
  store i64 %4416, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4417 = add i64 %797, 1494
  store i64 %4417, i64* %PC, align 8
  %4418 = load i64, i64* %4415, align 8
  store i64 %4418, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4419 = add i64 %797, 1502
  store i64 %4419, i64* %PC, align 8
  %4420 = load i64, i64* %4415, align 8
  store i64 %4420, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4421 = add i64 %4412, -68
  %4422 = add i64 %797, 1509
  store i64 %4422, i64* %PC, align 8
  %4423 = inttoptr i64 %4421 to i32*
  %4424 = load i32, i32* %4423, align 4
  %4425 = add i32 %4424, -1
  %4426 = zext i32 %4425 to i64
  store i64 %4426, i64* %RSI, align 8, !tbaa !2428
  %4427 = icmp eq i32 %4424, 0
  %4428 = zext i1 %4427 to i8
  store i8 %4428, i8* %82, align 1, !tbaa !2433
  %4429 = and i32 %4425, 255
  %4430 = tail call i32 @llvm.ctpop.i32(i32 %4429) #12
  %4431 = trunc i32 %4430 to i8
  %4432 = and i8 %4431, 1
  %4433 = xor i8 %4432, 1
  store i8 %4433, i8* %88, align 1, !tbaa !2447
  %4434 = xor i32 %4425, %4424
  %4435 = lshr i32 %4434, 4
  %4436 = trunc i32 %4435 to i8
  %4437 = and i8 %4436, 1
  store i8 %4437, i8* %93, align 1, !tbaa !2451
  %4438 = icmp eq i32 %4425, 0
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %96, align 1, !tbaa !2448
  %4440 = lshr i32 %4425, 31
  %4441 = trunc i32 %4440 to i8
  store i8 %4441, i8* %99, align 1, !tbaa !2449
  %4442 = lshr i32 %4424, 31
  %4443 = xor i32 %4440, %4442
  %4444 = add nuw nsw i32 %4443, %4442
  %4445 = icmp eq i32 %4444, 2
  %4446 = zext i1 %4445 to i8
  store i8 %4446, i8* %105, align 1, !tbaa !2450
  %4447 = add i64 %797, 1516
  store i64 %4447, i64* %PC, align 8
  %4448 = load i64, i64* %4415, align 8
  store i64 %4448, i64* %RCX, align 8, !tbaa !2428
  %4449 = add i64 %4448, 16
  %4450 = add i64 %797, 1520
  store i64 %4450, i64* %PC, align 8
  %4451 = inttoptr i64 %4449 to i32*
  %4452 = load i32, i32* %4451, align 4
  %4453 = sext i32 %4425 to i64
  %4454 = sext i32 %4452 to i64
  %4455 = mul nsw i64 %4454, %4453
  %4456 = trunc i64 %4455 to i32
  %4457 = and i64 %4455, 4294967295
  store i64 %4457, i64* %RSI, align 8, !tbaa !2428
  %4458 = shl i64 %4455, 32
  %4459 = ashr exact i64 %4458, 32
  %4460 = icmp ne i64 %4459, %4455
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %82, align 1, !tbaa !2433
  %4462 = and i32 %4456, 255
  %4463 = tail call i32 @llvm.ctpop.i32(i32 %4462) #12
  %4464 = trunc i32 %4463 to i8
  %4465 = and i8 %4464, 1
  %4466 = xor i8 %4465, 1
  store i8 %4466, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4467 = lshr i32 %4456, 31
  %4468 = trunc i32 %4467 to i8
  store i8 %4468, i8* %99, align 1, !tbaa !2449
  store i8 %4461, i8* %105, align 1, !tbaa !2450
  %4469 = load i64, i64* %RBP, align 8
  %4470 = add i64 %4469, -40
  %4471 = add i64 %797, 1524
  store i64 %4471, i64* %PC, align 8
  %4472 = inttoptr i64 %4470 to i64*
  %4473 = load i64, i64* %4472, align 8
  store i64 %4473, i64* %RCX, align 8, !tbaa !2428
  %4474 = add i64 %4473, 20
  %4475 = add i64 %797, 1528
  store i64 %4475, i64* %PC, align 8
  %4476 = inttoptr i64 %4474 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = shl i64 %4455, 32
  %4479 = ashr exact i64 %4478, 32
  %4480 = sext i32 %4477 to i64
  %4481 = mul nsw i64 %4480, %4479
  %4482 = and i64 %4481, 4294967295
  store i64 %4482, i64* %RSI, align 8, !tbaa !2428
  %4483 = load i64, i64* %RDX, align 8
  %4484 = trunc i64 %4481 to i32
  %4485 = trunc i64 %4483 to i32
  %4486 = add i32 %4484, %4485
  %4487 = zext i32 %4486 to i64
  store i64 %4487, i64* %RDX, align 8, !tbaa !2428
  %4488 = icmp ult i32 %4486, %4485
  %4489 = icmp ult i32 %4486, %4484
  %4490 = or i1 %4488, %4489
  %4491 = zext i1 %4490 to i8
  store i8 %4491, i8* %82, align 1, !tbaa !2433
  %4492 = and i32 %4486, 255
  %4493 = tail call i32 @llvm.ctpop.i32(i32 %4492) #12
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = xor i8 %4495, 1
  store i8 %4496, i8* %88, align 1, !tbaa !2447
  %4497 = xor i64 %4481, %4483
  %4498 = trunc i64 %4497 to i32
  %4499 = xor i32 %4498, %4486
  %4500 = lshr i32 %4499, 4
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  store i8 %4502, i8* %93, align 1, !tbaa !2451
  %4503 = icmp eq i32 %4486, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %96, align 1, !tbaa !2448
  %4505 = lshr i32 %4486, 31
  %4506 = trunc i32 %4505 to i8
  store i8 %4506, i8* %99, align 1, !tbaa !2449
  %4507 = lshr i32 %4485, 31
  %4508 = lshr i32 %4484, 31
  %4509 = xor i32 %4505, %4507
  %4510 = xor i32 %4505, %4508
  %4511 = add nuw nsw i32 %4509, %4510
  %4512 = icmp eq i32 %4511, 2
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %105, align 1, !tbaa !2450
  %4514 = add i64 %4469, -72
  %4515 = add i64 %797, 1533
  store i64 %4515, i64* %PC, align 8
  %4516 = inttoptr i64 %4514 to i32*
  %4517 = load i32, i32* %4516, align 4
  %4518 = zext i32 %4517 to i64
  store i64 %4518, i64* %RSI, align 8, !tbaa !2428
  %4519 = add i64 %797, 1537
  store i64 %4519, i64* %PC, align 8
  %4520 = load i64, i64* %4472, align 8
  store i64 %4520, i64* %RCX, align 8, !tbaa !2428
  %4521 = add i64 %4520, 20
  %4522 = add i64 %797, 1541
  store i64 %4522, i64* %PC, align 8
  %4523 = inttoptr i64 %4521 to i32*
  %4524 = load i32, i32* %4523, align 4
  %4525 = sext i32 %4517 to i64
  %4526 = sext i32 %4524 to i64
  %4527 = mul nsw i64 %4526, %4525
  %4528 = and i64 %4527, 4294967295
  store i64 %4528, i64* %RSI, align 8, !tbaa !2428
  %4529 = trunc i64 %4527 to i32
  %4530 = add i32 %4529, %4486
  %4531 = zext i32 %4530 to i64
  store i64 %4531, i64* %RDX, align 8, !tbaa !2428
  %4532 = icmp ult i32 %4530, %4486
  %4533 = icmp ult i32 %4530, %4529
  %4534 = or i1 %4532, %4533
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %82, align 1, !tbaa !2433
  %4536 = and i32 %4530, 255
  %4537 = tail call i32 @llvm.ctpop.i32(i32 %4536) #12
  %4538 = trunc i32 %4537 to i8
  %4539 = and i8 %4538, 1
  %4540 = xor i8 %4539, 1
  store i8 %4540, i8* %88, align 1, !tbaa !2447
  %4541 = xor i64 %4527, %4487
  %4542 = trunc i64 %4541 to i32
  %4543 = xor i32 %4542, %4530
  %4544 = lshr i32 %4543, 4
  %4545 = trunc i32 %4544 to i8
  %4546 = and i8 %4545, 1
  store i8 %4546, i8* %93, align 1, !tbaa !2451
  %4547 = icmp eq i32 %4530, 0
  %4548 = zext i1 %4547 to i8
  store i8 %4548, i8* %96, align 1, !tbaa !2448
  %4549 = lshr i32 %4530, 31
  %4550 = trunc i32 %4549 to i8
  store i8 %4550, i8* %99, align 1, !tbaa !2449
  %4551 = lshr i32 %4529, 31
  %4552 = xor i32 %4549, %4505
  %4553 = xor i32 %4549, %4551
  %4554 = add nuw nsw i32 %4552, %4553
  %4555 = icmp eq i32 %4554, 2
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %105, align 1, !tbaa !2450
  %4557 = load i64, i64* %RBP, align 8
  %4558 = add i64 %4557, -76
  %4559 = add i64 %797, 1546
  store i64 %4559, i64* %PC, align 8
  %4560 = inttoptr i64 %4558 to i32*
  %4561 = load i32, i32* %4560, align 4
  %4562 = add i32 %4561, 1
  %4563 = zext i32 %4562 to i64
  store i64 %4563, i64* %RSI, align 8, !tbaa !2428
  %4564 = lshr i32 %4562, 31
  %4565 = add i32 %4562, %4530
  %4566 = zext i32 %4565 to i64
  store i64 %4566, i64* %RDX, align 8, !tbaa !2428
  %4567 = icmp ult i32 %4565, %4530
  %4568 = icmp ult i32 %4565, %4562
  %4569 = or i1 %4567, %4568
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %82, align 1, !tbaa !2433
  %4571 = and i32 %4565, 255
  %4572 = tail call i32 @llvm.ctpop.i32(i32 %4571) #12
  %4573 = trunc i32 %4572 to i8
  %4574 = and i8 %4573, 1
  %4575 = xor i8 %4574, 1
  store i8 %4575, i8* %88, align 1, !tbaa !2447
  %4576 = xor i32 %4562, %4530
  %4577 = xor i32 %4576, %4565
  %4578 = lshr i32 %4577, 4
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  store i8 %4580, i8* %93, align 1, !tbaa !2451
  %4581 = icmp eq i32 %4565, 0
  %4582 = zext i1 %4581 to i8
  store i8 %4582, i8* %96, align 1, !tbaa !2448
  %4583 = lshr i32 %4565, 31
  %4584 = trunc i32 %4583 to i8
  store i8 %4584, i8* %99, align 1, !tbaa !2449
  %4585 = xor i32 %4583, %4549
  %4586 = xor i32 %4583, %4564
  %4587 = add nuw nsw i32 %4585, %4586
  %4588 = icmp eq i32 %4587, 2
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %105, align 1, !tbaa !2450
  %4590 = sext i32 %4565 to i64
  store i64 %4590, i64* %RCX, align 8, !tbaa !2428
  %4591 = load i64, i64* %RAX, align 8
  %4592 = shl nsw i64 %4590, 2
  %4593 = add i64 %4591, %4592
  %4594 = add i64 %797, 1559
  store i64 %4594, i64* %PC, align 8
  %4595 = load <2 x float>, <2 x float>* %221, align 1
  %4596 = load <2 x i32>, <2 x i32>* %222, align 1
  %4597 = inttoptr i64 %4593 to float*
  %4598 = load float, float* %4597, align 4
  %4599 = extractelement <2 x float> %4595, i32 0
  %4600 = fsub float %4599, %4598
  store float %4600, float* %213, align 1, !tbaa !2452
  %4601 = bitcast <2 x float> %4595 to <2 x i32>
  %4602 = extractelement <2 x i32> %4601, i32 1
  store i32 %4602, i32* %223, align 1, !tbaa !2452
  %4603 = extractelement <2 x i32> %4596, i32 0
  store i32 %4603, i32* %224, align 1, !tbaa !2452
  %4604 = extractelement <2 x i32> %4596, i32 1
  store i32 %4604, i32* %225, align 1, !tbaa !2452
  %4605 = load i64, i64* %RBP, align 8
  %4606 = add i64 %4605, -40
  %4607 = add i64 %797, 1563
  store i64 %4607, i64* %PC, align 8
  %4608 = inttoptr i64 %4606 to i64*
  %4609 = load i64, i64* %4608, align 8
  store i64 %4609, i64* %RAX, align 8, !tbaa !2428
  %4610 = add i64 %797, 1566
  store i64 %4610, i64* %PC, align 8
  %4611 = inttoptr i64 %4609 to i64*
  %4612 = load i64, i64* %4611, align 8
  store i64 %4612, i64* %RAX, align 8, !tbaa !2428
  %4613 = add i64 %797, 1570
  store i64 %4613, i64* %PC, align 8
  %4614 = load i64, i64* %4608, align 8
  store i64 %4614, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4615 = add i64 %797, 1578
  store i64 %4615, i64* %PC, align 8
  %4616 = load i64, i64* %4608, align 8
  store i64 %4616, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4617 = add i64 %797, 1586
  store i64 %4617, i64* %PC, align 8
  %4618 = load i64, i64* %4608, align 8
  store i64 %4618, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4619 = add i64 %4605, -68
  %4620 = add i64 %797, 1593
  store i64 %4620, i64* %PC, align 8
  %4621 = inttoptr i64 %4619 to i32*
  %4622 = load i32, i32* %4621, align 4
  %4623 = add i32 %4622, 1
  %4624 = zext i32 %4623 to i64
  store i64 %4624, i64* %RSI, align 8, !tbaa !2428
  %4625 = icmp eq i32 %4622, -1
  %4626 = icmp eq i32 %4623, 0
  %4627 = or i1 %4625, %4626
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %82, align 1, !tbaa !2433
  %4629 = and i32 %4623, 255
  %4630 = tail call i32 @llvm.ctpop.i32(i32 %4629) #12
  %4631 = trunc i32 %4630 to i8
  %4632 = and i8 %4631, 1
  %4633 = xor i8 %4632, 1
  store i8 %4633, i8* %88, align 1, !tbaa !2447
  %4634 = xor i32 %4623, %4622
  %4635 = lshr i32 %4634, 4
  %4636 = trunc i32 %4635 to i8
  %4637 = and i8 %4636, 1
  store i8 %4637, i8* %93, align 1, !tbaa !2451
  %4638 = zext i1 %4626 to i8
  store i8 %4638, i8* %96, align 1, !tbaa !2448
  %4639 = lshr i32 %4623, 31
  %4640 = trunc i32 %4639 to i8
  store i8 %4640, i8* %99, align 1, !tbaa !2449
  %4641 = lshr i32 %4622, 31
  %4642 = xor i32 %4639, %4641
  %4643 = add nuw nsw i32 %4642, %4639
  %4644 = icmp eq i32 %4643, 2
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %105, align 1, !tbaa !2450
  %4646 = add i64 %797, 1600
  store i64 %4646, i64* %PC, align 8
  %4647 = load i64, i64* %4608, align 8
  store i64 %4647, i64* %RCX, align 8, !tbaa !2428
  %4648 = add i64 %4647, 16
  %4649 = add i64 %797, 1604
  store i64 %4649, i64* %PC, align 8
  %4650 = inttoptr i64 %4648 to i32*
  %4651 = load i32, i32* %4650, align 4
  %4652 = sext i32 %4623 to i64
  %4653 = sext i32 %4651 to i64
  %4654 = mul nsw i64 %4653, %4652
  %4655 = trunc i64 %4654 to i32
  %4656 = and i64 %4654, 4294967295
  store i64 %4656, i64* %RSI, align 8, !tbaa !2428
  %4657 = shl i64 %4654, 32
  %4658 = ashr exact i64 %4657, 32
  %4659 = icmp ne i64 %4658, %4654
  %4660 = zext i1 %4659 to i8
  store i8 %4660, i8* %82, align 1, !tbaa !2433
  %4661 = and i32 %4655, 255
  %4662 = tail call i32 @llvm.ctpop.i32(i32 %4661) #12
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = xor i8 %4664, 1
  store i8 %4665, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4666 = lshr i32 %4655, 31
  %4667 = trunc i32 %4666 to i8
  store i8 %4667, i8* %99, align 1, !tbaa !2449
  store i8 %4660, i8* %105, align 1, !tbaa !2450
  %4668 = load i64, i64* %RBP, align 8
  %4669 = add i64 %4668, -40
  %4670 = add i64 %797, 1608
  store i64 %4670, i64* %PC, align 8
  %4671 = inttoptr i64 %4669 to i64*
  %4672 = load i64, i64* %4671, align 8
  store i64 %4672, i64* %RCX, align 8, !tbaa !2428
  %4673 = add i64 %4672, 20
  %4674 = add i64 %797, 1612
  store i64 %4674, i64* %PC, align 8
  %4675 = inttoptr i64 %4673 to i32*
  %4676 = load i32, i32* %4675, align 4
  %4677 = shl i64 %4654, 32
  %4678 = ashr exact i64 %4677, 32
  %4679 = sext i32 %4676 to i64
  %4680 = mul nsw i64 %4679, %4678
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
  store i8 %4690, i8* %82, align 1, !tbaa !2433
  %4691 = and i32 %4685, 255
  %4692 = tail call i32 @llvm.ctpop.i32(i32 %4691) #12
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  %4695 = xor i8 %4694, 1
  store i8 %4695, i8* %88, align 1, !tbaa !2447
  %4696 = xor i64 %4680, %4682
  %4697 = trunc i64 %4696 to i32
  %4698 = xor i32 %4697, %4685
  %4699 = lshr i32 %4698, 4
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  store i8 %4701, i8* %93, align 1, !tbaa !2451
  %4702 = icmp eq i32 %4685, 0
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %96, align 1, !tbaa !2448
  %4704 = lshr i32 %4685, 31
  %4705 = trunc i32 %4704 to i8
  store i8 %4705, i8* %99, align 1, !tbaa !2449
  %4706 = lshr i32 %4684, 31
  %4707 = lshr i32 %4683, 31
  %4708 = xor i32 %4704, %4706
  %4709 = xor i32 %4704, %4707
  %4710 = add nuw nsw i32 %4708, %4709
  %4711 = icmp eq i32 %4710, 2
  %4712 = zext i1 %4711 to i8
  store i8 %4712, i8* %105, align 1, !tbaa !2450
  %4713 = add i64 %4668, -72
  %4714 = add i64 %797, 1617
  store i64 %4714, i64* %PC, align 8
  %4715 = inttoptr i64 %4713 to i32*
  %4716 = load i32, i32* %4715, align 4
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RSI, align 8, !tbaa !2428
  %4718 = add i64 %797, 1621
  store i64 %4718, i64* %PC, align 8
  %4719 = load i64, i64* %4671, align 8
  store i64 %4719, i64* %RCX, align 8, !tbaa !2428
  %4720 = add i64 %4719, 20
  %4721 = add i64 %797, 1625
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
  store i8 %4734, i8* %82, align 1, !tbaa !2433
  %4735 = and i32 %4729, 255
  %4736 = tail call i32 @llvm.ctpop.i32(i32 %4735) #12
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  %4739 = xor i8 %4738, 1
  store i8 %4739, i8* %88, align 1, !tbaa !2447
  %4740 = xor i64 %4726, %4686
  %4741 = trunc i64 %4740 to i32
  %4742 = xor i32 %4741, %4729
  %4743 = lshr i32 %4742, 4
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  store i8 %4745, i8* %93, align 1, !tbaa !2451
  %4746 = icmp eq i32 %4729, 0
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %96, align 1, !tbaa !2448
  %4748 = lshr i32 %4729, 31
  %4749 = trunc i32 %4748 to i8
  store i8 %4749, i8* %99, align 1, !tbaa !2449
  %4750 = lshr i32 %4728, 31
  %4751 = xor i32 %4748, %4704
  %4752 = xor i32 %4748, %4750
  %4753 = add nuw nsw i32 %4751, %4752
  %4754 = icmp eq i32 %4753, 2
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %105, align 1, !tbaa !2450
  %4756 = load i64, i64* %RBP, align 8
  %4757 = add i64 %4756, -76
  %4758 = add i64 %797, 1630
  store i64 %4758, i64* %PC, align 8
  %4759 = inttoptr i64 %4757 to i32*
  %4760 = load i32, i32* %4759, align 4
  %4761 = add i32 %4760, -1
  %4762 = zext i32 %4761 to i64
  store i64 %4762, i64* %RSI, align 8, !tbaa !2428
  %4763 = lshr i32 %4761, 31
  %4764 = add i32 %4761, %4729
  %4765 = zext i32 %4764 to i64
  store i64 %4765, i64* %RDX, align 8, !tbaa !2428
  %4766 = icmp ult i32 %4764, %4729
  %4767 = icmp ult i32 %4764, %4761
  %4768 = or i1 %4766, %4767
  %4769 = zext i1 %4768 to i8
  store i8 %4769, i8* %82, align 1, !tbaa !2433
  %4770 = and i32 %4764, 255
  %4771 = tail call i32 @llvm.ctpop.i32(i32 %4770) #12
  %4772 = trunc i32 %4771 to i8
  %4773 = and i8 %4772, 1
  %4774 = xor i8 %4773, 1
  store i8 %4774, i8* %88, align 1, !tbaa !2447
  %4775 = xor i32 %4761, %4729
  %4776 = xor i32 %4775, %4764
  %4777 = lshr i32 %4776, 4
  %4778 = trunc i32 %4777 to i8
  %4779 = and i8 %4778, 1
  store i8 %4779, i8* %93, align 1, !tbaa !2451
  %4780 = icmp eq i32 %4764, 0
  %4781 = zext i1 %4780 to i8
  store i8 %4781, i8* %96, align 1, !tbaa !2448
  %4782 = lshr i32 %4764, 31
  %4783 = trunc i32 %4782 to i8
  store i8 %4783, i8* %99, align 1, !tbaa !2449
  %4784 = xor i32 %4782, %4748
  %4785 = xor i32 %4782, %4763
  %4786 = add nuw nsw i32 %4784, %4785
  %4787 = icmp eq i32 %4786, 2
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %105, align 1, !tbaa !2450
  %4789 = sext i32 %4764 to i64
  store i64 %4789, i64* %RCX, align 8, !tbaa !2428
  %4790 = load i64, i64* %RAX, align 8
  %4791 = shl nsw i64 %4789, 2
  %4792 = add i64 %4790, %4791
  %4793 = add i64 %797, 1643
  store i64 %4793, i64* %PC, align 8
  %4794 = load <2 x float>, <2 x float>* %221, align 1
  %4795 = load <2 x i32>, <2 x i32>* %222, align 1
  %4796 = inttoptr i64 %4792 to float*
  %4797 = load float, float* %4796, align 4
  %4798 = extractelement <2 x float> %4794, i32 0
  %4799 = fsub float %4798, %4797
  store float %4799, float* %213, align 1, !tbaa !2452
  %4800 = bitcast <2 x float> %4794 to <2 x i32>
  %4801 = extractelement <2 x i32> %4800, i32 1
  store i32 %4801, i32* %223, align 1, !tbaa !2452
  %4802 = extractelement <2 x i32> %4795, i32 0
  store i32 %4802, i32* %224, align 1, !tbaa !2452
  %4803 = extractelement <2 x i32> %4795, i32 1
  store i32 %4803, i32* %225, align 1, !tbaa !2452
  %4804 = load i64, i64* %RBP, align 8
  %4805 = add i64 %4804, -40
  %4806 = add i64 %797, 1647
  store i64 %4806, i64* %PC, align 8
  %4807 = inttoptr i64 %4805 to i64*
  %4808 = load i64, i64* %4807, align 8
  store i64 %4808, i64* %RAX, align 8, !tbaa !2428
  %4809 = add i64 %797, 1650
  store i64 %4809, i64* %PC, align 8
  %4810 = inttoptr i64 %4808 to i64*
  %4811 = load i64, i64* %4810, align 8
  store i64 %4811, i64* %RAX, align 8, !tbaa !2428
  %4812 = add i64 %797, 1654
  store i64 %4812, i64* %PC, align 8
  %4813 = load i64, i64* %4807, align 8
  store i64 %4813, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4814 = add i64 %797, 1662
  store i64 %4814, i64* %PC, align 8
  %4815 = load i64, i64* %4807, align 8
  store i64 %4815, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4816 = add i64 %797, 1670
  store i64 %4816, i64* %PC, align 8
  %4817 = load i64, i64* %4807, align 8
  store i64 %4817, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %4818 = add i64 %4804, -68
  %4819 = add i64 %797, 1677
  store i64 %4819, i64* %PC, align 8
  %4820 = inttoptr i64 %4818 to i32*
  %4821 = load i32, i32* %4820, align 4
  %4822 = add i32 %4821, -1
  %4823 = zext i32 %4822 to i64
  store i64 %4823, i64* %RSI, align 8, !tbaa !2428
  %4824 = icmp eq i32 %4821, 0
  %4825 = zext i1 %4824 to i8
  store i8 %4825, i8* %82, align 1, !tbaa !2433
  %4826 = and i32 %4822, 255
  %4827 = tail call i32 @llvm.ctpop.i32(i32 %4826) #12
  %4828 = trunc i32 %4827 to i8
  %4829 = and i8 %4828, 1
  %4830 = xor i8 %4829, 1
  store i8 %4830, i8* %88, align 1, !tbaa !2447
  %4831 = xor i32 %4822, %4821
  %4832 = lshr i32 %4831, 4
  %4833 = trunc i32 %4832 to i8
  %4834 = and i8 %4833, 1
  store i8 %4834, i8* %93, align 1, !tbaa !2451
  %4835 = icmp eq i32 %4822, 0
  %4836 = zext i1 %4835 to i8
  store i8 %4836, i8* %96, align 1, !tbaa !2448
  %4837 = lshr i32 %4822, 31
  %4838 = trunc i32 %4837 to i8
  store i8 %4838, i8* %99, align 1, !tbaa !2449
  %4839 = lshr i32 %4821, 31
  %4840 = xor i32 %4837, %4839
  %4841 = add nuw nsw i32 %4840, %4839
  %4842 = icmp eq i32 %4841, 2
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %105, align 1, !tbaa !2450
  %4844 = add i64 %797, 1684
  store i64 %4844, i64* %PC, align 8
  %4845 = load i64, i64* %4807, align 8
  store i64 %4845, i64* %RCX, align 8, !tbaa !2428
  %4846 = add i64 %4845, 16
  %4847 = add i64 %797, 1688
  store i64 %4847, i64* %PC, align 8
  %4848 = inttoptr i64 %4846 to i32*
  %4849 = load i32, i32* %4848, align 4
  %4850 = sext i32 %4822 to i64
  %4851 = sext i32 %4849 to i64
  %4852 = mul nsw i64 %4851, %4850
  %4853 = trunc i64 %4852 to i32
  %4854 = and i64 %4852, 4294967295
  store i64 %4854, i64* %RSI, align 8, !tbaa !2428
  %4855 = shl i64 %4852, 32
  %4856 = ashr exact i64 %4855, 32
  %4857 = icmp ne i64 %4856, %4852
  %4858 = zext i1 %4857 to i8
  store i8 %4858, i8* %82, align 1, !tbaa !2433
  %4859 = and i32 %4853, 255
  %4860 = tail call i32 @llvm.ctpop.i32(i32 %4859) #12
  %4861 = trunc i32 %4860 to i8
  %4862 = and i8 %4861, 1
  %4863 = xor i8 %4862, 1
  store i8 %4863, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %4864 = lshr i32 %4853, 31
  %4865 = trunc i32 %4864 to i8
  store i8 %4865, i8* %99, align 1, !tbaa !2449
  store i8 %4858, i8* %105, align 1, !tbaa !2450
  %4866 = load i64, i64* %RBP, align 8
  %4867 = add i64 %4866, -40
  %4868 = add i64 %797, 1692
  store i64 %4868, i64* %PC, align 8
  %4869 = inttoptr i64 %4867 to i64*
  %4870 = load i64, i64* %4869, align 8
  store i64 %4870, i64* %RCX, align 8, !tbaa !2428
  %4871 = add i64 %4870, 20
  %4872 = add i64 %797, 1696
  store i64 %4872, i64* %PC, align 8
  %4873 = inttoptr i64 %4871 to i32*
  %4874 = load i32, i32* %4873, align 4
  %4875 = shl i64 %4852, 32
  %4876 = ashr exact i64 %4875, 32
  %4877 = sext i32 %4874 to i64
  %4878 = mul nsw i64 %4877, %4876
  %4879 = and i64 %4878, 4294967295
  store i64 %4879, i64* %RSI, align 8, !tbaa !2428
  %4880 = load i64, i64* %RDX, align 8
  %4881 = trunc i64 %4878 to i32
  %4882 = trunc i64 %4880 to i32
  %4883 = add i32 %4881, %4882
  %4884 = zext i32 %4883 to i64
  store i64 %4884, i64* %RDX, align 8, !tbaa !2428
  %4885 = icmp ult i32 %4883, %4882
  %4886 = icmp ult i32 %4883, %4881
  %4887 = or i1 %4885, %4886
  %4888 = zext i1 %4887 to i8
  store i8 %4888, i8* %82, align 1, !tbaa !2433
  %4889 = and i32 %4883, 255
  %4890 = tail call i32 @llvm.ctpop.i32(i32 %4889) #12
  %4891 = trunc i32 %4890 to i8
  %4892 = and i8 %4891, 1
  %4893 = xor i8 %4892, 1
  store i8 %4893, i8* %88, align 1, !tbaa !2447
  %4894 = xor i64 %4878, %4880
  %4895 = trunc i64 %4894 to i32
  %4896 = xor i32 %4895, %4883
  %4897 = lshr i32 %4896, 4
  %4898 = trunc i32 %4897 to i8
  %4899 = and i8 %4898, 1
  store i8 %4899, i8* %93, align 1, !tbaa !2451
  %4900 = icmp eq i32 %4883, 0
  %4901 = zext i1 %4900 to i8
  store i8 %4901, i8* %96, align 1, !tbaa !2448
  %4902 = lshr i32 %4883, 31
  %4903 = trunc i32 %4902 to i8
  store i8 %4903, i8* %99, align 1, !tbaa !2449
  %4904 = lshr i32 %4882, 31
  %4905 = lshr i32 %4881, 31
  %4906 = xor i32 %4902, %4904
  %4907 = xor i32 %4902, %4905
  %4908 = add nuw nsw i32 %4906, %4907
  %4909 = icmp eq i32 %4908, 2
  %4910 = zext i1 %4909 to i8
  store i8 %4910, i8* %105, align 1, !tbaa !2450
  %4911 = add i64 %4866, -72
  %4912 = add i64 %797, 1701
  store i64 %4912, i64* %PC, align 8
  %4913 = inttoptr i64 %4911 to i32*
  %4914 = load i32, i32* %4913, align 4
  %4915 = zext i32 %4914 to i64
  store i64 %4915, i64* %RSI, align 8, !tbaa !2428
  %4916 = add i64 %797, 1705
  store i64 %4916, i64* %PC, align 8
  %4917 = load i64, i64* %4869, align 8
  store i64 %4917, i64* %RCX, align 8, !tbaa !2428
  %4918 = add i64 %4917, 20
  %4919 = add i64 %797, 1709
  store i64 %4919, i64* %PC, align 8
  %4920 = inttoptr i64 %4918 to i32*
  %4921 = load i32, i32* %4920, align 4
  %4922 = sext i32 %4914 to i64
  %4923 = sext i32 %4921 to i64
  %4924 = mul nsw i64 %4923, %4922
  %4925 = and i64 %4924, 4294967295
  store i64 %4925, i64* %RSI, align 8, !tbaa !2428
  %4926 = trunc i64 %4924 to i32
  %4927 = add i32 %4926, %4883
  %4928 = zext i32 %4927 to i64
  store i64 %4928, i64* %RDX, align 8, !tbaa !2428
  %4929 = icmp ult i32 %4927, %4883
  %4930 = icmp ult i32 %4927, %4926
  %4931 = or i1 %4929, %4930
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %82, align 1, !tbaa !2433
  %4933 = and i32 %4927, 255
  %4934 = tail call i32 @llvm.ctpop.i32(i32 %4933) #12
  %4935 = trunc i32 %4934 to i8
  %4936 = and i8 %4935, 1
  %4937 = xor i8 %4936, 1
  store i8 %4937, i8* %88, align 1, !tbaa !2447
  %4938 = xor i64 %4924, %4884
  %4939 = trunc i64 %4938 to i32
  %4940 = xor i32 %4939, %4927
  %4941 = lshr i32 %4940, 4
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  store i8 %4943, i8* %93, align 1, !tbaa !2451
  %4944 = icmp eq i32 %4927, 0
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %96, align 1, !tbaa !2448
  %4946 = lshr i32 %4927, 31
  %4947 = trunc i32 %4946 to i8
  store i8 %4947, i8* %99, align 1, !tbaa !2449
  %4948 = lshr i32 %4926, 31
  %4949 = xor i32 %4946, %4902
  %4950 = xor i32 %4946, %4948
  %4951 = add nuw nsw i32 %4949, %4950
  %4952 = icmp eq i32 %4951, 2
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %105, align 1, !tbaa !2450
  %4954 = load i64, i64* %RBP, align 8
  %4955 = add i64 %4954, -76
  %4956 = add i64 %797, 1714
  store i64 %4956, i64* %PC, align 8
  %4957 = inttoptr i64 %4955 to i32*
  %4958 = load i32, i32* %4957, align 4
  %4959 = add i32 %4958, -1
  %4960 = zext i32 %4959 to i64
  store i64 %4960, i64* %RSI, align 8, !tbaa !2428
  %4961 = lshr i32 %4959, 31
  %4962 = add i32 %4959, %4927
  %4963 = zext i32 %4962 to i64
  store i64 %4963, i64* %RDX, align 8, !tbaa !2428
  %4964 = icmp ult i32 %4962, %4927
  %4965 = icmp ult i32 %4962, %4959
  %4966 = or i1 %4964, %4965
  %4967 = zext i1 %4966 to i8
  store i8 %4967, i8* %82, align 1, !tbaa !2433
  %4968 = and i32 %4962, 255
  %4969 = tail call i32 @llvm.ctpop.i32(i32 %4968) #12
  %4970 = trunc i32 %4969 to i8
  %4971 = and i8 %4970, 1
  %4972 = xor i8 %4971, 1
  store i8 %4972, i8* %88, align 1, !tbaa !2447
  %4973 = xor i32 %4959, %4927
  %4974 = xor i32 %4973, %4962
  %4975 = lshr i32 %4974, 4
  %4976 = trunc i32 %4975 to i8
  %4977 = and i8 %4976, 1
  store i8 %4977, i8* %93, align 1, !tbaa !2451
  %4978 = icmp eq i32 %4962, 0
  %4979 = zext i1 %4978 to i8
  store i8 %4979, i8* %96, align 1, !tbaa !2448
  %4980 = lshr i32 %4962, 31
  %4981 = trunc i32 %4980 to i8
  store i8 %4981, i8* %99, align 1, !tbaa !2449
  %4982 = xor i32 %4980, %4946
  %4983 = xor i32 %4980, %4961
  %4984 = add nuw nsw i32 %4982, %4983
  %4985 = icmp eq i32 %4984, 2
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %105, align 1, !tbaa !2450
  %4987 = sext i32 %4962 to i64
  store i64 %4987, i64* %RCX, align 8, !tbaa !2428
  %4988 = load i64, i64* %RAX, align 8
  %4989 = shl nsw i64 %4987, 2
  %4990 = add i64 %4988, %4989
  %4991 = add i64 %797, 1727
  store i64 %4991, i64* %PC, align 8
  %4992 = load <2 x float>, <2 x float>* %221, align 1
  %4993 = load <2 x i32>, <2 x i32>* %222, align 1
  %4994 = inttoptr i64 %4990 to float*
  %4995 = load float, float* %4994, align 4
  %4996 = extractelement <2 x float> %4992, i32 0
  %4997 = fadd float %4996, %4995
  store float %4997, float* %213, align 1, !tbaa !2452
  %4998 = bitcast <2 x float> %4992 to <2 x i32>
  %4999 = extractelement <2 x i32> %4998, i32 1
  store i32 %4999, i32* %223, align 1, !tbaa !2452
  %5000 = extractelement <2 x i32> %4993, i32 0
  store i32 %5000, i32* %224, align 1, !tbaa !2452
  %5001 = extractelement <2 x i32> %4993, i32 1
  store i32 %5001, i32* %225, align 1, !tbaa !2452
  %5002 = load <2 x float>, <2 x float>* %207, align 1
  %5003 = load <2 x i32>, <2 x i32>* %208, align 1
  %5004 = load <2 x float>, <2 x float>* %221, align 1
  %5005 = extractelement <2 x float> %5002, i32 0
  %5006 = extractelement <2 x float> %5004, i32 0
  %5007 = fmul float %5005, %5006
  store float %5007, float* %199, align 1, !tbaa !2452
  %5008 = bitcast <2 x float> %5002 to <2 x i32>
  %5009 = extractelement <2 x i32> %5008, i32 1
  store i32 %5009, i32* %209, align 1, !tbaa !2452
  %5010 = extractelement <2 x i32> %5003, i32 0
  store i32 %5010, i32* %210, align 1, !tbaa !2452
  %5011 = extractelement <2 x i32> %5003, i32 1
  store i32 %5011, i32* %211, align 1, !tbaa !2452
  %5012 = load <2 x float>, <2 x float>* %192, align 1
  %5013 = load <2 x i32>, <2 x i32>* %197, align 1
  %5014 = load <2 x float>, <2 x float>* %207, align 1
  %5015 = extractelement <2 x float> %5012, i32 0
  %5016 = extractelement <2 x float> %5014, i32 0
  %5017 = fadd float %5015, %5016
  store float %5017, float* %193, align 1, !tbaa !2452
  %5018 = bitcast <2 x float> %5012 to <2 x i32>
  %5019 = extractelement <2 x i32> %5018, i32 1
  store i32 %5019, i32* %188, align 1, !tbaa !2452
  %5020 = extractelement <2 x i32> %5013, i32 0
  store i32 %5020, i32* %189, align 1, !tbaa !2452
  %5021 = extractelement <2 x i32> %5013, i32 1
  store i32 %5021, i32* %191, align 1, !tbaa !2452
  %5022 = load i64, i64* %RBP, align 8
  %5023 = add i64 %5022, -32
  %5024 = add i64 %797, 1739
  store i64 %5024, i64* %PC, align 8
  %5025 = inttoptr i64 %5023 to i64*
  %5026 = load i64, i64* %5025, align 8
  store i64 %5026, i64* %RAX, align 8, !tbaa !2428
  %5027 = add i64 %797, 1742
  store i64 %5027, i64* %PC, align 8
  %5028 = inttoptr i64 %5026 to i64*
  %5029 = load i64, i64* %5028, align 8
  store i64 %5029, i64* %RAX, align 8, !tbaa !2428
  %5030 = add i64 %797, 1746
  store i64 %5030, i64* %PC, align 8
  %5031 = load i64, i64* %5025, align 8
  store i64 %5031, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5032 = add i64 %797, 1754
  store i64 %5032, i64* %PC, align 8
  %5033 = load i64, i64* %5025, align 8
  store i64 %5033, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5034 = add i64 %797, 1762
  store i64 %5034, i64* %PC, align 8
  %5035 = load i64, i64* %5025, align 8
  store i64 %5035, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5036 = add i64 %5022, -68
  %5037 = add i64 %797, 1769
  store i64 %5037, i64* %PC, align 8
  %5038 = inttoptr i64 %5036 to i32*
  %5039 = load i32, i32* %5038, align 4
  %5040 = zext i32 %5039 to i64
  store i64 %5040, i64* %RSI, align 8, !tbaa !2428
  %5041 = add i64 %797, 1773
  store i64 %5041, i64* %PC, align 8
  %5042 = load i64, i64* %5025, align 8
  store i64 %5042, i64* %RCX, align 8, !tbaa !2428
  %5043 = add i64 %5042, 16
  %5044 = add i64 %797, 1777
  store i64 %5044, i64* %PC, align 8
  %5045 = inttoptr i64 %5043 to i32*
  %5046 = load i32, i32* %5045, align 4
  %5047 = sext i32 %5039 to i64
  %5048 = sext i32 %5046 to i64
  %5049 = mul nsw i64 %5048, %5047
  %5050 = trunc i64 %5049 to i32
  %5051 = and i64 %5049, 4294967295
  store i64 %5051, i64* %RSI, align 8, !tbaa !2428
  %5052 = shl i64 %5049, 32
  %5053 = ashr exact i64 %5052, 32
  %5054 = icmp ne i64 %5053, %5049
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %82, align 1, !tbaa !2433
  %5056 = and i32 %5050, 255
  %5057 = tail call i32 @llvm.ctpop.i32(i32 %5056) #12
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  store i8 %5060, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5061 = lshr i32 %5050, 31
  %5062 = trunc i32 %5061 to i8
  store i8 %5062, i8* %99, align 1, !tbaa !2449
  store i8 %5055, i8* %105, align 1, !tbaa !2450
  %5063 = add i64 %797, 1781
  store i64 %5063, i64* %PC, align 8
  %5064 = load i64, i64* %5025, align 8
  store i64 %5064, i64* %RCX, align 8, !tbaa !2428
  %5065 = add i64 %5064, 20
  %5066 = add i64 %797, 1785
  store i64 %5066, i64* %PC, align 8
  %5067 = inttoptr i64 %5065 to i32*
  %5068 = load i32, i32* %5067, align 4
  %5069 = shl i64 %5049, 32
  %5070 = ashr exact i64 %5069, 32
  %5071 = sext i32 %5068 to i64
  %5072 = mul nsw i64 %5071, %5070
  %5073 = and i64 %5072, 4294967295
  store i64 %5073, i64* %RSI, align 8, !tbaa !2428
  %5074 = trunc i64 %5072 to i32
  %5075 = and i64 %5072, 4294967295
  store i64 %5075, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %5076 = and i32 %5074, 255
  %5077 = tail call i32 @llvm.ctpop.i32(i32 %5076) #12
  %5078 = trunc i32 %5077 to i8
  %5079 = and i8 %5078, 1
  %5080 = xor i8 %5079, 1
  store i8 %5080, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %5081 = icmp eq i32 %5074, 0
  %5082 = zext i1 %5081 to i8
  store i8 %5082, i8* %96, align 1, !tbaa !2448
  %5083 = lshr i32 %5074, 31
  %5084 = trunc i32 %5083 to i8
  store i8 %5084, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5085 = load i64, i64* %RBP, align 8
  %5086 = add i64 %5085, -72
  %5087 = add i64 %797, 1790
  store i64 %5087, i64* %PC, align 8
  %5088 = inttoptr i64 %5086 to i32*
  %5089 = load i32, i32* %5088, align 4
  %5090 = zext i32 %5089 to i64
  store i64 %5090, i64* %RSI, align 8, !tbaa !2428
  %5091 = add i64 %5085, -32
  %5092 = add i64 %797, 1794
  store i64 %5092, i64* %PC, align 8
  %5093 = inttoptr i64 %5091 to i64*
  %5094 = load i64, i64* %5093, align 8
  store i64 %5094, i64* %RCX, align 8, !tbaa !2428
  %5095 = add i64 %5094, 20
  %5096 = add i64 %797, 1798
  store i64 %5096, i64* %PC, align 8
  %5097 = inttoptr i64 %5095 to i32*
  %5098 = load i32, i32* %5097, align 4
  %5099 = sext i32 %5089 to i64
  %5100 = sext i32 %5098 to i64
  %5101 = mul nsw i64 %5100, %5099
  %5102 = and i64 %5101, 4294967295
  store i64 %5102, i64* %RSI, align 8, !tbaa !2428
  %5103 = trunc i64 %5101 to i32
  %5104 = add i32 %5103, %5074
  %5105 = zext i32 %5104 to i64
  store i64 %5105, i64* %RDX, align 8, !tbaa !2428
  %5106 = icmp ult i32 %5104, %5074
  %5107 = icmp ult i32 %5104, %5103
  %5108 = or i1 %5106, %5107
  %5109 = zext i1 %5108 to i8
  store i8 %5109, i8* %82, align 1, !tbaa !2433
  %5110 = and i32 %5104, 255
  %5111 = tail call i32 @llvm.ctpop.i32(i32 %5110) #12
  %5112 = trunc i32 %5111 to i8
  %5113 = and i8 %5112, 1
  %5114 = xor i8 %5113, 1
  store i8 %5114, i8* %88, align 1, !tbaa !2447
  %5115 = xor i64 %5101, %5072
  %5116 = trunc i64 %5115 to i32
  %5117 = xor i32 %5116, %5104
  %5118 = lshr i32 %5117, 4
  %5119 = trunc i32 %5118 to i8
  %5120 = and i8 %5119, 1
  store i8 %5120, i8* %93, align 1, !tbaa !2451
  %5121 = icmp eq i32 %5104, 0
  %5122 = zext i1 %5121 to i8
  store i8 %5122, i8* %96, align 1, !tbaa !2448
  %5123 = lshr i32 %5104, 31
  %5124 = trunc i32 %5123 to i8
  store i8 %5124, i8* %99, align 1, !tbaa !2449
  %5125 = lshr i32 %5103, 31
  %5126 = xor i32 %5123, %5083
  %5127 = xor i32 %5123, %5125
  %5128 = add nuw nsw i32 %5126, %5127
  %5129 = icmp eq i32 %5128, 2
  %5130 = zext i1 %5129 to i8
  store i8 %5130, i8* %105, align 1, !tbaa !2450
  %5131 = add i64 %5085, -76
  %5132 = add i64 %797, 1803
  store i64 %5132, i64* %PC, align 8
  %5133 = inttoptr i64 %5131 to i32*
  %5134 = load i32, i32* %5133, align 4
  %5135 = add i32 %5134, %5104
  %5136 = zext i32 %5135 to i64
  store i64 %5136, i64* %RDX, align 8, !tbaa !2428
  %5137 = icmp ult i32 %5135, %5104
  %5138 = icmp ult i32 %5135, %5134
  %5139 = or i1 %5137, %5138
  %5140 = zext i1 %5139 to i8
  store i8 %5140, i8* %82, align 1, !tbaa !2433
  %5141 = and i32 %5135, 255
  %5142 = tail call i32 @llvm.ctpop.i32(i32 %5141) #12
  %5143 = trunc i32 %5142 to i8
  %5144 = and i8 %5143, 1
  %5145 = xor i8 %5144, 1
  store i8 %5145, i8* %88, align 1, !tbaa !2447
  %5146 = xor i32 %5134, %5104
  %5147 = xor i32 %5146, %5135
  %5148 = lshr i32 %5147, 4
  %5149 = trunc i32 %5148 to i8
  %5150 = and i8 %5149, 1
  store i8 %5150, i8* %93, align 1, !tbaa !2451
  %5151 = icmp eq i32 %5135, 0
  %5152 = zext i1 %5151 to i8
  store i8 %5152, i8* %96, align 1, !tbaa !2448
  %5153 = lshr i32 %5135, 31
  %5154 = trunc i32 %5153 to i8
  store i8 %5154, i8* %99, align 1, !tbaa !2449
  %5155 = lshr i32 %5134, 31
  %5156 = xor i32 %5153, %5123
  %5157 = xor i32 %5153, %5155
  %5158 = add nuw nsw i32 %5156, %5157
  %5159 = icmp eq i32 %5158, 2
  %5160 = zext i1 %5159 to i8
  store i8 %5160, i8* %105, align 1, !tbaa !2450
  %5161 = sext i32 %5135 to i64
  store i64 %5161, i64* %RCX, align 8, !tbaa !2428
  %5162 = load i64, i64* %RAX, align 8
  %5163 = shl nsw i64 %5161, 2
  %5164 = add i64 %5162, %5163
  %5165 = add i64 %797, 1811
  store i64 %5165, i64* %PC, align 8
  %5166 = inttoptr i64 %5164 to i32*
  %5167 = load i32, i32* %5166, align 4
  store i32 %5167, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %5168 = load i64, i64* %RBP, align 8
  %5169 = add i64 %5168, -40
  %5170 = add i64 %797, 1815
  store i64 %5170, i64* %PC, align 8
  %5171 = inttoptr i64 %5169 to i64*
  %5172 = load i64, i64* %5171, align 8
  store i64 %5172, i64* %RAX, align 8, !tbaa !2428
  %5173 = add i64 %797, 1818
  store i64 %5173, i64* %PC, align 8
  %5174 = inttoptr i64 %5172 to i64*
  %5175 = load i64, i64* %5174, align 8
  store i64 %5175, i64* %RAX, align 8, !tbaa !2428
  %5176 = add i64 %797, 1822
  store i64 %5176, i64* %PC, align 8
  %5177 = load i64, i64* %5171, align 8
  store i64 %5177, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5178 = add i64 %797, 1830
  store i64 %5178, i64* %PC, align 8
  %5179 = load i64, i64* %5171, align 8
  store i64 %5179, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5180 = add i64 %797, 1838
  store i64 %5180, i64* %PC, align 8
  %5181 = load i64, i64* %5171, align 8
  store i64 %5181, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5182 = add i64 %5168, -68
  %5183 = add i64 %797, 1845
  store i64 %5183, i64* %PC, align 8
  %5184 = inttoptr i64 %5182 to i32*
  %5185 = load i32, i32* %5184, align 4
  %5186 = add i32 %5185, -1
  %5187 = zext i32 %5186 to i64
  store i64 %5187, i64* %RSI, align 8, !tbaa !2428
  %5188 = icmp eq i32 %5185, 0
  %5189 = zext i1 %5188 to i8
  store i8 %5189, i8* %82, align 1, !tbaa !2433
  %5190 = and i32 %5186, 255
  %5191 = tail call i32 @llvm.ctpop.i32(i32 %5190) #12
  %5192 = trunc i32 %5191 to i8
  %5193 = and i8 %5192, 1
  %5194 = xor i8 %5193, 1
  store i8 %5194, i8* %88, align 1, !tbaa !2447
  %5195 = xor i32 %5186, %5185
  %5196 = lshr i32 %5195, 4
  %5197 = trunc i32 %5196 to i8
  %5198 = and i8 %5197, 1
  store i8 %5198, i8* %93, align 1, !tbaa !2451
  %5199 = icmp eq i32 %5186, 0
  %5200 = zext i1 %5199 to i8
  store i8 %5200, i8* %96, align 1, !tbaa !2448
  %5201 = lshr i32 %5186, 31
  %5202 = trunc i32 %5201 to i8
  store i8 %5202, i8* %99, align 1, !tbaa !2449
  %5203 = lshr i32 %5185, 31
  %5204 = xor i32 %5201, %5203
  %5205 = add nuw nsw i32 %5204, %5203
  %5206 = icmp eq i32 %5205, 2
  %5207 = zext i1 %5206 to i8
  store i8 %5207, i8* %105, align 1, !tbaa !2450
  %5208 = add i64 %797, 1852
  store i64 %5208, i64* %PC, align 8
  %5209 = load i64, i64* %5171, align 8
  store i64 %5209, i64* %RCX, align 8, !tbaa !2428
  %5210 = add i64 %5209, 16
  %5211 = add i64 %797, 1856
  store i64 %5211, i64* %PC, align 8
  %5212 = inttoptr i64 %5210 to i32*
  %5213 = load i32, i32* %5212, align 4
  %5214 = sext i32 %5186 to i64
  %5215 = sext i32 %5213 to i64
  %5216 = mul nsw i64 %5215, %5214
  %5217 = trunc i64 %5216 to i32
  %5218 = and i64 %5216, 4294967295
  store i64 %5218, i64* %RSI, align 8, !tbaa !2428
  %5219 = shl i64 %5216, 32
  %5220 = ashr exact i64 %5219, 32
  %5221 = icmp ne i64 %5220, %5216
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %82, align 1, !tbaa !2433
  %5223 = and i32 %5217, 255
  %5224 = tail call i32 @llvm.ctpop.i32(i32 %5223) #12
  %5225 = trunc i32 %5224 to i8
  %5226 = and i8 %5225, 1
  %5227 = xor i8 %5226, 1
  store i8 %5227, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5228 = lshr i32 %5217, 31
  %5229 = trunc i32 %5228 to i8
  store i8 %5229, i8* %99, align 1, !tbaa !2449
  store i8 %5222, i8* %105, align 1, !tbaa !2450
  %5230 = load i64, i64* %RBP, align 8
  %5231 = add i64 %5230, -40
  %5232 = add i64 %797, 1860
  store i64 %5232, i64* %PC, align 8
  %5233 = inttoptr i64 %5231 to i64*
  %5234 = load i64, i64* %5233, align 8
  store i64 %5234, i64* %RCX, align 8, !tbaa !2428
  %5235 = add i64 %5234, 20
  %5236 = add i64 %797, 1864
  store i64 %5236, i64* %PC, align 8
  %5237 = inttoptr i64 %5235 to i32*
  %5238 = load i32, i32* %5237, align 4
  %5239 = shl i64 %5216, 32
  %5240 = ashr exact i64 %5239, 32
  %5241 = sext i32 %5238 to i64
  %5242 = mul nsw i64 %5241, %5240
  %5243 = and i64 %5242, 4294967295
  store i64 %5243, i64* %RSI, align 8, !tbaa !2428
  %5244 = load i64, i64* %RDX, align 8
  %5245 = trunc i64 %5242 to i32
  %5246 = trunc i64 %5244 to i32
  %5247 = add i32 %5245, %5246
  %5248 = zext i32 %5247 to i64
  store i64 %5248, i64* %RDX, align 8, !tbaa !2428
  %5249 = icmp ult i32 %5247, %5246
  %5250 = icmp ult i32 %5247, %5245
  %5251 = or i1 %5249, %5250
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %82, align 1, !tbaa !2433
  %5253 = and i32 %5247, 255
  %5254 = tail call i32 @llvm.ctpop.i32(i32 %5253) #12
  %5255 = trunc i32 %5254 to i8
  %5256 = and i8 %5255, 1
  %5257 = xor i8 %5256, 1
  store i8 %5257, i8* %88, align 1, !tbaa !2447
  %5258 = xor i64 %5242, %5244
  %5259 = trunc i64 %5258 to i32
  %5260 = xor i32 %5259, %5247
  %5261 = lshr i32 %5260, 4
  %5262 = trunc i32 %5261 to i8
  %5263 = and i8 %5262, 1
  store i8 %5263, i8* %93, align 1, !tbaa !2451
  %5264 = icmp eq i32 %5247, 0
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %96, align 1, !tbaa !2448
  %5266 = lshr i32 %5247, 31
  %5267 = trunc i32 %5266 to i8
  store i8 %5267, i8* %99, align 1, !tbaa !2449
  %5268 = lshr i32 %5246, 31
  %5269 = lshr i32 %5245, 31
  %5270 = xor i32 %5266, %5268
  %5271 = xor i32 %5266, %5269
  %5272 = add nuw nsw i32 %5270, %5271
  %5273 = icmp eq i32 %5272, 2
  %5274 = zext i1 %5273 to i8
  store i8 %5274, i8* %105, align 1, !tbaa !2450
  %5275 = add i64 %5230, -72
  %5276 = add i64 %797, 1869
  store i64 %5276, i64* %PC, align 8
  %5277 = inttoptr i64 %5275 to i32*
  %5278 = load i32, i32* %5277, align 4
  %5279 = zext i32 %5278 to i64
  store i64 %5279, i64* %RSI, align 8, !tbaa !2428
  %5280 = add i64 %797, 1873
  store i64 %5280, i64* %PC, align 8
  %5281 = load i64, i64* %5233, align 8
  store i64 %5281, i64* %RCX, align 8, !tbaa !2428
  %5282 = add i64 %5281, 20
  %5283 = add i64 %797, 1877
  store i64 %5283, i64* %PC, align 8
  %5284 = inttoptr i64 %5282 to i32*
  %5285 = load i32, i32* %5284, align 4
  %5286 = sext i32 %5278 to i64
  %5287 = sext i32 %5285 to i64
  %5288 = mul nsw i64 %5287, %5286
  %5289 = and i64 %5288, 4294967295
  store i64 %5289, i64* %RSI, align 8, !tbaa !2428
  %5290 = trunc i64 %5288 to i32
  %5291 = add i32 %5290, %5247
  %5292 = zext i32 %5291 to i64
  store i64 %5292, i64* %RDX, align 8, !tbaa !2428
  %5293 = icmp ult i32 %5291, %5247
  %5294 = icmp ult i32 %5291, %5290
  %5295 = or i1 %5293, %5294
  %5296 = zext i1 %5295 to i8
  store i8 %5296, i8* %82, align 1, !tbaa !2433
  %5297 = and i32 %5291, 255
  %5298 = tail call i32 @llvm.ctpop.i32(i32 %5297) #12
  %5299 = trunc i32 %5298 to i8
  %5300 = and i8 %5299, 1
  %5301 = xor i8 %5300, 1
  store i8 %5301, i8* %88, align 1, !tbaa !2447
  %5302 = xor i64 %5288, %5248
  %5303 = trunc i64 %5302 to i32
  %5304 = xor i32 %5303, %5291
  %5305 = lshr i32 %5304, 4
  %5306 = trunc i32 %5305 to i8
  %5307 = and i8 %5306, 1
  store i8 %5307, i8* %93, align 1, !tbaa !2451
  %5308 = icmp eq i32 %5291, 0
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %96, align 1, !tbaa !2448
  %5310 = lshr i32 %5291, 31
  %5311 = trunc i32 %5310 to i8
  store i8 %5311, i8* %99, align 1, !tbaa !2449
  %5312 = lshr i32 %5290, 31
  %5313 = xor i32 %5310, %5266
  %5314 = xor i32 %5310, %5312
  %5315 = add nuw nsw i32 %5313, %5314
  %5316 = icmp eq i32 %5315, 2
  %5317 = zext i1 %5316 to i8
  store i8 %5317, i8* %105, align 1, !tbaa !2450
  %5318 = load i64, i64* %RBP, align 8
  %5319 = add i64 %5318, -76
  %5320 = add i64 %797, 1882
  store i64 %5320, i64* %PC, align 8
  %5321 = inttoptr i64 %5319 to i32*
  %5322 = load i32, i32* %5321, align 4
  %5323 = add i32 %5322, %5291
  %5324 = zext i32 %5323 to i64
  store i64 %5324, i64* %RDX, align 8, !tbaa !2428
  %5325 = icmp ult i32 %5323, %5291
  %5326 = icmp ult i32 %5323, %5322
  %5327 = or i1 %5325, %5326
  %5328 = zext i1 %5327 to i8
  store i8 %5328, i8* %82, align 1, !tbaa !2433
  %5329 = and i32 %5323, 255
  %5330 = tail call i32 @llvm.ctpop.i32(i32 %5329) #12
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = xor i8 %5332, 1
  store i8 %5333, i8* %88, align 1, !tbaa !2447
  %5334 = xor i32 %5322, %5291
  %5335 = xor i32 %5334, %5323
  %5336 = lshr i32 %5335, 4
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  store i8 %5338, i8* %93, align 1, !tbaa !2451
  %5339 = icmp eq i32 %5323, 0
  %5340 = zext i1 %5339 to i8
  store i8 %5340, i8* %96, align 1, !tbaa !2448
  %5341 = lshr i32 %5323, 31
  %5342 = trunc i32 %5341 to i8
  store i8 %5342, i8* %99, align 1, !tbaa !2449
  %5343 = lshr i32 %5322, 31
  %5344 = xor i32 %5341, %5310
  %5345 = xor i32 %5341, %5343
  %5346 = add nuw nsw i32 %5344, %5345
  %5347 = icmp eq i32 %5346, 2
  %5348 = zext i1 %5347 to i8
  store i8 %5348, i8* %105, align 1, !tbaa !2450
  %5349 = sext i32 %5323 to i64
  store i64 %5349, i64* %RCX, align 8, !tbaa !2428
  %5350 = load i64, i64* %RAX, align 8
  %5351 = shl nsw i64 %5349, 2
  %5352 = add i64 %5350, %5351
  %5353 = add i64 %797, 1890
  store i64 %5353, i64* %PC, align 8
  %5354 = load <2 x float>, <2 x float>* %207, align 1
  %5355 = load <2 x i32>, <2 x i32>* %208, align 1
  %5356 = inttoptr i64 %5352 to float*
  %5357 = load float, float* %5356, align 4
  %5358 = extractelement <2 x float> %5354, i32 0
  %5359 = fmul float %5358, %5357
  store float %5359, float* %199, align 1, !tbaa !2452
  %5360 = bitcast <2 x float> %5354 to <2 x i32>
  %5361 = extractelement <2 x i32> %5360, i32 1
  store i32 %5361, i32* %209, align 1, !tbaa !2452
  %5362 = extractelement <2 x i32> %5355, i32 0
  store i32 %5362, i32* %210, align 1, !tbaa !2452
  %5363 = extractelement <2 x i32> %5355, i32 1
  store i32 %5363, i32* %211, align 1, !tbaa !2452
  %5364 = load <2 x float>, <2 x float>* %192, align 1
  %5365 = load <2 x i32>, <2 x i32>* %197, align 1
  %5366 = load <2 x float>, <2 x float>* %207, align 1
  %5367 = extractelement <2 x float> %5364, i32 0
  %5368 = extractelement <2 x float> %5366, i32 0
  %5369 = fadd float %5367, %5368
  store float %5369, float* %193, align 1, !tbaa !2452
  %5370 = bitcast <2 x float> %5364 to <2 x i32>
  %5371 = extractelement <2 x i32> %5370, i32 1
  store i32 %5371, i32* %188, align 1, !tbaa !2452
  %5372 = extractelement <2 x i32> %5365, i32 0
  store i32 %5372, i32* %189, align 1, !tbaa !2452
  %5373 = extractelement <2 x i32> %5365, i32 1
  store i32 %5373, i32* %191, align 1, !tbaa !2452
  %5374 = add i64 %5318, -32
  %5375 = add i64 %797, 1898
  store i64 %5375, i64* %PC, align 8
  %5376 = inttoptr i64 %5374 to i64*
  %5377 = load i64, i64* %5376, align 8
  store i64 %5377, i64* %RAX, align 8, !tbaa !2428
  %5378 = add i64 %797, 1901
  store i64 %5378, i64* %PC, align 8
  %5379 = inttoptr i64 %5377 to i64*
  %5380 = load i64, i64* %5379, align 8
  store i64 %5380, i64* %RAX, align 8, !tbaa !2428
  %5381 = add i64 %797, 1905
  store i64 %5381, i64* %PC, align 8
  %5382 = load i64, i64* %5376, align 8
  store i64 %5382, i64* %RCX, align 8, !tbaa !2428
  %5383 = add i64 %5382, 12
  %5384 = add i64 %797, 1908
  store i64 %5384, i64* %PC, align 8
  %5385 = inttoptr i64 %5383 to i32*
  %5386 = load i32, i32* %5385, align 4
  %5387 = zext i32 %5386 to i64
  store i64 %5387, i64* %RDX, align 8, !tbaa !2428
  %5388 = load i64, i64* %RBP, align 8
  %5389 = add i64 %5388, -32
  %5390 = add i64 %797, 1915
  store i64 %5390, i64* %PC, align 8
  %5391 = inttoptr i64 %5389 to i64*
  %5392 = load i64, i64* %5391, align 8
  store i64 %5392, i64* %RCX, align 8, !tbaa !2428
  %5393 = add i64 %5392, 16
  %5394 = add i64 %797, 1919
  store i64 %5394, i64* %PC, align 8
  %5395 = inttoptr i64 %5393 to i32*
  %5396 = load i32, i32* %5395, align 4
  %5397 = sext i32 %5386 to i64
  %5398 = sext i32 %5396 to i64
  %5399 = mul nsw i64 %5398, %5397
  %5400 = trunc i64 %5399 to i32
  %5401 = and i64 %5399, 4294967295
  store i64 %5401, i64* %RDX, align 8, !tbaa !2428
  %5402 = shl i64 %5399, 32
  %5403 = ashr exact i64 %5402, 32
  %5404 = icmp ne i64 %5403, %5399
  %5405 = zext i1 %5404 to i8
  store i8 %5405, i8* %82, align 1, !tbaa !2433
  %5406 = and i32 %5400, 255
  %5407 = tail call i32 @llvm.ctpop.i32(i32 %5406) #12
  %5408 = trunc i32 %5407 to i8
  %5409 = and i8 %5408, 1
  %5410 = xor i8 %5409, 1
  store i8 %5410, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5411 = lshr i32 %5400, 31
  %5412 = trunc i32 %5411 to i8
  store i8 %5412, i8* %99, align 1, !tbaa !2449
  store i8 %5405, i8* %105, align 1, !tbaa !2450
  %5413 = add i64 %797, 1923
  store i64 %5413, i64* %PC, align 8
  %5414 = load i64, i64* %5391, align 8
  store i64 %5414, i64* %RCX, align 8, !tbaa !2428
  %5415 = add i64 %5414, 20
  %5416 = add i64 %797, 1927
  store i64 %5416, i64* %PC, align 8
  %5417 = inttoptr i64 %5415 to i32*
  %5418 = load i32, i32* %5417, align 4
  %5419 = shl i64 %5399, 32
  %5420 = ashr exact i64 %5419, 32
  %5421 = sext i32 %5418 to i64
  %5422 = mul nsw i64 %5421, %5420
  %5423 = trunc i64 %5422 to i32
  %5424 = and i64 %5422, 4294967295
  store i64 %5424, i64* %RDX, align 8, !tbaa !2428
  %5425 = shl i64 %5422, 32
  %5426 = ashr exact i64 %5425, 32
  %5427 = icmp ne i64 %5426, %5422
  %5428 = zext i1 %5427 to i8
  store i8 %5428, i8* %82, align 1, !tbaa !2433
  %5429 = and i32 %5423, 255
  %5430 = tail call i32 @llvm.ctpop.i32(i32 %5429) #12
  %5431 = trunc i32 %5430 to i8
  %5432 = and i8 %5431, 1
  %5433 = xor i8 %5432, 1
  store i8 %5433, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5434 = lshr i32 %5423, 31
  %5435 = trunc i32 %5434 to i8
  store i8 %5435, i8* %99, align 1, !tbaa !2449
  store i8 %5428, i8* %105, align 1, !tbaa !2450
  %5436 = add i64 %5388, -68
  %5437 = add i64 %797, 1930
  store i64 %5437, i64* %PC, align 8
  %5438 = inttoptr i64 %5436 to i32*
  %5439 = load i32, i32* %5438, align 4
  %5440 = zext i32 %5439 to i64
  store i64 %5440, i64* %RSI, align 8, !tbaa !2428
  %5441 = add i64 %797, 1934
  store i64 %5441, i64* %PC, align 8
  %5442 = load i64, i64* %5391, align 8
  store i64 %5442, i64* %RCX, align 8, !tbaa !2428
  %5443 = add i64 %5442, 16
  %5444 = add i64 %797, 1938
  store i64 %5444, i64* %PC, align 8
  %5445 = inttoptr i64 %5443 to i32*
  %5446 = load i32, i32* %5445, align 4
  %5447 = sext i32 %5439 to i64
  %5448 = sext i32 %5446 to i64
  %5449 = mul nsw i64 %5448, %5447
  %5450 = trunc i64 %5449 to i32
  %5451 = and i64 %5449, 4294967295
  store i64 %5451, i64* %RSI, align 8, !tbaa !2428
  %5452 = shl i64 %5449, 32
  %5453 = ashr exact i64 %5452, 32
  %5454 = icmp ne i64 %5453, %5449
  %5455 = zext i1 %5454 to i8
  store i8 %5455, i8* %82, align 1, !tbaa !2433
  %5456 = and i32 %5450, 255
  %5457 = tail call i32 @llvm.ctpop.i32(i32 %5456) #12
  %5458 = trunc i32 %5457 to i8
  %5459 = and i8 %5458, 1
  %5460 = xor i8 %5459, 1
  store i8 %5460, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5461 = lshr i32 %5450, 31
  %5462 = trunc i32 %5461 to i8
  store i8 %5462, i8* %99, align 1, !tbaa !2449
  store i8 %5455, i8* %105, align 1, !tbaa !2450
  %5463 = load i64, i64* %RBP, align 8
  %5464 = add i64 %5463, -32
  %5465 = add i64 %797, 1942
  store i64 %5465, i64* %PC, align 8
  %5466 = inttoptr i64 %5464 to i64*
  %5467 = load i64, i64* %5466, align 8
  store i64 %5467, i64* %RCX, align 8, !tbaa !2428
  %5468 = add i64 %5467, 20
  %5469 = add i64 %797, 1946
  store i64 %5469, i64* %PC, align 8
  %5470 = inttoptr i64 %5468 to i32*
  %5471 = load i32, i32* %5470, align 4
  %5472 = shl i64 %5449, 32
  %5473 = ashr exact i64 %5472, 32
  %5474 = sext i32 %5471 to i64
  %5475 = mul nsw i64 %5474, %5473
  %5476 = and i64 %5475, 4294967295
  store i64 %5476, i64* %RSI, align 8, !tbaa !2428
  %5477 = trunc i64 %5475 to i32
  %5478 = trunc i64 %5422 to i32
  %5479 = add i32 %5477, %5478
  %5480 = zext i32 %5479 to i64
  store i64 %5480, i64* %RDX, align 8, !tbaa !2428
  %5481 = icmp ult i32 %5479, %5478
  %5482 = icmp ult i32 %5479, %5477
  %5483 = or i1 %5481, %5482
  %5484 = zext i1 %5483 to i8
  store i8 %5484, i8* %82, align 1, !tbaa !2433
  %5485 = and i32 %5479, 255
  %5486 = tail call i32 @llvm.ctpop.i32(i32 %5485) #12
  %5487 = trunc i32 %5486 to i8
  %5488 = and i8 %5487, 1
  %5489 = xor i8 %5488, 1
  store i8 %5489, i8* %88, align 1, !tbaa !2447
  %5490 = xor i64 %5475, %5422
  %5491 = trunc i64 %5490 to i32
  %5492 = xor i32 %5491, %5479
  %5493 = lshr i32 %5492, 4
  %5494 = trunc i32 %5493 to i8
  %5495 = and i8 %5494, 1
  store i8 %5495, i8* %93, align 1, !tbaa !2451
  %5496 = icmp eq i32 %5479, 0
  %5497 = zext i1 %5496 to i8
  store i8 %5497, i8* %96, align 1, !tbaa !2448
  %5498 = lshr i32 %5479, 31
  %5499 = trunc i32 %5498 to i8
  store i8 %5499, i8* %99, align 1, !tbaa !2449
  %5500 = lshr i32 %5478, 31
  %5501 = lshr i32 %5477, 31
  %5502 = xor i32 %5498, %5500
  %5503 = xor i32 %5498, %5501
  %5504 = add nuw nsw i32 %5502, %5503
  %5505 = icmp eq i32 %5504, 2
  %5506 = zext i1 %5505 to i8
  store i8 %5506, i8* %105, align 1, !tbaa !2450
  %5507 = add i64 %5463, -72
  %5508 = add i64 %797, 1951
  store i64 %5508, i64* %PC, align 8
  %5509 = inttoptr i64 %5507 to i32*
  %5510 = load i32, i32* %5509, align 4
  %5511 = zext i32 %5510 to i64
  store i64 %5511, i64* %RSI, align 8, !tbaa !2428
  %5512 = add i64 %797, 1955
  store i64 %5512, i64* %PC, align 8
  %5513 = load i64, i64* %5466, align 8
  store i64 %5513, i64* %RCX, align 8, !tbaa !2428
  %5514 = add i64 %5513, 20
  %5515 = add i64 %797, 1959
  store i64 %5515, i64* %PC, align 8
  %5516 = inttoptr i64 %5514 to i32*
  %5517 = load i32, i32* %5516, align 4
  %5518 = sext i32 %5510 to i64
  %5519 = sext i32 %5517 to i64
  %5520 = mul nsw i64 %5519, %5518
  %5521 = and i64 %5520, 4294967295
  store i64 %5521, i64* %RSI, align 8, !tbaa !2428
  %5522 = trunc i64 %5520 to i32
  %5523 = add i32 %5522, %5479
  %5524 = zext i32 %5523 to i64
  store i64 %5524, i64* %RDX, align 8, !tbaa !2428
  %5525 = icmp ult i32 %5523, %5479
  %5526 = icmp ult i32 %5523, %5522
  %5527 = or i1 %5525, %5526
  %5528 = zext i1 %5527 to i8
  store i8 %5528, i8* %82, align 1, !tbaa !2433
  %5529 = and i32 %5523, 255
  %5530 = tail call i32 @llvm.ctpop.i32(i32 %5529) #12
  %5531 = trunc i32 %5530 to i8
  %5532 = and i8 %5531, 1
  %5533 = xor i8 %5532, 1
  store i8 %5533, i8* %88, align 1, !tbaa !2447
  %5534 = xor i64 %5520, %5480
  %5535 = trunc i64 %5534 to i32
  %5536 = xor i32 %5535, %5523
  %5537 = lshr i32 %5536, 4
  %5538 = trunc i32 %5537 to i8
  %5539 = and i8 %5538, 1
  store i8 %5539, i8* %93, align 1, !tbaa !2451
  %5540 = icmp eq i32 %5523, 0
  %5541 = zext i1 %5540 to i8
  store i8 %5541, i8* %96, align 1, !tbaa !2448
  %5542 = lshr i32 %5523, 31
  %5543 = trunc i32 %5542 to i8
  store i8 %5543, i8* %99, align 1, !tbaa !2449
  %5544 = lshr i32 %5522, 31
  %5545 = xor i32 %5542, %5498
  %5546 = xor i32 %5542, %5544
  %5547 = add nuw nsw i32 %5545, %5546
  %5548 = icmp eq i32 %5547, 2
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %105, align 1, !tbaa !2450
  %5550 = load i64, i64* %RBP, align 8
  %5551 = add i64 %5550, -76
  %5552 = add i64 %797, 1964
  store i64 %5552, i64* %PC, align 8
  %5553 = inttoptr i64 %5551 to i32*
  %5554 = load i32, i32* %5553, align 4
  %5555 = add i32 %5554, %5523
  %5556 = zext i32 %5555 to i64
  store i64 %5556, i64* %RDX, align 8, !tbaa !2428
  %5557 = icmp ult i32 %5555, %5523
  %5558 = icmp ult i32 %5555, %5554
  %5559 = or i1 %5557, %5558
  %5560 = zext i1 %5559 to i8
  store i8 %5560, i8* %82, align 1, !tbaa !2433
  %5561 = and i32 %5555, 255
  %5562 = tail call i32 @llvm.ctpop.i32(i32 %5561) #12
  %5563 = trunc i32 %5562 to i8
  %5564 = and i8 %5563, 1
  %5565 = xor i8 %5564, 1
  store i8 %5565, i8* %88, align 1, !tbaa !2447
  %5566 = xor i32 %5554, %5523
  %5567 = xor i32 %5566, %5555
  %5568 = lshr i32 %5567, 4
  %5569 = trunc i32 %5568 to i8
  %5570 = and i8 %5569, 1
  store i8 %5570, i8* %93, align 1, !tbaa !2451
  %5571 = icmp eq i32 %5555, 0
  %5572 = zext i1 %5571 to i8
  store i8 %5572, i8* %96, align 1, !tbaa !2448
  %5573 = lshr i32 %5555, 31
  %5574 = trunc i32 %5573 to i8
  store i8 %5574, i8* %99, align 1, !tbaa !2449
  %5575 = lshr i32 %5554, 31
  %5576 = xor i32 %5573, %5542
  %5577 = xor i32 %5573, %5575
  %5578 = add nuw nsw i32 %5576, %5577
  %5579 = icmp eq i32 %5578, 2
  %5580 = zext i1 %5579 to i8
  store i8 %5580, i8* %105, align 1, !tbaa !2450
  %5581 = sext i32 %5555 to i64
  store i64 %5581, i64* %RCX, align 8, !tbaa !2428
  %5582 = load i64, i64* %RAX, align 8
  %5583 = shl nsw i64 %5581, 2
  %5584 = add i64 %5582, %5583
  %5585 = add i64 %797, 1972
  store i64 %5585, i64* %PC, align 8
  %5586 = inttoptr i64 %5584 to i32*
  %5587 = load i32, i32* %5586, align 4
  store i32 %5587, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %5588 = add i64 %5550, -40
  %5589 = add i64 %797, 1976
  store i64 %5589, i64* %PC, align 8
  %5590 = inttoptr i64 %5588 to i64*
  %5591 = load i64, i64* %5590, align 8
  store i64 %5591, i64* %RAX, align 8, !tbaa !2428
  %5592 = add i64 %797, 1979
  store i64 %5592, i64* %PC, align 8
  %5593 = inttoptr i64 %5591 to i64*
  %5594 = load i64, i64* %5593, align 8
  store i64 %5594, i64* %RAX, align 8, !tbaa !2428
  %5595 = add i64 %797, 1983
  store i64 %5595, i64* %PC, align 8
  %5596 = load i64, i64* %5590, align 8
  store i64 %5596, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5597 = add i64 %797, 1991
  store i64 %5597, i64* %PC, align 8
  %5598 = load i64, i64* %5590, align 8
  store i64 %5598, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5599 = add i64 %797, 1999
  store i64 %5599, i64* %PC, align 8
  %5600 = load i64, i64* %5590, align 8
  store i64 %5600, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5601 = load i64, i64* %RBP, align 8
  %5602 = add i64 %5601, -68
  %5603 = add i64 %797, 2006
  store i64 %5603, i64* %PC, align 8
  %5604 = inttoptr i64 %5602 to i32*
  %5605 = load i32, i32* %5604, align 4
  %5606 = zext i32 %5605 to i64
  store i64 %5606, i64* %RSI, align 8, !tbaa !2428
  %5607 = add i64 %5601, -40
  %5608 = add i64 %797, 2010
  store i64 %5608, i64* %PC, align 8
  %5609 = inttoptr i64 %5607 to i64*
  %5610 = load i64, i64* %5609, align 8
  store i64 %5610, i64* %RCX, align 8, !tbaa !2428
  %5611 = add i64 %5610, 16
  %5612 = add i64 %797, 2014
  store i64 %5612, i64* %PC, align 8
  %5613 = inttoptr i64 %5611 to i32*
  %5614 = load i32, i32* %5613, align 4
  %5615 = sext i32 %5605 to i64
  %5616 = sext i32 %5614 to i64
  %5617 = mul nsw i64 %5616, %5615
  %5618 = trunc i64 %5617 to i32
  %5619 = and i64 %5617, 4294967295
  store i64 %5619, i64* %RSI, align 8, !tbaa !2428
  %5620 = shl i64 %5617, 32
  %5621 = ashr exact i64 %5620, 32
  %5622 = icmp ne i64 %5621, %5617
  %5623 = zext i1 %5622 to i8
  store i8 %5623, i8* %82, align 1, !tbaa !2433
  %5624 = and i32 %5618, 255
  %5625 = tail call i32 @llvm.ctpop.i32(i32 %5624) #12
  %5626 = trunc i32 %5625 to i8
  %5627 = and i8 %5626, 1
  %5628 = xor i8 %5627, 1
  store i8 %5628, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5629 = lshr i32 %5618, 31
  %5630 = trunc i32 %5629 to i8
  store i8 %5630, i8* %99, align 1, !tbaa !2449
  store i8 %5623, i8* %105, align 1, !tbaa !2450
  %5631 = add i64 %797, 2018
  store i64 %5631, i64* %PC, align 8
  %5632 = load i64, i64* %5609, align 8
  store i64 %5632, i64* %RCX, align 8, !tbaa !2428
  %5633 = add i64 %5632, 20
  %5634 = add i64 %797, 2022
  store i64 %5634, i64* %PC, align 8
  %5635 = inttoptr i64 %5633 to i32*
  %5636 = load i32, i32* %5635, align 4
  %5637 = shl i64 %5617, 32
  %5638 = ashr exact i64 %5637, 32
  %5639 = sext i32 %5636 to i64
  %5640 = mul nsw i64 %5639, %5638
  %5641 = and i64 %5640, 4294967295
  store i64 %5641, i64* %RSI, align 8, !tbaa !2428
  %5642 = trunc i64 %5640 to i32
  %5643 = and i64 %5640, 4294967295
  store i64 %5643, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %5644 = and i32 %5642, 255
  %5645 = tail call i32 @llvm.ctpop.i32(i32 %5644) #12
  %5646 = trunc i32 %5645 to i8
  %5647 = and i8 %5646, 1
  %5648 = xor i8 %5647, 1
  store i8 %5648, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %5649 = icmp eq i32 %5642, 0
  %5650 = zext i1 %5649 to i8
  store i8 %5650, i8* %96, align 1, !tbaa !2448
  %5651 = lshr i32 %5642, 31
  %5652 = trunc i32 %5651 to i8
  store i8 %5652, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %5653 = add i64 %5601, -72
  %5654 = add i64 %797, 2027
  store i64 %5654, i64* %PC, align 8
  %5655 = inttoptr i64 %5653 to i32*
  %5656 = load i32, i32* %5655, align 4
  %5657 = add i32 %5656, -1
  %5658 = zext i32 %5657 to i64
  store i64 %5658, i64* %RSI, align 8, !tbaa !2428
  %5659 = icmp eq i32 %5656, 0
  %5660 = zext i1 %5659 to i8
  store i8 %5660, i8* %82, align 1, !tbaa !2433
  %5661 = and i32 %5657, 255
  %5662 = tail call i32 @llvm.ctpop.i32(i32 %5661) #12
  %5663 = trunc i32 %5662 to i8
  %5664 = and i8 %5663, 1
  %5665 = xor i8 %5664, 1
  store i8 %5665, i8* %88, align 1, !tbaa !2447
  %5666 = xor i32 %5657, %5656
  %5667 = lshr i32 %5666, 4
  %5668 = trunc i32 %5667 to i8
  %5669 = and i8 %5668, 1
  store i8 %5669, i8* %93, align 1, !tbaa !2451
  %5670 = icmp eq i32 %5657, 0
  %5671 = zext i1 %5670 to i8
  store i8 %5671, i8* %96, align 1, !tbaa !2448
  %5672 = lshr i32 %5657, 31
  %5673 = trunc i32 %5672 to i8
  store i8 %5673, i8* %99, align 1, !tbaa !2449
  %5674 = lshr i32 %5656, 31
  %5675 = xor i32 %5672, %5674
  %5676 = add nuw nsw i32 %5675, %5674
  %5677 = icmp eq i32 %5676, 2
  %5678 = zext i1 %5677 to i8
  store i8 %5678, i8* %105, align 1, !tbaa !2450
  %5679 = load i64, i64* %RBP, align 8
  %5680 = add i64 %5679, -40
  %5681 = add i64 %797, 2034
  store i64 %5681, i64* %PC, align 8
  %5682 = inttoptr i64 %5680 to i64*
  %5683 = load i64, i64* %5682, align 8
  store i64 %5683, i64* %RCX, align 8, !tbaa !2428
  %5684 = add i64 %5683, 20
  %5685 = add i64 %797, 2038
  store i64 %5685, i64* %PC, align 8
  %5686 = inttoptr i64 %5684 to i32*
  %5687 = load i32, i32* %5686, align 4
  %5688 = sext i32 %5657 to i64
  %5689 = sext i32 %5687 to i64
  %5690 = mul nsw i64 %5689, %5688
  %5691 = and i64 %5690, 4294967295
  store i64 %5691, i64* %RSI, align 8, !tbaa !2428
  %5692 = trunc i64 %5690 to i32
  %5693 = add i32 %5692, %5642
  %5694 = zext i32 %5693 to i64
  store i64 %5694, i64* %RDX, align 8, !tbaa !2428
  %5695 = icmp ult i32 %5693, %5642
  %5696 = icmp ult i32 %5693, %5692
  %5697 = or i1 %5695, %5696
  %5698 = zext i1 %5697 to i8
  store i8 %5698, i8* %82, align 1, !tbaa !2433
  %5699 = and i32 %5693, 255
  %5700 = tail call i32 @llvm.ctpop.i32(i32 %5699) #12
  %5701 = trunc i32 %5700 to i8
  %5702 = and i8 %5701, 1
  %5703 = xor i8 %5702, 1
  store i8 %5703, i8* %88, align 1, !tbaa !2447
  %5704 = xor i64 %5690, %5640
  %5705 = trunc i64 %5704 to i32
  %5706 = xor i32 %5705, %5693
  %5707 = lshr i32 %5706, 4
  %5708 = trunc i32 %5707 to i8
  %5709 = and i8 %5708, 1
  store i8 %5709, i8* %93, align 1, !tbaa !2451
  %5710 = icmp eq i32 %5693, 0
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %96, align 1, !tbaa !2448
  %5712 = lshr i32 %5693, 31
  %5713 = trunc i32 %5712 to i8
  store i8 %5713, i8* %99, align 1, !tbaa !2449
  %5714 = lshr i32 %5692, 31
  %5715 = xor i32 %5712, %5651
  %5716 = xor i32 %5712, %5714
  %5717 = add nuw nsw i32 %5715, %5716
  %5718 = icmp eq i32 %5717, 2
  %5719 = zext i1 %5718 to i8
  store i8 %5719, i8* %105, align 1, !tbaa !2450
  %5720 = add i64 %5679, -76
  %5721 = add i64 %797, 2043
  store i64 %5721, i64* %PC, align 8
  %5722 = inttoptr i64 %5720 to i32*
  %5723 = load i32, i32* %5722, align 4
  %5724 = add i32 %5723, %5693
  %5725 = zext i32 %5724 to i64
  store i64 %5725, i64* %RDX, align 8, !tbaa !2428
  %5726 = icmp ult i32 %5724, %5693
  %5727 = icmp ult i32 %5724, %5723
  %5728 = or i1 %5726, %5727
  %5729 = zext i1 %5728 to i8
  store i8 %5729, i8* %82, align 1, !tbaa !2433
  %5730 = and i32 %5724, 255
  %5731 = tail call i32 @llvm.ctpop.i32(i32 %5730) #12
  %5732 = trunc i32 %5731 to i8
  %5733 = and i8 %5732, 1
  %5734 = xor i8 %5733, 1
  store i8 %5734, i8* %88, align 1, !tbaa !2447
  %5735 = xor i32 %5723, %5693
  %5736 = xor i32 %5735, %5724
  %5737 = lshr i32 %5736, 4
  %5738 = trunc i32 %5737 to i8
  %5739 = and i8 %5738, 1
  store i8 %5739, i8* %93, align 1, !tbaa !2451
  %5740 = icmp eq i32 %5724, 0
  %5741 = zext i1 %5740 to i8
  store i8 %5741, i8* %96, align 1, !tbaa !2448
  %5742 = lshr i32 %5724, 31
  %5743 = trunc i32 %5742 to i8
  store i8 %5743, i8* %99, align 1, !tbaa !2449
  %5744 = lshr i32 %5723, 31
  %5745 = xor i32 %5742, %5712
  %5746 = xor i32 %5742, %5744
  %5747 = add nuw nsw i32 %5745, %5746
  %5748 = icmp eq i32 %5747, 2
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %105, align 1, !tbaa !2450
  %5750 = sext i32 %5724 to i64
  store i64 %5750, i64* %RCX, align 8, !tbaa !2428
  %5751 = load i64, i64* %RAX, align 8
  %5752 = shl nsw i64 %5750, 2
  %5753 = add i64 %5751, %5752
  %5754 = add i64 %797, 2051
  store i64 %5754, i64* %PC, align 8
  %5755 = load <2 x float>, <2 x float>* %207, align 1
  %5756 = load <2 x i32>, <2 x i32>* %208, align 1
  %5757 = inttoptr i64 %5753 to float*
  %5758 = load float, float* %5757, align 4
  %5759 = extractelement <2 x float> %5755, i32 0
  %5760 = fmul float %5759, %5758
  store float %5760, float* %199, align 1, !tbaa !2452
  %5761 = bitcast <2 x float> %5755 to <2 x i32>
  %5762 = extractelement <2 x i32> %5761, i32 1
  store i32 %5762, i32* %209, align 1, !tbaa !2452
  %5763 = extractelement <2 x i32> %5756, i32 0
  store i32 %5763, i32* %210, align 1, !tbaa !2452
  %5764 = extractelement <2 x i32> %5756, i32 1
  store i32 %5764, i32* %211, align 1, !tbaa !2452
  %5765 = load <2 x float>, <2 x float>* %192, align 1
  %5766 = load <2 x i32>, <2 x i32>* %197, align 1
  %5767 = load <2 x float>, <2 x float>* %207, align 1
  %5768 = extractelement <2 x float> %5765, i32 0
  %5769 = extractelement <2 x float> %5767, i32 0
  %5770 = fadd float %5768, %5769
  store float %5770, float* %193, align 1, !tbaa !2452
  %5771 = bitcast <2 x float> %5765 to <2 x i32>
  %5772 = extractelement <2 x i32> %5771, i32 1
  store i32 %5772, i32* %188, align 1, !tbaa !2452
  %5773 = extractelement <2 x i32> %5766, i32 0
  store i32 %5773, i32* %189, align 1, !tbaa !2452
  %5774 = extractelement <2 x i32> %5766, i32 1
  store i32 %5774, i32* %191, align 1, !tbaa !2452
  %5775 = load i64, i64* %RBP, align 8
  %5776 = add i64 %5775, -32
  %5777 = add i64 %797, 2059
  store i64 %5777, i64* %PC, align 8
  %5778 = inttoptr i64 %5776 to i64*
  %5779 = load i64, i64* %5778, align 8
  store i64 %5779, i64* %RAX, align 8, !tbaa !2428
  %5780 = add i64 %797, 2062
  store i64 %5780, i64* %PC, align 8
  %5781 = inttoptr i64 %5779 to i64*
  %5782 = load i64, i64* %5781, align 8
  store i64 %5782, i64* %RAX, align 8, !tbaa !2428
  %5783 = add i64 %797, 2066
  store i64 %5783, i64* %PC, align 8
  %5784 = load i64, i64* %5778, align 8
  store i64 %5784, i64* %RCX, align 8, !tbaa !2428
  %5785 = add i64 %5784, 12
  %5786 = add i64 %797, 2069
  store i64 %5786, i64* %PC, align 8
  %5787 = inttoptr i64 %5785 to i32*
  %5788 = load i32, i32* %5787, align 4
  %5789 = shl i32 %5788, 1
  %5790 = icmp slt i32 %5788, 0
  %5791 = icmp slt i32 %5789, 0
  %5792 = xor i1 %5790, %5791
  %5793 = zext i32 %5789 to i64
  store i64 %5793, i64* %RDX, align 8, !tbaa !2428
  %.lobit8 = lshr i32 %5788, 31
  %5794 = trunc i32 %.lobit8 to i8
  store i8 %5794, i8* %82, align 1, !tbaa !2432
  %5795 = and i32 %5789, 254
  %5796 = tail call i32 @llvm.ctpop.i32(i32 %5795) #12
  %5797 = trunc i32 %5796 to i8
  %5798 = and i8 %5797, 1
  %5799 = xor i8 %5798, 1
  store i8 %5799, i8* %88, align 1, !tbaa !2432
  store i8 0, i8* %93, align 1, !tbaa !2432
  %5800 = icmp eq i32 %5789, 0
  %5801 = zext i1 %5800 to i8
  store i8 %5801, i8* %96, align 1, !tbaa !2432
  %5802 = lshr i32 %5788, 30
  %5803 = trunc i32 %5802 to i8
  %5804 = and i8 %5803, 1
  store i8 %5804, i8* %99, align 1, !tbaa !2432
  %5805 = zext i1 %5792 to i8
  store i8 %5805, i8* %105, align 1, !tbaa !2432
  %5806 = add i64 %797, 2076
  store i64 %5806, i64* %PC, align 8
  %5807 = load i64, i64* %5778, align 8
  store i64 %5807, i64* %RCX, align 8, !tbaa !2428
  %5808 = add i64 %5807, 16
  %5809 = add i64 %797, 2080
  store i64 %5809, i64* %PC, align 8
  %5810 = inttoptr i64 %5808 to i32*
  %5811 = load i32, i32* %5810, align 4
  %5812 = sext i32 %5789 to i64
  %5813 = sext i32 %5811 to i64
  %5814 = mul nsw i64 %5813, %5812
  %5815 = trunc i64 %5814 to i32
  %5816 = and i64 %5814, 4294967294
  store i64 %5816, i64* %RDX, align 8, !tbaa !2428
  %5817 = shl i64 %5814, 32
  %5818 = ashr exact i64 %5817, 32
  %5819 = icmp ne i64 %5818, %5814
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %82, align 1, !tbaa !2433
  %5821 = and i32 %5815, 254
  %5822 = tail call i32 @llvm.ctpop.i32(i32 %5821) #12
  %5823 = trunc i32 %5822 to i8
  %5824 = and i8 %5823, 1
  %5825 = xor i8 %5824, 1
  store i8 %5825, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5826 = lshr i32 %5815, 31
  %5827 = trunc i32 %5826 to i8
  store i8 %5827, i8* %99, align 1, !tbaa !2449
  store i8 %5820, i8* %105, align 1, !tbaa !2450
  %5828 = add i64 %797, 2084
  store i64 %5828, i64* %PC, align 8
  %5829 = load i64, i64* %5778, align 8
  store i64 %5829, i64* %RCX, align 8, !tbaa !2428
  %5830 = add i64 %5829, 20
  %5831 = add i64 %797, 2088
  store i64 %5831, i64* %PC, align 8
  %5832 = inttoptr i64 %5830 to i32*
  %5833 = load i32, i32* %5832, align 4
  %5834 = shl i64 %5814, 32
  %5835 = ashr exact i64 %5834, 32
  %5836 = sext i32 %5833 to i64
  %5837 = mul nsw i64 %5836, %5835
  %5838 = trunc i64 %5837 to i32
  %5839 = and i64 %5837, 4294967295
  store i64 %5839, i64* %RDX, align 8, !tbaa !2428
  %5840 = shl i64 %5837, 32
  %5841 = ashr exact i64 %5840, 32
  %5842 = icmp ne i64 %5841, %5837
  %5843 = zext i1 %5842 to i8
  store i8 %5843, i8* %82, align 1, !tbaa !2433
  %5844 = and i32 %5838, 255
  %5845 = tail call i32 @llvm.ctpop.i32(i32 %5844) #12
  %5846 = trunc i32 %5845 to i8
  %5847 = and i8 %5846, 1
  %5848 = xor i8 %5847, 1
  store i8 %5848, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5849 = lshr i32 %5838, 31
  %5850 = trunc i32 %5849 to i8
  store i8 %5850, i8* %99, align 1, !tbaa !2449
  store i8 %5843, i8* %105, align 1, !tbaa !2450
  %5851 = load i64, i64* %RBP, align 8
  %5852 = add i64 %5851, -68
  %5853 = add i64 %797, 2091
  store i64 %5853, i64* %PC, align 8
  %5854 = inttoptr i64 %5852 to i32*
  %5855 = load i32, i32* %5854, align 4
  %5856 = zext i32 %5855 to i64
  store i64 %5856, i64* %RSI, align 8, !tbaa !2428
  %5857 = add i64 %5851, -32
  %5858 = add i64 %797, 2095
  store i64 %5858, i64* %PC, align 8
  %5859 = inttoptr i64 %5857 to i64*
  %5860 = load i64, i64* %5859, align 8
  store i64 %5860, i64* %RCX, align 8, !tbaa !2428
  %5861 = add i64 %5860, 16
  %5862 = add i64 %797, 2099
  store i64 %5862, i64* %PC, align 8
  %5863 = inttoptr i64 %5861 to i32*
  %5864 = load i32, i32* %5863, align 4
  %5865 = sext i32 %5855 to i64
  %5866 = sext i32 %5864 to i64
  %5867 = mul nsw i64 %5866, %5865
  %5868 = trunc i64 %5867 to i32
  %5869 = and i64 %5867, 4294967295
  store i64 %5869, i64* %RSI, align 8, !tbaa !2428
  %5870 = shl i64 %5867, 32
  %5871 = ashr exact i64 %5870, 32
  %5872 = icmp ne i64 %5871, %5867
  %5873 = zext i1 %5872 to i8
  store i8 %5873, i8* %82, align 1, !tbaa !2433
  %5874 = and i32 %5868, 255
  %5875 = tail call i32 @llvm.ctpop.i32(i32 %5874) #12
  %5876 = trunc i32 %5875 to i8
  %5877 = and i8 %5876, 1
  %5878 = xor i8 %5877, 1
  store i8 %5878, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %5879 = lshr i32 %5868, 31
  %5880 = trunc i32 %5879 to i8
  store i8 %5880, i8* %99, align 1, !tbaa !2449
  store i8 %5873, i8* %105, align 1, !tbaa !2450
  %5881 = add i64 %797, 2103
  store i64 %5881, i64* %PC, align 8
  %5882 = load i64, i64* %5859, align 8
  store i64 %5882, i64* %RCX, align 8, !tbaa !2428
  %5883 = add i64 %5882, 20
  %5884 = add i64 %797, 2107
  store i64 %5884, i64* %PC, align 8
  %5885 = inttoptr i64 %5883 to i32*
  %5886 = load i32, i32* %5885, align 4
  %5887 = shl i64 %5867, 32
  %5888 = ashr exact i64 %5887, 32
  %5889 = sext i32 %5886 to i64
  %5890 = mul nsw i64 %5889, %5888
  %5891 = and i64 %5890, 4294967295
  store i64 %5891, i64* %RSI, align 8, !tbaa !2428
  %5892 = trunc i64 %5890 to i32
  %5893 = trunc i64 %5837 to i32
  %5894 = add i32 %5892, %5893
  %5895 = zext i32 %5894 to i64
  store i64 %5895, i64* %RDX, align 8, !tbaa !2428
  %5896 = icmp ult i32 %5894, %5893
  %5897 = icmp ult i32 %5894, %5892
  %5898 = or i1 %5896, %5897
  %5899 = zext i1 %5898 to i8
  store i8 %5899, i8* %82, align 1, !tbaa !2433
  %5900 = and i32 %5894, 255
  %5901 = tail call i32 @llvm.ctpop.i32(i32 %5900) #12
  %5902 = trunc i32 %5901 to i8
  %5903 = and i8 %5902, 1
  %5904 = xor i8 %5903, 1
  store i8 %5904, i8* %88, align 1, !tbaa !2447
  %5905 = xor i64 %5890, %5837
  %5906 = trunc i64 %5905 to i32
  %5907 = xor i32 %5906, %5894
  %5908 = lshr i32 %5907, 4
  %5909 = trunc i32 %5908 to i8
  %5910 = and i8 %5909, 1
  store i8 %5910, i8* %93, align 1, !tbaa !2451
  %5911 = icmp eq i32 %5894, 0
  %5912 = zext i1 %5911 to i8
  store i8 %5912, i8* %96, align 1, !tbaa !2448
  %5913 = lshr i32 %5894, 31
  %5914 = trunc i32 %5913 to i8
  store i8 %5914, i8* %99, align 1, !tbaa !2449
  %5915 = lshr i32 %5893, 31
  %5916 = lshr i32 %5892, 31
  %5917 = xor i32 %5913, %5915
  %5918 = xor i32 %5913, %5916
  %5919 = add nuw nsw i32 %5917, %5918
  %5920 = icmp eq i32 %5919, 2
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %105, align 1, !tbaa !2450
  %5922 = load i64, i64* %RBP, align 8
  %5923 = add i64 %5922, -72
  %5924 = add i64 %797, 2112
  store i64 %5924, i64* %PC, align 8
  %5925 = inttoptr i64 %5923 to i32*
  %5926 = load i32, i32* %5925, align 4
  %5927 = zext i32 %5926 to i64
  store i64 %5927, i64* %RSI, align 8, !tbaa !2428
  %5928 = add i64 %5922, -32
  %5929 = add i64 %797, 2116
  store i64 %5929, i64* %PC, align 8
  %5930 = inttoptr i64 %5928 to i64*
  %5931 = load i64, i64* %5930, align 8
  store i64 %5931, i64* %RCX, align 8, !tbaa !2428
  %5932 = add i64 %5931, 20
  %5933 = add i64 %797, 2120
  store i64 %5933, i64* %PC, align 8
  %5934 = inttoptr i64 %5932 to i32*
  %5935 = load i32, i32* %5934, align 4
  %5936 = sext i32 %5926 to i64
  %5937 = sext i32 %5935 to i64
  %5938 = mul nsw i64 %5937, %5936
  %5939 = and i64 %5938, 4294967295
  store i64 %5939, i64* %RSI, align 8, !tbaa !2428
  %5940 = trunc i64 %5938 to i32
  %5941 = add i32 %5940, %5894
  %5942 = zext i32 %5941 to i64
  store i64 %5942, i64* %RDX, align 8, !tbaa !2428
  %5943 = icmp ult i32 %5941, %5894
  %5944 = icmp ult i32 %5941, %5940
  %5945 = or i1 %5943, %5944
  %5946 = zext i1 %5945 to i8
  store i8 %5946, i8* %82, align 1, !tbaa !2433
  %5947 = and i32 %5941, 255
  %5948 = tail call i32 @llvm.ctpop.i32(i32 %5947) #12
  %5949 = trunc i32 %5948 to i8
  %5950 = and i8 %5949, 1
  %5951 = xor i8 %5950, 1
  store i8 %5951, i8* %88, align 1, !tbaa !2447
  %5952 = xor i64 %5938, %5895
  %5953 = trunc i64 %5952 to i32
  %5954 = xor i32 %5953, %5941
  %5955 = lshr i32 %5954, 4
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  store i8 %5957, i8* %93, align 1, !tbaa !2451
  %5958 = icmp eq i32 %5941, 0
  %5959 = zext i1 %5958 to i8
  store i8 %5959, i8* %96, align 1, !tbaa !2448
  %5960 = lshr i32 %5941, 31
  %5961 = trunc i32 %5960 to i8
  store i8 %5961, i8* %99, align 1, !tbaa !2449
  %5962 = lshr i32 %5940, 31
  %5963 = xor i32 %5960, %5913
  %5964 = xor i32 %5960, %5962
  %5965 = add nuw nsw i32 %5963, %5964
  %5966 = icmp eq i32 %5965, 2
  %5967 = zext i1 %5966 to i8
  store i8 %5967, i8* %105, align 1, !tbaa !2450
  %5968 = add i64 %5922, -76
  %5969 = add i64 %797, 2125
  store i64 %5969, i64* %PC, align 8
  %5970 = inttoptr i64 %5968 to i32*
  %5971 = load i32, i32* %5970, align 4
  %5972 = add i32 %5971, %5941
  %5973 = zext i32 %5972 to i64
  store i64 %5973, i64* %RDX, align 8, !tbaa !2428
  %5974 = icmp ult i32 %5972, %5941
  %5975 = icmp ult i32 %5972, %5971
  %5976 = or i1 %5974, %5975
  %5977 = zext i1 %5976 to i8
  store i8 %5977, i8* %82, align 1, !tbaa !2433
  %5978 = and i32 %5972, 255
  %5979 = tail call i32 @llvm.ctpop.i32(i32 %5978) #12
  %5980 = trunc i32 %5979 to i8
  %5981 = and i8 %5980, 1
  %5982 = xor i8 %5981, 1
  store i8 %5982, i8* %88, align 1, !tbaa !2447
  %5983 = xor i32 %5971, %5941
  %5984 = xor i32 %5983, %5972
  %5985 = lshr i32 %5984, 4
  %5986 = trunc i32 %5985 to i8
  %5987 = and i8 %5986, 1
  store i8 %5987, i8* %93, align 1, !tbaa !2451
  %5988 = icmp eq i32 %5972, 0
  %5989 = zext i1 %5988 to i8
  store i8 %5989, i8* %96, align 1, !tbaa !2448
  %5990 = lshr i32 %5972, 31
  %5991 = trunc i32 %5990 to i8
  store i8 %5991, i8* %99, align 1, !tbaa !2449
  %5992 = lshr i32 %5971, 31
  %5993 = xor i32 %5990, %5960
  %5994 = xor i32 %5990, %5992
  %5995 = add nuw nsw i32 %5993, %5994
  %5996 = icmp eq i32 %5995, 2
  %5997 = zext i1 %5996 to i8
  store i8 %5997, i8* %105, align 1, !tbaa !2450
  %5998 = sext i32 %5972 to i64
  store i64 %5998, i64* %RCX, align 8, !tbaa !2428
  %5999 = load i64, i64* %RAX, align 8
  %6000 = shl nsw i64 %5998, 2
  %6001 = add i64 %5999, %6000
  %6002 = add i64 %797, 2133
  store i64 %6002, i64* %PC, align 8
  %6003 = inttoptr i64 %6001 to i32*
  %6004 = load i32, i32* %6003, align 4
  store i32 %6004, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %6005 = load i64, i64* %RBP, align 8
  %6006 = add i64 %6005, -40
  %6007 = add i64 %797, 2137
  store i64 %6007, i64* %PC, align 8
  %6008 = inttoptr i64 %6006 to i64*
  %6009 = load i64, i64* %6008, align 8
  store i64 %6009, i64* %RAX, align 8, !tbaa !2428
  %6010 = add i64 %797, 2140
  store i64 %6010, i64* %PC, align 8
  %6011 = inttoptr i64 %6009 to i64*
  %6012 = load i64, i64* %6011, align 8
  store i64 %6012, i64* %RAX, align 8, !tbaa !2428
  %6013 = add i64 %797, 2144
  store i64 %6013, i64* %PC, align 8
  %6014 = load i64, i64* %6008, align 8
  store i64 %6014, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6015 = add i64 %797, 2152
  store i64 %6015, i64* %PC, align 8
  %6016 = load i64, i64* %6008, align 8
  store i64 %6016, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6017 = add i64 %797, 2160
  store i64 %6017, i64* %PC, align 8
  %6018 = load i64, i64* %6008, align 8
  store i64 %6018, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6019 = add i64 %6005, -68
  %6020 = add i64 %797, 2167
  store i64 %6020, i64* %PC, align 8
  %6021 = inttoptr i64 %6019 to i32*
  %6022 = load i32, i32* %6021, align 4
  %6023 = zext i32 %6022 to i64
  store i64 %6023, i64* %RSI, align 8, !tbaa !2428
  %6024 = add i64 %797, 2171
  store i64 %6024, i64* %PC, align 8
  %6025 = load i64, i64* %6008, align 8
  store i64 %6025, i64* %RCX, align 8, !tbaa !2428
  %6026 = add i64 %6025, 16
  %6027 = add i64 %797, 2175
  store i64 %6027, i64* %PC, align 8
  %6028 = inttoptr i64 %6026 to i32*
  %6029 = load i32, i32* %6028, align 4
  %6030 = sext i32 %6022 to i64
  %6031 = sext i32 %6029 to i64
  %6032 = mul nsw i64 %6031, %6030
  %6033 = trunc i64 %6032 to i32
  %6034 = and i64 %6032, 4294967295
  store i64 %6034, i64* %RSI, align 8, !tbaa !2428
  %6035 = shl i64 %6032, 32
  %6036 = ashr exact i64 %6035, 32
  %6037 = icmp ne i64 %6036, %6032
  %6038 = zext i1 %6037 to i8
  store i8 %6038, i8* %82, align 1, !tbaa !2433
  %6039 = and i32 %6033, 255
  %6040 = tail call i32 @llvm.ctpop.i32(i32 %6039) #12
  %6041 = trunc i32 %6040 to i8
  %6042 = and i8 %6041, 1
  %6043 = xor i8 %6042, 1
  store i8 %6043, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6044 = lshr i32 %6033, 31
  %6045 = trunc i32 %6044 to i8
  store i8 %6045, i8* %99, align 1, !tbaa !2449
  store i8 %6038, i8* %105, align 1, !tbaa !2450
  %6046 = add i64 %797, 2179
  store i64 %6046, i64* %PC, align 8
  %6047 = load i64, i64* %6008, align 8
  store i64 %6047, i64* %RCX, align 8, !tbaa !2428
  %6048 = add i64 %6047, 20
  %6049 = add i64 %797, 2183
  store i64 %6049, i64* %PC, align 8
  %6050 = inttoptr i64 %6048 to i32*
  %6051 = load i32, i32* %6050, align 4
  %6052 = shl i64 %6032, 32
  %6053 = ashr exact i64 %6052, 32
  %6054 = sext i32 %6051 to i64
  %6055 = mul nsw i64 %6054, %6053
  %6056 = and i64 %6055, 4294967295
  store i64 %6056, i64* %RSI, align 8, !tbaa !2428
  %6057 = trunc i64 %6055 to i32
  %6058 = and i64 %6055, 4294967295
  store i64 %6058, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %6059 = and i32 %6057, 255
  %6060 = tail call i32 @llvm.ctpop.i32(i32 %6059) #12
  %6061 = trunc i32 %6060 to i8
  %6062 = and i8 %6061, 1
  %6063 = xor i8 %6062, 1
  store i8 %6063, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %6064 = icmp eq i32 %6057, 0
  %6065 = zext i1 %6064 to i8
  store i8 %6065, i8* %96, align 1, !tbaa !2448
  %6066 = lshr i32 %6057, 31
  %6067 = trunc i32 %6066 to i8
  store i8 %6067, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6068 = load i64, i64* %RBP, align 8
  %6069 = add i64 %6068, -72
  %6070 = add i64 %797, 2188
  store i64 %6070, i64* %PC, align 8
  %6071 = inttoptr i64 %6069 to i32*
  %6072 = load i32, i32* %6071, align 4
  %6073 = zext i32 %6072 to i64
  store i64 %6073, i64* %RSI, align 8, !tbaa !2428
  %6074 = add i64 %6068, -40
  %6075 = add i64 %797, 2192
  store i64 %6075, i64* %PC, align 8
  %6076 = inttoptr i64 %6074 to i64*
  %6077 = load i64, i64* %6076, align 8
  store i64 %6077, i64* %RCX, align 8, !tbaa !2428
  %6078 = add i64 %6077, 20
  %6079 = add i64 %797, 2196
  store i64 %6079, i64* %PC, align 8
  %6080 = inttoptr i64 %6078 to i32*
  %6081 = load i32, i32* %6080, align 4
  %6082 = sext i32 %6072 to i64
  %6083 = sext i32 %6081 to i64
  %6084 = mul nsw i64 %6083, %6082
  %6085 = and i64 %6084, 4294967295
  store i64 %6085, i64* %RSI, align 8, !tbaa !2428
  %6086 = trunc i64 %6084 to i32
  %6087 = add i32 %6086, %6057
  %6088 = zext i32 %6087 to i64
  store i64 %6088, i64* %RDX, align 8, !tbaa !2428
  %6089 = icmp ult i32 %6087, %6057
  %6090 = icmp ult i32 %6087, %6086
  %6091 = or i1 %6089, %6090
  %6092 = zext i1 %6091 to i8
  store i8 %6092, i8* %82, align 1, !tbaa !2433
  %6093 = and i32 %6087, 255
  %6094 = tail call i32 @llvm.ctpop.i32(i32 %6093) #12
  %6095 = trunc i32 %6094 to i8
  %6096 = and i8 %6095, 1
  %6097 = xor i8 %6096, 1
  store i8 %6097, i8* %88, align 1, !tbaa !2447
  %6098 = xor i64 %6084, %6055
  %6099 = trunc i64 %6098 to i32
  %6100 = xor i32 %6099, %6087
  %6101 = lshr i32 %6100, 4
  %6102 = trunc i32 %6101 to i8
  %6103 = and i8 %6102, 1
  store i8 %6103, i8* %93, align 1, !tbaa !2451
  %6104 = icmp eq i32 %6087, 0
  %6105 = zext i1 %6104 to i8
  store i8 %6105, i8* %96, align 1, !tbaa !2448
  %6106 = lshr i32 %6087, 31
  %6107 = trunc i32 %6106 to i8
  store i8 %6107, i8* %99, align 1, !tbaa !2449
  %6108 = lshr i32 %6086, 31
  %6109 = xor i32 %6106, %6066
  %6110 = xor i32 %6106, %6108
  %6111 = add nuw nsw i32 %6109, %6110
  %6112 = icmp eq i32 %6111, 2
  %6113 = zext i1 %6112 to i8
  store i8 %6113, i8* %105, align 1, !tbaa !2450
  %6114 = add i64 %6068, -76
  %6115 = add i64 %797, 2201
  store i64 %6115, i64* %PC, align 8
  %6116 = inttoptr i64 %6114 to i32*
  %6117 = load i32, i32* %6116, align 4
  %6118 = add i32 %6117, -1
  %6119 = zext i32 %6118 to i64
  store i64 %6119, i64* %RSI, align 8, !tbaa !2428
  %6120 = lshr i32 %6118, 31
  %6121 = add i32 %6118, %6087
  %6122 = zext i32 %6121 to i64
  store i64 %6122, i64* %RDX, align 8, !tbaa !2428
  %6123 = icmp ult i32 %6121, %6087
  %6124 = icmp ult i32 %6121, %6118
  %6125 = or i1 %6123, %6124
  %6126 = zext i1 %6125 to i8
  store i8 %6126, i8* %82, align 1, !tbaa !2433
  %6127 = and i32 %6121, 255
  %6128 = tail call i32 @llvm.ctpop.i32(i32 %6127) #12
  %6129 = trunc i32 %6128 to i8
  %6130 = and i8 %6129, 1
  %6131 = xor i8 %6130, 1
  store i8 %6131, i8* %88, align 1, !tbaa !2447
  %6132 = xor i32 %6118, %6087
  %6133 = xor i32 %6132, %6121
  %6134 = lshr i32 %6133, 4
  %6135 = trunc i32 %6134 to i8
  %6136 = and i8 %6135, 1
  store i8 %6136, i8* %93, align 1, !tbaa !2451
  %6137 = icmp eq i32 %6121, 0
  %6138 = zext i1 %6137 to i8
  store i8 %6138, i8* %96, align 1, !tbaa !2448
  %6139 = lshr i32 %6121, 31
  %6140 = trunc i32 %6139 to i8
  store i8 %6140, i8* %99, align 1, !tbaa !2449
  %6141 = xor i32 %6139, %6106
  %6142 = xor i32 %6139, %6120
  %6143 = add nuw nsw i32 %6141, %6142
  %6144 = icmp eq i32 %6143, 2
  %6145 = zext i1 %6144 to i8
  store i8 %6145, i8* %105, align 1, !tbaa !2450
  %6146 = sext i32 %6121 to i64
  store i64 %6146, i64* %RCX, align 8, !tbaa !2428
  %6147 = load i64, i64* %RAX, align 8
  %6148 = shl nsw i64 %6146, 2
  %6149 = add i64 %6147, %6148
  %6150 = add i64 %797, 2214
  store i64 %6150, i64* %PC, align 8
  %6151 = load <2 x float>, <2 x float>* %207, align 1
  %6152 = load <2 x i32>, <2 x i32>* %208, align 1
  %6153 = inttoptr i64 %6149 to float*
  %6154 = load float, float* %6153, align 4
  %6155 = extractelement <2 x float> %6151, i32 0
  %6156 = fmul float %6155, %6154
  store float %6156, float* %199, align 1, !tbaa !2452
  %6157 = bitcast <2 x float> %6151 to <2 x i32>
  %6158 = extractelement <2 x i32> %6157, i32 1
  store i32 %6158, i32* %209, align 1, !tbaa !2452
  %6159 = extractelement <2 x i32> %6152, i32 0
  store i32 %6159, i32* %210, align 1, !tbaa !2452
  %6160 = extractelement <2 x i32> %6152, i32 1
  store i32 %6160, i32* %211, align 1, !tbaa !2452
  %6161 = load <2 x float>, <2 x float>* %192, align 1
  %6162 = load <2 x i32>, <2 x i32>* %197, align 1
  %6163 = load <2 x float>, <2 x float>* %207, align 1
  %6164 = extractelement <2 x float> %6161, i32 0
  %6165 = extractelement <2 x float> %6163, i32 0
  %6166 = fadd float %6164, %6165
  store float %6166, float* %193, align 1, !tbaa !2452
  %6167 = bitcast <2 x float> %6161 to <2 x i32>
  %6168 = extractelement <2 x i32> %6167, i32 1
  store i32 %6168, i32* %188, align 1, !tbaa !2452
  %6169 = extractelement <2 x i32> %6162, i32 0
  store i32 %6169, i32* %189, align 1, !tbaa !2452
  %6170 = extractelement <2 x i32> %6162, i32 1
  store i32 %6170, i32* %191, align 1, !tbaa !2452
  %6171 = load i64, i64* %RBP, align 8
  %6172 = add i64 %6171, -56
  %6173 = add i64 %797, 2222
  store i64 %6173, i64* %PC, align 8
  %6174 = inttoptr i64 %6172 to i64*
  %6175 = load i64, i64* %6174, align 8
  store i64 %6175, i64* %RAX, align 8, !tbaa !2428
  %6176 = add i64 %797, 2225
  store i64 %6176, i64* %PC, align 8
  %6177 = inttoptr i64 %6175 to i64*
  %6178 = load i64, i64* %6177, align 8
  store i64 %6178, i64* %RAX, align 8, !tbaa !2428
  %6179 = add i64 %797, 2229
  store i64 %6179, i64* %PC, align 8
  %6180 = load i64, i64* %6174, align 8
  store i64 %6180, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6181 = add i64 %797, 2237
  store i64 %6181, i64* %PC, align 8
  %6182 = load i64, i64* %6174, align 8
  store i64 %6182, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6183 = add i64 %797, 2245
  store i64 %6183, i64* %PC, align 8
  %6184 = load i64, i64* %6174, align 8
  store i64 %6184, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6185 = add i64 %6171, -68
  %6186 = add i64 %797, 2252
  store i64 %6186, i64* %PC, align 8
  %6187 = inttoptr i64 %6185 to i32*
  %6188 = load i32, i32* %6187, align 4
  %6189 = zext i32 %6188 to i64
  store i64 %6189, i64* %RSI, align 8, !tbaa !2428
  %6190 = add i64 %797, 2256
  store i64 %6190, i64* %PC, align 8
  %6191 = load i64, i64* %6174, align 8
  store i64 %6191, i64* %RCX, align 8, !tbaa !2428
  %6192 = add i64 %6191, 16
  %6193 = add i64 %797, 2260
  store i64 %6193, i64* %PC, align 8
  %6194 = inttoptr i64 %6192 to i32*
  %6195 = load i32, i32* %6194, align 4
  %6196 = sext i32 %6188 to i64
  %6197 = sext i32 %6195 to i64
  %6198 = mul nsw i64 %6197, %6196
  %6199 = trunc i64 %6198 to i32
  %6200 = and i64 %6198, 4294967295
  store i64 %6200, i64* %RSI, align 8, !tbaa !2428
  %6201 = shl i64 %6198, 32
  %6202 = ashr exact i64 %6201, 32
  %6203 = icmp ne i64 %6202, %6198
  %6204 = zext i1 %6203 to i8
  store i8 %6204, i8* %82, align 1, !tbaa !2433
  %6205 = and i32 %6199, 255
  %6206 = tail call i32 @llvm.ctpop.i32(i32 %6205) #12
  %6207 = trunc i32 %6206 to i8
  %6208 = and i8 %6207, 1
  %6209 = xor i8 %6208, 1
  store i8 %6209, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6210 = lshr i32 %6199, 31
  %6211 = trunc i32 %6210 to i8
  store i8 %6211, i8* %99, align 1, !tbaa !2449
  store i8 %6204, i8* %105, align 1, !tbaa !2450
  %6212 = add i64 %797, 2264
  store i64 %6212, i64* %PC, align 8
  %6213 = load i64, i64* %6174, align 8
  store i64 %6213, i64* %RCX, align 8, !tbaa !2428
  %6214 = add i64 %6213, 20
  %6215 = add i64 %797, 2268
  store i64 %6215, i64* %PC, align 8
  %6216 = inttoptr i64 %6214 to i32*
  %6217 = load i32, i32* %6216, align 4
  %6218 = shl i64 %6198, 32
  %6219 = ashr exact i64 %6218, 32
  %6220 = sext i32 %6217 to i64
  %6221 = mul nsw i64 %6220, %6219
  %6222 = and i64 %6221, 4294967295
  store i64 %6222, i64* %RSI, align 8, !tbaa !2428
  %6223 = trunc i64 %6221 to i32
  %6224 = and i64 %6221, 4294967295
  store i64 %6224, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %6225 = and i32 %6223, 255
  %6226 = tail call i32 @llvm.ctpop.i32(i32 %6225) #12
  %6227 = trunc i32 %6226 to i8
  %6228 = and i8 %6227, 1
  %6229 = xor i8 %6228, 1
  store i8 %6229, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %6230 = icmp eq i32 %6223, 0
  %6231 = zext i1 %6230 to i8
  store i8 %6231, i8* %96, align 1, !tbaa !2448
  %6232 = lshr i32 %6223, 31
  %6233 = trunc i32 %6232 to i8
  store i8 %6233, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6234 = load i64, i64* %RBP, align 8
  %6235 = add i64 %6234, -72
  %6236 = add i64 %797, 2273
  store i64 %6236, i64* %PC, align 8
  %6237 = inttoptr i64 %6235 to i32*
  %6238 = load i32, i32* %6237, align 4
  %6239 = zext i32 %6238 to i64
  store i64 %6239, i64* %RSI, align 8, !tbaa !2428
  %6240 = add i64 %6234, -56
  %6241 = add i64 %797, 2277
  store i64 %6241, i64* %PC, align 8
  %6242 = inttoptr i64 %6240 to i64*
  %6243 = load i64, i64* %6242, align 8
  store i64 %6243, i64* %RCX, align 8, !tbaa !2428
  %6244 = add i64 %6243, 20
  %6245 = add i64 %797, 2281
  store i64 %6245, i64* %PC, align 8
  %6246 = inttoptr i64 %6244 to i32*
  %6247 = load i32, i32* %6246, align 4
  %6248 = sext i32 %6238 to i64
  %6249 = sext i32 %6247 to i64
  %6250 = mul nsw i64 %6249, %6248
  %6251 = and i64 %6250, 4294967295
  store i64 %6251, i64* %RSI, align 8, !tbaa !2428
  %6252 = trunc i64 %6250 to i32
  %6253 = add i32 %6252, %6223
  %6254 = zext i32 %6253 to i64
  store i64 %6254, i64* %RDX, align 8, !tbaa !2428
  %6255 = icmp ult i32 %6253, %6223
  %6256 = icmp ult i32 %6253, %6252
  %6257 = or i1 %6255, %6256
  %6258 = zext i1 %6257 to i8
  store i8 %6258, i8* %82, align 1, !tbaa !2433
  %6259 = and i32 %6253, 255
  %6260 = tail call i32 @llvm.ctpop.i32(i32 %6259) #12
  %6261 = trunc i32 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = xor i8 %6262, 1
  store i8 %6263, i8* %88, align 1, !tbaa !2447
  %6264 = xor i64 %6250, %6221
  %6265 = trunc i64 %6264 to i32
  %6266 = xor i32 %6265, %6253
  %6267 = lshr i32 %6266, 4
  %6268 = trunc i32 %6267 to i8
  %6269 = and i8 %6268, 1
  store i8 %6269, i8* %93, align 1, !tbaa !2451
  %6270 = icmp eq i32 %6253, 0
  %6271 = zext i1 %6270 to i8
  store i8 %6271, i8* %96, align 1, !tbaa !2448
  %6272 = lshr i32 %6253, 31
  %6273 = trunc i32 %6272 to i8
  store i8 %6273, i8* %99, align 1, !tbaa !2449
  %6274 = lshr i32 %6252, 31
  %6275 = xor i32 %6272, %6232
  %6276 = xor i32 %6272, %6274
  %6277 = add nuw nsw i32 %6275, %6276
  %6278 = icmp eq i32 %6277, 2
  %6279 = zext i1 %6278 to i8
  store i8 %6279, i8* %105, align 1, !tbaa !2450
  %6280 = add i64 %6234, -76
  %6281 = add i64 %797, 2286
  store i64 %6281, i64* %PC, align 8
  %6282 = inttoptr i64 %6280 to i32*
  %6283 = load i32, i32* %6282, align 4
  %6284 = add i32 %6283, %6253
  %6285 = zext i32 %6284 to i64
  store i64 %6285, i64* %RDX, align 8, !tbaa !2428
  %6286 = icmp ult i32 %6284, %6253
  %6287 = icmp ult i32 %6284, %6283
  %6288 = or i1 %6286, %6287
  %6289 = zext i1 %6288 to i8
  store i8 %6289, i8* %82, align 1, !tbaa !2433
  %6290 = and i32 %6284, 255
  %6291 = tail call i32 @llvm.ctpop.i32(i32 %6290) #12
  %6292 = trunc i32 %6291 to i8
  %6293 = and i8 %6292, 1
  %6294 = xor i8 %6293, 1
  store i8 %6294, i8* %88, align 1, !tbaa !2447
  %6295 = xor i32 %6283, %6253
  %6296 = xor i32 %6295, %6284
  %6297 = lshr i32 %6296, 4
  %6298 = trunc i32 %6297 to i8
  %6299 = and i8 %6298, 1
  store i8 %6299, i8* %93, align 1, !tbaa !2451
  %6300 = icmp eq i32 %6284, 0
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %96, align 1, !tbaa !2448
  %6302 = lshr i32 %6284, 31
  %6303 = trunc i32 %6302 to i8
  store i8 %6303, i8* %99, align 1, !tbaa !2449
  %6304 = lshr i32 %6283, 31
  %6305 = xor i32 %6302, %6272
  %6306 = xor i32 %6302, %6304
  %6307 = add nuw nsw i32 %6305, %6306
  %6308 = icmp eq i32 %6307, 2
  %6309 = zext i1 %6308 to i8
  store i8 %6309, i8* %105, align 1, !tbaa !2450
  %6310 = sext i32 %6284 to i64
  store i64 %6310, i64* %RCX, align 8, !tbaa !2428
  %6311 = load i64, i64* %RAX, align 8
  %6312 = shl nsw i64 %6310, 2
  %6313 = add i64 %6311, %6312
  %6314 = add i64 %797, 2294
  store i64 %6314, i64* %PC, align 8
  %6315 = load <2 x float>, <2 x float>* %192, align 1
  %6316 = load <2 x i32>, <2 x i32>* %197, align 1
  %6317 = inttoptr i64 %6313 to float*
  %6318 = load float, float* %6317, align 4
  %6319 = extractelement <2 x float> %6315, i32 0
  %6320 = fadd float %6319, %6318
  store float %6320, float* %193, align 1, !tbaa !2452
  %6321 = bitcast <2 x float> %6315 to <2 x i32>
  %6322 = extractelement <2 x i32> %6321, i32 1
  store i32 %6322, i32* %188, align 1, !tbaa !2452
  %6323 = extractelement <2 x i32> %6316, i32 0
  store i32 %6323, i32* %189, align 1, !tbaa !2452
  %6324 = extractelement <2 x i32> %6316, i32 1
  store i32 %6324, i32* %191, align 1, !tbaa !2452
  %6325 = load i64, i64* %RBP, align 8
  %6326 = add i64 %6325, -100
  %6327 = add i64 %797, 2299
  store i64 %6327, i64* %PC, align 8
  %6328 = load <2 x float>, <2 x float>* %192, align 1
  %6329 = extractelement <2 x float> %6328, i32 0
  %6330 = inttoptr i64 %6326 to float*
  store float %6329, float* %6330, align 4
  %6331 = load i64, i64* %RBP, align 8
  %6332 = add i64 %6331, -100
  %6333 = load i64, i64* %PC, align 8
  %6334 = add i64 %6333, 5
  store i64 %6334, i64* %PC, align 8
  %6335 = inttoptr i64 %6332 to i32*
  %6336 = load i32, i32* %6335, align 4
  store i32 %6336, i32* %186, align 1, !tbaa !2452
  store float 0.000000e+00, float* %194, align 1, !tbaa !2452
  store float 0.000000e+00, float* %195, align 1, !tbaa !2452
  store float 0.000000e+00, float* %196, align 1, !tbaa !2452
  %6337 = add i64 %6331, -16
  %6338 = add i64 %6333, 9
  store i64 %6338, i64* %PC, align 8
  %6339 = inttoptr i64 %6337 to i64*
  %6340 = load i64, i64* %6339, align 8
  store i64 %6340, i64* %RAX, align 8, !tbaa !2428
  %6341 = add i64 %6333, 12
  store i64 %6341, i64* %PC, align 8
  %6342 = inttoptr i64 %6340 to i64*
  %6343 = load i64, i64* %6342, align 8
  store i64 %6343, i64* %RAX, align 8, !tbaa !2428
  %6344 = add i64 %6333, 16
  store i64 %6344, i64* %PC, align 8
  %6345 = load i64, i64* %6339, align 8
  store i64 %6345, i64* %RCX, align 8, !tbaa !2428
  %6346 = add i64 %6345, 12
  %6347 = add i64 %6333, 20
  store i64 %6347, i64* %PC, align 8
  %6348 = inttoptr i64 %6346 to i32*
  %6349 = load i32, i32* %6348, align 4
  %6350 = sext i32 %6349 to i64
  %6351 = mul nsw i64 %6350, 3
  %6352 = trunc i64 %6351 to i32
  %6353 = and i64 %6351, 4294967295
  store i64 %6353, i64* %RDX, align 8, !tbaa !2428
  %6354 = mul i64 %6350, 12884901888
  %6355 = ashr exact i64 %6354, 32
  %6356 = icmp ne i64 %6355, %6351
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %82, align 1, !tbaa !2433
  %6358 = and i32 %6352, 255
  %6359 = tail call i32 @llvm.ctpop.i32(i32 %6358) #12
  %6360 = trunc i32 %6359 to i8
  %6361 = and i8 %6360, 1
  %6362 = xor i8 %6361, 1
  store i8 %6362, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6363 = lshr i32 %6352, 31
  %6364 = trunc i32 %6363 to i8
  store i8 %6364, i8* %99, align 1, !tbaa !2449
  store i8 %6357, i8* %105, align 1, !tbaa !2450
  %6365 = add i64 %6333, 24
  store i64 %6365, i64* %PC, align 8
  %6366 = load i64, i64* %6339, align 8
  store i64 %6366, i64* %RCX, align 8, !tbaa !2428
  %6367 = add i64 %6366, 16
  %6368 = add i64 %6333, 28
  store i64 %6368, i64* %PC, align 8
  %6369 = inttoptr i64 %6367 to i32*
  %6370 = load i32, i32* %6369, align 4
  %6371 = mul i64 %6350, 12884901888
  %6372 = ashr exact i64 %6371, 32
  %6373 = sext i32 %6370 to i64
  %6374 = mul nsw i64 %6373, %6372
  %6375 = trunc i64 %6374 to i32
  %6376 = and i64 %6374, 4294967295
  store i64 %6376, i64* %RDX, align 8, !tbaa !2428
  %6377 = shl i64 %6374, 32
  %6378 = ashr exact i64 %6377, 32
  %6379 = icmp ne i64 %6378, %6374
  %6380 = zext i1 %6379 to i8
  store i8 %6380, i8* %82, align 1, !tbaa !2433
  %6381 = and i32 %6375, 255
  %6382 = tail call i32 @llvm.ctpop.i32(i32 %6381) #12
  %6383 = trunc i32 %6382 to i8
  %6384 = and i8 %6383, 1
  %6385 = xor i8 %6384, 1
  store i8 %6385, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6386 = lshr i32 %6375, 31
  %6387 = trunc i32 %6386 to i8
  store i8 %6387, i8* %99, align 1, !tbaa !2449
  store i8 %6380, i8* %105, align 1, !tbaa !2450
  %6388 = add i64 %6333, 32
  store i64 %6388, i64* %PC, align 8
  %6389 = load i64, i64* %6339, align 8
  store i64 %6389, i64* %RCX, align 8, !tbaa !2428
  %6390 = add i64 %6389, 20
  %6391 = add i64 %6333, 36
  store i64 %6391, i64* %PC, align 8
  %6392 = inttoptr i64 %6390 to i32*
  %6393 = load i32, i32* %6392, align 4
  %6394 = shl i64 %6374, 32
  %6395 = ashr exact i64 %6394, 32
  %6396 = sext i32 %6393 to i64
  %6397 = mul nsw i64 %6396, %6395
  %6398 = trunc i64 %6397 to i32
  %6399 = and i64 %6397, 4294967295
  store i64 %6399, i64* %RDX, align 8, !tbaa !2428
  %6400 = shl i64 %6397, 32
  %6401 = ashr exact i64 %6400, 32
  %6402 = icmp ne i64 %6401, %6397
  %6403 = zext i1 %6402 to i8
  store i8 %6403, i8* %82, align 1, !tbaa !2433
  %6404 = and i32 %6398, 255
  %6405 = tail call i32 @llvm.ctpop.i32(i32 %6404) #12
  %6406 = trunc i32 %6405 to i8
  %6407 = and i8 %6406, 1
  %6408 = xor i8 %6407, 1
  store i8 %6408, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6409 = lshr i32 %6398, 31
  %6410 = trunc i32 %6409 to i8
  store i8 %6410, i8* %99, align 1, !tbaa !2449
  store i8 %6403, i8* %105, align 1, !tbaa !2450
  %6411 = load i64, i64* %RBP, align 8
  %6412 = add i64 %6411, -68
  %6413 = add i64 %6333, 39
  store i64 %6413, i64* %PC, align 8
  %6414 = inttoptr i64 %6412 to i32*
  %6415 = load i32, i32* %6414, align 4
  %6416 = zext i32 %6415 to i64
  store i64 %6416, i64* %RSI, align 8, !tbaa !2428
  %6417 = add i64 %6411, -16
  %6418 = add i64 %6333, 43
  store i64 %6418, i64* %PC, align 8
  %6419 = inttoptr i64 %6417 to i64*
  %6420 = load i64, i64* %6419, align 8
  store i64 %6420, i64* %RCX, align 8, !tbaa !2428
  %6421 = add i64 %6420, 16
  %6422 = add i64 %6333, 47
  store i64 %6422, i64* %PC, align 8
  %6423 = inttoptr i64 %6421 to i32*
  %6424 = load i32, i32* %6423, align 4
  %6425 = sext i32 %6415 to i64
  %6426 = sext i32 %6424 to i64
  %6427 = mul nsw i64 %6426, %6425
  %6428 = trunc i64 %6427 to i32
  %6429 = and i64 %6427, 4294967295
  store i64 %6429, i64* %RSI, align 8, !tbaa !2428
  %6430 = shl i64 %6427, 32
  %6431 = ashr exact i64 %6430, 32
  %6432 = icmp ne i64 %6431, %6427
  %6433 = zext i1 %6432 to i8
  store i8 %6433, i8* %82, align 1, !tbaa !2433
  %6434 = and i32 %6428, 255
  %6435 = tail call i32 @llvm.ctpop.i32(i32 %6434) #12
  %6436 = trunc i32 %6435 to i8
  %6437 = and i8 %6436, 1
  %6438 = xor i8 %6437, 1
  store i8 %6438, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6439 = lshr i32 %6428, 31
  %6440 = trunc i32 %6439 to i8
  store i8 %6440, i8* %99, align 1, !tbaa !2449
  store i8 %6433, i8* %105, align 1, !tbaa !2450
  %6441 = add i64 %6333, 51
  store i64 %6441, i64* %PC, align 8
  %6442 = load i64, i64* %6419, align 8
  store i64 %6442, i64* %RCX, align 8, !tbaa !2428
  %6443 = add i64 %6442, 20
  %6444 = add i64 %6333, 55
  store i64 %6444, i64* %PC, align 8
  %6445 = inttoptr i64 %6443 to i32*
  %6446 = load i32, i32* %6445, align 4
  %6447 = shl i64 %6427, 32
  %6448 = ashr exact i64 %6447, 32
  %6449 = sext i32 %6446 to i64
  %6450 = mul nsw i64 %6449, %6448
  %6451 = and i64 %6450, 4294967295
  store i64 %6451, i64* %RSI, align 8, !tbaa !2428
  %6452 = trunc i64 %6450 to i32
  %6453 = trunc i64 %6397 to i32
  %6454 = add i32 %6452, %6453
  %6455 = zext i32 %6454 to i64
  store i64 %6455, i64* %RDX, align 8, !tbaa !2428
  %6456 = icmp ult i32 %6454, %6453
  %6457 = icmp ult i32 %6454, %6452
  %6458 = or i1 %6456, %6457
  %6459 = zext i1 %6458 to i8
  store i8 %6459, i8* %82, align 1, !tbaa !2433
  %6460 = and i32 %6454, 255
  %6461 = tail call i32 @llvm.ctpop.i32(i32 %6460) #12
  %6462 = trunc i32 %6461 to i8
  %6463 = and i8 %6462, 1
  %6464 = xor i8 %6463, 1
  store i8 %6464, i8* %88, align 1, !tbaa !2447
  %6465 = xor i64 %6450, %6397
  %6466 = trunc i64 %6465 to i32
  %6467 = xor i32 %6466, %6454
  %6468 = lshr i32 %6467, 4
  %6469 = trunc i32 %6468 to i8
  %6470 = and i8 %6469, 1
  store i8 %6470, i8* %93, align 1, !tbaa !2451
  %6471 = icmp eq i32 %6454, 0
  %6472 = zext i1 %6471 to i8
  store i8 %6472, i8* %96, align 1, !tbaa !2448
  %6473 = lshr i32 %6454, 31
  %6474 = trunc i32 %6473 to i8
  store i8 %6474, i8* %99, align 1, !tbaa !2449
  %6475 = lshr i32 %6453, 31
  %6476 = lshr i32 %6452, 31
  %6477 = xor i32 %6473, %6475
  %6478 = xor i32 %6473, %6476
  %6479 = add nuw nsw i32 %6477, %6478
  %6480 = icmp eq i32 %6479, 2
  %6481 = zext i1 %6480 to i8
  store i8 %6481, i8* %105, align 1, !tbaa !2450
  %6482 = load i64, i64* %RBP, align 8
  %6483 = add i64 %6482, -72
  %6484 = add i64 %6333, 60
  store i64 %6484, i64* %PC, align 8
  %6485 = inttoptr i64 %6483 to i32*
  %6486 = load i32, i32* %6485, align 4
  %6487 = zext i32 %6486 to i64
  store i64 %6487, i64* %RSI, align 8, !tbaa !2428
  %6488 = add i64 %6482, -16
  %6489 = add i64 %6333, 64
  store i64 %6489, i64* %PC, align 8
  %6490 = inttoptr i64 %6488 to i64*
  %6491 = load i64, i64* %6490, align 8
  store i64 %6491, i64* %RCX, align 8, !tbaa !2428
  %6492 = add i64 %6491, 20
  %6493 = add i64 %6333, 68
  store i64 %6493, i64* %PC, align 8
  %6494 = inttoptr i64 %6492 to i32*
  %6495 = load i32, i32* %6494, align 4
  %6496 = sext i32 %6486 to i64
  %6497 = sext i32 %6495 to i64
  %6498 = mul nsw i64 %6497, %6496
  %6499 = and i64 %6498, 4294967295
  store i64 %6499, i64* %RSI, align 8, !tbaa !2428
  %6500 = trunc i64 %6498 to i32
  %6501 = add i32 %6500, %6454
  %6502 = zext i32 %6501 to i64
  store i64 %6502, i64* %RDX, align 8, !tbaa !2428
  %6503 = icmp ult i32 %6501, %6454
  %6504 = icmp ult i32 %6501, %6500
  %6505 = or i1 %6503, %6504
  %6506 = zext i1 %6505 to i8
  store i8 %6506, i8* %82, align 1, !tbaa !2433
  %6507 = and i32 %6501, 255
  %6508 = tail call i32 @llvm.ctpop.i32(i32 %6507) #12
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  store i8 %6511, i8* %88, align 1, !tbaa !2447
  %6512 = xor i64 %6498, %6455
  %6513 = trunc i64 %6512 to i32
  %6514 = xor i32 %6513, %6501
  %6515 = lshr i32 %6514, 4
  %6516 = trunc i32 %6515 to i8
  %6517 = and i8 %6516, 1
  store i8 %6517, i8* %93, align 1, !tbaa !2451
  %6518 = icmp eq i32 %6501, 0
  %6519 = zext i1 %6518 to i8
  store i8 %6519, i8* %96, align 1, !tbaa !2448
  %6520 = lshr i32 %6501, 31
  %6521 = trunc i32 %6520 to i8
  store i8 %6521, i8* %99, align 1, !tbaa !2449
  %6522 = lshr i32 %6500, 31
  %6523 = xor i32 %6520, %6473
  %6524 = xor i32 %6520, %6522
  %6525 = add nuw nsw i32 %6523, %6524
  %6526 = icmp eq i32 %6525, 2
  %6527 = zext i1 %6526 to i8
  store i8 %6527, i8* %105, align 1, !tbaa !2450
  %6528 = add i64 %6482, -76
  %6529 = add i64 %6333, 73
  store i64 %6529, i64* %PC, align 8
  %6530 = inttoptr i64 %6528 to i32*
  %6531 = load i32, i32* %6530, align 4
  %6532 = add i32 %6531, %6501
  %6533 = zext i32 %6532 to i64
  store i64 %6533, i64* %RDX, align 8, !tbaa !2428
  %6534 = icmp ult i32 %6532, %6501
  %6535 = icmp ult i32 %6532, %6531
  %6536 = or i1 %6534, %6535
  %6537 = zext i1 %6536 to i8
  store i8 %6537, i8* %82, align 1, !tbaa !2433
  %6538 = and i32 %6532, 255
  %6539 = tail call i32 @llvm.ctpop.i32(i32 %6538) #12
  %6540 = trunc i32 %6539 to i8
  %6541 = and i8 %6540, 1
  %6542 = xor i8 %6541, 1
  store i8 %6542, i8* %88, align 1, !tbaa !2447
  %6543 = xor i32 %6531, %6501
  %6544 = xor i32 %6543, %6532
  %6545 = lshr i32 %6544, 4
  %6546 = trunc i32 %6545 to i8
  %6547 = and i8 %6546, 1
  store i8 %6547, i8* %93, align 1, !tbaa !2451
  %6548 = icmp eq i32 %6532, 0
  %6549 = zext i1 %6548 to i8
  store i8 %6549, i8* %96, align 1, !tbaa !2448
  %6550 = lshr i32 %6532, 31
  %6551 = trunc i32 %6550 to i8
  store i8 %6551, i8* %99, align 1, !tbaa !2449
  %6552 = lshr i32 %6531, 31
  %6553 = xor i32 %6550, %6520
  %6554 = xor i32 %6550, %6552
  %6555 = add nuw nsw i32 %6553, %6554
  %6556 = icmp eq i32 %6555, 2
  %6557 = zext i1 %6556 to i8
  store i8 %6557, i8* %105, align 1, !tbaa !2450
  %6558 = sext i32 %6532 to i64
  store i64 %6558, i64* %RCX, align 8, !tbaa !2428
  %6559 = load i64, i64* %RAX, align 8
  %6560 = shl nsw i64 %6558, 2
  %6561 = add i64 %6559, %6560
  %6562 = add i64 %6333, 81
  store i64 %6562, i64* %PC, align 8
  %6563 = load <2 x float>, <2 x float>* %192, align 1
  %6564 = load <2 x i32>, <2 x i32>* %197, align 1
  %6565 = inttoptr i64 %6561 to float*
  %6566 = load float, float* %6565, align 4
  %6567 = extractelement <2 x float> %6563, i32 0
  %6568 = fmul float %6567, %6566
  store float %6568, float* %193, align 1, !tbaa !2452
  %6569 = bitcast <2 x float> %6563 to <2 x i32>
  %6570 = extractelement <2 x i32> %6569, i32 1
  store i32 %6570, i32* %188, align 1, !tbaa !2452
  %6571 = extractelement <2 x i32> %6564, i32 0
  store i32 %6571, i32* %189, align 1, !tbaa !2452
  %6572 = extractelement <2 x i32> %6564, i32 1
  store i32 %6572, i32* %191, align 1, !tbaa !2452
  %6573 = load i64, i64* %RBP, align 8
  %6574 = add i64 %6573, -40
  %6575 = add i64 %6333, 85
  store i64 %6575, i64* %PC, align 8
  %6576 = inttoptr i64 %6574 to i64*
  %6577 = load i64, i64* %6576, align 8
  store i64 %6577, i64* %RAX, align 8, !tbaa !2428
  %6578 = add i64 %6333, 88
  store i64 %6578, i64* %PC, align 8
  %6579 = inttoptr i64 %6577 to i64*
  %6580 = load i64, i64* %6579, align 8
  store i64 %6580, i64* %RAX, align 8, !tbaa !2428
  %6581 = add i64 %6333, 92
  store i64 %6581, i64* %PC, align 8
  %6582 = load i64, i64* %6576, align 8
  store i64 %6582, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6583 = add i64 %6333, 100
  store i64 %6583, i64* %PC, align 8
  %6584 = load i64, i64* %6576, align 8
  store i64 %6584, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6585 = add i64 %6333, 108
  store i64 %6585, i64* %PC, align 8
  %6586 = load i64, i64* %6576, align 8
  store i64 %6586, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6587 = add i64 %6573, -68
  %6588 = add i64 %6333, 115
  store i64 %6588, i64* %PC, align 8
  %6589 = inttoptr i64 %6587 to i32*
  %6590 = load i32, i32* %6589, align 4
  %6591 = zext i32 %6590 to i64
  store i64 %6591, i64* %RSI, align 8, !tbaa !2428
  %6592 = add i64 %6333, 119
  store i64 %6592, i64* %PC, align 8
  %6593 = load i64, i64* %6576, align 8
  store i64 %6593, i64* %RCX, align 8, !tbaa !2428
  %6594 = add i64 %6593, 16
  %6595 = add i64 %6333, 123
  store i64 %6595, i64* %PC, align 8
  %6596 = inttoptr i64 %6594 to i32*
  %6597 = load i32, i32* %6596, align 4
  %6598 = sext i32 %6590 to i64
  %6599 = sext i32 %6597 to i64
  %6600 = mul nsw i64 %6599, %6598
  %6601 = trunc i64 %6600 to i32
  %6602 = and i64 %6600, 4294967295
  store i64 %6602, i64* %RSI, align 8, !tbaa !2428
  %6603 = shl i64 %6600, 32
  %6604 = ashr exact i64 %6603, 32
  %6605 = icmp ne i64 %6604, %6600
  %6606 = zext i1 %6605 to i8
  store i8 %6606, i8* %82, align 1, !tbaa !2433
  %6607 = and i32 %6601, 255
  %6608 = tail call i32 @llvm.ctpop.i32(i32 %6607) #12
  %6609 = trunc i32 %6608 to i8
  %6610 = and i8 %6609, 1
  %6611 = xor i8 %6610, 1
  store i8 %6611, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6612 = lshr i32 %6601, 31
  %6613 = trunc i32 %6612 to i8
  store i8 %6613, i8* %99, align 1, !tbaa !2449
  store i8 %6606, i8* %105, align 1, !tbaa !2450
  %6614 = add i64 %6333, 127
  store i64 %6614, i64* %PC, align 8
  %6615 = load i64, i64* %6576, align 8
  store i64 %6615, i64* %RCX, align 8, !tbaa !2428
  %6616 = add i64 %6615, 20
  %6617 = add i64 %6333, 131
  store i64 %6617, i64* %PC, align 8
  %6618 = inttoptr i64 %6616 to i32*
  %6619 = load i32, i32* %6618, align 4
  %6620 = shl i64 %6600, 32
  %6621 = ashr exact i64 %6620, 32
  %6622 = sext i32 %6619 to i64
  %6623 = mul nsw i64 %6622, %6621
  %6624 = and i64 %6623, 4294967295
  store i64 %6624, i64* %RSI, align 8, !tbaa !2428
  %6625 = trunc i64 %6623 to i32
  %6626 = and i64 %6623, 4294967295
  store i64 %6626, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %6627 = and i32 %6625, 255
  %6628 = tail call i32 @llvm.ctpop.i32(i32 %6627) #12
  %6629 = trunc i32 %6628 to i8
  %6630 = and i8 %6629, 1
  %6631 = xor i8 %6630, 1
  store i8 %6631, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %6632 = icmp eq i32 %6625, 0
  %6633 = zext i1 %6632 to i8
  store i8 %6633, i8* %96, align 1, !tbaa !2448
  %6634 = lshr i32 %6625, 31
  %6635 = trunc i32 %6634 to i8
  store i8 %6635, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6636 = load i64, i64* %RBP, align 8
  %6637 = add i64 %6636, -72
  %6638 = add i64 %6333, 136
  store i64 %6638, i64* %PC, align 8
  %6639 = inttoptr i64 %6637 to i32*
  %6640 = load i32, i32* %6639, align 4
  %6641 = zext i32 %6640 to i64
  store i64 %6641, i64* %RSI, align 8, !tbaa !2428
  %6642 = add i64 %6636, -40
  %6643 = add i64 %6333, 140
  store i64 %6643, i64* %PC, align 8
  %6644 = inttoptr i64 %6642 to i64*
  %6645 = load i64, i64* %6644, align 8
  store i64 %6645, i64* %RCX, align 8, !tbaa !2428
  %6646 = add i64 %6645, 20
  %6647 = add i64 %6333, 144
  store i64 %6647, i64* %PC, align 8
  %6648 = inttoptr i64 %6646 to i32*
  %6649 = load i32, i32* %6648, align 4
  %6650 = sext i32 %6640 to i64
  %6651 = sext i32 %6649 to i64
  %6652 = mul nsw i64 %6651, %6650
  %6653 = and i64 %6652, 4294967295
  store i64 %6653, i64* %RSI, align 8, !tbaa !2428
  %6654 = trunc i64 %6652 to i32
  %6655 = add i32 %6654, %6625
  %6656 = zext i32 %6655 to i64
  store i64 %6656, i64* %RDX, align 8, !tbaa !2428
  %6657 = icmp ult i32 %6655, %6625
  %6658 = icmp ult i32 %6655, %6654
  %6659 = or i1 %6657, %6658
  %6660 = zext i1 %6659 to i8
  store i8 %6660, i8* %82, align 1, !tbaa !2433
  %6661 = and i32 %6655, 255
  %6662 = tail call i32 @llvm.ctpop.i32(i32 %6661) #12
  %6663 = trunc i32 %6662 to i8
  %6664 = and i8 %6663, 1
  %6665 = xor i8 %6664, 1
  store i8 %6665, i8* %88, align 1, !tbaa !2447
  %6666 = xor i64 %6652, %6623
  %6667 = trunc i64 %6666 to i32
  %6668 = xor i32 %6667, %6655
  %6669 = lshr i32 %6668, 4
  %6670 = trunc i32 %6669 to i8
  %6671 = and i8 %6670, 1
  store i8 %6671, i8* %93, align 1, !tbaa !2451
  %6672 = icmp eq i32 %6655, 0
  %6673 = zext i1 %6672 to i8
  store i8 %6673, i8* %96, align 1, !tbaa !2448
  %6674 = lshr i32 %6655, 31
  %6675 = trunc i32 %6674 to i8
  store i8 %6675, i8* %99, align 1, !tbaa !2449
  %6676 = lshr i32 %6654, 31
  %6677 = xor i32 %6674, %6634
  %6678 = xor i32 %6674, %6676
  %6679 = add nuw nsw i32 %6677, %6678
  %6680 = icmp eq i32 %6679, 2
  %6681 = zext i1 %6680 to i8
  store i8 %6681, i8* %105, align 1, !tbaa !2450
  %6682 = add i64 %6636, -76
  %6683 = add i64 %6333, 149
  store i64 %6683, i64* %PC, align 8
  %6684 = inttoptr i64 %6682 to i32*
  %6685 = load i32, i32* %6684, align 4
  %6686 = add i32 %6685, %6655
  %6687 = zext i32 %6686 to i64
  store i64 %6687, i64* %RDX, align 8, !tbaa !2428
  %6688 = icmp ult i32 %6686, %6655
  %6689 = icmp ult i32 %6686, %6685
  %6690 = or i1 %6688, %6689
  %6691 = zext i1 %6690 to i8
  store i8 %6691, i8* %82, align 1, !tbaa !2433
  %6692 = and i32 %6686, 255
  %6693 = tail call i32 @llvm.ctpop.i32(i32 %6692) #12
  %6694 = trunc i32 %6693 to i8
  %6695 = and i8 %6694, 1
  %6696 = xor i8 %6695, 1
  store i8 %6696, i8* %88, align 1, !tbaa !2447
  %6697 = xor i32 %6685, %6655
  %6698 = xor i32 %6697, %6686
  %6699 = lshr i32 %6698, 4
  %6700 = trunc i32 %6699 to i8
  %6701 = and i8 %6700, 1
  store i8 %6701, i8* %93, align 1, !tbaa !2451
  %6702 = icmp eq i32 %6686, 0
  %6703 = zext i1 %6702 to i8
  store i8 %6703, i8* %96, align 1, !tbaa !2448
  %6704 = lshr i32 %6686, 31
  %6705 = trunc i32 %6704 to i8
  store i8 %6705, i8* %99, align 1, !tbaa !2449
  %6706 = lshr i32 %6685, 31
  %6707 = xor i32 %6704, %6674
  %6708 = xor i32 %6704, %6706
  %6709 = add nuw nsw i32 %6707, %6708
  %6710 = icmp eq i32 %6709, 2
  %6711 = zext i1 %6710 to i8
  store i8 %6711, i8* %105, align 1, !tbaa !2450
  %6712 = sext i32 %6686 to i64
  store i64 %6712, i64* %RCX, align 8, !tbaa !2428
  %6713 = load i64, i64* %RAX, align 8
  %6714 = shl nsw i64 %6712, 2
  %6715 = add i64 %6713, %6714
  %6716 = add i64 %6333, 157
  store i64 %6716, i64* %PC, align 8
  %6717 = load <2 x float>, <2 x float>* %192, align 1
  %6718 = load <2 x i32>, <2 x i32>* %197, align 1
  %6719 = inttoptr i64 %6715 to float*
  %6720 = load float, float* %6719, align 4
  %6721 = extractelement <2 x float> %6717, i32 0
  %6722 = fsub float %6721, %6720
  store float %6722, float* %193, align 1, !tbaa !2452
  %6723 = bitcast <2 x float> %6717 to <2 x i32>
  %6724 = extractelement <2 x i32> %6723, i32 1
  store i32 %6724, i32* %188, align 1, !tbaa !2452
  %6725 = extractelement <2 x i32> %6718, i32 0
  store i32 %6725, i32* %189, align 1, !tbaa !2452
  %6726 = extractelement <2 x i32> %6718, i32 1
  store i32 %6726, i32* %191, align 1, !tbaa !2452
  %6727 = load i64, i64* %RBP, align 8
  %6728 = add i64 %6727, -48
  %6729 = add i64 %6333, 161
  store i64 %6729, i64* %PC, align 8
  %6730 = inttoptr i64 %6728 to i64*
  %6731 = load i64, i64* %6730, align 8
  store i64 %6731, i64* %RAX, align 8, !tbaa !2428
  %6732 = add i64 %6333, 164
  store i64 %6732, i64* %PC, align 8
  %6733 = inttoptr i64 %6731 to i64*
  %6734 = load i64, i64* %6733, align 8
  store i64 %6734, i64* %RAX, align 8, !tbaa !2428
  %6735 = add i64 %6333, 168
  store i64 %6735, i64* %PC, align 8
  %6736 = load i64, i64* %6730, align 8
  store i64 %6736, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6737 = add i64 %6333, 176
  store i64 %6737, i64* %PC, align 8
  %6738 = load i64, i64* %6730, align 8
  store i64 %6738, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6739 = add i64 %6333, 184
  store i64 %6739, i64* %PC, align 8
  %6740 = load i64, i64* %6730, align 8
  store i64 %6740, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6741 = add i64 %6727, -68
  %6742 = add i64 %6333, 191
  store i64 %6742, i64* %PC, align 8
  %6743 = inttoptr i64 %6741 to i32*
  %6744 = load i32, i32* %6743, align 4
  %6745 = zext i32 %6744 to i64
  store i64 %6745, i64* %RSI, align 8, !tbaa !2428
  %6746 = add i64 %6333, 195
  store i64 %6746, i64* %PC, align 8
  %6747 = load i64, i64* %6730, align 8
  store i64 %6747, i64* %RCX, align 8, !tbaa !2428
  %6748 = add i64 %6747, 16
  %6749 = add i64 %6333, 199
  store i64 %6749, i64* %PC, align 8
  %6750 = inttoptr i64 %6748 to i32*
  %6751 = load i32, i32* %6750, align 4
  %6752 = sext i32 %6744 to i64
  %6753 = sext i32 %6751 to i64
  %6754 = mul nsw i64 %6753, %6752
  %6755 = trunc i64 %6754 to i32
  %6756 = and i64 %6754, 4294967295
  store i64 %6756, i64* %RSI, align 8, !tbaa !2428
  %6757 = shl i64 %6754, 32
  %6758 = ashr exact i64 %6757, 32
  %6759 = icmp ne i64 %6758, %6754
  %6760 = zext i1 %6759 to i8
  store i8 %6760, i8* %82, align 1, !tbaa !2433
  %6761 = and i32 %6755, 255
  %6762 = tail call i32 @llvm.ctpop.i32(i32 %6761) #12
  %6763 = trunc i32 %6762 to i8
  %6764 = and i8 %6763, 1
  %6765 = xor i8 %6764, 1
  store i8 %6765, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6766 = lshr i32 %6755, 31
  %6767 = trunc i32 %6766 to i8
  store i8 %6767, i8* %99, align 1, !tbaa !2449
  store i8 %6760, i8* %105, align 1, !tbaa !2450
  %6768 = add i64 %6333, 203
  store i64 %6768, i64* %PC, align 8
  %6769 = load i64, i64* %6730, align 8
  store i64 %6769, i64* %RCX, align 8, !tbaa !2428
  %6770 = add i64 %6769, 20
  %6771 = add i64 %6333, 207
  store i64 %6771, i64* %PC, align 8
  %6772 = inttoptr i64 %6770 to i32*
  %6773 = load i32, i32* %6772, align 4
  %6774 = shl i64 %6754, 32
  %6775 = ashr exact i64 %6774, 32
  %6776 = sext i32 %6773 to i64
  %6777 = mul nsw i64 %6776, %6775
  %6778 = and i64 %6777, 4294967295
  store i64 %6778, i64* %RSI, align 8, !tbaa !2428
  %6779 = trunc i64 %6777 to i32
  %6780 = and i64 %6777, 4294967295
  store i64 %6780, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %6781 = and i32 %6779, 255
  %6782 = tail call i32 @llvm.ctpop.i32(i32 %6781) #12
  %6783 = trunc i32 %6782 to i8
  %6784 = and i8 %6783, 1
  %6785 = xor i8 %6784, 1
  store i8 %6785, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %6786 = icmp eq i32 %6779, 0
  %6787 = zext i1 %6786 to i8
  store i8 %6787, i8* %96, align 1, !tbaa !2448
  %6788 = lshr i32 %6779, 31
  %6789 = trunc i32 %6788 to i8
  store i8 %6789, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6790 = load i64, i64* %RBP, align 8
  %6791 = add i64 %6790, -72
  %6792 = add i64 %6333, 212
  store i64 %6792, i64* %PC, align 8
  %6793 = inttoptr i64 %6791 to i32*
  %6794 = load i32, i32* %6793, align 4
  %6795 = zext i32 %6794 to i64
  store i64 %6795, i64* %RSI, align 8, !tbaa !2428
  %6796 = add i64 %6790, -48
  %6797 = add i64 %6333, 216
  store i64 %6797, i64* %PC, align 8
  %6798 = inttoptr i64 %6796 to i64*
  %6799 = load i64, i64* %6798, align 8
  store i64 %6799, i64* %RCX, align 8, !tbaa !2428
  %6800 = add i64 %6799, 20
  %6801 = add i64 %6333, 220
  store i64 %6801, i64* %PC, align 8
  %6802 = inttoptr i64 %6800 to i32*
  %6803 = load i32, i32* %6802, align 4
  %6804 = sext i32 %6794 to i64
  %6805 = sext i32 %6803 to i64
  %6806 = mul nsw i64 %6805, %6804
  %6807 = and i64 %6806, 4294967295
  store i64 %6807, i64* %RSI, align 8, !tbaa !2428
  %6808 = trunc i64 %6806 to i32
  %6809 = add i32 %6808, %6779
  %6810 = zext i32 %6809 to i64
  store i64 %6810, i64* %RDX, align 8, !tbaa !2428
  %6811 = icmp ult i32 %6809, %6779
  %6812 = icmp ult i32 %6809, %6808
  %6813 = or i1 %6811, %6812
  %6814 = zext i1 %6813 to i8
  store i8 %6814, i8* %82, align 1, !tbaa !2433
  %6815 = and i32 %6809, 255
  %6816 = tail call i32 @llvm.ctpop.i32(i32 %6815) #12
  %6817 = trunc i32 %6816 to i8
  %6818 = and i8 %6817, 1
  %6819 = xor i8 %6818, 1
  store i8 %6819, i8* %88, align 1, !tbaa !2447
  %6820 = xor i64 %6806, %6777
  %6821 = trunc i64 %6820 to i32
  %6822 = xor i32 %6821, %6809
  %6823 = lshr i32 %6822, 4
  %6824 = trunc i32 %6823 to i8
  %6825 = and i8 %6824, 1
  store i8 %6825, i8* %93, align 1, !tbaa !2451
  %6826 = icmp eq i32 %6809, 0
  %6827 = zext i1 %6826 to i8
  store i8 %6827, i8* %96, align 1, !tbaa !2448
  %6828 = lshr i32 %6809, 31
  %6829 = trunc i32 %6828 to i8
  store i8 %6829, i8* %99, align 1, !tbaa !2449
  %6830 = lshr i32 %6808, 31
  %6831 = xor i32 %6828, %6788
  %6832 = xor i32 %6828, %6830
  %6833 = add nuw nsw i32 %6831, %6832
  %6834 = icmp eq i32 %6833, 2
  %6835 = zext i1 %6834 to i8
  store i8 %6835, i8* %105, align 1, !tbaa !2450
  %6836 = add i64 %6790, -76
  %6837 = add i64 %6333, 225
  store i64 %6837, i64* %PC, align 8
  %6838 = inttoptr i64 %6836 to i32*
  %6839 = load i32, i32* %6838, align 4
  %6840 = add i32 %6839, %6809
  %6841 = zext i32 %6840 to i64
  store i64 %6841, i64* %RDX, align 8, !tbaa !2428
  %6842 = icmp ult i32 %6840, %6809
  %6843 = icmp ult i32 %6840, %6839
  %6844 = or i1 %6842, %6843
  %6845 = zext i1 %6844 to i8
  store i8 %6845, i8* %82, align 1, !tbaa !2433
  %6846 = and i32 %6840, 255
  %6847 = tail call i32 @llvm.ctpop.i32(i32 %6846) #12
  %6848 = trunc i32 %6847 to i8
  %6849 = and i8 %6848, 1
  %6850 = xor i8 %6849, 1
  store i8 %6850, i8* %88, align 1, !tbaa !2447
  %6851 = xor i32 %6839, %6809
  %6852 = xor i32 %6851, %6840
  %6853 = lshr i32 %6852, 4
  %6854 = trunc i32 %6853 to i8
  %6855 = and i8 %6854, 1
  store i8 %6855, i8* %93, align 1, !tbaa !2451
  %6856 = icmp eq i32 %6840, 0
  %6857 = zext i1 %6856 to i8
  store i8 %6857, i8* %96, align 1, !tbaa !2448
  %6858 = lshr i32 %6840, 31
  %6859 = trunc i32 %6858 to i8
  store i8 %6859, i8* %99, align 1, !tbaa !2449
  %6860 = lshr i32 %6839, 31
  %6861 = xor i32 %6858, %6828
  %6862 = xor i32 %6858, %6860
  %6863 = add nuw nsw i32 %6861, %6862
  %6864 = icmp eq i32 %6863, 2
  %6865 = zext i1 %6864 to i8
  store i8 %6865, i8* %105, align 1, !tbaa !2450
  %6866 = sext i32 %6840 to i64
  store i64 %6866, i64* %RCX, align 8, !tbaa !2428
  %6867 = load i64, i64* %RAX, align 8
  %6868 = shl nsw i64 %6866, 2
  %6869 = add i64 %6867, %6868
  %6870 = add i64 %6333, 233
  store i64 %6870, i64* %PC, align 8
  %6871 = load <2 x float>, <2 x float>* %192, align 1
  %6872 = load <2 x i32>, <2 x i32>* %197, align 1
  %6873 = inttoptr i64 %6869 to float*
  %6874 = load float, float* %6873, align 4
  %6875 = extractelement <2 x float> %6871, i32 0
  %6876 = fmul float %6875, %6874
  store float %6876, float* %193, align 1, !tbaa !2452
  %6877 = bitcast <2 x float> %6871 to <2 x i32>
  %6878 = extractelement <2 x i32> %6877, i32 1
  store i32 %6878, i32* %188, align 1, !tbaa !2452
  %6879 = extractelement <2 x i32> %6872, i32 0
  store i32 %6879, i32* %189, align 1, !tbaa !2452
  %6880 = extractelement <2 x i32> %6872, i32 1
  store i32 %6880, i32* %191, align 1, !tbaa !2452
  %6881 = load i64, i64* %RBP, align 8
  %6882 = add i64 %6881, -104
  %6883 = add i64 %6333, 238
  store i64 %6883, i64* %PC, align 8
  %6884 = load <2 x float>, <2 x float>* %192, align 1
  %6885 = extractelement <2 x float> %6884, i32 0
  %6886 = inttoptr i64 %6882 to float*
  store float %6885, float* %6886, align 4
  %6887 = load i64, i64* %RBP, align 8
  %6888 = add i64 %6887, -104
  %6889 = load i64, i64* %PC, align 8
  %6890 = add i64 %6889, 5
  store i64 %6890, i64* %PC, align 8
  %6891 = inttoptr i64 %6888 to i32*
  %6892 = load i32, i32* %6891, align 4
  store i32 %6892, i32* %186, align 1, !tbaa !2452
  store float 0.000000e+00, float* %194, align 1, !tbaa !2452
  store float 0.000000e+00, float* %195, align 1, !tbaa !2452
  store float 0.000000e+00, float* %196, align 1, !tbaa !2452
  %6893 = add i64 %6889, 10
  store i64 %6893, i64* %PC, align 8
  %6894 = load <2 x float>, <2 x float>* %192, align 1
  %6895 = load <2 x i32>, <2 x i32>* %197, align 1
  %6896 = inttoptr i64 %6888 to float*
  %6897 = load float, float* %6896, align 4
  %6898 = extractelement <2 x float> %6894, i32 0
  %6899 = fmul float %6898, %6897
  store float %6899, float* %193, align 1, !tbaa !2452
  %6900 = bitcast <2 x float> %6894 to <2 x i32>
  %6901 = extractelement <2 x i32> %6900, i32 1
  store i32 %6901, i32* %188, align 1, !tbaa !2452
  %6902 = extractelement <2 x i32> %6895, i32 0
  store i32 %6902, i32* %189, align 1, !tbaa !2452
  %6903 = extractelement <2 x i32> %6895, i32 1
  store i32 %6903, i32* %191, align 1, !tbaa !2452
  %6904 = add i64 %6887, -96
  %6905 = add i64 %6889, 15
  store i64 %6905, i64* %PC, align 8
  %6906 = load <2 x float>, <2 x float>* %192, align 1
  %6907 = load <2 x i32>, <2 x i32>* %197, align 1
  %6908 = inttoptr i64 %6904 to float*
  %6909 = load float, float* %6908, align 4
  %6910 = extractelement <2 x float> %6906, i32 0
  %6911 = fadd float %6910, %6909
  store float %6911, float* %193, align 1, !tbaa !2452
  %6912 = bitcast <2 x float> %6906 to <2 x i32>
  %6913 = extractelement <2 x i32> %6912, i32 1
  store i32 %6913, i32* %188, align 1, !tbaa !2452
  %6914 = extractelement <2 x i32> %6907, i32 0
  store i32 %6914, i32* %189, align 1, !tbaa !2452
  %6915 = extractelement <2 x i32> %6907, i32 1
  store i32 %6915, i32* %191, align 1, !tbaa !2452
  %6916 = add i64 %6889, 20
  store i64 %6916, i64* %PC, align 8
  %6917 = load <2 x float>, <2 x float>* %192, align 1
  %6918 = extractelement <2 x float> %6917, i32 0
  store float %6918, float* %6908, align 4
  %6919 = load i64, i64* %RBP, align 8
  %6920 = add i64 %6919, -40
  %6921 = load i64, i64* %PC, align 8
  %6922 = add i64 %6921, 4
  store i64 %6922, i64* %PC, align 8
  %6923 = inttoptr i64 %6920 to i64*
  %6924 = load i64, i64* %6923, align 8
  store i64 %6924, i64* %RAX, align 8, !tbaa !2428
  %6925 = add i64 %6921, 7
  store i64 %6925, i64* %PC, align 8
  %6926 = inttoptr i64 %6924 to i64*
  %6927 = load i64, i64* %6926, align 8
  store i64 %6927, i64* %RAX, align 8, !tbaa !2428
  %6928 = add i64 %6921, 11
  store i64 %6928, i64* %PC, align 8
  %6929 = load i64, i64* %6923, align 8
  store i64 %6929, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6930 = add i64 %6921, 19
  store i64 %6930, i64* %PC, align 8
  %6931 = load i64, i64* %6923, align 8
  store i64 %6931, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6932 = add i64 %6921, 27
  store i64 %6932, i64* %PC, align 8
  %6933 = load i64, i64* %6923, align 8
  store i64 %6933, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6934 = add i64 %6919, -68
  %6935 = add i64 %6921, 34
  store i64 %6935, i64* %PC, align 8
  %6936 = inttoptr i64 %6934 to i32*
  %6937 = load i32, i32* %6936, align 4
  %6938 = zext i32 %6937 to i64
  store i64 %6938, i64* %RSI, align 8, !tbaa !2428
  %6939 = add i64 %6921, 38
  store i64 %6939, i64* %PC, align 8
  %6940 = load i64, i64* %6923, align 8
  store i64 %6940, i64* %RCX, align 8, !tbaa !2428
  %6941 = add i64 %6940, 16
  %6942 = add i64 %6921, 42
  store i64 %6942, i64* %PC, align 8
  %6943 = inttoptr i64 %6941 to i32*
  %6944 = load i32, i32* %6943, align 4
  %6945 = sext i32 %6937 to i64
  %6946 = sext i32 %6944 to i64
  %6947 = mul nsw i64 %6946, %6945
  %6948 = trunc i64 %6947 to i32
  %6949 = and i64 %6947, 4294967295
  store i64 %6949, i64* %RSI, align 8, !tbaa !2428
  %6950 = shl i64 %6947, 32
  %6951 = ashr exact i64 %6950, 32
  %6952 = icmp ne i64 %6951, %6947
  %6953 = zext i1 %6952 to i8
  store i8 %6953, i8* %82, align 1, !tbaa !2433
  %6954 = and i32 %6948, 255
  %6955 = tail call i32 @llvm.ctpop.i32(i32 %6954) #12
  %6956 = trunc i32 %6955 to i8
  %6957 = and i8 %6956, 1
  %6958 = xor i8 %6957, 1
  store i8 %6958, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %6959 = lshr i32 %6948, 31
  %6960 = trunc i32 %6959 to i8
  store i8 %6960, i8* %99, align 1, !tbaa !2449
  store i8 %6953, i8* %105, align 1, !tbaa !2450
  %6961 = load i64, i64* %RBP, align 8
  %6962 = add i64 %6961, -40
  %6963 = add i64 %6921, 46
  store i64 %6963, i64* %PC, align 8
  %6964 = inttoptr i64 %6962 to i64*
  %6965 = load i64, i64* %6964, align 8
  store i64 %6965, i64* %RCX, align 8, !tbaa !2428
  %6966 = add i64 %6965, 20
  %6967 = add i64 %6921, 50
  store i64 %6967, i64* %PC, align 8
  %6968 = inttoptr i64 %6966 to i32*
  %6969 = load i32, i32* %6968, align 4
  %6970 = shl i64 %6947, 32
  %6971 = ashr exact i64 %6970, 32
  %6972 = sext i32 %6969 to i64
  %6973 = mul nsw i64 %6972, %6971
  %6974 = and i64 %6973, 4294967295
  store i64 %6974, i64* %RSI, align 8, !tbaa !2428
  %6975 = trunc i64 %6973 to i32
  %6976 = and i64 %6973, 4294967295
  store i64 %6976, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %6977 = and i32 %6975, 255
  %6978 = tail call i32 @llvm.ctpop.i32(i32 %6977) #12
  %6979 = trunc i32 %6978 to i8
  %6980 = and i8 %6979, 1
  %6981 = xor i8 %6980, 1
  store i8 %6981, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %6982 = icmp eq i32 %6975, 0
  %6983 = zext i1 %6982 to i8
  store i8 %6983, i8* %96, align 1, !tbaa !2448
  %6984 = lshr i32 %6975, 31
  %6985 = trunc i32 %6984 to i8
  store i8 %6985, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %6986 = add i64 %6961, -72
  %6987 = add i64 %6921, 55
  store i64 %6987, i64* %PC, align 8
  %6988 = inttoptr i64 %6986 to i32*
  %6989 = load i32, i32* %6988, align 4
  %6990 = zext i32 %6989 to i64
  store i64 %6990, i64* %RSI, align 8, !tbaa !2428
  %6991 = add i64 %6921, 59
  store i64 %6991, i64* %PC, align 8
  %6992 = load i64, i64* %6964, align 8
  store i64 %6992, i64* %RCX, align 8, !tbaa !2428
  %6993 = add i64 %6992, 20
  %6994 = add i64 %6921, 63
  store i64 %6994, i64* %PC, align 8
  %6995 = inttoptr i64 %6993 to i32*
  %6996 = load i32, i32* %6995, align 4
  %6997 = sext i32 %6989 to i64
  %6998 = sext i32 %6996 to i64
  %6999 = mul nsw i64 %6998, %6997
  %7000 = and i64 %6999, 4294967295
  store i64 %7000, i64* %RSI, align 8, !tbaa !2428
  %7001 = trunc i64 %6999 to i32
  %7002 = add i32 %7001, %6975
  %7003 = zext i32 %7002 to i64
  store i64 %7003, i64* %RDX, align 8, !tbaa !2428
  %7004 = icmp ult i32 %7002, %6975
  %7005 = icmp ult i32 %7002, %7001
  %7006 = or i1 %7004, %7005
  %7007 = zext i1 %7006 to i8
  store i8 %7007, i8* %82, align 1, !tbaa !2433
  %7008 = and i32 %7002, 255
  %7009 = tail call i32 @llvm.ctpop.i32(i32 %7008) #12
  %7010 = trunc i32 %7009 to i8
  %7011 = and i8 %7010, 1
  %7012 = xor i8 %7011, 1
  store i8 %7012, i8* %88, align 1, !tbaa !2447
  %7013 = xor i64 %6999, %6973
  %7014 = trunc i64 %7013 to i32
  %7015 = xor i32 %7014, %7002
  %7016 = lshr i32 %7015, 4
  %7017 = trunc i32 %7016 to i8
  %7018 = and i8 %7017, 1
  store i8 %7018, i8* %93, align 1, !tbaa !2451
  %7019 = icmp eq i32 %7002, 0
  %7020 = zext i1 %7019 to i8
  store i8 %7020, i8* %96, align 1, !tbaa !2448
  %7021 = lshr i32 %7002, 31
  %7022 = trunc i32 %7021 to i8
  store i8 %7022, i8* %99, align 1, !tbaa !2449
  %7023 = lshr i32 %7001, 31
  %7024 = xor i32 %7021, %6984
  %7025 = xor i32 %7021, %7023
  %7026 = add nuw nsw i32 %7024, %7025
  %7027 = icmp eq i32 %7026, 2
  %7028 = zext i1 %7027 to i8
  store i8 %7028, i8* %105, align 1, !tbaa !2450
  %7029 = load i64, i64* %RBP, align 8
  %7030 = add i64 %7029, -76
  %7031 = add i64 %6921, 68
  store i64 %7031, i64* %PC, align 8
  %7032 = inttoptr i64 %7030 to i32*
  %7033 = load i32, i32* %7032, align 4
  %7034 = add i32 %7033, %7002
  %7035 = zext i32 %7034 to i64
  store i64 %7035, i64* %RDX, align 8, !tbaa !2428
  %7036 = icmp ult i32 %7034, %7002
  %7037 = icmp ult i32 %7034, %7033
  %7038 = or i1 %7036, %7037
  %7039 = zext i1 %7038 to i8
  store i8 %7039, i8* %82, align 1, !tbaa !2433
  %7040 = and i32 %7034, 255
  %7041 = tail call i32 @llvm.ctpop.i32(i32 %7040) #12
  %7042 = trunc i32 %7041 to i8
  %7043 = and i8 %7042, 1
  %7044 = xor i8 %7043, 1
  store i8 %7044, i8* %88, align 1, !tbaa !2447
  %7045 = xor i32 %7033, %7002
  %7046 = xor i32 %7045, %7034
  %7047 = lshr i32 %7046, 4
  %7048 = trunc i32 %7047 to i8
  %7049 = and i8 %7048, 1
  store i8 %7049, i8* %93, align 1, !tbaa !2451
  %7050 = icmp eq i32 %7034, 0
  %7051 = zext i1 %7050 to i8
  store i8 %7051, i8* %96, align 1, !tbaa !2448
  %7052 = lshr i32 %7034, 31
  %7053 = trunc i32 %7052 to i8
  store i8 %7053, i8* %99, align 1, !tbaa !2449
  %7054 = lshr i32 %7033, 31
  %7055 = xor i32 %7052, %7021
  %7056 = xor i32 %7052, %7054
  %7057 = add nuw nsw i32 %7055, %7056
  %7058 = icmp eq i32 %7057, 2
  %7059 = zext i1 %7058 to i8
  store i8 %7059, i8* %105, align 1, !tbaa !2450
  %7060 = sext i32 %7034 to i64
  store i64 %7060, i64* %RCX, align 8, !tbaa !2428
  %7061 = load i64, i64* %RAX, align 8
  %7062 = shl nsw i64 %7060, 2
  %7063 = add i64 %7061, %7062
  %7064 = add i64 %6921, 76
  store i64 %7064, i64* %PC, align 8
  %7065 = inttoptr i64 %7063 to i32*
  %7066 = load i32, i32* %7065, align 4
  store i32 %7066, i32* %186, align 1, !tbaa !2452
  store float 0.000000e+00, float* %194, align 1, !tbaa !2452
  store float 0.000000e+00, float* %195, align 1, !tbaa !2452
  store float 0.000000e+00, float* %196, align 1, !tbaa !2452
  %7067 = load i32, i32* bitcast (%omega_type* @omega to i32*), align 8
  store i32 %7067, i32* %200, align 1, !tbaa !2452
  store float 0.000000e+00, float* %202, align 1, !tbaa !2452
  store float 0.000000e+00, float* %204, align 1, !tbaa !2452
  store float 0.000000e+00, float* %206, align 1, !tbaa !2452
  %7068 = add i64 %7029, -104
  %7069 = add i64 %6921, 90
  store i64 %7069, i64* %PC, align 8
  %7070 = load <2 x float>, <2 x float>* %207, align 1
  %7071 = load <2 x i32>, <2 x i32>* %208, align 1
  %7072 = inttoptr i64 %7068 to float*
  %7073 = load float, float* %7072, align 4
  %7074 = extractelement <2 x float> %7070, i32 0
  %7075 = fmul float %7074, %7073
  store float %7075, float* %199, align 1, !tbaa !2452
  %7076 = bitcast <2 x float> %7070 to <2 x i32>
  %7077 = extractelement <2 x i32> %7076, i32 1
  store i32 %7077, i32* %209, align 1, !tbaa !2452
  %7078 = extractelement <2 x i32> %7071, i32 0
  store i32 %7078, i32* %210, align 1, !tbaa !2452
  %7079 = extractelement <2 x i32> %7071, i32 1
  store i32 %7079, i32* %211, align 1, !tbaa !2452
  %7080 = load <2 x float>, <2 x float>* %192, align 1
  %7081 = load <2 x i32>, <2 x i32>* %197, align 1
  %7082 = load <2 x float>, <2 x float>* %207, align 1
  %7083 = extractelement <2 x float> %7080, i32 0
  %7084 = extractelement <2 x float> %7082, i32 0
  %7085 = fadd float %7083, %7084
  store float %7085, float* %193, align 1, !tbaa !2452
  %7086 = bitcast <2 x float> %7080 to <2 x i32>
  %7087 = extractelement <2 x i32> %7086, i32 1
  store i32 %7087, i32* %188, align 1, !tbaa !2452
  %7088 = extractelement <2 x i32> %7081, i32 0
  store i32 %7088, i32* %189, align 1, !tbaa !2452
  %7089 = extractelement <2 x i32> %7081, i32 1
  store i32 %7089, i32* %191, align 1, !tbaa !2452
  %7090 = add i64 %7029, -64
  %7091 = add i64 %6921, 98
  store i64 %7091, i64* %PC, align 8
  %7092 = inttoptr i64 %7090 to i64*
  %7093 = load i64, i64* %7092, align 8
  store i64 %7093, i64* %RAX, align 8, !tbaa !2428
  %7094 = add i64 %6921, 101
  store i64 %7094, i64* %PC, align 8
  %7095 = inttoptr i64 %7093 to i64*
  %7096 = load i64, i64* %7095, align 8
  store i64 %7096, i64* %RAX, align 8, !tbaa !2428
  %7097 = load i64, i64* %RBP, align 8
  %7098 = add i64 %7097, -64
  %7099 = add i64 %6921, 105
  store i64 %7099, i64* %PC, align 8
  %7100 = inttoptr i64 %7098 to i64*
  %7101 = load i64, i64* %7100, align 8
  store i64 %7101, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %7102 = add i64 %6921, 113
  store i64 %7102, i64* %PC, align 8
  %7103 = load i64, i64* %7100, align 8
  store i64 %7103, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %7104 = add i64 %6921, 121
  store i64 %7104, i64* %PC, align 8
  %7105 = load i64, i64* %7100, align 8
  store i64 %7105, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  store i8 1, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  store i8 0, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %7106 = add i64 %7097, -68
  %7107 = add i64 %6921, 128
  store i64 %7107, i64* %PC, align 8
  %7108 = inttoptr i64 %7106 to i32*
  %7109 = load i32, i32* %7108, align 4
  %7110 = zext i32 %7109 to i64
  store i64 %7110, i64* %RSI, align 8, !tbaa !2428
  %7111 = add i64 %6921, 132
  store i64 %7111, i64* %PC, align 8
  %7112 = load i64, i64* %7100, align 8
  store i64 %7112, i64* %RCX, align 8, !tbaa !2428
  %7113 = add i64 %7112, 16
  %7114 = add i64 %6921, 136
  store i64 %7114, i64* %PC, align 8
  %7115 = inttoptr i64 %7113 to i32*
  %7116 = load i32, i32* %7115, align 4
  %7117 = sext i32 %7109 to i64
  %7118 = sext i32 %7116 to i64
  %7119 = mul nsw i64 %7118, %7117
  %7120 = trunc i64 %7119 to i32
  %7121 = and i64 %7119, 4294967295
  store i64 %7121, i64* %RSI, align 8, !tbaa !2428
  %7122 = shl i64 %7119, 32
  %7123 = ashr exact i64 %7122, 32
  %7124 = icmp ne i64 %7123, %7119
  %7125 = zext i1 %7124 to i8
  store i8 %7125, i8* %82, align 1, !tbaa !2433
  %7126 = and i32 %7120, 255
  %7127 = tail call i32 @llvm.ctpop.i32(i32 %7126) #12
  %7128 = trunc i32 %7127 to i8
  %7129 = and i8 %7128, 1
  %7130 = xor i8 %7129, 1
  store i8 %7130, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  store i8 0, i8* %96, align 1, !tbaa !2448
  %7131 = lshr i32 %7120, 31
  %7132 = trunc i32 %7131 to i8
  store i8 %7132, i8* %99, align 1, !tbaa !2449
  store i8 %7125, i8* %105, align 1, !tbaa !2450
  %7133 = add i64 %6921, 140
  store i64 %7133, i64* %PC, align 8
  %7134 = load i64, i64* %7100, align 8
  store i64 %7134, i64* %RCX, align 8, !tbaa !2428
  %7135 = add i64 %7134, 20
  %7136 = add i64 %6921, 144
  store i64 %7136, i64* %PC, align 8
  %7137 = inttoptr i64 %7135 to i32*
  %7138 = load i32, i32* %7137, align 4
  %7139 = shl i64 %7119, 32
  %7140 = ashr exact i64 %7139, 32
  %7141 = sext i32 %7138 to i64
  %7142 = mul nsw i64 %7141, %7140
  %7143 = and i64 %7142, 4294967295
  store i64 %7143, i64* %RSI, align 8, !tbaa !2428
  %7144 = trunc i64 %7142 to i32
  %7145 = and i64 %7142, 4294967295
  store i64 %7145, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2433
  %7146 = and i32 %7144, 255
  %7147 = tail call i32 @llvm.ctpop.i32(i32 %7146) #12
  %7148 = trunc i32 %7147 to i8
  %7149 = and i8 %7148, 1
  %7150 = xor i8 %7149, 1
  store i8 %7150, i8* %88, align 1, !tbaa !2447
  store i8 0, i8* %93, align 1, !tbaa !2451
  %7151 = icmp eq i32 %7144, 0
  %7152 = zext i1 %7151 to i8
  store i8 %7152, i8* %96, align 1, !tbaa !2448
  %7153 = lshr i32 %7144, 31
  %7154 = trunc i32 %7153 to i8
  store i8 %7154, i8* %99, align 1, !tbaa !2449
  store i8 0, i8* %105, align 1, !tbaa !2450
  %7155 = load i64, i64* %RBP, align 8
  %7156 = add i64 %7155, -72
  %7157 = add i64 %6921, 149
  store i64 %7157, i64* %PC, align 8
  %7158 = inttoptr i64 %7156 to i32*
  %7159 = load i32, i32* %7158, align 4
  %7160 = zext i32 %7159 to i64
  store i64 %7160, i64* %RSI, align 8, !tbaa !2428
  %7161 = add i64 %7155, -64
  %7162 = add i64 %6921, 153
  store i64 %7162, i64* %PC, align 8
  %7163 = inttoptr i64 %7161 to i64*
  %7164 = load i64, i64* %7163, align 8
  store i64 %7164, i64* %RCX, align 8, !tbaa !2428
  %7165 = add i64 %7164, 20
  %7166 = add i64 %6921, 157
  store i64 %7166, i64* %PC, align 8
  %7167 = inttoptr i64 %7165 to i32*
  %7168 = load i32, i32* %7167, align 4
  %7169 = sext i32 %7159 to i64
  %7170 = sext i32 %7168 to i64
  %7171 = mul nsw i64 %7170, %7169
  %7172 = and i64 %7171, 4294967295
  store i64 %7172, i64* %RSI, align 8, !tbaa !2428
  %7173 = trunc i64 %7171 to i32
  %7174 = add i32 %7173, %7144
  %7175 = zext i32 %7174 to i64
  store i64 %7175, i64* %RDX, align 8, !tbaa !2428
  %7176 = icmp ult i32 %7174, %7144
  %7177 = icmp ult i32 %7174, %7173
  %7178 = or i1 %7176, %7177
  %7179 = zext i1 %7178 to i8
  store i8 %7179, i8* %82, align 1, !tbaa !2433
  %7180 = and i32 %7174, 255
  %7181 = tail call i32 @llvm.ctpop.i32(i32 %7180) #12
  %7182 = trunc i32 %7181 to i8
  %7183 = and i8 %7182, 1
  %7184 = xor i8 %7183, 1
  store i8 %7184, i8* %88, align 1, !tbaa !2447
  %7185 = xor i64 %7171, %7142
  %7186 = trunc i64 %7185 to i32
  %7187 = xor i32 %7186, %7174
  %7188 = lshr i32 %7187, 4
  %7189 = trunc i32 %7188 to i8
  %7190 = and i8 %7189, 1
  store i8 %7190, i8* %93, align 1, !tbaa !2451
  %7191 = icmp eq i32 %7174, 0
  %7192 = zext i1 %7191 to i8
  store i8 %7192, i8* %96, align 1, !tbaa !2448
  %7193 = lshr i32 %7174, 31
  %7194 = trunc i32 %7193 to i8
  store i8 %7194, i8* %99, align 1, !tbaa !2449
  %7195 = lshr i32 %7173, 31
  %7196 = xor i32 %7193, %7153
  %7197 = xor i32 %7193, %7195
  %7198 = add nuw nsw i32 %7196, %7197
  %7199 = icmp eq i32 %7198, 2
  %7200 = zext i1 %7199 to i8
  store i8 %7200, i8* %105, align 1, !tbaa !2450
  %7201 = add i64 %7155, -76
  %7202 = add i64 %6921, 162
  store i64 %7202, i64* %PC, align 8
  %7203 = inttoptr i64 %7201 to i32*
  %7204 = load i32, i32* %7203, align 4
  %7205 = add i32 %7204, %7174
  %7206 = zext i32 %7205 to i64
  store i64 %7206, i64* %RDX, align 8, !tbaa !2428
  %7207 = icmp ult i32 %7205, %7174
  %7208 = icmp ult i32 %7205, %7204
  %7209 = or i1 %7207, %7208
  %7210 = zext i1 %7209 to i8
  store i8 %7210, i8* %82, align 1, !tbaa !2433
  %7211 = and i32 %7205, 255
  %7212 = tail call i32 @llvm.ctpop.i32(i32 %7211) #12
  %7213 = trunc i32 %7212 to i8
  %7214 = and i8 %7213, 1
  %7215 = xor i8 %7214, 1
  store i8 %7215, i8* %88, align 1, !tbaa !2447
  %7216 = xor i32 %7204, %7174
  %7217 = xor i32 %7216, %7205
  %7218 = lshr i32 %7217, 4
  %7219 = trunc i32 %7218 to i8
  %7220 = and i8 %7219, 1
  store i8 %7220, i8* %93, align 1, !tbaa !2451
  %7221 = icmp eq i32 %7205, 0
  %7222 = zext i1 %7221 to i8
  store i8 %7222, i8* %96, align 1, !tbaa !2448
  %7223 = lshr i32 %7205, 31
  %7224 = trunc i32 %7223 to i8
  store i8 %7224, i8* %99, align 1, !tbaa !2449
  %7225 = lshr i32 %7204, 31
  %7226 = xor i32 %7223, %7193
  %7227 = xor i32 %7223, %7225
  %7228 = add nuw nsw i32 %7226, %7227
  %7229 = icmp eq i32 %7228, 2
  %7230 = zext i1 %7229 to i8
  store i8 %7230, i8* %105, align 1, !tbaa !2450
  %7231 = sext i32 %7205 to i64
  store i64 %7231, i64* %RCX, align 8, !tbaa !2428
  %7232 = load i64, i64* %RAX, align 8
  %7233 = shl nsw i64 %7231, 2
  %7234 = add i64 %7232, %7233
  %7235 = add i64 %6921, 170
  store i64 %7235, i64* %PC, align 8
  %7236 = load <2 x float>, <2 x float>* %192, align 1
  %7237 = extractelement <2 x float> %7236, i32 0
  %7238 = inttoptr i64 %7234 to float*
  store float %7237, float* %7238, align 4
  %7239 = load i64, i64* %RBP, align 8
  %7240 = add i64 %7239, -76
  %7241 = load i64, i64* %PC, align 8
  %7242 = add i64 %7241, 3
  store i64 %7242, i64* %PC, align 8
  %7243 = inttoptr i64 %7240 to i32*
  %7244 = load i32, i32* %7243, align 4
  %7245 = add i32 %7244, 1
  %7246 = zext i32 %7245 to i64
  store i64 %7246, i64* %RAX, align 8, !tbaa !2428
  %7247 = icmp eq i32 %7244, -1
  %7248 = icmp eq i32 %7245, 0
  %7249 = or i1 %7247, %7248
  %7250 = zext i1 %7249 to i8
  store i8 %7250, i8* %82, align 1, !tbaa !2433
  %7251 = and i32 %7245, 255
  %7252 = tail call i32 @llvm.ctpop.i32(i32 %7251) #12
  %7253 = trunc i32 %7252 to i8
  %7254 = and i8 %7253, 1
  %7255 = xor i8 %7254, 1
  store i8 %7255, i8* %88, align 1, !tbaa !2447
  %7256 = xor i32 %7245, %7244
  %7257 = lshr i32 %7256, 4
  %7258 = trunc i32 %7257 to i8
  %7259 = and i8 %7258, 1
  store i8 %7259, i8* %93, align 1, !tbaa !2451
  %7260 = zext i1 %7248 to i8
  store i8 %7260, i8* %96, align 1, !tbaa !2448
  %7261 = lshr i32 %7245, 31
  %7262 = trunc i32 %7261 to i8
  store i8 %7262, i8* %99, align 1, !tbaa !2449
  %7263 = lshr i32 %7244, 31
  %7264 = xor i32 %7261, %7263
  %7265 = add nuw nsw i32 %7264, %7261
  %7266 = icmp eq i32 %7265, 2
  %7267 = zext i1 %7266 to i8
  store i8 %7267, i8* %105, align 1, !tbaa !2450
  %7268 = add i64 %7241, 9
  store i64 %7268, i64* %PC, align 8
  store i32 %7245, i32* %7243, align 4
  %7269 = load i64, i64* %PC, align 8
  %7270 = add i64 %7269, -2748
  store i64 %7270, i64* %PC, align 8, !tbaa !2428
  br label %block_400d9a

block_401888:                                     ; preds = %block_401881, %block_401973
  %7271 = phi i64 [ %.pre25, %block_401881 ], [ %256, %block_401973 ]
  %7272 = load i64, i64* %RBP, align 8
  %7273 = add i64 %7272, -68
  %7274 = add i64 %7271, 3
  store i64 %7274, i64* %PC, align 8
  %7275 = inttoptr i64 %7273 to i32*
  %7276 = load i32, i32* %7275, align 4
  %7277 = zext i32 %7276 to i64
  store i64 %7277, i64* %RAX, align 8, !tbaa !2428
  %7278 = add i64 %7272, -84
  %7279 = add i64 %7271, 6
  store i64 %7279, i64* %PC, align 8
  %7280 = inttoptr i64 %7278 to i32*
  %7281 = load i32, i32* %7280, align 4
  %7282 = sub i32 %7276, %7281
  %7283 = icmp ult i32 %7276, %7281
  %7284 = zext i1 %7283 to i8
  store i8 %7284, i8* %82, align 1, !tbaa !2433
  %7285 = and i32 %7282, 255
  %7286 = tail call i32 @llvm.ctpop.i32(i32 %7285) #12
  %7287 = trunc i32 %7286 to i8
  %7288 = and i8 %7287, 1
  %7289 = xor i8 %7288, 1
  store i8 %7289, i8* %88, align 1, !tbaa !2447
  %7290 = xor i32 %7281, %7276
  %7291 = xor i32 %7290, %7282
  %7292 = lshr i32 %7291, 4
  %7293 = trunc i32 %7292 to i8
  %7294 = and i8 %7293, 1
  store i8 %7294, i8* %93, align 1, !tbaa !2451
  %7295 = icmp eq i32 %7282, 0
  %7296 = zext i1 %7295 to i8
  store i8 %7296, i8* %96, align 1, !tbaa !2448
  %7297 = lshr i32 %7282, 31
  %7298 = trunc i32 %7297 to i8
  store i8 %7298, i8* %99, align 1, !tbaa !2449
  %7299 = lshr i32 %7276, 31
  %7300 = lshr i32 %7281, 31
  %7301 = xor i32 %7300, %7299
  %7302 = xor i32 %7297, %7299
  %7303 = add nuw nsw i32 %7302, %7301
  %7304 = icmp eq i32 %7303, 2
  %7305 = zext i1 %7304 to i8
  store i8 %7305, i8* %105, align 1, !tbaa !2450
  %7306 = icmp ne i8 %7298, 0
  %7307 = xor i1 %7306, %7304
  %.v = select i1 %7307, i64 12, i64 254
  %7308 = add i64 %7271, %.v
  store i64 %7308, i64* %PC, align 8, !tbaa !2428
  br i1 %7307, label %block_401894, label %block_401986

block_400d87:                                     ; preds = %block_400d80, %block_40185b
  %7309 = phi i64 [ %.pre28, %block_400d80 ], [ %650, %block_40185b ]
  %7310 = load i64, i64* %RBP, align 8
  %7311 = add i64 %7310, -72
  %7312 = add i64 %7309, 3
  store i64 %7312, i64* %PC, align 8
  %7313 = inttoptr i64 %7311 to i32*
  %7314 = load i32, i32* %7313, align 4
  %7315 = zext i32 %7314 to i64
  store i64 %7315, i64* %RAX, align 8, !tbaa !2428
  %7316 = add i64 %7310, -88
  %7317 = add i64 %7309, 6
  store i64 %7317, i64* %PC, align 8
  %7318 = inttoptr i64 %7316 to i32*
  %7319 = load i32, i32* %7318, align 4
  %7320 = sub i32 %7314, %7319
  %7321 = icmp ult i32 %7314, %7319
  %7322 = zext i1 %7321 to i8
  store i8 %7322, i8* %82, align 1, !tbaa !2433
  %7323 = and i32 %7320, 255
  %7324 = tail call i32 @llvm.ctpop.i32(i32 %7323) #12
  %7325 = trunc i32 %7324 to i8
  %7326 = and i8 %7325, 1
  %7327 = xor i8 %7326, 1
  store i8 %7327, i8* %88, align 1, !tbaa !2447
  %7328 = xor i32 %7319, %7314
  %7329 = xor i32 %7328, %7320
  %7330 = lshr i32 %7329, 4
  %7331 = trunc i32 %7330 to i8
  %7332 = and i8 %7331, 1
  store i8 %7332, i8* %93, align 1, !tbaa !2451
  %7333 = icmp eq i32 %7320, 0
  %7334 = zext i1 %7333 to i8
  store i8 %7334, i8* %96, align 1, !tbaa !2448
  %7335 = lshr i32 %7320, 31
  %7336 = trunc i32 %7335 to i8
  store i8 %7336, i8* %99, align 1, !tbaa !2449
  %7337 = lshr i32 %7314, 31
  %7338 = lshr i32 %7319, 31
  %7339 = xor i32 %7338, %7337
  %7340 = xor i32 %7335, %7337
  %7341 = add nuw nsw i32 %7340, %7339
  %7342 = icmp eq i32 %7341, 2
  %7343 = zext i1 %7342 to i8
  store i8 %7343, i8* %105, align 1, !tbaa !2450
  %7344 = icmp ne i8 %7336, 0
  %7345 = xor i1 %7344, %7342
  %.v32 = select i1 %7345, i64 12, i64 2791
  %7346 = add i64 %7309, %.v32
  store i64 %7346, i64* %PC, align 8, !tbaa !2428
  br i1 %7345, label %block_400d93, label %block_40186e

block_401881:                                     ; preds = %block_400d74
  %7347 = add i64 %7418, 7
  store i64 %7347, i64* %PC, align 8
  store i32 1, i32* %7385, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_401888

block_401986:                                     ; preds = %block_401888
  %7348 = add i64 %7272, -80
  %7349 = add i64 %7308, 8
  store i64 %7349, i64* %PC, align 8
  %7350 = inttoptr i64 %7348 to i32*
  %7351 = load i32, i32* %7350, align 4
  %7352 = add i32 %7351, 1
  %7353 = zext i32 %7352 to i64
  store i64 %7353, i64* %RAX, align 8, !tbaa !2428
  %7354 = icmp eq i32 %7351, -1
  %7355 = icmp eq i32 %7352, 0
  %7356 = or i1 %7354, %7355
  %7357 = zext i1 %7356 to i8
  store i8 %7357, i8* %82, align 1, !tbaa !2433
  %7358 = and i32 %7352, 255
  %7359 = tail call i32 @llvm.ctpop.i32(i32 %7358) #12
  %7360 = trunc i32 %7359 to i8
  %7361 = and i8 %7360, 1
  %7362 = xor i8 %7361, 1
  store i8 %7362, i8* %88, align 1, !tbaa !2447
  %7363 = xor i32 %7352, %7351
  %7364 = lshr i32 %7363, 4
  %7365 = trunc i32 %7364 to i8
  %7366 = and i8 %7365, 1
  store i8 %7366, i8* %93, align 1, !tbaa !2451
  %7367 = zext i1 %7355 to i8
  store i8 %7367, i8* %96, align 1, !tbaa !2448
  %7368 = lshr i32 %7352, 31
  %7369 = trunc i32 %7368 to i8
  store i8 %7369, i8* %99, align 1, !tbaa !2449
  %7370 = lshr i32 %7351, 31
  %7371 = xor i32 %7368, %7370
  %7372 = add nuw nsw i32 %7371, %7368
  %7373 = icmp eq i32 %7372, 2
  %7374 = zext i1 %7373 to i8
  store i8 %7374, i8* %105, align 1, !tbaa !2450
  %7375 = add i64 %7308, 14
  store i64 %7375, i64* %PC, align 8
  store i32 %7352, i32* %7350, align 4
  %7376 = load i64, i64* %PC, align 8
  %7377 = add i64 %7376, -3131
  store i64 %7377, i64* %PC, align 8, !tbaa !2428
  br label %block_400d59

block_400d80:                                     ; preds = %block_400d74
  %7378 = add i64 %7382, -72
  %7379 = add i64 %7418, 7
  store i64 %7379, i64* %PC, align 8
  %7380 = inttoptr i64 %7378 to i32*
  store i32 1, i32* %7380, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400d87

block_400d74:                                     ; preds = %block_400d65, %block_40186e
  %7381 = phi i64 [ %.pre24, %block_400d65 ], [ %286, %block_40186e ]
  %7382 = load i64, i64* %RBP, align 8
  %7383 = add i64 %7382, -68
  %7384 = add i64 %7381, 3
  store i64 %7384, i64* %PC, align 8
  %7385 = inttoptr i64 %7383 to i32*
  %7386 = load i32, i32* %7385, align 4
  %7387 = zext i32 %7386 to i64
  store i64 %7387, i64* %RAX, align 8, !tbaa !2428
  %7388 = add i64 %7382, -84
  %7389 = add i64 %7381, 6
  store i64 %7389, i64* %PC, align 8
  %7390 = inttoptr i64 %7388 to i32*
  %7391 = load i32, i32* %7390, align 4
  %7392 = sub i32 %7386, %7391
  %7393 = icmp ult i32 %7386, %7391
  %7394 = zext i1 %7393 to i8
  store i8 %7394, i8* %82, align 1, !tbaa !2433
  %7395 = and i32 %7392, 255
  %7396 = tail call i32 @llvm.ctpop.i32(i32 %7395) #12
  %7397 = trunc i32 %7396 to i8
  %7398 = and i8 %7397, 1
  %7399 = xor i8 %7398, 1
  store i8 %7399, i8* %88, align 1, !tbaa !2447
  %7400 = xor i32 %7391, %7386
  %7401 = xor i32 %7400, %7392
  %7402 = lshr i32 %7401, 4
  %7403 = trunc i32 %7402 to i8
  %7404 = and i8 %7403, 1
  store i8 %7404, i8* %93, align 1, !tbaa !2451
  %7405 = icmp eq i32 %7392, 0
  %7406 = zext i1 %7405 to i8
  store i8 %7406, i8* %96, align 1, !tbaa !2448
  %7407 = lshr i32 %7392, 31
  %7408 = trunc i32 %7407 to i8
  store i8 %7408, i8* %99, align 1, !tbaa !2449
  %7409 = lshr i32 %7386, 31
  %7410 = lshr i32 %7391, 31
  %7411 = xor i32 %7410, %7409
  %7412 = xor i32 %7407, %7409
  %7413 = add nuw nsw i32 %7412, %7411
  %7414 = icmp eq i32 %7413, 2
  %7415 = zext i1 %7414 to i8
  store i8 %7415, i8* %105, align 1, !tbaa !2450
  %7416 = icmp ne i8 %7408, 0
  %7417 = xor i1 %7416, %7414
  %.v35 = select i1 %7417, i64 12, i64 2829
  %7418 = add i64 %7381, %.v35
  store i64 %7418, i64* %PC, align 8, !tbaa !2428
  br i1 %7417, label %block_400d80, label %block_401881
}

; Function Attrs: noinline
define %struct.Memory* @sub_400680_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
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
  %13 = tail call %struct.Memory* @sub_400610_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4019a0_clearMat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4019a0:
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
  store i8 %11, i8* %12, align 1, !tbaa !2433
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #12
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2447
  %20 = xor i64 %6, 16
  %21 = xor i64 %20, %9
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2451
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
  store i8 0, i8* %12, align 1, !tbaa !2433
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #12
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
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
  br i1 %57, label %block_4019c9, label %block_4019ba

block_4019ba:                                     ; preds = %block_4019a0
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
  br label %block_4019c9

block_4019c9:                                     ; preds = %block_4019ba, %block_4019a0
  %73 = phi i64 [ %61, %block_4019a0 ], [ %.pre1, %block_4019ba ]
  %74 = phi i64 [ %42, %block_4019a0 ], [ %.pre, %block_4019ba ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4019a0 ], [ %72, %block_4019ba ]
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
  store i8 %121, i8* %12, align 1, !tbaa !2433
  %122 = trunc i64 %119 to i32
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #12
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %19, align 1, !tbaa !2447
  %128 = xor i64 %117, 16
  %129 = xor i64 %128, %119
  %130 = lshr i64 %129, 4
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %25, align 1, !tbaa !2451
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c20_mat_set(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400c20:
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
  %42 = bitcast %union.VectorReg* %4 to i32*
  %43 = getelementptr inbounds i8, i8* %41, i64 4
  %44 = bitcast i8* %43 to float*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %46 = bitcast i64* %45 to float*
  %47 = getelementptr inbounds i8, i8* %41, i64 12
  %48 = bitcast i8* %47 to float*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c37

block_400cd7:                                     ; preds = %block_400c65
  %49 = add i64 %466, -24
  %50 = add i64 %506, 8
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = icmp eq i32 %52, -1
  %56 = icmp eq i32 %53, 0
  %57 = or i1 %55, %56
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %35, align 1, !tbaa !2433
  %59 = and i32 %53, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #12
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %36, align 1, !tbaa !2447
  %64 = xor i32 %53, %52
  %65 = lshr i32 %64, 4
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %37, align 1, !tbaa !2451
  %68 = zext i1 %56 to i8
  store i8 %68, i8* %38, align 1, !tbaa !2448
  %69 = lshr i32 %53, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %39, align 1, !tbaa !2449
  %71 = lshr i32 %52, 31
  %72 = xor i32 %69, %71
  %73 = add nuw nsw i32 %72, %69
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %40, align 1, !tbaa !2450
  %76 = add i64 %506, 14
  store i64 %76, i64* %PC, align 8
  store i32 %53, i32* %51, align 4
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, -151
  store i64 %78, i64* %PC, align 8, !tbaa !2428
  br label %block_400c4e

block_400c5e:                                     ; preds = %block_400c4e
  %79 = add i64 %394, -28
  %80 = add i64 %434, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 0, i32* %81, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400c65

block_400c37:                                     ; preds = %block_400cea, %block_400c20
  %82 = phi i64 [ %464, %block_400cea ], [ %.pre, %block_400c20 ]
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -20
  %85 = add i64 %82, 3
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = add i64 %83, -8
  %90 = add i64 %82, 7
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RCX, align 8, !tbaa !2428
  %93 = add i64 %92, 12
  %94 = add i64 %82, 10
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %87, %96
  %98 = icmp ult i32 %87, %96
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %35, align 1, !tbaa !2433
  %100 = and i32 %97, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #12
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %36, align 1, !tbaa !2447
  %105 = xor i32 %96, %87
  %106 = xor i32 %105, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %37, align 1, !tbaa !2451
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %38, align 1, !tbaa !2448
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %39, align 1, !tbaa !2449
  %114 = lshr i32 %87, 31
  %115 = lshr i32 %96, 31
  %116 = xor i32 %115, %114
  %117 = xor i32 %112, %114
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %40, align 1, !tbaa !2450
  %121 = icmp ne i8 %113, 0
  %122 = xor i1 %121, %119
  %.v10 = select i1 %122, i64 16, i64 198
  %123 = add i64 %82, %.v10
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br i1 %122, label %block_400c47, label %block_400cfd

block_400c75:                                     ; preds = %block_400c65
  %124 = add i64 %466, -16
  %125 = add i64 %506, 5
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %42, align 1, !tbaa !2452
  store float 0.000000e+00, float* %44, align 1, !tbaa !2452
  store float 0.000000e+00, float* %46, align 1, !tbaa !2452
  store float 0.000000e+00, float* %48, align 1, !tbaa !2452
  %128 = add i64 %506, 9
  store i64 %128, i64* %PC, align 8
  %129 = load i64, i64* %474, align 8
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  %130 = add i64 %506, 12
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = add i64 %466, -12
  %134 = add i64 %506, 15
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = add i64 %506, 19
  store i64 %138, i64* %PC, align 8
  %139 = load i64, i64* %474, align 8
  store i64 %139, i64* %RDX, align 8, !tbaa !2428
  %140 = add i64 %139, 12
  %141 = add i64 %506, 23
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %136 to i64
  %145 = sext i32 %143 to i64
  %146 = mul nsw i64 %145, %144
  %147 = trunc i64 %146 to i32
  %148 = and i64 %146, 4294967295
  store i64 %148, i64* %RCX, align 8, !tbaa !2428
  %149 = shl i64 %146, 32
  %150 = ashr exact i64 %149, 32
  %151 = icmp ne i64 %150, %146
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %35, align 1, !tbaa !2433
  %153 = and i32 %147, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #12
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %36, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %38, align 1, !tbaa !2448
  %158 = lshr i32 %147, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %39, align 1, !tbaa !2449
  store i8 %152, i8* %40, align 1, !tbaa !2450
  %160 = add i64 %506, 27
  store i64 %160, i64* %PC, align 8
  %161 = load i64, i64* %474, align 8
  store i64 %161, i64* %RDX, align 8, !tbaa !2428
  %162 = add i64 %161, 16
  %163 = add i64 %506, 31
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = shl i64 %146, 32
  %167 = ashr exact i64 %166, 32
  %168 = sext i32 %165 to i64
  %169 = mul nsw i64 %168, %167
  %170 = trunc i64 %169 to i32
  %171 = and i64 %169, 4294967295
  store i64 %171, i64* %RCX, align 8, !tbaa !2428
  %172 = shl i64 %169, 32
  %173 = ashr exact i64 %172, 32
  %174 = icmp ne i64 %173, %169
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %35, align 1, !tbaa !2433
  %176 = and i32 %170, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #12
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %36, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %38, align 1, !tbaa !2448
  %181 = lshr i32 %170, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %39, align 1, !tbaa !2449
  store i8 %175, i8* %40, align 1, !tbaa !2450
  %183 = add i64 %506, 35
  store i64 %183, i64* %PC, align 8
  %184 = load i64, i64* %474, align 8
  store i64 %184, i64* %RDX, align 8, !tbaa !2428
  %185 = add i64 %184, 20
  %186 = add i64 %506, 39
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = shl i64 %169, 32
  %190 = ashr exact i64 %189, 32
  %191 = sext i32 %188 to i64
  %192 = mul nsw i64 %191, %190
  %193 = trunc i64 %192 to i32
  %194 = and i64 %192, 4294967295
  store i64 %194, i64* %RCX, align 8, !tbaa !2428
  %195 = shl i64 %192, 32
  %196 = ashr exact i64 %195, 32
  %197 = icmp ne i64 %196, %192
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %35, align 1, !tbaa !2433
  %199 = and i32 %193, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #12
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %36, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %38, align 1, !tbaa !2448
  %204 = lshr i32 %193, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %39, align 1, !tbaa !2449
  store i8 %198, i8* %40, align 1, !tbaa !2450
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -20
  %208 = add i64 %506, 42
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RSI, align 8, !tbaa !2428
  %212 = add i64 %206, -8
  %213 = add i64 %506, 46
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RDX, align 8, !tbaa !2428
  %216 = add i64 %215, 16
  %217 = add i64 %506, 50
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %210 to i64
  %221 = sext i32 %219 to i64
  %222 = mul nsw i64 %221, %220
  %223 = trunc i64 %222 to i32
  %224 = and i64 %222, 4294967295
  store i64 %224, i64* %RSI, align 8, !tbaa !2428
  %225 = shl i64 %222, 32
  %226 = ashr exact i64 %225, 32
  %227 = icmp ne i64 %226, %222
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %35, align 1, !tbaa !2433
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229) #12
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %36, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %38, align 1, !tbaa !2448
  %234 = lshr i32 %223, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %39, align 1, !tbaa !2449
  store i8 %228, i8* %40, align 1, !tbaa !2450
  %236 = add i64 %506, 54
  store i64 %236, i64* %PC, align 8
  %237 = load i64, i64* %214, align 8
  store i64 %237, i64* %RDX, align 8, !tbaa !2428
  %238 = add i64 %237, 20
  %239 = add i64 %506, 58
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = shl i64 %222, 32
  %243 = ashr exact i64 %242, 32
  %244 = sext i32 %241 to i64
  %245 = mul nsw i64 %244, %243
  %246 = and i64 %245, 4294967295
  store i64 %246, i64* %RSI, align 8, !tbaa !2428
  %247 = trunc i64 %245 to i32
  %248 = trunc i64 %192 to i32
  %249 = add i32 %247, %248
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RCX, align 8, !tbaa !2428
  %251 = icmp ult i32 %249, %248
  %252 = icmp ult i32 %249, %247
  %253 = or i1 %251, %252
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %35, align 1, !tbaa !2433
  %255 = and i32 %249, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #12
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %36, align 1, !tbaa !2447
  %260 = xor i64 %245, %192
  %261 = trunc i64 %260 to i32
  %262 = xor i32 %261, %249
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %37, align 1, !tbaa !2451
  %266 = icmp eq i32 %249, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %38, align 1, !tbaa !2448
  %268 = lshr i32 %249, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %39, align 1, !tbaa !2449
  %270 = lshr i32 %248, 31
  %271 = lshr i32 %247, 31
  %272 = xor i32 %268, %270
  %273 = xor i32 %268, %271
  %274 = add nuw nsw i32 %272, %273
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %40, align 1, !tbaa !2450
  %277 = load i64, i64* %RBP, align 8
  %278 = add i64 %277, -24
  %279 = add i64 %506, 63
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RSI, align 8, !tbaa !2428
  %283 = add i64 %277, -8
  %284 = add i64 %506, 67
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDX, align 8, !tbaa !2428
  %287 = add i64 %286, 20
  %288 = add i64 %506, 71
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %281 to i64
  %292 = sext i32 %290 to i64
  %293 = mul nsw i64 %292, %291
  %294 = and i64 %293, 4294967295
  store i64 %294, i64* %RSI, align 8, !tbaa !2428
  %295 = trunc i64 %293 to i32
  %296 = add i32 %295, %249
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RCX, align 8, !tbaa !2428
  %298 = icmp ult i32 %296, %249
  %299 = icmp ult i32 %296, %295
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %35, align 1, !tbaa !2433
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #12
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %36, align 1, !tbaa !2447
  %307 = xor i64 %293, %250
  %308 = trunc i64 %307 to i32
  %309 = xor i32 %308, %296
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %37, align 1, !tbaa !2451
  %313 = icmp eq i32 %296, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %38, align 1, !tbaa !2448
  %315 = lshr i32 %296, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %39, align 1, !tbaa !2449
  %317 = lshr i32 %295, 31
  %318 = xor i32 %315, %268
  %319 = xor i32 %315, %317
  %320 = add nuw nsw i32 %318, %319
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %40, align 1, !tbaa !2450
  %323 = add i64 %277, -28
  %324 = add i64 %506, 76
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = add i32 %326, %296
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RCX, align 8, !tbaa !2428
  %329 = icmp ult i32 %327, %296
  %330 = icmp ult i32 %327, %326
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %35, align 1, !tbaa !2433
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #12
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %36, align 1, !tbaa !2447
  %338 = xor i32 %326, %296
  %339 = xor i32 %338, %327
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %37, align 1, !tbaa !2451
  %343 = icmp eq i32 %327, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %38, align 1, !tbaa !2448
  %345 = lshr i32 %327, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %39, align 1, !tbaa !2449
  %347 = lshr i32 %326, 31
  %348 = xor i32 %345, %315
  %349 = xor i32 %345, %347
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %40, align 1, !tbaa !2450
  %353 = sext i32 %327 to i64
  store i64 %353, i64* %RDX, align 8, !tbaa !2428
  %354 = load i64, i64* %RAX, align 8
  %355 = shl nsw i64 %353, 2
  %356 = add i64 %354, %355
  %357 = add i64 %506, 84
  store i64 %357, i64* %PC, align 8
  %358 = load <2 x float>, <2 x float>* %26, align 1
  %359 = extractelement <2 x float> %358, i32 0
  %360 = inttoptr i64 %356 to float*
  store float %359, float* %360, align 4
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -28
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, 1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = icmp eq i32 %366, -1
  %370 = icmp eq i32 %367, 0
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %35, align 1, !tbaa !2433
  %373 = and i32 %367, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373) #12
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %36, align 1, !tbaa !2447
  %378 = xor i32 %367, %366
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %37, align 1, !tbaa !2451
  %382 = zext i1 %370 to i8
  store i8 %382, i8* %38, align 1, !tbaa !2448
  %383 = lshr i32 %367, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %39, align 1, !tbaa !2449
  %385 = lshr i32 %366, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %383
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %40, align 1, !tbaa !2450
  %390 = add i64 %363, 9
  store i64 %390, i64* %PC, align 8
  store i32 %367, i32* %365, align 4
  %391 = load i64, i64* %PC, align 8
  %392 = add i64 %391, -109
  store i64 %392, i64* %PC, align 8, !tbaa !2428
  br label %block_400c65

block_400c4e:                                     ; preds = %block_400c47, %block_400cd7
  %393 = phi i64 [ %.pre7, %block_400c47 ], [ %78, %block_400cd7 ]
  %394 = load i64, i64* %RBP, align 8
  %395 = add i64 %394, -24
  %396 = add i64 %393, 3
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = add i64 %394, -8
  %401 = add i64 %393, 7
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RCX, align 8, !tbaa !2428
  %404 = add i64 %403, 16
  %405 = add i64 %393, 10
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = sub i32 %398, %407
  %409 = icmp ult i32 %398, %407
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %35, align 1, !tbaa !2433
  %411 = and i32 %408, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #12
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %36, align 1, !tbaa !2447
  %416 = xor i32 %407, %398
  %417 = xor i32 %416, %408
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %37, align 1, !tbaa !2451
  %421 = icmp eq i32 %408, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %38, align 1, !tbaa !2448
  %423 = lshr i32 %408, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %39, align 1, !tbaa !2449
  %425 = lshr i32 %398, 31
  %426 = lshr i32 %407, 31
  %427 = xor i32 %426, %425
  %428 = xor i32 %423, %425
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %40, align 1, !tbaa !2450
  %432 = icmp ne i8 %424, 0
  %433 = xor i1 %432, %430
  %.v = select i1 %433, i64 16, i64 156
  %434 = add i64 %393, %.v
  store i64 %434, i64* %PC, align 8, !tbaa !2428
  br i1 %433, label %block_400c5e, label %block_400cea

block_400cea:                                     ; preds = %block_400c4e
  %435 = add i64 %394, -20
  %436 = add i64 %434, 8
  store i64 %436, i64* %PC, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = add i32 %438, 1
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RAX, align 8, !tbaa !2428
  %441 = icmp eq i32 %438, -1
  %442 = icmp eq i32 %439, 0
  %443 = or i1 %441, %442
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %35, align 1, !tbaa !2433
  %445 = and i32 %439, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445) #12
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %36, align 1, !tbaa !2447
  %450 = xor i32 %439, %438
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %37, align 1, !tbaa !2451
  %454 = zext i1 %442 to i8
  store i8 %454, i8* %38, align 1, !tbaa !2448
  %455 = lshr i32 %439, 31
  %456 = trunc i32 %455 to i8
  store i8 %456, i8* %39, align 1, !tbaa !2449
  %457 = lshr i32 %438, 31
  %458 = xor i32 %455, %457
  %459 = add nuw nsw i32 %458, %455
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %40, align 1, !tbaa !2450
  %462 = add i64 %434, 14
  store i64 %462, i64* %PC, align 8
  store i32 %439, i32* %437, align 4
  %463 = load i64, i64* %PC, align 8
  %464 = add i64 %463, -193
  store i64 %464, i64* %PC, align 8, !tbaa !2428
  br label %block_400c37

block_400c65:                                     ; preds = %block_400c75, %block_400c5e
  %465 = phi i64 [ %392, %block_400c75 ], [ %.pre8, %block_400c5e ]
  %466 = load i64, i64* %RBP, align 8
  %467 = add i64 %466, -28
  %468 = add i64 %465, 3
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RAX, align 8, !tbaa !2428
  %472 = add i64 %466, -8
  %473 = add i64 %465, 7
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RCX, align 8, !tbaa !2428
  %476 = add i64 %475, 20
  %477 = add i64 %465, 10
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sub i32 %470, %479
  %481 = icmp ult i32 %470, %479
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %35, align 1, !tbaa !2433
  %483 = and i32 %480, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483) #12
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %36, align 1, !tbaa !2447
  %488 = xor i32 %479, %470
  %489 = xor i32 %488, %480
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %37, align 1, !tbaa !2451
  %493 = icmp eq i32 %480, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %38, align 1, !tbaa !2448
  %495 = lshr i32 %480, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %39, align 1, !tbaa !2449
  %497 = lshr i32 %470, 31
  %498 = lshr i32 %479, 31
  %499 = xor i32 %498, %497
  %500 = xor i32 %495, %497
  %501 = add nuw nsw i32 %500, %499
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %40, align 1, !tbaa !2450
  %504 = icmp ne i8 %496, 0
  %505 = xor i1 %504, %502
  %.v9 = select i1 %505, i64 16, i64 114
  %506 = add i64 %465, %.v9
  store i64 %506, i64* %PC, align 8, !tbaa !2428
  br i1 %505, label %block_400c75, label %block_400cd7

block_400cfd:                                     ; preds = %block_400c37
  %507 = add i64 %123, 1
  store i64 %507, i64* %PC, align 8
  %508 = load i64, i64* %7, align 8, !tbaa !2428
  %509 = add i64 %508, 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RBP, align 8, !tbaa !2428
  store i64 %509, i64* %7, align 8, !tbaa !2428
  %512 = add i64 %123, 2
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %509 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %PC, align 8, !tbaa !2428
  %515 = add i64 %508, 16
  store i64 %515, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400c47:                                     ; preds = %block_400c37
  %516 = add i64 %83, -24
  %517 = add i64 %123, 7
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  store i32 0, i32* %518, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400c4e
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400680_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400680_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400680_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400650___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400650___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400650___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603138_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400550_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400590_exit(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400560_gettimeofday(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401db0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401db0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401db0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401db0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401d40___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401d40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_401d40___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401d40___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400690_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603168___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603140_malloc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603118_free(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @set_param() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401aa0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @set_param_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401aa0_set_param(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @mflops() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @mflops_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401a60_mflops(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @newMat() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @newMat_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a90_newMat(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @jacobi() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400d00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @jacobi_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400d00_jacobi(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400518;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_400518__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @fflop() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @fflop_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401a10_fflop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @mat_set_init() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400b20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @mat_set_init_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400b20_mat_set_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @clearMat() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4019a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @clearMat_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4019a0_clearMat(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401db4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_401db4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @mat_set() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @mat_set_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c20_mat_set(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @second() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401c90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @second_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401c90_second(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_401db0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401d40___libc_csu_init()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { noinline nounwind }
attributes #11 = { norecurse nounwind }
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
!2432 = !{!2430, !2430, i64 0}
!2433 = !{!2434, !2430, i64 2065}
!2434 = !{!"_ZTS5State", !2430, i64 16, !2435, i64 2064, !2430, i64 2080, !2436, i64 2088, !2438, i64 2112, !2440, i64 2208, !2441, i64 2480, !2442, i64 2608, !2443, i64 2736, !2430, i64 2760, !2430, i64 2768, !2444, i64 3280}
!2435 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2436 = !{!"_ZTS8Segments", !2437, i64 0, !2430, i64 2, !2437, i64 4, !2430, i64 6, !2437, i64 8, !2430, i64 10, !2437, i64 12, !2430, i64 14, !2437, i64 16, !2430, i64 18, !2437, i64 20, !2430, i64 22}
!2437 = !{!"short", !2430, i64 0}
!2438 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2439, i64 8, !2429, i64 16, !2439, i64 24, !2429, i64 32, !2439, i64 40, !2429, i64 48, !2439, i64 56, !2429, i64 64, !2439, i64 72, !2429, i64 80, !2439, i64 88}
!2439 = !{!"_ZTS3Reg", !2430, i64 0}
!2440 = !{!"_ZTS3GPR", !2429, i64 0, !2439, i64 8, !2429, i64 16, !2439, i64 24, !2429, i64 32, !2439, i64 40, !2429, i64 48, !2439, i64 56, !2429, i64 64, !2439, i64 72, !2429, i64 80, !2439, i64 88, !2429, i64 96, !2439, i64 104, !2429, i64 112, !2439, i64 120, !2429, i64 128, !2439, i64 136, !2429, i64 144, !2439, i64 152, !2429, i64 160, !2439, i64 168, !2429, i64 176, !2439, i64 184, !2429, i64 192, !2439, i64 200, !2429, i64 208, !2439, i64 216, !2429, i64 224, !2439, i64 232, !2429, i64 240, !2439, i64 248, !2429, i64 256, !2439, i64 264}
!2441 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2442 = !{!"_ZTS3MMX", !2430, i64 0}
!2443 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2444 = !{!"_ZTS13SegmentCaches", !2445, i64 0, !2445, i64 16, !2445, i64 32, !2445, i64 48, !2445, i64 64, !2445, i64 80}
!2445 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2446, i64 8, !2446, i64 12}
!2446 = !{!"int", !2430, i64 0}
!2447 = !{!2434, !2430, i64 2067}
!2448 = !{!2434, !2430, i64 2071}
!2449 = !{!2434, !2430, i64 2073}
!2450 = !{!2434, !2430, i64 2077}
!2451 = !{!2434, !2430, i64 2069}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"float", !2430, i64 0}
!2454 = !{!2446, !2446, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"double", !2430, i64 0}
