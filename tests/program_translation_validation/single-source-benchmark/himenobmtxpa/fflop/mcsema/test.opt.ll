; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401db0__rodata_type = type <{ [40 x i8], [34 x i8], [30 x i8], [29 x i8], [13 x i8], [3 x i8], [3 x i8], [2 x i8], [2 x i8], [3 x i8], [3 x i8], [28 x i8] }>
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
@seg_401db0__rodata = internal constant %seg_401db0__rodata_type <{ [40 x i8] c"\01\00\02\00\00\00\80?\AB\AA*>\00\00\00\00\00\00\00\00\00\00A@\8D\ED\B5\A0\F7\C6\B0>\00\00\00\00\80\84.A", [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", [29 x i8] c" Loop executed for %d times\0A\00", [13 x i8] c" Gosa : %e \0A\00", [3 x i8] c"XS\00", [3 x i8] c"xs\00", [2 x i8] c"M\00", [2 x i8] c"m\00", [3 x i8] c"XL\00", [3 x i8] c"xl\00", [28 x i8] c"Invalid input character !!\0A\00" }>
@seg_602df0__init_array = internal global %seg_602df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400670_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400640___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400670_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400640___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401da0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401d30___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @second_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mflops_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @newMat_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mat_set_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @jacobi_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @fflop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @set_param_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @mat_set_init_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @clearMat_wrapper
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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401a00_fflop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401a00:
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
  %17 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 16) to i64*), align 16
  %18 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %17, i64* %18, align 1, !tbaa !2432
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to double*
  store double 0.000000e+00, double* %20, align 1, !tbaa !2432
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
  store i8 %46, i8* %47, align 1, !tbaa !2434
  %48 = and i32 %43, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #9
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = xor i32 %43, %42
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1, !tbaa !2449
  %59 = icmp eq i32 %43, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !2450
  %62 = lshr i32 %43, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !2451
  %65 = lshr i32 %42, 31
  %66 = xor i32 %62, %65
  %67 = add nuw nsw i32 %66, %65
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2452
  %71 = sitofp i32 %43 to double
  %72 = bitcast %union.VectorReg* %7 to double*
  store double %71, double* %72, align 1, !tbaa !2432
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
  store i8 %80, i8* %47, align 1, !tbaa !2434
  %81 = and i32 %77, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #9
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %53, align 1, !tbaa !2448
  %86 = xor i32 %77, %76
  %87 = lshr i32 %86, 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %58, align 1, !tbaa !2449
  %90 = icmp eq i32 %77, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %61, align 1, !tbaa !2450
  %92 = lshr i32 %77, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %64, align 1, !tbaa !2451
  %94 = lshr i32 %76, 31
  %95 = xor i32 %92, %94
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %70, align 1, !tbaa !2452
  %99 = sitofp i32 %77 to double
  %100 = bitcast %union.VectorReg* %8 to double*
  store double %99, double* %100, align 1, !tbaa !2432
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %102 = bitcast i64* %101 to <2 x i32>*
  %103 = load <2 x i32>, <2 x i32>* %102, align 1
  %104 = fmul double %99, %71
  store double %104, double* %72, align 1, !tbaa !2432
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
  store i8 %113, i8* %47, align 1, !tbaa !2434
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #9
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %53, align 1, !tbaa !2448
  %119 = xor i32 %110, %109
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %58, align 1, !tbaa !2449
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %61, align 1, !tbaa !2450
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %64, align 1, !tbaa !2451
  %127 = lshr i32 %109, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %70, align 1, !tbaa !2452
  %132 = sitofp i32 %110 to double
  store double %132, double* %100, align 1, !tbaa !2432
  %133 = fmul double %132, %104
  %134 = bitcast [32 x %union.VectorReg]* %6 to double*
  %135 = load double, double* %134, align 1
  %136 = fmul double %133, %135
  store double %136, double* %72, align 1, !tbaa !2432
  %.cast = bitcast double %136 to <2 x i32>
  %137 = extractelement <2 x i32> %.cast, i32 0
  %138 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %137, i32* %138, align 1, !tbaa !2453
  %139 = extractelement <2 x i32> %.cast, i32 1
  %140 = getelementptr inbounds i8, i8* %16, i64 4
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 1, !tbaa !2453
  %142 = extractelement <2 x i32> %103, i32 0
  %143 = bitcast i64* %19 to i32*
  store i32 %142, i32* %143, align 1, !tbaa !2453
  %144 = extractelement <2 x i32> %103, i32 1
  %145 = getelementptr inbounds i8, i8* %16, i64 12
  %146 = bitcast i8* %145 to i32*
  store i32 %144, i32* %146, align 1, !tbaa !2453
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
define %struct.Memory* @sub_400670_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
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
  %13 = tail call %struct.Memory* @sub_400600_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401a90_set_param(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401a90:
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
  store i8 %12, i8* %13, align 1, !tbaa !2434
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2448
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2449
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2450
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2451
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2452
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
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 146), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 146), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  %62 = and i32 %60, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #9
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %67 = icmp eq i32 %60, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %28, align 1, !tbaa !2450
  %69 = lshr i32 %60, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v = select i1 %67, i64 34, i64 9
  %71 = add i64 %61, %.v
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  br i1 %67, label %block_401c71, label %block_401ab9

block_401bbe:                                     ; preds = %block_401ba5
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -16
  %74 = add i64 %335, 4
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 160), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 160), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %77 = add i64 %335, -5726
  %78 = add i64 %335, 16
  %79 = load i64, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %RSP, align 8, !tbaa !2428
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  %82 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %323)
  %83 = load i32, i32* %EAX, align 4
  %84 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2434
  %85 = and i32 %83, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #9
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %90 = icmp eq i32 %83, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %28, align 1, !tbaa !2450
  %92 = lshr i32 %83, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v55 = select i1 %90, i64 9, i64 46
  %94 = add i64 %84, %.v55
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_401c71, label %block_401bfc

block_401bfc:                                     ; preds = %block_401bbe
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -16
  %97 = add i64 %94, 4
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 156), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 156), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  %108 = and i32 %106, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #9
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %113 = icmp eq i32 %106, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %28, align 1, !tbaa !2450
  %115 = lshr i32 %106, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v56 = select i1 %113, i64 34, i64 9
  %117 = add i64 %107, %.v56
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %113, label %block_401c71, label %block_401c15

block_401ab9:                                     ; preds = %block_401a90
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -16
  %120 = add i64 %71, 4
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 149), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 149), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  %131 = and i32 %129, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %136 = icmp eq i32 %129, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %28, align 1, !tbaa !2450
  %138 = lshr i32 %129, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v49 = select i1 %136, i64 9, i64 46
  %140 = add i64 %130, %.v49
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  br i1 %136, label %block_401c71, label %block_401af7

block_401c15:                                     ; preds = %block_401bfc
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -16
  %143 = add i64 %117, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 159), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 159), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  %154 = and i32 %152, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #9
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %159 = icmp eq i32 %152, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %28, align 1, !tbaa !2450
  %161 = lshr i32 %152, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v57 = select i1 %159, i64 9, i64 46
  %163 = add i64 %153, %.v57
  store i64 %163, i64* %PC, align 8, !tbaa !2428
  br i1 %159, label %block_401c71, label %block_401c53

block_401c53:                                     ; preds = %block_401c15
  store i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 162), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2455
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
  %182 = tail call fastcc %struct.Memory* @ext_400580_exit(%struct.State* nonnull %0, %struct.Memory* %169)
  %183 = load i64, i64* %PC, align 8
  %184 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %183, %struct.Memory* %182)
  ret %struct.Memory* %184

block_401b10:                                     ; preds = %block_401af7
  %185 = load i64, i64* %RBP, align 8
  %186 = add i64 %185, -16
  %187 = add i64 %230, 4
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 150), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 150), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  %198 = and i32 %196, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198) #9
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %203 = icmp eq i32 %196, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %28, align 1, !tbaa !2450
  %205 = lshr i32 %196, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v51 = select i1 %203, i64 9, i64 46
  %207 = add i64 %197, %.v51
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br i1 %203, label %block_401c71, label %block_401b4e

block_401af7:                                     ; preds = %block_401ab9
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -16
  %210 = add i64 %140, 4
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 147), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 147), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  %221 = and i32 %219, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221) #9
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %226 = icmp eq i32 %219, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %28, align 1, !tbaa !2450
  %228 = lshr i32 %219, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v50 = select i1 %226, i64 34, i64 9
  %230 = add i64 %220, %.v50
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  br i1 %226, label %block_401c71, label %block_401b10

block_401c71:                                     ; preds = %block_401c15, %block_401bbe, %block_401b67, %block_401b10, %block_401ab9, %block_401bfc, %block_401b4e, %block_401af7, %block_401a90, %block_401ba5
  %231 = phi i64 [ %335, %block_401ba5 ], [ %94, %block_401bbe ], [ %140, %block_401ab9 ], [ %71, %block_401a90 ], [ %230, %block_401af7 ], [ %207, %block_401b10 ], [ %358, %block_401b4e ], [ %312, %block_401b67 ], [ %163, %block_401c15 ], [ %117, %block_401bfc ]
  %.sink29 = phi i32 [ 256, %block_401ba5 ], [ 256, %block_401bbe ], [ 32, %block_401ab9 ], [ 32, %block_401a90 ], [ 64, %block_401af7 ], [ 64, %block_401b10 ], [ 128, %block_401b4e ], [ 128, %block_401b67 ], [ 512, %block_401c15 ], [ 512, %block_401bfc ]
  %.sink = phi i32 [ 512, %block_401ba5 ], [ 512, %block_401bbe ], [ 64, %block_401ab9 ], [ 64, %block_401a90 ], [ 128, %block_401af7 ], [ 128, %block_401b10 ], [ 256, %block_401b4e ], [ 256, %block_401b67 ], [ 1024, %block_401c15 ], [ 1024, %block_401bfc ]
  %.sink5 = phi i64 [ 122, %block_401ba5 ], [ 122, %block_401bbe ], [ 383, %block_401ab9 ], [ 383, %block_401a90 ], [ 296, %block_401af7 ], [ 296, %block_401b10 ], [ 209, %block_401b4e ], [ 209, %block_401b67 ], [ 35, %block_401c15 ], [ 35, %block_401bfc ]
  %MEMORY.4 = phi %struct.Memory* [ %323, %block_401ba5 ], [ %82, %block_401bbe ], [ %128, %block_401ab9 ], [ %59, %block_401a90 ], [ %218, %block_401af7 ], [ %195, %block_401b10 ], [ %346, %block_401b4e ], [ %300, %block_401b67 ], [ %151, %block_401c15 ], [ %105, %block_401bfc ]
  %232 = load i64, i64* %RBP, align 8
  %233 = add i64 %232, -8
  %234 = add i64 %231, 4
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = add i64 %231, 10
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 %.sink29, i32* %238, align 4
  %239 = load i64, i64* %RBP, align 8
  %240 = add i64 %239, -8
  %241 = load i64, i64* %PC, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  %245 = add i64 %244, 4
  %246 = add i64 %241, 11
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  store i32 %.sink29, i32* %247, align 4
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -8
  %250 = load i64, i64* %PC, align 8
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %249 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX, align 8, !tbaa !2428
  %254 = add i64 %253, 8
  %255 = add i64 %250, 11
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %.sink, i32* %256, align 4
  %257 = load i64, i64* %PC, align 8
  %258 = add i64 %257, %.sink5
  %259 = load i64, i64* %RSP, align 8
  %260 = add i64 %259, 32
  store i64 %260, i64* %RSP, align 8, !tbaa !2428
  %261 = icmp ugt i64 %259, -33
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %13, align 1, !tbaa !2434
  %263 = trunc i64 %260 to i32
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #9
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %20, align 1, !tbaa !2448
  %269 = xor i64 %260, %259
  %270 = lshr i64 %269, 4
  %271 = trunc i64 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %25, align 1, !tbaa !2449
  %273 = icmp eq i64 %260, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %28, align 1, !tbaa !2450
  %275 = lshr i64 %260, 63
  %276 = trunc i64 %275 to i8
  store i8 %276, i8* %31, align 1, !tbaa !2451
  %277 = lshr i64 %259, 63
  %278 = xor i64 %275, %277
  %279 = add nuw nsw i64 %278, %275
  %280 = icmp eq i64 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %37, align 1, !tbaa !2452
  %282 = add i64 %258, 5
  store i64 %282, i64* %PC, align 8
  %283 = add i64 %259, 40
  %284 = inttoptr i64 %260 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RBP, align 8, !tbaa !2428
  store i64 %283, i64* %RSP, align 8, !tbaa !2428
  %286 = add i64 %258, 6
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %283 to i64*
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %PC, align 8, !tbaa !2428
  %289 = add i64 %259, 48
  store i64 %289, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_401b67:                                     ; preds = %block_401b4e
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -16
  %292 = add i64 %358, 4
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 154), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 154), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %295 = add i64 %358, -5639
  %296 = add i64 %358, 16
  %297 = load i64, i64* %RSP, align 8, !tbaa !2428
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %RSP, align 8, !tbaa !2428
  store i64 %295, i64* %PC, align 8, !tbaa !2428
  %300 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %346)
  %301 = load i32, i32* %EAX, align 4
  %302 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2434
  %303 = and i32 %301, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303) #9
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %308 = icmp eq i32 %301, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %28, align 1, !tbaa !2450
  %310 = lshr i32 %301, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v53 = select i1 %308, i64 9, i64 46
  %312 = add i64 %302, %.v53
  store i64 %312, i64* %PC, align 8, !tbaa !2428
  br i1 %308, label %block_401c71, label %block_401ba5

block_401ba5:                                     ; preds = %block_401b67
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -16
  %315 = add i64 %312, 4
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 157), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 157), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %318 = add i64 %312, -5701
  %319 = add i64 %312, 16
  %320 = load i64, i64* %RSP, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %RSP, align 8, !tbaa !2428
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  %323 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %300)
  %324 = load i32, i32* %EAX, align 4
  %325 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2434
  %326 = and i32 %324, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326) #9
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %331 = icmp eq i32 %324, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %28, align 1, !tbaa !2450
  %333 = lshr i32 %324, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v54 = select i1 %331, i64 34, i64 9
  %335 = add i64 %325, %.v54
  store i64 %335, i64* %PC, align 8, !tbaa !2428
  br i1 %331, label %block_401c71, label %block_401bbe

block_401b4e:                                     ; preds = %block_401b10
  %336 = load i64, i64* %RBP, align 8
  %337 = add i64 %336, -16
  %338 = add i64 %207, 4
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 152), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 152), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %341 = add i64 %207, -5614
  %342 = add i64 %207, 16
  %343 = load i64, i64* %RSP, align 8, !tbaa !2428
  %344 = add i64 %343, -8
  %345 = inttoptr i64 %344 to i64*
  store i64 %342, i64* %345, align 8
  store i64 %344, i64* %RSP, align 8, !tbaa !2428
  store i64 %341, i64* %PC, align 8, !tbaa !2428
  %346 = tail call fastcc %struct.Memory* @ext_603138_strcmp(%struct.State* nonnull %0, %struct.Memory* %195)
  %347 = load i32, i32* %EAX, align 4
  %348 = load i64, i64* %PC, align 8
  store i8 0, i8* %13, align 1, !tbaa !2434
  %349 = and i32 %347, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #9
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %354 = icmp eq i32 %347, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %28, align 1, !tbaa !2450
  %356 = lshr i32 %347, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v52 = select i1 %354, i64 34, i64 9
  %358 = add i64 %348, %.v52
  store i64 %358, i64* %PC, align 8, !tbaa !2428
  br i1 %354, label %block_401c71, label %block_401b67
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400600_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400600:
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
  store i8 %21, i8* %11, align 1, !tbaa !2455
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2455
  store i8 0, i8* %13, align 1, !tbaa !2455
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2455
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2455
  store i8 0, i8* %16, align 1, !tbaa !2455
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400638, label %block_400623

block_400638:                                     ; preds = %block_400623, %block_400600
  %34 = phi i64 [ %44, %block_400623 ], [ %33, %block_400600 ]
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

block_400623:                                     ; preds = %block_400600
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2434
  store i8 1, i8* %12, align 1, !tbaa !2448
  store i8 1, i8* %14, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2452
  store i8 0, i8* %13, align 1, !tbaa !2449
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400638
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400640:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2434
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #9
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2448
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2449
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2450
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2451
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2452
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_400649, label %block_400660

block_400660:                                     ; preds = %block_400640
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

block_400649:                                     ; preds = %block_400640
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
  %36 = tail call %struct.Memory* @sub_4005d0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b10_mat_set_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400b10:
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
  br label %block_400b1f

block_400b5d:                                     ; preds = %block_400b4d
  %49 = add i64 %403, -12
  %50 = add i64 %443, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = add i64 %443, 7
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
  store i8 %64, i8* %21, align 1, !tbaa !2434
  %65 = and i32 %59, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #9
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  store i8 0, i8* %24, align 1, !tbaa !2450
  %70 = lshr i32 %59, 31
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %25, align 1, !tbaa !2451
  store i8 %64, i8* %26, align 1, !tbaa !2452
  %72 = trunc i64 %58 to i32
  %73 = load <2 x i32>, <2 x i32>* %28, align 1
  %74 = load <2 x i32>, <2 x i32>* %30, align 1
  %75 = sitofp i32 %72 to float
  store float %75, float* %31, align 1, !tbaa !2453
  %76 = extractelement <2 x i32> %73, i32 1
  store i32 %76, i32* %33, align 1, !tbaa !2453
  %77 = extractelement <2 x i32> %74, i32 0
  store i32 %77, i32* %34, align 1, !tbaa !2453
  %78 = extractelement <2 x i32> %74, i32 1
  store i32 %78, i32* %36, align 1, !tbaa !2453
  %79 = add i64 %443, 15
  store i64 %79, i64* %PC, align 8
  %80 = load i64, i64* %411, align 8
  store i64 %80, i64* %RCX, align 8, !tbaa !2428
  %81 = add i64 %80, 12
  %82 = add i64 %443, 18
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, -1
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = icmp eq i32 %84, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %21, align 1, !tbaa !2434
  %89 = and i32 %85, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89) #9
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %22, align 1, !tbaa !2448
  %94 = xor i32 %85, %84
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %23, align 1, !tbaa !2449
  %98 = icmp eq i32 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %24, align 1, !tbaa !2450
  %100 = lshr i32 %85, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %25, align 1, !tbaa !2451
  %102 = lshr i32 %84, 31
  %103 = xor i32 %100, %102
  %104 = add nuw nsw i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %26, align 1, !tbaa !2452
  %107 = add i64 %443, 25
  store i64 %107, i64* %PC, align 8
  %108 = load i64, i64* %411, align 8
  store i64 %108, i64* %RCX, align 8, !tbaa !2428
  %109 = add i64 %108, 12
  %110 = add i64 %443, 28
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, -1
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RDX, align 8, !tbaa !2428
  %115 = sext i32 %85 to i64
  %116 = sext i32 %113 to i64
  %117 = mul nsw i64 %116, %115
  %118 = trunc i64 %117 to i32
  %119 = and i64 %117, 4294967295
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = shl i64 %117, 32
  %121 = ashr exact i64 %120, 32
  %122 = icmp ne i64 %121, %117
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %21, align 1, !tbaa !2434
  %124 = and i32 %118, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #9
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  store i8 0, i8* %24, align 1, !tbaa !2450
  %129 = lshr i32 %118, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %25, align 1, !tbaa !2451
  store i8 %123, i8* %26, align 1, !tbaa !2452
  %131 = trunc i64 %117 to i32
  %132 = load <2 x i32>, <2 x i32>* %38, align 1
  %133 = load <2 x i32>, <2 x i32>* %40, align 1
  %134 = sitofp i32 %131 to float
  store float %134, float* %41, align 1, !tbaa !2453
  %135 = extractelement <2 x i32> %132, i32 1
  store i32 %135, i32* %43, align 1, !tbaa !2453
  %136 = extractelement <2 x i32> %133, i32 0
  store i32 %136, i32* %44, align 1, !tbaa !2453
  %137 = extractelement <2 x i32> %133, i32 1
  store i32 %137, i32* %46, align 1, !tbaa !2453
  %138 = load <2 x float>, <2 x float>* %47, align 1
  %139 = load <2 x i32>, <2 x i32>* %30, align 1
  %140 = load <2 x float>, <2 x float>* %48, align 1
  %141 = extractelement <2 x float> %138, i32 0
  %142 = extractelement <2 x float> %140, i32 0
  %143 = fdiv float %141, %142
  store float %143, float* %31, align 1, !tbaa !2453
  %144 = bitcast <2 x float> %138 to <2 x i32>
  %145 = extractelement <2 x i32> %144, i32 1
  store i32 %145, i32* %33, align 1, !tbaa !2453
  %146 = extractelement <2 x i32> %139, i32 0
  store i32 %146, i32* %34, align 1, !tbaa !2453
  %147 = extractelement <2 x i32> %139, i32 1
  store i32 %147, i32* %36, align 1, !tbaa !2453
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -8
  %150 = add i64 %443, 46
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RCX, align 8, !tbaa !2428
  %153 = add i64 %443, 49
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %152 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RCX, align 8, !tbaa !2428
  %156 = add i64 %443, 53
  store i64 %156, i64* %PC, align 8
  %157 = load i64, i64* %151, align 8
  store i64 %157, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  store i8 0, i8* %24, align 1, !tbaa !2450
  store i8 0, i8* %25, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2452
  %158 = add i64 %443, 61
  store i64 %158, i64* %PC, align 8
  %159 = load i64, i64* %151, align 8
  store i64 %159, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  store i8 0, i8* %24, align 1, !tbaa !2450
  store i8 0, i8* %25, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2452
  %160 = add i64 %443, 69
  store i64 %160, i64* %PC, align 8
  %161 = load i64, i64* %151, align 8
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  store i8 0, i8* %24, align 1, !tbaa !2450
  store i8 0, i8* %25, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2452
  %162 = add i64 %148, -12
  %163 = add i64 %443, 76
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RDX, align 8, !tbaa !2428
  %167 = add i64 %443, 80
  store i64 %167, i64* %PC, align 8
  %168 = load i64, i64* %151, align 8
  store i64 %168, i64* %RSI, align 8, !tbaa !2428
  %169 = add i64 %168, 16
  %170 = add i64 %443, 84
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
  store i8 %181, i8* %21, align 1, !tbaa !2434
  %182 = and i32 %176, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #9
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  store i8 0, i8* %24, align 1, !tbaa !2450
  %187 = lshr i32 %176, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %25, align 1, !tbaa !2451
  store i8 %181, i8* %26, align 1, !tbaa !2452
  %189 = add i64 %443, 88
  store i64 %189, i64* %PC, align 8
  %190 = load i64, i64* %151, align 8
  store i64 %190, i64* %RSI, align 8, !tbaa !2428
  %191 = add i64 %190, 20
  %192 = add i64 %443, 92
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = shl i64 %175, 32
  %196 = ashr exact i64 %195, 32
  %197 = sext i32 %194 to i64
  %198 = mul nsw i64 %197, %196
  %199 = and i64 %198, 4294967295
  store i64 %199, i64* %RDX, align 8, !tbaa !2428
  %200 = trunc i64 %198 to i32
  %201 = and i64 %198, 4294967295
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2434
  %202 = and i32 %200, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202) #9
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %23, align 1, !tbaa !2449
  %207 = icmp eq i32 %200, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %24, align 1, !tbaa !2450
  %209 = lshr i32 %200, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %25, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2452
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -16
  %213 = add i64 %443, 97
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RDX, align 8, !tbaa !2428
  %217 = add i64 %211, -8
  %218 = add i64 %443, 101
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RSI, align 8, !tbaa !2428
  %221 = add i64 %220, 20
  %222 = add i64 %443, 105
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %215 to i64
  %226 = sext i32 %224 to i64
  %227 = mul nsw i64 %226, %225
  %228 = and i64 %227, 4294967295
  store i64 %228, i64* %RDX, align 8, !tbaa !2428
  %229 = trunc i64 %227 to i32
  %230 = add i32 %229, %200
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = icmp ult i32 %230, %200
  %233 = icmp ult i32 %230, %229
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %21, align 1, !tbaa !2434
  %236 = and i32 %230, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236) #9
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %22, align 1, !tbaa !2448
  %241 = xor i64 %227, %198
  %242 = trunc i64 %241 to i32
  %243 = xor i32 %242, %230
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %23, align 1, !tbaa !2449
  %247 = icmp eq i32 %230, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %24, align 1, !tbaa !2450
  %249 = lshr i32 %230, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %25, align 1, !tbaa !2451
  %251 = lshr i32 %229, 31
  %252 = xor i32 %249, %209
  %253 = xor i32 %249, %251
  %254 = add nuw nsw i32 %252, %253
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %26, align 1, !tbaa !2452
  %257 = add i64 %211, -20
  %258 = add i64 %443, 110
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, %230
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX, align 8, !tbaa !2428
  %263 = icmp ult i32 %261, %230
  %264 = icmp ult i32 %261, %260
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %21, align 1, !tbaa !2434
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #9
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %22, align 1, !tbaa !2448
  %272 = xor i32 %260, %230
  %273 = xor i32 %272, %261
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %23, align 1, !tbaa !2449
  %277 = icmp eq i32 %261, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %24, align 1, !tbaa !2450
  %279 = lshr i32 %261, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %25, align 1, !tbaa !2451
  %281 = lshr i32 %260, 31
  %282 = xor i32 %279, %249
  %283 = xor i32 %279, %281
  %284 = add nuw nsw i32 %282, %283
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %26, align 1, !tbaa !2452
  %287 = sext i32 %261 to i64
  store i64 %287, i64* %RSI, align 8, !tbaa !2428
  %288 = load i64, i64* %RCX, align 8
  %289 = shl nsw i64 %287, 2
  %290 = add i64 %288, %289
  %291 = add i64 %443, 118
  store i64 %291, i64* %PC, align 8
  %292 = load <2 x float>, <2 x float>* %47, align 1
  %293 = extractelement <2 x float> %292, i32 0
  %294 = inttoptr i64 %290 to float*
  store float %293, float* %294, align 4
  %295 = load i64, i64* %RBP, align 8
  %296 = add i64 %295, -20
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %297, 3
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %296 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %300, 1
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX, align 8, !tbaa !2428
  %303 = icmp eq i32 %300, -1
  %304 = icmp eq i32 %301, 0
  %305 = or i1 %303, %304
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %21, align 1, !tbaa !2434
  %307 = and i32 %301, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307) #9
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %22, align 1, !tbaa !2448
  %312 = xor i32 %301, %300
  %313 = lshr i32 %312, 4
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  store i8 %315, i8* %23, align 1, !tbaa !2449
  %316 = zext i1 %304 to i8
  store i8 %316, i8* %24, align 1, !tbaa !2450
  %317 = lshr i32 %301, 31
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %25, align 1, !tbaa !2451
  %319 = lshr i32 %300, 31
  %320 = xor i32 %317, %319
  %321 = add nuw nsw i32 %320, %317
  %322 = icmp eq i32 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %26, align 1, !tbaa !2452
  %324 = add i64 %297, 9
  store i64 %324, i64* %PC, align 8
  store i32 %301, i32* %299, align 4
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, -143
  store i64 %326, i64* %PC, align 8, !tbaa !2428
  br label %block_400b4d

block_400b36:                                     ; preds = %block_400be1, %block_400b2f
  %327 = phi i64 [ %527, %block_400be1 ], [ %.pre7, %block_400b2f ]
  %328 = load i64, i64* %RBP, align 8
  %329 = add i64 %328, -16
  %330 = add i64 %327, 3
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX, align 8, !tbaa !2428
  %334 = add i64 %328, -8
  %335 = add i64 %327, 7
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = add i64 %337, 16
  %339 = add i64 %327, 10
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sub i32 %332, %341
  %343 = icmp ult i32 %332, %341
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %21, align 1, !tbaa !2434
  %345 = and i32 %342, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345) #9
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %22, align 1, !tbaa !2448
  %350 = xor i32 %341, %332
  %351 = xor i32 %350, %342
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %23, align 1, !tbaa !2449
  %355 = icmp eq i32 %342, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %24, align 1, !tbaa !2450
  %357 = lshr i32 %342, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %25, align 1, !tbaa !2451
  %359 = lshr i32 %332, 31
  %360 = lshr i32 %341, 31
  %361 = xor i32 %360, %359
  %362 = xor i32 %357, %359
  %363 = add nuw nsw i32 %362, %361
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %26, align 1, !tbaa !2452
  %366 = icmp ne i8 %358, 0
  %367 = xor i1 %366, %364
  %.v = select i1 %367, i64 16, i64 190
  %368 = add i64 %327, %.v
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  br i1 %367, label %block_400b46, label %block_400bf4

block_400bf4:                                     ; preds = %block_400b36
  %369 = add i64 %328, -12
  %370 = add i64 %368, 8
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, 1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = icmp eq i32 %372, -1
  %376 = icmp eq i32 %373, 0
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %21, align 1, !tbaa !2434
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #9
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %22, align 1, !tbaa !2448
  %384 = xor i32 %373, %372
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %23, align 1, !tbaa !2449
  %388 = zext i1 %376 to i8
  store i8 %388, i8* %24, align 1, !tbaa !2450
  %389 = lshr i32 %373, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %25, align 1, !tbaa !2451
  %391 = lshr i32 %372, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %389
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %26, align 1, !tbaa !2452
  %396 = add i64 %368, 14
  store i64 %396, i64* %PC, align 8
  store i32 %373, i32* %371, align 4
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, -227
  store i64 %398, i64* %PC, align 8, !tbaa !2428
  br label %block_400b1f

block_400b2f:                                     ; preds = %block_400b1f
  %399 = add i64 %454, -16
  %400 = add i64 %494, 7
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  store i32 0, i32* %401, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400b36

block_400b4d:                                     ; preds = %block_400b46, %block_400b5d
  %402 = phi i64 [ %.pre8, %block_400b46 ], [ %326, %block_400b5d ]
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -20
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
  %413 = add i64 %412, 20
  %414 = add i64 %402, 10
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sub i32 %407, %416
  %418 = icmp ult i32 %407, %416
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %21, align 1, !tbaa !2434
  %420 = and i32 %417, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #9
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %22, align 1, !tbaa !2448
  %425 = xor i32 %416, %407
  %426 = xor i32 %425, %417
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %23, align 1, !tbaa !2449
  %430 = icmp eq i32 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %24, align 1, !tbaa !2450
  %432 = lshr i32 %417, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %25, align 1, !tbaa !2451
  %434 = lshr i32 %407, 31
  %435 = lshr i32 %416, 31
  %436 = xor i32 %435, %434
  %437 = xor i32 %432, %434
  %438 = add nuw nsw i32 %437, %436
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %26, align 1, !tbaa !2452
  %441 = icmp ne i8 %433, 0
  %442 = xor i1 %441, %439
  %.v9 = select i1 %442, i64 16, i64 148
  %443 = add i64 %402, %.v9
  store i64 %443, i64* %PC, align 8, !tbaa !2428
  br i1 %442, label %block_400b5d, label %block_400be1

block_400c07:                                     ; preds = %block_400b1f
  %444 = add i64 %494, 1
  store i64 %444, i64* %PC, align 8
  %445 = load i64, i64* %7, align 8, !tbaa !2428
  %446 = add i64 %445, 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RBP, align 8, !tbaa !2428
  store i64 %446, i64* %7, align 8, !tbaa !2428
  %449 = add i64 %494, 2
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %446 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %PC, align 8, !tbaa !2428
  %452 = add i64 %445, 16
  store i64 %452, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400b1f:                                     ; preds = %block_400bf4, %block_400b10
  %453 = phi i64 [ %398, %block_400bf4 ], [ %.pre, %block_400b10 ]
  %454 = load i64, i64* %RBP, align 8
  %455 = add i64 %454, -12
  %456 = add i64 %453, 3
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RAX, align 8, !tbaa !2428
  %460 = add i64 %454, -8
  %461 = add i64 %453, 7
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RCX, align 8, !tbaa !2428
  %464 = add i64 %463, 12
  %465 = add i64 %453, 10
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sub i32 %458, %467
  %469 = icmp ult i32 %458, %467
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %21, align 1, !tbaa !2434
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #9
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %22, align 1, !tbaa !2448
  %476 = xor i32 %467, %458
  %477 = xor i32 %476, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %23, align 1, !tbaa !2449
  %481 = icmp eq i32 %468, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %24, align 1, !tbaa !2450
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %25, align 1, !tbaa !2451
  %485 = lshr i32 %458, 31
  %486 = lshr i32 %467, 31
  %487 = xor i32 %486, %485
  %488 = xor i32 %483, %485
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %26, align 1, !tbaa !2452
  %492 = icmp ne i8 %484, 0
  %493 = xor i1 %492, %490
  %.v10 = select i1 %493, i64 16, i64 232
  %494 = add i64 %453, %.v10
  store i64 %494, i64* %PC, align 8, !tbaa !2428
  br i1 %493, label %block_400b2f, label %block_400c07

block_400b46:                                     ; preds = %block_400b36
  %495 = add i64 %328, -20
  %496 = add i64 %368, 7
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 0, i32* %497, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400b4d

block_400be1:                                     ; preds = %block_400b4d
  %498 = add i64 %403, -16
  %499 = add i64 %443, 8
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, 1
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RAX, align 8, !tbaa !2428
  %504 = icmp eq i32 %501, -1
  %505 = icmp eq i32 %502, 0
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %21, align 1, !tbaa !2434
  %508 = and i32 %502, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508) #9
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %22, align 1, !tbaa !2448
  %513 = xor i32 %502, %501
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %23, align 1, !tbaa !2449
  %517 = zext i1 %505 to i8
  store i8 %517, i8* %24, align 1, !tbaa !2450
  %518 = lshr i32 %502, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %25, align 1, !tbaa !2451
  %520 = lshr i32 %501, 31
  %521 = xor i32 %518, %520
  %522 = add nuw nsw i32 %521, %518
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %26, align 1, !tbaa !2452
  %525 = add i64 %443, 14
  store i64 %525, i64* %PC, align 8
  store i32 %502, i32* %500, align 4
  %526 = load i64, i64* %PC, align 8
  %527 = add i64 %526, -185
  store i64 %527, i64* %PC, align 8, !tbaa !2428
  br label %block_400b36
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400680_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
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
  store i8 %14, i8* %15, align 1, !tbaa !2434
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2448
  %23 = xor i64 %9, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2451
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2452
  store i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
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
  store i8 %110, i8* %15, align 1, !tbaa !2434
  %111 = and i32 %107, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #9
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %22, align 1, !tbaa !2448
  %116 = xor i32 %107, %106
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %28, align 1, !tbaa !2449
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %31, align 1, !tbaa !2450
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %34, align 1, !tbaa !2451
  %124 = lshr i32 %106, 31
  %125 = xor i32 %122, %124
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %40, align 1, !tbaa !2452
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
  store i8 %141, i8* %15, align 1, !tbaa !2434
  %142 = and i32 %138, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142) #9
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %22, align 1, !tbaa !2448
  %147 = xor i32 %138, %137
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %28, align 1, !tbaa !2449
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2450
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %34, align 1, !tbaa !2451
  %155 = lshr i32 %137, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %40, align 1, !tbaa !2452
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
  store i8 %172, i8* %15, align 1, !tbaa !2434
  %173 = and i32 %169, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #9
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %22, align 1, !tbaa !2448
  %178 = xor i32 %169, %168
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %28, align 1, !tbaa !2449
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %31, align 1, !tbaa !2450
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %34, align 1, !tbaa !2451
  %186 = lshr i32 %168, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %40, align 1, !tbaa !2452
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
  store i8 0, i8* %AL, align 1, !tbaa !2455
  %212 = add i64 %196, -421
  %213 = add i64 %196, 19
  %214 = load i64, i64* %RSP, align 8, !tbaa !2428
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %RSP, align 8, !tbaa !2428
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  %217 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %218 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
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
  store i8 0, i8* %AL, align 1, !tbaa !2455
  %240 = add i64 %239, -462
  %241 = add i64 %239, 7
  %242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %RSP, align 8, !tbaa !2428
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  %245 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %217)
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
  %273 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %268, %struct.Memory* %245)
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
  %301 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %296, %struct.Memory* %273)
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
  %329 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %324, %struct.Memory* %301)
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
  %357 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %352, %struct.Memory* %329)
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
  %385 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %380, %struct.Memory* %357)
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
  %413 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %408, %struct.Memory* %385)
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
  %441 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* nonnull %0, i64 %436, %struct.Memory* %413)
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
  %454 = tail call %struct.Memory* @sub_400b10_mat_set_init(%struct.State* nonnull %0, i64 %449, %struct.Memory* %441)
  %455 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%bnd_type* @bnd to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
  %456 = bitcast %union.VectorReg* %5 to i8*
  %457 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  %458 = bitcast %union.VectorReg* %5 to i32*
  store i32 %457, i32* %458, align 1, !tbaa !2453
  %459 = getelementptr inbounds i8, i8* %456, i64 4
  %460 = bitcast i8* %459 to float*
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %462 = bitcast i64* %461 to float*
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  %463 = getelementptr inbounds i8, i8* %456, i64 12
  %464 = bitcast i8* %463 to float*
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %465 = add i64 %455, 1017
  %466 = add i64 %455, 25
  %467 = load i64, i64* %RSP, align 8, !tbaa !2428
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %466, i64* %469, align 8
  store i64 %468, i64* %RSP, align 8, !tbaa !2428
  store i64 %465, i64* %PC, align 8, !tbaa !2428
  %470 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %465, %struct.Memory* %454)
  %471 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk1_type* @wrk1 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
  %472 = bitcast i8* %459 to i32*
  %473 = bitcast i64* %461 to i32*
  %474 = bitcast i8* %463 to i32*
  %475 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %475, align 1, !tbaa !2456
  %476 = add i64 %471, 992
  %477 = add i64 %471, 20
  %478 = load i64, i64* %RSP, align 8, !tbaa !2428
  %479 = add i64 %478, -8
  %480 = inttoptr i64 %479 to i64*
  store i64 %477, i64* %480, align 8
  store i64 %479, i64* %RSP, align 8, !tbaa !2428
  store i64 %476, i64* %PC, align 8, !tbaa !2428
  %481 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %476, %struct.Memory* %470)
  %482 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%wrk2_type* @wrk2 to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
  store i32 0, i32* %458, align 1, !tbaa !2456
  store i32 0, i32* %472, align 1, !tbaa !2456
  store i32 0, i32* %473, align 1, !tbaa !2456
  store i32 0, i32* %474, align 1, !tbaa !2456
  %483 = add i64 %482, 972
  %484 = add i64 %482, 20
  %485 = load i64, i64* %RSP, align 8, !tbaa !2428
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %RSP, align 8, !tbaa !2428
  store i64 %483, i64* %PC, align 8, !tbaa !2428
  %488 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %483, %struct.Memory* %481)
  %489 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
  %490 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  store i32 %490, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %491 = add i64 %489, 952
  %492 = add i64 %489, 25
  %493 = load i64, i64* %RSP, align 8, !tbaa !2428
  %494 = add i64 %493, -8
  %495 = inttoptr i64 %494 to i64*
  store i64 %492, i64* %495, align 8
  store i64 %494, i64* %RSP, align 8, !tbaa !2428
  store i64 %491, i64* %PC, align 8, !tbaa !2428
  %496 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %491, %struct.Memory* %488)
  %497 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %498 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  store i32 %498, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %499 = add i64 %497, 927
  %500 = add i64 %497, 28
  %501 = load i64, i64* %RSP, align 8, !tbaa !2428
  %502 = add i64 %501, -8
  %503 = inttoptr i64 %502 to i64*
  store i64 %500, i64* %503, align 8
  store i64 %502, i64* %RSP, align 8, !tbaa !2428
  store i64 %499, i64* %PC, align 8, !tbaa !2428
  %504 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %499, %struct.Memory* %496)
  %505 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %506 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  store i32 %506, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %507 = add i64 %505, 899
  %508 = add i64 %505, 28
  %509 = load i64, i64* %RSP, align 8, !tbaa !2428
  %510 = add i64 %509, -8
  %511 = inttoptr i64 %510 to i64*
  store i64 %508, i64* %511, align 8
  store i64 %510, i64* %RSP, align 8, !tbaa !2428
  store i64 %507, i64* %PC, align 8, !tbaa !2428
  %512 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %507, %struct.Memory* %504)
  %513 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%a_type* @a to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 3, i64* %RSI, align 8, !tbaa !2428
  %514 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 8) to i32*), align 8
  store i32 %514, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %515 = add i64 %513, 871
  %516 = add i64 %513, 28
  %517 = load i64, i64* %RSP, align 8, !tbaa !2428
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %516, i64* %519, align 8
  store i64 %518, i64* %RSP, align 8, !tbaa !2428
  store i64 %515, i64* %PC, align 8, !tbaa !2428
  %520 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %515, %struct.Memory* %512)
  %521 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
  %522 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %522, align 1, !tbaa !2456
  %523 = add i64 %521, 843
  %524 = add i64 %521, 20
  %525 = load i64, i64* %RSP, align 8, !tbaa !2428
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %RSP, align 8, !tbaa !2428
  store i64 %523, i64* %PC, align 8, !tbaa !2428
  %528 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %523, %struct.Memory* %520)
  %529 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %530 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %530, align 1, !tbaa !2456
  %531 = add i64 %529, 823
  %532 = add i64 %529, 23
  %533 = load i64, i64* %RSP, align 8, !tbaa !2428
  %534 = add i64 %533, -8
  %535 = inttoptr i64 %534 to i64*
  store i64 %532, i64* %535, align 8
  store i64 %534, i64* %RSP, align 8, !tbaa !2428
  store i64 %531, i64* %PC, align 8, !tbaa !2428
  %536 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %531, %struct.Memory* %528)
  %537 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%b_type* @b to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %538 = bitcast %union.VectorReg* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %538, align 1, !tbaa !2456
  %539 = add i64 %537, 800
  %540 = add i64 %537, 23
  %541 = load i64, i64* %RSP, align 8, !tbaa !2428
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %540, i64* %543, align 8
  store i64 %542, i64* %RSP, align 8, !tbaa !2428
  store i64 %539, i64* %PC, align 8, !tbaa !2428
  %544 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %539, %struct.Memory* %536)
  %545 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  store i8 1, i8* %22, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
  %546 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  store i32 %546, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %547 = add i64 %545, 777
  %548 = add i64 %545, 25
  %549 = load i64, i64* %RSP, align 8, !tbaa !2428
  %550 = add i64 %549, -8
  %551 = inttoptr i64 %550 to i64*
  store i64 %548, i64* %551, align 8
  store i64 %550, i64* %RSP, align 8, !tbaa !2428
  store i64 %547, i64* %PC, align 8, !tbaa !2428
  %552 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %547, %struct.Memory* %544)
  %553 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %554 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  store i32 %554, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %555 = add i64 %553, 752
  %556 = add i64 %553, 28
  %557 = load i64, i64* %RSP, align 8, !tbaa !2428
  %558 = add i64 %557, -8
  %559 = inttoptr i64 %558 to i64*
  store i64 %556, i64* %559, align 8
  store i64 %558, i64* %RSP, align 8, !tbaa !2428
  store i64 %555, i64* %PC, align 8, !tbaa !2428
  %560 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %555, %struct.Memory* %552)
  %561 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%c_type* @c to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 2, i64* %RSI, align 8, !tbaa !2428
  %562 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 4) to i32*), align 4
  store i32 %562, i32* %458, align 1, !tbaa !2453
  store float 0.000000e+00, float* %460, align 1, !tbaa !2453
  store float 0.000000e+00, float* %462, align 1, !tbaa !2453
  store float 0.000000e+00, float* %464, align 1, !tbaa !2453
  %563 = add i64 %561, 724
  %564 = add i64 %561, 28
  %565 = load i64, i64* %RSP, align 8, !tbaa !2428
  %566 = add i64 %565, -8
  %567 = inttoptr i64 %566 to i64*
  store i64 %564, i64* %567, align 8
  store i64 %566, i64* %RSP, align 8, !tbaa !2428
  store i64 %563, i64* %PC, align 8, !tbaa !2428
  %568 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* nonnull %0, i64 %563, %struct.Memory* %560)
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
  %608 = tail call %struct.Memory* @sub_400cf0_jacobi(%struct.State* nonnull %0, i64 %603, %struct.Memory* %568)
  %609 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 104), i64* %RDI, align 8, !tbaa !2428
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
  store i8 0, i8* %AL, align 1, !tbaa !2455
  %624 = add i64 %619, -1173
  %625 = add i64 %619, 10
  %626 = load i64, i64* %RSP, align 8, !tbaa !2428
  %627 = add i64 %626, -8
  %628 = inttoptr i64 %627 to i64*
  store i64 %625, i64* %628, align 8
  store i64 %627, i64* %RSP, align 8, !tbaa !2428
  store i64 %624, i64* %PC, align 8, !tbaa !2428
  %629 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %608)
  %630 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 133), i64* %RDI, align 8, !tbaa !2428
  %631 = load i64, i64* %RBP, align 8
  %632 = add i64 %631, -72
  %633 = add i64 %630, 15
  store i64 %633, i64* %PC, align 8
  %634 = inttoptr i64 %632 to float*
  %635 = load float, float* %634, align 4
  %636 = fpext float %635 to double
  %637 = bitcast %union.VectorReg* %5 to double*
  store double %636, double* %637, align 1, !tbaa !2432
  %638 = add i64 %631, -156
  %639 = load i32, i32* %EAX, align 4
  %640 = add i64 %630, 21
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %638 to i32*
  store i32 %639, i32* %641, align 4
  %642 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2455
  %643 = add i64 %642, -1204
  %644 = add i64 %642, 7
  %645 = load i64, i64* %RSP, align 8, !tbaa !2428
  %646 = add i64 %645, -8
  %647 = inttoptr i64 %646 to i64*
  store i64 %644, i64* %647, align 8
  store i64 %646, i64* %RSP, align 8, !tbaa !2428
  store i64 %643, i64* %PC, align 8, !tbaa !2428
  %648 = tail call fastcc %struct.Memory* @ext_603120_printf(%struct.State* nonnull %0, %struct.Memory* %629)
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
  %661 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %656, %struct.Memory* %648)
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
  %668 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %663, %struct.Memory* %661)
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
  %675 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %670, %struct.Memory* %668)
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
  %682 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %677, %struct.Memory* %675)
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
  %689 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %684, %struct.Memory* %682)
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
  %696 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %691, %struct.Memory* %689)
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
  %703 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* nonnull %0, i64 %698, %struct.Memory* %696)
  %704 = load i64, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %705 = load i64, i64* %RSP, align 8
  %706 = add i64 %705, 176
  store i64 %706, i64* %RSP, align 8, !tbaa !2428
  %707 = icmp ugt i64 %705, -177
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %15, align 1, !tbaa !2434
  %709 = trunc i64 %706 to i32
  %710 = and i32 %709, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710) #9
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %22, align 1, !tbaa !2448
  %715 = xor i64 %705, 16
  %716 = xor i64 %715, %706
  %717 = lshr i64 %716, 4
  %718 = trunc i64 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %28, align 1, !tbaa !2449
  %720 = icmp eq i64 %706, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %31, align 1, !tbaa !2450
  %722 = lshr i64 %706, 63
  %723 = trunc i64 %722 to i8
  store i8 %723, i8* %34, align 1, !tbaa !2451
  %724 = lshr i64 %705, 63
  %725 = xor i64 %722, %724
  %726 = add nuw nsw i64 %725, %722
  %727 = icmp eq i64 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %40, align 1, !tbaa !2452
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
define %struct.Memory* @sub_400508__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400508:
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
  store i8 0, i8* %5, align 1, !tbaa !2434
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #9
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2448
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2450
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2451
  store i8 0, i8* %10, align 1, !tbaa !2452
  store i8 0, i8* %7, align 1, !tbaa !2449
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_40051a, label %block_400518

block_400518:                                     ; preds = %block_400508
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40051a

block_40051a:                                     ; preds = %block_400518, %block_400508
  %27 = phi i64 [ %22, %block_400508 ], [ %.pre1, %block_400518 ]
  %28 = phi i64 [ %4, %block_400508 ], [ %.pre, %block_400518 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400508 ], [ %26, %block_400518 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2434
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2448
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2449
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2450
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2451
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2452
  %51 = add i64 %27, 5
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %29 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %PC, align 8, !tbaa !2428
  %54 = add i64 %28, 16
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401da0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401da0:
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
define %struct.Memory* @sub_4005d0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005d0:
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
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)) to i8), i8* %9, align 1, !tbaa !2434
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)) to i32), i32 255)) #9
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2448
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2449
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2450
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2451
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2452
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), label %block_4005f8, label %block_4005e1

block_4005f8:                                     ; preds = %block_4005e1, %block_4005d0
  %20 = phi i64 [ %27, %block_4005e1 ], [ %19, %block_4005d0 ]
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

block_4005e1:                                     ; preds = %block_4005d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2434
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 1, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %17, align 1, !tbaa !2451
  store i8 0, i8* %18, align 1, !tbaa !2452
  store i8 0, i8* %15, align 1, !tbaa !2449
  %27 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4294967295), i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  br label %block_4005f8
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401da4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401da4:
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
  store i8 %22, i8* %5, align 1, !tbaa !2434
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2448
  store i8 %10, i8* %11, align 1, !tbaa !2449
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2450
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2451
  store i8 %19, i8* %20, align 1, !tbaa !2452
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
define %struct.Memory* @sub_400590__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400590:
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
  store i8 0, i8* %3, align 1, !tbaa !2434
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2448
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2450
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2451
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2452
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2449
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
  store i8 0, i8* %3, align 1, !tbaa !2434
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2448
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2450
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2451
  store i8 0, i8* %7, align 1, !tbaa !2452
  store i8 0, i8* %8, align 1, !tbaa !2449
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
  store i64 ptrtoint (void ()* @callback_sub_401da0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401d30___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400cf0_jacobi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400cf0:
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
  store i8 %81, i8* %82, align 1, !tbaa !2434
  %83 = and i32 %78, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #9
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %87, i8* %88, align 1, !tbaa !2448
  %89 = xor i32 %78, %77
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1, !tbaa !2449
  %94 = icmp eq i32 %78, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1, !tbaa !2450
  %97 = lshr i32 %78, 31
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1, !tbaa !2451
  %100 = lshr i32 %77, 31
  %101 = xor i32 %97, %100
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1, !tbaa !2452
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
  store i8 %122, i8* %82, align 1, !tbaa !2434
  %123 = and i32 %119, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #9
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %88, align 1, !tbaa !2448
  %128 = xor i32 %119, %118
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %93, align 1, !tbaa !2449
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %96, align 1, !tbaa !2450
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %99, align 1, !tbaa !2451
  %136 = lshr i32 %118, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %105, align 1, !tbaa !2452
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
  store i8 %157, i8* %82, align 1, !tbaa !2434
  %158 = and i32 %154, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #9
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %88, align 1, !tbaa !2448
  %163 = xor i32 %154, %153
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %93, align 1, !tbaa !2449
  %167 = icmp eq i32 %154, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %96, align 1, !tbaa !2450
  %169 = lshr i32 %154, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %99, align 1, !tbaa !2451
  %171 = lshr i32 %153, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %105, align 1, !tbaa !2452
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
  br label %block_400d49

block_401878:                                     ; preds = %block_401963, %block_401871
  %227 = phi i64 [ %441, %block_401963 ], [ %.pre25, %block_401871 ]
  %228 = load i64, i64* %RBP, align 8
  %229 = add i64 %228, -68
  %230 = add i64 %227, 3
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  %234 = add i64 %228, -84
  %235 = add i64 %227, 6
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = sub i32 %232, %237
  %239 = icmp ult i32 %232, %237
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %82, align 1, !tbaa !2434
  %241 = and i32 %238, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #9
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %88, align 1, !tbaa !2448
  %246 = xor i32 %237, %232
  %247 = xor i32 %246, %238
  %248 = lshr i32 %247, 4
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %93, align 1, !tbaa !2449
  %251 = icmp eq i32 %238, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %96, align 1, !tbaa !2450
  %253 = lshr i32 %238, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %99, align 1, !tbaa !2451
  %255 = lshr i32 %232, 31
  %256 = lshr i32 %237, 31
  %257 = xor i32 %256, %255
  %258 = xor i32 %253, %255
  %259 = add nuw nsw i32 %258, %257
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %105, align 1, !tbaa !2452
  %262 = icmp ne i8 %254, 0
  %263 = xor i1 %262, %260
  %.v = select i1 %263, i64 12, i64 254
  %264 = add i64 %227, %.v
  store i64 %264, i64* %PC, align 8, !tbaa !2428
  br i1 %263, label %block_401884, label %block_401976

block_400d77:                                     ; preds = %block_400d70, %block_40184b
  %265 = phi i64 [ %.pre28, %block_400d70 ], [ %501, %block_40184b ]
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -72
  %268 = add i64 %265, 3
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX, align 8, !tbaa !2428
  %272 = add i64 %266, -88
  %273 = add i64 %265, 6
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = sub i32 %270, %275
  %277 = icmp ult i32 %270, %275
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %82, align 1, !tbaa !2434
  %279 = and i32 %276, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279) #9
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %88, align 1, !tbaa !2448
  %284 = xor i32 %275, %270
  %285 = xor i32 %284, %276
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %93, align 1, !tbaa !2449
  %289 = icmp eq i32 %276, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %96, align 1, !tbaa !2450
  %291 = lshr i32 %276, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %99, align 1, !tbaa !2451
  %293 = lshr i32 %270, 31
  %294 = lshr i32 %275, 31
  %295 = xor i32 %294, %293
  %296 = xor i32 %291, %293
  %297 = add nuw nsw i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %105, align 1, !tbaa !2452
  %300 = icmp ne i8 %292, 0
  %301 = xor i1 %300, %298
  %.v32 = select i1 %301, i64 12, i64 2791
  %302 = add i64 %265, %.v32
  store i64 %302, i64* %PC, align 8, !tbaa !2428
  br i1 %301, label %block_400d83, label %block_40185e

block_401976:                                     ; preds = %block_401878
  %303 = add i64 %228, -80
  %304 = add i64 %264, 8
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = add i32 %306, 1
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = icmp eq i32 %306, -1
  %310 = icmp eq i32 %307, 0
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %82, align 1, !tbaa !2434
  %313 = and i32 %307, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #9
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %88, align 1, !tbaa !2448
  %318 = xor i32 %307, %306
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %93, align 1, !tbaa !2449
  %322 = zext i1 %310 to i8
  store i8 %322, i8* %96, align 1, !tbaa !2450
  %323 = lshr i32 %307, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %99, align 1, !tbaa !2451
  %325 = lshr i32 %306, 31
  %326 = xor i32 %323, %325
  %327 = add nuw nsw i32 %326, %323
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %105, align 1, !tbaa !2452
  %330 = add i64 %264, 14
  store i64 %330, i64* %PC, align 8
  store i32 %307, i32* %305, align 4
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, -3131
  store i64 %332, i64* %PC, align 8, !tbaa !2428
  br label %block_400d49

block_401871:                                     ; preds = %block_400d64
  %333 = add i64 %371, 7
  store i64 %333, i64* %PC, align 8
  store i32 1, i32* %338, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_401878

block_400d64:                                     ; preds = %block_40185e, %block_400d55
  %334 = phi i64 [ %411, %block_40185e ], [ %.pre24, %block_400d55 ]
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -68
  %337 = add i64 %334, 3
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RAX, align 8, !tbaa !2428
  %341 = add i64 %335, -84
  %342 = add i64 %334, 6
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = sub i32 %339, %344
  %346 = icmp ult i32 %339, %344
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %82, align 1, !tbaa !2434
  %348 = and i32 %345, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #9
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %88, align 1, !tbaa !2448
  %353 = xor i32 %344, %339
  %354 = xor i32 %353, %345
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %93, align 1, !tbaa !2449
  %358 = icmp eq i32 %345, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %96, align 1, !tbaa !2450
  %360 = lshr i32 %345, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %99, align 1, !tbaa !2451
  %362 = lshr i32 %339, 31
  %363 = lshr i32 %344, 31
  %364 = xor i32 %363, %362
  %365 = xor i32 %360, %362
  %366 = add nuw nsw i32 %365, %364
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %105, align 1, !tbaa !2452
  %369 = icmp ne i8 %361, 0
  %370 = xor i1 %369, %367
  %.v35 = select i1 %370, i64 12, i64 2829
  %371 = add i64 %334, %.v35
  store i64 %371, i64* %PC, align 8, !tbaa !2428
  br i1 %370, label %block_400d70, label %block_401871

block_400d55:                                     ; preds = %block_400d49
  store <4 x i32> zeroinitializer, <4 x i32>* %226, align 1, !tbaa !2456
  %372 = add i64 %7379, -96
  %373 = add i64 %7415, 8
  store i64 %373, i64* %PC, align 8
  %374 = load <2 x float>, <2 x float>* %192, align 1
  %375 = extractelement <2 x float> %374, i32 0
  %376 = inttoptr i64 %372 to float*
  store float %375, float* %376, align 4
  %377 = load i64, i64* %RBP, align 8
  %378 = add i64 %377, -68
  %379 = load i64, i64* %PC, align 8
  %380 = add i64 %379, 7
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %378 to i32*
  store i32 1, i32* %381, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400d64

block_40185e:                                     ; preds = %block_400d77
  %382 = add i64 %266, -68
  %383 = add i64 %302, 8
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, 1
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = icmp eq i32 %385, -1
  %389 = icmp eq i32 %386, 0
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %82, align 1, !tbaa !2434
  %392 = and i32 %386, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #9
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %88, align 1, !tbaa !2448
  %397 = xor i32 %386, %385
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %93, align 1, !tbaa !2449
  %401 = zext i1 %389 to i8
  store i8 %401, i8* %96, align 1, !tbaa !2450
  %402 = lshr i32 %386, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %99, align 1, !tbaa !2451
  %404 = lshr i32 %385, 31
  %405 = xor i32 %402, %404
  %406 = add nuw nsw i32 %405, %402
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %105, align 1, !tbaa !2452
  %409 = add i64 %302, 14
  store i64 %409, i64* %PC, align 8
  store i32 %386, i32* %384, align 4
  %410 = load i64, i64* %PC, align 8
  %411 = add i64 %410, -2824
  store i64 %411, i64* %PC, align 8, !tbaa !2428
  br label %block_400d64

block_401963:                                     ; preds = %block_40188b
  %412 = add i64 %7287, -68
  %413 = add i64 %7323, 8
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = add i32 %415, 1
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RAX, align 8, !tbaa !2428
  %418 = icmp eq i32 %415, -1
  %419 = icmp eq i32 %416, 0
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %82, align 1, !tbaa !2434
  %422 = and i32 %416, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422) #9
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %88, align 1, !tbaa !2448
  %427 = xor i32 %416, %415
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %93, align 1, !tbaa !2449
  %431 = zext i1 %419 to i8
  store i8 %431, i8* %96, align 1, !tbaa !2450
  %432 = lshr i32 %416, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %99, align 1, !tbaa !2451
  %434 = lshr i32 %415, 31
  %435 = xor i32 %432, %434
  %436 = add nuw nsw i32 %435, %432
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %105, align 1, !tbaa !2452
  %439 = add i64 %7323, 14
  store i64 %439, i64* %PC, align 8
  store i32 %416, i32* %414, align 4
  %440 = load i64, i64* %PC, align 8
  %441 = add i64 %440, -249
  store i64 %441, i64* %PC, align 8, !tbaa !2428
  br label %block_401878

block_401950:                                     ; preds = %block_40189e
  %442 = add i64 %830, -72
  %443 = add i64 %866, 8
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = add i32 %445, 1
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RAX, align 8, !tbaa !2428
  %448 = icmp eq i32 %445, -1
  %449 = icmp eq i32 %446, 0
  %450 = or i1 %448, %449
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %82, align 1, !tbaa !2434
  %452 = and i32 %446, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452) #9
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %88, align 1, !tbaa !2448
  %457 = xor i32 %446, %445
  %458 = lshr i32 %457, 4
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %93, align 1, !tbaa !2449
  %461 = zext i1 %449 to i8
  store i8 %461, i8* %96, align 1, !tbaa !2450
  %462 = lshr i32 %446, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %99, align 1, !tbaa !2451
  %464 = lshr i32 %445, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %462
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %105, align 1, !tbaa !2452
  %469 = add i64 %866, 14
  store i64 %469, i64* %PC, align 8
  store i32 %446, i32* %444, align 4
  %470 = load i64, i64* %PC, align 8
  %471 = add i64 %470, -211
  store i64 %471, i64* %PC, align 8, !tbaa !2428
  br label %block_40188b

block_40184b:                                     ; preds = %block_400d8a
  %472 = add i64 %7325, -72
  %473 = add i64 %7361, 8
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = add i32 %475, 1
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RAX, align 8, !tbaa !2428
  %478 = icmp eq i32 %475, -1
  %479 = icmp eq i32 %476, 0
  %480 = or i1 %478, %479
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %82, align 1, !tbaa !2434
  %482 = and i32 %476, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #9
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %88, align 1, !tbaa !2448
  %487 = xor i32 %476, %475
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %93, align 1, !tbaa !2449
  %491 = zext i1 %479 to i8
  store i8 %491, i8* %96, align 1, !tbaa !2450
  %492 = lshr i32 %476, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %99, align 1, !tbaa !2451
  %494 = lshr i32 %475, 31
  %495 = xor i32 %492, %494
  %496 = add nuw nsw i32 %495, %492
  %497 = icmp eq i32 %496, 2
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %105, align 1, !tbaa !2452
  %499 = add i64 %7361, 14
  store i64 %499, i64* %PC, align 8
  store i32 %476, i32* %474, align 4
  %500 = load i64, i64* %PC, align 8
  %501 = add i64 %500, -2786
  store i64 %501, i64* %PC, align 8, !tbaa !2428
  br label %block_400d77

block_4018aa:                                     ; preds = %block_40189e
  %502 = add i64 %830, -64
  %503 = add i64 %866, 4
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RAX, align 8, !tbaa !2428
  %506 = add i64 %866, 7
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RAX, align 8, !tbaa !2428
  %509 = add i64 %866, 11
  store i64 %509, i64* %PC, align 8
  %510 = load i64, i64* %504, align 8
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %511 = add i64 %866, 19
  store i64 %511, i64* %PC, align 8
  %512 = load i64, i64* %504, align 8
  store i64 %512, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %513 = add i64 %866, 27
  store i64 %513, i64* %PC, align 8
  %514 = load i64, i64* %504, align 8
  store i64 %514, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %515 = add i64 %830, -68
  %516 = add i64 %866, 34
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RSI, align 8, !tbaa !2428
  %520 = add i64 %866, 38
  store i64 %520, i64* %PC, align 8
  %521 = load i64, i64* %504, align 8
  store i64 %521, i64* %RCX, align 8, !tbaa !2428
  %522 = add i64 %521, 16
  %523 = add i64 %866, 42
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = sext i32 %518 to i64
  %527 = sext i32 %525 to i64
  %528 = mul nsw i64 %527, %526
  %529 = trunc i64 %528 to i32
  %530 = and i64 %528, 4294967295
  store i64 %530, i64* %RSI, align 8, !tbaa !2428
  %531 = shl i64 %528, 32
  %532 = ashr exact i64 %531, 32
  %533 = icmp ne i64 %532, %528
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %82, align 1, !tbaa !2434
  %535 = and i32 %529, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535) #9
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %540 = lshr i32 %529, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %99, align 1, !tbaa !2451
  store i8 %534, i8* %105, align 1, !tbaa !2452
  %542 = add i64 %866, 46
  store i64 %542, i64* %PC, align 8
  %543 = load i64, i64* %504, align 8
  store i64 %543, i64* %RCX, align 8, !tbaa !2428
  %544 = add i64 %543, 20
  %545 = add i64 %866, 50
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = shl i64 %528, 32
  %549 = ashr exact i64 %548, 32
  %550 = sext i32 %547 to i64
  %551 = mul nsw i64 %550, %549
  %552 = and i64 %551, 4294967295
  store i64 %552, i64* %RSI, align 8, !tbaa !2428
  %553 = trunc i64 %551 to i32
  %554 = and i64 %551, 4294967295
  store i64 %554, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %555 = and i32 %553, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555) #9
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %560 = icmp eq i32 %553, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %96, align 1, !tbaa !2450
  %562 = lshr i32 %553, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %564 = load i64, i64* %RBP, align 8
  %565 = add i64 %564, -72
  %566 = add i64 %866, 55
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RSI, align 8, !tbaa !2428
  %570 = add i64 %564, -64
  %571 = add i64 %866, 59
  store i64 %571, i64* %PC, align 8
  %572 = inttoptr i64 %570 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RCX, align 8, !tbaa !2428
  %574 = add i64 %573, 20
  %575 = add i64 %866, 63
  store i64 %575, i64* %PC, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %568 to i64
  %579 = sext i32 %577 to i64
  %580 = mul nsw i64 %579, %578
  %581 = and i64 %580, 4294967295
  store i64 %581, i64* %RSI, align 8, !tbaa !2428
  %582 = trunc i64 %580 to i32
  %583 = add i32 %582, %553
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RDX, align 8, !tbaa !2428
  %585 = icmp ult i32 %583, %553
  %586 = icmp ult i32 %583, %582
  %587 = or i1 %585, %586
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %82, align 1, !tbaa !2434
  %589 = and i32 %583, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589) #9
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %88, align 1, !tbaa !2448
  %594 = xor i64 %580, %551
  %595 = trunc i64 %594 to i32
  %596 = xor i32 %595, %583
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %93, align 1, !tbaa !2449
  %600 = icmp eq i32 %583, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %96, align 1, !tbaa !2450
  %602 = lshr i32 %583, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %99, align 1, !tbaa !2451
  %604 = lshr i32 %582, 31
  %605 = xor i32 %602, %562
  %606 = xor i32 %602, %604
  %607 = add nuw nsw i32 %605, %606
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %105, align 1, !tbaa !2452
  %610 = add i64 %564, -76
  %611 = add i64 %866, 68
  store i64 %611, i64* %PC, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = add i32 %613, %583
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RDX, align 8, !tbaa !2428
  %616 = icmp ult i32 %614, %583
  %617 = icmp ult i32 %614, %613
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %82, align 1, !tbaa !2434
  %620 = and i32 %614, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620) #9
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %88, align 1, !tbaa !2448
  %625 = xor i32 %613, %583
  %626 = xor i32 %625, %614
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %93, align 1, !tbaa !2449
  %630 = icmp eq i32 %614, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %96, align 1, !tbaa !2450
  %632 = lshr i32 %614, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %99, align 1, !tbaa !2451
  %634 = lshr i32 %613, 31
  %635 = xor i32 %632, %602
  %636 = xor i32 %632, %634
  %637 = add nuw nsw i32 %635, %636
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %105, align 1, !tbaa !2452
  %640 = sext i32 %614 to i64
  store i64 %640, i64* %RCX, align 8, !tbaa !2428
  %641 = load i64, i64* %RAX, align 8
  %642 = shl nsw i64 %640, 2
  %643 = add i64 %641, %642
  %644 = add i64 %866, 76
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  store i32 %646, i32* %186, align 1, !tbaa !2453
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  store float 0.000000e+00, float* %195, align 1, !tbaa !2453
  store float 0.000000e+00, float* %196, align 1, !tbaa !2453
  %647 = load i64, i64* %RBP, align 8
  %648 = add i64 %647, -40
  %649 = add i64 %866, 80
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX, align 8, !tbaa !2428
  %652 = add i64 %866, 83
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RAX, align 8, !tbaa !2428
  %655 = add i64 %866, 87
  store i64 %655, i64* %PC, align 8
  %656 = load i64, i64* %650, align 8
  store i64 %656, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %657 = add i64 %866, 95
  store i64 %657, i64* %PC, align 8
  %658 = load i64, i64* %650, align 8
  store i64 %658, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %659 = add i64 %866, 103
  store i64 %659, i64* %PC, align 8
  %660 = load i64, i64* %650, align 8
  store i64 %660, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %661 = add i64 %647, -68
  %662 = add i64 %866, 110
  store i64 %662, i64* %PC, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RSI, align 8, !tbaa !2428
  %666 = add i64 %866, 114
  store i64 %666, i64* %PC, align 8
  %667 = load i64, i64* %650, align 8
  store i64 %667, i64* %RCX, align 8, !tbaa !2428
  %668 = add i64 %667, 16
  %669 = add i64 %866, 118
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sext i32 %664 to i64
  %673 = sext i32 %671 to i64
  %674 = mul nsw i64 %673, %672
  %675 = trunc i64 %674 to i32
  %676 = and i64 %674, 4294967295
  store i64 %676, i64* %RSI, align 8, !tbaa !2428
  %677 = shl i64 %674, 32
  %678 = ashr exact i64 %677, 32
  %679 = icmp ne i64 %678, %674
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %82, align 1, !tbaa !2434
  %681 = and i32 %675, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681) #9
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %686 = lshr i32 %675, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %99, align 1, !tbaa !2451
  store i8 %680, i8* %105, align 1, !tbaa !2452
  %688 = add i64 %866, 122
  store i64 %688, i64* %PC, align 8
  %689 = load i64, i64* %650, align 8
  store i64 %689, i64* %RCX, align 8, !tbaa !2428
  %690 = add i64 %689, 20
  %691 = add i64 %866, 126
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = shl i64 %674, 32
  %695 = ashr exact i64 %694, 32
  %696 = sext i32 %693 to i64
  %697 = mul nsw i64 %696, %695
  %698 = and i64 %697, 4294967295
  store i64 %698, i64* %RSI, align 8, !tbaa !2428
  %699 = trunc i64 %697 to i32
  %700 = and i64 %697, 4294967295
  store i64 %700, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %701 = and i32 %699, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701) #9
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %706 = icmp eq i32 %699, 0
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %96, align 1, !tbaa !2450
  %708 = lshr i32 %699, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %710 = load i64, i64* %RBP, align 8
  %711 = add i64 %710, -72
  %712 = add i64 %866, 131
  store i64 %712, i64* %PC, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RSI, align 8, !tbaa !2428
  %716 = add i64 %710, -40
  %717 = add i64 %866, 135
  store i64 %717, i64* %PC, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RCX, align 8, !tbaa !2428
  %720 = add i64 %719, 20
  %721 = add i64 %866, 139
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = sext i32 %714 to i64
  %725 = sext i32 %723 to i64
  %726 = mul nsw i64 %725, %724
  %727 = and i64 %726, 4294967295
  store i64 %727, i64* %RSI, align 8, !tbaa !2428
  %728 = trunc i64 %726 to i32
  %729 = add i32 %728, %699
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RDX, align 8, !tbaa !2428
  %731 = icmp ult i32 %729, %699
  %732 = icmp ult i32 %729, %728
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %82, align 1, !tbaa !2434
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735) #9
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %88, align 1, !tbaa !2448
  %740 = xor i64 %726, %697
  %741 = trunc i64 %740 to i32
  %742 = xor i32 %741, %729
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %93, align 1, !tbaa !2449
  %746 = icmp eq i32 %729, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %96, align 1, !tbaa !2450
  %748 = lshr i32 %729, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %99, align 1, !tbaa !2451
  %750 = lshr i32 %728, 31
  %751 = xor i32 %748, %708
  %752 = xor i32 %748, %750
  %753 = add nuw nsw i32 %751, %752
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %105, align 1, !tbaa !2452
  %756 = add i64 %710, -76
  %757 = add i64 %866, 144
  store i64 %757, i64* %PC, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = add i32 %759, %729
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RDX, align 8, !tbaa !2428
  %762 = icmp ult i32 %760, %729
  %763 = icmp ult i32 %760, %759
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %82, align 1, !tbaa !2434
  %766 = and i32 %760, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766) #9
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %88, align 1, !tbaa !2448
  %771 = xor i32 %759, %729
  %772 = xor i32 %771, %760
  %773 = lshr i32 %772, 4
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  store i8 %775, i8* %93, align 1, !tbaa !2449
  %776 = icmp eq i32 %760, 0
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %96, align 1, !tbaa !2450
  %778 = lshr i32 %760, 31
  %779 = trunc i32 %778 to i8
  store i8 %779, i8* %99, align 1, !tbaa !2451
  %780 = lshr i32 %759, 31
  %781 = xor i32 %778, %748
  %782 = xor i32 %778, %780
  %783 = add nuw nsw i32 %781, %782
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %105, align 1, !tbaa !2452
  %786 = sext i32 %760 to i64
  store i64 %786, i64* %RCX, align 8, !tbaa !2428
  %787 = load i64, i64* %RAX, align 8
  %788 = shl nsw i64 %786, 2
  %789 = add i64 %787, %788
  %790 = add i64 %866, 152
  store i64 %790, i64* %PC, align 8
  %791 = load <2 x float>, <2 x float>* %192, align 1
  %792 = extractelement <2 x float> %791, i32 0
  %793 = inttoptr i64 %789 to float*
  store float %792, float* %793, align 4
  %794 = load i64, i64* %RBP, align 8
  %795 = add i64 %794, -76
  %796 = load i64, i64* %PC, align 8
  %797 = add i64 %796, 3
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %795 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = add i32 %799, 1
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RAX, align 8, !tbaa !2428
  %802 = icmp eq i32 %799, -1
  %803 = icmp eq i32 %800, 0
  %804 = or i1 %802, %803
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %82, align 1, !tbaa !2434
  %806 = and i32 %800, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806) #9
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %88, align 1, !tbaa !2448
  %811 = xor i32 %800, %799
  %812 = lshr i32 %811, 4
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %93, align 1, !tbaa !2449
  %815 = zext i1 %803 to i8
  store i8 %815, i8* %96, align 1, !tbaa !2450
  %816 = lshr i32 %800, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %99, align 1, !tbaa !2451
  %818 = lshr i32 %799, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %816
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %105, align 1, !tbaa !2452
  %823 = add i64 %796, 9
  store i64 %823, i64* %PC, align 8
  store i32 %800, i32* %798, align 4
  %824 = load i64, i64* %PC, align 8
  %825 = add i64 %824, -173
  store i64 %825, i64* %PC, align 8, !tbaa !2428
  br label %block_40189e

block_400d70:                                     ; preds = %block_400d64
  %826 = add i64 %335, -72
  %827 = add i64 %371, 7
  store i64 %827, i64* %PC, align 8
  %828 = inttoptr i64 %826 to i32*
  store i32 1, i32* %828, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400d77

block_40189e:                                     ; preds = %block_401897, %block_4018aa
  %829 = phi i64 [ %.pre27, %block_401897 ], [ %825, %block_4018aa ]
  %830 = load i64, i64* %RBP, align 8
  %831 = add i64 %830, -76
  %832 = add i64 %829, 3
  store i64 %832, i64* %PC, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX, align 8, !tbaa !2428
  %836 = add i64 %830, -92
  %837 = add i64 %829, 6
  store i64 %837, i64* %PC, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = sub i32 %834, %839
  %841 = icmp ult i32 %834, %839
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %82, align 1, !tbaa !2434
  %843 = and i32 %840, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843) #9
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %88, align 1, !tbaa !2448
  %848 = xor i32 %839, %834
  %849 = xor i32 %848, %840
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %93, align 1, !tbaa !2449
  %853 = icmp eq i32 %840, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %96, align 1, !tbaa !2450
  %855 = lshr i32 %840, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %99, align 1, !tbaa !2451
  %857 = lshr i32 %834, 31
  %858 = lshr i32 %839, 31
  %859 = xor i32 %858, %857
  %860 = xor i32 %855, %857
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %105, align 1, !tbaa !2452
  %864 = icmp ne i8 %856, 0
  %865 = xor i1 %864, %862
  %.v31 = select i1 %865, i64 12, i64 178
  %866 = add i64 %829, %.v31
  store i64 %866, i64* %PC, align 8, !tbaa !2428
  br i1 %865, label %block_4018aa, label %block_401950

block_401897:                                     ; preds = %block_40188b
  %867 = add i64 %7287, -76
  %868 = add i64 %7323, 7
  store i64 %868, i64* %PC, align 8
  %869 = inttoptr i64 %867 to i32*
  store i32 1, i32* %869, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_40189e

block_400d96:                                     ; preds = %block_400d8a
  %870 = add i64 %7325, -16
  %871 = add i64 %7361, 4
  store i64 %871, i64* %PC, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %RAX, align 8, !tbaa !2428
  %874 = add i64 %7361, 7
  store i64 %874, i64* %PC, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX, align 8, !tbaa !2428
  %877 = add i64 %7361, 11
  store i64 %877, i64* %PC, align 8
  %878 = load i64, i64* %872, align 8
  store i64 %878, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %879 = add i64 %7361, 19
  store i64 %879, i64* %PC, align 8
  %880 = load i64, i64* %872, align 8
  store i64 %880, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %881 = add i64 %7361, 27
  store i64 %881, i64* %PC, align 8
  %882 = load i64, i64* %872, align 8
  store i64 %882, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %883 = add i64 %7325, -68
  %884 = add i64 %7361, 34
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RSI, align 8, !tbaa !2428
  %888 = add i64 %7361, 38
  store i64 %888, i64* %PC, align 8
  %889 = load i64, i64* %872, align 8
  store i64 %889, i64* %RCX, align 8, !tbaa !2428
  %890 = add i64 %889, 16
  %891 = add i64 %7361, 42
  store i64 %891, i64* %PC, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = sext i32 %886 to i64
  %895 = sext i32 %893 to i64
  %896 = mul nsw i64 %895, %894
  %897 = trunc i64 %896 to i32
  %898 = and i64 %896, 4294967295
  store i64 %898, i64* %RSI, align 8, !tbaa !2428
  %899 = shl i64 %896, 32
  %900 = ashr exact i64 %899, 32
  %901 = icmp ne i64 %900, %896
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %82, align 1, !tbaa !2434
  %903 = and i32 %897, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903) #9
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %908 = lshr i32 %897, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %99, align 1, !tbaa !2451
  store i8 %902, i8* %105, align 1, !tbaa !2452
  %910 = add i64 %7361, 46
  store i64 %910, i64* %PC, align 8
  %911 = load i64, i64* %872, align 8
  store i64 %911, i64* %RCX, align 8, !tbaa !2428
  %912 = add i64 %911, 20
  %913 = add i64 %7361, 50
  store i64 %913, i64* %PC, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = shl i64 %896, 32
  %917 = ashr exact i64 %916, 32
  %918 = sext i32 %915 to i64
  %919 = mul nsw i64 %918, %917
  %920 = and i64 %919, 4294967295
  store i64 %920, i64* %RSI, align 8, !tbaa !2428
  %921 = trunc i64 %919 to i32
  %922 = and i64 %919, 4294967295
  store i64 %922, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %923 = and i32 %921, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923) #9
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %928 = icmp eq i32 %921, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %96, align 1, !tbaa !2450
  %930 = lshr i32 %921, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %932 = load i64, i64* %RBP, align 8
  %933 = add i64 %932, -72
  %934 = add i64 %7361, 55
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RSI, align 8, !tbaa !2428
  %938 = add i64 %932, -16
  %939 = add i64 %7361, 59
  store i64 %939, i64* %PC, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RCX, align 8, !tbaa !2428
  %942 = add i64 %941, 20
  %943 = add i64 %7361, 63
  store i64 %943, i64* %PC, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = sext i32 %936 to i64
  %947 = sext i32 %945 to i64
  %948 = mul nsw i64 %947, %946
  %949 = and i64 %948, 4294967295
  store i64 %949, i64* %RSI, align 8, !tbaa !2428
  %950 = trunc i64 %948 to i32
  %951 = add i32 %950, %921
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RDX, align 8, !tbaa !2428
  %953 = icmp ult i32 %951, %921
  %954 = icmp ult i32 %951, %950
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %82, align 1, !tbaa !2434
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957) #9
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %88, align 1, !tbaa !2448
  %962 = xor i64 %948, %919
  %963 = trunc i64 %962 to i32
  %964 = xor i32 %963, %951
  %965 = lshr i32 %964, 4
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  store i8 %967, i8* %93, align 1, !tbaa !2449
  %968 = icmp eq i32 %951, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %96, align 1, !tbaa !2450
  %970 = lshr i32 %951, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %99, align 1, !tbaa !2451
  %972 = lshr i32 %950, 31
  %973 = xor i32 %970, %930
  %974 = xor i32 %970, %972
  %975 = add nuw nsw i32 %973, %974
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %105, align 1, !tbaa !2452
  %978 = add i64 %932, -76
  %979 = add i64 %7361, 68
  store i64 %979, i64* %PC, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = add i32 %981, %951
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RDX, align 8, !tbaa !2428
  %984 = icmp ult i32 %982, %951
  %985 = icmp ult i32 %982, %981
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %82, align 1, !tbaa !2434
  %988 = and i32 %982, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988) #9
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %88, align 1, !tbaa !2448
  %993 = xor i32 %981, %951
  %994 = xor i32 %993, %982
  %995 = lshr i32 %994, 4
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  store i8 %997, i8* %93, align 1, !tbaa !2449
  %998 = icmp eq i32 %982, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %96, align 1, !tbaa !2450
  %1000 = lshr i32 %982, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %99, align 1, !tbaa !2451
  %1002 = lshr i32 %981, 31
  %1003 = xor i32 %1000, %970
  %1004 = xor i32 %1000, %1002
  %1005 = add nuw nsw i32 %1003, %1004
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %105, align 1, !tbaa !2452
  %1008 = sext i32 %982 to i64
  store i64 %1008, i64* %RCX, align 8, !tbaa !2428
  %1009 = load i64, i64* %RAX, align 8
  %1010 = shl nsw i64 %1008, 2
  %1011 = add i64 %1009, %1010
  %1012 = add i64 %7361, 76
  store i64 %1012, i64* %PC, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  store i32 %1014, i32* %186, align 1, !tbaa !2453
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  store float 0.000000e+00, float* %195, align 1, !tbaa !2453
  store float 0.000000e+00, float* %196, align 1, !tbaa !2453
  %1015 = load i64, i64* %RBP, align 8
  %1016 = add i64 %1015, -40
  %1017 = add i64 %7361, 80
  store i64 %1017, i64* %PC, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %RAX, align 8, !tbaa !2428
  %1020 = add i64 %7361, 83
  store i64 %1020, i64* %PC, align 8
  %1021 = inttoptr i64 %1019 to i64*
  %1022 = load i64, i64* %1021, align 8
  store i64 %1022, i64* %RAX, align 8, !tbaa !2428
  %1023 = add i64 %7361, 87
  store i64 %1023, i64* %PC, align 8
  %1024 = load i64, i64* %1018, align 8
  store i64 %1024, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1025 = add i64 %7361, 95
  store i64 %1025, i64* %PC, align 8
  %1026 = load i64, i64* %1018, align 8
  store i64 %1026, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1027 = add i64 %7361, 103
  store i64 %1027, i64* %PC, align 8
  %1028 = load i64, i64* %1018, align 8
  store i64 %1028, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1029 = add i64 %1015, -68
  %1030 = add i64 %7361, 110
  store i64 %1030, i64* %PC, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = add i32 %1032, 1
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RSI, align 8, !tbaa !2428
  %1035 = icmp eq i32 %1032, -1
  %1036 = icmp eq i32 %1033, 0
  %1037 = or i1 %1035, %1036
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %82, align 1, !tbaa !2434
  %1039 = and i32 %1033, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039) #9
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %88, align 1, !tbaa !2448
  %1044 = xor i32 %1033, %1032
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %93, align 1, !tbaa !2449
  %1048 = zext i1 %1036 to i8
  store i8 %1048, i8* %96, align 1, !tbaa !2450
  %1049 = lshr i32 %1033, 31
  %1050 = trunc i32 %1049 to i8
  store i8 %1050, i8* %99, align 1, !tbaa !2451
  %1051 = lshr i32 %1032, 31
  %1052 = xor i32 %1049, %1051
  %1053 = add nuw nsw i32 %1052, %1049
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %105, align 1, !tbaa !2452
  %1056 = add i64 %7361, 117
  store i64 %1056, i64* %PC, align 8
  %1057 = load i64, i64* %1018, align 8
  store i64 %1057, i64* %RCX, align 8, !tbaa !2428
  %1058 = add i64 %1057, 16
  %1059 = add i64 %7361, 121
  store i64 %1059, i64* %PC, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = sext i32 %1033 to i64
  %1063 = sext i32 %1061 to i64
  %1064 = mul nsw i64 %1063, %1062
  %1065 = trunc i64 %1064 to i32
  %1066 = and i64 %1064, 4294967295
  store i64 %1066, i64* %RSI, align 8, !tbaa !2428
  %1067 = shl i64 %1064, 32
  %1068 = ashr exact i64 %1067, 32
  %1069 = icmp ne i64 %1068, %1064
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %82, align 1, !tbaa !2434
  %1071 = and i32 %1065, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071) #9
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1076 = lshr i32 %1065, 31
  %1077 = trunc i32 %1076 to i8
  store i8 %1077, i8* %99, align 1, !tbaa !2451
  store i8 %1070, i8* %105, align 1, !tbaa !2452
  %1078 = load i64, i64* %RBP, align 8
  %1079 = add i64 %1078, -40
  %1080 = add i64 %7361, 125
  store i64 %1080, i64* %PC, align 8
  %1081 = inttoptr i64 %1079 to i64*
  %1082 = load i64, i64* %1081, align 8
  store i64 %1082, i64* %RCX, align 8, !tbaa !2428
  %1083 = add i64 %1082, 20
  %1084 = add i64 %7361, 129
  store i64 %1084, i64* %PC, align 8
  %1085 = inttoptr i64 %1083 to i32*
  %1086 = load i32, i32* %1085, align 4
  %1087 = shl i64 %1064, 32
  %1088 = ashr exact i64 %1087, 32
  %1089 = sext i32 %1086 to i64
  %1090 = mul nsw i64 %1089, %1088
  %1091 = and i64 %1090, 4294967295
  store i64 %1091, i64* %RSI, align 8, !tbaa !2428
  %1092 = load i64, i64* %RDX, align 8
  %1093 = trunc i64 %1090 to i32
  %1094 = trunc i64 %1092 to i32
  %1095 = add i32 %1093, %1094
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RDX, align 8, !tbaa !2428
  %1097 = icmp ult i32 %1095, %1094
  %1098 = icmp ult i32 %1095, %1093
  %1099 = or i1 %1097, %1098
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %82, align 1, !tbaa !2434
  %1101 = and i32 %1095, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101) #9
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %88, align 1, !tbaa !2448
  %1106 = xor i64 %1090, %1092
  %1107 = trunc i64 %1106 to i32
  %1108 = xor i32 %1107, %1095
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %93, align 1, !tbaa !2449
  %1112 = icmp eq i32 %1095, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %96, align 1, !tbaa !2450
  %1114 = lshr i32 %1095, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %99, align 1, !tbaa !2451
  %1116 = lshr i32 %1094, 31
  %1117 = lshr i32 %1093, 31
  %1118 = xor i32 %1114, %1116
  %1119 = xor i32 %1114, %1117
  %1120 = add nuw nsw i32 %1118, %1119
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %105, align 1, !tbaa !2452
  %1123 = add i64 %1078, -72
  %1124 = add i64 %7361, 134
  store i64 %1124, i64* %PC, align 8
  %1125 = inttoptr i64 %1123 to i32*
  %1126 = load i32, i32* %1125, align 4
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RSI, align 8, !tbaa !2428
  %1128 = add i64 %7361, 138
  store i64 %1128, i64* %PC, align 8
  %1129 = load i64, i64* %1081, align 8
  store i64 %1129, i64* %RCX, align 8, !tbaa !2428
  %1130 = add i64 %1129, 20
  %1131 = add i64 %7361, 142
  store i64 %1131, i64* %PC, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1126 to i64
  %1135 = sext i32 %1133 to i64
  %1136 = mul nsw i64 %1135, %1134
  %1137 = and i64 %1136, 4294967295
  store i64 %1137, i64* %RSI, align 8, !tbaa !2428
  %1138 = trunc i64 %1136 to i32
  %1139 = add i32 %1138, %1095
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RDX, align 8, !tbaa !2428
  %1141 = icmp ult i32 %1139, %1095
  %1142 = icmp ult i32 %1139, %1138
  %1143 = or i1 %1141, %1142
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %82, align 1, !tbaa !2434
  %1145 = and i32 %1139, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145) #9
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %88, align 1, !tbaa !2448
  %1150 = xor i64 %1136, %1096
  %1151 = trunc i64 %1150 to i32
  %1152 = xor i32 %1151, %1139
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %93, align 1, !tbaa !2449
  %1156 = icmp eq i32 %1139, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %96, align 1, !tbaa !2450
  %1158 = lshr i32 %1139, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %99, align 1, !tbaa !2451
  %1160 = lshr i32 %1138, 31
  %1161 = xor i32 %1158, %1114
  %1162 = xor i32 %1158, %1160
  %1163 = add nuw nsw i32 %1161, %1162
  %1164 = icmp eq i32 %1163, 2
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %105, align 1, !tbaa !2452
  %1166 = load i64, i64* %RBP, align 8
  %1167 = add i64 %1166, -76
  %1168 = add i64 %7361, 147
  store i64 %1168, i64* %PC, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = add i32 %1170, %1139
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RDX, align 8, !tbaa !2428
  %1173 = icmp ult i32 %1171, %1139
  %1174 = icmp ult i32 %1171, %1170
  %1175 = or i1 %1173, %1174
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %82, align 1, !tbaa !2434
  %1177 = and i32 %1171, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177) #9
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %88, align 1, !tbaa !2448
  %1182 = xor i32 %1170, %1139
  %1183 = xor i32 %1182, %1171
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %93, align 1, !tbaa !2449
  %1187 = icmp eq i32 %1171, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %96, align 1, !tbaa !2450
  %1189 = lshr i32 %1171, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %99, align 1, !tbaa !2451
  %1191 = lshr i32 %1170, 31
  %1192 = xor i32 %1189, %1158
  %1193 = xor i32 %1189, %1191
  %1194 = add nuw nsw i32 %1192, %1193
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %105, align 1, !tbaa !2452
  %1197 = sext i32 %1171 to i64
  store i64 %1197, i64* %RCX, align 8, !tbaa !2428
  %1198 = load i64, i64* %RAX, align 8
  %1199 = shl nsw i64 %1197, 2
  %1200 = add i64 %1198, %1199
  %1201 = add i64 %7361, 155
  store i64 %1201, i64* %PC, align 8
  %1202 = load <2 x float>, <2 x float>* %192, align 1
  %1203 = load <2 x i32>, <2 x i32>* %197, align 1
  %1204 = inttoptr i64 %1200 to float*
  %1205 = load float, float* %1204, align 4
  %1206 = extractelement <2 x float> %1202, i32 0
  %1207 = fmul float %1206, %1205
  store float %1207, float* %193, align 1, !tbaa !2453
  %1208 = bitcast <2 x float> %1202 to <2 x i32>
  %1209 = extractelement <2 x i32> %1208, i32 1
  store i32 %1209, i32* %188, align 1, !tbaa !2453
  %1210 = extractelement <2 x i32> %1203, i32 0
  store i32 %1210, i32* %189, align 1, !tbaa !2453
  %1211 = extractelement <2 x i32> %1203, i32 1
  store i32 %1211, i32* %191, align 1, !tbaa !2453
  %1212 = add i64 %1166, -16
  %1213 = add i64 %7361, 159
  store i64 %1213, i64* %PC, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RAX, align 8, !tbaa !2428
  %1216 = add i64 %7361, 162
  store i64 %1216, i64* %PC, align 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RAX, align 8, !tbaa !2428
  %1219 = add i64 %7361, 166
  store i64 %1219, i64* %PC, align 8
  %1220 = load i64, i64* %1214, align 8
  store i64 %1220, i64* %RCX, align 8, !tbaa !2428
  %1221 = add i64 %1220, 12
  %1222 = add i64 %7361, 169
  store i64 %1222, i64* %PC, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RDX, align 8, !tbaa !2428
  %1226 = add i64 %7361, 176
  store i64 %1226, i64* %PC, align 8
  %1227 = load i64, i64* %1214, align 8
  store i64 %1227, i64* %RCX, align 8, !tbaa !2428
  %1228 = add i64 %1227, 16
  %1229 = add i64 %7361, 180
  store i64 %1229, i64* %PC, align 8
  %1230 = inttoptr i64 %1228 to i32*
  %1231 = load i32, i32* %1230, align 4
  %1232 = sext i32 %1224 to i64
  %1233 = sext i32 %1231 to i64
  %1234 = mul nsw i64 %1233, %1232
  %1235 = trunc i64 %1234 to i32
  %1236 = and i64 %1234, 4294967295
  store i64 %1236, i64* %RDX, align 8, !tbaa !2428
  %1237 = shl i64 %1234, 32
  %1238 = ashr exact i64 %1237, 32
  %1239 = icmp ne i64 %1238, %1234
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %82, align 1, !tbaa !2434
  %1241 = and i32 %1235, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241) #9
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1246 = lshr i32 %1235, 31
  %1247 = trunc i32 %1246 to i8
  store i8 %1247, i8* %99, align 1, !tbaa !2451
  store i8 %1240, i8* %105, align 1, !tbaa !2452
  %1248 = load i64, i64* %RBP, align 8
  %1249 = add i64 %1248, -16
  %1250 = add i64 %7361, 184
  store i64 %1250, i64* %PC, align 8
  %1251 = inttoptr i64 %1249 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %RCX, align 8, !tbaa !2428
  %1253 = add i64 %1252, 20
  %1254 = add i64 %7361, 188
  store i64 %1254, i64* %PC, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = shl i64 %1234, 32
  %1258 = ashr exact i64 %1257, 32
  %1259 = sext i32 %1256 to i64
  %1260 = mul nsw i64 %1259, %1258
  %1261 = trunc i64 %1260 to i32
  %1262 = and i64 %1260, 4294967295
  store i64 %1262, i64* %RDX, align 8, !tbaa !2428
  %1263 = shl i64 %1260, 32
  %1264 = ashr exact i64 %1263, 32
  %1265 = icmp ne i64 %1264, %1260
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %82, align 1, !tbaa !2434
  %1267 = and i32 %1261, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267) #9
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1272 = lshr i32 %1261, 31
  %1273 = trunc i32 %1272 to i8
  store i8 %1273, i8* %99, align 1, !tbaa !2451
  store i8 %1266, i8* %105, align 1, !tbaa !2452
  %1274 = add i64 %1248, -68
  %1275 = add i64 %7361, 191
  store i64 %1275, i64* %PC, align 8
  %1276 = inttoptr i64 %1274 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = zext i32 %1277 to i64
  store i64 %1278, i64* %RSI, align 8, !tbaa !2428
  %1279 = add i64 %7361, 195
  store i64 %1279, i64* %PC, align 8
  %1280 = load i64, i64* %1251, align 8
  store i64 %1280, i64* %RCX, align 8, !tbaa !2428
  %1281 = add i64 %1280, 16
  %1282 = add i64 %7361, 199
  store i64 %1282, i64* %PC, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sext i32 %1277 to i64
  %1286 = sext i32 %1284 to i64
  %1287 = mul nsw i64 %1286, %1285
  %1288 = trunc i64 %1287 to i32
  %1289 = and i64 %1287, 4294967295
  store i64 %1289, i64* %RSI, align 8, !tbaa !2428
  %1290 = shl i64 %1287, 32
  %1291 = ashr exact i64 %1290, 32
  %1292 = icmp ne i64 %1291, %1287
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %82, align 1, !tbaa !2434
  %1294 = and i32 %1288, 255
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294) #9
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1299 = lshr i32 %1288, 31
  %1300 = trunc i32 %1299 to i8
  store i8 %1300, i8* %99, align 1, !tbaa !2451
  store i8 %1293, i8* %105, align 1, !tbaa !2452
  %1301 = add i64 %7361, 203
  store i64 %1301, i64* %PC, align 8
  %1302 = load i64, i64* %1251, align 8
  store i64 %1302, i64* %RCX, align 8, !tbaa !2428
  %1303 = add i64 %1302, 20
  %1304 = add i64 %7361, 207
  store i64 %1304, i64* %PC, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = shl i64 %1287, 32
  %1308 = ashr exact i64 %1307, 32
  %1309 = sext i32 %1306 to i64
  %1310 = mul nsw i64 %1309, %1308
  %1311 = and i64 %1310, 4294967295
  store i64 %1311, i64* %RSI, align 8, !tbaa !2428
  %1312 = trunc i64 %1310 to i32
  %1313 = trunc i64 %1260 to i32
  %1314 = add i32 %1312, %1313
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RDX, align 8, !tbaa !2428
  %1316 = icmp ult i32 %1314, %1313
  %1317 = icmp ult i32 %1314, %1312
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %82, align 1, !tbaa !2434
  %1320 = and i32 %1314, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320) #9
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %88, align 1, !tbaa !2448
  %1325 = xor i64 %1310, %1260
  %1326 = trunc i64 %1325 to i32
  %1327 = xor i32 %1326, %1314
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %93, align 1, !tbaa !2449
  %1331 = icmp eq i32 %1314, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %96, align 1, !tbaa !2450
  %1333 = lshr i32 %1314, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %99, align 1, !tbaa !2451
  %1335 = lshr i32 %1313, 31
  %1336 = lshr i32 %1312, 31
  %1337 = xor i32 %1333, %1335
  %1338 = xor i32 %1333, %1336
  %1339 = add nuw nsw i32 %1337, %1338
  %1340 = icmp eq i32 %1339, 2
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %105, align 1, !tbaa !2452
  %1342 = load i64, i64* %RBP, align 8
  %1343 = add i64 %1342, -72
  %1344 = add i64 %7361, 212
  store i64 %1344, i64* %PC, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RSI, align 8, !tbaa !2428
  %1348 = add i64 %1342, -16
  %1349 = add i64 %7361, 216
  store i64 %1349, i64* %PC, align 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RCX, align 8, !tbaa !2428
  %1352 = add i64 %1351, 20
  %1353 = add i64 %7361, 220
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = sext i32 %1346 to i64
  %1357 = sext i32 %1355 to i64
  %1358 = mul nsw i64 %1357, %1356
  %1359 = and i64 %1358, 4294967295
  store i64 %1359, i64* %RSI, align 8, !tbaa !2428
  %1360 = trunc i64 %1358 to i32
  %1361 = add i32 %1360, %1314
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RDX, align 8, !tbaa !2428
  %1363 = icmp ult i32 %1361, %1314
  %1364 = icmp ult i32 %1361, %1360
  %1365 = or i1 %1363, %1364
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %82, align 1, !tbaa !2434
  %1367 = and i32 %1361, 255
  %1368 = tail call i32 @llvm.ctpop.i32(i32 %1367) #9
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  store i8 %1371, i8* %88, align 1, !tbaa !2448
  %1372 = xor i64 %1358, %1315
  %1373 = trunc i64 %1372 to i32
  %1374 = xor i32 %1373, %1361
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %93, align 1, !tbaa !2449
  %1378 = icmp eq i32 %1361, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %96, align 1, !tbaa !2450
  %1380 = lshr i32 %1361, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %99, align 1, !tbaa !2451
  %1382 = lshr i32 %1360, 31
  %1383 = xor i32 %1380, %1333
  %1384 = xor i32 %1380, %1382
  %1385 = add nuw nsw i32 %1383, %1384
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %105, align 1, !tbaa !2452
  %1388 = add i64 %1342, -76
  %1389 = add i64 %7361, 225
  store i64 %1389, i64* %PC, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = add i32 %1391, %1361
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RDX, align 8, !tbaa !2428
  %1394 = icmp ult i32 %1392, %1361
  %1395 = icmp ult i32 %1392, %1391
  %1396 = or i1 %1394, %1395
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %82, align 1, !tbaa !2434
  %1398 = and i32 %1392, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398) #9
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %88, align 1, !tbaa !2448
  %1403 = xor i32 %1391, %1361
  %1404 = xor i32 %1403, %1392
  %1405 = lshr i32 %1404, 4
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %93, align 1, !tbaa !2449
  %1408 = icmp eq i32 %1392, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %96, align 1, !tbaa !2450
  %1410 = lshr i32 %1392, 31
  %1411 = trunc i32 %1410 to i8
  store i8 %1411, i8* %99, align 1, !tbaa !2451
  %1412 = lshr i32 %1391, 31
  %1413 = xor i32 %1410, %1380
  %1414 = xor i32 %1410, %1412
  %1415 = add nuw nsw i32 %1413, %1414
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %105, align 1, !tbaa !2452
  %1418 = sext i32 %1392 to i64
  store i64 %1418, i64* %RCX, align 8, !tbaa !2428
  %1419 = load i64, i64* %RAX, align 8
  %1420 = shl nsw i64 %1418, 2
  %1421 = add i64 %1419, %1420
  %1422 = add i64 %7361, 233
  store i64 %1422, i64* %PC, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  store i32 %1424, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %1425 = load i64, i64* %RBP, align 8
  %1426 = add i64 %1425, -40
  %1427 = add i64 %7361, 237
  store i64 %1427, i64* %PC, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX, align 8, !tbaa !2428
  %1430 = add i64 %7361, 240
  store i64 %1430, i64* %PC, align 8
  %1431 = inttoptr i64 %1429 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %RAX, align 8, !tbaa !2428
  %1433 = add i64 %7361, 244
  store i64 %1433, i64* %PC, align 8
  %1434 = load i64, i64* %1428, align 8
  store i64 %1434, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1435 = add i64 %7361, 252
  store i64 %1435, i64* %PC, align 8
  %1436 = load i64, i64* %1428, align 8
  store i64 %1436, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1437 = add i64 %7361, 260
  store i64 %1437, i64* %PC, align 8
  %1438 = load i64, i64* %1428, align 8
  store i64 %1438, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1439 = add i64 %1425, -68
  %1440 = add i64 %7361, 267
  store i64 %1440, i64* %PC, align 8
  %1441 = inttoptr i64 %1439 to i32*
  %1442 = load i32, i32* %1441, align 4
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RSI, align 8, !tbaa !2428
  %1444 = add i64 %7361, 271
  store i64 %1444, i64* %PC, align 8
  %1445 = load i64, i64* %1428, align 8
  store i64 %1445, i64* %RCX, align 8, !tbaa !2428
  %1446 = add i64 %1445, 16
  %1447 = add i64 %7361, 275
  store i64 %1447, i64* %PC, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = sext i32 %1442 to i64
  %1451 = sext i32 %1449 to i64
  %1452 = mul nsw i64 %1451, %1450
  %1453 = trunc i64 %1452 to i32
  %1454 = and i64 %1452, 4294967295
  store i64 %1454, i64* %RSI, align 8, !tbaa !2428
  %1455 = shl i64 %1452, 32
  %1456 = ashr exact i64 %1455, 32
  %1457 = icmp ne i64 %1456, %1452
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %82, align 1, !tbaa !2434
  %1459 = and i32 %1453, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459) #9
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1464 = lshr i32 %1453, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %99, align 1, !tbaa !2451
  store i8 %1458, i8* %105, align 1, !tbaa !2452
  %1466 = add i64 %7361, 279
  store i64 %1466, i64* %PC, align 8
  %1467 = load i64, i64* %1428, align 8
  store i64 %1467, i64* %RCX, align 8, !tbaa !2428
  %1468 = add i64 %1467, 20
  %1469 = add i64 %7361, 283
  store i64 %1469, i64* %PC, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = shl i64 %1452, 32
  %1473 = ashr exact i64 %1472, 32
  %1474 = sext i32 %1471 to i64
  %1475 = mul nsw i64 %1474, %1473
  %1476 = and i64 %1475, 4294967295
  store i64 %1476, i64* %RSI, align 8, !tbaa !2428
  %1477 = trunc i64 %1475 to i32
  %1478 = and i64 %1475, 4294967295
  store i64 %1478, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %1479 = and i32 %1477, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479) #9
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %1484 = icmp eq i32 %1477, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %96, align 1, !tbaa !2450
  %1486 = lshr i32 %1477, 31
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1488 = load i64, i64* %RBP, align 8
  %1489 = add i64 %1488, -72
  %1490 = add i64 %7361, 288
  store i64 %1490, i64* %PC, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = add i32 %1492, 1
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RSI, align 8, !tbaa !2428
  %1495 = icmp eq i32 %1492, -1
  %1496 = icmp eq i32 %1493, 0
  %1497 = or i1 %1495, %1496
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %82, align 1, !tbaa !2434
  %1499 = and i32 %1493, 255
  %1500 = tail call i32 @llvm.ctpop.i32(i32 %1499) #9
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  store i8 %1503, i8* %88, align 1, !tbaa !2448
  %1504 = xor i32 %1493, %1492
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %93, align 1, !tbaa !2449
  %1508 = zext i1 %1496 to i8
  store i8 %1508, i8* %96, align 1, !tbaa !2450
  %1509 = lshr i32 %1493, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %99, align 1, !tbaa !2451
  %1511 = lshr i32 %1492, 31
  %1512 = xor i32 %1509, %1511
  %1513 = add nuw nsw i32 %1512, %1509
  %1514 = icmp eq i32 %1513, 2
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %105, align 1, !tbaa !2452
  %1516 = add i64 %1488, -40
  %1517 = add i64 %7361, 295
  store i64 %1517, i64* %PC, align 8
  %1518 = inttoptr i64 %1516 to i64*
  %1519 = load i64, i64* %1518, align 8
  store i64 %1519, i64* %RCX, align 8, !tbaa !2428
  %1520 = add i64 %1519, 20
  %1521 = add i64 %7361, 299
  store i64 %1521, i64* %PC, align 8
  %1522 = inttoptr i64 %1520 to i32*
  %1523 = load i32, i32* %1522, align 4
  %1524 = sext i32 %1493 to i64
  %1525 = sext i32 %1523 to i64
  %1526 = mul nsw i64 %1525, %1524
  %1527 = and i64 %1526, 4294967295
  store i64 %1527, i64* %RSI, align 8, !tbaa !2428
  %1528 = trunc i64 %1526 to i32
  %1529 = add i32 %1528, %1477
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RDX, align 8, !tbaa !2428
  %1531 = icmp ult i32 %1529, %1477
  %1532 = icmp ult i32 %1529, %1528
  %1533 = or i1 %1531, %1532
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %82, align 1, !tbaa !2434
  %1535 = and i32 %1529, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535) #9
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %88, align 1, !tbaa !2448
  %1540 = xor i64 %1526, %1475
  %1541 = trunc i64 %1540 to i32
  %1542 = xor i32 %1541, %1529
  %1543 = lshr i32 %1542, 4
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %93, align 1, !tbaa !2449
  %1546 = icmp eq i32 %1529, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %96, align 1, !tbaa !2450
  %1548 = lshr i32 %1529, 31
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, i8* %99, align 1, !tbaa !2451
  %1550 = lshr i32 %1528, 31
  %1551 = xor i32 %1548, %1486
  %1552 = xor i32 %1548, %1550
  %1553 = add nuw nsw i32 %1551, %1552
  %1554 = icmp eq i32 %1553, 2
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %105, align 1, !tbaa !2452
  %1556 = load i64, i64* %RBP, align 8
  %1557 = add i64 %1556, -76
  %1558 = add i64 %7361, 304
  store i64 %1558, i64* %PC, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = add i32 %1560, %1529
  %1562 = zext i32 %1561 to i64
  store i64 %1562, i64* %RDX, align 8, !tbaa !2428
  %1563 = icmp ult i32 %1561, %1529
  %1564 = icmp ult i32 %1561, %1560
  %1565 = or i1 %1563, %1564
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %82, align 1, !tbaa !2434
  %1567 = and i32 %1561, 255
  %1568 = tail call i32 @llvm.ctpop.i32(i32 %1567) #9
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %88, align 1, !tbaa !2448
  %1572 = xor i32 %1560, %1529
  %1573 = xor i32 %1572, %1561
  %1574 = lshr i32 %1573, 4
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  store i8 %1576, i8* %93, align 1, !tbaa !2449
  %1577 = icmp eq i32 %1561, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %96, align 1, !tbaa !2450
  %1579 = lshr i32 %1561, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %99, align 1, !tbaa !2451
  %1581 = lshr i32 %1560, 31
  %1582 = xor i32 %1579, %1548
  %1583 = xor i32 %1579, %1581
  %1584 = add nuw nsw i32 %1582, %1583
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %105, align 1, !tbaa !2452
  %1587 = sext i32 %1561 to i64
  store i64 %1587, i64* %RCX, align 8, !tbaa !2428
  %1588 = load i64, i64* %RAX, align 8
  %1589 = shl nsw i64 %1587, 2
  %1590 = add i64 %1588, %1589
  %1591 = add i64 %7361, 312
  store i64 %1591, i64* %PC, align 8
  %1592 = load <2 x float>, <2 x float>* %207, align 1
  %1593 = load <2 x i32>, <2 x i32>* %208, align 1
  %1594 = inttoptr i64 %1590 to float*
  %1595 = load float, float* %1594, align 4
  %1596 = extractelement <2 x float> %1592, i32 0
  %1597 = fmul float %1596, %1595
  store float %1597, float* %199, align 1, !tbaa !2453
  %1598 = bitcast <2 x float> %1592 to <2 x i32>
  %1599 = extractelement <2 x i32> %1598, i32 1
  store i32 %1599, i32* %209, align 1, !tbaa !2453
  %1600 = extractelement <2 x i32> %1593, i32 0
  store i32 %1600, i32* %210, align 1, !tbaa !2453
  %1601 = extractelement <2 x i32> %1593, i32 1
  store i32 %1601, i32* %211, align 1, !tbaa !2453
  %1602 = load <2 x float>, <2 x float>* %192, align 1
  %1603 = load <2 x i32>, <2 x i32>* %197, align 1
  %1604 = load <2 x float>, <2 x float>* %207, align 1
  %1605 = extractelement <2 x float> %1602, i32 0
  %1606 = extractelement <2 x float> %1604, i32 0
  %1607 = fadd float %1605, %1606
  store float %1607, float* %193, align 1, !tbaa !2453
  %1608 = bitcast <2 x float> %1602 to <2 x i32>
  %1609 = extractelement <2 x i32> %1608, i32 1
  store i32 %1609, i32* %188, align 1, !tbaa !2453
  %1610 = extractelement <2 x i32> %1603, i32 0
  store i32 %1610, i32* %189, align 1, !tbaa !2453
  %1611 = extractelement <2 x i32> %1603, i32 1
  store i32 %1611, i32* %191, align 1, !tbaa !2453
  %1612 = add i64 %1556, -16
  %1613 = add i64 %7361, 320
  store i64 %1613, i64* %PC, align 8
  %1614 = inttoptr i64 %1612 to i64*
  %1615 = load i64, i64* %1614, align 8
  store i64 %1615, i64* %RAX, align 8, !tbaa !2428
  %1616 = add i64 %7361, 323
  store i64 %1616, i64* %PC, align 8
  %1617 = inttoptr i64 %1615 to i64*
  %1618 = load i64, i64* %1617, align 8
  store i64 %1618, i64* %RAX, align 8, !tbaa !2428
  %1619 = add i64 %7361, 327
  store i64 %1619, i64* %PC, align 8
  %1620 = load i64, i64* %1614, align 8
  store i64 %1620, i64* %RCX, align 8, !tbaa !2428
  %1621 = add i64 %1620, 12
  %1622 = add i64 %7361, 330
  store i64 %1622, i64* %PC, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = shl i32 %1624, 1
  %1626 = icmp slt i32 %1624, 0
  %1627 = icmp slt i32 %1625, 0
  %1628 = xor i1 %1626, %1627
  %1629 = zext i32 %1625 to i64
  store i64 %1629, i64* %RDX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1624, 31
  %1630 = trunc i32 %.lobit to i8
  store i8 %1630, i8* %82, align 1, !tbaa !2455
  %1631 = and i32 %1625, 254
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631) #9
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %88, align 1, !tbaa !2455
  store i8 0, i8* %93, align 1, !tbaa !2455
  %1636 = icmp eq i32 %1625, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %96, align 1, !tbaa !2455
  %1638 = lshr i32 %1624, 30
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  store i8 %1640, i8* %99, align 1, !tbaa !2455
  %1641 = zext i1 %1628 to i8
  store i8 %1641, i8* %105, align 1, !tbaa !2455
  %1642 = load i64, i64* %RBP, align 8
  %1643 = add i64 %1642, -16
  %1644 = add i64 %7361, 337
  store i64 %1644, i64* %PC, align 8
  %1645 = inttoptr i64 %1643 to i64*
  %1646 = load i64, i64* %1645, align 8
  store i64 %1646, i64* %RCX, align 8, !tbaa !2428
  %1647 = add i64 %1646, 16
  %1648 = add i64 %7361, 341
  store i64 %1648, i64* %PC, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = sext i32 %1625 to i64
  %1652 = sext i32 %1650 to i64
  %1653 = mul nsw i64 %1652, %1651
  %1654 = trunc i64 %1653 to i32
  %1655 = and i64 %1653, 4294967294
  store i64 %1655, i64* %RDX, align 8, !tbaa !2428
  %1656 = shl i64 %1653, 32
  %1657 = ashr exact i64 %1656, 32
  %1658 = icmp ne i64 %1657, %1653
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %82, align 1, !tbaa !2434
  %1660 = and i32 %1654, 254
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660) #9
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1665 = lshr i32 %1654, 31
  %1666 = trunc i32 %1665 to i8
  store i8 %1666, i8* %99, align 1, !tbaa !2451
  store i8 %1659, i8* %105, align 1, !tbaa !2452
  %1667 = add i64 %7361, 345
  store i64 %1667, i64* %PC, align 8
  %1668 = load i64, i64* %1645, align 8
  store i64 %1668, i64* %RCX, align 8, !tbaa !2428
  %1669 = add i64 %1668, 20
  %1670 = add i64 %7361, 349
  store i64 %1670, i64* %PC, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = shl i64 %1653, 32
  %1674 = ashr exact i64 %1673, 32
  %1675 = sext i32 %1672 to i64
  %1676 = mul nsw i64 %1675, %1674
  %1677 = trunc i64 %1676 to i32
  %1678 = and i64 %1676, 4294967295
  store i64 %1678, i64* %RDX, align 8, !tbaa !2428
  %1679 = shl i64 %1676, 32
  %1680 = ashr exact i64 %1679, 32
  %1681 = icmp ne i64 %1680, %1676
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %82, align 1, !tbaa !2434
  %1683 = and i32 %1677, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683) #9
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1688 = lshr i32 %1677, 31
  %1689 = trunc i32 %1688 to i8
  store i8 %1689, i8* %99, align 1, !tbaa !2451
  store i8 %1682, i8* %105, align 1, !tbaa !2452
  %1690 = add i64 %1642, -68
  %1691 = add i64 %7361, 352
  store i64 %1691, i64* %PC, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RSI, align 8, !tbaa !2428
  %1695 = add i64 %7361, 356
  store i64 %1695, i64* %PC, align 8
  %1696 = load i64, i64* %1645, align 8
  store i64 %1696, i64* %RCX, align 8, !tbaa !2428
  %1697 = add i64 %1696, 16
  %1698 = add i64 %7361, 360
  store i64 %1698, i64* %PC, align 8
  %1699 = inttoptr i64 %1697 to i32*
  %1700 = load i32, i32* %1699, align 4
  %1701 = sext i32 %1693 to i64
  %1702 = sext i32 %1700 to i64
  %1703 = mul nsw i64 %1702, %1701
  %1704 = trunc i64 %1703 to i32
  %1705 = and i64 %1703, 4294967295
  store i64 %1705, i64* %RSI, align 8, !tbaa !2428
  %1706 = shl i64 %1703, 32
  %1707 = ashr exact i64 %1706, 32
  %1708 = icmp ne i64 %1707, %1703
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %82, align 1, !tbaa !2434
  %1710 = and i32 %1704, 255
  %1711 = tail call i32 @llvm.ctpop.i32(i32 %1710) #9
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1715 = lshr i32 %1704, 31
  %1716 = trunc i32 %1715 to i8
  store i8 %1716, i8* %99, align 1, !tbaa !2451
  store i8 %1709, i8* %105, align 1, !tbaa !2452
  %1717 = load i64, i64* %RBP, align 8
  %1718 = add i64 %1717, -16
  %1719 = add i64 %7361, 364
  store i64 %1719, i64* %PC, align 8
  %1720 = inttoptr i64 %1718 to i64*
  %1721 = load i64, i64* %1720, align 8
  store i64 %1721, i64* %RCX, align 8, !tbaa !2428
  %1722 = add i64 %1721, 20
  %1723 = add i64 %7361, 368
  store i64 %1723, i64* %PC, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = shl i64 %1703, 32
  %1727 = ashr exact i64 %1726, 32
  %1728 = sext i32 %1725 to i64
  %1729 = mul nsw i64 %1728, %1727
  %1730 = and i64 %1729, 4294967295
  store i64 %1730, i64* %RSI, align 8, !tbaa !2428
  %1731 = trunc i64 %1729 to i32
  %1732 = trunc i64 %1676 to i32
  %1733 = add i32 %1731, %1732
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RDX, align 8, !tbaa !2428
  %1735 = icmp ult i32 %1733, %1732
  %1736 = icmp ult i32 %1733, %1731
  %1737 = or i1 %1735, %1736
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %82, align 1, !tbaa !2434
  %1739 = and i32 %1733, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739) #9
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %88, align 1, !tbaa !2448
  %1744 = xor i64 %1729, %1676
  %1745 = trunc i64 %1744 to i32
  %1746 = xor i32 %1745, %1733
  %1747 = lshr i32 %1746, 4
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %93, align 1, !tbaa !2449
  %1750 = icmp eq i32 %1733, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %96, align 1, !tbaa !2450
  %1752 = lshr i32 %1733, 31
  %1753 = trunc i32 %1752 to i8
  store i8 %1753, i8* %99, align 1, !tbaa !2451
  %1754 = lshr i32 %1732, 31
  %1755 = lshr i32 %1731, 31
  %1756 = xor i32 %1752, %1754
  %1757 = xor i32 %1752, %1755
  %1758 = add nuw nsw i32 %1756, %1757
  %1759 = icmp eq i32 %1758, 2
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %105, align 1, !tbaa !2452
  %1761 = add i64 %1717, -72
  %1762 = add i64 %7361, 373
  store i64 %1762, i64* %PC, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RSI, align 8, !tbaa !2428
  %1766 = add i64 %7361, 377
  store i64 %1766, i64* %PC, align 8
  %1767 = load i64, i64* %1720, align 8
  store i64 %1767, i64* %RCX, align 8, !tbaa !2428
  %1768 = add i64 %1767, 20
  %1769 = add i64 %7361, 381
  store i64 %1769, i64* %PC, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sext i32 %1764 to i64
  %1773 = sext i32 %1771 to i64
  %1774 = mul nsw i64 %1773, %1772
  %1775 = and i64 %1774, 4294967295
  store i64 %1775, i64* %RSI, align 8, !tbaa !2428
  %1776 = trunc i64 %1774 to i32
  %1777 = add i32 %1776, %1733
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RDX, align 8, !tbaa !2428
  %1779 = icmp ult i32 %1777, %1733
  %1780 = icmp ult i32 %1777, %1776
  %1781 = or i1 %1779, %1780
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %82, align 1, !tbaa !2434
  %1783 = and i32 %1777, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783) #9
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %88, align 1, !tbaa !2448
  %1788 = xor i64 %1774, %1734
  %1789 = trunc i64 %1788 to i32
  %1790 = xor i32 %1789, %1777
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %93, align 1, !tbaa !2449
  %1794 = icmp eq i32 %1777, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %96, align 1, !tbaa !2450
  %1796 = lshr i32 %1777, 31
  %1797 = trunc i32 %1796 to i8
  store i8 %1797, i8* %99, align 1, !tbaa !2451
  %1798 = lshr i32 %1776, 31
  %1799 = xor i32 %1796, %1752
  %1800 = xor i32 %1796, %1798
  %1801 = add nuw nsw i32 %1799, %1800
  %1802 = icmp eq i32 %1801, 2
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %105, align 1, !tbaa !2452
  %1804 = load i64, i64* %RBP, align 8
  %1805 = add i64 %1804, -76
  %1806 = add i64 %7361, 386
  store i64 %1806, i64* %PC, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = add i32 %1808, %1777
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RDX, align 8, !tbaa !2428
  %1811 = icmp ult i32 %1809, %1777
  %1812 = icmp ult i32 %1809, %1808
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %82, align 1, !tbaa !2434
  %1815 = and i32 %1809, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815) #9
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %88, align 1, !tbaa !2448
  %1820 = xor i32 %1808, %1777
  %1821 = xor i32 %1820, %1809
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %93, align 1, !tbaa !2449
  %1825 = icmp eq i32 %1809, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %96, align 1, !tbaa !2450
  %1827 = lshr i32 %1809, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %99, align 1, !tbaa !2451
  %1829 = lshr i32 %1808, 31
  %1830 = xor i32 %1827, %1796
  %1831 = xor i32 %1827, %1829
  %1832 = add nuw nsw i32 %1830, %1831
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %105, align 1, !tbaa !2452
  %1835 = sext i32 %1809 to i64
  store i64 %1835, i64* %RCX, align 8, !tbaa !2428
  %1836 = load i64, i64* %RAX, align 8
  %1837 = shl nsw i64 %1835, 2
  %1838 = add i64 %1836, %1837
  %1839 = add i64 %7361, 394
  store i64 %1839, i64* %PC, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  store i32 %1841, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %1842 = add i64 %1804, -40
  %1843 = add i64 %7361, 398
  store i64 %1843, i64* %PC, align 8
  %1844 = inttoptr i64 %1842 to i64*
  %1845 = load i64, i64* %1844, align 8
  store i64 %1845, i64* %RAX, align 8, !tbaa !2428
  %1846 = add i64 %7361, 401
  store i64 %1846, i64* %PC, align 8
  %1847 = inttoptr i64 %1845 to i64*
  %1848 = load i64, i64* %1847, align 8
  store i64 %1848, i64* %RAX, align 8, !tbaa !2428
  %1849 = add i64 %7361, 405
  store i64 %1849, i64* %PC, align 8
  %1850 = load i64, i64* %1844, align 8
  store i64 %1850, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1851 = add i64 %7361, 413
  store i64 %1851, i64* %PC, align 8
  %1852 = load i64, i64* %1844, align 8
  store i64 %1852, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1853 = add i64 %7361, 421
  store i64 %1853, i64* %PC, align 8
  %1854 = load i64, i64* %1844, align 8
  store i64 %1854, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1855 = load i64, i64* %RBP, align 8
  %1856 = add i64 %1855, -68
  %1857 = add i64 %7361, 428
  store i64 %1857, i64* %PC, align 8
  %1858 = inttoptr i64 %1856 to i32*
  %1859 = load i32, i32* %1858, align 4
  %1860 = zext i32 %1859 to i64
  store i64 %1860, i64* %RSI, align 8, !tbaa !2428
  %1861 = add i64 %1855, -40
  %1862 = add i64 %7361, 432
  store i64 %1862, i64* %PC, align 8
  %1863 = inttoptr i64 %1861 to i64*
  %1864 = load i64, i64* %1863, align 8
  store i64 %1864, i64* %RCX, align 8, !tbaa !2428
  %1865 = add i64 %1864, 16
  %1866 = add i64 %7361, 436
  store i64 %1866, i64* %PC, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = sext i32 %1859 to i64
  %1870 = sext i32 %1868 to i64
  %1871 = mul nsw i64 %1870, %1869
  %1872 = trunc i64 %1871 to i32
  %1873 = and i64 %1871, 4294967295
  store i64 %1873, i64* %RSI, align 8, !tbaa !2428
  %1874 = shl i64 %1871, 32
  %1875 = ashr exact i64 %1874, 32
  %1876 = icmp ne i64 %1875, %1871
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %82, align 1, !tbaa !2434
  %1878 = and i32 %1872, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878) #9
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %1883 = lshr i32 %1872, 31
  %1884 = trunc i32 %1883 to i8
  store i8 %1884, i8* %99, align 1, !tbaa !2451
  store i8 %1877, i8* %105, align 1, !tbaa !2452
  %1885 = add i64 %7361, 440
  store i64 %1885, i64* %PC, align 8
  %1886 = load i64, i64* %1863, align 8
  store i64 %1886, i64* %RCX, align 8, !tbaa !2428
  %1887 = add i64 %1886, 20
  %1888 = add i64 %7361, 444
  store i64 %1888, i64* %PC, align 8
  %1889 = inttoptr i64 %1887 to i32*
  %1890 = load i32, i32* %1889, align 4
  %1891 = shl i64 %1871, 32
  %1892 = ashr exact i64 %1891, 32
  %1893 = sext i32 %1890 to i64
  %1894 = mul nsw i64 %1893, %1892
  %1895 = and i64 %1894, 4294967295
  store i64 %1895, i64* %RSI, align 8, !tbaa !2428
  %1896 = trunc i64 %1894 to i32
  %1897 = and i64 %1894, 4294967295
  store i64 %1897, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %1898 = and i32 %1896, 255
  %1899 = tail call i32 @llvm.ctpop.i32(i32 %1898) #9
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  store i8 %1902, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %1903 = icmp eq i32 %1896, 0
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %96, align 1, !tbaa !2450
  %1905 = lshr i32 %1896, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %1907 = add i64 %1855, -72
  %1908 = add i64 %7361, 449
  store i64 %1908, i64* %PC, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RSI, align 8, !tbaa !2428
  %1912 = load i64, i64* %RBP, align 8
  %1913 = add i64 %1912, -40
  %1914 = add i64 %7361, 453
  store i64 %1914, i64* %PC, align 8
  %1915 = inttoptr i64 %1913 to i64*
  %1916 = load i64, i64* %1915, align 8
  store i64 %1916, i64* %RCX, align 8, !tbaa !2428
  %1917 = add i64 %1916, 20
  %1918 = add i64 %7361, 457
  store i64 %1918, i64* %PC, align 8
  %1919 = inttoptr i64 %1917 to i32*
  %1920 = load i32, i32* %1919, align 4
  %1921 = sext i32 %1910 to i64
  %1922 = sext i32 %1920 to i64
  %1923 = mul nsw i64 %1922, %1921
  %1924 = and i64 %1923, 4294967295
  store i64 %1924, i64* %RSI, align 8, !tbaa !2428
  %1925 = trunc i64 %1923 to i32
  %1926 = add i32 %1925, %1896
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RDX, align 8, !tbaa !2428
  %1928 = icmp ult i32 %1926, %1896
  %1929 = icmp ult i32 %1926, %1925
  %1930 = or i1 %1928, %1929
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %82, align 1, !tbaa !2434
  %1932 = and i32 %1926, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932) #9
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %88, align 1, !tbaa !2448
  %1937 = xor i64 %1923, %1894
  %1938 = trunc i64 %1937 to i32
  %1939 = xor i32 %1938, %1926
  %1940 = lshr i32 %1939, 4
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  store i8 %1942, i8* %93, align 1, !tbaa !2449
  %1943 = icmp eq i32 %1926, 0
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %96, align 1, !tbaa !2450
  %1945 = lshr i32 %1926, 31
  %1946 = trunc i32 %1945 to i8
  store i8 %1946, i8* %99, align 1, !tbaa !2451
  %1947 = lshr i32 %1925, 31
  %1948 = xor i32 %1945, %1905
  %1949 = xor i32 %1945, %1947
  %1950 = add nuw nsw i32 %1948, %1949
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %105, align 1, !tbaa !2452
  %1953 = add i64 %1912, -76
  %1954 = add i64 %7361, 462
  store i64 %1954, i64* %PC, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = add i32 %1956, 1
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RSI, align 8, !tbaa !2428
  %1959 = lshr i32 %1957, 31
  %1960 = add i32 %1957, %1926
  %1961 = zext i32 %1960 to i64
  store i64 %1961, i64* %RDX, align 8, !tbaa !2428
  %1962 = icmp ult i32 %1960, %1926
  %1963 = icmp ult i32 %1960, %1957
  %1964 = or i1 %1962, %1963
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %82, align 1, !tbaa !2434
  %1966 = and i32 %1960, 255
  %1967 = tail call i32 @llvm.ctpop.i32(i32 %1966) #9
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %88, align 1, !tbaa !2448
  %1971 = xor i32 %1957, %1926
  %1972 = xor i32 %1971, %1960
  %1973 = lshr i32 %1972, 4
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  store i8 %1975, i8* %93, align 1, !tbaa !2449
  %1976 = icmp eq i32 %1960, 0
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %96, align 1, !tbaa !2450
  %1978 = lshr i32 %1960, 31
  %1979 = trunc i32 %1978 to i8
  store i8 %1979, i8* %99, align 1, !tbaa !2451
  %1980 = xor i32 %1978, %1945
  %1981 = xor i32 %1978, %1959
  %1982 = add nuw nsw i32 %1980, %1981
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %105, align 1, !tbaa !2452
  %1985 = sext i32 %1960 to i64
  store i64 %1985, i64* %RCX, align 8, !tbaa !2428
  %1986 = load i64, i64* %RAX, align 8
  %1987 = shl nsw i64 %1985, 2
  %1988 = add i64 %1986, %1987
  %1989 = add i64 %7361, 475
  store i64 %1989, i64* %PC, align 8
  %1990 = load <2 x float>, <2 x float>* %207, align 1
  %1991 = load <2 x i32>, <2 x i32>* %208, align 1
  %1992 = inttoptr i64 %1988 to float*
  %1993 = load float, float* %1992, align 4
  %1994 = extractelement <2 x float> %1990, i32 0
  %1995 = fmul float %1994, %1993
  store float %1995, float* %199, align 1, !tbaa !2453
  %1996 = bitcast <2 x float> %1990 to <2 x i32>
  %1997 = extractelement <2 x i32> %1996, i32 1
  store i32 %1997, i32* %209, align 1, !tbaa !2453
  %1998 = extractelement <2 x i32> %1991, i32 0
  store i32 %1998, i32* %210, align 1, !tbaa !2453
  %1999 = extractelement <2 x i32> %1991, i32 1
  store i32 %1999, i32* %211, align 1, !tbaa !2453
  %2000 = load <2 x float>, <2 x float>* %192, align 1
  %2001 = load <2 x i32>, <2 x i32>* %197, align 1
  %2002 = load <2 x float>, <2 x float>* %207, align 1
  %2003 = extractelement <2 x float> %2000, i32 0
  %2004 = extractelement <2 x float> %2002, i32 0
  %2005 = fadd float %2003, %2004
  store float %2005, float* %193, align 1, !tbaa !2453
  %2006 = bitcast <2 x float> %2000 to <2 x i32>
  %2007 = extractelement <2 x i32> %2006, i32 1
  store i32 %2007, i32* %188, align 1, !tbaa !2453
  %2008 = extractelement <2 x i32> %2001, i32 0
  store i32 %2008, i32* %189, align 1, !tbaa !2453
  %2009 = extractelement <2 x i32> %2001, i32 1
  store i32 %2009, i32* %191, align 1, !tbaa !2453
  %2010 = load i64, i64* %RBP, align 8
  %2011 = add i64 %2010, -24
  %2012 = add i64 %7361, 483
  store i64 %2012, i64* %PC, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RAX, align 8, !tbaa !2428
  %2015 = add i64 %7361, 486
  store i64 %2015, i64* %PC, align 8
  %2016 = inttoptr i64 %2014 to i64*
  %2017 = load i64, i64* %2016, align 8
  store i64 %2017, i64* %RAX, align 8, !tbaa !2428
  %2018 = add i64 %7361, 490
  store i64 %2018, i64* %PC, align 8
  %2019 = load i64, i64* %2013, align 8
  store i64 %2019, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2020 = add i64 %7361, 498
  store i64 %2020, i64* %PC, align 8
  %2021 = load i64, i64* %2013, align 8
  store i64 %2021, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2022 = add i64 %7361, 506
  store i64 %2022, i64* %PC, align 8
  %2023 = load i64, i64* %2013, align 8
  store i64 %2023, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2024 = add i64 %2010, -68
  %2025 = add i64 %7361, 513
  store i64 %2025, i64* %PC, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = zext i32 %2027 to i64
  store i64 %2028, i64* %RSI, align 8, !tbaa !2428
  %2029 = add i64 %7361, 517
  store i64 %2029, i64* %PC, align 8
  %2030 = load i64, i64* %2013, align 8
  store i64 %2030, i64* %RCX, align 8, !tbaa !2428
  %2031 = add i64 %2030, 16
  %2032 = add i64 %7361, 521
  store i64 %2032, i64* %PC, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = sext i32 %2027 to i64
  %2036 = sext i32 %2034 to i64
  %2037 = mul nsw i64 %2036, %2035
  %2038 = trunc i64 %2037 to i32
  %2039 = and i64 %2037, 4294967295
  store i64 %2039, i64* %RSI, align 8, !tbaa !2428
  %2040 = shl i64 %2037, 32
  %2041 = ashr exact i64 %2040, 32
  %2042 = icmp ne i64 %2041, %2037
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %82, align 1, !tbaa !2434
  %2044 = and i32 %2038, 255
  %2045 = tail call i32 @llvm.ctpop.i32(i32 %2044) #9
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = xor i8 %2047, 1
  store i8 %2048, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %2049 = lshr i32 %2038, 31
  %2050 = trunc i32 %2049 to i8
  store i8 %2050, i8* %99, align 1, !tbaa !2451
  store i8 %2043, i8* %105, align 1, !tbaa !2452
  %2051 = add i64 %7361, 525
  store i64 %2051, i64* %PC, align 8
  %2052 = load i64, i64* %2013, align 8
  store i64 %2052, i64* %RCX, align 8, !tbaa !2428
  %2053 = add i64 %2052, 20
  %2054 = add i64 %7361, 529
  store i64 %2054, i64* %PC, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = shl i64 %2037, 32
  %2058 = ashr exact i64 %2057, 32
  %2059 = sext i32 %2056 to i64
  %2060 = mul nsw i64 %2059, %2058
  %2061 = and i64 %2060, 4294967295
  store i64 %2061, i64* %RSI, align 8, !tbaa !2428
  %2062 = trunc i64 %2060 to i32
  %2063 = and i64 %2060, 4294967295
  store i64 %2063, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %2064 = and i32 %2062, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064) #9
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %2069 = icmp eq i32 %2062, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %96, align 1, !tbaa !2450
  %2071 = lshr i32 %2062, 31
  %2072 = trunc i32 %2071 to i8
  store i8 %2072, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2073 = load i64, i64* %RBP, align 8
  %2074 = add i64 %2073, -72
  %2075 = add i64 %7361, 534
  store i64 %2075, i64* %PC, align 8
  %2076 = inttoptr i64 %2074 to i32*
  %2077 = load i32, i32* %2076, align 4
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RSI, align 8, !tbaa !2428
  %2079 = add i64 %2073, -24
  %2080 = add i64 %7361, 538
  store i64 %2080, i64* %PC, align 8
  %2081 = inttoptr i64 %2079 to i64*
  %2082 = load i64, i64* %2081, align 8
  store i64 %2082, i64* %RCX, align 8, !tbaa !2428
  %2083 = add i64 %2082, 20
  %2084 = add i64 %7361, 542
  store i64 %2084, i64* %PC, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = sext i32 %2077 to i64
  %2088 = sext i32 %2086 to i64
  %2089 = mul nsw i64 %2088, %2087
  %2090 = and i64 %2089, 4294967295
  store i64 %2090, i64* %RSI, align 8, !tbaa !2428
  %2091 = trunc i64 %2089 to i32
  %2092 = add i32 %2091, %2062
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RDX, align 8, !tbaa !2428
  %2094 = icmp ult i32 %2092, %2062
  %2095 = icmp ult i32 %2092, %2091
  %2096 = or i1 %2094, %2095
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %82, align 1, !tbaa !2434
  %2098 = and i32 %2092, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098) #9
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %88, align 1, !tbaa !2448
  %2103 = xor i64 %2089, %2060
  %2104 = trunc i64 %2103 to i32
  %2105 = xor i32 %2104, %2092
  %2106 = lshr i32 %2105, 4
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %93, align 1, !tbaa !2449
  %2109 = icmp eq i32 %2092, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %96, align 1, !tbaa !2450
  %2111 = lshr i32 %2092, 31
  %2112 = trunc i32 %2111 to i8
  store i8 %2112, i8* %99, align 1, !tbaa !2451
  %2113 = lshr i32 %2091, 31
  %2114 = xor i32 %2111, %2071
  %2115 = xor i32 %2111, %2113
  %2116 = add nuw nsw i32 %2114, %2115
  %2117 = icmp eq i32 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %105, align 1, !tbaa !2452
  %2119 = add i64 %2073, -76
  %2120 = add i64 %7361, 547
  store i64 %2120, i64* %PC, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = add i32 %2122, %2092
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RDX, align 8, !tbaa !2428
  %2125 = icmp ult i32 %2123, %2092
  %2126 = icmp ult i32 %2123, %2122
  %2127 = or i1 %2125, %2126
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %82, align 1, !tbaa !2434
  %2129 = and i32 %2123, 255
  %2130 = tail call i32 @llvm.ctpop.i32(i32 %2129) #9
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = xor i8 %2132, 1
  store i8 %2133, i8* %88, align 1, !tbaa !2448
  %2134 = xor i32 %2122, %2092
  %2135 = xor i32 %2134, %2123
  %2136 = lshr i32 %2135, 4
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  store i8 %2138, i8* %93, align 1, !tbaa !2449
  %2139 = icmp eq i32 %2123, 0
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %96, align 1, !tbaa !2450
  %2141 = lshr i32 %2123, 31
  %2142 = trunc i32 %2141 to i8
  store i8 %2142, i8* %99, align 1, !tbaa !2451
  %2143 = lshr i32 %2122, 31
  %2144 = xor i32 %2141, %2111
  %2145 = xor i32 %2141, %2143
  %2146 = add nuw nsw i32 %2144, %2145
  %2147 = icmp eq i32 %2146, 2
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %105, align 1, !tbaa !2452
  %2149 = sext i32 %2123 to i64
  store i64 %2149, i64* %RCX, align 8, !tbaa !2428
  %2150 = load i64, i64* %RAX, align 8
  %2151 = shl nsw i64 %2149, 2
  %2152 = add i64 %2150, %2151
  %2153 = add i64 %7361, 555
  store i64 %2153, i64* %PC, align 8
  %2154 = inttoptr i64 %2152 to i32*
  %2155 = load i32, i32* %2154, align 4
  store i32 %2155, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %2156 = load i64, i64* %RBP, align 8
  %2157 = add i64 %2156, -40
  %2158 = add i64 %7361, 559
  store i64 %2158, i64* %PC, align 8
  %2159 = inttoptr i64 %2157 to i64*
  %2160 = load i64, i64* %2159, align 8
  store i64 %2160, i64* %RAX, align 8, !tbaa !2428
  %2161 = add i64 %7361, 562
  store i64 %2161, i64* %PC, align 8
  %2162 = inttoptr i64 %2160 to i64*
  %2163 = load i64, i64* %2162, align 8
  store i64 %2163, i64* %RAX, align 8, !tbaa !2428
  %2164 = add i64 %7361, 566
  store i64 %2164, i64* %PC, align 8
  %2165 = load i64, i64* %2159, align 8
  store i64 %2165, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2166 = add i64 %7361, 574
  store i64 %2166, i64* %PC, align 8
  %2167 = load i64, i64* %2159, align 8
  store i64 %2167, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2168 = add i64 %7361, 582
  store i64 %2168, i64* %PC, align 8
  %2169 = load i64, i64* %2159, align 8
  store i64 %2169, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2170 = add i64 %2156, -68
  %2171 = add i64 %7361, 589
  store i64 %2171, i64* %PC, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = add i32 %2173, 1
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %RSI, align 8, !tbaa !2428
  %2176 = icmp eq i32 %2173, -1
  %2177 = icmp eq i32 %2174, 0
  %2178 = or i1 %2176, %2177
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %82, align 1, !tbaa !2434
  %2180 = and i32 %2174, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180) #9
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %88, align 1, !tbaa !2448
  %2185 = xor i32 %2174, %2173
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  store i8 %2188, i8* %93, align 1, !tbaa !2449
  %2189 = zext i1 %2177 to i8
  store i8 %2189, i8* %96, align 1, !tbaa !2450
  %2190 = lshr i32 %2174, 31
  %2191 = trunc i32 %2190 to i8
  store i8 %2191, i8* %99, align 1, !tbaa !2451
  %2192 = lshr i32 %2173, 31
  %2193 = xor i32 %2190, %2192
  %2194 = add nuw nsw i32 %2193, %2190
  %2195 = icmp eq i32 %2194, 2
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %105, align 1, !tbaa !2452
  %2197 = add i64 %7361, 596
  store i64 %2197, i64* %PC, align 8
  %2198 = load i64, i64* %2159, align 8
  store i64 %2198, i64* %RCX, align 8, !tbaa !2428
  %2199 = add i64 %2198, 16
  %2200 = add i64 %7361, 600
  store i64 %2200, i64* %PC, align 8
  %2201 = inttoptr i64 %2199 to i32*
  %2202 = load i32, i32* %2201, align 4
  %2203 = sext i32 %2174 to i64
  %2204 = sext i32 %2202 to i64
  %2205 = mul nsw i64 %2204, %2203
  %2206 = trunc i64 %2205 to i32
  %2207 = and i64 %2205, 4294967295
  store i64 %2207, i64* %RSI, align 8, !tbaa !2428
  %2208 = shl i64 %2205, 32
  %2209 = ashr exact i64 %2208, 32
  %2210 = icmp ne i64 %2209, %2205
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %82, align 1, !tbaa !2434
  %2212 = and i32 %2206, 255
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212) #9
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %2217 = lshr i32 %2206, 31
  %2218 = trunc i32 %2217 to i8
  store i8 %2218, i8* %99, align 1, !tbaa !2451
  store i8 %2211, i8* %105, align 1, !tbaa !2452
  %2219 = load i64, i64* %RBP, align 8
  %2220 = add i64 %2219, -40
  %2221 = add i64 %7361, 604
  store i64 %2221, i64* %PC, align 8
  %2222 = inttoptr i64 %2220 to i64*
  %2223 = load i64, i64* %2222, align 8
  store i64 %2223, i64* %RCX, align 8, !tbaa !2428
  %2224 = add i64 %2223, 20
  %2225 = add i64 %7361, 608
  store i64 %2225, i64* %PC, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = shl i64 %2205, 32
  %2229 = ashr exact i64 %2228, 32
  %2230 = sext i32 %2227 to i64
  %2231 = mul nsw i64 %2230, %2229
  %2232 = and i64 %2231, 4294967295
  store i64 %2232, i64* %RSI, align 8, !tbaa !2428
  %2233 = load i64, i64* %RDX, align 8
  %2234 = trunc i64 %2231 to i32
  %2235 = trunc i64 %2233 to i32
  %2236 = add i32 %2234, %2235
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RDX, align 8, !tbaa !2428
  %2238 = icmp ult i32 %2236, %2235
  %2239 = icmp ult i32 %2236, %2234
  %2240 = or i1 %2238, %2239
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %82, align 1, !tbaa !2434
  %2242 = and i32 %2236, 255
  %2243 = tail call i32 @llvm.ctpop.i32(i32 %2242) #9
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  store i8 %2246, i8* %88, align 1, !tbaa !2448
  %2247 = xor i64 %2231, %2233
  %2248 = trunc i64 %2247 to i32
  %2249 = xor i32 %2248, %2236
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %93, align 1, !tbaa !2449
  %2253 = icmp eq i32 %2236, 0
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %96, align 1, !tbaa !2450
  %2255 = lshr i32 %2236, 31
  %2256 = trunc i32 %2255 to i8
  store i8 %2256, i8* %99, align 1, !tbaa !2451
  %2257 = lshr i32 %2235, 31
  %2258 = lshr i32 %2234, 31
  %2259 = xor i32 %2255, %2257
  %2260 = xor i32 %2255, %2258
  %2261 = add nuw nsw i32 %2259, %2260
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %105, align 1, !tbaa !2452
  %2264 = add i64 %2219, -72
  %2265 = add i64 %7361, 613
  store i64 %2265, i64* %PC, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = add i32 %2267, 1
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RSI, align 8, !tbaa !2428
  %2270 = icmp eq i32 %2267, -1
  %2271 = icmp eq i32 %2268, 0
  %2272 = or i1 %2270, %2271
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %82, align 1, !tbaa !2434
  %2274 = and i32 %2268, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274) #9
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %88, align 1, !tbaa !2448
  %2279 = xor i32 %2268, %2267
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %93, align 1, !tbaa !2449
  %2283 = zext i1 %2271 to i8
  store i8 %2283, i8* %96, align 1, !tbaa !2450
  %2284 = lshr i32 %2268, 31
  %2285 = trunc i32 %2284 to i8
  store i8 %2285, i8* %99, align 1, !tbaa !2451
  %2286 = lshr i32 %2267, 31
  %2287 = xor i32 %2284, %2286
  %2288 = add nuw nsw i32 %2287, %2284
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %105, align 1, !tbaa !2452
  %2291 = load i64, i64* %RBP, align 8
  %2292 = add i64 %2291, -40
  %2293 = add i64 %7361, 620
  store i64 %2293, i64* %PC, align 8
  %2294 = inttoptr i64 %2292 to i64*
  %2295 = load i64, i64* %2294, align 8
  store i64 %2295, i64* %RCX, align 8, !tbaa !2428
  %2296 = add i64 %2295, 20
  %2297 = add i64 %7361, 624
  store i64 %2297, i64* %PC, align 8
  %2298 = inttoptr i64 %2296 to i32*
  %2299 = load i32, i32* %2298, align 4
  %2300 = sext i32 %2268 to i64
  %2301 = sext i32 %2299 to i64
  %2302 = mul nsw i64 %2301, %2300
  %2303 = and i64 %2302, 4294967295
  store i64 %2303, i64* %RSI, align 8, !tbaa !2428
  %2304 = load i64, i64* %RDX, align 8
  %2305 = trunc i64 %2302 to i32
  %2306 = trunc i64 %2304 to i32
  %2307 = add i32 %2305, %2306
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RDX, align 8, !tbaa !2428
  %2309 = icmp ult i32 %2307, %2306
  %2310 = icmp ult i32 %2307, %2305
  %2311 = or i1 %2309, %2310
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %82, align 1, !tbaa !2434
  %2313 = and i32 %2307, 255
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313) #9
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %88, align 1, !tbaa !2448
  %2318 = xor i64 %2302, %2304
  %2319 = trunc i64 %2318 to i32
  %2320 = xor i32 %2319, %2307
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %93, align 1, !tbaa !2449
  %2324 = icmp eq i32 %2307, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %96, align 1, !tbaa !2450
  %2326 = lshr i32 %2307, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %99, align 1, !tbaa !2451
  %2328 = lshr i32 %2306, 31
  %2329 = lshr i32 %2305, 31
  %2330 = xor i32 %2326, %2328
  %2331 = xor i32 %2326, %2329
  %2332 = add nuw nsw i32 %2330, %2331
  %2333 = icmp eq i32 %2332, 2
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %105, align 1, !tbaa !2452
  %2335 = add i64 %2291, -76
  %2336 = add i64 %7361, 629
  store i64 %2336, i64* %PC, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = add i32 %2338, %2307
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RDX, align 8, !tbaa !2428
  %2341 = icmp ult i32 %2339, %2307
  %2342 = icmp ult i32 %2339, %2338
  %2343 = or i1 %2341, %2342
  %2344 = zext i1 %2343 to i8
  store i8 %2344, i8* %82, align 1, !tbaa !2434
  %2345 = and i32 %2339, 255
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345) #9
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %88, align 1, !tbaa !2448
  %2350 = xor i32 %2338, %2307
  %2351 = xor i32 %2350, %2339
  %2352 = lshr i32 %2351, 4
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %93, align 1, !tbaa !2449
  %2355 = icmp eq i32 %2339, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %96, align 1, !tbaa !2450
  %2357 = lshr i32 %2339, 31
  %2358 = trunc i32 %2357 to i8
  store i8 %2358, i8* %99, align 1, !tbaa !2451
  %2359 = lshr i32 %2338, 31
  %2360 = xor i32 %2357, %2326
  %2361 = xor i32 %2357, %2359
  %2362 = add nuw nsw i32 %2360, %2361
  %2363 = icmp eq i32 %2362, 2
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %105, align 1, !tbaa !2452
  %2365 = sext i32 %2339 to i64
  store i64 %2365, i64* %RCX, align 8, !tbaa !2428
  %2366 = load i64, i64* %RAX, align 8
  %2367 = shl nsw i64 %2365, 2
  %2368 = add i64 %2366, %2367
  %2369 = add i64 %7361, 637
  store i64 %2369, i64* %PC, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  store i32 %2371, i32* %214, align 1, !tbaa !2453
  store float 0.000000e+00, float* %216, align 1, !tbaa !2453
  store float 0.000000e+00, float* %218, align 1, !tbaa !2453
  store float 0.000000e+00, float* %220, align 1, !tbaa !2453
  %2372 = load i64, i64* %RBP, align 8
  %2373 = add i64 %2372, -40
  %2374 = add i64 %7361, 641
  store i64 %2374, i64* %PC, align 8
  %2375 = inttoptr i64 %2373 to i64*
  %2376 = load i64, i64* %2375, align 8
  store i64 %2376, i64* %RAX, align 8, !tbaa !2428
  %2377 = add i64 %7361, 644
  store i64 %2377, i64* %PC, align 8
  %2378 = inttoptr i64 %2376 to i64*
  %2379 = load i64, i64* %2378, align 8
  store i64 %2379, i64* %RAX, align 8, !tbaa !2428
  %2380 = add i64 %7361, 648
  store i64 %2380, i64* %PC, align 8
  %2381 = load i64, i64* %2375, align 8
  store i64 %2381, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2382 = add i64 %7361, 656
  store i64 %2382, i64* %PC, align 8
  %2383 = load i64, i64* %2375, align 8
  store i64 %2383, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2384 = add i64 %7361, 664
  store i64 %2384, i64* %PC, align 8
  %2385 = load i64, i64* %2375, align 8
  store i64 %2385, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2386 = add i64 %2372, -68
  %2387 = add i64 %7361, 671
  store i64 %2387, i64* %PC, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = add i32 %2389, 1
  %2391 = zext i32 %2390 to i64
  store i64 %2391, i64* %RSI, align 8, !tbaa !2428
  %2392 = icmp eq i32 %2389, -1
  %2393 = icmp eq i32 %2390, 0
  %2394 = or i1 %2392, %2393
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %82, align 1, !tbaa !2434
  %2396 = and i32 %2390, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396) #9
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %88, align 1, !tbaa !2448
  %2401 = xor i32 %2390, %2389
  %2402 = lshr i32 %2401, 4
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %93, align 1, !tbaa !2449
  %2405 = zext i1 %2393 to i8
  store i8 %2405, i8* %96, align 1, !tbaa !2450
  %2406 = lshr i32 %2390, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %99, align 1, !tbaa !2451
  %2408 = lshr i32 %2389, 31
  %2409 = xor i32 %2406, %2408
  %2410 = add nuw nsw i32 %2409, %2406
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %105, align 1, !tbaa !2452
  %2413 = add i64 %7361, 678
  store i64 %2413, i64* %PC, align 8
  %2414 = load i64, i64* %2375, align 8
  store i64 %2414, i64* %RCX, align 8, !tbaa !2428
  %2415 = add i64 %2414, 16
  %2416 = add i64 %7361, 682
  store i64 %2416, i64* %PC, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = sext i32 %2390 to i64
  %2420 = sext i32 %2418 to i64
  %2421 = mul nsw i64 %2420, %2419
  %2422 = trunc i64 %2421 to i32
  %2423 = and i64 %2421, 4294967295
  store i64 %2423, i64* %RSI, align 8, !tbaa !2428
  %2424 = shl i64 %2421, 32
  %2425 = ashr exact i64 %2424, 32
  %2426 = icmp ne i64 %2425, %2421
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %82, align 1, !tbaa !2434
  %2428 = and i32 %2422, 255
  %2429 = tail call i32 @llvm.ctpop.i32(i32 %2428) #9
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  store i8 %2432, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %2433 = lshr i32 %2422, 31
  %2434 = trunc i32 %2433 to i8
  store i8 %2434, i8* %99, align 1, !tbaa !2451
  store i8 %2427, i8* %105, align 1, !tbaa !2452
  %2435 = load i64, i64* %RBP, align 8
  %2436 = add i64 %2435, -40
  %2437 = add i64 %7361, 686
  store i64 %2437, i64* %PC, align 8
  %2438 = inttoptr i64 %2436 to i64*
  %2439 = load i64, i64* %2438, align 8
  store i64 %2439, i64* %RCX, align 8, !tbaa !2428
  %2440 = add i64 %2439, 20
  %2441 = add i64 %7361, 690
  store i64 %2441, i64* %PC, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = shl i64 %2421, 32
  %2445 = ashr exact i64 %2444, 32
  %2446 = sext i32 %2443 to i64
  %2447 = mul nsw i64 %2446, %2445
  %2448 = and i64 %2447, 4294967295
  store i64 %2448, i64* %RSI, align 8, !tbaa !2428
  %2449 = load i64, i64* %RDX, align 8
  %2450 = trunc i64 %2447 to i32
  %2451 = trunc i64 %2449 to i32
  %2452 = add i32 %2450, %2451
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RDX, align 8, !tbaa !2428
  %2454 = icmp ult i32 %2452, %2451
  %2455 = icmp ult i32 %2452, %2450
  %2456 = or i1 %2454, %2455
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %82, align 1, !tbaa !2434
  %2458 = and i32 %2452, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458) #9
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %88, align 1, !tbaa !2448
  %2463 = xor i64 %2447, %2449
  %2464 = trunc i64 %2463 to i32
  %2465 = xor i32 %2464, %2452
  %2466 = lshr i32 %2465, 4
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %93, align 1, !tbaa !2449
  %2469 = icmp eq i32 %2452, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %96, align 1, !tbaa !2450
  %2471 = lshr i32 %2452, 31
  %2472 = trunc i32 %2471 to i8
  store i8 %2472, i8* %99, align 1, !tbaa !2451
  %2473 = lshr i32 %2451, 31
  %2474 = lshr i32 %2450, 31
  %2475 = xor i32 %2471, %2473
  %2476 = xor i32 %2471, %2474
  %2477 = add nuw nsw i32 %2475, %2476
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %105, align 1, !tbaa !2452
  %2480 = add i64 %2435, -72
  %2481 = add i64 %7361, 695
  store i64 %2481, i64* %PC, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = add i32 %2483, -1
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RSI, align 8, !tbaa !2428
  %2486 = icmp eq i32 %2483, 0
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %82, align 1, !tbaa !2434
  %2488 = and i32 %2484, 255
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488) #9
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %88, align 1, !tbaa !2448
  %2493 = xor i32 %2484, %2483
  %2494 = lshr i32 %2493, 4
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  store i8 %2496, i8* %93, align 1, !tbaa !2449
  %2497 = icmp eq i32 %2484, 0
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %96, align 1, !tbaa !2450
  %2499 = lshr i32 %2484, 31
  %2500 = trunc i32 %2499 to i8
  store i8 %2500, i8* %99, align 1, !tbaa !2451
  %2501 = lshr i32 %2483, 31
  %2502 = xor i32 %2499, %2501
  %2503 = add nuw nsw i32 %2502, %2501
  %2504 = icmp eq i32 %2503, 2
  %2505 = zext i1 %2504 to i8
  store i8 %2505, i8* %105, align 1, !tbaa !2452
  %2506 = load i64, i64* %RBP, align 8
  %2507 = add i64 %2506, -40
  %2508 = add i64 %7361, 702
  store i64 %2508, i64* %PC, align 8
  %2509 = inttoptr i64 %2507 to i64*
  %2510 = load i64, i64* %2509, align 8
  store i64 %2510, i64* %RCX, align 8, !tbaa !2428
  %2511 = add i64 %2510, 20
  %2512 = add i64 %7361, 706
  store i64 %2512, i64* %PC, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  %2515 = sext i32 %2484 to i64
  %2516 = sext i32 %2514 to i64
  %2517 = mul nsw i64 %2516, %2515
  %2518 = and i64 %2517, 4294967295
  store i64 %2518, i64* %RSI, align 8, !tbaa !2428
  %2519 = load i64, i64* %RDX, align 8
  %2520 = trunc i64 %2517 to i32
  %2521 = trunc i64 %2519 to i32
  %2522 = add i32 %2520, %2521
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RDX, align 8, !tbaa !2428
  %2524 = icmp ult i32 %2522, %2521
  %2525 = icmp ult i32 %2522, %2520
  %2526 = or i1 %2524, %2525
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %82, align 1, !tbaa !2434
  %2528 = and i32 %2522, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528) #9
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %88, align 1, !tbaa !2448
  %2533 = xor i64 %2517, %2519
  %2534 = trunc i64 %2533 to i32
  %2535 = xor i32 %2534, %2522
  %2536 = lshr i32 %2535, 4
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  store i8 %2538, i8* %93, align 1, !tbaa !2449
  %2539 = icmp eq i32 %2522, 0
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %96, align 1, !tbaa !2450
  %2541 = lshr i32 %2522, 31
  %2542 = trunc i32 %2541 to i8
  store i8 %2542, i8* %99, align 1, !tbaa !2451
  %2543 = lshr i32 %2521, 31
  %2544 = lshr i32 %2520, 31
  %2545 = xor i32 %2541, %2543
  %2546 = xor i32 %2541, %2544
  %2547 = add nuw nsw i32 %2545, %2546
  %2548 = icmp eq i32 %2547, 2
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %105, align 1, !tbaa !2452
  %2550 = add i64 %2506, -76
  %2551 = add i64 %7361, 711
  store i64 %2551, i64* %PC, align 8
  %2552 = inttoptr i64 %2550 to i32*
  %2553 = load i32, i32* %2552, align 4
  %2554 = add i32 %2553, %2522
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RDX, align 8, !tbaa !2428
  %2556 = icmp ult i32 %2554, %2522
  %2557 = icmp ult i32 %2554, %2553
  %2558 = or i1 %2556, %2557
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %82, align 1, !tbaa !2434
  %2560 = and i32 %2554, 255
  %2561 = tail call i32 @llvm.ctpop.i32(i32 %2560) #9
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  store i8 %2564, i8* %88, align 1, !tbaa !2448
  %2565 = xor i32 %2553, %2522
  %2566 = xor i32 %2565, %2554
  %2567 = lshr i32 %2566, 4
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  store i8 %2569, i8* %93, align 1, !tbaa !2449
  %2570 = icmp eq i32 %2554, 0
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %96, align 1, !tbaa !2450
  %2572 = lshr i32 %2554, 31
  %2573 = trunc i32 %2572 to i8
  store i8 %2573, i8* %99, align 1, !tbaa !2451
  %2574 = lshr i32 %2553, 31
  %2575 = xor i32 %2572, %2541
  %2576 = xor i32 %2572, %2574
  %2577 = add nuw nsw i32 %2575, %2576
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %105, align 1, !tbaa !2452
  %2580 = sext i32 %2554 to i64
  store i64 %2580, i64* %RCX, align 8, !tbaa !2428
  %2581 = load i64, i64* %RAX, align 8
  %2582 = shl nsw i64 %2580, 2
  %2583 = add i64 %2581, %2582
  %2584 = add i64 %7361, 719
  store i64 %2584, i64* %PC, align 8
  %2585 = load <2 x float>, <2 x float>* %221, align 1
  %2586 = load <2 x i32>, <2 x i32>* %222, align 1
  %2587 = inttoptr i64 %2583 to float*
  %2588 = load float, float* %2587, align 4
  %2589 = extractelement <2 x float> %2585, i32 0
  %2590 = fsub float %2589, %2588
  store float %2590, float* %213, align 1, !tbaa !2453
  %2591 = bitcast <2 x float> %2585 to <2 x i32>
  %2592 = extractelement <2 x i32> %2591, i32 1
  store i32 %2592, i32* %223, align 1, !tbaa !2453
  %2593 = extractelement <2 x i32> %2586, i32 0
  store i32 %2593, i32* %224, align 1, !tbaa !2453
  %2594 = extractelement <2 x i32> %2586, i32 1
  store i32 %2594, i32* %225, align 1, !tbaa !2453
  %2595 = load i64, i64* %RBP, align 8
  %2596 = add i64 %2595, -40
  %2597 = add i64 %7361, 723
  store i64 %2597, i64* %PC, align 8
  %2598 = inttoptr i64 %2596 to i64*
  %2599 = load i64, i64* %2598, align 8
  store i64 %2599, i64* %RAX, align 8, !tbaa !2428
  %2600 = add i64 %7361, 726
  store i64 %2600, i64* %PC, align 8
  %2601 = inttoptr i64 %2599 to i64*
  %2602 = load i64, i64* %2601, align 8
  store i64 %2602, i64* %RAX, align 8, !tbaa !2428
  %2603 = add i64 %7361, 730
  store i64 %2603, i64* %PC, align 8
  %2604 = load i64, i64* %2598, align 8
  store i64 %2604, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2605 = add i64 %7361, 738
  store i64 %2605, i64* %PC, align 8
  %2606 = load i64, i64* %2598, align 8
  store i64 %2606, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2607 = add i64 %7361, 746
  store i64 %2607, i64* %PC, align 8
  %2608 = load i64, i64* %2598, align 8
  store i64 %2608, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2609 = add i64 %2595, -68
  %2610 = add i64 %7361, 753
  store i64 %2610, i64* %PC, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = add i32 %2612, -1
  %2614 = zext i32 %2613 to i64
  store i64 %2614, i64* %RSI, align 8, !tbaa !2428
  %2615 = icmp eq i32 %2612, 0
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %82, align 1, !tbaa !2434
  %2617 = and i32 %2613, 255
  %2618 = tail call i32 @llvm.ctpop.i32(i32 %2617) #9
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  store i8 %2621, i8* %88, align 1, !tbaa !2448
  %2622 = xor i32 %2613, %2612
  %2623 = lshr i32 %2622, 4
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  store i8 %2625, i8* %93, align 1, !tbaa !2449
  %2626 = icmp eq i32 %2613, 0
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %96, align 1, !tbaa !2450
  %2628 = lshr i32 %2613, 31
  %2629 = trunc i32 %2628 to i8
  store i8 %2629, i8* %99, align 1, !tbaa !2451
  %2630 = lshr i32 %2612, 31
  %2631 = xor i32 %2628, %2630
  %2632 = add nuw nsw i32 %2631, %2630
  %2633 = icmp eq i32 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %105, align 1, !tbaa !2452
  %2635 = add i64 %7361, 760
  store i64 %2635, i64* %PC, align 8
  %2636 = load i64, i64* %2598, align 8
  store i64 %2636, i64* %RCX, align 8, !tbaa !2428
  %2637 = add i64 %2636, 16
  %2638 = add i64 %7361, 764
  store i64 %2638, i64* %PC, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = sext i32 %2613 to i64
  %2642 = sext i32 %2640 to i64
  %2643 = mul nsw i64 %2642, %2641
  %2644 = trunc i64 %2643 to i32
  %2645 = and i64 %2643, 4294967295
  store i64 %2645, i64* %RSI, align 8, !tbaa !2428
  %2646 = shl i64 %2643, 32
  %2647 = ashr exact i64 %2646, 32
  %2648 = icmp ne i64 %2647, %2643
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %82, align 1, !tbaa !2434
  %2650 = and i32 %2644, 255
  %2651 = tail call i32 @llvm.ctpop.i32(i32 %2650) #9
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  %2654 = xor i8 %2653, 1
  store i8 %2654, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %2655 = lshr i32 %2644, 31
  %2656 = trunc i32 %2655 to i8
  store i8 %2656, i8* %99, align 1, !tbaa !2451
  store i8 %2649, i8* %105, align 1, !tbaa !2452
  %2657 = load i64, i64* %RBP, align 8
  %2658 = add i64 %2657, -40
  %2659 = add i64 %7361, 768
  store i64 %2659, i64* %PC, align 8
  %2660 = inttoptr i64 %2658 to i64*
  %2661 = load i64, i64* %2660, align 8
  store i64 %2661, i64* %RCX, align 8, !tbaa !2428
  %2662 = add i64 %2661, 20
  %2663 = add i64 %7361, 772
  store i64 %2663, i64* %PC, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = shl i64 %2643, 32
  %2667 = ashr exact i64 %2666, 32
  %2668 = sext i32 %2665 to i64
  %2669 = mul nsw i64 %2668, %2667
  %2670 = and i64 %2669, 4294967295
  store i64 %2670, i64* %RSI, align 8, !tbaa !2428
  %2671 = load i64, i64* %RDX, align 8
  %2672 = trunc i64 %2669 to i32
  %2673 = trunc i64 %2671 to i32
  %2674 = add i32 %2672, %2673
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RDX, align 8, !tbaa !2428
  %2676 = icmp ult i32 %2674, %2673
  %2677 = icmp ult i32 %2674, %2672
  %2678 = or i1 %2676, %2677
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %82, align 1, !tbaa !2434
  %2680 = and i32 %2674, 255
  %2681 = tail call i32 @llvm.ctpop.i32(i32 %2680) #9
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  %2684 = xor i8 %2683, 1
  store i8 %2684, i8* %88, align 1, !tbaa !2448
  %2685 = xor i64 %2669, %2671
  %2686 = trunc i64 %2685 to i32
  %2687 = xor i32 %2686, %2674
  %2688 = lshr i32 %2687, 4
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  store i8 %2690, i8* %93, align 1, !tbaa !2449
  %2691 = icmp eq i32 %2674, 0
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %96, align 1, !tbaa !2450
  %2693 = lshr i32 %2674, 31
  %2694 = trunc i32 %2693 to i8
  store i8 %2694, i8* %99, align 1, !tbaa !2451
  %2695 = lshr i32 %2673, 31
  %2696 = lshr i32 %2672, 31
  %2697 = xor i32 %2693, %2695
  %2698 = xor i32 %2693, %2696
  %2699 = add nuw nsw i32 %2697, %2698
  %2700 = icmp eq i32 %2699, 2
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %105, align 1, !tbaa !2452
  %2702 = add i64 %2657, -72
  %2703 = add i64 %7361, 777
  store i64 %2703, i64* %PC, align 8
  %2704 = inttoptr i64 %2702 to i32*
  %2705 = load i32, i32* %2704, align 4
  %2706 = add i32 %2705, 1
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RSI, align 8, !tbaa !2428
  %2708 = icmp eq i32 %2705, -1
  %2709 = icmp eq i32 %2706, 0
  %2710 = or i1 %2708, %2709
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %82, align 1, !tbaa !2434
  %2712 = and i32 %2706, 255
  %2713 = tail call i32 @llvm.ctpop.i32(i32 %2712) #9
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = xor i8 %2715, 1
  store i8 %2716, i8* %88, align 1, !tbaa !2448
  %2717 = xor i32 %2706, %2705
  %2718 = lshr i32 %2717, 4
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  store i8 %2720, i8* %93, align 1, !tbaa !2449
  %2721 = zext i1 %2709 to i8
  store i8 %2721, i8* %96, align 1, !tbaa !2450
  %2722 = lshr i32 %2706, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %99, align 1, !tbaa !2451
  %2724 = lshr i32 %2705, 31
  %2725 = xor i32 %2722, %2724
  %2726 = add nuw nsw i32 %2725, %2722
  %2727 = icmp eq i32 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %105, align 1, !tbaa !2452
  %2729 = load i64, i64* %RBP, align 8
  %2730 = add i64 %2729, -40
  %2731 = add i64 %7361, 784
  store i64 %2731, i64* %PC, align 8
  %2732 = inttoptr i64 %2730 to i64*
  %2733 = load i64, i64* %2732, align 8
  store i64 %2733, i64* %RCX, align 8, !tbaa !2428
  %2734 = add i64 %2733, 20
  %2735 = add i64 %7361, 788
  store i64 %2735, i64* %PC, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = sext i32 %2706 to i64
  %2739 = sext i32 %2737 to i64
  %2740 = mul nsw i64 %2739, %2738
  %2741 = and i64 %2740, 4294967295
  store i64 %2741, i64* %RSI, align 8, !tbaa !2428
  %2742 = load i64, i64* %RDX, align 8
  %2743 = trunc i64 %2740 to i32
  %2744 = trunc i64 %2742 to i32
  %2745 = add i32 %2743, %2744
  %2746 = zext i32 %2745 to i64
  store i64 %2746, i64* %RDX, align 8, !tbaa !2428
  %2747 = icmp ult i32 %2745, %2744
  %2748 = icmp ult i32 %2745, %2743
  %2749 = or i1 %2747, %2748
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %82, align 1, !tbaa !2434
  %2751 = and i32 %2745, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751) #9
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %88, align 1, !tbaa !2448
  %2756 = xor i64 %2740, %2742
  %2757 = trunc i64 %2756 to i32
  %2758 = xor i32 %2757, %2745
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %93, align 1, !tbaa !2449
  %2762 = icmp eq i32 %2745, 0
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %96, align 1, !tbaa !2450
  %2764 = lshr i32 %2745, 31
  %2765 = trunc i32 %2764 to i8
  store i8 %2765, i8* %99, align 1, !tbaa !2451
  %2766 = lshr i32 %2744, 31
  %2767 = lshr i32 %2743, 31
  %2768 = xor i32 %2764, %2766
  %2769 = xor i32 %2764, %2767
  %2770 = add nuw nsw i32 %2768, %2769
  %2771 = icmp eq i32 %2770, 2
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %105, align 1, !tbaa !2452
  %2773 = add i64 %2729, -76
  %2774 = add i64 %7361, 793
  store i64 %2774, i64* %PC, align 8
  %2775 = inttoptr i64 %2773 to i32*
  %2776 = load i32, i32* %2775, align 4
  %2777 = add i32 %2776, %2745
  %2778 = zext i32 %2777 to i64
  store i64 %2778, i64* %RDX, align 8, !tbaa !2428
  %2779 = icmp ult i32 %2777, %2745
  %2780 = icmp ult i32 %2777, %2776
  %2781 = or i1 %2779, %2780
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %82, align 1, !tbaa !2434
  %2783 = and i32 %2777, 255
  %2784 = tail call i32 @llvm.ctpop.i32(i32 %2783) #9
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  store i8 %2787, i8* %88, align 1, !tbaa !2448
  %2788 = xor i32 %2776, %2745
  %2789 = xor i32 %2788, %2777
  %2790 = lshr i32 %2789, 4
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  store i8 %2792, i8* %93, align 1, !tbaa !2449
  %2793 = icmp eq i32 %2777, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %96, align 1, !tbaa !2450
  %2795 = lshr i32 %2777, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %99, align 1, !tbaa !2451
  %2797 = lshr i32 %2776, 31
  %2798 = xor i32 %2795, %2764
  %2799 = xor i32 %2795, %2797
  %2800 = add nuw nsw i32 %2798, %2799
  %2801 = icmp eq i32 %2800, 2
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %105, align 1, !tbaa !2452
  %2803 = sext i32 %2777 to i64
  store i64 %2803, i64* %RCX, align 8, !tbaa !2428
  %2804 = load i64, i64* %RAX, align 8
  %2805 = shl nsw i64 %2803, 2
  %2806 = add i64 %2804, %2805
  %2807 = add i64 %7361, 801
  store i64 %2807, i64* %PC, align 8
  %2808 = load <2 x float>, <2 x float>* %221, align 1
  %2809 = load <2 x i32>, <2 x i32>* %222, align 1
  %2810 = inttoptr i64 %2806 to float*
  %2811 = load float, float* %2810, align 4
  %2812 = extractelement <2 x float> %2808, i32 0
  %2813 = fsub float %2812, %2811
  store float %2813, float* %213, align 1, !tbaa !2453
  %2814 = bitcast <2 x float> %2808 to <2 x i32>
  %2815 = extractelement <2 x i32> %2814, i32 1
  store i32 %2815, i32* %223, align 1, !tbaa !2453
  %2816 = extractelement <2 x i32> %2809, i32 0
  store i32 %2816, i32* %224, align 1, !tbaa !2453
  %2817 = extractelement <2 x i32> %2809, i32 1
  store i32 %2817, i32* %225, align 1, !tbaa !2453
  %2818 = load i64, i64* %RBP, align 8
  %2819 = add i64 %2818, -40
  %2820 = add i64 %7361, 805
  store i64 %2820, i64* %PC, align 8
  %2821 = inttoptr i64 %2819 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RAX, align 8, !tbaa !2428
  %2823 = add i64 %7361, 808
  store i64 %2823, i64* %PC, align 8
  %2824 = inttoptr i64 %2822 to i64*
  %2825 = load i64, i64* %2824, align 8
  store i64 %2825, i64* %RAX, align 8, !tbaa !2428
  %2826 = add i64 %7361, 812
  store i64 %2826, i64* %PC, align 8
  %2827 = load i64, i64* %2821, align 8
  store i64 %2827, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2828 = add i64 %7361, 820
  store i64 %2828, i64* %PC, align 8
  %2829 = load i64, i64* %2821, align 8
  store i64 %2829, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2830 = add i64 %7361, 828
  store i64 %2830, i64* %PC, align 8
  %2831 = load i64, i64* %2821, align 8
  store i64 %2831, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %2832 = add i64 %2818, -68
  %2833 = add i64 %7361, 835
  store i64 %2833, i64* %PC, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = add i32 %2835, -1
  %2837 = zext i32 %2836 to i64
  store i64 %2837, i64* %RSI, align 8, !tbaa !2428
  %2838 = icmp eq i32 %2835, 0
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %82, align 1, !tbaa !2434
  %2840 = and i32 %2836, 255
  %2841 = tail call i32 @llvm.ctpop.i32(i32 %2840) #9
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = xor i8 %2843, 1
  store i8 %2844, i8* %88, align 1, !tbaa !2448
  %2845 = xor i32 %2836, %2835
  %2846 = lshr i32 %2845, 4
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  store i8 %2848, i8* %93, align 1, !tbaa !2449
  %2849 = icmp eq i32 %2836, 0
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %96, align 1, !tbaa !2450
  %2851 = lshr i32 %2836, 31
  %2852 = trunc i32 %2851 to i8
  store i8 %2852, i8* %99, align 1, !tbaa !2451
  %2853 = lshr i32 %2835, 31
  %2854 = xor i32 %2851, %2853
  %2855 = add nuw nsw i32 %2854, %2853
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %105, align 1, !tbaa !2452
  %2858 = add i64 %7361, 842
  store i64 %2858, i64* %PC, align 8
  %2859 = load i64, i64* %2821, align 8
  store i64 %2859, i64* %RCX, align 8, !tbaa !2428
  %2860 = add i64 %2859, 16
  %2861 = add i64 %7361, 846
  store i64 %2861, i64* %PC, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = sext i32 %2836 to i64
  %2865 = sext i32 %2863 to i64
  %2866 = mul nsw i64 %2865, %2864
  %2867 = trunc i64 %2866 to i32
  %2868 = and i64 %2866, 4294967295
  store i64 %2868, i64* %RSI, align 8, !tbaa !2428
  %2869 = shl i64 %2866, 32
  %2870 = ashr exact i64 %2869, 32
  %2871 = icmp ne i64 %2870, %2866
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %82, align 1, !tbaa !2434
  %2873 = and i32 %2867, 255
  %2874 = tail call i32 @llvm.ctpop.i32(i32 %2873) #9
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  store i8 %2877, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %2878 = lshr i32 %2867, 31
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %99, align 1, !tbaa !2451
  store i8 %2872, i8* %105, align 1, !tbaa !2452
  %2880 = load i64, i64* %RBP, align 8
  %2881 = add i64 %2880, -40
  %2882 = add i64 %7361, 850
  store i64 %2882, i64* %PC, align 8
  %2883 = inttoptr i64 %2881 to i64*
  %2884 = load i64, i64* %2883, align 8
  store i64 %2884, i64* %RCX, align 8, !tbaa !2428
  %2885 = add i64 %2884, 20
  %2886 = add i64 %7361, 854
  store i64 %2886, i64* %PC, align 8
  %2887 = inttoptr i64 %2885 to i32*
  %2888 = load i32, i32* %2887, align 4
  %2889 = shl i64 %2866, 32
  %2890 = ashr exact i64 %2889, 32
  %2891 = sext i32 %2888 to i64
  %2892 = mul nsw i64 %2891, %2890
  %2893 = and i64 %2892, 4294967295
  store i64 %2893, i64* %RSI, align 8, !tbaa !2428
  %2894 = load i64, i64* %RDX, align 8
  %2895 = trunc i64 %2892 to i32
  %2896 = trunc i64 %2894 to i32
  %2897 = add i32 %2895, %2896
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RDX, align 8, !tbaa !2428
  %2899 = icmp ult i32 %2897, %2896
  %2900 = icmp ult i32 %2897, %2895
  %2901 = or i1 %2899, %2900
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %82, align 1, !tbaa !2434
  %2903 = and i32 %2897, 255
  %2904 = tail call i32 @llvm.ctpop.i32(i32 %2903) #9
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  %2907 = xor i8 %2906, 1
  store i8 %2907, i8* %88, align 1, !tbaa !2448
  %2908 = xor i64 %2892, %2894
  %2909 = trunc i64 %2908 to i32
  %2910 = xor i32 %2909, %2897
  %2911 = lshr i32 %2910, 4
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  store i8 %2913, i8* %93, align 1, !tbaa !2449
  %2914 = icmp eq i32 %2897, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %96, align 1, !tbaa !2450
  %2916 = lshr i32 %2897, 31
  %2917 = trunc i32 %2916 to i8
  store i8 %2917, i8* %99, align 1, !tbaa !2451
  %2918 = lshr i32 %2896, 31
  %2919 = lshr i32 %2895, 31
  %2920 = xor i32 %2916, %2918
  %2921 = xor i32 %2916, %2919
  %2922 = add nuw nsw i32 %2920, %2921
  %2923 = icmp eq i32 %2922, 2
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %105, align 1, !tbaa !2452
  %2925 = add i64 %2880, -72
  %2926 = add i64 %7361, 859
  store i64 %2926, i64* %PC, align 8
  %2927 = inttoptr i64 %2925 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = add i32 %2928, -1
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RSI, align 8, !tbaa !2428
  %2931 = icmp eq i32 %2928, 0
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %82, align 1, !tbaa !2434
  %2933 = and i32 %2929, 255
  %2934 = tail call i32 @llvm.ctpop.i32(i32 %2933) #9
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = xor i8 %2936, 1
  store i8 %2937, i8* %88, align 1, !tbaa !2448
  %2938 = xor i32 %2929, %2928
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  store i8 %2941, i8* %93, align 1, !tbaa !2449
  %2942 = icmp eq i32 %2929, 0
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %96, align 1, !tbaa !2450
  %2944 = lshr i32 %2929, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %99, align 1, !tbaa !2451
  %2946 = lshr i32 %2928, 31
  %2947 = xor i32 %2944, %2946
  %2948 = add nuw nsw i32 %2947, %2946
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %105, align 1, !tbaa !2452
  %2951 = load i64, i64* %RBP, align 8
  %2952 = add i64 %2951, -40
  %2953 = add i64 %7361, 866
  store i64 %2953, i64* %PC, align 8
  %2954 = inttoptr i64 %2952 to i64*
  %2955 = load i64, i64* %2954, align 8
  store i64 %2955, i64* %RCX, align 8, !tbaa !2428
  %2956 = add i64 %2955, 20
  %2957 = add i64 %7361, 870
  store i64 %2957, i64* %PC, align 8
  %2958 = inttoptr i64 %2956 to i32*
  %2959 = load i32, i32* %2958, align 4
  %2960 = sext i32 %2929 to i64
  %2961 = sext i32 %2959 to i64
  %2962 = mul nsw i64 %2961, %2960
  %2963 = and i64 %2962, 4294967295
  store i64 %2963, i64* %RSI, align 8, !tbaa !2428
  %2964 = load i64, i64* %RDX, align 8
  %2965 = trunc i64 %2962 to i32
  %2966 = trunc i64 %2964 to i32
  %2967 = add i32 %2965, %2966
  %2968 = zext i32 %2967 to i64
  store i64 %2968, i64* %RDX, align 8, !tbaa !2428
  %2969 = icmp ult i32 %2967, %2966
  %2970 = icmp ult i32 %2967, %2965
  %2971 = or i1 %2969, %2970
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %82, align 1, !tbaa !2434
  %2973 = and i32 %2967, 255
  %2974 = tail call i32 @llvm.ctpop.i32(i32 %2973) #9
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  store i8 %2977, i8* %88, align 1, !tbaa !2448
  %2978 = xor i64 %2962, %2964
  %2979 = trunc i64 %2978 to i32
  %2980 = xor i32 %2979, %2967
  %2981 = lshr i32 %2980, 4
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  store i8 %2983, i8* %93, align 1, !tbaa !2449
  %2984 = icmp eq i32 %2967, 0
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %96, align 1, !tbaa !2450
  %2986 = lshr i32 %2967, 31
  %2987 = trunc i32 %2986 to i8
  store i8 %2987, i8* %99, align 1, !tbaa !2451
  %2988 = lshr i32 %2966, 31
  %2989 = lshr i32 %2965, 31
  %2990 = xor i32 %2986, %2988
  %2991 = xor i32 %2986, %2989
  %2992 = add nuw nsw i32 %2990, %2991
  %2993 = icmp eq i32 %2992, 2
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %105, align 1, !tbaa !2452
  %2995 = add i64 %2951, -76
  %2996 = add i64 %7361, 875
  store i64 %2996, i64* %PC, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = add i32 %2998, %2967
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RDX, align 8, !tbaa !2428
  %3001 = icmp ult i32 %2999, %2967
  %3002 = icmp ult i32 %2999, %2998
  %3003 = or i1 %3001, %3002
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %82, align 1, !tbaa !2434
  %3005 = and i32 %2999, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005) #9
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %88, align 1, !tbaa !2448
  %3010 = xor i32 %2998, %2967
  %3011 = xor i32 %3010, %2999
  %3012 = lshr i32 %3011, 4
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  store i8 %3014, i8* %93, align 1, !tbaa !2449
  %3015 = icmp eq i32 %2999, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %96, align 1, !tbaa !2450
  %3017 = lshr i32 %2999, 31
  %3018 = trunc i32 %3017 to i8
  store i8 %3018, i8* %99, align 1, !tbaa !2451
  %3019 = lshr i32 %2998, 31
  %3020 = xor i32 %3017, %2986
  %3021 = xor i32 %3017, %3019
  %3022 = add nuw nsw i32 %3020, %3021
  %3023 = icmp eq i32 %3022, 2
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %105, align 1, !tbaa !2452
  %3025 = sext i32 %2999 to i64
  store i64 %3025, i64* %RCX, align 8, !tbaa !2428
  %3026 = load i64, i64* %RAX, align 8
  %3027 = shl nsw i64 %3025, 2
  %3028 = add i64 %3026, %3027
  %3029 = add i64 %7361, 883
  store i64 %3029, i64* %PC, align 8
  %3030 = load <2 x float>, <2 x float>* %221, align 1
  %3031 = load <2 x i32>, <2 x i32>* %222, align 1
  %3032 = inttoptr i64 %3028 to float*
  %3033 = load float, float* %3032, align 4
  %3034 = extractelement <2 x float> %3030, i32 0
  %3035 = fadd float %3034, %3033
  store float %3035, float* %213, align 1, !tbaa !2453
  %3036 = bitcast <2 x float> %3030 to <2 x i32>
  %3037 = extractelement <2 x i32> %3036, i32 1
  store i32 %3037, i32* %223, align 1, !tbaa !2453
  %3038 = extractelement <2 x i32> %3031, i32 0
  store i32 %3038, i32* %224, align 1, !tbaa !2453
  %3039 = extractelement <2 x i32> %3031, i32 1
  store i32 %3039, i32* %225, align 1, !tbaa !2453
  %3040 = load <2 x float>, <2 x float>* %207, align 1
  %3041 = load <2 x i32>, <2 x i32>* %208, align 1
  %3042 = load <2 x float>, <2 x float>* %221, align 1
  %3043 = extractelement <2 x float> %3040, i32 0
  %3044 = extractelement <2 x float> %3042, i32 0
  %3045 = fmul float %3043, %3044
  store float %3045, float* %199, align 1, !tbaa !2453
  %3046 = bitcast <2 x float> %3040 to <2 x i32>
  %3047 = extractelement <2 x i32> %3046, i32 1
  store i32 %3047, i32* %209, align 1, !tbaa !2453
  %3048 = extractelement <2 x i32> %3041, i32 0
  store i32 %3048, i32* %210, align 1, !tbaa !2453
  %3049 = extractelement <2 x i32> %3041, i32 1
  store i32 %3049, i32* %211, align 1, !tbaa !2453
  %3050 = load <2 x float>, <2 x float>* %192, align 1
  %3051 = load <2 x i32>, <2 x i32>* %197, align 1
  %3052 = load <2 x float>, <2 x float>* %207, align 1
  %3053 = extractelement <2 x float> %3050, i32 0
  %3054 = extractelement <2 x float> %3052, i32 0
  %3055 = fadd float %3053, %3054
  store float %3055, float* %193, align 1, !tbaa !2453
  %3056 = bitcast <2 x float> %3050 to <2 x i32>
  %3057 = extractelement <2 x i32> %3056, i32 1
  store i32 %3057, i32* %188, align 1, !tbaa !2453
  %3058 = extractelement <2 x i32> %3051, i32 0
  store i32 %3058, i32* %189, align 1, !tbaa !2453
  %3059 = extractelement <2 x i32> %3051, i32 1
  store i32 %3059, i32* %191, align 1, !tbaa !2453
  %3060 = load i64, i64* %RBP, align 8
  %3061 = add i64 %3060, -24
  %3062 = add i64 %7361, 895
  store i64 %3062, i64* %PC, align 8
  %3063 = inttoptr i64 %3061 to i64*
  %3064 = load i64, i64* %3063, align 8
  store i64 %3064, i64* %RAX, align 8, !tbaa !2428
  %3065 = add i64 %7361, 898
  store i64 %3065, i64* %PC, align 8
  %3066 = inttoptr i64 %3064 to i64*
  %3067 = load i64, i64* %3066, align 8
  store i64 %3067, i64* %RAX, align 8, !tbaa !2428
  %3068 = add i64 %7361, 902
  store i64 %3068, i64* %PC, align 8
  %3069 = load i64, i64* %3063, align 8
  store i64 %3069, i64* %RCX, align 8, !tbaa !2428
  %3070 = add i64 %3069, 12
  %3071 = add i64 %7361, 905
  store i64 %3071, i64* %PC, align 8
  %3072 = inttoptr i64 %3070 to i32*
  %3073 = load i32, i32* %3072, align 4
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RDX, align 8, !tbaa !2428
  %3075 = add i64 %7361, 912
  store i64 %3075, i64* %PC, align 8
  %3076 = load i64, i64* %3063, align 8
  store i64 %3076, i64* %RCX, align 8, !tbaa !2428
  %3077 = add i64 %3076, 16
  %3078 = add i64 %7361, 916
  store i64 %3078, i64* %PC, align 8
  %3079 = inttoptr i64 %3077 to i32*
  %3080 = load i32, i32* %3079, align 4
  %3081 = sext i32 %3073 to i64
  %3082 = sext i32 %3080 to i64
  %3083 = mul nsw i64 %3082, %3081
  %3084 = trunc i64 %3083 to i32
  %3085 = and i64 %3083, 4294967295
  store i64 %3085, i64* %RDX, align 8, !tbaa !2428
  %3086 = shl i64 %3083, 32
  %3087 = ashr exact i64 %3086, 32
  %3088 = icmp ne i64 %3087, %3083
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %82, align 1, !tbaa !2434
  %3090 = and i32 %3084, 255
  %3091 = tail call i32 @llvm.ctpop.i32(i32 %3090) #9
  %3092 = trunc i32 %3091 to i8
  %3093 = and i8 %3092, 1
  %3094 = xor i8 %3093, 1
  store i8 %3094, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3095 = lshr i32 %3084, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %99, align 1, !tbaa !2451
  store i8 %3089, i8* %105, align 1, !tbaa !2452
  %3097 = add i64 %7361, 920
  store i64 %3097, i64* %PC, align 8
  %3098 = load i64, i64* %3063, align 8
  store i64 %3098, i64* %RCX, align 8, !tbaa !2428
  %3099 = add i64 %3098, 20
  %3100 = add i64 %7361, 924
  store i64 %3100, i64* %PC, align 8
  %3101 = inttoptr i64 %3099 to i32*
  %3102 = load i32, i32* %3101, align 4
  %3103 = shl i64 %3083, 32
  %3104 = ashr exact i64 %3103, 32
  %3105 = sext i32 %3102 to i64
  %3106 = mul nsw i64 %3105, %3104
  %3107 = trunc i64 %3106 to i32
  %3108 = and i64 %3106, 4294967295
  store i64 %3108, i64* %RDX, align 8, !tbaa !2428
  %3109 = shl i64 %3106, 32
  %3110 = ashr exact i64 %3109, 32
  %3111 = icmp ne i64 %3110, %3106
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %82, align 1, !tbaa !2434
  %3113 = and i32 %3107, 255
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113) #9
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3118 = lshr i32 %3107, 31
  %3119 = trunc i32 %3118 to i8
  store i8 %3119, i8* %99, align 1, !tbaa !2451
  store i8 %3112, i8* %105, align 1, !tbaa !2452
  %3120 = add i64 %3060, -68
  %3121 = add i64 %7361, 927
  store i64 %3121, i64* %PC, align 8
  %3122 = inttoptr i64 %3120 to i32*
  %3123 = load i32, i32* %3122, align 4
  %3124 = zext i32 %3123 to i64
  store i64 %3124, i64* %RSI, align 8, !tbaa !2428
  %3125 = add i64 %7361, 931
  store i64 %3125, i64* %PC, align 8
  %3126 = load i64, i64* %3063, align 8
  store i64 %3126, i64* %RCX, align 8, !tbaa !2428
  %3127 = add i64 %3126, 16
  %3128 = add i64 %7361, 935
  store i64 %3128, i64* %PC, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = sext i32 %3123 to i64
  %3132 = sext i32 %3130 to i64
  %3133 = mul nsw i64 %3132, %3131
  %3134 = trunc i64 %3133 to i32
  %3135 = and i64 %3133, 4294967295
  store i64 %3135, i64* %RSI, align 8, !tbaa !2428
  %3136 = shl i64 %3133, 32
  %3137 = ashr exact i64 %3136, 32
  %3138 = icmp ne i64 %3137, %3133
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %82, align 1, !tbaa !2434
  %3140 = and i32 %3134, 255
  %3141 = tail call i32 @llvm.ctpop.i32(i32 %3140) #9
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = xor i8 %3143, 1
  store i8 %3144, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3145 = lshr i32 %3134, 31
  %3146 = trunc i32 %3145 to i8
  store i8 %3146, i8* %99, align 1, !tbaa !2451
  store i8 %3139, i8* %105, align 1, !tbaa !2452
  %3147 = load i64, i64* %RBP, align 8
  %3148 = add i64 %3147, -24
  %3149 = add i64 %7361, 939
  store i64 %3149, i64* %PC, align 8
  %3150 = inttoptr i64 %3148 to i64*
  %3151 = load i64, i64* %3150, align 8
  store i64 %3151, i64* %RCX, align 8, !tbaa !2428
  %3152 = add i64 %3151, 20
  %3153 = add i64 %7361, 943
  store i64 %3153, i64* %PC, align 8
  %3154 = inttoptr i64 %3152 to i32*
  %3155 = load i32, i32* %3154, align 4
  %3156 = shl i64 %3133, 32
  %3157 = ashr exact i64 %3156, 32
  %3158 = sext i32 %3155 to i64
  %3159 = mul nsw i64 %3158, %3157
  %3160 = and i64 %3159, 4294967295
  store i64 %3160, i64* %RSI, align 8, !tbaa !2428
  %3161 = trunc i64 %3159 to i32
  %3162 = trunc i64 %3106 to i32
  %3163 = add i32 %3161, %3162
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RDX, align 8, !tbaa !2428
  %3165 = icmp ult i32 %3163, %3162
  %3166 = icmp ult i32 %3163, %3161
  %3167 = or i1 %3165, %3166
  %3168 = zext i1 %3167 to i8
  store i8 %3168, i8* %82, align 1, !tbaa !2434
  %3169 = and i32 %3163, 255
  %3170 = tail call i32 @llvm.ctpop.i32(i32 %3169) #9
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  store i8 %3173, i8* %88, align 1, !tbaa !2448
  %3174 = xor i64 %3159, %3106
  %3175 = trunc i64 %3174 to i32
  %3176 = xor i32 %3175, %3163
  %3177 = lshr i32 %3176, 4
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  store i8 %3179, i8* %93, align 1, !tbaa !2449
  %3180 = icmp eq i32 %3163, 0
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %96, align 1, !tbaa !2450
  %3182 = lshr i32 %3163, 31
  %3183 = trunc i32 %3182 to i8
  store i8 %3183, i8* %99, align 1, !tbaa !2451
  %3184 = lshr i32 %3162, 31
  %3185 = lshr i32 %3161, 31
  %3186 = xor i32 %3182, %3184
  %3187 = xor i32 %3182, %3185
  %3188 = add nuw nsw i32 %3186, %3187
  %3189 = icmp eq i32 %3188, 2
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %105, align 1, !tbaa !2452
  %3191 = add i64 %3147, -72
  %3192 = add i64 %7361, 948
  store i64 %3192, i64* %PC, align 8
  %3193 = inttoptr i64 %3191 to i32*
  %3194 = load i32, i32* %3193, align 4
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RSI, align 8, !tbaa !2428
  %3196 = add i64 %7361, 952
  store i64 %3196, i64* %PC, align 8
  %3197 = load i64, i64* %3150, align 8
  store i64 %3197, i64* %RCX, align 8, !tbaa !2428
  %3198 = add i64 %3197, 20
  %3199 = add i64 %7361, 956
  store i64 %3199, i64* %PC, align 8
  %3200 = inttoptr i64 %3198 to i32*
  %3201 = load i32, i32* %3200, align 4
  %3202 = sext i32 %3194 to i64
  %3203 = sext i32 %3201 to i64
  %3204 = mul nsw i64 %3203, %3202
  %3205 = and i64 %3204, 4294967295
  store i64 %3205, i64* %RSI, align 8, !tbaa !2428
  %3206 = trunc i64 %3204 to i32
  %3207 = add i32 %3206, %3163
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RDX, align 8, !tbaa !2428
  %3209 = icmp ult i32 %3207, %3163
  %3210 = icmp ult i32 %3207, %3206
  %3211 = or i1 %3209, %3210
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %82, align 1, !tbaa !2434
  %3213 = and i32 %3207, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213) #9
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %88, align 1, !tbaa !2448
  %3218 = xor i64 %3204, %3164
  %3219 = trunc i64 %3218 to i32
  %3220 = xor i32 %3219, %3207
  %3221 = lshr i32 %3220, 4
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  store i8 %3223, i8* %93, align 1, !tbaa !2449
  %3224 = icmp eq i32 %3207, 0
  %3225 = zext i1 %3224 to i8
  store i8 %3225, i8* %96, align 1, !tbaa !2450
  %3226 = lshr i32 %3207, 31
  %3227 = trunc i32 %3226 to i8
  store i8 %3227, i8* %99, align 1, !tbaa !2451
  %3228 = lshr i32 %3206, 31
  %3229 = xor i32 %3226, %3182
  %3230 = xor i32 %3226, %3228
  %3231 = add nuw nsw i32 %3229, %3230
  %3232 = icmp eq i32 %3231, 2
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %105, align 1, !tbaa !2452
  %3234 = load i64, i64* %RBP, align 8
  %3235 = add i64 %3234, -76
  %3236 = add i64 %7361, 961
  store i64 %3236, i64* %PC, align 8
  %3237 = inttoptr i64 %3235 to i32*
  %3238 = load i32, i32* %3237, align 4
  %3239 = add i32 %3238, %3207
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RDX, align 8, !tbaa !2428
  %3241 = icmp ult i32 %3239, %3207
  %3242 = icmp ult i32 %3239, %3238
  %3243 = or i1 %3241, %3242
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %82, align 1, !tbaa !2434
  %3245 = and i32 %3239, 255
  %3246 = tail call i32 @llvm.ctpop.i32(i32 %3245) #9
  %3247 = trunc i32 %3246 to i8
  %3248 = and i8 %3247, 1
  %3249 = xor i8 %3248, 1
  store i8 %3249, i8* %88, align 1, !tbaa !2448
  %3250 = xor i32 %3238, %3207
  %3251 = xor i32 %3250, %3239
  %3252 = lshr i32 %3251, 4
  %3253 = trunc i32 %3252 to i8
  %3254 = and i8 %3253, 1
  store i8 %3254, i8* %93, align 1, !tbaa !2449
  %3255 = icmp eq i32 %3239, 0
  %3256 = zext i1 %3255 to i8
  store i8 %3256, i8* %96, align 1, !tbaa !2450
  %3257 = lshr i32 %3239, 31
  %3258 = trunc i32 %3257 to i8
  store i8 %3258, i8* %99, align 1, !tbaa !2451
  %3259 = lshr i32 %3238, 31
  %3260 = xor i32 %3257, %3226
  %3261 = xor i32 %3257, %3259
  %3262 = add nuw nsw i32 %3260, %3261
  %3263 = icmp eq i32 %3262, 2
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %105, align 1, !tbaa !2452
  %3265 = sext i32 %3239 to i64
  store i64 %3265, i64* %RCX, align 8, !tbaa !2428
  %3266 = load i64, i64* %RAX, align 8
  %3267 = shl nsw i64 %3265, 2
  %3268 = add i64 %3266, %3267
  %3269 = add i64 %7361, 969
  store i64 %3269, i64* %PC, align 8
  %3270 = inttoptr i64 %3268 to i32*
  %3271 = load i32, i32* %3270, align 4
  store i32 %3271, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %3272 = add i64 %3234, -40
  %3273 = add i64 %7361, 973
  store i64 %3273, i64* %PC, align 8
  %3274 = inttoptr i64 %3272 to i64*
  %3275 = load i64, i64* %3274, align 8
  store i64 %3275, i64* %RAX, align 8, !tbaa !2428
  %3276 = add i64 %7361, 976
  store i64 %3276, i64* %PC, align 8
  %3277 = inttoptr i64 %3275 to i64*
  %3278 = load i64, i64* %3277, align 8
  store i64 %3278, i64* %RAX, align 8, !tbaa !2428
  %3279 = add i64 %7361, 980
  store i64 %3279, i64* %PC, align 8
  %3280 = load i64, i64* %3274, align 8
  store i64 %3280, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3281 = add i64 %7361, 988
  store i64 %3281, i64* %PC, align 8
  %3282 = load i64, i64* %3274, align 8
  store i64 %3282, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3283 = add i64 %7361, 996
  store i64 %3283, i64* %PC, align 8
  %3284 = load i64, i64* %3274, align 8
  store i64 %3284, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3285 = load i64, i64* %RBP, align 8
  %3286 = add i64 %3285, -68
  %3287 = add i64 %7361, 1003
  store i64 %3287, i64* %PC, align 8
  %3288 = inttoptr i64 %3286 to i32*
  %3289 = load i32, i32* %3288, align 4
  %3290 = zext i32 %3289 to i64
  store i64 %3290, i64* %RSI, align 8, !tbaa !2428
  %3291 = add i64 %3285, -40
  %3292 = add i64 %7361, 1007
  store i64 %3292, i64* %PC, align 8
  %3293 = inttoptr i64 %3291 to i64*
  %3294 = load i64, i64* %3293, align 8
  store i64 %3294, i64* %RCX, align 8, !tbaa !2428
  %3295 = add i64 %3294, 16
  %3296 = add i64 %7361, 1011
  store i64 %3296, i64* %PC, align 8
  %3297 = inttoptr i64 %3295 to i32*
  %3298 = load i32, i32* %3297, align 4
  %3299 = sext i32 %3289 to i64
  %3300 = sext i32 %3298 to i64
  %3301 = mul nsw i64 %3300, %3299
  %3302 = trunc i64 %3301 to i32
  %3303 = and i64 %3301, 4294967295
  store i64 %3303, i64* %RSI, align 8, !tbaa !2428
  %3304 = shl i64 %3301, 32
  %3305 = ashr exact i64 %3304, 32
  %3306 = icmp ne i64 %3305, %3301
  %3307 = zext i1 %3306 to i8
  store i8 %3307, i8* %82, align 1, !tbaa !2434
  %3308 = and i32 %3302, 255
  %3309 = tail call i32 @llvm.ctpop.i32(i32 %3308) #9
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = xor i8 %3311, 1
  store i8 %3312, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3313 = lshr i32 %3302, 31
  %3314 = trunc i32 %3313 to i8
  store i8 %3314, i8* %99, align 1, !tbaa !2451
  store i8 %3307, i8* %105, align 1, !tbaa !2452
  %3315 = add i64 %7361, 1015
  store i64 %3315, i64* %PC, align 8
  %3316 = load i64, i64* %3293, align 8
  store i64 %3316, i64* %RCX, align 8, !tbaa !2428
  %3317 = add i64 %3316, 20
  %3318 = add i64 %7361, 1019
  store i64 %3318, i64* %PC, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = shl i64 %3301, 32
  %3322 = ashr exact i64 %3321, 32
  %3323 = sext i32 %3320 to i64
  %3324 = mul nsw i64 %3323, %3322
  %3325 = and i64 %3324, 4294967295
  store i64 %3325, i64* %RSI, align 8, !tbaa !2428
  %3326 = trunc i64 %3324 to i32
  %3327 = and i64 %3324, 4294967295
  store i64 %3327, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %3328 = and i32 %3326, 255
  %3329 = tail call i32 @llvm.ctpop.i32(i32 %3328) #9
  %3330 = trunc i32 %3329 to i8
  %3331 = and i8 %3330, 1
  %3332 = xor i8 %3331, 1
  store i8 %3332, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %3333 = icmp eq i32 %3326, 0
  %3334 = zext i1 %3333 to i8
  store i8 %3334, i8* %96, align 1, !tbaa !2450
  %3335 = lshr i32 %3326, 31
  %3336 = trunc i32 %3335 to i8
  store i8 %3336, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3337 = add i64 %3285, -72
  %3338 = add i64 %7361, 1024
  store i64 %3338, i64* %PC, align 8
  %3339 = inttoptr i64 %3337 to i32*
  %3340 = load i32, i32* %3339, align 4
  %3341 = add i32 %3340, 1
  %3342 = zext i32 %3341 to i64
  store i64 %3342, i64* %RSI, align 8, !tbaa !2428
  %3343 = icmp eq i32 %3340, -1
  %3344 = icmp eq i32 %3341, 0
  %3345 = or i1 %3343, %3344
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %82, align 1, !tbaa !2434
  %3347 = and i32 %3341, 255
  %3348 = tail call i32 @llvm.ctpop.i32(i32 %3347) #9
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = xor i8 %3350, 1
  store i8 %3351, i8* %88, align 1, !tbaa !2448
  %3352 = xor i32 %3341, %3340
  %3353 = lshr i32 %3352, 4
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  store i8 %3355, i8* %93, align 1, !tbaa !2449
  %3356 = zext i1 %3344 to i8
  store i8 %3356, i8* %96, align 1, !tbaa !2450
  %3357 = lshr i32 %3341, 31
  %3358 = trunc i32 %3357 to i8
  store i8 %3358, i8* %99, align 1, !tbaa !2451
  %3359 = lshr i32 %3340, 31
  %3360 = xor i32 %3357, %3359
  %3361 = add nuw nsw i32 %3360, %3357
  %3362 = icmp eq i32 %3361, 2
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %105, align 1, !tbaa !2452
  %3364 = load i64, i64* %RBP, align 8
  %3365 = add i64 %3364, -40
  %3366 = add i64 %7361, 1031
  store i64 %3366, i64* %PC, align 8
  %3367 = inttoptr i64 %3365 to i64*
  %3368 = load i64, i64* %3367, align 8
  store i64 %3368, i64* %RCX, align 8, !tbaa !2428
  %3369 = add i64 %3368, 20
  %3370 = add i64 %7361, 1035
  store i64 %3370, i64* %PC, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = sext i32 %3341 to i64
  %3374 = sext i32 %3372 to i64
  %3375 = mul nsw i64 %3374, %3373
  %3376 = and i64 %3375, 4294967295
  store i64 %3376, i64* %RSI, align 8, !tbaa !2428
  %3377 = trunc i64 %3375 to i32
  %3378 = add i32 %3377, %3326
  %3379 = zext i32 %3378 to i64
  store i64 %3379, i64* %RDX, align 8, !tbaa !2428
  %3380 = icmp ult i32 %3378, %3326
  %3381 = icmp ult i32 %3378, %3377
  %3382 = or i1 %3380, %3381
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %82, align 1, !tbaa !2434
  %3384 = and i32 %3378, 255
  %3385 = tail call i32 @llvm.ctpop.i32(i32 %3384) #9
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  %3388 = xor i8 %3387, 1
  store i8 %3388, i8* %88, align 1, !tbaa !2448
  %3389 = xor i64 %3375, %3324
  %3390 = trunc i64 %3389 to i32
  %3391 = xor i32 %3390, %3378
  %3392 = lshr i32 %3391, 4
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  store i8 %3394, i8* %93, align 1, !tbaa !2449
  %3395 = icmp eq i32 %3378, 0
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %96, align 1, !tbaa !2450
  %3397 = lshr i32 %3378, 31
  %3398 = trunc i32 %3397 to i8
  store i8 %3398, i8* %99, align 1, !tbaa !2451
  %3399 = lshr i32 %3377, 31
  %3400 = xor i32 %3397, %3335
  %3401 = xor i32 %3397, %3399
  %3402 = add nuw nsw i32 %3400, %3401
  %3403 = icmp eq i32 %3402, 2
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %105, align 1, !tbaa !2452
  %3405 = add i64 %3364, -76
  %3406 = add i64 %7361, 1040
  store i64 %3406, i64* %PC, align 8
  %3407 = inttoptr i64 %3405 to i32*
  %3408 = load i32, i32* %3407, align 4
  %3409 = add i32 %3408, 1
  %3410 = zext i32 %3409 to i64
  store i64 %3410, i64* %RSI, align 8, !tbaa !2428
  %3411 = lshr i32 %3409, 31
  %3412 = add i32 %3409, %3378
  %3413 = zext i32 %3412 to i64
  store i64 %3413, i64* %RDX, align 8, !tbaa !2428
  %3414 = icmp ult i32 %3412, %3378
  %3415 = icmp ult i32 %3412, %3409
  %3416 = or i1 %3414, %3415
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %82, align 1, !tbaa !2434
  %3418 = and i32 %3412, 255
  %3419 = tail call i32 @llvm.ctpop.i32(i32 %3418) #9
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = xor i8 %3421, 1
  store i8 %3422, i8* %88, align 1, !tbaa !2448
  %3423 = xor i32 %3409, %3378
  %3424 = xor i32 %3423, %3412
  %3425 = lshr i32 %3424, 4
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  store i8 %3427, i8* %93, align 1, !tbaa !2449
  %3428 = icmp eq i32 %3412, 0
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %96, align 1, !tbaa !2450
  %3430 = lshr i32 %3412, 31
  %3431 = trunc i32 %3430 to i8
  store i8 %3431, i8* %99, align 1, !tbaa !2451
  %3432 = xor i32 %3430, %3397
  %3433 = xor i32 %3430, %3411
  %3434 = add nuw nsw i32 %3432, %3433
  %3435 = icmp eq i32 %3434, 2
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %105, align 1, !tbaa !2452
  %3437 = sext i32 %3412 to i64
  store i64 %3437, i64* %RCX, align 8, !tbaa !2428
  %3438 = load i64, i64* %RAX, align 8
  %3439 = shl nsw i64 %3437, 2
  %3440 = add i64 %3438, %3439
  %3441 = add i64 %7361, 1053
  store i64 %3441, i64* %PC, align 8
  %3442 = inttoptr i64 %3440 to i32*
  %3443 = load i32, i32* %3442, align 4
  store i32 %3443, i32* %214, align 1, !tbaa !2453
  store float 0.000000e+00, float* %216, align 1, !tbaa !2453
  store float 0.000000e+00, float* %218, align 1, !tbaa !2453
  store float 0.000000e+00, float* %220, align 1, !tbaa !2453
  %3444 = load i64, i64* %RBP, align 8
  %3445 = add i64 %3444, -40
  %3446 = add i64 %7361, 1057
  store i64 %3446, i64* %PC, align 8
  %3447 = inttoptr i64 %3445 to i64*
  %3448 = load i64, i64* %3447, align 8
  store i64 %3448, i64* %RAX, align 8, !tbaa !2428
  %3449 = add i64 %7361, 1060
  store i64 %3449, i64* %PC, align 8
  %3450 = inttoptr i64 %3448 to i64*
  %3451 = load i64, i64* %3450, align 8
  store i64 %3451, i64* %RAX, align 8, !tbaa !2428
  %3452 = add i64 %7361, 1064
  store i64 %3452, i64* %PC, align 8
  %3453 = load i64, i64* %3447, align 8
  store i64 %3453, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3454 = add i64 %7361, 1072
  store i64 %3454, i64* %PC, align 8
  %3455 = load i64, i64* %3447, align 8
  store i64 %3455, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3456 = add i64 %7361, 1080
  store i64 %3456, i64* %PC, align 8
  %3457 = load i64, i64* %3447, align 8
  store i64 %3457, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3458 = add i64 %3444, -68
  %3459 = add i64 %7361, 1087
  store i64 %3459, i64* %PC, align 8
  %3460 = inttoptr i64 %3458 to i32*
  %3461 = load i32, i32* %3460, align 4
  %3462 = zext i32 %3461 to i64
  store i64 %3462, i64* %RSI, align 8, !tbaa !2428
  %3463 = add i64 %7361, 1091
  store i64 %3463, i64* %PC, align 8
  %3464 = load i64, i64* %3447, align 8
  store i64 %3464, i64* %RCX, align 8, !tbaa !2428
  %3465 = add i64 %3464, 16
  %3466 = add i64 %7361, 1095
  store i64 %3466, i64* %PC, align 8
  %3467 = inttoptr i64 %3465 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = sext i32 %3461 to i64
  %3470 = sext i32 %3468 to i64
  %3471 = mul nsw i64 %3470, %3469
  %3472 = trunc i64 %3471 to i32
  %3473 = and i64 %3471, 4294967295
  store i64 %3473, i64* %RSI, align 8, !tbaa !2428
  %3474 = shl i64 %3471, 32
  %3475 = ashr exact i64 %3474, 32
  %3476 = icmp ne i64 %3475, %3471
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %82, align 1, !tbaa !2434
  %3478 = and i32 %3472, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478) #9
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3483 = lshr i32 %3472, 31
  %3484 = trunc i32 %3483 to i8
  store i8 %3484, i8* %99, align 1, !tbaa !2451
  store i8 %3477, i8* %105, align 1, !tbaa !2452
  %3485 = add i64 %7361, 1099
  store i64 %3485, i64* %PC, align 8
  %3486 = load i64, i64* %3447, align 8
  store i64 %3486, i64* %RCX, align 8, !tbaa !2428
  %3487 = add i64 %3486, 20
  %3488 = add i64 %7361, 1103
  store i64 %3488, i64* %PC, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  %3491 = shl i64 %3471, 32
  %3492 = ashr exact i64 %3491, 32
  %3493 = sext i32 %3490 to i64
  %3494 = mul nsw i64 %3493, %3492
  %3495 = and i64 %3494, 4294967295
  store i64 %3495, i64* %RSI, align 8, !tbaa !2428
  %3496 = trunc i64 %3494 to i32
  %3497 = and i64 %3494, 4294967295
  store i64 %3497, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %3498 = and i32 %3496, 255
  %3499 = tail call i32 @llvm.ctpop.i32(i32 %3498) #9
  %3500 = trunc i32 %3499 to i8
  %3501 = and i8 %3500, 1
  %3502 = xor i8 %3501, 1
  store i8 %3502, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %3503 = icmp eq i32 %3496, 0
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %96, align 1, !tbaa !2450
  %3505 = lshr i32 %3496, 31
  %3506 = trunc i32 %3505 to i8
  store i8 %3506, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3507 = load i64, i64* %RBP, align 8
  %3508 = add i64 %3507, -72
  %3509 = add i64 %7361, 1108
  store i64 %3509, i64* %PC, align 8
  %3510 = inttoptr i64 %3508 to i32*
  %3511 = load i32, i32* %3510, align 4
  %3512 = add i32 %3511, -1
  %3513 = zext i32 %3512 to i64
  store i64 %3513, i64* %RSI, align 8, !tbaa !2428
  %3514 = icmp eq i32 %3511, 0
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %82, align 1, !tbaa !2434
  %3516 = and i32 %3512, 255
  %3517 = tail call i32 @llvm.ctpop.i32(i32 %3516) #9
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = xor i8 %3519, 1
  store i8 %3520, i8* %88, align 1, !tbaa !2448
  %3521 = xor i32 %3512, %3511
  %3522 = lshr i32 %3521, 4
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  store i8 %3524, i8* %93, align 1, !tbaa !2449
  %3525 = icmp eq i32 %3512, 0
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %96, align 1, !tbaa !2450
  %3527 = lshr i32 %3512, 31
  %3528 = trunc i32 %3527 to i8
  store i8 %3528, i8* %99, align 1, !tbaa !2451
  %3529 = lshr i32 %3511, 31
  %3530 = xor i32 %3527, %3529
  %3531 = add nuw nsw i32 %3530, %3529
  %3532 = icmp eq i32 %3531, 2
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %105, align 1, !tbaa !2452
  %3534 = add i64 %3507, -40
  %3535 = add i64 %7361, 1115
  store i64 %3535, i64* %PC, align 8
  %3536 = inttoptr i64 %3534 to i64*
  %3537 = load i64, i64* %3536, align 8
  store i64 %3537, i64* %RCX, align 8, !tbaa !2428
  %3538 = add i64 %3537, 20
  %3539 = add i64 %7361, 1119
  store i64 %3539, i64* %PC, align 8
  %3540 = inttoptr i64 %3538 to i32*
  %3541 = load i32, i32* %3540, align 4
  %3542 = sext i32 %3512 to i64
  %3543 = sext i32 %3541 to i64
  %3544 = mul nsw i64 %3543, %3542
  %3545 = and i64 %3544, 4294967295
  store i64 %3545, i64* %RSI, align 8, !tbaa !2428
  %3546 = trunc i64 %3544 to i32
  %3547 = add i32 %3546, %3496
  %3548 = zext i32 %3547 to i64
  store i64 %3548, i64* %RDX, align 8, !tbaa !2428
  %3549 = icmp ult i32 %3547, %3496
  %3550 = icmp ult i32 %3547, %3546
  %3551 = or i1 %3549, %3550
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %82, align 1, !tbaa !2434
  %3553 = and i32 %3547, 255
  %3554 = tail call i32 @llvm.ctpop.i32(i32 %3553) #9
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  store i8 %3557, i8* %88, align 1, !tbaa !2448
  %3558 = xor i64 %3544, %3494
  %3559 = trunc i64 %3558 to i32
  %3560 = xor i32 %3559, %3547
  %3561 = lshr i32 %3560, 4
  %3562 = trunc i32 %3561 to i8
  %3563 = and i8 %3562, 1
  store i8 %3563, i8* %93, align 1, !tbaa !2449
  %3564 = icmp eq i32 %3547, 0
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %96, align 1, !tbaa !2450
  %3566 = lshr i32 %3547, 31
  %3567 = trunc i32 %3566 to i8
  store i8 %3567, i8* %99, align 1, !tbaa !2451
  %3568 = lshr i32 %3546, 31
  %3569 = xor i32 %3566, %3505
  %3570 = xor i32 %3566, %3568
  %3571 = add nuw nsw i32 %3569, %3570
  %3572 = icmp eq i32 %3571, 2
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %105, align 1, !tbaa !2452
  %3574 = load i64, i64* %RBP, align 8
  %3575 = add i64 %3574, -76
  %3576 = add i64 %7361, 1124
  store i64 %3576, i64* %PC, align 8
  %3577 = inttoptr i64 %3575 to i32*
  %3578 = load i32, i32* %3577, align 4
  %3579 = add i32 %3578, 1
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RSI, align 8, !tbaa !2428
  %3581 = lshr i32 %3579, 31
  %3582 = add i32 %3579, %3547
  %3583 = zext i32 %3582 to i64
  store i64 %3583, i64* %RDX, align 8, !tbaa !2428
  %3584 = icmp ult i32 %3582, %3547
  %3585 = icmp ult i32 %3582, %3579
  %3586 = or i1 %3584, %3585
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %82, align 1, !tbaa !2434
  %3588 = and i32 %3582, 255
  %3589 = tail call i32 @llvm.ctpop.i32(i32 %3588) #9
  %3590 = trunc i32 %3589 to i8
  %3591 = and i8 %3590, 1
  %3592 = xor i8 %3591, 1
  store i8 %3592, i8* %88, align 1, !tbaa !2448
  %3593 = xor i32 %3579, %3547
  %3594 = xor i32 %3593, %3582
  %3595 = lshr i32 %3594, 4
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  store i8 %3597, i8* %93, align 1, !tbaa !2449
  %3598 = icmp eq i32 %3582, 0
  %3599 = zext i1 %3598 to i8
  store i8 %3599, i8* %96, align 1, !tbaa !2450
  %3600 = lshr i32 %3582, 31
  %3601 = trunc i32 %3600 to i8
  store i8 %3601, i8* %99, align 1, !tbaa !2451
  %3602 = xor i32 %3600, %3566
  %3603 = xor i32 %3600, %3581
  %3604 = add nuw nsw i32 %3602, %3603
  %3605 = icmp eq i32 %3604, 2
  %3606 = zext i1 %3605 to i8
  store i8 %3606, i8* %105, align 1, !tbaa !2452
  %3607 = sext i32 %3582 to i64
  store i64 %3607, i64* %RCX, align 8, !tbaa !2428
  %3608 = load i64, i64* %RAX, align 8
  %3609 = shl nsw i64 %3607, 2
  %3610 = add i64 %3608, %3609
  %3611 = add i64 %7361, 1137
  store i64 %3611, i64* %PC, align 8
  %3612 = load <2 x float>, <2 x float>* %221, align 1
  %3613 = load <2 x i32>, <2 x i32>* %222, align 1
  %3614 = inttoptr i64 %3610 to float*
  %3615 = load float, float* %3614, align 4
  %3616 = extractelement <2 x float> %3612, i32 0
  %3617 = fsub float %3616, %3615
  store float %3617, float* %213, align 1, !tbaa !2453
  %3618 = bitcast <2 x float> %3612 to <2 x i32>
  %3619 = extractelement <2 x i32> %3618, i32 1
  store i32 %3619, i32* %223, align 1, !tbaa !2453
  %3620 = extractelement <2 x i32> %3613, i32 0
  store i32 %3620, i32* %224, align 1, !tbaa !2453
  %3621 = extractelement <2 x i32> %3613, i32 1
  store i32 %3621, i32* %225, align 1, !tbaa !2453
  %3622 = load i64, i64* %RBP, align 8
  %3623 = add i64 %3622, -40
  %3624 = add i64 %7361, 1141
  store i64 %3624, i64* %PC, align 8
  %3625 = inttoptr i64 %3623 to i64*
  %3626 = load i64, i64* %3625, align 8
  store i64 %3626, i64* %RAX, align 8, !tbaa !2428
  %3627 = add i64 %7361, 1144
  store i64 %3627, i64* %PC, align 8
  %3628 = inttoptr i64 %3626 to i64*
  %3629 = load i64, i64* %3628, align 8
  store i64 %3629, i64* %RAX, align 8, !tbaa !2428
  %3630 = add i64 %7361, 1148
  store i64 %3630, i64* %PC, align 8
  %3631 = load i64, i64* %3625, align 8
  store i64 %3631, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3632 = add i64 %7361, 1156
  store i64 %3632, i64* %PC, align 8
  %3633 = load i64, i64* %3625, align 8
  store i64 %3633, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3634 = add i64 %7361, 1164
  store i64 %3634, i64* %PC, align 8
  %3635 = load i64, i64* %3625, align 8
  store i64 %3635, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3636 = add i64 %3622, -68
  %3637 = add i64 %7361, 1171
  store i64 %3637, i64* %PC, align 8
  %3638 = inttoptr i64 %3636 to i32*
  %3639 = load i32, i32* %3638, align 4
  %3640 = zext i32 %3639 to i64
  store i64 %3640, i64* %RSI, align 8, !tbaa !2428
  %3641 = add i64 %7361, 1175
  store i64 %3641, i64* %PC, align 8
  %3642 = load i64, i64* %3625, align 8
  store i64 %3642, i64* %RCX, align 8, !tbaa !2428
  %3643 = add i64 %3642, 16
  %3644 = add i64 %7361, 1179
  store i64 %3644, i64* %PC, align 8
  %3645 = inttoptr i64 %3643 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = sext i32 %3639 to i64
  %3648 = sext i32 %3646 to i64
  %3649 = mul nsw i64 %3648, %3647
  %3650 = trunc i64 %3649 to i32
  %3651 = and i64 %3649, 4294967295
  store i64 %3651, i64* %RSI, align 8, !tbaa !2428
  %3652 = shl i64 %3649, 32
  %3653 = ashr exact i64 %3652, 32
  %3654 = icmp ne i64 %3653, %3649
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %82, align 1, !tbaa !2434
  %3656 = and i32 %3650, 255
  %3657 = tail call i32 @llvm.ctpop.i32(i32 %3656) #9
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  %3660 = xor i8 %3659, 1
  store i8 %3660, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3661 = lshr i32 %3650, 31
  %3662 = trunc i32 %3661 to i8
  store i8 %3662, i8* %99, align 1, !tbaa !2451
  store i8 %3655, i8* %105, align 1, !tbaa !2452
  %3663 = add i64 %7361, 1183
  store i64 %3663, i64* %PC, align 8
  %3664 = load i64, i64* %3625, align 8
  store i64 %3664, i64* %RCX, align 8, !tbaa !2428
  %3665 = add i64 %3664, 20
  %3666 = add i64 %7361, 1187
  store i64 %3666, i64* %PC, align 8
  %3667 = inttoptr i64 %3665 to i32*
  %3668 = load i32, i32* %3667, align 4
  %3669 = shl i64 %3649, 32
  %3670 = ashr exact i64 %3669, 32
  %3671 = sext i32 %3668 to i64
  %3672 = mul nsw i64 %3671, %3670
  %3673 = and i64 %3672, 4294967295
  store i64 %3673, i64* %RSI, align 8, !tbaa !2428
  %3674 = trunc i64 %3672 to i32
  %3675 = and i64 %3672, 4294967295
  store i64 %3675, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %3676 = and i32 %3674, 255
  %3677 = tail call i32 @llvm.ctpop.i32(i32 %3676) #9
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = xor i8 %3679, 1
  store i8 %3680, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %3681 = icmp eq i32 %3674, 0
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %96, align 1, !tbaa !2450
  %3683 = lshr i32 %3674, 31
  %3684 = trunc i32 %3683 to i8
  store i8 %3684, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3685 = load i64, i64* %RBP, align 8
  %3686 = add i64 %3685, -72
  %3687 = add i64 %7361, 1192
  store i64 %3687, i64* %PC, align 8
  %3688 = inttoptr i64 %3686 to i32*
  %3689 = load i32, i32* %3688, align 4
  %3690 = add i32 %3689, 1
  %3691 = zext i32 %3690 to i64
  store i64 %3691, i64* %RSI, align 8, !tbaa !2428
  %3692 = icmp eq i32 %3689, -1
  %3693 = icmp eq i32 %3690, 0
  %3694 = or i1 %3692, %3693
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %82, align 1, !tbaa !2434
  %3696 = and i32 %3690, 255
  %3697 = tail call i32 @llvm.ctpop.i32(i32 %3696) #9
  %3698 = trunc i32 %3697 to i8
  %3699 = and i8 %3698, 1
  %3700 = xor i8 %3699, 1
  store i8 %3700, i8* %88, align 1, !tbaa !2448
  %3701 = xor i32 %3690, %3689
  %3702 = lshr i32 %3701, 4
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  store i8 %3704, i8* %93, align 1, !tbaa !2449
  %3705 = zext i1 %3693 to i8
  store i8 %3705, i8* %96, align 1, !tbaa !2450
  %3706 = lshr i32 %3690, 31
  %3707 = trunc i32 %3706 to i8
  store i8 %3707, i8* %99, align 1, !tbaa !2451
  %3708 = lshr i32 %3689, 31
  %3709 = xor i32 %3706, %3708
  %3710 = add nuw nsw i32 %3709, %3706
  %3711 = icmp eq i32 %3710, 2
  %3712 = zext i1 %3711 to i8
  store i8 %3712, i8* %105, align 1, !tbaa !2452
  %3713 = add i64 %3685, -40
  %3714 = add i64 %7361, 1199
  store i64 %3714, i64* %PC, align 8
  %3715 = inttoptr i64 %3713 to i64*
  %3716 = load i64, i64* %3715, align 8
  store i64 %3716, i64* %RCX, align 8, !tbaa !2428
  %3717 = add i64 %3716, 20
  %3718 = add i64 %7361, 1203
  store i64 %3718, i64* %PC, align 8
  %3719 = inttoptr i64 %3717 to i32*
  %3720 = load i32, i32* %3719, align 4
  %3721 = sext i32 %3690 to i64
  %3722 = sext i32 %3720 to i64
  %3723 = mul nsw i64 %3722, %3721
  %3724 = and i64 %3723, 4294967295
  store i64 %3724, i64* %RSI, align 8, !tbaa !2428
  %3725 = trunc i64 %3723 to i32
  %3726 = add i32 %3725, %3674
  %3727 = zext i32 %3726 to i64
  store i64 %3727, i64* %RDX, align 8, !tbaa !2428
  %3728 = icmp ult i32 %3726, %3674
  %3729 = icmp ult i32 %3726, %3725
  %3730 = or i1 %3728, %3729
  %3731 = zext i1 %3730 to i8
  store i8 %3731, i8* %82, align 1, !tbaa !2434
  %3732 = and i32 %3726, 255
  %3733 = tail call i32 @llvm.ctpop.i32(i32 %3732) #9
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  store i8 %3736, i8* %88, align 1, !tbaa !2448
  %3737 = xor i64 %3723, %3672
  %3738 = trunc i64 %3737 to i32
  %3739 = xor i32 %3738, %3726
  %3740 = lshr i32 %3739, 4
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  store i8 %3742, i8* %93, align 1, !tbaa !2449
  %3743 = icmp eq i32 %3726, 0
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %96, align 1, !tbaa !2450
  %3745 = lshr i32 %3726, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %99, align 1, !tbaa !2451
  %3747 = lshr i32 %3725, 31
  %3748 = xor i32 %3745, %3683
  %3749 = xor i32 %3745, %3747
  %3750 = add nuw nsw i32 %3748, %3749
  %3751 = icmp eq i32 %3750, 2
  %3752 = zext i1 %3751 to i8
  store i8 %3752, i8* %105, align 1, !tbaa !2452
  %3753 = load i64, i64* %RBP, align 8
  %3754 = add i64 %3753, -76
  %3755 = add i64 %7361, 1208
  store i64 %3755, i64* %PC, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = add i32 %3757, -1
  %3759 = zext i32 %3758 to i64
  store i64 %3759, i64* %RSI, align 8, !tbaa !2428
  %3760 = lshr i32 %3758, 31
  %3761 = add i32 %3758, %3726
  %3762 = zext i32 %3761 to i64
  store i64 %3762, i64* %RDX, align 8, !tbaa !2428
  %3763 = icmp ult i32 %3761, %3726
  %3764 = icmp ult i32 %3761, %3758
  %3765 = or i1 %3763, %3764
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %82, align 1, !tbaa !2434
  %3767 = and i32 %3761, 255
  %3768 = tail call i32 @llvm.ctpop.i32(i32 %3767) #9
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  %3771 = xor i8 %3770, 1
  store i8 %3771, i8* %88, align 1, !tbaa !2448
  %3772 = xor i32 %3758, %3726
  %3773 = xor i32 %3772, %3761
  %3774 = lshr i32 %3773, 4
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  store i8 %3776, i8* %93, align 1, !tbaa !2449
  %3777 = icmp eq i32 %3761, 0
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %96, align 1, !tbaa !2450
  %3779 = lshr i32 %3761, 31
  %3780 = trunc i32 %3779 to i8
  store i8 %3780, i8* %99, align 1, !tbaa !2451
  %3781 = xor i32 %3779, %3745
  %3782 = xor i32 %3779, %3760
  %3783 = add nuw nsw i32 %3781, %3782
  %3784 = icmp eq i32 %3783, 2
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %105, align 1, !tbaa !2452
  %3786 = sext i32 %3761 to i64
  store i64 %3786, i64* %RCX, align 8, !tbaa !2428
  %3787 = load i64, i64* %RAX, align 8
  %3788 = shl nsw i64 %3786, 2
  %3789 = add i64 %3787, %3788
  %3790 = add i64 %7361, 1221
  store i64 %3790, i64* %PC, align 8
  %3791 = load <2 x float>, <2 x float>* %221, align 1
  %3792 = load <2 x i32>, <2 x i32>* %222, align 1
  %3793 = inttoptr i64 %3789 to float*
  %3794 = load float, float* %3793, align 4
  %3795 = extractelement <2 x float> %3791, i32 0
  %3796 = fsub float %3795, %3794
  store float %3796, float* %213, align 1, !tbaa !2453
  %3797 = bitcast <2 x float> %3791 to <2 x i32>
  %3798 = extractelement <2 x i32> %3797, i32 1
  store i32 %3798, i32* %223, align 1, !tbaa !2453
  %3799 = extractelement <2 x i32> %3792, i32 0
  store i32 %3799, i32* %224, align 1, !tbaa !2453
  %3800 = extractelement <2 x i32> %3792, i32 1
  store i32 %3800, i32* %225, align 1, !tbaa !2453
  %3801 = load i64, i64* %RBP, align 8
  %3802 = add i64 %3801, -40
  %3803 = add i64 %7361, 1225
  store i64 %3803, i64* %PC, align 8
  %3804 = inttoptr i64 %3802 to i64*
  %3805 = load i64, i64* %3804, align 8
  store i64 %3805, i64* %RAX, align 8, !tbaa !2428
  %3806 = add i64 %7361, 1228
  store i64 %3806, i64* %PC, align 8
  %3807 = inttoptr i64 %3805 to i64*
  %3808 = load i64, i64* %3807, align 8
  store i64 %3808, i64* %RAX, align 8, !tbaa !2428
  %3809 = add i64 %7361, 1232
  store i64 %3809, i64* %PC, align 8
  %3810 = load i64, i64* %3804, align 8
  store i64 %3810, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3811 = add i64 %7361, 1240
  store i64 %3811, i64* %PC, align 8
  %3812 = load i64, i64* %3804, align 8
  store i64 %3812, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3813 = add i64 %7361, 1248
  store i64 %3813, i64* %PC, align 8
  %3814 = load i64, i64* %3804, align 8
  store i64 %3814, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3815 = add i64 %3801, -68
  %3816 = add i64 %7361, 1255
  store i64 %3816, i64* %PC, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RSI, align 8, !tbaa !2428
  %3820 = add i64 %7361, 1259
  store i64 %3820, i64* %PC, align 8
  %3821 = load i64, i64* %3804, align 8
  store i64 %3821, i64* %RCX, align 8, !tbaa !2428
  %3822 = add i64 %3821, 16
  %3823 = add i64 %7361, 1263
  store i64 %3823, i64* %PC, align 8
  %3824 = inttoptr i64 %3822 to i32*
  %3825 = load i32, i32* %3824, align 4
  %3826 = sext i32 %3818 to i64
  %3827 = sext i32 %3825 to i64
  %3828 = mul nsw i64 %3827, %3826
  %3829 = trunc i64 %3828 to i32
  %3830 = and i64 %3828, 4294967295
  store i64 %3830, i64* %RSI, align 8, !tbaa !2428
  %3831 = shl i64 %3828, 32
  %3832 = ashr exact i64 %3831, 32
  %3833 = icmp ne i64 %3832, %3828
  %3834 = zext i1 %3833 to i8
  store i8 %3834, i8* %82, align 1, !tbaa !2434
  %3835 = and i32 %3829, 255
  %3836 = tail call i32 @llvm.ctpop.i32(i32 %3835) #9
  %3837 = trunc i32 %3836 to i8
  %3838 = and i8 %3837, 1
  %3839 = xor i8 %3838, 1
  store i8 %3839, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %3840 = lshr i32 %3829, 31
  %3841 = trunc i32 %3840 to i8
  store i8 %3841, i8* %99, align 1, !tbaa !2451
  store i8 %3834, i8* %105, align 1, !tbaa !2452
  %3842 = add i64 %7361, 1267
  store i64 %3842, i64* %PC, align 8
  %3843 = load i64, i64* %3804, align 8
  store i64 %3843, i64* %RCX, align 8, !tbaa !2428
  %3844 = add i64 %3843, 20
  %3845 = add i64 %7361, 1271
  store i64 %3845, i64* %PC, align 8
  %3846 = inttoptr i64 %3844 to i32*
  %3847 = load i32, i32* %3846, align 4
  %3848 = shl i64 %3828, 32
  %3849 = ashr exact i64 %3848, 32
  %3850 = sext i32 %3847 to i64
  %3851 = mul nsw i64 %3850, %3849
  %3852 = and i64 %3851, 4294967295
  store i64 %3852, i64* %RSI, align 8, !tbaa !2428
  %3853 = trunc i64 %3851 to i32
  %3854 = and i64 %3851, 4294967295
  store i64 %3854, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %3855 = and i32 %3853, 255
  %3856 = tail call i32 @llvm.ctpop.i32(i32 %3855) #9
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  %3859 = xor i8 %3858, 1
  store i8 %3859, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %3860 = icmp eq i32 %3853, 0
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %96, align 1, !tbaa !2450
  %3862 = lshr i32 %3853, 31
  %3863 = trunc i32 %3862 to i8
  store i8 %3863, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %3864 = load i64, i64* %RBP, align 8
  %3865 = add i64 %3864, -72
  %3866 = add i64 %7361, 1276
  store i64 %3866, i64* %PC, align 8
  %3867 = inttoptr i64 %3865 to i32*
  %3868 = load i32, i32* %3867, align 4
  %3869 = add i32 %3868, -1
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RSI, align 8, !tbaa !2428
  %3871 = icmp eq i32 %3868, 0
  %3872 = zext i1 %3871 to i8
  store i8 %3872, i8* %82, align 1, !tbaa !2434
  %3873 = and i32 %3869, 255
  %3874 = tail call i32 @llvm.ctpop.i32(i32 %3873) #9
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  %3877 = xor i8 %3876, 1
  store i8 %3877, i8* %88, align 1, !tbaa !2448
  %3878 = xor i32 %3869, %3868
  %3879 = lshr i32 %3878, 4
  %3880 = trunc i32 %3879 to i8
  %3881 = and i8 %3880, 1
  store i8 %3881, i8* %93, align 1, !tbaa !2449
  %3882 = icmp eq i32 %3869, 0
  %3883 = zext i1 %3882 to i8
  store i8 %3883, i8* %96, align 1, !tbaa !2450
  %3884 = lshr i32 %3869, 31
  %3885 = trunc i32 %3884 to i8
  store i8 %3885, i8* %99, align 1, !tbaa !2451
  %3886 = lshr i32 %3868, 31
  %3887 = xor i32 %3884, %3886
  %3888 = add nuw nsw i32 %3887, %3886
  %3889 = icmp eq i32 %3888, 2
  %3890 = zext i1 %3889 to i8
  store i8 %3890, i8* %105, align 1, !tbaa !2452
  %3891 = add i64 %3864, -40
  %3892 = add i64 %7361, 1283
  store i64 %3892, i64* %PC, align 8
  %3893 = inttoptr i64 %3891 to i64*
  %3894 = load i64, i64* %3893, align 8
  store i64 %3894, i64* %RCX, align 8, !tbaa !2428
  %3895 = add i64 %3894, 20
  %3896 = add i64 %7361, 1287
  store i64 %3896, i64* %PC, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = sext i32 %3869 to i64
  %3900 = sext i32 %3898 to i64
  %3901 = mul nsw i64 %3900, %3899
  %3902 = and i64 %3901, 4294967295
  store i64 %3902, i64* %RSI, align 8, !tbaa !2428
  %3903 = trunc i64 %3901 to i32
  %3904 = add i32 %3903, %3853
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %RDX, align 8, !tbaa !2428
  %3906 = icmp ult i32 %3904, %3853
  %3907 = icmp ult i32 %3904, %3903
  %3908 = or i1 %3906, %3907
  %3909 = zext i1 %3908 to i8
  store i8 %3909, i8* %82, align 1, !tbaa !2434
  %3910 = and i32 %3904, 255
  %3911 = tail call i32 @llvm.ctpop.i32(i32 %3910) #9
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  %3914 = xor i8 %3913, 1
  store i8 %3914, i8* %88, align 1, !tbaa !2448
  %3915 = xor i64 %3901, %3851
  %3916 = trunc i64 %3915 to i32
  %3917 = xor i32 %3916, %3904
  %3918 = lshr i32 %3917, 4
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  store i8 %3920, i8* %93, align 1, !tbaa !2449
  %3921 = icmp eq i32 %3904, 0
  %3922 = zext i1 %3921 to i8
  store i8 %3922, i8* %96, align 1, !tbaa !2450
  %3923 = lshr i32 %3904, 31
  %3924 = trunc i32 %3923 to i8
  store i8 %3924, i8* %99, align 1, !tbaa !2451
  %3925 = lshr i32 %3903, 31
  %3926 = xor i32 %3923, %3862
  %3927 = xor i32 %3923, %3925
  %3928 = add nuw nsw i32 %3926, %3927
  %3929 = icmp eq i32 %3928, 2
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %105, align 1, !tbaa !2452
  %3931 = load i64, i64* %RBP, align 8
  %3932 = add i64 %3931, -76
  %3933 = add i64 %7361, 1292
  store i64 %3933, i64* %PC, align 8
  %3934 = inttoptr i64 %3932 to i32*
  %3935 = load i32, i32* %3934, align 4
  %3936 = add i32 %3935, -1
  %3937 = zext i32 %3936 to i64
  store i64 %3937, i64* %RSI, align 8, !tbaa !2428
  %3938 = lshr i32 %3936, 31
  %3939 = add i32 %3936, %3904
  %3940 = zext i32 %3939 to i64
  store i64 %3940, i64* %RDX, align 8, !tbaa !2428
  %3941 = icmp ult i32 %3939, %3904
  %3942 = icmp ult i32 %3939, %3936
  %3943 = or i1 %3941, %3942
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %82, align 1, !tbaa !2434
  %3945 = and i32 %3939, 255
  %3946 = tail call i32 @llvm.ctpop.i32(i32 %3945) #9
  %3947 = trunc i32 %3946 to i8
  %3948 = and i8 %3947, 1
  %3949 = xor i8 %3948, 1
  store i8 %3949, i8* %88, align 1, !tbaa !2448
  %3950 = xor i32 %3936, %3904
  %3951 = xor i32 %3950, %3939
  %3952 = lshr i32 %3951, 4
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  store i8 %3954, i8* %93, align 1, !tbaa !2449
  %3955 = icmp eq i32 %3939, 0
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %96, align 1, !tbaa !2450
  %3957 = lshr i32 %3939, 31
  %3958 = trunc i32 %3957 to i8
  store i8 %3958, i8* %99, align 1, !tbaa !2451
  %3959 = xor i32 %3957, %3923
  %3960 = xor i32 %3957, %3938
  %3961 = add nuw nsw i32 %3959, %3960
  %3962 = icmp eq i32 %3961, 2
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %105, align 1, !tbaa !2452
  %3964 = sext i32 %3939 to i64
  store i64 %3964, i64* %RCX, align 8, !tbaa !2428
  %3965 = load i64, i64* %RAX, align 8
  %3966 = shl nsw i64 %3964, 2
  %3967 = add i64 %3965, %3966
  %3968 = add i64 %7361, 1305
  store i64 %3968, i64* %PC, align 8
  %3969 = load <2 x float>, <2 x float>* %221, align 1
  %3970 = load <2 x i32>, <2 x i32>* %222, align 1
  %3971 = inttoptr i64 %3967 to float*
  %3972 = load float, float* %3971, align 4
  %3973 = extractelement <2 x float> %3969, i32 0
  %3974 = fadd float %3973, %3972
  store float %3974, float* %213, align 1, !tbaa !2453
  %3975 = bitcast <2 x float> %3969 to <2 x i32>
  %3976 = extractelement <2 x i32> %3975, i32 1
  store i32 %3976, i32* %223, align 1, !tbaa !2453
  %3977 = extractelement <2 x i32> %3970, i32 0
  store i32 %3977, i32* %224, align 1, !tbaa !2453
  %3978 = extractelement <2 x i32> %3970, i32 1
  store i32 %3978, i32* %225, align 1, !tbaa !2453
  %3979 = load <2 x float>, <2 x float>* %207, align 1
  %3980 = load <2 x i32>, <2 x i32>* %208, align 1
  %3981 = load <2 x float>, <2 x float>* %221, align 1
  %3982 = extractelement <2 x float> %3979, i32 0
  %3983 = extractelement <2 x float> %3981, i32 0
  %3984 = fmul float %3982, %3983
  store float %3984, float* %199, align 1, !tbaa !2453
  %3985 = bitcast <2 x float> %3979 to <2 x i32>
  %3986 = extractelement <2 x i32> %3985, i32 1
  store i32 %3986, i32* %209, align 1, !tbaa !2453
  %3987 = extractelement <2 x i32> %3980, i32 0
  store i32 %3987, i32* %210, align 1, !tbaa !2453
  %3988 = extractelement <2 x i32> %3980, i32 1
  store i32 %3988, i32* %211, align 1, !tbaa !2453
  %3989 = load <2 x float>, <2 x float>* %192, align 1
  %3990 = load <2 x i32>, <2 x i32>* %197, align 1
  %3991 = load <2 x float>, <2 x float>* %207, align 1
  %3992 = extractelement <2 x float> %3989, i32 0
  %3993 = extractelement <2 x float> %3991, i32 0
  %3994 = fadd float %3992, %3993
  store float %3994, float* %193, align 1, !tbaa !2453
  %3995 = bitcast <2 x float> %3989 to <2 x i32>
  %3996 = extractelement <2 x i32> %3995, i32 1
  store i32 %3996, i32* %188, align 1, !tbaa !2453
  %3997 = extractelement <2 x i32> %3990, i32 0
  store i32 %3997, i32* %189, align 1, !tbaa !2453
  %3998 = extractelement <2 x i32> %3990, i32 1
  store i32 %3998, i32* %191, align 1, !tbaa !2453
  %3999 = load i64, i64* %RBP, align 8
  %4000 = add i64 %3999, -24
  %4001 = add i64 %7361, 1317
  store i64 %4001, i64* %PC, align 8
  %4002 = inttoptr i64 %4000 to i64*
  %4003 = load i64, i64* %4002, align 8
  store i64 %4003, i64* %RAX, align 8, !tbaa !2428
  %4004 = add i64 %7361, 1320
  store i64 %4004, i64* %PC, align 8
  %4005 = inttoptr i64 %4003 to i64*
  %4006 = load i64, i64* %4005, align 8
  store i64 %4006, i64* %RAX, align 8, !tbaa !2428
  %4007 = add i64 %7361, 1324
  store i64 %4007, i64* %PC, align 8
  %4008 = load i64, i64* %4002, align 8
  store i64 %4008, i64* %RCX, align 8, !tbaa !2428
  %4009 = add i64 %4008, 12
  %4010 = add i64 %7361, 1327
  store i64 %4010, i64* %PC, align 8
  %4011 = inttoptr i64 %4009 to i32*
  %4012 = load i32, i32* %4011, align 4
  %4013 = shl i32 %4012, 1
  %4014 = icmp slt i32 %4012, 0
  %4015 = icmp slt i32 %4013, 0
  %4016 = xor i1 %4014, %4015
  %4017 = zext i32 %4013 to i64
  store i64 %4017, i64* %RDX, align 8, !tbaa !2428
  %.lobit7 = lshr i32 %4012, 31
  %4018 = trunc i32 %.lobit7 to i8
  store i8 %4018, i8* %82, align 1, !tbaa !2455
  %4019 = and i32 %4013, 254
  %4020 = tail call i32 @llvm.ctpop.i32(i32 %4019) #9
  %4021 = trunc i32 %4020 to i8
  %4022 = and i8 %4021, 1
  %4023 = xor i8 %4022, 1
  store i8 %4023, i8* %88, align 1, !tbaa !2455
  store i8 0, i8* %93, align 1, !tbaa !2455
  %4024 = icmp eq i32 %4013, 0
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %96, align 1, !tbaa !2455
  %4026 = lshr i32 %4012, 30
  %4027 = trunc i32 %4026 to i8
  %4028 = and i8 %4027, 1
  store i8 %4028, i8* %99, align 1, !tbaa !2455
  %4029 = zext i1 %4016 to i8
  store i8 %4029, i8* %105, align 1, !tbaa !2455
  %4030 = add i64 %7361, 1334
  store i64 %4030, i64* %PC, align 8
  %4031 = load i64, i64* %4002, align 8
  store i64 %4031, i64* %RCX, align 8, !tbaa !2428
  %4032 = add i64 %4031, 16
  %4033 = add i64 %7361, 1338
  store i64 %4033, i64* %PC, align 8
  %4034 = inttoptr i64 %4032 to i32*
  %4035 = load i32, i32* %4034, align 4
  %4036 = sext i32 %4013 to i64
  %4037 = sext i32 %4035 to i64
  %4038 = mul nsw i64 %4037, %4036
  %4039 = trunc i64 %4038 to i32
  %4040 = and i64 %4038, 4294967294
  store i64 %4040, i64* %RDX, align 8, !tbaa !2428
  %4041 = shl i64 %4038, 32
  %4042 = ashr exact i64 %4041, 32
  %4043 = icmp ne i64 %4042, %4038
  %4044 = zext i1 %4043 to i8
  store i8 %4044, i8* %82, align 1, !tbaa !2434
  %4045 = and i32 %4039, 254
  %4046 = tail call i32 @llvm.ctpop.i32(i32 %4045) #9
  %4047 = trunc i32 %4046 to i8
  %4048 = and i8 %4047, 1
  %4049 = xor i8 %4048, 1
  store i8 %4049, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4050 = lshr i32 %4039, 31
  %4051 = trunc i32 %4050 to i8
  store i8 %4051, i8* %99, align 1, !tbaa !2451
  store i8 %4044, i8* %105, align 1, !tbaa !2452
  %4052 = add i64 %7361, 1342
  store i64 %4052, i64* %PC, align 8
  %4053 = load i64, i64* %4002, align 8
  store i64 %4053, i64* %RCX, align 8, !tbaa !2428
  %4054 = add i64 %4053, 20
  %4055 = add i64 %7361, 1346
  store i64 %4055, i64* %PC, align 8
  %4056 = inttoptr i64 %4054 to i32*
  %4057 = load i32, i32* %4056, align 4
  %4058 = shl i64 %4038, 32
  %4059 = ashr exact i64 %4058, 32
  %4060 = sext i32 %4057 to i64
  %4061 = mul nsw i64 %4060, %4059
  %4062 = trunc i64 %4061 to i32
  %4063 = and i64 %4061, 4294967295
  store i64 %4063, i64* %RDX, align 8, !tbaa !2428
  %4064 = shl i64 %4061, 32
  %4065 = ashr exact i64 %4064, 32
  %4066 = icmp ne i64 %4065, %4061
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %82, align 1, !tbaa !2434
  %4068 = and i32 %4062, 255
  %4069 = tail call i32 @llvm.ctpop.i32(i32 %4068) #9
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  %4072 = xor i8 %4071, 1
  store i8 %4072, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4073 = lshr i32 %4062, 31
  %4074 = trunc i32 %4073 to i8
  store i8 %4074, i8* %99, align 1, !tbaa !2451
  store i8 %4067, i8* %105, align 1, !tbaa !2452
  %4075 = load i64, i64* %RBP, align 8
  %4076 = add i64 %4075, -68
  %4077 = add i64 %7361, 1349
  store i64 %4077, i64* %PC, align 8
  %4078 = inttoptr i64 %4076 to i32*
  %4079 = load i32, i32* %4078, align 4
  %4080 = zext i32 %4079 to i64
  store i64 %4080, i64* %RSI, align 8, !tbaa !2428
  %4081 = add i64 %4075, -24
  %4082 = add i64 %7361, 1353
  store i64 %4082, i64* %PC, align 8
  %4083 = inttoptr i64 %4081 to i64*
  %4084 = load i64, i64* %4083, align 8
  store i64 %4084, i64* %RCX, align 8, !tbaa !2428
  %4085 = add i64 %4084, 16
  %4086 = add i64 %7361, 1357
  store i64 %4086, i64* %PC, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = sext i32 %4079 to i64
  %4090 = sext i32 %4088 to i64
  %4091 = mul nsw i64 %4090, %4089
  %4092 = trunc i64 %4091 to i32
  %4093 = and i64 %4091, 4294967295
  store i64 %4093, i64* %RSI, align 8, !tbaa !2428
  %4094 = shl i64 %4091, 32
  %4095 = ashr exact i64 %4094, 32
  %4096 = icmp ne i64 %4095, %4091
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %82, align 1, !tbaa !2434
  %4098 = and i32 %4092, 255
  %4099 = tail call i32 @llvm.ctpop.i32(i32 %4098) #9
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  %4102 = xor i8 %4101, 1
  store i8 %4102, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4103 = lshr i32 %4092, 31
  %4104 = trunc i32 %4103 to i8
  store i8 %4104, i8* %99, align 1, !tbaa !2451
  store i8 %4097, i8* %105, align 1, !tbaa !2452
  %4105 = add i64 %7361, 1361
  store i64 %4105, i64* %PC, align 8
  %4106 = load i64, i64* %4083, align 8
  store i64 %4106, i64* %RCX, align 8, !tbaa !2428
  %4107 = add i64 %4106, 20
  %4108 = add i64 %7361, 1365
  store i64 %4108, i64* %PC, align 8
  %4109 = inttoptr i64 %4107 to i32*
  %4110 = load i32, i32* %4109, align 4
  %4111 = shl i64 %4091, 32
  %4112 = ashr exact i64 %4111, 32
  %4113 = sext i32 %4110 to i64
  %4114 = mul nsw i64 %4113, %4112
  %4115 = and i64 %4114, 4294967295
  store i64 %4115, i64* %RSI, align 8, !tbaa !2428
  %4116 = trunc i64 %4114 to i32
  %4117 = trunc i64 %4061 to i32
  %4118 = add i32 %4116, %4117
  %4119 = zext i32 %4118 to i64
  store i64 %4119, i64* %RDX, align 8, !tbaa !2428
  %4120 = icmp ult i32 %4118, %4117
  %4121 = icmp ult i32 %4118, %4116
  %4122 = or i1 %4120, %4121
  %4123 = zext i1 %4122 to i8
  store i8 %4123, i8* %82, align 1, !tbaa !2434
  %4124 = and i32 %4118, 255
  %4125 = tail call i32 @llvm.ctpop.i32(i32 %4124) #9
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  %4128 = xor i8 %4127, 1
  store i8 %4128, i8* %88, align 1, !tbaa !2448
  %4129 = xor i64 %4114, %4061
  %4130 = trunc i64 %4129 to i32
  %4131 = xor i32 %4130, %4118
  %4132 = lshr i32 %4131, 4
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  store i8 %4134, i8* %93, align 1, !tbaa !2449
  %4135 = icmp eq i32 %4118, 0
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %96, align 1, !tbaa !2450
  %4137 = lshr i32 %4118, 31
  %4138 = trunc i32 %4137 to i8
  store i8 %4138, i8* %99, align 1, !tbaa !2451
  %4139 = lshr i32 %4117, 31
  %4140 = lshr i32 %4116, 31
  %4141 = xor i32 %4137, %4139
  %4142 = xor i32 %4137, %4140
  %4143 = add nuw nsw i32 %4141, %4142
  %4144 = icmp eq i32 %4143, 2
  %4145 = zext i1 %4144 to i8
  store i8 %4145, i8* %105, align 1, !tbaa !2452
  %4146 = load i64, i64* %RBP, align 8
  %4147 = add i64 %4146, -72
  %4148 = add i64 %7361, 1370
  store i64 %4148, i64* %PC, align 8
  %4149 = inttoptr i64 %4147 to i32*
  %4150 = load i32, i32* %4149, align 4
  %4151 = zext i32 %4150 to i64
  store i64 %4151, i64* %RSI, align 8, !tbaa !2428
  %4152 = add i64 %4146, -24
  %4153 = add i64 %7361, 1374
  store i64 %4153, i64* %PC, align 8
  %4154 = inttoptr i64 %4152 to i64*
  %4155 = load i64, i64* %4154, align 8
  store i64 %4155, i64* %RCX, align 8, !tbaa !2428
  %4156 = add i64 %4155, 20
  %4157 = add i64 %7361, 1378
  store i64 %4157, i64* %PC, align 8
  %4158 = inttoptr i64 %4156 to i32*
  %4159 = load i32, i32* %4158, align 4
  %4160 = sext i32 %4150 to i64
  %4161 = sext i32 %4159 to i64
  %4162 = mul nsw i64 %4161, %4160
  %4163 = and i64 %4162, 4294967295
  store i64 %4163, i64* %RSI, align 8, !tbaa !2428
  %4164 = trunc i64 %4162 to i32
  %4165 = add i32 %4164, %4118
  %4166 = zext i32 %4165 to i64
  store i64 %4166, i64* %RDX, align 8, !tbaa !2428
  %4167 = icmp ult i32 %4165, %4118
  %4168 = icmp ult i32 %4165, %4164
  %4169 = or i1 %4167, %4168
  %4170 = zext i1 %4169 to i8
  store i8 %4170, i8* %82, align 1, !tbaa !2434
  %4171 = and i32 %4165, 255
  %4172 = tail call i32 @llvm.ctpop.i32(i32 %4171) #9
  %4173 = trunc i32 %4172 to i8
  %4174 = and i8 %4173, 1
  %4175 = xor i8 %4174, 1
  store i8 %4175, i8* %88, align 1, !tbaa !2448
  %4176 = xor i64 %4162, %4119
  %4177 = trunc i64 %4176 to i32
  %4178 = xor i32 %4177, %4165
  %4179 = lshr i32 %4178, 4
  %4180 = trunc i32 %4179 to i8
  %4181 = and i8 %4180, 1
  store i8 %4181, i8* %93, align 1, !tbaa !2449
  %4182 = icmp eq i32 %4165, 0
  %4183 = zext i1 %4182 to i8
  store i8 %4183, i8* %96, align 1, !tbaa !2450
  %4184 = lshr i32 %4165, 31
  %4185 = trunc i32 %4184 to i8
  store i8 %4185, i8* %99, align 1, !tbaa !2451
  %4186 = lshr i32 %4164, 31
  %4187 = xor i32 %4184, %4137
  %4188 = xor i32 %4184, %4186
  %4189 = add nuw nsw i32 %4187, %4188
  %4190 = icmp eq i32 %4189, 2
  %4191 = zext i1 %4190 to i8
  store i8 %4191, i8* %105, align 1, !tbaa !2452
  %4192 = add i64 %4146, -76
  %4193 = add i64 %7361, 1383
  store i64 %4193, i64* %PC, align 8
  %4194 = inttoptr i64 %4192 to i32*
  %4195 = load i32, i32* %4194, align 4
  %4196 = add i32 %4195, %4165
  %4197 = zext i32 %4196 to i64
  store i64 %4197, i64* %RDX, align 8, !tbaa !2428
  %4198 = icmp ult i32 %4196, %4165
  %4199 = icmp ult i32 %4196, %4195
  %4200 = or i1 %4198, %4199
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %82, align 1, !tbaa !2434
  %4202 = and i32 %4196, 255
  %4203 = tail call i32 @llvm.ctpop.i32(i32 %4202) #9
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  %4206 = xor i8 %4205, 1
  store i8 %4206, i8* %88, align 1, !tbaa !2448
  %4207 = xor i32 %4195, %4165
  %4208 = xor i32 %4207, %4196
  %4209 = lshr i32 %4208, 4
  %4210 = trunc i32 %4209 to i8
  %4211 = and i8 %4210, 1
  store i8 %4211, i8* %93, align 1, !tbaa !2449
  %4212 = icmp eq i32 %4196, 0
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %96, align 1, !tbaa !2450
  %4214 = lshr i32 %4196, 31
  %4215 = trunc i32 %4214 to i8
  store i8 %4215, i8* %99, align 1, !tbaa !2451
  %4216 = lshr i32 %4195, 31
  %4217 = xor i32 %4214, %4184
  %4218 = xor i32 %4214, %4216
  %4219 = add nuw nsw i32 %4217, %4218
  %4220 = icmp eq i32 %4219, 2
  %4221 = zext i1 %4220 to i8
  store i8 %4221, i8* %105, align 1, !tbaa !2452
  %4222 = sext i32 %4196 to i64
  store i64 %4222, i64* %RCX, align 8, !tbaa !2428
  %4223 = load i64, i64* %RAX, align 8
  %4224 = shl nsw i64 %4222, 2
  %4225 = add i64 %4223, %4224
  %4226 = add i64 %7361, 1391
  store i64 %4226, i64* %PC, align 8
  %4227 = inttoptr i64 %4225 to i32*
  %4228 = load i32, i32* %4227, align 4
  store i32 %4228, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %4229 = load i64, i64* %RBP, align 8
  %4230 = add i64 %4229, -40
  %4231 = add i64 %7361, 1395
  store i64 %4231, i64* %PC, align 8
  %4232 = inttoptr i64 %4230 to i64*
  %4233 = load i64, i64* %4232, align 8
  store i64 %4233, i64* %RAX, align 8, !tbaa !2428
  %4234 = add i64 %7361, 1398
  store i64 %4234, i64* %PC, align 8
  %4235 = inttoptr i64 %4233 to i64*
  %4236 = load i64, i64* %4235, align 8
  store i64 %4236, i64* %RAX, align 8, !tbaa !2428
  %4237 = add i64 %7361, 1402
  store i64 %4237, i64* %PC, align 8
  %4238 = load i64, i64* %4232, align 8
  store i64 %4238, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4239 = add i64 %7361, 1410
  store i64 %4239, i64* %PC, align 8
  %4240 = load i64, i64* %4232, align 8
  store i64 %4240, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4241 = add i64 %7361, 1418
  store i64 %4241, i64* %PC, align 8
  %4242 = load i64, i64* %4232, align 8
  store i64 %4242, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4243 = add i64 %4229, -68
  %4244 = add i64 %7361, 1425
  store i64 %4244, i64* %PC, align 8
  %4245 = inttoptr i64 %4243 to i32*
  %4246 = load i32, i32* %4245, align 4
  %4247 = add i32 %4246, 1
  %4248 = zext i32 %4247 to i64
  store i64 %4248, i64* %RSI, align 8, !tbaa !2428
  %4249 = icmp eq i32 %4246, -1
  %4250 = icmp eq i32 %4247, 0
  %4251 = or i1 %4249, %4250
  %4252 = zext i1 %4251 to i8
  store i8 %4252, i8* %82, align 1, !tbaa !2434
  %4253 = and i32 %4247, 255
  %4254 = tail call i32 @llvm.ctpop.i32(i32 %4253) #9
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  store i8 %4257, i8* %88, align 1, !tbaa !2448
  %4258 = xor i32 %4247, %4246
  %4259 = lshr i32 %4258, 4
  %4260 = trunc i32 %4259 to i8
  %4261 = and i8 %4260, 1
  store i8 %4261, i8* %93, align 1, !tbaa !2449
  %4262 = zext i1 %4250 to i8
  store i8 %4262, i8* %96, align 1, !tbaa !2450
  %4263 = lshr i32 %4247, 31
  %4264 = trunc i32 %4263 to i8
  store i8 %4264, i8* %99, align 1, !tbaa !2451
  %4265 = lshr i32 %4246, 31
  %4266 = xor i32 %4263, %4265
  %4267 = add nuw nsw i32 %4266, %4263
  %4268 = icmp eq i32 %4267, 2
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %105, align 1, !tbaa !2452
  %4270 = add i64 %7361, 1432
  store i64 %4270, i64* %PC, align 8
  %4271 = load i64, i64* %4232, align 8
  store i64 %4271, i64* %RCX, align 8, !tbaa !2428
  %4272 = add i64 %4271, 16
  %4273 = add i64 %7361, 1436
  store i64 %4273, i64* %PC, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = sext i32 %4247 to i64
  %4277 = sext i32 %4275 to i64
  %4278 = mul nsw i64 %4277, %4276
  %4279 = trunc i64 %4278 to i32
  %4280 = and i64 %4278, 4294967295
  store i64 %4280, i64* %RSI, align 8, !tbaa !2428
  %4281 = shl i64 %4278, 32
  %4282 = ashr exact i64 %4281, 32
  %4283 = icmp ne i64 %4282, %4278
  %4284 = zext i1 %4283 to i8
  store i8 %4284, i8* %82, align 1, !tbaa !2434
  %4285 = and i32 %4279, 255
  %4286 = tail call i32 @llvm.ctpop.i32(i32 %4285) #9
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = xor i8 %4288, 1
  store i8 %4289, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4290 = lshr i32 %4279, 31
  %4291 = trunc i32 %4290 to i8
  store i8 %4291, i8* %99, align 1, !tbaa !2451
  store i8 %4284, i8* %105, align 1, !tbaa !2452
  %4292 = load i64, i64* %RBP, align 8
  %4293 = add i64 %4292, -40
  %4294 = add i64 %7361, 1440
  store i64 %4294, i64* %PC, align 8
  %4295 = inttoptr i64 %4293 to i64*
  %4296 = load i64, i64* %4295, align 8
  store i64 %4296, i64* %RCX, align 8, !tbaa !2428
  %4297 = add i64 %4296, 20
  %4298 = add i64 %7361, 1444
  store i64 %4298, i64* %PC, align 8
  %4299 = inttoptr i64 %4297 to i32*
  %4300 = load i32, i32* %4299, align 4
  %4301 = shl i64 %4278, 32
  %4302 = ashr exact i64 %4301, 32
  %4303 = sext i32 %4300 to i64
  %4304 = mul nsw i64 %4303, %4302
  %4305 = and i64 %4304, 4294967295
  store i64 %4305, i64* %RSI, align 8, !tbaa !2428
  %4306 = load i64, i64* %RDX, align 8
  %4307 = trunc i64 %4304 to i32
  %4308 = trunc i64 %4306 to i32
  %4309 = add i32 %4307, %4308
  %4310 = zext i32 %4309 to i64
  store i64 %4310, i64* %RDX, align 8, !tbaa !2428
  %4311 = icmp ult i32 %4309, %4308
  %4312 = icmp ult i32 %4309, %4307
  %4313 = or i1 %4311, %4312
  %4314 = zext i1 %4313 to i8
  store i8 %4314, i8* %82, align 1, !tbaa !2434
  %4315 = and i32 %4309, 255
  %4316 = tail call i32 @llvm.ctpop.i32(i32 %4315) #9
  %4317 = trunc i32 %4316 to i8
  %4318 = and i8 %4317, 1
  %4319 = xor i8 %4318, 1
  store i8 %4319, i8* %88, align 1, !tbaa !2448
  %4320 = xor i64 %4304, %4306
  %4321 = trunc i64 %4320 to i32
  %4322 = xor i32 %4321, %4309
  %4323 = lshr i32 %4322, 4
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  store i8 %4325, i8* %93, align 1, !tbaa !2449
  %4326 = icmp eq i32 %4309, 0
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %96, align 1, !tbaa !2450
  %4328 = lshr i32 %4309, 31
  %4329 = trunc i32 %4328 to i8
  store i8 %4329, i8* %99, align 1, !tbaa !2451
  %4330 = lshr i32 %4308, 31
  %4331 = lshr i32 %4307, 31
  %4332 = xor i32 %4328, %4330
  %4333 = xor i32 %4328, %4331
  %4334 = add nuw nsw i32 %4332, %4333
  %4335 = icmp eq i32 %4334, 2
  %4336 = zext i1 %4335 to i8
  store i8 %4336, i8* %105, align 1, !tbaa !2452
  %4337 = add i64 %4292, -72
  %4338 = add i64 %7361, 1449
  store i64 %4338, i64* %PC, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = zext i32 %4340 to i64
  store i64 %4341, i64* %RSI, align 8, !tbaa !2428
  %4342 = add i64 %7361, 1453
  store i64 %4342, i64* %PC, align 8
  %4343 = load i64, i64* %4295, align 8
  store i64 %4343, i64* %RCX, align 8, !tbaa !2428
  %4344 = add i64 %4343, 20
  %4345 = add i64 %7361, 1457
  store i64 %4345, i64* %PC, align 8
  %4346 = inttoptr i64 %4344 to i32*
  %4347 = load i32, i32* %4346, align 4
  %4348 = sext i32 %4340 to i64
  %4349 = sext i32 %4347 to i64
  %4350 = mul nsw i64 %4349, %4348
  %4351 = and i64 %4350, 4294967295
  store i64 %4351, i64* %RSI, align 8, !tbaa !2428
  %4352 = trunc i64 %4350 to i32
  %4353 = add i32 %4352, %4309
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RDX, align 8, !tbaa !2428
  %4355 = icmp ult i32 %4353, %4309
  %4356 = icmp ult i32 %4353, %4352
  %4357 = or i1 %4355, %4356
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %82, align 1, !tbaa !2434
  %4359 = and i32 %4353, 255
  %4360 = tail call i32 @llvm.ctpop.i32(i32 %4359) #9
  %4361 = trunc i32 %4360 to i8
  %4362 = and i8 %4361, 1
  %4363 = xor i8 %4362, 1
  store i8 %4363, i8* %88, align 1, !tbaa !2448
  %4364 = xor i64 %4350, %4310
  %4365 = trunc i64 %4364 to i32
  %4366 = xor i32 %4365, %4353
  %4367 = lshr i32 %4366, 4
  %4368 = trunc i32 %4367 to i8
  %4369 = and i8 %4368, 1
  store i8 %4369, i8* %93, align 1, !tbaa !2449
  %4370 = icmp eq i32 %4353, 0
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %96, align 1, !tbaa !2450
  %4372 = lshr i32 %4353, 31
  %4373 = trunc i32 %4372 to i8
  store i8 %4373, i8* %99, align 1, !tbaa !2451
  %4374 = lshr i32 %4352, 31
  %4375 = xor i32 %4372, %4328
  %4376 = xor i32 %4372, %4374
  %4377 = add nuw nsw i32 %4375, %4376
  %4378 = icmp eq i32 %4377, 2
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %105, align 1, !tbaa !2452
  %4380 = load i64, i64* %RBP, align 8
  %4381 = add i64 %4380, -76
  %4382 = add i64 %7361, 1462
  store i64 %4382, i64* %PC, align 8
  %4383 = inttoptr i64 %4381 to i32*
  %4384 = load i32, i32* %4383, align 4
  %4385 = add i32 %4384, 1
  %4386 = zext i32 %4385 to i64
  store i64 %4386, i64* %RSI, align 8, !tbaa !2428
  %4387 = lshr i32 %4385, 31
  %4388 = add i32 %4385, %4353
  %4389 = zext i32 %4388 to i64
  store i64 %4389, i64* %RDX, align 8, !tbaa !2428
  %4390 = icmp ult i32 %4388, %4353
  %4391 = icmp ult i32 %4388, %4385
  %4392 = or i1 %4390, %4391
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %82, align 1, !tbaa !2434
  %4394 = and i32 %4388, 255
  %4395 = tail call i32 @llvm.ctpop.i32(i32 %4394) #9
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  %4398 = xor i8 %4397, 1
  store i8 %4398, i8* %88, align 1, !tbaa !2448
  %4399 = xor i32 %4385, %4353
  %4400 = xor i32 %4399, %4388
  %4401 = lshr i32 %4400, 4
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  store i8 %4403, i8* %93, align 1, !tbaa !2449
  %4404 = icmp eq i32 %4388, 0
  %4405 = zext i1 %4404 to i8
  store i8 %4405, i8* %96, align 1, !tbaa !2450
  %4406 = lshr i32 %4388, 31
  %4407 = trunc i32 %4406 to i8
  store i8 %4407, i8* %99, align 1, !tbaa !2451
  %4408 = xor i32 %4406, %4372
  %4409 = xor i32 %4406, %4387
  %4410 = add nuw nsw i32 %4408, %4409
  %4411 = icmp eq i32 %4410, 2
  %4412 = zext i1 %4411 to i8
  store i8 %4412, i8* %105, align 1, !tbaa !2452
  %4413 = sext i32 %4388 to i64
  store i64 %4413, i64* %RCX, align 8, !tbaa !2428
  %4414 = load i64, i64* %RAX, align 8
  %4415 = shl nsw i64 %4413, 2
  %4416 = add i64 %4414, %4415
  %4417 = add i64 %7361, 1475
  store i64 %4417, i64* %PC, align 8
  %4418 = inttoptr i64 %4416 to i32*
  %4419 = load i32, i32* %4418, align 4
  store i32 %4419, i32* %214, align 1, !tbaa !2453
  store float 0.000000e+00, float* %216, align 1, !tbaa !2453
  store float 0.000000e+00, float* %218, align 1, !tbaa !2453
  store float 0.000000e+00, float* %220, align 1, !tbaa !2453
  %4420 = add i64 %4380, -40
  %4421 = add i64 %7361, 1479
  store i64 %4421, i64* %PC, align 8
  %4422 = inttoptr i64 %4420 to i64*
  %4423 = load i64, i64* %4422, align 8
  store i64 %4423, i64* %RAX, align 8, !tbaa !2428
  %4424 = add i64 %7361, 1482
  store i64 %4424, i64* %PC, align 8
  %4425 = inttoptr i64 %4423 to i64*
  %4426 = load i64, i64* %4425, align 8
  store i64 %4426, i64* %RAX, align 8, !tbaa !2428
  %4427 = load i64, i64* %RBP, align 8
  %4428 = add i64 %4427, -40
  %4429 = add i64 %7361, 1486
  store i64 %4429, i64* %PC, align 8
  %4430 = inttoptr i64 %4428 to i64*
  %4431 = load i64, i64* %4430, align 8
  store i64 %4431, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4432 = add i64 %7361, 1494
  store i64 %4432, i64* %PC, align 8
  %4433 = load i64, i64* %4430, align 8
  store i64 %4433, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4434 = add i64 %7361, 1502
  store i64 %4434, i64* %PC, align 8
  %4435 = load i64, i64* %4430, align 8
  store i64 %4435, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4436 = add i64 %4427, -68
  %4437 = add i64 %7361, 1509
  store i64 %4437, i64* %PC, align 8
  %4438 = inttoptr i64 %4436 to i32*
  %4439 = load i32, i32* %4438, align 4
  %4440 = add i32 %4439, -1
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %RSI, align 8, !tbaa !2428
  %4442 = icmp eq i32 %4439, 0
  %4443 = zext i1 %4442 to i8
  store i8 %4443, i8* %82, align 1, !tbaa !2434
  %4444 = and i32 %4440, 255
  %4445 = tail call i32 @llvm.ctpop.i32(i32 %4444) #9
  %4446 = trunc i32 %4445 to i8
  %4447 = and i8 %4446, 1
  %4448 = xor i8 %4447, 1
  store i8 %4448, i8* %88, align 1, !tbaa !2448
  %4449 = xor i32 %4440, %4439
  %4450 = lshr i32 %4449, 4
  %4451 = trunc i32 %4450 to i8
  %4452 = and i8 %4451, 1
  store i8 %4452, i8* %93, align 1, !tbaa !2449
  %4453 = icmp eq i32 %4440, 0
  %4454 = zext i1 %4453 to i8
  store i8 %4454, i8* %96, align 1, !tbaa !2450
  %4455 = lshr i32 %4440, 31
  %4456 = trunc i32 %4455 to i8
  store i8 %4456, i8* %99, align 1, !tbaa !2451
  %4457 = lshr i32 %4439, 31
  %4458 = xor i32 %4455, %4457
  %4459 = add nuw nsw i32 %4458, %4457
  %4460 = icmp eq i32 %4459, 2
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %105, align 1, !tbaa !2452
  %4462 = add i64 %7361, 1516
  store i64 %4462, i64* %PC, align 8
  %4463 = load i64, i64* %4430, align 8
  store i64 %4463, i64* %RCX, align 8, !tbaa !2428
  %4464 = add i64 %4463, 16
  %4465 = add i64 %7361, 1520
  store i64 %4465, i64* %PC, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = sext i32 %4440 to i64
  %4469 = sext i32 %4467 to i64
  %4470 = mul nsw i64 %4469, %4468
  %4471 = trunc i64 %4470 to i32
  %4472 = and i64 %4470, 4294967295
  store i64 %4472, i64* %RSI, align 8, !tbaa !2428
  %4473 = shl i64 %4470, 32
  %4474 = ashr exact i64 %4473, 32
  %4475 = icmp ne i64 %4474, %4470
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %82, align 1, !tbaa !2434
  %4477 = and i32 %4471, 255
  %4478 = tail call i32 @llvm.ctpop.i32(i32 %4477) #9
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  store i8 %4481, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4482 = lshr i32 %4471, 31
  %4483 = trunc i32 %4482 to i8
  store i8 %4483, i8* %99, align 1, !tbaa !2451
  store i8 %4476, i8* %105, align 1, !tbaa !2452
  %4484 = load i64, i64* %RBP, align 8
  %4485 = add i64 %4484, -40
  %4486 = add i64 %7361, 1524
  store i64 %4486, i64* %PC, align 8
  %4487 = inttoptr i64 %4485 to i64*
  %4488 = load i64, i64* %4487, align 8
  store i64 %4488, i64* %RCX, align 8, !tbaa !2428
  %4489 = add i64 %4488, 20
  %4490 = add i64 %7361, 1528
  store i64 %4490, i64* %PC, align 8
  %4491 = inttoptr i64 %4489 to i32*
  %4492 = load i32, i32* %4491, align 4
  %4493 = shl i64 %4470, 32
  %4494 = ashr exact i64 %4493, 32
  %4495 = sext i32 %4492 to i64
  %4496 = mul nsw i64 %4495, %4494
  %4497 = and i64 %4496, 4294967295
  store i64 %4497, i64* %RSI, align 8, !tbaa !2428
  %4498 = load i64, i64* %RDX, align 8
  %4499 = trunc i64 %4496 to i32
  %4500 = trunc i64 %4498 to i32
  %4501 = add i32 %4499, %4500
  %4502 = zext i32 %4501 to i64
  store i64 %4502, i64* %RDX, align 8, !tbaa !2428
  %4503 = icmp ult i32 %4501, %4500
  %4504 = icmp ult i32 %4501, %4499
  %4505 = or i1 %4503, %4504
  %4506 = zext i1 %4505 to i8
  store i8 %4506, i8* %82, align 1, !tbaa !2434
  %4507 = and i32 %4501, 255
  %4508 = tail call i32 @llvm.ctpop.i32(i32 %4507) #9
  %4509 = trunc i32 %4508 to i8
  %4510 = and i8 %4509, 1
  %4511 = xor i8 %4510, 1
  store i8 %4511, i8* %88, align 1, !tbaa !2448
  %4512 = xor i64 %4496, %4498
  %4513 = trunc i64 %4512 to i32
  %4514 = xor i32 %4513, %4501
  %4515 = lshr i32 %4514, 4
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  store i8 %4517, i8* %93, align 1, !tbaa !2449
  %4518 = icmp eq i32 %4501, 0
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %96, align 1, !tbaa !2450
  %4520 = lshr i32 %4501, 31
  %4521 = trunc i32 %4520 to i8
  store i8 %4521, i8* %99, align 1, !tbaa !2451
  %4522 = lshr i32 %4500, 31
  %4523 = lshr i32 %4499, 31
  %4524 = xor i32 %4520, %4522
  %4525 = xor i32 %4520, %4523
  %4526 = add nuw nsw i32 %4524, %4525
  %4527 = icmp eq i32 %4526, 2
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %105, align 1, !tbaa !2452
  %4529 = add i64 %4484, -72
  %4530 = add i64 %7361, 1533
  store i64 %4530, i64* %PC, align 8
  %4531 = inttoptr i64 %4529 to i32*
  %4532 = load i32, i32* %4531, align 4
  %4533 = zext i32 %4532 to i64
  store i64 %4533, i64* %RSI, align 8, !tbaa !2428
  %4534 = add i64 %7361, 1537
  store i64 %4534, i64* %PC, align 8
  %4535 = load i64, i64* %4487, align 8
  store i64 %4535, i64* %RCX, align 8, !tbaa !2428
  %4536 = add i64 %4535, 20
  %4537 = add i64 %7361, 1541
  store i64 %4537, i64* %PC, align 8
  %4538 = inttoptr i64 %4536 to i32*
  %4539 = load i32, i32* %4538, align 4
  %4540 = sext i32 %4532 to i64
  %4541 = sext i32 %4539 to i64
  %4542 = mul nsw i64 %4541, %4540
  %4543 = and i64 %4542, 4294967295
  store i64 %4543, i64* %RSI, align 8, !tbaa !2428
  %4544 = trunc i64 %4542 to i32
  %4545 = add i32 %4544, %4501
  %4546 = zext i32 %4545 to i64
  store i64 %4546, i64* %RDX, align 8, !tbaa !2428
  %4547 = icmp ult i32 %4545, %4501
  %4548 = icmp ult i32 %4545, %4544
  %4549 = or i1 %4547, %4548
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %82, align 1, !tbaa !2434
  %4551 = and i32 %4545, 255
  %4552 = tail call i32 @llvm.ctpop.i32(i32 %4551) #9
  %4553 = trunc i32 %4552 to i8
  %4554 = and i8 %4553, 1
  %4555 = xor i8 %4554, 1
  store i8 %4555, i8* %88, align 1, !tbaa !2448
  %4556 = xor i64 %4542, %4502
  %4557 = trunc i64 %4556 to i32
  %4558 = xor i32 %4557, %4545
  %4559 = lshr i32 %4558, 4
  %4560 = trunc i32 %4559 to i8
  %4561 = and i8 %4560, 1
  store i8 %4561, i8* %93, align 1, !tbaa !2449
  %4562 = icmp eq i32 %4545, 0
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %96, align 1, !tbaa !2450
  %4564 = lshr i32 %4545, 31
  %4565 = trunc i32 %4564 to i8
  store i8 %4565, i8* %99, align 1, !tbaa !2451
  %4566 = lshr i32 %4544, 31
  %4567 = xor i32 %4564, %4520
  %4568 = xor i32 %4564, %4566
  %4569 = add nuw nsw i32 %4567, %4568
  %4570 = icmp eq i32 %4569, 2
  %4571 = zext i1 %4570 to i8
  store i8 %4571, i8* %105, align 1, !tbaa !2452
  %4572 = load i64, i64* %RBP, align 8
  %4573 = add i64 %4572, -76
  %4574 = add i64 %7361, 1546
  store i64 %4574, i64* %PC, align 8
  %4575 = inttoptr i64 %4573 to i32*
  %4576 = load i32, i32* %4575, align 4
  %4577 = add i32 %4576, 1
  %4578 = zext i32 %4577 to i64
  store i64 %4578, i64* %RSI, align 8, !tbaa !2428
  %4579 = lshr i32 %4577, 31
  %4580 = add i32 %4577, %4545
  %4581 = zext i32 %4580 to i64
  store i64 %4581, i64* %RDX, align 8, !tbaa !2428
  %4582 = icmp ult i32 %4580, %4545
  %4583 = icmp ult i32 %4580, %4577
  %4584 = or i1 %4582, %4583
  %4585 = zext i1 %4584 to i8
  store i8 %4585, i8* %82, align 1, !tbaa !2434
  %4586 = and i32 %4580, 255
  %4587 = tail call i32 @llvm.ctpop.i32(i32 %4586) #9
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  store i8 %4590, i8* %88, align 1, !tbaa !2448
  %4591 = xor i32 %4577, %4545
  %4592 = xor i32 %4591, %4580
  %4593 = lshr i32 %4592, 4
  %4594 = trunc i32 %4593 to i8
  %4595 = and i8 %4594, 1
  store i8 %4595, i8* %93, align 1, !tbaa !2449
  %4596 = icmp eq i32 %4580, 0
  %4597 = zext i1 %4596 to i8
  store i8 %4597, i8* %96, align 1, !tbaa !2450
  %4598 = lshr i32 %4580, 31
  %4599 = trunc i32 %4598 to i8
  store i8 %4599, i8* %99, align 1, !tbaa !2451
  %4600 = xor i32 %4598, %4564
  %4601 = xor i32 %4598, %4579
  %4602 = add nuw nsw i32 %4600, %4601
  %4603 = icmp eq i32 %4602, 2
  %4604 = zext i1 %4603 to i8
  store i8 %4604, i8* %105, align 1, !tbaa !2452
  %4605 = sext i32 %4580 to i64
  store i64 %4605, i64* %RCX, align 8, !tbaa !2428
  %4606 = load i64, i64* %RAX, align 8
  %4607 = shl nsw i64 %4605, 2
  %4608 = add i64 %4606, %4607
  %4609 = add i64 %7361, 1559
  store i64 %4609, i64* %PC, align 8
  %4610 = load <2 x float>, <2 x float>* %221, align 1
  %4611 = load <2 x i32>, <2 x i32>* %222, align 1
  %4612 = inttoptr i64 %4608 to float*
  %4613 = load float, float* %4612, align 4
  %4614 = extractelement <2 x float> %4610, i32 0
  %4615 = fsub float %4614, %4613
  store float %4615, float* %213, align 1, !tbaa !2453
  %4616 = bitcast <2 x float> %4610 to <2 x i32>
  %4617 = extractelement <2 x i32> %4616, i32 1
  store i32 %4617, i32* %223, align 1, !tbaa !2453
  %4618 = extractelement <2 x i32> %4611, i32 0
  store i32 %4618, i32* %224, align 1, !tbaa !2453
  %4619 = extractelement <2 x i32> %4611, i32 1
  store i32 %4619, i32* %225, align 1, !tbaa !2453
  %4620 = load i64, i64* %RBP, align 8
  %4621 = add i64 %4620, -40
  %4622 = add i64 %7361, 1563
  store i64 %4622, i64* %PC, align 8
  %4623 = inttoptr i64 %4621 to i64*
  %4624 = load i64, i64* %4623, align 8
  store i64 %4624, i64* %RAX, align 8, !tbaa !2428
  %4625 = add i64 %7361, 1566
  store i64 %4625, i64* %PC, align 8
  %4626 = inttoptr i64 %4624 to i64*
  %4627 = load i64, i64* %4626, align 8
  store i64 %4627, i64* %RAX, align 8, !tbaa !2428
  %4628 = add i64 %7361, 1570
  store i64 %4628, i64* %PC, align 8
  %4629 = load i64, i64* %4623, align 8
  store i64 %4629, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4630 = add i64 %7361, 1578
  store i64 %4630, i64* %PC, align 8
  %4631 = load i64, i64* %4623, align 8
  store i64 %4631, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4632 = add i64 %7361, 1586
  store i64 %4632, i64* %PC, align 8
  %4633 = load i64, i64* %4623, align 8
  store i64 %4633, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4634 = add i64 %4620, -68
  %4635 = add i64 %7361, 1593
  store i64 %4635, i64* %PC, align 8
  %4636 = inttoptr i64 %4634 to i32*
  %4637 = load i32, i32* %4636, align 4
  %4638 = add i32 %4637, 1
  %4639 = zext i32 %4638 to i64
  store i64 %4639, i64* %RSI, align 8, !tbaa !2428
  %4640 = icmp eq i32 %4637, -1
  %4641 = icmp eq i32 %4638, 0
  %4642 = or i1 %4640, %4641
  %4643 = zext i1 %4642 to i8
  store i8 %4643, i8* %82, align 1, !tbaa !2434
  %4644 = and i32 %4638, 255
  %4645 = tail call i32 @llvm.ctpop.i32(i32 %4644) #9
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = xor i8 %4647, 1
  store i8 %4648, i8* %88, align 1, !tbaa !2448
  %4649 = xor i32 %4638, %4637
  %4650 = lshr i32 %4649, 4
  %4651 = trunc i32 %4650 to i8
  %4652 = and i8 %4651, 1
  store i8 %4652, i8* %93, align 1, !tbaa !2449
  %4653 = zext i1 %4641 to i8
  store i8 %4653, i8* %96, align 1, !tbaa !2450
  %4654 = lshr i32 %4638, 31
  %4655 = trunc i32 %4654 to i8
  store i8 %4655, i8* %99, align 1, !tbaa !2451
  %4656 = lshr i32 %4637, 31
  %4657 = xor i32 %4654, %4656
  %4658 = add nuw nsw i32 %4657, %4654
  %4659 = icmp eq i32 %4658, 2
  %4660 = zext i1 %4659 to i8
  store i8 %4660, i8* %105, align 1, !tbaa !2452
  %4661 = add i64 %7361, 1600
  store i64 %4661, i64* %PC, align 8
  %4662 = load i64, i64* %4623, align 8
  store i64 %4662, i64* %RCX, align 8, !tbaa !2428
  %4663 = add i64 %4662, 16
  %4664 = add i64 %7361, 1604
  store i64 %4664, i64* %PC, align 8
  %4665 = inttoptr i64 %4663 to i32*
  %4666 = load i32, i32* %4665, align 4
  %4667 = sext i32 %4638 to i64
  %4668 = sext i32 %4666 to i64
  %4669 = mul nsw i64 %4668, %4667
  %4670 = trunc i64 %4669 to i32
  %4671 = and i64 %4669, 4294967295
  store i64 %4671, i64* %RSI, align 8, !tbaa !2428
  %4672 = shl i64 %4669, 32
  %4673 = ashr exact i64 %4672, 32
  %4674 = icmp ne i64 %4673, %4669
  %4675 = zext i1 %4674 to i8
  store i8 %4675, i8* %82, align 1, !tbaa !2434
  %4676 = and i32 %4670, 255
  %4677 = tail call i32 @llvm.ctpop.i32(i32 %4676) #9
  %4678 = trunc i32 %4677 to i8
  %4679 = and i8 %4678, 1
  %4680 = xor i8 %4679, 1
  store i8 %4680, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4681 = lshr i32 %4670, 31
  %4682 = trunc i32 %4681 to i8
  store i8 %4682, i8* %99, align 1, !tbaa !2451
  store i8 %4675, i8* %105, align 1, !tbaa !2452
  %4683 = load i64, i64* %RBP, align 8
  %4684 = add i64 %4683, -40
  %4685 = add i64 %7361, 1608
  store i64 %4685, i64* %PC, align 8
  %4686 = inttoptr i64 %4684 to i64*
  %4687 = load i64, i64* %4686, align 8
  store i64 %4687, i64* %RCX, align 8, !tbaa !2428
  %4688 = add i64 %4687, 20
  %4689 = add i64 %7361, 1612
  store i64 %4689, i64* %PC, align 8
  %4690 = inttoptr i64 %4688 to i32*
  %4691 = load i32, i32* %4690, align 4
  %4692 = shl i64 %4669, 32
  %4693 = ashr exact i64 %4692, 32
  %4694 = sext i32 %4691 to i64
  %4695 = mul nsw i64 %4694, %4693
  %4696 = and i64 %4695, 4294967295
  store i64 %4696, i64* %RSI, align 8, !tbaa !2428
  %4697 = load i64, i64* %RDX, align 8
  %4698 = trunc i64 %4695 to i32
  %4699 = trunc i64 %4697 to i32
  %4700 = add i32 %4698, %4699
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RDX, align 8, !tbaa !2428
  %4702 = icmp ult i32 %4700, %4699
  %4703 = icmp ult i32 %4700, %4698
  %4704 = or i1 %4702, %4703
  %4705 = zext i1 %4704 to i8
  store i8 %4705, i8* %82, align 1, !tbaa !2434
  %4706 = and i32 %4700, 255
  %4707 = tail call i32 @llvm.ctpop.i32(i32 %4706) #9
  %4708 = trunc i32 %4707 to i8
  %4709 = and i8 %4708, 1
  %4710 = xor i8 %4709, 1
  store i8 %4710, i8* %88, align 1, !tbaa !2448
  %4711 = xor i64 %4695, %4697
  %4712 = trunc i64 %4711 to i32
  %4713 = xor i32 %4712, %4700
  %4714 = lshr i32 %4713, 4
  %4715 = trunc i32 %4714 to i8
  %4716 = and i8 %4715, 1
  store i8 %4716, i8* %93, align 1, !tbaa !2449
  %4717 = icmp eq i32 %4700, 0
  %4718 = zext i1 %4717 to i8
  store i8 %4718, i8* %96, align 1, !tbaa !2450
  %4719 = lshr i32 %4700, 31
  %4720 = trunc i32 %4719 to i8
  store i8 %4720, i8* %99, align 1, !tbaa !2451
  %4721 = lshr i32 %4699, 31
  %4722 = lshr i32 %4698, 31
  %4723 = xor i32 %4719, %4721
  %4724 = xor i32 %4719, %4722
  %4725 = add nuw nsw i32 %4723, %4724
  %4726 = icmp eq i32 %4725, 2
  %4727 = zext i1 %4726 to i8
  store i8 %4727, i8* %105, align 1, !tbaa !2452
  %4728 = add i64 %4683, -72
  %4729 = add i64 %7361, 1617
  store i64 %4729, i64* %PC, align 8
  %4730 = inttoptr i64 %4728 to i32*
  %4731 = load i32, i32* %4730, align 4
  %4732 = zext i32 %4731 to i64
  store i64 %4732, i64* %RSI, align 8, !tbaa !2428
  %4733 = add i64 %7361, 1621
  store i64 %4733, i64* %PC, align 8
  %4734 = load i64, i64* %4686, align 8
  store i64 %4734, i64* %RCX, align 8, !tbaa !2428
  %4735 = add i64 %4734, 20
  %4736 = add i64 %7361, 1625
  store i64 %4736, i64* %PC, align 8
  %4737 = inttoptr i64 %4735 to i32*
  %4738 = load i32, i32* %4737, align 4
  %4739 = sext i32 %4731 to i64
  %4740 = sext i32 %4738 to i64
  %4741 = mul nsw i64 %4740, %4739
  %4742 = and i64 %4741, 4294967295
  store i64 %4742, i64* %RSI, align 8, !tbaa !2428
  %4743 = trunc i64 %4741 to i32
  %4744 = add i32 %4743, %4700
  %4745 = zext i32 %4744 to i64
  store i64 %4745, i64* %RDX, align 8, !tbaa !2428
  %4746 = icmp ult i32 %4744, %4700
  %4747 = icmp ult i32 %4744, %4743
  %4748 = or i1 %4746, %4747
  %4749 = zext i1 %4748 to i8
  store i8 %4749, i8* %82, align 1, !tbaa !2434
  %4750 = and i32 %4744, 255
  %4751 = tail call i32 @llvm.ctpop.i32(i32 %4750) #9
  %4752 = trunc i32 %4751 to i8
  %4753 = and i8 %4752, 1
  %4754 = xor i8 %4753, 1
  store i8 %4754, i8* %88, align 1, !tbaa !2448
  %4755 = xor i64 %4741, %4701
  %4756 = trunc i64 %4755 to i32
  %4757 = xor i32 %4756, %4744
  %4758 = lshr i32 %4757, 4
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  store i8 %4760, i8* %93, align 1, !tbaa !2449
  %4761 = icmp eq i32 %4744, 0
  %4762 = zext i1 %4761 to i8
  store i8 %4762, i8* %96, align 1, !tbaa !2450
  %4763 = lshr i32 %4744, 31
  %4764 = trunc i32 %4763 to i8
  store i8 %4764, i8* %99, align 1, !tbaa !2451
  %4765 = lshr i32 %4743, 31
  %4766 = xor i32 %4763, %4719
  %4767 = xor i32 %4763, %4765
  %4768 = add nuw nsw i32 %4766, %4767
  %4769 = icmp eq i32 %4768, 2
  %4770 = zext i1 %4769 to i8
  store i8 %4770, i8* %105, align 1, !tbaa !2452
  %4771 = load i64, i64* %RBP, align 8
  %4772 = add i64 %4771, -76
  %4773 = add i64 %7361, 1630
  store i64 %4773, i64* %PC, align 8
  %4774 = inttoptr i64 %4772 to i32*
  %4775 = load i32, i32* %4774, align 4
  %4776 = add i32 %4775, -1
  %4777 = zext i32 %4776 to i64
  store i64 %4777, i64* %RSI, align 8, !tbaa !2428
  %4778 = lshr i32 %4776, 31
  %4779 = add i32 %4776, %4744
  %4780 = zext i32 %4779 to i64
  store i64 %4780, i64* %RDX, align 8, !tbaa !2428
  %4781 = icmp ult i32 %4779, %4744
  %4782 = icmp ult i32 %4779, %4776
  %4783 = or i1 %4781, %4782
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %82, align 1, !tbaa !2434
  %4785 = and i32 %4779, 255
  %4786 = tail call i32 @llvm.ctpop.i32(i32 %4785) #9
  %4787 = trunc i32 %4786 to i8
  %4788 = and i8 %4787, 1
  %4789 = xor i8 %4788, 1
  store i8 %4789, i8* %88, align 1, !tbaa !2448
  %4790 = xor i32 %4776, %4744
  %4791 = xor i32 %4790, %4779
  %4792 = lshr i32 %4791, 4
  %4793 = trunc i32 %4792 to i8
  %4794 = and i8 %4793, 1
  store i8 %4794, i8* %93, align 1, !tbaa !2449
  %4795 = icmp eq i32 %4779, 0
  %4796 = zext i1 %4795 to i8
  store i8 %4796, i8* %96, align 1, !tbaa !2450
  %4797 = lshr i32 %4779, 31
  %4798 = trunc i32 %4797 to i8
  store i8 %4798, i8* %99, align 1, !tbaa !2451
  %4799 = xor i32 %4797, %4763
  %4800 = xor i32 %4797, %4778
  %4801 = add nuw nsw i32 %4799, %4800
  %4802 = icmp eq i32 %4801, 2
  %4803 = zext i1 %4802 to i8
  store i8 %4803, i8* %105, align 1, !tbaa !2452
  %4804 = sext i32 %4779 to i64
  store i64 %4804, i64* %RCX, align 8, !tbaa !2428
  %4805 = load i64, i64* %RAX, align 8
  %4806 = shl nsw i64 %4804, 2
  %4807 = add i64 %4805, %4806
  %4808 = add i64 %7361, 1643
  store i64 %4808, i64* %PC, align 8
  %4809 = load <2 x float>, <2 x float>* %221, align 1
  %4810 = load <2 x i32>, <2 x i32>* %222, align 1
  %4811 = inttoptr i64 %4807 to float*
  %4812 = load float, float* %4811, align 4
  %4813 = extractelement <2 x float> %4809, i32 0
  %4814 = fsub float %4813, %4812
  store float %4814, float* %213, align 1, !tbaa !2453
  %4815 = bitcast <2 x float> %4809 to <2 x i32>
  %4816 = extractelement <2 x i32> %4815, i32 1
  store i32 %4816, i32* %223, align 1, !tbaa !2453
  %4817 = extractelement <2 x i32> %4810, i32 0
  store i32 %4817, i32* %224, align 1, !tbaa !2453
  %4818 = extractelement <2 x i32> %4810, i32 1
  store i32 %4818, i32* %225, align 1, !tbaa !2453
  %4819 = load i64, i64* %RBP, align 8
  %4820 = add i64 %4819, -40
  %4821 = add i64 %7361, 1647
  store i64 %4821, i64* %PC, align 8
  %4822 = inttoptr i64 %4820 to i64*
  %4823 = load i64, i64* %4822, align 8
  store i64 %4823, i64* %RAX, align 8, !tbaa !2428
  %4824 = add i64 %7361, 1650
  store i64 %4824, i64* %PC, align 8
  %4825 = inttoptr i64 %4823 to i64*
  %4826 = load i64, i64* %4825, align 8
  store i64 %4826, i64* %RAX, align 8, !tbaa !2428
  %4827 = add i64 %7361, 1654
  store i64 %4827, i64* %PC, align 8
  %4828 = load i64, i64* %4822, align 8
  store i64 %4828, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4829 = add i64 %7361, 1662
  store i64 %4829, i64* %PC, align 8
  %4830 = load i64, i64* %4822, align 8
  store i64 %4830, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4831 = add i64 %7361, 1670
  store i64 %4831, i64* %PC, align 8
  %4832 = load i64, i64* %4822, align 8
  store i64 %4832, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %4833 = add i64 %4819, -68
  %4834 = add i64 %7361, 1677
  store i64 %4834, i64* %PC, align 8
  %4835 = inttoptr i64 %4833 to i32*
  %4836 = load i32, i32* %4835, align 4
  %4837 = add i32 %4836, -1
  %4838 = zext i32 %4837 to i64
  store i64 %4838, i64* %RSI, align 8, !tbaa !2428
  %4839 = icmp eq i32 %4836, 0
  %4840 = zext i1 %4839 to i8
  store i8 %4840, i8* %82, align 1, !tbaa !2434
  %4841 = and i32 %4837, 255
  %4842 = tail call i32 @llvm.ctpop.i32(i32 %4841) #9
  %4843 = trunc i32 %4842 to i8
  %4844 = and i8 %4843, 1
  %4845 = xor i8 %4844, 1
  store i8 %4845, i8* %88, align 1, !tbaa !2448
  %4846 = xor i32 %4837, %4836
  %4847 = lshr i32 %4846, 4
  %4848 = trunc i32 %4847 to i8
  %4849 = and i8 %4848, 1
  store i8 %4849, i8* %93, align 1, !tbaa !2449
  %4850 = icmp eq i32 %4837, 0
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %96, align 1, !tbaa !2450
  %4852 = lshr i32 %4837, 31
  %4853 = trunc i32 %4852 to i8
  store i8 %4853, i8* %99, align 1, !tbaa !2451
  %4854 = lshr i32 %4836, 31
  %4855 = xor i32 %4852, %4854
  %4856 = add nuw nsw i32 %4855, %4854
  %4857 = icmp eq i32 %4856, 2
  %4858 = zext i1 %4857 to i8
  store i8 %4858, i8* %105, align 1, !tbaa !2452
  %4859 = add i64 %7361, 1684
  store i64 %4859, i64* %PC, align 8
  %4860 = load i64, i64* %4822, align 8
  store i64 %4860, i64* %RCX, align 8, !tbaa !2428
  %4861 = add i64 %4860, 16
  %4862 = add i64 %7361, 1688
  store i64 %4862, i64* %PC, align 8
  %4863 = inttoptr i64 %4861 to i32*
  %4864 = load i32, i32* %4863, align 4
  %4865 = sext i32 %4837 to i64
  %4866 = sext i32 %4864 to i64
  %4867 = mul nsw i64 %4866, %4865
  %4868 = trunc i64 %4867 to i32
  %4869 = and i64 %4867, 4294967295
  store i64 %4869, i64* %RSI, align 8, !tbaa !2428
  %4870 = shl i64 %4867, 32
  %4871 = ashr exact i64 %4870, 32
  %4872 = icmp ne i64 %4871, %4867
  %4873 = zext i1 %4872 to i8
  store i8 %4873, i8* %82, align 1, !tbaa !2434
  %4874 = and i32 %4868, 255
  %4875 = tail call i32 @llvm.ctpop.i32(i32 %4874) #9
  %4876 = trunc i32 %4875 to i8
  %4877 = and i8 %4876, 1
  %4878 = xor i8 %4877, 1
  store i8 %4878, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %4879 = lshr i32 %4868, 31
  %4880 = trunc i32 %4879 to i8
  store i8 %4880, i8* %99, align 1, !tbaa !2451
  store i8 %4873, i8* %105, align 1, !tbaa !2452
  %4881 = load i64, i64* %RBP, align 8
  %4882 = add i64 %4881, -40
  %4883 = add i64 %7361, 1692
  store i64 %4883, i64* %PC, align 8
  %4884 = inttoptr i64 %4882 to i64*
  %4885 = load i64, i64* %4884, align 8
  store i64 %4885, i64* %RCX, align 8, !tbaa !2428
  %4886 = add i64 %4885, 20
  %4887 = add i64 %7361, 1696
  store i64 %4887, i64* %PC, align 8
  %4888 = inttoptr i64 %4886 to i32*
  %4889 = load i32, i32* %4888, align 4
  %4890 = shl i64 %4867, 32
  %4891 = ashr exact i64 %4890, 32
  %4892 = sext i32 %4889 to i64
  %4893 = mul nsw i64 %4892, %4891
  %4894 = and i64 %4893, 4294967295
  store i64 %4894, i64* %RSI, align 8, !tbaa !2428
  %4895 = load i64, i64* %RDX, align 8
  %4896 = trunc i64 %4893 to i32
  %4897 = trunc i64 %4895 to i32
  %4898 = add i32 %4896, %4897
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RDX, align 8, !tbaa !2428
  %4900 = icmp ult i32 %4898, %4897
  %4901 = icmp ult i32 %4898, %4896
  %4902 = or i1 %4900, %4901
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %82, align 1, !tbaa !2434
  %4904 = and i32 %4898, 255
  %4905 = tail call i32 @llvm.ctpop.i32(i32 %4904) #9
  %4906 = trunc i32 %4905 to i8
  %4907 = and i8 %4906, 1
  %4908 = xor i8 %4907, 1
  store i8 %4908, i8* %88, align 1, !tbaa !2448
  %4909 = xor i64 %4893, %4895
  %4910 = trunc i64 %4909 to i32
  %4911 = xor i32 %4910, %4898
  %4912 = lshr i32 %4911, 4
  %4913 = trunc i32 %4912 to i8
  %4914 = and i8 %4913, 1
  store i8 %4914, i8* %93, align 1, !tbaa !2449
  %4915 = icmp eq i32 %4898, 0
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %96, align 1, !tbaa !2450
  %4917 = lshr i32 %4898, 31
  %4918 = trunc i32 %4917 to i8
  store i8 %4918, i8* %99, align 1, !tbaa !2451
  %4919 = lshr i32 %4897, 31
  %4920 = lshr i32 %4896, 31
  %4921 = xor i32 %4917, %4919
  %4922 = xor i32 %4917, %4920
  %4923 = add nuw nsw i32 %4921, %4922
  %4924 = icmp eq i32 %4923, 2
  %4925 = zext i1 %4924 to i8
  store i8 %4925, i8* %105, align 1, !tbaa !2452
  %4926 = add i64 %4881, -72
  %4927 = add i64 %7361, 1701
  store i64 %4927, i64* %PC, align 8
  %4928 = inttoptr i64 %4926 to i32*
  %4929 = load i32, i32* %4928, align 4
  %4930 = zext i32 %4929 to i64
  store i64 %4930, i64* %RSI, align 8, !tbaa !2428
  %4931 = add i64 %7361, 1705
  store i64 %4931, i64* %PC, align 8
  %4932 = load i64, i64* %4884, align 8
  store i64 %4932, i64* %RCX, align 8, !tbaa !2428
  %4933 = add i64 %4932, 20
  %4934 = add i64 %7361, 1709
  store i64 %4934, i64* %PC, align 8
  %4935 = inttoptr i64 %4933 to i32*
  %4936 = load i32, i32* %4935, align 4
  %4937 = sext i32 %4929 to i64
  %4938 = sext i32 %4936 to i64
  %4939 = mul nsw i64 %4938, %4937
  %4940 = and i64 %4939, 4294967295
  store i64 %4940, i64* %RSI, align 8, !tbaa !2428
  %4941 = trunc i64 %4939 to i32
  %4942 = add i32 %4941, %4898
  %4943 = zext i32 %4942 to i64
  store i64 %4943, i64* %RDX, align 8, !tbaa !2428
  %4944 = icmp ult i32 %4942, %4898
  %4945 = icmp ult i32 %4942, %4941
  %4946 = or i1 %4944, %4945
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %82, align 1, !tbaa !2434
  %4948 = and i32 %4942, 255
  %4949 = tail call i32 @llvm.ctpop.i32(i32 %4948) #9
  %4950 = trunc i32 %4949 to i8
  %4951 = and i8 %4950, 1
  %4952 = xor i8 %4951, 1
  store i8 %4952, i8* %88, align 1, !tbaa !2448
  %4953 = xor i64 %4939, %4899
  %4954 = trunc i64 %4953 to i32
  %4955 = xor i32 %4954, %4942
  %4956 = lshr i32 %4955, 4
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  store i8 %4958, i8* %93, align 1, !tbaa !2449
  %4959 = icmp eq i32 %4942, 0
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %96, align 1, !tbaa !2450
  %4961 = lshr i32 %4942, 31
  %4962 = trunc i32 %4961 to i8
  store i8 %4962, i8* %99, align 1, !tbaa !2451
  %4963 = lshr i32 %4941, 31
  %4964 = xor i32 %4961, %4917
  %4965 = xor i32 %4961, %4963
  %4966 = add nuw nsw i32 %4964, %4965
  %4967 = icmp eq i32 %4966, 2
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %105, align 1, !tbaa !2452
  %4969 = load i64, i64* %RBP, align 8
  %4970 = add i64 %4969, -76
  %4971 = add i64 %7361, 1714
  store i64 %4971, i64* %PC, align 8
  %4972 = inttoptr i64 %4970 to i32*
  %4973 = load i32, i32* %4972, align 4
  %4974 = add i32 %4973, -1
  %4975 = zext i32 %4974 to i64
  store i64 %4975, i64* %RSI, align 8, !tbaa !2428
  %4976 = lshr i32 %4974, 31
  %4977 = add i32 %4974, %4942
  %4978 = zext i32 %4977 to i64
  store i64 %4978, i64* %RDX, align 8, !tbaa !2428
  %4979 = icmp ult i32 %4977, %4942
  %4980 = icmp ult i32 %4977, %4974
  %4981 = or i1 %4979, %4980
  %4982 = zext i1 %4981 to i8
  store i8 %4982, i8* %82, align 1, !tbaa !2434
  %4983 = and i32 %4977, 255
  %4984 = tail call i32 @llvm.ctpop.i32(i32 %4983) #9
  %4985 = trunc i32 %4984 to i8
  %4986 = and i8 %4985, 1
  %4987 = xor i8 %4986, 1
  store i8 %4987, i8* %88, align 1, !tbaa !2448
  %4988 = xor i32 %4974, %4942
  %4989 = xor i32 %4988, %4977
  %4990 = lshr i32 %4989, 4
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  store i8 %4992, i8* %93, align 1, !tbaa !2449
  %4993 = icmp eq i32 %4977, 0
  %4994 = zext i1 %4993 to i8
  store i8 %4994, i8* %96, align 1, !tbaa !2450
  %4995 = lshr i32 %4977, 31
  %4996 = trunc i32 %4995 to i8
  store i8 %4996, i8* %99, align 1, !tbaa !2451
  %4997 = xor i32 %4995, %4961
  %4998 = xor i32 %4995, %4976
  %4999 = add nuw nsw i32 %4997, %4998
  %5000 = icmp eq i32 %4999, 2
  %5001 = zext i1 %5000 to i8
  store i8 %5001, i8* %105, align 1, !tbaa !2452
  %5002 = sext i32 %4977 to i64
  store i64 %5002, i64* %RCX, align 8, !tbaa !2428
  %5003 = load i64, i64* %RAX, align 8
  %5004 = shl nsw i64 %5002, 2
  %5005 = add i64 %5003, %5004
  %5006 = add i64 %7361, 1727
  store i64 %5006, i64* %PC, align 8
  %5007 = load <2 x float>, <2 x float>* %221, align 1
  %5008 = load <2 x i32>, <2 x i32>* %222, align 1
  %5009 = inttoptr i64 %5005 to float*
  %5010 = load float, float* %5009, align 4
  %5011 = extractelement <2 x float> %5007, i32 0
  %5012 = fadd float %5011, %5010
  store float %5012, float* %213, align 1, !tbaa !2453
  %5013 = bitcast <2 x float> %5007 to <2 x i32>
  %5014 = extractelement <2 x i32> %5013, i32 1
  store i32 %5014, i32* %223, align 1, !tbaa !2453
  %5015 = extractelement <2 x i32> %5008, i32 0
  store i32 %5015, i32* %224, align 1, !tbaa !2453
  %5016 = extractelement <2 x i32> %5008, i32 1
  store i32 %5016, i32* %225, align 1, !tbaa !2453
  %5017 = load <2 x float>, <2 x float>* %207, align 1
  %5018 = load <2 x i32>, <2 x i32>* %208, align 1
  %5019 = load <2 x float>, <2 x float>* %221, align 1
  %5020 = extractelement <2 x float> %5017, i32 0
  %5021 = extractelement <2 x float> %5019, i32 0
  %5022 = fmul float %5020, %5021
  store float %5022, float* %199, align 1, !tbaa !2453
  %5023 = bitcast <2 x float> %5017 to <2 x i32>
  %5024 = extractelement <2 x i32> %5023, i32 1
  store i32 %5024, i32* %209, align 1, !tbaa !2453
  %5025 = extractelement <2 x i32> %5018, i32 0
  store i32 %5025, i32* %210, align 1, !tbaa !2453
  %5026 = extractelement <2 x i32> %5018, i32 1
  store i32 %5026, i32* %211, align 1, !tbaa !2453
  %5027 = load <2 x float>, <2 x float>* %192, align 1
  %5028 = load <2 x i32>, <2 x i32>* %197, align 1
  %5029 = load <2 x float>, <2 x float>* %207, align 1
  %5030 = extractelement <2 x float> %5027, i32 0
  %5031 = extractelement <2 x float> %5029, i32 0
  %5032 = fadd float %5030, %5031
  store float %5032, float* %193, align 1, !tbaa !2453
  %5033 = bitcast <2 x float> %5027 to <2 x i32>
  %5034 = extractelement <2 x i32> %5033, i32 1
  store i32 %5034, i32* %188, align 1, !tbaa !2453
  %5035 = extractelement <2 x i32> %5028, i32 0
  store i32 %5035, i32* %189, align 1, !tbaa !2453
  %5036 = extractelement <2 x i32> %5028, i32 1
  store i32 %5036, i32* %191, align 1, !tbaa !2453
  %5037 = load i64, i64* %RBP, align 8
  %5038 = add i64 %5037, -32
  %5039 = add i64 %7361, 1739
  store i64 %5039, i64* %PC, align 8
  %5040 = inttoptr i64 %5038 to i64*
  %5041 = load i64, i64* %5040, align 8
  store i64 %5041, i64* %RAX, align 8, !tbaa !2428
  %5042 = add i64 %7361, 1742
  store i64 %5042, i64* %PC, align 8
  %5043 = inttoptr i64 %5041 to i64*
  %5044 = load i64, i64* %5043, align 8
  store i64 %5044, i64* %RAX, align 8, !tbaa !2428
  %5045 = add i64 %7361, 1746
  store i64 %5045, i64* %PC, align 8
  %5046 = load i64, i64* %5040, align 8
  store i64 %5046, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5047 = add i64 %7361, 1754
  store i64 %5047, i64* %PC, align 8
  %5048 = load i64, i64* %5040, align 8
  store i64 %5048, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5049 = add i64 %7361, 1762
  store i64 %5049, i64* %PC, align 8
  %5050 = load i64, i64* %5040, align 8
  store i64 %5050, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5051 = add i64 %5037, -68
  %5052 = add i64 %7361, 1769
  store i64 %5052, i64* %PC, align 8
  %5053 = inttoptr i64 %5051 to i32*
  %5054 = load i32, i32* %5053, align 4
  %5055 = zext i32 %5054 to i64
  store i64 %5055, i64* %RSI, align 8, !tbaa !2428
  %5056 = add i64 %7361, 1773
  store i64 %5056, i64* %PC, align 8
  %5057 = load i64, i64* %5040, align 8
  store i64 %5057, i64* %RCX, align 8, !tbaa !2428
  %5058 = add i64 %5057, 16
  %5059 = add i64 %7361, 1777
  store i64 %5059, i64* %PC, align 8
  %5060 = inttoptr i64 %5058 to i32*
  %5061 = load i32, i32* %5060, align 4
  %5062 = sext i32 %5054 to i64
  %5063 = sext i32 %5061 to i64
  %5064 = mul nsw i64 %5063, %5062
  %5065 = trunc i64 %5064 to i32
  %5066 = and i64 %5064, 4294967295
  store i64 %5066, i64* %RSI, align 8, !tbaa !2428
  %5067 = shl i64 %5064, 32
  %5068 = ashr exact i64 %5067, 32
  %5069 = icmp ne i64 %5068, %5064
  %5070 = zext i1 %5069 to i8
  store i8 %5070, i8* %82, align 1, !tbaa !2434
  %5071 = and i32 %5065, 255
  %5072 = tail call i32 @llvm.ctpop.i32(i32 %5071) #9
  %5073 = trunc i32 %5072 to i8
  %5074 = and i8 %5073, 1
  %5075 = xor i8 %5074, 1
  store i8 %5075, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5076 = lshr i32 %5065, 31
  %5077 = trunc i32 %5076 to i8
  store i8 %5077, i8* %99, align 1, !tbaa !2451
  store i8 %5070, i8* %105, align 1, !tbaa !2452
  %5078 = add i64 %7361, 1781
  store i64 %5078, i64* %PC, align 8
  %5079 = load i64, i64* %5040, align 8
  store i64 %5079, i64* %RCX, align 8, !tbaa !2428
  %5080 = add i64 %5079, 20
  %5081 = add i64 %7361, 1785
  store i64 %5081, i64* %PC, align 8
  %5082 = inttoptr i64 %5080 to i32*
  %5083 = load i32, i32* %5082, align 4
  %5084 = shl i64 %5064, 32
  %5085 = ashr exact i64 %5084, 32
  %5086 = sext i32 %5083 to i64
  %5087 = mul nsw i64 %5086, %5085
  %5088 = and i64 %5087, 4294967295
  store i64 %5088, i64* %RSI, align 8, !tbaa !2428
  %5089 = trunc i64 %5087 to i32
  %5090 = and i64 %5087, 4294967295
  store i64 %5090, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %5091 = and i32 %5089, 255
  %5092 = tail call i32 @llvm.ctpop.i32(i32 %5091) #9
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = xor i8 %5094, 1
  store i8 %5095, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %5096 = icmp eq i32 %5089, 0
  %5097 = zext i1 %5096 to i8
  store i8 %5097, i8* %96, align 1, !tbaa !2450
  %5098 = lshr i32 %5089, 31
  %5099 = trunc i32 %5098 to i8
  store i8 %5099, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5100 = load i64, i64* %RBP, align 8
  %5101 = add i64 %5100, -72
  %5102 = add i64 %7361, 1790
  store i64 %5102, i64* %PC, align 8
  %5103 = inttoptr i64 %5101 to i32*
  %5104 = load i32, i32* %5103, align 4
  %5105 = zext i32 %5104 to i64
  store i64 %5105, i64* %RSI, align 8, !tbaa !2428
  %5106 = add i64 %5100, -32
  %5107 = add i64 %7361, 1794
  store i64 %5107, i64* %PC, align 8
  %5108 = inttoptr i64 %5106 to i64*
  %5109 = load i64, i64* %5108, align 8
  store i64 %5109, i64* %RCX, align 8, !tbaa !2428
  %5110 = add i64 %5109, 20
  %5111 = add i64 %7361, 1798
  store i64 %5111, i64* %PC, align 8
  %5112 = inttoptr i64 %5110 to i32*
  %5113 = load i32, i32* %5112, align 4
  %5114 = sext i32 %5104 to i64
  %5115 = sext i32 %5113 to i64
  %5116 = mul nsw i64 %5115, %5114
  %5117 = and i64 %5116, 4294967295
  store i64 %5117, i64* %RSI, align 8, !tbaa !2428
  %5118 = trunc i64 %5116 to i32
  %5119 = add i32 %5118, %5089
  %5120 = zext i32 %5119 to i64
  store i64 %5120, i64* %RDX, align 8, !tbaa !2428
  %5121 = icmp ult i32 %5119, %5089
  %5122 = icmp ult i32 %5119, %5118
  %5123 = or i1 %5121, %5122
  %5124 = zext i1 %5123 to i8
  store i8 %5124, i8* %82, align 1, !tbaa !2434
  %5125 = and i32 %5119, 255
  %5126 = tail call i32 @llvm.ctpop.i32(i32 %5125) #9
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  %5129 = xor i8 %5128, 1
  store i8 %5129, i8* %88, align 1, !tbaa !2448
  %5130 = xor i64 %5116, %5087
  %5131 = trunc i64 %5130 to i32
  %5132 = xor i32 %5131, %5119
  %5133 = lshr i32 %5132, 4
  %5134 = trunc i32 %5133 to i8
  %5135 = and i8 %5134, 1
  store i8 %5135, i8* %93, align 1, !tbaa !2449
  %5136 = icmp eq i32 %5119, 0
  %5137 = zext i1 %5136 to i8
  store i8 %5137, i8* %96, align 1, !tbaa !2450
  %5138 = lshr i32 %5119, 31
  %5139 = trunc i32 %5138 to i8
  store i8 %5139, i8* %99, align 1, !tbaa !2451
  %5140 = lshr i32 %5118, 31
  %5141 = xor i32 %5138, %5098
  %5142 = xor i32 %5138, %5140
  %5143 = add nuw nsw i32 %5141, %5142
  %5144 = icmp eq i32 %5143, 2
  %5145 = zext i1 %5144 to i8
  store i8 %5145, i8* %105, align 1, !tbaa !2452
  %5146 = add i64 %5100, -76
  %5147 = add i64 %7361, 1803
  store i64 %5147, i64* %PC, align 8
  %5148 = inttoptr i64 %5146 to i32*
  %5149 = load i32, i32* %5148, align 4
  %5150 = add i32 %5149, %5119
  %5151 = zext i32 %5150 to i64
  store i64 %5151, i64* %RDX, align 8, !tbaa !2428
  %5152 = icmp ult i32 %5150, %5119
  %5153 = icmp ult i32 %5150, %5149
  %5154 = or i1 %5152, %5153
  %5155 = zext i1 %5154 to i8
  store i8 %5155, i8* %82, align 1, !tbaa !2434
  %5156 = and i32 %5150, 255
  %5157 = tail call i32 @llvm.ctpop.i32(i32 %5156) #9
  %5158 = trunc i32 %5157 to i8
  %5159 = and i8 %5158, 1
  %5160 = xor i8 %5159, 1
  store i8 %5160, i8* %88, align 1, !tbaa !2448
  %5161 = xor i32 %5149, %5119
  %5162 = xor i32 %5161, %5150
  %5163 = lshr i32 %5162, 4
  %5164 = trunc i32 %5163 to i8
  %5165 = and i8 %5164, 1
  store i8 %5165, i8* %93, align 1, !tbaa !2449
  %5166 = icmp eq i32 %5150, 0
  %5167 = zext i1 %5166 to i8
  store i8 %5167, i8* %96, align 1, !tbaa !2450
  %5168 = lshr i32 %5150, 31
  %5169 = trunc i32 %5168 to i8
  store i8 %5169, i8* %99, align 1, !tbaa !2451
  %5170 = lshr i32 %5149, 31
  %5171 = xor i32 %5168, %5138
  %5172 = xor i32 %5168, %5170
  %5173 = add nuw nsw i32 %5171, %5172
  %5174 = icmp eq i32 %5173, 2
  %5175 = zext i1 %5174 to i8
  store i8 %5175, i8* %105, align 1, !tbaa !2452
  %5176 = sext i32 %5150 to i64
  store i64 %5176, i64* %RCX, align 8, !tbaa !2428
  %5177 = load i64, i64* %RAX, align 8
  %5178 = shl nsw i64 %5176, 2
  %5179 = add i64 %5177, %5178
  %5180 = add i64 %7361, 1811
  store i64 %5180, i64* %PC, align 8
  %5181 = inttoptr i64 %5179 to i32*
  %5182 = load i32, i32* %5181, align 4
  store i32 %5182, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %5183 = load i64, i64* %RBP, align 8
  %5184 = add i64 %5183, -40
  %5185 = add i64 %7361, 1815
  store i64 %5185, i64* %PC, align 8
  %5186 = inttoptr i64 %5184 to i64*
  %5187 = load i64, i64* %5186, align 8
  store i64 %5187, i64* %RAX, align 8, !tbaa !2428
  %5188 = add i64 %7361, 1818
  store i64 %5188, i64* %PC, align 8
  %5189 = inttoptr i64 %5187 to i64*
  %5190 = load i64, i64* %5189, align 8
  store i64 %5190, i64* %RAX, align 8, !tbaa !2428
  %5191 = add i64 %7361, 1822
  store i64 %5191, i64* %PC, align 8
  %5192 = load i64, i64* %5186, align 8
  store i64 %5192, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5193 = add i64 %7361, 1830
  store i64 %5193, i64* %PC, align 8
  %5194 = load i64, i64* %5186, align 8
  store i64 %5194, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5195 = add i64 %7361, 1838
  store i64 %5195, i64* %PC, align 8
  %5196 = load i64, i64* %5186, align 8
  store i64 %5196, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5197 = add i64 %5183, -68
  %5198 = add i64 %7361, 1845
  store i64 %5198, i64* %PC, align 8
  %5199 = inttoptr i64 %5197 to i32*
  %5200 = load i32, i32* %5199, align 4
  %5201 = add i32 %5200, -1
  %5202 = zext i32 %5201 to i64
  store i64 %5202, i64* %RSI, align 8, !tbaa !2428
  %5203 = icmp eq i32 %5200, 0
  %5204 = zext i1 %5203 to i8
  store i8 %5204, i8* %82, align 1, !tbaa !2434
  %5205 = and i32 %5201, 255
  %5206 = tail call i32 @llvm.ctpop.i32(i32 %5205) #9
  %5207 = trunc i32 %5206 to i8
  %5208 = and i8 %5207, 1
  %5209 = xor i8 %5208, 1
  store i8 %5209, i8* %88, align 1, !tbaa !2448
  %5210 = xor i32 %5201, %5200
  %5211 = lshr i32 %5210, 4
  %5212 = trunc i32 %5211 to i8
  %5213 = and i8 %5212, 1
  store i8 %5213, i8* %93, align 1, !tbaa !2449
  %5214 = icmp eq i32 %5201, 0
  %5215 = zext i1 %5214 to i8
  store i8 %5215, i8* %96, align 1, !tbaa !2450
  %5216 = lshr i32 %5201, 31
  %5217 = trunc i32 %5216 to i8
  store i8 %5217, i8* %99, align 1, !tbaa !2451
  %5218 = lshr i32 %5200, 31
  %5219 = xor i32 %5216, %5218
  %5220 = add nuw nsw i32 %5219, %5218
  %5221 = icmp eq i32 %5220, 2
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %105, align 1, !tbaa !2452
  %5223 = add i64 %7361, 1852
  store i64 %5223, i64* %PC, align 8
  %5224 = load i64, i64* %5186, align 8
  store i64 %5224, i64* %RCX, align 8, !tbaa !2428
  %5225 = add i64 %5224, 16
  %5226 = add i64 %7361, 1856
  store i64 %5226, i64* %PC, align 8
  %5227 = inttoptr i64 %5225 to i32*
  %5228 = load i32, i32* %5227, align 4
  %5229 = sext i32 %5201 to i64
  %5230 = sext i32 %5228 to i64
  %5231 = mul nsw i64 %5230, %5229
  %5232 = trunc i64 %5231 to i32
  %5233 = and i64 %5231, 4294967295
  store i64 %5233, i64* %RSI, align 8, !tbaa !2428
  %5234 = shl i64 %5231, 32
  %5235 = ashr exact i64 %5234, 32
  %5236 = icmp ne i64 %5235, %5231
  %5237 = zext i1 %5236 to i8
  store i8 %5237, i8* %82, align 1, !tbaa !2434
  %5238 = and i32 %5232, 255
  %5239 = tail call i32 @llvm.ctpop.i32(i32 %5238) #9
  %5240 = trunc i32 %5239 to i8
  %5241 = and i8 %5240, 1
  %5242 = xor i8 %5241, 1
  store i8 %5242, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5243 = lshr i32 %5232, 31
  %5244 = trunc i32 %5243 to i8
  store i8 %5244, i8* %99, align 1, !tbaa !2451
  store i8 %5237, i8* %105, align 1, !tbaa !2452
  %5245 = load i64, i64* %RBP, align 8
  %5246 = add i64 %5245, -40
  %5247 = add i64 %7361, 1860
  store i64 %5247, i64* %PC, align 8
  %5248 = inttoptr i64 %5246 to i64*
  %5249 = load i64, i64* %5248, align 8
  store i64 %5249, i64* %RCX, align 8, !tbaa !2428
  %5250 = add i64 %5249, 20
  %5251 = add i64 %7361, 1864
  store i64 %5251, i64* %PC, align 8
  %5252 = inttoptr i64 %5250 to i32*
  %5253 = load i32, i32* %5252, align 4
  %5254 = shl i64 %5231, 32
  %5255 = ashr exact i64 %5254, 32
  %5256 = sext i32 %5253 to i64
  %5257 = mul nsw i64 %5256, %5255
  %5258 = and i64 %5257, 4294967295
  store i64 %5258, i64* %RSI, align 8, !tbaa !2428
  %5259 = load i64, i64* %RDX, align 8
  %5260 = trunc i64 %5257 to i32
  %5261 = trunc i64 %5259 to i32
  %5262 = add i32 %5260, %5261
  %5263 = zext i32 %5262 to i64
  store i64 %5263, i64* %RDX, align 8, !tbaa !2428
  %5264 = icmp ult i32 %5262, %5261
  %5265 = icmp ult i32 %5262, %5260
  %5266 = or i1 %5264, %5265
  %5267 = zext i1 %5266 to i8
  store i8 %5267, i8* %82, align 1, !tbaa !2434
  %5268 = and i32 %5262, 255
  %5269 = tail call i32 @llvm.ctpop.i32(i32 %5268) #9
  %5270 = trunc i32 %5269 to i8
  %5271 = and i8 %5270, 1
  %5272 = xor i8 %5271, 1
  store i8 %5272, i8* %88, align 1, !tbaa !2448
  %5273 = xor i64 %5257, %5259
  %5274 = trunc i64 %5273 to i32
  %5275 = xor i32 %5274, %5262
  %5276 = lshr i32 %5275, 4
  %5277 = trunc i32 %5276 to i8
  %5278 = and i8 %5277, 1
  store i8 %5278, i8* %93, align 1, !tbaa !2449
  %5279 = icmp eq i32 %5262, 0
  %5280 = zext i1 %5279 to i8
  store i8 %5280, i8* %96, align 1, !tbaa !2450
  %5281 = lshr i32 %5262, 31
  %5282 = trunc i32 %5281 to i8
  store i8 %5282, i8* %99, align 1, !tbaa !2451
  %5283 = lshr i32 %5261, 31
  %5284 = lshr i32 %5260, 31
  %5285 = xor i32 %5281, %5283
  %5286 = xor i32 %5281, %5284
  %5287 = add nuw nsw i32 %5285, %5286
  %5288 = icmp eq i32 %5287, 2
  %5289 = zext i1 %5288 to i8
  store i8 %5289, i8* %105, align 1, !tbaa !2452
  %5290 = add i64 %5245, -72
  %5291 = add i64 %7361, 1869
  store i64 %5291, i64* %PC, align 8
  %5292 = inttoptr i64 %5290 to i32*
  %5293 = load i32, i32* %5292, align 4
  %5294 = zext i32 %5293 to i64
  store i64 %5294, i64* %RSI, align 8, !tbaa !2428
  %5295 = add i64 %7361, 1873
  store i64 %5295, i64* %PC, align 8
  %5296 = load i64, i64* %5248, align 8
  store i64 %5296, i64* %RCX, align 8, !tbaa !2428
  %5297 = add i64 %5296, 20
  %5298 = add i64 %7361, 1877
  store i64 %5298, i64* %PC, align 8
  %5299 = inttoptr i64 %5297 to i32*
  %5300 = load i32, i32* %5299, align 4
  %5301 = sext i32 %5293 to i64
  %5302 = sext i32 %5300 to i64
  %5303 = mul nsw i64 %5302, %5301
  %5304 = and i64 %5303, 4294967295
  store i64 %5304, i64* %RSI, align 8, !tbaa !2428
  %5305 = trunc i64 %5303 to i32
  %5306 = add i32 %5305, %5262
  %5307 = zext i32 %5306 to i64
  store i64 %5307, i64* %RDX, align 8, !tbaa !2428
  %5308 = icmp ult i32 %5306, %5262
  %5309 = icmp ult i32 %5306, %5305
  %5310 = or i1 %5308, %5309
  %5311 = zext i1 %5310 to i8
  store i8 %5311, i8* %82, align 1, !tbaa !2434
  %5312 = and i32 %5306, 255
  %5313 = tail call i32 @llvm.ctpop.i32(i32 %5312) #9
  %5314 = trunc i32 %5313 to i8
  %5315 = and i8 %5314, 1
  %5316 = xor i8 %5315, 1
  store i8 %5316, i8* %88, align 1, !tbaa !2448
  %5317 = xor i64 %5303, %5263
  %5318 = trunc i64 %5317 to i32
  %5319 = xor i32 %5318, %5306
  %5320 = lshr i32 %5319, 4
  %5321 = trunc i32 %5320 to i8
  %5322 = and i8 %5321, 1
  store i8 %5322, i8* %93, align 1, !tbaa !2449
  %5323 = icmp eq i32 %5306, 0
  %5324 = zext i1 %5323 to i8
  store i8 %5324, i8* %96, align 1, !tbaa !2450
  %5325 = lshr i32 %5306, 31
  %5326 = trunc i32 %5325 to i8
  store i8 %5326, i8* %99, align 1, !tbaa !2451
  %5327 = lshr i32 %5305, 31
  %5328 = xor i32 %5325, %5281
  %5329 = xor i32 %5325, %5327
  %5330 = add nuw nsw i32 %5328, %5329
  %5331 = icmp eq i32 %5330, 2
  %5332 = zext i1 %5331 to i8
  store i8 %5332, i8* %105, align 1, !tbaa !2452
  %5333 = load i64, i64* %RBP, align 8
  %5334 = add i64 %5333, -76
  %5335 = add i64 %7361, 1882
  store i64 %5335, i64* %PC, align 8
  %5336 = inttoptr i64 %5334 to i32*
  %5337 = load i32, i32* %5336, align 4
  %5338 = add i32 %5337, %5306
  %5339 = zext i32 %5338 to i64
  store i64 %5339, i64* %RDX, align 8, !tbaa !2428
  %5340 = icmp ult i32 %5338, %5306
  %5341 = icmp ult i32 %5338, %5337
  %5342 = or i1 %5340, %5341
  %5343 = zext i1 %5342 to i8
  store i8 %5343, i8* %82, align 1, !tbaa !2434
  %5344 = and i32 %5338, 255
  %5345 = tail call i32 @llvm.ctpop.i32(i32 %5344) #9
  %5346 = trunc i32 %5345 to i8
  %5347 = and i8 %5346, 1
  %5348 = xor i8 %5347, 1
  store i8 %5348, i8* %88, align 1, !tbaa !2448
  %5349 = xor i32 %5337, %5306
  %5350 = xor i32 %5349, %5338
  %5351 = lshr i32 %5350, 4
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  store i8 %5353, i8* %93, align 1, !tbaa !2449
  %5354 = icmp eq i32 %5338, 0
  %5355 = zext i1 %5354 to i8
  store i8 %5355, i8* %96, align 1, !tbaa !2450
  %5356 = lshr i32 %5338, 31
  %5357 = trunc i32 %5356 to i8
  store i8 %5357, i8* %99, align 1, !tbaa !2451
  %5358 = lshr i32 %5337, 31
  %5359 = xor i32 %5356, %5325
  %5360 = xor i32 %5356, %5358
  %5361 = add nuw nsw i32 %5359, %5360
  %5362 = icmp eq i32 %5361, 2
  %5363 = zext i1 %5362 to i8
  store i8 %5363, i8* %105, align 1, !tbaa !2452
  %5364 = sext i32 %5338 to i64
  store i64 %5364, i64* %RCX, align 8, !tbaa !2428
  %5365 = load i64, i64* %RAX, align 8
  %5366 = shl nsw i64 %5364, 2
  %5367 = add i64 %5365, %5366
  %5368 = add i64 %7361, 1890
  store i64 %5368, i64* %PC, align 8
  %5369 = load <2 x float>, <2 x float>* %207, align 1
  %5370 = load <2 x i32>, <2 x i32>* %208, align 1
  %5371 = inttoptr i64 %5367 to float*
  %5372 = load float, float* %5371, align 4
  %5373 = extractelement <2 x float> %5369, i32 0
  %5374 = fmul float %5373, %5372
  store float %5374, float* %199, align 1, !tbaa !2453
  %5375 = bitcast <2 x float> %5369 to <2 x i32>
  %5376 = extractelement <2 x i32> %5375, i32 1
  store i32 %5376, i32* %209, align 1, !tbaa !2453
  %5377 = extractelement <2 x i32> %5370, i32 0
  store i32 %5377, i32* %210, align 1, !tbaa !2453
  %5378 = extractelement <2 x i32> %5370, i32 1
  store i32 %5378, i32* %211, align 1, !tbaa !2453
  %5379 = load <2 x float>, <2 x float>* %192, align 1
  %5380 = load <2 x i32>, <2 x i32>* %197, align 1
  %5381 = load <2 x float>, <2 x float>* %207, align 1
  %5382 = extractelement <2 x float> %5379, i32 0
  %5383 = extractelement <2 x float> %5381, i32 0
  %5384 = fadd float %5382, %5383
  store float %5384, float* %193, align 1, !tbaa !2453
  %5385 = bitcast <2 x float> %5379 to <2 x i32>
  %5386 = extractelement <2 x i32> %5385, i32 1
  store i32 %5386, i32* %188, align 1, !tbaa !2453
  %5387 = extractelement <2 x i32> %5380, i32 0
  store i32 %5387, i32* %189, align 1, !tbaa !2453
  %5388 = extractelement <2 x i32> %5380, i32 1
  store i32 %5388, i32* %191, align 1, !tbaa !2453
  %5389 = add i64 %5333, -32
  %5390 = add i64 %7361, 1898
  store i64 %5390, i64* %PC, align 8
  %5391 = inttoptr i64 %5389 to i64*
  %5392 = load i64, i64* %5391, align 8
  store i64 %5392, i64* %RAX, align 8, !tbaa !2428
  %5393 = add i64 %7361, 1901
  store i64 %5393, i64* %PC, align 8
  %5394 = inttoptr i64 %5392 to i64*
  %5395 = load i64, i64* %5394, align 8
  store i64 %5395, i64* %RAX, align 8, !tbaa !2428
  %5396 = add i64 %7361, 1905
  store i64 %5396, i64* %PC, align 8
  %5397 = load i64, i64* %5391, align 8
  store i64 %5397, i64* %RCX, align 8, !tbaa !2428
  %5398 = add i64 %5397, 12
  %5399 = add i64 %7361, 1908
  store i64 %5399, i64* %PC, align 8
  %5400 = inttoptr i64 %5398 to i32*
  %5401 = load i32, i32* %5400, align 4
  %5402 = zext i32 %5401 to i64
  store i64 %5402, i64* %RDX, align 8, !tbaa !2428
  %5403 = load i64, i64* %RBP, align 8
  %5404 = add i64 %5403, -32
  %5405 = add i64 %7361, 1915
  store i64 %5405, i64* %PC, align 8
  %5406 = inttoptr i64 %5404 to i64*
  %5407 = load i64, i64* %5406, align 8
  store i64 %5407, i64* %RCX, align 8, !tbaa !2428
  %5408 = add i64 %5407, 16
  %5409 = add i64 %7361, 1919
  store i64 %5409, i64* %PC, align 8
  %5410 = inttoptr i64 %5408 to i32*
  %5411 = load i32, i32* %5410, align 4
  %5412 = sext i32 %5401 to i64
  %5413 = sext i32 %5411 to i64
  %5414 = mul nsw i64 %5413, %5412
  %5415 = trunc i64 %5414 to i32
  %5416 = and i64 %5414, 4294967295
  store i64 %5416, i64* %RDX, align 8, !tbaa !2428
  %5417 = shl i64 %5414, 32
  %5418 = ashr exact i64 %5417, 32
  %5419 = icmp ne i64 %5418, %5414
  %5420 = zext i1 %5419 to i8
  store i8 %5420, i8* %82, align 1, !tbaa !2434
  %5421 = and i32 %5415, 255
  %5422 = tail call i32 @llvm.ctpop.i32(i32 %5421) #9
  %5423 = trunc i32 %5422 to i8
  %5424 = and i8 %5423, 1
  %5425 = xor i8 %5424, 1
  store i8 %5425, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5426 = lshr i32 %5415, 31
  %5427 = trunc i32 %5426 to i8
  store i8 %5427, i8* %99, align 1, !tbaa !2451
  store i8 %5420, i8* %105, align 1, !tbaa !2452
  %5428 = add i64 %7361, 1923
  store i64 %5428, i64* %PC, align 8
  %5429 = load i64, i64* %5406, align 8
  store i64 %5429, i64* %RCX, align 8, !tbaa !2428
  %5430 = add i64 %5429, 20
  %5431 = add i64 %7361, 1927
  store i64 %5431, i64* %PC, align 8
  %5432 = inttoptr i64 %5430 to i32*
  %5433 = load i32, i32* %5432, align 4
  %5434 = shl i64 %5414, 32
  %5435 = ashr exact i64 %5434, 32
  %5436 = sext i32 %5433 to i64
  %5437 = mul nsw i64 %5436, %5435
  %5438 = trunc i64 %5437 to i32
  %5439 = and i64 %5437, 4294967295
  store i64 %5439, i64* %RDX, align 8, !tbaa !2428
  %5440 = shl i64 %5437, 32
  %5441 = ashr exact i64 %5440, 32
  %5442 = icmp ne i64 %5441, %5437
  %5443 = zext i1 %5442 to i8
  store i8 %5443, i8* %82, align 1, !tbaa !2434
  %5444 = and i32 %5438, 255
  %5445 = tail call i32 @llvm.ctpop.i32(i32 %5444) #9
  %5446 = trunc i32 %5445 to i8
  %5447 = and i8 %5446, 1
  %5448 = xor i8 %5447, 1
  store i8 %5448, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5449 = lshr i32 %5438, 31
  %5450 = trunc i32 %5449 to i8
  store i8 %5450, i8* %99, align 1, !tbaa !2451
  store i8 %5443, i8* %105, align 1, !tbaa !2452
  %5451 = add i64 %5403, -68
  %5452 = add i64 %7361, 1930
  store i64 %5452, i64* %PC, align 8
  %5453 = inttoptr i64 %5451 to i32*
  %5454 = load i32, i32* %5453, align 4
  %5455 = zext i32 %5454 to i64
  store i64 %5455, i64* %RSI, align 8, !tbaa !2428
  %5456 = add i64 %7361, 1934
  store i64 %5456, i64* %PC, align 8
  %5457 = load i64, i64* %5406, align 8
  store i64 %5457, i64* %RCX, align 8, !tbaa !2428
  %5458 = add i64 %5457, 16
  %5459 = add i64 %7361, 1938
  store i64 %5459, i64* %PC, align 8
  %5460 = inttoptr i64 %5458 to i32*
  %5461 = load i32, i32* %5460, align 4
  %5462 = sext i32 %5454 to i64
  %5463 = sext i32 %5461 to i64
  %5464 = mul nsw i64 %5463, %5462
  %5465 = trunc i64 %5464 to i32
  %5466 = and i64 %5464, 4294967295
  store i64 %5466, i64* %RSI, align 8, !tbaa !2428
  %5467 = shl i64 %5464, 32
  %5468 = ashr exact i64 %5467, 32
  %5469 = icmp ne i64 %5468, %5464
  %5470 = zext i1 %5469 to i8
  store i8 %5470, i8* %82, align 1, !tbaa !2434
  %5471 = and i32 %5465, 255
  %5472 = tail call i32 @llvm.ctpop.i32(i32 %5471) #9
  %5473 = trunc i32 %5472 to i8
  %5474 = and i8 %5473, 1
  %5475 = xor i8 %5474, 1
  store i8 %5475, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5476 = lshr i32 %5465, 31
  %5477 = trunc i32 %5476 to i8
  store i8 %5477, i8* %99, align 1, !tbaa !2451
  store i8 %5470, i8* %105, align 1, !tbaa !2452
  %5478 = load i64, i64* %RBP, align 8
  %5479 = add i64 %5478, -32
  %5480 = add i64 %7361, 1942
  store i64 %5480, i64* %PC, align 8
  %5481 = inttoptr i64 %5479 to i64*
  %5482 = load i64, i64* %5481, align 8
  store i64 %5482, i64* %RCX, align 8, !tbaa !2428
  %5483 = add i64 %5482, 20
  %5484 = add i64 %7361, 1946
  store i64 %5484, i64* %PC, align 8
  %5485 = inttoptr i64 %5483 to i32*
  %5486 = load i32, i32* %5485, align 4
  %5487 = shl i64 %5464, 32
  %5488 = ashr exact i64 %5487, 32
  %5489 = sext i32 %5486 to i64
  %5490 = mul nsw i64 %5489, %5488
  %5491 = and i64 %5490, 4294967295
  store i64 %5491, i64* %RSI, align 8, !tbaa !2428
  %5492 = trunc i64 %5490 to i32
  %5493 = trunc i64 %5437 to i32
  %5494 = add i32 %5492, %5493
  %5495 = zext i32 %5494 to i64
  store i64 %5495, i64* %RDX, align 8, !tbaa !2428
  %5496 = icmp ult i32 %5494, %5493
  %5497 = icmp ult i32 %5494, %5492
  %5498 = or i1 %5496, %5497
  %5499 = zext i1 %5498 to i8
  store i8 %5499, i8* %82, align 1, !tbaa !2434
  %5500 = and i32 %5494, 255
  %5501 = tail call i32 @llvm.ctpop.i32(i32 %5500) #9
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = xor i8 %5503, 1
  store i8 %5504, i8* %88, align 1, !tbaa !2448
  %5505 = xor i64 %5490, %5437
  %5506 = trunc i64 %5505 to i32
  %5507 = xor i32 %5506, %5494
  %5508 = lshr i32 %5507, 4
  %5509 = trunc i32 %5508 to i8
  %5510 = and i8 %5509, 1
  store i8 %5510, i8* %93, align 1, !tbaa !2449
  %5511 = icmp eq i32 %5494, 0
  %5512 = zext i1 %5511 to i8
  store i8 %5512, i8* %96, align 1, !tbaa !2450
  %5513 = lshr i32 %5494, 31
  %5514 = trunc i32 %5513 to i8
  store i8 %5514, i8* %99, align 1, !tbaa !2451
  %5515 = lshr i32 %5493, 31
  %5516 = lshr i32 %5492, 31
  %5517 = xor i32 %5513, %5515
  %5518 = xor i32 %5513, %5516
  %5519 = add nuw nsw i32 %5517, %5518
  %5520 = icmp eq i32 %5519, 2
  %5521 = zext i1 %5520 to i8
  store i8 %5521, i8* %105, align 1, !tbaa !2452
  %5522 = add i64 %5478, -72
  %5523 = add i64 %7361, 1951
  store i64 %5523, i64* %PC, align 8
  %5524 = inttoptr i64 %5522 to i32*
  %5525 = load i32, i32* %5524, align 4
  %5526 = zext i32 %5525 to i64
  store i64 %5526, i64* %RSI, align 8, !tbaa !2428
  %5527 = add i64 %7361, 1955
  store i64 %5527, i64* %PC, align 8
  %5528 = load i64, i64* %5481, align 8
  store i64 %5528, i64* %RCX, align 8, !tbaa !2428
  %5529 = add i64 %5528, 20
  %5530 = add i64 %7361, 1959
  store i64 %5530, i64* %PC, align 8
  %5531 = inttoptr i64 %5529 to i32*
  %5532 = load i32, i32* %5531, align 4
  %5533 = sext i32 %5525 to i64
  %5534 = sext i32 %5532 to i64
  %5535 = mul nsw i64 %5534, %5533
  %5536 = and i64 %5535, 4294967295
  store i64 %5536, i64* %RSI, align 8, !tbaa !2428
  %5537 = trunc i64 %5535 to i32
  %5538 = add i32 %5537, %5494
  %5539 = zext i32 %5538 to i64
  store i64 %5539, i64* %RDX, align 8, !tbaa !2428
  %5540 = icmp ult i32 %5538, %5494
  %5541 = icmp ult i32 %5538, %5537
  %5542 = or i1 %5540, %5541
  %5543 = zext i1 %5542 to i8
  store i8 %5543, i8* %82, align 1, !tbaa !2434
  %5544 = and i32 %5538, 255
  %5545 = tail call i32 @llvm.ctpop.i32(i32 %5544) #9
  %5546 = trunc i32 %5545 to i8
  %5547 = and i8 %5546, 1
  %5548 = xor i8 %5547, 1
  store i8 %5548, i8* %88, align 1, !tbaa !2448
  %5549 = xor i64 %5535, %5495
  %5550 = trunc i64 %5549 to i32
  %5551 = xor i32 %5550, %5538
  %5552 = lshr i32 %5551, 4
  %5553 = trunc i32 %5552 to i8
  %5554 = and i8 %5553, 1
  store i8 %5554, i8* %93, align 1, !tbaa !2449
  %5555 = icmp eq i32 %5538, 0
  %5556 = zext i1 %5555 to i8
  store i8 %5556, i8* %96, align 1, !tbaa !2450
  %5557 = lshr i32 %5538, 31
  %5558 = trunc i32 %5557 to i8
  store i8 %5558, i8* %99, align 1, !tbaa !2451
  %5559 = lshr i32 %5537, 31
  %5560 = xor i32 %5557, %5513
  %5561 = xor i32 %5557, %5559
  %5562 = add nuw nsw i32 %5560, %5561
  %5563 = icmp eq i32 %5562, 2
  %5564 = zext i1 %5563 to i8
  store i8 %5564, i8* %105, align 1, !tbaa !2452
  %5565 = load i64, i64* %RBP, align 8
  %5566 = add i64 %5565, -76
  %5567 = add i64 %7361, 1964
  store i64 %5567, i64* %PC, align 8
  %5568 = inttoptr i64 %5566 to i32*
  %5569 = load i32, i32* %5568, align 4
  %5570 = add i32 %5569, %5538
  %5571 = zext i32 %5570 to i64
  store i64 %5571, i64* %RDX, align 8, !tbaa !2428
  %5572 = icmp ult i32 %5570, %5538
  %5573 = icmp ult i32 %5570, %5569
  %5574 = or i1 %5572, %5573
  %5575 = zext i1 %5574 to i8
  store i8 %5575, i8* %82, align 1, !tbaa !2434
  %5576 = and i32 %5570, 255
  %5577 = tail call i32 @llvm.ctpop.i32(i32 %5576) #9
  %5578 = trunc i32 %5577 to i8
  %5579 = and i8 %5578, 1
  %5580 = xor i8 %5579, 1
  store i8 %5580, i8* %88, align 1, !tbaa !2448
  %5581 = xor i32 %5569, %5538
  %5582 = xor i32 %5581, %5570
  %5583 = lshr i32 %5582, 4
  %5584 = trunc i32 %5583 to i8
  %5585 = and i8 %5584, 1
  store i8 %5585, i8* %93, align 1, !tbaa !2449
  %5586 = icmp eq i32 %5570, 0
  %5587 = zext i1 %5586 to i8
  store i8 %5587, i8* %96, align 1, !tbaa !2450
  %5588 = lshr i32 %5570, 31
  %5589 = trunc i32 %5588 to i8
  store i8 %5589, i8* %99, align 1, !tbaa !2451
  %5590 = lshr i32 %5569, 31
  %5591 = xor i32 %5588, %5557
  %5592 = xor i32 %5588, %5590
  %5593 = add nuw nsw i32 %5591, %5592
  %5594 = icmp eq i32 %5593, 2
  %5595 = zext i1 %5594 to i8
  store i8 %5595, i8* %105, align 1, !tbaa !2452
  %5596 = sext i32 %5570 to i64
  store i64 %5596, i64* %RCX, align 8, !tbaa !2428
  %5597 = load i64, i64* %RAX, align 8
  %5598 = shl nsw i64 %5596, 2
  %5599 = add i64 %5597, %5598
  %5600 = add i64 %7361, 1972
  store i64 %5600, i64* %PC, align 8
  %5601 = inttoptr i64 %5599 to i32*
  %5602 = load i32, i32* %5601, align 4
  store i32 %5602, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %5603 = add i64 %5565, -40
  %5604 = add i64 %7361, 1976
  store i64 %5604, i64* %PC, align 8
  %5605 = inttoptr i64 %5603 to i64*
  %5606 = load i64, i64* %5605, align 8
  store i64 %5606, i64* %RAX, align 8, !tbaa !2428
  %5607 = add i64 %7361, 1979
  store i64 %5607, i64* %PC, align 8
  %5608 = inttoptr i64 %5606 to i64*
  %5609 = load i64, i64* %5608, align 8
  store i64 %5609, i64* %RAX, align 8, !tbaa !2428
  %5610 = add i64 %7361, 1983
  store i64 %5610, i64* %PC, align 8
  %5611 = load i64, i64* %5605, align 8
  store i64 %5611, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5612 = add i64 %7361, 1991
  store i64 %5612, i64* %PC, align 8
  %5613 = load i64, i64* %5605, align 8
  store i64 %5613, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5614 = add i64 %7361, 1999
  store i64 %5614, i64* %PC, align 8
  %5615 = load i64, i64* %5605, align 8
  store i64 %5615, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5616 = load i64, i64* %RBP, align 8
  %5617 = add i64 %5616, -68
  %5618 = add i64 %7361, 2006
  store i64 %5618, i64* %PC, align 8
  %5619 = inttoptr i64 %5617 to i32*
  %5620 = load i32, i32* %5619, align 4
  %5621 = zext i32 %5620 to i64
  store i64 %5621, i64* %RSI, align 8, !tbaa !2428
  %5622 = add i64 %5616, -40
  %5623 = add i64 %7361, 2010
  store i64 %5623, i64* %PC, align 8
  %5624 = inttoptr i64 %5622 to i64*
  %5625 = load i64, i64* %5624, align 8
  store i64 %5625, i64* %RCX, align 8, !tbaa !2428
  %5626 = add i64 %5625, 16
  %5627 = add i64 %7361, 2014
  store i64 %5627, i64* %PC, align 8
  %5628 = inttoptr i64 %5626 to i32*
  %5629 = load i32, i32* %5628, align 4
  %5630 = sext i32 %5620 to i64
  %5631 = sext i32 %5629 to i64
  %5632 = mul nsw i64 %5631, %5630
  %5633 = trunc i64 %5632 to i32
  %5634 = and i64 %5632, 4294967295
  store i64 %5634, i64* %RSI, align 8, !tbaa !2428
  %5635 = shl i64 %5632, 32
  %5636 = ashr exact i64 %5635, 32
  %5637 = icmp ne i64 %5636, %5632
  %5638 = zext i1 %5637 to i8
  store i8 %5638, i8* %82, align 1, !tbaa !2434
  %5639 = and i32 %5633, 255
  %5640 = tail call i32 @llvm.ctpop.i32(i32 %5639) #9
  %5641 = trunc i32 %5640 to i8
  %5642 = and i8 %5641, 1
  %5643 = xor i8 %5642, 1
  store i8 %5643, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5644 = lshr i32 %5633, 31
  %5645 = trunc i32 %5644 to i8
  store i8 %5645, i8* %99, align 1, !tbaa !2451
  store i8 %5638, i8* %105, align 1, !tbaa !2452
  %5646 = add i64 %7361, 2018
  store i64 %5646, i64* %PC, align 8
  %5647 = load i64, i64* %5624, align 8
  store i64 %5647, i64* %RCX, align 8, !tbaa !2428
  %5648 = add i64 %5647, 20
  %5649 = add i64 %7361, 2022
  store i64 %5649, i64* %PC, align 8
  %5650 = inttoptr i64 %5648 to i32*
  %5651 = load i32, i32* %5650, align 4
  %5652 = shl i64 %5632, 32
  %5653 = ashr exact i64 %5652, 32
  %5654 = sext i32 %5651 to i64
  %5655 = mul nsw i64 %5654, %5653
  %5656 = and i64 %5655, 4294967295
  store i64 %5656, i64* %RSI, align 8, !tbaa !2428
  %5657 = trunc i64 %5655 to i32
  %5658 = and i64 %5655, 4294967295
  store i64 %5658, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %5659 = and i32 %5657, 255
  %5660 = tail call i32 @llvm.ctpop.i32(i32 %5659) #9
  %5661 = trunc i32 %5660 to i8
  %5662 = and i8 %5661, 1
  %5663 = xor i8 %5662, 1
  store i8 %5663, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %5664 = icmp eq i32 %5657, 0
  %5665 = zext i1 %5664 to i8
  store i8 %5665, i8* %96, align 1, !tbaa !2450
  %5666 = lshr i32 %5657, 31
  %5667 = trunc i32 %5666 to i8
  store i8 %5667, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %5668 = add i64 %5616, -72
  %5669 = add i64 %7361, 2027
  store i64 %5669, i64* %PC, align 8
  %5670 = inttoptr i64 %5668 to i32*
  %5671 = load i32, i32* %5670, align 4
  %5672 = add i32 %5671, -1
  %5673 = zext i32 %5672 to i64
  store i64 %5673, i64* %RSI, align 8, !tbaa !2428
  %5674 = icmp eq i32 %5671, 0
  %5675 = zext i1 %5674 to i8
  store i8 %5675, i8* %82, align 1, !tbaa !2434
  %5676 = and i32 %5672, 255
  %5677 = tail call i32 @llvm.ctpop.i32(i32 %5676) #9
  %5678 = trunc i32 %5677 to i8
  %5679 = and i8 %5678, 1
  %5680 = xor i8 %5679, 1
  store i8 %5680, i8* %88, align 1, !tbaa !2448
  %5681 = xor i32 %5672, %5671
  %5682 = lshr i32 %5681, 4
  %5683 = trunc i32 %5682 to i8
  %5684 = and i8 %5683, 1
  store i8 %5684, i8* %93, align 1, !tbaa !2449
  %5685 = icmp eq i32 %5672, 0
  %5686 = zext i1 %5685 to i8
  store i8 %5686, i8* %96, align 1, !tbaa !2450
  %5687 = lshr i32 %5672, 31
  %5688 = trunc i32 %5687 to i8
  store i8 %5688, i8* %99, align 1, !tbaa !2451
  %5689 = lshr i32 %5671, 31
  %5690 = xor i32 %5687, %5689
  %5691 = add nuw nsw i32 %5690, %5689
  %5692 = icmp eq i32 %5691, 2
  %5693 = zext i1 %5692 to i8
  store i8 %5693, i8* %105, align 1, !tbaa !2452
  %5694 = load i64, i64* %RBP, align 8
  %5695 = add i64 %5694, -40
  %5696 = add i64 %7361, 2034
  store i64 %5696, i64* %PC, align 8
  %5697 = inttoptr i64 %5695 to i64*
  %5698 = load i64, i64* %5697, align 8
  store i64 %5698, i64* %RCX, align 8, !tbaa !2428
  %5699 = add i64 %5698, 20
  %5700 = add i64 %7361, 2038
  store i64 %5700, i64* %PC, align 8
  %5701 = inttoptr i64 %5699 to i32*
  %5702 = load i32, i32* %5701, align 4
  %5703 = sext i32 %5672 to i64
  %5704 = sext i32 %5702 to i64
  %5705 = mul nsw i64 %5704, %5703
  %5706 = and i64 %5705, 4294967295
  store i64 %5706, i64* %RSI, align 8, !tbaa !2428
  %5707 = trunc i64 %5705 to i32
  %5708 = add i32 %5707, %5657
  %5709 = zext i32 %5708 to i64
  store i64 %5709, i64* %RDX, align 8, !tbaa !2428
  %5710 = icmp ult i32 %5708, %5657
  %5711 = icmp ult i32 %5708, %5707
  %5712 = or i1 %5710, %5711
  %5713 = zext i1 %5712 to i8
  store i8 %5713, i8* %82, align 1, !tbaa !2434
  %5714 = and i32 %5708, 255
  %5715 = tail call i32 @llvm.ctpop.i32(i32 %5714) #9
  %5716 = trunc i32 %5715 to i8
  %5717 = and i8 %5716, 1
  %5718 = xor i8 %5717, 1
  store i8 %5718, i8* %88, align 1, !tbaa !2448
  %5719 = xor i64 %5705, %5655
  %5720 = trunc i64 %5719 to i32
  %5721 = xor i32 %5720, %5708
  %5722 = lshr i32 %5721, 4
  %5723 = trunc i32 %5722 to i8
  %5724 = and i8 %5723, 1
  store i8 %5724, i8* %93, align 1, !tbaa !2449
  %5725 = icmp eq i32 %5708, 0
  %5726 = zext i1 %5725 to i8
  store i8 %5726, i8* %96, align 1, !tbaa !2450
  %5727 = lshr i32 %5708, 31
  %5728 = trunc i32 %5727 to i8
  store i8 %5728, i8* %99, align 1, !tbaa !2451
  %5729 = lshr i32 %5707, 31
  %5730 = xor i32 %5727, %5666
  %5731 = xor i32 %5727, %5729
  %5732 = add nuw nsw i32 %5730, %5731
  %5733 = icmp eq i32 %5732, 2
  %5734 = zext i1 %5733 to i8
  store i8 %5734, i8* %105, align 1, !tbaa !2452
  %5735 = add i64 %5694, -76
  %5736 = add i64 %7361, 2043
  store i64 %5736, i64* %PC, align 8
  %5737 = inttoptr i64 %5735 to i32*
  %5738 = load i32, i32* %5737, align 4
  %5739 = add i32 %5738, %5708
  %5740 = zext i32 %5739 to i64
  store i64 %5740, i64* %RDX, align 8, !tbaa !2428
  %5741 = icmp ult i32 %5739, %5708
  %5742 = icmp ult i32 %5739, %5738
  %5743 = or i1 %5741, %5742
  %5744 = zext i1 %5743 to i8
  store i8 %5744, i8* %82, align 1, !tbaa !2434
  %5745 = and i32 %5739, 255
  %5746 = tail call i32 @llvm.ctpop.i32(i32 %5745) #9
  %5747 = trunc i32 %5746 to i8
  %5748 = and i8 %5747, 1
  %5749 = xor i8 %5748, 1
  store i8 %5749, i8* %88, align 1, !tbaa !2448
  %5750 = xor i32 %5738, %5708
  %5751 = xor i32 %5750, %5739
  %5752 = lshr i32 %5751, 4
  %5753 = trunc i32 %5752 to i8
  %5754 = and i8 %5753, 1
  store i8 %5754, i8* %93, align 1, !tbaa !2449
  %5755 = icmp eq i32 %5739, 0
  %5756 = zext i1 %5755 to i8
  store i8 %5756, i8* %96, align 1, !tbaa !2450
  %5757 = lshr i32 %5739, 31
  %5758 = trunc i32 %5757 to i8
  store i8 %5758, i8* %99, align 1, !tbaa !2451
  %5759 = lshr i32 %5738, 31
  %5760 = xor i32 %5757, %5727
  %5761 = xor i32 %5757, %5759
  %5762 = add nuw nsw i32 %5760, %5761
  %5763 = icmp eq i32 %5762, 2
  %5764 = zext i1 %5763 to i8
  store i8 %5764, i8* %105, align 1, !tbaa !2452
  %5765 = sext i32 %5739 to i64
  store i64 %5765, i64* %RCX, align 8, !tbaa !2428
  %5766 = load i64, i64* %RAX, align 8
  %5767 = shl nsw i64 %5765, 2
  %5768 = add i64 %5766, %5767
  %5769 = add i64 %7361, 2051
  store i64 %5769, i64* %PC, align 8
  %5770 = load <2 x float>, <2 x float>* %207, align 1
  %5771 = load <2 x i32>, <2 x i32>* %208, align 1
  %5772 = inttoptr i64 %5768 to float*
  %5773 = load float, float* %5772, align 4
  %5774 = extractelement <2 x float> %5770, i32 0
  %5775 = fmul float %5774, %5773
  store float %5775, float* %199, align 1, !tbaa !2453
  %5776 = bitcast <2 x float> %5770 to <2 x i32>
  %5777 = extractelement <2 x i32> %5776, i32 1
  store i32 %5777, i32* %209, align 1, !tbaa !2453
  %5778 = extractelement <2 x i32> %5771, i32 0
  store i32 %5778, i32* %210, align 1, !tbaa !2453
  %5779 = extractelement <2 x i32> %5771, i32 1
  store i32 %5779, i32* %211, align 1, !tbaa !2453
  %5780 = load <2 x float>, <2 x float>* %192, align 1
  %5781 = load <2 x i32>, <2 x i32>* %197, align 1
  %5782 = load <2 x float>, <2 x float>* %207, align 1
  %5783 = extractelement <2 x float> %5780, i32 0
  %5784 = extractelement <2 x float> %5782, i32 0
  %5785 = fadd float %5783, %5784
  store float %5785, float* %193, align 1, !tbaa !2453
  %5786 = bitcast <2 x float> %5780 to <2 x i32>
  %5787 = extractelement <2 x i32> %5786, i32 1
  store i32 %5787, i32* %188, align 1, !tbaa !2453
  %5788 = extractelement <2 x i32> %5781, i32 0
  store i32 %5788, i32* %189, align 1, !tbaa !2453
  %5789 = extractelement <2 x i32> %5781, i32 1
  store i32 %5789, i32* %191, align 1, !tbaa !2453
  %5790 = load i64, i64* %RBP, align 8
  %5791 = add i64 %5790, -32
  %5792 = add i64 %7361, 2059
  store i64 %5792, i64* %PC, align 8
  %5793 = inttoptr i64 %5791 to i64*
  %5794 = load i64, i64* %5793, align 8
  store i64 %5794, i64* %RAX, align 8, !tbaa !2428
  %5795 = add i64 %7361, 2062
  store i64 %5795, i64* %PC, align 8
  %5796 = inttoptr i64 %5794 to i64*
  %5797 = load i64, i64* %5796, align 8
  store i64 %5797, i64* %RAX, align 8, !tbaa !2428
  %5798 = add i64 %7361, 2066
  store i64 %5798, i64* %PC, align 8
  %5799 = load i64, i64* %5793, align 8
  store i64 %5799, i64* %RCX, align 8, !tbaa !2428
  %5800 = add i64 %5799, 12
  %5801 = add i64 %7361, 2069
  store i64 %5801, i64* %PC, align 8
  %5802 = inttoptr i64 %5800 to i32*
  %5803 = load i32, i32* %5802, align 4
  %5804 = shl i32 %5803, 1
  %5805 = icmp slt i32 %5803, 0
  %5806 = icmp slt i32 %5804, 0
  %5807 = xor i1 %5805, %5806
  %5808 = zext i32 %5804 to i64
  store i64 %5808, i64* %RDX, align 8, !tbaa !2428
  %.lobit8 = lshr i32 %5803, 31
  %5809 = trunc i32 %.lobit8 to i8
  store i8 %5809, i8* %82, align 1, !tbaa !2455
  %5810 = and i32 %5804, 254
  %5811 = tail call i32 @llvm.ctpop.i32(i32 %5810) #9
  %5812 = trunc i32 %5811 to i8
  %5813 = and i8 %5812, 1
  %5814 = xor i8 %5813, 1
  store i8 %5814, i8* %88, align 1, !tbaa !2455
  store i8 0, i8* %93, align 1, !tbaa !2455
  %5815 = icmp eq i32 %5804, 0
  %5816 = zext i1 %5815 to i8
  store i8 %5816, i8* %96, align 1, !tbaa !2455
  %5817 = lshr i32 %5803, 30
  %5818 = trunc i32 %5817 to i8
  %5819 = and i8 %5818, 1
  store i8 %5819, i8* %99, align 1, !tbaa !2455
  %5820 = zext i1 %5807 to i8
  store i8 %5820, i8* %105, align 1, !tbaa !2455
  %5821 = add i64 %7361, 2076
  store i64 %5821, i64* %PC, align 8
  %5822 = load i64, i64* %5793, align 8
  store i64 %5822, i64* %RCX, align 8, !tbaa !2428
  %5823 = add i64 %5822, 16
  %5824 = add i64 %7361, 2080
  store i64 %5824, i64* %PC, align 8
  %5825 = inttoptr i64 %5823 to i32*
  %5826 = load i32, i32* %5825, align 4
  %5827 = sext i32 %5804 to i64
  %5828 = sext i32 %5826 to i64
  %5829 = mul nsw i64 %5828, %5827
  %5830 = trunc i64 %5829 to i32
  %5831 = and i64 %5829, 4294967294
  store i64 %5831, i64* %RDX, align 8, !tbaa !2428
  %5832 = shl i64 %5829, 32
  %5833 = ashr exact i64 %5832, 32
  %5834 = icmp ne i64 %5833, %5829
  %5835 = zext i1 %5834 to i8
  store i8 %5835, i8* %82, align 1, !tbaa !2434
  %5836 = and i32 %5830, 254
  %5837 = tail call i32 @llvm.ctpop.i32(i32 %5836) #9
  %5838 = trunc i32 %5837 to i8
  %5839 = and i8 %5838, 1
  %5840 = xor i8 %5839, 1
  store i8 %5840, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5841 = lshr i32 %5830, 31
  %5842 = trunc i32 %5841 to i8
  store i8 %5842, i8* %99, align 1, !tbaa !2451
  store i8 %5835, i8* %105, align 1, !tbaa !2452
  %5843 = add i64 %7361, 2084
  store i64 %5843, i64* %PC, align 8
  %5844 = load i64, i64* %5793, align 8
  store i64 %5844, i64* %RCX, align 8, !tbaa !2428
  %5845 = add i64 %5844, 20
  %5846 = add i64 %7361, 2088
  store i64 %5846, i64* %PC, align 8
  %5847 = inttoptr i64 %5845 to i32*
  %5848 = load i32, i32* %5847, align 4
  %5849 = shl i64 %5829, 32
  %5850 = ashr exact i64 %5849, 32
  %5851 = sext i32 %5848 to i64
  %5852 = mul nsw i64 %5851, %5850
  %5853 = trunc i64 %5852 to i32
  %5854 = and i64 %5852, 4294967295
  store i64 %5854, i64* %RDX, align 8, !tbaa !2428
  %5855 = shl i64 %5852, 32
  %5856 = ashr exact i64 %5855, 32
  %5857 = icmp ne i64 %5856, %5852
  %5858 = zext i1 %5857 to i8
  store i8 %5858, i8* %82, align 1, !tbaa !2434
  %5859 = and i32 %5853, 255
  %5860 = tail call i32 @llvm.ctpop.i32(i32 %5859) #9
  %5861 = trunc i32 %5860 to i8
  %5862 = and i8 %5861, 1
  %5863 = xor i8 %5862, 1
  store i8 %5863, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5864 = lshr i32 %5853, 31
  %5865 = trunc i32 %5864 to i8
  store i8 %5865, i8* %99, align 1, !tbaa !2451
  store i8 %5858, i8* %105, align 1, !tbaa !2452
  %5866 = load i64, i64* %RBP, align 8
  %5867 = add i64 %5866, -68
  %5868 = add i64 %7361, 2091
  store i64 %5868, i64* %PC, align 8
  %5869 = inttoptr i64 %5867 to i32*
  %5870 = load i32, i32* %5869, align 4
  %5871 = zext i32 %5870 to i64
  store i64 %5871, i64* %RSI, align 8, !tbaa !2428
  %5872 = add i64 %5866, -32
  %5873 = add i64 %7361, 2095
  store i64 %5873, i64* %PC, align 8
  %5874 = inttoptr i64 %5872 to i64*
  %5875 = load i64, i64* %5874, align 8
  store i64 %5875, i64* %RCX, align 8, !tbaa !2428
  %5876 = add i64 %5875, 16
  %5877 = add i64 %7361, 2099
  store i64 %5877, i64* %PC, align 8
  %5878 = inttoptr i64 %5876 to i32*
  %5879 = load i32, i32* %5878, align 4
  %5880 = sext i32 %5870 to i64
  %5881 = sext i32 %5879 to i64
  %5882 = mul nsw i64 %5881, %5880
  %5883 = trunc i64 %5882 to i32
  %5884 = and i64 %5882, 4294967295
  store i64 %5884, i64* %RSI, align 8, !tbaa !2428
  %5885 = shl i64 %5882, 32
  %5886 = ashr exact i64 %5885, 32
  %5887 = icmp ne i64 %5886, %5882
  %5888 = zext i1 %5887 to i8
  store i8 %5888, i8* %82, align 1, !tbaa !2434
  %5889 = and i32 %5883, 255
  %5890 = tail call i32 @llvm.ctpop.i32(i32 %5889) #9
  %5891 = trunc i32 %5890 to i8
  %5892 = and i8 %5891, 1
  %5893 = xor i8 %5892, 1
  store i8 %5893, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %5894 = lshr i32 %5883, 31
  %5895 = trunc i32 %5894 to i8
  store i8 %5895, i8* %99, align 1, !tbaa !2451
  store i8 %5888, i8* %105, align 1, !tbaa !2452
  %5896 = add i64 %7361, 2103
  store i64 %5896, i64* %PC, align 8
  %5897 = load i64, i64* %5874, align 8
  store i64 %5897, i64* %RCX, align 8, !tbaa !2428
  %5898 = add i64 %5897, 20
  %5899 = add i64 %7361, 2107
  store i64 %5899, i64* %PC, align 8
  %5900 = inttoptr i64 %5898 to i32*
  %5901 = load i32, i32* %5900, align 4
  %5902 = shl i64 %5882, 32
  %5903 = ashr exact i64 %5902, 32
  %5904 = sext i32 %5901 to i64
  %5905 = mul nsw i64 %5904, %5903
  %5906 = and i64 %5905, 4294967295
  store i64 %5906, i64* %RSI, align 8, !tbaa !2428
  %5907 = trunc i64 %5905 to i32
  %5908 = trunc i64 %5852 to i32
  %5909 = add i32 %5907, %5908
  %5910 = zext i32 %5909 to i64
  store i64 %5910, i64* %RDX, align 8, !tbaa !2428
  %5911 = icmp ult i32 %5909, %5908
  %5912 = icmp ult i32 %5909, %5907
  %5913 = or i1 %5911, %5912
  %5914 = zext i1 %5913 to i8
  store i8 %5914, i8* %82, align 1, !tbaa !2434
  %5915 = and i32 %5909, 255
  %5916 = tail call i32 @llvm.ctpop.i32(i32 %5915) #9
  %5917 = trunc i32 %5916 to i8
  %5918 = and i8 %5917, 1
  %5919 = xor i8 %5918, 1
  store i8 %5919, i8* %88, align 1, !tbaa !2448
  %5920 = xor i64 %5905, %5852
  %5921 = trunc i64 %5920 to i32
  %5922 = xor i32 %5921, %5909
  %5923 = lshr i32 %5922, 4
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  store i8 %5925, i8* %93, align 1, !tbaa !2449
  %5926 = icmp eq i32 %5909, 0
  %5927 = zext i1 %5926 to i8
  store i8 %5927, i8* %96, align 1, !tbaa !2450
  %5928 = lshr i32 %5909, 31
  %5929 = trunc i32 %5928 to i8
  store i8 %5929, i8* %99, align 1, !tbaa !2451
  %5930 = lshr i32 %5908, 31
  %5931 = lshr i32 %5907, 31
  %5932 = xor i32 %5928, %5930
  %5933 = xor i32 %5928, %5931
  %5934 = add nuw nsw i32 %5932, %5933
  %5935 = icmp eq i32 %5934, 2
  %5936 = zext i1 %5935 to i8
  store i8 %5936, i8* %105, align 1, !tbaa !2452
  %5937 = load i64, i64* %RBP, align 8
  %5938 = add i64 %5937, -72
  %5939 = add i64 %7361, 2112
  store i64 %5939, i64* %PC, align 8
  %5940 = inttoptr i64 %5938 to i32*
  %5941 = load i32, i32* %5940, align 4
  %5942 = zext i32 %5941 to i64
  store i64 %5942, i64* %RSI, align 8, !tbaa !2428
  %5943 = add i64 %5937, -32
  %5944 = add i64 %7361, 2116
  store i64 %5944, i64* %PC, align 8
  %5945 = inttoptr i64 %5943 to i64*
  %5946 = load i64, i64* %5945, align 8
  store i64 %5946, i64* %RCX, align 8, !tbaa !2428
  %5947 = add i64 %5946, 20
  %5948 = add i64 %7361, 2120
  store i64 %5948, i64* %PC, align 8
  %5949 = inttoptr i64 %5947 to i32*
  %5950 = load i32, i32* %5949, align 4
  %5951 = sext i32 %5941 to i64
  %5952 = sext i32 %5950 to i64
  %5953 = mul nsw i64 %5952, %5951
  %5954 = and i64 %5953, 4294967295
  store i64 %5954, i64* %RSI, align 8, !tbaa !2428
  %5955 = trunc i64 %5953 to i32
  %5956 = add i32 %5955, %5909
  %5957 = zext i32 %5956 to i64
  store i64 %5957, i64* %RDX, align 8, !tbaa !2428
  %5958 = icmp ult i32 %5956, %5909
  %5959 = icmp ult i32 %5956, %5955
  %5960 = or i1 %5958, %5959
  %5961 = zext i1 %5960 to i8
  store i8 %5961, i8* %82, align 1, !tbaa !2434
  %5962 = and i32 %5956, 255
  %5963 = tail call i32 @llvm.ctpop.i32(i32 %5962) #9
  %5964 = trunc i32 %5963 to i8
  %5965 = and i8 %5964, 1
  %5966 = xor i8 %5965, 1
  store i8 %5966, i8* %88, align 1, !tbaa !2448
  %5967 = xor i64 %5953, %5910
  %5968 = trunc i64 %5967 to i32
  %5969 = xor i32 %5968, %5956
  %5970 = lshr i32 %5969, 4
  %5971 = trunc i32 %5970 to i8
  %5972 = and i8 %5971, 1
  store i8 %5972, i8* %93, align 1, !tbaa !2449
  %5973 = icmp eq i32 %5956, 0
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %96, align 1, !tbaa !2450
  %5975 = lshr i32 %5956, 31
  %5976 = trunc i32 %5975 to i8
  store i8 %5976, i8* %99, align 1, !tbaa !2451
  %5977 = lshr i32 %5955, 31
  %5978 = xor i32 %5975, %5928
  %5979 = xor i32 %5975, %5977
  %5980 = add nuw nsw i32 %5978, %5979
  %5981 = icmp eq i32 %5980, 2
  %5982 = zext i1 %5981 to i8
  store i8 %5982, i8* %105, align 1, !tbaa !2452
  %5983 = add i64 %5937, -76
  %5984 = add i64 %7361, 2125
  store i64 %5984, i64* %PC, align 8
  %5985 = inttoptr i64 %5983 to i32*
  %5986 = load i32, i32* %5985, align 4
  %5987 = add i32 %5986, %5956
  %5988 = zext i32 %5987 to i64
  store i64 %5988, i64* %RDX, align 8, !tbaa !2428
  %5989 = icmp ult i32 %5987, %5956
  %5990 = icmp ult i32 %5987, %5986
  %5991 = or i1 %5989, %5990
  %5992 = zext i1 %5991 to i8
  store i8 %5992, i8* %82, align 1, !tbaa !2434
  %5993 = and i32 %5987, 255
  %5994 = tail call i32 @llvm.ctpop.i32(i32 %5993) #9
  %5995 = trunc i32 %5994 to i8
  %5996 = and i8 %5995, 1
  %5997 = xor i8 %5996, 1
  store i8 %5997, i8* %88, align 1, !tbaa !2448
  %5998 = xor i32 %5986, %5956
  %5999 = xor i32 %5998, %5987
  %6000 = lshr i32 %5999, 4
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  store i8 %6002, i8* %93, align 1, !tbaa !2449
  %6003 = icmp eq i32 %5987, 0
  %6004 = zext i1 %6003 to i8
  store i8 %6004, i8* %96, align 1, !tbaa !2450
  %6005 = lshr i32 %5987, 31
  %6006 = trunc i32 %6005 to i8
  store i8 %6006, i8* %99, align 1, !tbaa !2451
  %6007 = lshr i32 %5986, 31
  %6008 = xor i32 %6005, %5975
  %6009 = xor i32 %6005, %6007
  %6010 = add nuw nsw i32 %6008, %6009
  %6011 = icmp eq i32 %6010, 2
  %6012 = zext i1 %6011 to i8
  store i8 %6012, i8* %105, align 1, !tbaa !2452
  %6013 = sext i32 %5987 to i64
  store i64 %6013, i64* %RCX, align 8, !tbaa !2428
  %6014 = load i64, i64* %RAX, align 8
  %6015 = shl nsw i64 %6013, 2
  %6016 = add i64 %6014, %6015
  %6017 = add i64 %7361, 2133
  store i64 %6017, i64* %PC, align 8
  %6018 = inttoptr i64 %6016 to i32*
  %6019 = load i32, i32* %6018, align 4
  store i32 %6019, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %6020 = load i64, i64* %RBP, align 8
  %6021 = add i64 %6020, -40
  %6022 = add i64 %7361, 2137
  store i64 %6022, i64* %PC, align 8
  %6023 = inttoptr i64 %6021 to i64*
  %6024 = load i64, i64* %6023, align 8
  store i64 %6024, i64* %RAX, align 8, !tbaa !2428
  %6025 = add i64 %7361, 2140
  store i64 %6025, i64* %PC, align 8
  %6026 = inttoptr i64 %6024 to i64*
  %6027 = load i64, i64* %6026, align 8
  store i64 %6027, i64* %RAX, align 8, !tbaa !2428
  %6028 = add i64 %7361, 2144
  store i64 %6028, i64* %PC, align 8
  %6029 = load i64, i64* %6023, align 8
  store i64 %6029, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6030 = add i64 %7361, 2152
  store i64 %6030, i64* %PC, align 8
  %6031 = load i64, i64* %6023, align 8
  store i64 %6031, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6032 = add i64 %7361, 2160
  store i64 %6032, i64* %PC, align 8
  %6033 = load i64, i64* %6023, align 8
  store i64 %6033, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6034 = add i64 %6020, -68
  %6035 = add i64 %7361, 2167
  store i64 %6035, i64* %PC, align 8
  %6036 = inttoptr i64 %6034 to i32*
  %6037 = load i32, i32* %6036, align 4
  %6038 = zext i32 %6037 to i64
  store i64 %6038, i64* %RSI, align 8, !tbaa !2428
  %6039 = add i64 %7361, 2171
  store i64 %6039, i64* %PC, align 8
  %6040 = load i64, i64* %6023, align 8
  store i64 %6040, i64* %RCX, align 8, !tbaa !2428
  %6041 = add i64 %6040, 16
  %6042 = add i64 %7361, 2175
  store i64 %6042, i64* %PC, align 8
  %6043 = inttoptr i64 %6041 to i32*
  %6044 = load i32, i32* %6043, align 4
  %6045 = sext i32 %6037 to i64
  %6046 = sext i32 %6044 to i64
  %6047 = mul nsw i64 %6046, %6045
  %6048 = trunc i64 %6047 to i32
  %6049 = and i64 %6047, 4294967295
  store i64 %6049, i64* %RSI, align 8, !tbaa !2428
  %6050 = shl i64 %6047, 32
  %6051 = ashr exact i64 %6050, 32
  %6052 = icmp ne i64 %6051, %6047
  %6053 = zext i1 %6052 to i8
  store i8 %6053, i8* %82, align 1, !tbaa !2434
  %6054 = and i32 %6048, 255
  %6055 = tail call i32 @llvm.ctpop.i32(i32 %6054) #9
  %6056 = trunc i32 %6055 to i8
  %6057 = and i8 %6056, 1
  %6058 = xor i8 %6057, 1
  store i8 %6058, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6059 = lshr i32 %6048, 31
  %6060 = trunc i32 %6059 to i8
  store i8 %6060, i8* %99, align 1, !tbaa !2451
  store i8 %6053, i8* %105, align 1, !tbaa !2452
  %6061 = add i64 %7361, 2179
  store i64 %6061, i64* %PC, align 8
  %6062 = load i64, i64* %6023, align 8
  store i64 %6062, i64* %RCX, align 8, !tbaa !2428
  %6063 = add i64 %6062, 20
  %6064 = add i64 %7361, 2183
  store i64 %6064, i64* %PC, align 8
  %6065 = inttoptr i64 %6063 to i32*
  %6066 = load i32, i32* %6065, align 4
  %6067 = shl i64 %6047, 32
  %6068 = ashr exact i64 %6067, 32
  %6069 = sext i32 %6066 to i64
  %6070 = mul nsw i64 %6069, %6068
  %6071 = and i64 %6070, 4294967295
  store i64 %6071, i64* %RSI, align 8, !tbaa !2428
  %6072 = trunc i64 %6070 to i32
  %6073 = and i64 %6070, 4294967295
  store i64 %6073, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %6074 = and i32 %6072, 255
  %6075 = tail call i32 @llvm.ctpop.i32(i32 %6074) #9
  %6076 = trunc i32 %6075 to i8
  %6077 = and i8 %6076, 1
  %6078 = xor i8 %6077, 1
  store i8 %6078, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %6079 = icmp eq i32 %6072, 0
  %6080 = zext i1 %6079 to i8
  store i8 %6080, i8* %96, align 1, !tbaa !2450
  %6081 = lshr i32 %6072, 31
  %6082 = trunc i32 %6081 to i8
  store i8 %6082, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6083 = load i64, i64* %RBP, align 8
  %6084 = add i64 %6083, -72
  %6085 = add i64 %7361, 2188
  store i64 %6085, i64* %PC, align 8
  %6086 = inttoptr i64 %6084 to i32*
  %6087 = load i32, i32* %6086, align 4
  %6088 = zext i32 %6087 to i64
  store i64 %6088, i64* %RSI, align 8, !tbaa !2428
  %6089 = add i64 %6083, -40
  %6090 = add i64 %7361, 2192
  store i64 %6090, i64* %PC, align 8
  %6091 = inttoptr i64 %6089 to i64*
  %6092 = load i64, i64* %6091, align 8
  store i64 %6092, i64* %RCX, align 8, !tbaa !2428
  %6093 = add i64 %6092, 20
  %6094 = add i64 %7361, 2196
  store i64 %6094, i64* %PC, align 8
  %6095 = inttoptr i64 %6093 to i32*
  %6096 = load i32, i32* %6095, align 4
  %6097 = sext i32 %6087 to i64
  %6098 = sext i32 %6096 to i64
  %6099 = mul nsw i64 %6098, %6097
  %6100 = and i64 %6099, 4294967295
  store i64 %6100, i64* %RSI, align 8, !tbaa !2428
  %6101 = trunc i64 %6099 to i32
  %6102 = add i32 %6101, %6072
  %6103 = zext i32 %6102 to i64
  store i64 %6103, i64* %RDX, align 8, !tbaa !2428
  %6104 = icmp ult i32 %6102, %6072
  %6105 = icmp ult i32 %6102, %6101
  %6106 = or i1 %6104, %6105
  %6107 = zext i1 %6106 to i8
  store i8 %6107, i8* %82, align 1, !tbaa !2434
  %6108 = and i32 %6102, 255
  %6109 = tail call i32 @llvm.ctpop.i32(i32 %6108) #9
  %6110 = trunc i32 %6109 to i8
  %6111 = and i8 %6110, 1
  %6112 = xor i8 %6111, 1
  store i8 %6112, i8* %88, align 1, !tbaa !2448
  %6113 = xor i64 %6099, %6070
  %6114 = trunc i64 %6113 to i32
  %6115 = xor i32 %6114, %6102
  %6116 = lshr i32 %6115, 4
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  store i8 %6118, i8* %93, align 1, !tbaa !2449
  %6119 = icmp eq i32 %6102, 0
  %6120 = zext i1 %6119 to i8
  store i8 %6120, i8* %96, align 1, !tbaa !2450
  %6121 = lshr i32 %6102, 31
  %6122 = trunc i32 %6121 to i8
  store i8 %6122, i8* %99, align 1, !tbaa !2451
  %6123 = lshr i32 %6101, 31
  %6124 = xor i32 %6121, %6081
  %6125 = xor i32 %6121, %6123
  %6126 = add nuw nsw i32 %6124, %6125
  %6127 = icmp eq i32 %6126, 2
  %6128 = zext i1 %6127 to i8
  store i8 %6128, i8* %105, align 1, !tbaa !2452
  %6129 = add i64 %6083, -76
  %6130 = add i64 %7361, 2201
  store i64 %6130, i64* %PC, align 8
  %6131 = inttoptr i64 %6129 to i32*
  %6132 = load i32, i32* %6131, align 4
  %6133 = add i32 %6132, -1
  %6134 = zext i32 %6133 to i64
  store i64 %6134, i64* %RSI, align 8, !tbaa !2428
  %6135 = lshr i32 %6133, 31
  %6136 = add i32 %6133, %6102
  %6137 = zext i32 %6136 to i64
  store i64 %6137, i64* %RDX, align 8, !tbaa !2428
  %6138 = icmp ult i32 %6136, %6102
  %6139 = icmp ult i32 %6136, %6133
  %6140 = or i1 %6138, %6139
  %6141 = zext i1 %6140 to i8
  store i8 %6141, i8* %82, align 1, !tbaa !2434
  %6142 = and i32 %6136, 255
  %6143 = tail call i32 @llvm.ctpop.i32(i32 %6142) #9
  %6144 = trunc i32 %6143 to i8
  %6145 = and i8 %6144, 1
  %6146 = xor i8 %6145, 1
  store i8 %6146, i8* %88, align 1, !tbaa !2448
  %6147 = xor i32 %6133, %6102
  %6148 = xor i32 %6147, %6136
  %6149 = lshr i32 %6148, 4
  %6150 = trunc i32 %6149 to i8
  %6151 = and i8 %6150, 1
  store i8 %6151, i8* %93, align 1, !tbaa !2449
  %6152 = icmp eq i32 %6136, 0
  %6153 = zext i1 %6152 to i8
  store i8 %6153, i8* %96, align 1, !tbaa !2450
  %6154 = lshr i32 %6136, 31
  %6155 = trunc i32 %6154 to i8
  store i8 %6155, i8* %99, align 1, !tbaa !2451
  %6156 = xor i32 %6154, %6121
  %6157 = xor i32 %6154, %6135
  %6158 = add nuw nsw i32 %6156, %6157
  %6159 = icmp eq i32 %6158, 2
  %6160 = zext i1 %6159 to i8
  store i8 %6160, i8* %105, align 1, !tbaa !2452
  %6161 = sext i32 %6136 to i64
  store i64 %6161, i64* %RCX, align 8, !tbaa !2428
  %6162 = load i64, i64* %RAX, align 8
  %6163 = shl nsw i64 %6161, 2
  %6164 = add i64 %6162, %6163
  %6165 = add i64 %7361, 2214
  store i64 %6165, i64* %PC, align 8
  %6166 = load <2 x float>, <2 x float>* %207, align 1
  %6167 = load <2 x i32>, <2 x i32>* %208, align 1
  %6168 = inttoptr i64 %6164 to float*
  %6169 = load float, float* %6168, align 4
  %6170 = extractelement <2 x float> %6166, i32 0
  %6171 = fmul float %6170, %6169
  store float %6171, float* %199, align 1, !tbaa !2453
  %6172 = bitcast <2 x float> %6166 to <2 x i32>
  %6173 = extractelement <2 x i32> %6172, i32 1
  store i32 %6173, i32* %209, align 1, !tbaa !2453
  %6174 = extractelement <2 x i32> %6167, i32 0
  store i32 %6174, i32* %210, align 1, !tbaa !2453
  %6175 = extractelement <2 x i32> %6167, i32 1
  store i32 %6175, i32* %211, align 1, !tbaa !2453
  %6176 = load <2 x float>, <2 x float>* %192, align 1
  %6177 = load <2 x i32>, <2 x i32>* %197, align 1
  %6178 = load <2 x float>, <2 x float>* %207, align 1
  %6179 = extractelement <2 x float> %6176, i32 0
  %6180 = extractelement <2 x float> %6178, i32 0
  %6181 = fadd float %6179, %6180
  store float %6181, float* %193, align 1, !tbaa !2453
  %6182 = bitcast <2 x float> %6176 to <2 x i32>
  %6183 = extractelement <2 x i32> %6182, i32 1
  store i32 %6183, i32* %188, align 1, !tbaa !2453
  %6184 = extractelement <2 x i32> %6177, i32 0
  store i32 %6184, i32* %189, align 1, !tbaa !2453
  %6185 = extractelement <2 x i32> %6177, i32 1
  store i32 %6185, i32* %191, align 1, !tbaa !2453
  %6186 = load i64, i64* %RBP, align 8
  %6187 = add i64 %6186, -56
  %6188 = add i64 %7361, 2222
  store i64 %6188, i64* %PC, align 8
  %6189 = inttoptr i64 %6187 to i64*
  %6190 = load i64, i64* %6189, align 8
  store i64 %6190, i64* %RAX, align 8, !tbaa !2428
  %6191 = add i64 %7361, 2225
  store i64 %6191, i64* %PC, align 8
  %6192 = inttoptr i64 %6190 to i64*
  %6193 = load i64, i64* %6192, align 8
  store i64 %6193, i64* %RAX, align 8, !tbaa !2428
  %6194 = add i64 %7361, 2229
  store i64 %6194, i64* %PC, align 8
  %6195 = load i64, i64* %6189, align 8
  store i64 %6195, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6196 = add i64 %7361, 2237
  store i64 %6196, i64* %PC, align 8
  %6197 = load i64, i64* %6189, align 8
  store i64 %6197, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6198 = add i64 %7361, 2245
  store i64 %6198, i64* %PC, align 8
  %6199 = load i64, i64* %6189, align 8
  store i64 %6199, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6200 = add i64 %6186, -68
  %6201 = add i64 %7361, 2252
  store i64 %6201, i64* %PC, align 8
  %6202 = inttoptr i64 %6200 to i32*
  %6203 = load i32, i32* %6202, align 4
  %6204 = zext i32 %6203 to i64
  store i64 %6204, i64* %RSI, align 8, !tbaa !2428
  %6205 = add i64 %7361, 2256
  store i64 %6205, i64* %PC, align 8
  %6206 = load i64, i64* %6189, align 8
  store i64 %6206, i64* %RCX, align 8, !tbaa !2428
  %6207 = add i64 %6206, 16
  %6208 = add i64 %7361, 2260
  store i64 %6208, i64* %PC, align 8
  %6209 = inttoptr i64 %6207 to i32*
  %6210 = load i32, i32* %6209, align 4
  %6211 = sext i32 %6203 to i64
  %6212 = sext i32 %6210 to i64
  %6213 = mul nsw i64 %6212, %6211
  %6214 = trunc i64 %6213 to i32
  %6215 = and i64 %6213, 4294967295
  store i64 %6215, i64* %RSI, align 8, !tbaa !2428
  %6216 = shl i64 %6213, 32
  %6217 = ashr exact i64 %6216, 32
  %6218 = icmp ne i64 %6217, %6213
  %6219 = zext i1 %6218 to i8
  store i8 %6219, i8* %82, align 1, !tbaa !2434
  %6220 = and i32 %6214, 255
  %6221 = tail call i32 @llvm.ctpop.i32(i32 %6220) #9
  %6222 = trunc i32 %6221 to i8
  %6223 = and i8 %6222, 1
  %6224 = xor i8 %6223, 1
  store i8 %6224, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6225 = lshr i32 %6214, 31
  %6226 = trunc i32 %6225 to i8
  store i8 %6226, i8* %99, align 1, !tbaa !2451
  store i8 %6219, i8* %105, align 1, !tbaa !2452
  %6227 = add i64 %7361, 2264
  store i64 %6227, i64* %PC, align 8
  %6228 = load i64, i64* %6189, align 8
  store i64 %6228, i64* %RCX, align 8, !tbaa !2428
  %6229 = add i64 %6228, 20
  %6230 = add i64 %7361, 2268
  store i64 %6230, i64* %PC, align 8
  %6231 = inttoptr i64 %6229 to i32*
  %6232 = load i32, i32* %6231, align 4
  %6233 = shl i64 %6213, 32
  %6234 = ashr exact i64 %6233, 32
  %6235 = sext i32 %6232 to i64
  %6236 = mul nsw i64 %6235, %6234
  %6237 = and i64 %6236, 4294967295
  store i64 %6237, i64* %RSI, align 8, !tbaa !2428
  %6238 = trunc i64 %6236 to i32
  %6239 = and i64 %6236, 4294967295
  store i64 %6239, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %6240 = and i32 %6238, 255
  %6241 = tail call i32 @llvm.ctpop.i32(i32 %6240) #9
  %6242 = trunc i32 %6241 to i8
  %6243 = and i8 %6242, 1
  %6244 = xor i8 %6243, 1
  store i8 %6244, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %6245 = icmp eq i32 %6238, 0
  %6246 = zext i1 %6245 to i8
  store i8 %6246, i8* %96, align 1, !tbaa !2450
  %6247 = lshr i32 %6238, 31
  %6248 = trunc i32 %6247 to i8
  store i8 %6248, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6249 = load i64, i64* %RBP, align 8
  %6250 = add i64 %6249, -72
  %6251 = add i64 %7361, 2273
  store i64 %6251, i64* %PC, align 8
  %6252 = inttoptr i64 %6250 to i32*
  %6253 = load i32, i32* %6252, align 4
  %6254 = zext i32 %6253 to i64
  store i64 %6254, i64* %RSI, align 8, !tbaa !2428
  %6255 = add i64 %6249, -56
  %6256 = add i64 %7361, 2277
  store i64 %6256, i64* %PC, align 8
  %6257 = inttoptr i64 %6255 to i64*
  %6258 = load i64, i64* %6257, align 8
  store i64 %6258, i64* %RCX, align 8, !tbaa !2428
  %6259 = add i64 %6258, 20
  %6260 = add i64 %7361, 2281
  store i64 %6260, i64* %PC, align 8
  %6261 = inttoptr i64 %6259 to i32*
  %6262 = load i32, i32* %6261, align 4
  %6263 = sext i32 %6253 to i64
  %6264 = sext i32 %6262 to i64
  %6265 = mul nsw i64 %6264, %6263
  %6266 = and i64 %6265, 4294967295
  store i64 %6266, i64* %RSI, align 8, !tbaa !2428
  %6267 = trunc i64 %6265 to i32
  %6268 = add i32 %6267, %6238
  %6269 = zext i32 %6268 to i64
  store i64 %6269, i64* %RDX, align 8, !tbaa !2428
  %6270 = icmp ult i32 %6268, %6238
  %6271 = icmp ult i32 %6268, %6267
  %6272 = or i1 %6270, %6271
  %6273 = zext i1 %6272 to i8
  store i8 %6273, i8* %82, align 1, !tbaa !2434
  %6274 = and i32 %6268, 255
  %6275 = tail call i32 @llvm.ctpop.i32(i32 %6274) #9
  %6276 = trunc i32 %6275 to i8
  %6277 = and i8 %6276, 1
  %6278 = xor i8 %6277, 1
  store i8 %6278, i8* %88, align 1, !tbaa !2448
  %6279 = xor i64 %6265, %6236
  %6280 = trunc i64 %6279 to i32
  %6281 = xor i32 %6280, %6268
  %6282 = lshr i32 %6281, 4
  %6283 = trunc i32 %6282 to i8
  %6284 = and i8 %6283, 1
  store i8 %6284, i8* %93, align 1, !tbaa !2449
  %6285 = icmp eq i32 %6268, 0
  %6286 = zext i1 %6285 to i8
  store i8 %6286, i8* %96, align 1, !tbaa !2450
  %6287 = lshr i32 %6268, 31
  %6288 = trunc i32 %6287 to i8
  store i8 %6288, i8* %99, align 1, !tbaa !2451
  %6289 = lshr i32 %6267, 31
  %6290 = xor i32 %6287, %6247
  %6291 = xor i32 %6287, %6289
  %6292 = add nuw nsw i32 %6290, %6291
  %6293 = icmp eq i32 %6292, 2
  %6294 = zext i1 %6293 to i8
  store i8 %6294, i8* %105, align 1, !tbaa !2452
  %6295 = add i64 %6249, -76
  %6296 = add i64 %7361, 2286
  store i64 %6296, i64* %PC, align 8
  %6297 = inttoptr i64 %6295 to i32*
  %6298 = load i32, i32* %6297, align 4
  %6299 = add i32 %6298, %6268
  %6300 = zext i32 %6299 to i64
  store i64 %6300, i64* %RDX, align 8, !tbaa !2428
  %6301 = icmp ult i32 %6299, %6268
  %6302 = icmp ult i32 %6299, %6298
  %6303 = or i1 %6301, %6302
  %6304 = zext i1 %6303 to i8
  store i8 %6304, i8* %82, align 1, !tbaa !2434
  %6305 = and i32 %6299, 255
  %6306 = tail call i32 @llvm.ctpop.i32(i32 %6305) #9
  %6307 = trunc i32 %6306 to i8
  %6308 = and i8 %6307, 1
  %6309 = xor i8 %6308, 1
  store i8 %6309, i8* %88, align 1, !tbaa !2448
  %6310 = xor i32 %6298, %6268
  %6311 = xor i32 %6310, %6299
  %6312 = lshr i32 %6311, 4
  %6313 = trunc i32 %6312 to i8
  %6314 = and i8 %6313, 1
  store i8 %6314, i8* %93, align 1, !tbaa !2449
  %6315 = icmp eq i32 %6299, 0
  %6316 = zext i1 %6315 to i8
  store i8 %6316, i8* %96, align 1, !tbaa !2450
  %6317 = lshr i32 %6299, 31
  %6318 = trunc i32 %6317 to i8
  store i8 %6318, i8* %99, align 1, !tbaa !2451
  %6319 = lshr i32 %6298, 31
  %6320 = xor i32 %6317, %6287
  %6321 = xor i32 %6317, %6319
  %6322 = add nuw nsw i32 %6320, %6321
  %6323 = icmp eq i32 %6322, 2
  %6324 = zext i1 %6323 to i8
  store i8 %6324, i8* %105, align 1, !tbaa !2452
  %6325 = sext i32 %6299 to i64
  store i64 %6325, i64* %RCX, align 8, !tbaa !2428
  %6326 = load i64, i64* %RAX, align 8
  %6327 = shl nsw i64 %6325, 2
  %6328 = add i64 %6326, %6327
  %6329 = add i64 %7361, 2294
  store i64 %6329, i64* %PC, align 8
  %6330 = load <2 x float>, <2 x float>* %192, align 1
  %6331 = load <2 x i32>, <2 x i32>* %197, align 1
  %6332 = inttoptr i64 %6328 to float*
  %6333 = load float, float* %6332, align 4
  %6334 = extractelement <2 x float> %6330, i32 0
  %6335 = fadd float %6334, %6333
  store float %6335, float* %193, align 1, !tbaa !2453
  %6336 = bitcast <2 x float> %6330 to <2 x i32>
  %6337 = extractelement <2 x i32> %6336, i32 1
  store i32 %6337, i32* %188, align 1, !tbaa !2453
  %6338 = extractelement <2 x i32> %6331, i32 0
  store i32 %6338, i32* %189, align 1, !tbaa !2453
  %6339 = extractelement <2 x i32> %6331, i32 1
  store i32 %6339, i32* %191, align 1, !tbaa !2453
  %6340 = load i64, i64* %RBP, align 8
  %6341 = add i64 %6340, -100
  %6342 = add i64 %7361, 2299
  store i64 %6342, i64* %PC, align 8
  %6343 = load <2 x float>, <2 x float>* %192, align 1
  %6344 = extractelement <2 x float> %6343, i32 0
  %6345 = inttoptr i64 %6341 to float*
  store float %6344, float* %6345, align 4
  %6346 = load i64, i64* %RBP, align 8
  %6347 = add i64 %6346, -100
  %6348 = load i64, i64* %PC, align 8
  %6349 = add i64 %6348, 5
  store i64 %6349, i64* %PC, align 8
  %6350 = inttoptr i64 %6347 to i32*
  %6351 = load i32, i32* %6350, align 4
  store i32 %6351, i32* %186, align 1, !tbaa !2453
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  store float 0.000000e+00, float* %195, align 1, !tbaa !2453
  store float 0.000000e+00, float* %196, align 1, !tbaa !2453
  %6352 = add i64 %6346, -16
  %6353 = add i64 %6348, 9
  store i64 %6353, i64* %PC, align 8
  %6354 = inttoptr i64 %6352 to i64*
  %6355 = load i64, i64* %6354, align 8
  store i64 %6355, i64* %RAX, align 8, !tbaa !2428
  %6356 = add i64 %6348, 12
  store i64 %6356, i64* %PC, align 8
  %6357 = inttoptr i64 %6355 to i64*
  %6358 = load i64, i64* %6357, align 8
  store i64 %6358, i64* %RAX, align 8, !tbaa !2428
  %6359 = add i64 %6348, 16
  store i64 %6359, i64* %PC, align 8
  %6360 = load i64, i64* %6354, align 8
  store i64 %6360, i64* %RCX, align 8, !tbaa !2428
  %6361 = add i64 %6360, 12
  %6362 = add i64 %6348, 20
  store i64 %6362, i64* %PC, align 8
  %6363 = inttoptr i64 %6361 to i32*
  %6364 = load i32, i32* %6363, align 4
  %6365 = sext i32 %6364 to i64
  %6366 = mul nsw i64 %6365, 3
  %6367 = trunc i64 %6366 to i32
  %6368 = and i64 %6366, 4294967295
  store i64 %6368, i64* %RDX, align 8, !tbaa !2428
  %6369 = mul i64 %6365, 12884901888
  %6370 = ashr exact i64 %6369, 32
  %6371 = icmp ne i64 %6370, %6366
  %6372 = zext i1 %6371 to i8
  store i8 %6372, i8* %82, align 1, !tbaa !2434
  %6373 = and i32 %6367, 255
  %6374 = tail call i32 @llvm.ctpop.i32(i32 %6373) #9
  %6375 = trunc i32 %6374 to i8
  %6376 = and i8 %6375, 1
  %6377 = xor i8 %6376, 1
  store i8 %6377, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6378 = lshr i32 %6367, 31
  %6379 = trunc i32 %6378 to i8
  store i8 %6379, i8* %99, align 1, !tbaa !2451
  store i8 %6372, i8* %105, align 1, !tbaa !2452
  %6380 = add i64 %6348, 24
  store i64 %6380, i64* %PC, align 8
  %6381 = load i64, i64* %6354, align 8
  store i64 %6381, i64* %RCX, align 8, !tbaa !2428
  %6382 = add i64 %6381, 16
  %6383 = add i64 %6348, 28
  store i64 %6383, i64* %PC, align 8
  %6384 = inttoptr i64 %6382 to i32*
  %6385 = load i32, i32* %6384, align 4
  %6386 = mul i64 %6365, 12884901888
  %6387 = ashr exact i64 %6386, 32
  %6388 = sext i32 %6385 to i64
  %6389 = mul nsw i64 %6388, %6387
  %6390 = trunc i64 %6389 to i32
  %6391 = and i64 %6389, 4294967295
  store i64 %6391, i64* %RDX, align 8, !tbaa !2428
  %6392 = shl i64 %6389, 32
  %6393 = ashr exact i64 %6392, 32
  %6394 = icmp ne i64 %6393, %6389
  %6395 = zext i1 %6394 to i8
  store i8 %6395, i8* %82, align 1, !tbaa !2434
  %6396 = and i32 %6390, 255
  %6397 = tail call i32 @llvm.ctpop.i32(i32 %6396) #9
  %6398 = trunc i32 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = xor i8 %6399, 1
  store i8 %6400, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6401 = lshr i32 %6390, 31
  %6402 = trunc i32 %6401 to i8
  store i8 %6402, i8* %99, align 1, !tbaa !2451
  store i8 %6395, i8* %105, align 1, !tbaa !2452
  %6403 = add i64 %6348, 32
  store i64 %6403, i64* %PC, align 8
  %6404 = load i64, i64* %6354, align 8
  store i64 %6404, i64* %RCX, align 8, !tbaa !2428
  %6405 = add i64 %6404, 20
  %6406 = add i64 %6348, 36
  store i64 %6406, i64* %PC, align 8
  %6407 = inttoptr i64 %6405 to i32*
  %6408 = load i32, i32* %6407, align 4
  %6409 = shl i64 %6389, 32
  %6410 = ashr exact i64 %6409, 32
  %6411 = sext i32 %6408 to i64
  %6412 = mul nsw i64 %6411, %6410
  %6413 = trunc i64 %6412 to i32
  %6414 = and i64 %6412, 4294967295
  store i64 %6414, i64* %RDX, align 8, !tbaa !2428
  %6415 = shl i64 %6412, 32
  %6416 = ashr exact i64 %6415, 32
  %6417 = icmp ne i64 %6416, %6412
  %6418 = zext i1 %6417 to i8
  store i8 %6418, i8* %82, align 1, !tbaa !2434
  %6419 = and i32 %6413, 255
  %6420 = tail call i32 @llvm.ctpop.i32(i32 %6419) #9
  %6421 = trunc i32 %6420 to i8
  %6422 = and i8 %6421, 1
  %6423 = xor i8 %6422, 1
  store i8 %6423, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6424 = lshr i32 %6413, 31
  %6425 = trunc i32 %6424 to i8
  store i8 %6425, i8* %99, align 1, !tbaa !2451
  store i8 %6418, i8* %105, align 1, !tbaa !2452
  %6426 = load i64, i64* %RBP, align 8
  %6427 = add i64 %6426, -68
  %6428 = add i64 %6348, 39
  store i64 %6428, i64* %PC, align 8
  %6429 = inttoptr i64 %6427 to i32*
  %6430 = load i32, i32* %6429, align 4
  %6431 = zext i32 %6430 to i64
  store i64 %6431, i64* %RSI, align 8, !tbaa !2428
  %6432 = add i64 %6426, -16
  %6433 = add i64 %6348, 43
  store i64 %6433, i64* %PC, align 8
  %6434 = inttoptr i64 %6432 to i64*
  %6435 = load i64, i64* %6434, align 8
  store i64 %6435, i64* %RCX, align 8, !tbaa !2428
  %6436 = add i64 %6435, 16
  %6437 = add i64 %6348, 47
  store i64 %6437, i64* %PC, align 8
  %6438 = inttoptr i64 %6436 to i32*
  %6439 = load i32, i32* %6438, align 4
  %6440 = sext i32 %6430 to i64
  %6441 = sext i32 %6439 to i64
  %6442 = mul nsw i64 %6441, %6440
  %6443 = trunc i64 %6442 to i32
  %6444 = and i64 %6442, 4294967295
  store i64 %6444, i64* %RSI, align 8, !tbaa !2428
  %6445 = shl i64 %6442, 32
  %6446 = ashr exact i64 %6445, 32
  %6447 = icmp ne i64 %6446, %6442
  %6448 = zext i1 %6447 to i8
  store i8 %6448, i8* %82, align 1, !tbaa !2434
  %6449 = and i32 %6443, 255
  %6450 = tail call i32 @llvm.ctpop.i32(i32 %6449) #9
  %6451 = trunc i32 %6450 to i8
  %6452 = and i8 %6451, 1
  %6453 = xor i8 %6452, 1
  store i8 %6453, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6454 = lshr i32 %6443, 31
  %6455 = trunc i32 %6454 to i8
  store i8 %6455, i8* %99, align 1, !tbaa !2451
  store i8 %6448, i8* %105, align 1, !tbaa !2452
  %6456 = add i64 %6348, 51
  store i64 %6456, i64* %PC, align 8
  %6457 = load i64, i64* %6434, align 8
  store i64 %6457, i64* %RCX, align 8, !tbaa !2428
  %6458 = add i64 %6457, 20
  %6459 = add i64 %6348, 55
  store i64 %6459, i64* %PC, align 8
  %6460 = inttoptr i64 %6458 to i32*
  %6461 = load i32, i32* %6460, align 4
  %6462 = shl i64 %6442, 32
  %6463 = ashr exact i64 %6462, 32
  %6464 = sext i32 %6461 to i64
  %6465 = mul nsw i64 %6464, %6463
  %6466 = and i64 %6465, 4294967295
  store i64 %6466, i64* %RSI, align 8, !tbaa !2428
  %6467 = trunc i64 %6465 to i32
  %6468 = trunc i64 %6412 to i32
  %6469 = add i32 %6467, %6468
  %6470 = zext i32 %6469 to i64
  store i64 %6470, i64* %RDX, align 8, !tbaa !2428
  %6471 = icmp ult i32 %6469, %6468
  %6472 = icmp ult i32 %6469, %6467
  %6473 = or i1 %6471, %6472
  %6474 = zext i1 %6473 to i8
  store i8 %6474, i8* %82, align 1, !tbaa !2434
  %6475 = and i32 %6469, 255
  %6476 = tail call i32 @llvm.ctpop.i32(i32 %6475) #9
  %6477 = trunc i32 %6476 to i8
  %6478 = and i8 %6477, 1
  %6479 = xor i8 %6478, 1
  store i8 %6479, i8* %88, align 1, !tbaa !2448
  %6480 = xor i64 %6465, %6412
  %6481 = trunc i64 %6480 to i32
  %6482 = xor i32 %6481, %6469
  %6483 = lshr i32 %6482, 4
  %6484 = trunc i32 %6483 to i8
  %6485 = and i8 %6484, 1
  store i8 %6485, i8* %93, align 1, !tbaa !2449
  %6486 = icmp eq i32 %6469, 0
  %6487 = zext i1 %6486 to i8
  store i8 %6487, i8* %96, align 1, !tbaa !2450
  %6488 = lshr i32 %6469, 31
  %6489 = trunc i32 %6488 to i8
  store i8 %6489, i8* %99, align 1, !tbaa !2451
  %6490 = lshr i32 %6468, 31
  %6491 = lshr i32 %6467, 31
  %6492 = xor i32 %6488, %6490
  %6493 = xor i32 %6488, %6491
  %6494 = add nuw nsw i32 %6492, %6493
  %6495 = icmp eq i32 %6494, 2
  %6496 = zext i1 %6495 to i8
  store i8 %6496, i8* %105, align 1, !tbaa !2452
  %6497 = load i64, i64* %RBP, align 8
  %6498 = add i64 %6497, -72
  %6499 = add i64 %6348, 60
  store i64 %6499, i64* %PC, align 8
  %6500 = inttoptr i64 %6498 to i32*
  %6501 = load i32, i32* %6500, align 4
  %6502 = zext i32 %6501 to i64
  store i64 %6502, i64* %RSI, align 8, !tbaa !2428
  %6503 = add i64 %6497, -16
  %6504 = add i64 %6348, 64
  store i64 %6504, i64* %PC, align 8
  %6505 = inttoptr i64 %6503 to i64*
  %6506 = load i64, i64* %6505, align 8
  store i64 %6506, i64* %RCX, align 8, !tbaa !2428
  %6507 = add i64 %6506, 20
  %6508 = add i64 %6348, 68
  store i64 %6508, i64* %PC, align 8
  %6509 = inttoptr i64 %6507 to i32*
  %6510 = load i32, i32* %6509, align 4
  %6511 = sext i32 %6501 to i64
  %6512 = sext i32 %6510 to i64
  %6513 = mul nsw i64 %6512, %6511
  %6514 = and i64 %6513, 4294967295
  store i64 %6514, i64* %RSI, align 8, !tbaa !2428
  %6515 = trunc i64 %6513 to i32
  %6516 = add i32 %6515, %6469
  %6517 = zext i32 %6516 to i64
  store i64 %6517, i64* %RDX, align 8, !tbaa !2428
  %6518 = icmp ult i32 %6516, %6469
  %6519 = icmp ult i32 %6516, %6515
  %6520 = or i1 %6518, %6519
  %6521 = zext i1 %6520 to i8
  store i8 %6521, i8* %82, align 1, !tbaa !2434
  %6522 = and i32 %6516, 255
  %6523 = tail call i32 @llvm.ctpop.i32(i32 %6522) #9
  %6524 = trunc i32 %6523 to i8
  %6525 = and i8 %6524, 1
  %6526 = xor i8 %6525, 1
  store i8 %6526, i8* %88, align 1, !tbaa !2448
  %6527 = xor i64 %6513, %6470
  %6528 = trunc i64 %6527 to i32
  %6529 = xor i32 %6528, %6516
  %6530 = lshr i32 %6529, 4
  %6531 = trunc i32 %6530 to i8
  %6532 = and i8 %6531, 1
  store i8 %6532, i8* %93, align 1, !tbaa !2449
  %6533 = icmp eq i32 %6516, 0
  %6534 = zext i1 %6533 to i8
  store i8 %6534, i8* %96, align 1, !tbaa !2450
  %6535 = lshr i32 %6516, 31
  %6536 = trunc i32 %6535 to i8
  store i8 %6536, i8* %99, align 1, !tbaa !2451
  %6537 = lshr i32 %6515, 31
  %6538 = xor i32 %6535, %6488
  %6539 = xor i32 %6535, %6537
  %6540 = add nuw nsw i32 %6538, %6539
  %6541 = icmp eq i32 %6540, 2
  %6542 = zext i1 %6541 to i8
  store i8 %6542, i8* %105, align 1, !tbaa !2452
  %6543 = add i64 %6497, -76
  %6544 = add i64 %6348, 73
  store i64 %6544, i64* %PC, align 8
  %6545 = inttoptr i64 %6543 to i32*
  %6546 = load i32, i32* %6545, align 4
  %6547 = add i32 %6546, %6516
  %6548 = zext i32 %6547 to i64
  store i64 %6548, i64* %RDX, align 8, !tbaa !2428
  %6549 = icmp ult i32 %6547, %6516
  %6550 = icmp ult i32 %6547, %6546
  %6551 = or i1 %6549, %6550
  %6552 = zext i1 %6551 to i8
  store i8 %6552, i8* %82, align 1, !tbaa !2434
  %6553 = and i32 %6547, 255
  %6554 = tail call i32 @llvm.ctpop.i32(i32 %6553) #9
  %6555 = trunc i32 %6554 to i8
  %6556 = and i8 %6555, 1
  %6557 = xor i8 %6556, 1
  store i8 %6557, i8* %88, align 1, !tbaa !2448
  %6558 = xor i32 %6546, %6516
  %6559 = xor i32 %6558, %6547
  %6560 = lshr i32 %6559, 4
  %6561 = trunc i32 %6560 to i8
  %6562 = and i8 %6561, 1
  store i8 %6562, i8* %93, align 1, !tbaa !2449
  %6563 = icmp eq i32 %6547, 0
  %6564 = zext i1 %6563 to i8
  store i8 %6564, i8* %96, align 1, !tbaa !2450
  %6565 = lshr i32 %6547, 31
  %6566 = trunc i32 %6565 to i8
  store i8 %6566, i8* %99, align 1, !tbaa !2451
  %6567 = lshr i32 %6546, 31
  %6568 = xor i32 %6565, %6535
  %6569 = xor i32 %6565, %6567
  %6570 = add nuw nsw i32 %6568, %6569
  %6571 = icmp eq i32 %6570, 2
  %6572 = zext i1 %6571 to i8
  store i8 %6572, i8* %105, align 1, !tbaa !2452
  %6573 = sext i32 %6547 to i64
  store i64 %6573, i64* %RCX, align 8, !tbaa !2428
  %6574 = load i64, i64* %RAX, align 8
  %6575 = shl nsw i64 %6573, 2
  %6576 = add i64 %6574, %6575
  %6577 = add i64 %6348, 81
  store i64 %6577, i64* %PC, align 8
  %6578 = load <2 x float>, <2 x float>* %192, align 1
  %6579 = load <2 x i32>, <2 x i32>* %197, align 1
  %6580 = inttoptr i64 %6576 to float*
  %6581 = load float, float* %6580, align 4
  %6582 = extractelement <2 x float> %6578, i32 0
  %6583 = fmul float %6582, %6581
  store float %6583, float* %193, align 1, !tbaa !2453
  %6584 = bitcast <2 x float> %6578 to <2 x i32>
  %6585 = extractelement <2 x i32> %6584, i32 1
  store i32 %6585, i32* %188, align 1, !tbaa !2453
  %6586 = extractelement <2 x i32> %6579, i32 0
  store i32 %6586, i32* %189, align 1, !tbaa !2453
  %6587 = extractelement <2 x i32> %6579, i32 1
  store i32 %6587, i32* %191, align 1, !tbaa !2453
  %6588 = load i64, i64* %RBP, align 8
  %6589 = add i64 %6588, -40
  %6590 = add i64 %6348, 85
  store i64 %6590, i64* %PC, align 8
  %6591 = inttoptr i64 %6589 to i64*
  %6592 = load i64, i64* %6591, align 8
  store i64 %6592, i64* %RAX, align 8, !tbaa !2428
  %6593 = add i64 %6348, 88
  store i64 %6593, i64* %PC, align 8
  %6594 = inttoptr i64 %6592 to i64*
  %6595 = load i64, i64* %6594, align 8
  store i64 %6595, i64* %RAX, align 8, !tbaa !2428
  %6596 = add i64 %6348, 92
  store i64 %6596, i64* %PC, align 8
  %6597 = load i64, i64* %6591, align 8
  store i64 %6597, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6598 = add i64 %6348, 100
  store i64 %6598, i64* %PC, align 8
  %6599 = load i64, i64* %6591, align 8
  store i64 %6599, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6600 = add i64 %6348, 108
  store i64 %6600, i64* %PC, align 8
  %6601 = load i64, i64* %6591, align 8
  store i64 %6601, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6602 = add i64 %6588, -68
  %6603 = add i64 %6348, 115
  store i64 %6603, i64* %PC, align 8
  %6604 = inttoptr i64 %6602 to i32*
  %6605 = load i32, i32* %6604, align 4
  %6606 = zext i32 %6605 to i64
  store i64 %6606, i64* %RSI, align 8, !tbaa !2428
  %6607 = add i64 %6348, 119
  store i64 %6607, i64* %PC, align 8
  %6608 = load i64, i64* %6591, align 8
  store i64 %6608, i64* %RCX, align 8, !tbaa !2428
  %6609 = add i64 %6608, 16
  %6610 = add i64 %6348, 123
  store i64 %6610, i64* %PC, align 8
  %6611 = inttoptr i64 %6609 to i32*
  %6612 = load i32, i32* %6611, align 4
  %6613 = sext i32 %6605 to i64
  %6614 = sext i32 %6612 to i64
  %6615 = mul nsw i64 %6614, %6613
  %6616 = trunc i64 %6615 to i32
  %6617 = and i64 %6615, 4294967295
  store i64 %6617, i64* %RSI, align 8, !tbaa !2428
  %6618 = shl i64 %6615, 32
  %6619 = ashr exact i64 %6618, 32
  %6620 = icmp ne i64 %6619, %6615
  %6621 = zext i1 %6620 to i8
  store i8 %6621, i8* %82, align 1, !tbaa !2434
  %6622 = and i32 %6616, 255
  %6623 = tail call i32 @llvm.ctpop.i32(i32 %6622) #9
  %6624 = trunc i32 %6623 to i8
  %6625 = and i8 %6624, 1
  %6626 = xor i8 %6625, 1
  store i8 %6626, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6627 = lshr i32 %6616, 31
  %6628 = trunc i32 %6627 to i8
  store i8 %6628, i8* %99, align 1, !tbaa !2451
  store i8 %6621, i8* %105, align 1, !tbaa !2452
  %6629 = add i64 %6348, 127
  store i64 %6629, i64* %PC, align 8
  %6630 = load i64, i64* %6591, align 8
  store i64 %6630, i64* %RCX, align 8, !tbaa !2428
  %6631 = add i64 %6630, 20
  %6632 = add i64 %6348, 131
  store i64 %6632, i64* %PC, align 8
  %6633 = inttoptr i64 %6631 to i32*
  %6634 = load i32, i32* %6633, align 4
  %6635 = shl i64 %6615, 32
  %6636 = ashr exact i64 %6635, 32
  %6637 = sext i32 %6634 to i64
  %6638 = mul nsw i64 %6637, %6636
  %6639 = and i64 %6638, 4294967295
  store i64 %6639, i64* %RSI, align 8, !tbaa !2428
  %6640 = trunc i64 %6638 to i32
  %6641 = and i64 %6638, 4294967295
  store i64 %6641, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %6642 = and i32 %6640, 255
  %6643 = tail call i32 @llvm.ctpop.i32(i32 %6642) #9
  %6644 = trunc i32 %6643 to i8
  %6645 = and i8 %6644, 1
  %6646 = xor i8 %6645, 1
  store i8 %6646, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %6647 = icmp eq i32 %6640, 0
  %6648 = zext i1 %6647 to i8
  store i8 %6648, i8* %96, align 1, !tbaa !2450
  %6649 = lshr i32 %6640, 31
  %6650 = trunc i32 %6649 to i8
  store i8 %6650, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6651 = load i64, i64* %RBP, align 8
  %6652 = add i64 %6651, -72
  %6653 = add i64 %6348, 136
  store i64 %6653, i64* %PC, align 8
  %6654 = inttoptr i64 %6652 to i32*
  %6655 = load i32, i32* %6654, align 4
  %6656 = zext i32 %6655 to i64
  store i64 %6656, i64* %RSI, align 8, !tbaa !2428
  %6657 = add i64 %6651, -40
  %6658 = add i64 %6348, 140
  store i64 %6658, i64* %PC, align 8
  %6659 = inttoptr i64 %6657 to i64*
  %6660 = load i64, i64* %6659, align 8
  store i64 %6660, i64* %RCX, align 8, !tbaa !2428
  %6661 = add i64 %6660, 20
  %6662 = add i64 %6348, 144
  store i64 %6662, i64* %PC, align 8
  %6663 = inttoptr i64 %6661 to i32*
  %6664 = load i32, i32* %6663, align 4
  %6665 = sext i32 %6655 to i64
  %6666 = sext i32 %6664 to i64
  %6667 = mul nsw i64 %6666, %6665
  %6668 = and i64 %6667, 4294967295
  store i64 %6668, i64* %RSI, align 8, !tbaa !2428
  %6669 = trunc i64 %6667 to i32
  %6670 = add i32 %6669, %6640
  %6671 = zext i32 %6670 to i64
  store i64 %6671, i64* %RDX, align 8, !tbaa !2428
  %6672 = icmp ult i32 %6670, %6640
  %6673 = icmp ult i32 %6670, %6669
  %6674 = or i1 %6672, %6673
  %6675 = zext i1 %6674 to i8
  store i8 %6675, i8* %82, align 1, !tbaa !2434
  %6676 = and i32 %6670, 255
  %6677 = tail call i32 @llvm.ctpop.i32(i32 %6676) #9
  %6678 = trunc i32 %6677 to i8
  %6679 = and i8 %6678, 1
  %6680 = xor i8 %6679, 1
  store i8 %6680, i8* %88, align 1, !tbaa !2448
  %6681 = xor i64 %6667, %6638
  %6682 = trunc i64 %6681 to i32
  %6683 = xor i32 %6682, %6670
  %6684 = lshr i32 %6683, 4
  %6685 = trunc i32 %6684 to i8
  %6686 = and i8 %6685, 1
  store i8 %6686, i8* %93, align 1, !tbaa !2449
  %6687 = icmp eq i32 %6670, 0
  %6688 = zext i1 %6687 to i8
  store i8 %6688, i8* %96, align 1, !tbaa !2450
  %6689 = lshr i32 %6670, 31
  %6690 = trunc i32 %6689 to i8
  store i8 %6690, i8* %99, align 1, !tbaa !2451
  %6691 = lshr i32 %6669, 31
  %6692 = xor i32 %6689, %6649
  %6693 = xor i32 %6689, %6691
  %6694 = add nuw nsw i32 %6692, %6693
  %6695 = icmp eq i32 %6694, 2
  %6696 = zext i1 %6695 to i8
  store i8 %6696, i8* %105, align 1, !tbaa !2452
  %6697 = add i64 %6651, -76
  %6698 = add i64 %6348, 149
  store i64 %6698, i64* %PC, align 8
  %6699 = inttoptr i64 %6697 to i32*
  %6700 = load i32, i32* %6699, align 4
  %6701 = add i32 %6700, %6670
  %6702 = zext i32 %6701 to i64
  store i64 %6702, i64* %RDX, align 8, !tbaa !2428
  %6703 = icmp ult i32 %6701, %6670
  %6704 = icmp ult i32 %6701, %6700
  %6705 = or i1 %6703, %6704
  %6706 = zext i1 %6705 to i8
  store i8 %6706, i8* %82, align 1, !tbaa !2434
  %6707 = and i32 %6701, 255
  %6708 = tail call i32 @llvm.ctpop.i32(i32 %6707) #9
  %6709 = trunc i32 %6708 to i8
  %6710 = and i8 %6709, 1
  %6711 = xor i8 %6710, 1
  store i8 %6711, i8* %88, align 1, !tbaa !2448
  %6712 = xor i32 %6700, %6670
  %6713 = xor i32 %6712, %6701
  %6714 = lshr i32 %6713, 4
  %6715 = trunc i32 %6714 to i8
  %6716 = and i8 %6715, 1
  store i8 %6716, i8* %93, align 1, !tbaa !2449
  %6717 = icmp eq i32 %6701, 0
  %6718 = zext i1 %6717 to i8
  store i8 %6718, i8* %96, align 1, !tbaa !2450
  %6719 = lshr i32 %6701, 31
  %6720 = trunc i32 %6719 to i8
  store i8 %6720, i8* %99, align 1, !tbaa !2451
  %6721 = lshr i32 %6700, 31
  %6722 = xor i32 %6719, %6689
  %6723 = xor i32 %6719, %6721
  %6724 = add nuw nsw i32 %6722, %6723
  %6725 = icmp eq i32 %6724, 2
  %6726 = zext i1 %6725 to i8
  store i8 %6726, i8* %105, align 1, !tbaa !2452
  %6727 = sext i32 %6701 to i64
  store i64 %6727, i64* %RCX, align 8, !tbaa !2428
  %6728 = load i64, i64* %RAX, align 8
  %6729 = shl nsw i64 %6727, 2
  %6730 = add i64 %6728, %6729
  %6731 = add i64 %6348, 157
  store i64 %6731, i64* %PC, align 8
  %6732 = load <2 x float>, <2 x float>* %192, align 1
  %6733 = load <2 x i32>, <2 x i32>* %197, align 1
  %6734 = inttoptr i64 %6730 to float*
  %6735 = load float, float* %6734, align 4
  %6736 = extractelement <2 x float> %6732, i32 0
  %6737 = fsub float %6736, %6735
  store float %6737, float* %193, align 1, !tbaa !2453
  %6738 = bitcast <2 x float> %6732 to <2 x i32>
  %6739 = extractelement <2 x i32> %6738, i32 1
  store i32 %6739, i32* %188, align 1, !tbaa !2453
  %6740 = extractelement <2 x i32> %6733, i32 0
  store i32 %6740, i32* %189, align 1, !tbaa !2453
  %6741 = extractelement <2 x i32> %6733, i32 1
  store i32 %6741, i32* %191, align 1, !tbaa !2453
  %6742 = load i64, i64* %RBP, align 8
  %6743 = add i64 %6742, -48
  %6744 = add i64 %6348, 161
  store i64 %6744, i64* %PC, align 8
  %6745 = inttoptr i64 %6743 to i64*
  %6746 = load i64, i64* %6745, align 8
  store i64 %6746, i64* %RAX, align 8, !tbaa !2428
  %6747 = add i64 %6348, 164
  store i64 %6747, i64* %PC, align 8
  %6748 = inttoptr i64 %6746 to i64*
  %6749 = load i64, i64* %6748, align 8
  store i64 %6749, i64* %RAX, align 8, !tbaa !2428
  %6750 = add i64 %6348, 168
  store i64 %6750, i64* %PC, align 8
  %6751 = load i64, i64* %6745, align 8
  store i64 %6751, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6752 = add i64 %6348, 176
  store i64 %6752, i64* %PC, align 8
  %6753 = load i64, i64* %6745, align 8
  store i64 %6753, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6754 = add i64 %6348, 184
  store i64 %6754, i64* %PC, align 8
  %6755 = load i64, i64* %6745, align 8
  store i64 %6755, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6756 = add i64 %6742, -68
  %6757 = add i64 %6348, 191
  store i64 %6757, i64* %PC, align 8
  %6758 = inttoptr i64 %6756 to i32*
  %6759 = load i32, i32* %6758, align 4
  %6760 = zext i32 %6759 to i64
  store i64 %6760, i64* %RSI, align 8, !tbaa !2428
  %6761 = add i64 %6348, 195
  store i64 %6761, i64* %PC, align 8
  %6762 = load i64, i64* %6745, align 8
  store i64 %6762, i64* %RCX, align 8, !tbaa !2428
  %6763 = add i64 %6762, 16
  %6764 = add i64 %6348, 199
  store i64 %6764, i64* %PC, align 8
  %6765 = inttoptr i64 %6763 to i32*
  %6766 = load i32, i32* %6765, align 4
  %6767 = sext i32 %6759 to i64
  %6768 = sext i32 %6766 to i64
  %6769 = mul nsw i64 %6768, %6767
  %6770 = trunc i64 %6769 to i32
  %6771 = and i64 %6769, 4294967295
  store i64 %6771, i64* %RSI, align 8, !tbaa !2428
  %6772 = shl i64 %6769, 32
  %6773 = ashr exact i64 %6772, 32
  %6774 = icmp ne i64 %6773, %6769
  %6775 = zext i1 %6774 to i8
  store i8 %6775, i8* %82, align 1, !tbaa !2434
  %6776 = and i32 %6770, 255
  %6777 = tail call i32 @llvm.ctpop.i32(i32 %6776) #9
  %6778 = trunc i32 %6777 to i8
  %6779 = and i8 %6778, 1
  %6780 = xor i8 %6779, 1
  store i8 %6780, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6781 = lshr i32 %6770, 31
  %6782 = trunc i32 %6781 to i8
  store i8 %6782, i8* %99, align 1, !tbaa !2451
  store i8 %6775, i8* %105, align 1, !tbaa !2452
  %6783 = add i64 %6348, 203
  store i64 %6783, i64* %PC, align 8
  %6784 = load i64, i64* %6745, align 8
  store i64 %6784, i64* %RCX, align 8, !tbaa !2428
  %6785 = add i64 %6784, 20
  %6786 = add i64 %6348, 207
  store i64 %6786, i64* %PC, align 8
  %6787 = inttoptr i64 %6785 to i32*
  %6788 = load i32, i32* %6787, align 4
  %6789 = shl i64 %6769, 32
  %6790 = ashr exact i64 %6789, 32
  %6791 = sext i32 %6788 to i64
  %6792 = mul nsw i64 %6791, %6790
  %6793 = and i64 %6792, 4294967295
  store i64 %6793, i64* %RSI, align 8, !tbaa !2428
  %6794 = trunc i64 %6792 to i32
  %6795 = and i64 %6792, 4294967295
  store i64 %6795, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %6796 = and i32 %6794, 255
  %6797 = tail call i32 @llvm.ctpop.i32(i32 %6796) #9
  %6798 = trunc i32 %6797 to i8
  %6799 = and i8 %6798, 1
  %6800 = xor i8 %6799, 1
  store i8 %6800, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %6801 = icmp eq i32 %6794, 0
  %6802 = zext i1 %6801 to i8
  store i8 %6802, i8* %96, align 1, !tbaa !2450
  %6803 = lshr i32 %6794, 31
  %6804 = trunc i32 %6803 to i8
  store i8 %6804, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6805 = load i64, i64* %RBP, align 8
  %6806 = add i64 %6805, -72
  %6807 = add i64 %6348, 212
  store i64 %6807, i64* %PC, align 8
  %6808 = inttoptr i64 %6806 to i32*
  %6809 = load i32, i32* %6808, align 4
  %6810 = zext i32 %6809 to i64
  store i64 %6810, i64* %RSI, align 8, !tbaa !2428
  %6811 = add i64 %6805, -48
  %6812 = add i64 %6348, 216
  store i64 %6812, i64* %PC, align 8
  %6813 = inttoptr i64 %6811 to i64*
  %6814 = load i64, i64* %6813, align 8
  store i64 %6814, i64* %RCX, align 8, !tbaa !2428
  %6815 = add i64 %6814, 20
  %6816 = add i64 %6348, 220
  store i64 %6816, i64* %PC, align 8
  %6817 = inttoptr i64 %6815 to i32*
  %6818 = load i32, i32* %6817, align 4
  %6819 = sext i32 %6809 to i64
  %6820 = sext i32 %6818 to i64
  %6821 = mul nsw i64 %6820, %6819
  %6822 = and i64 %6821, 4294967295
  store i64 %6822, i64* %RSI, align 8, !tbaa !2428
  %6823 = trunc i64 %6821 to i32
  %6824 = add i32 %6823, %6794
  %6825 = zext i32 %6824 to i64
  store i64 %6825, i64* %RDX, align 8, !tbaa !2428
  %6826 = icmp ult i32 %6824, %6794
  %6827 = icmp ult i32 %6824, %6823
  %6828 = or i1 %6826, %6827
  %6829 = zext i1 %6828 to i8
  store i8 %6829, i8* %82, align 1, !tbaa !2434
  %6830 = and i32 %6824, 255
  %6831 = tail call i32 @llvm.ctpop.i32(i32 %6830) #9
  %6832 = trunc i32 %6831 to i8
  %6833 = and i8 %6832, 1
  %6834 = xor i8 %6833, 1
  store i8 %6834, i8* %88, align 1, !tbaa !2448
  %6835 = xor i64 %6821, %6792
  %6836 = trunc i64 %6835 to i32
  %6837 = xor i32 %6836, %6824
  %6838 = lshr i32 %6837, 4
  %6839 = trunc i32 %6838 to i8
  %6840 = and i8 %6839, 1
  store i8 %6840, i8* %93, align 1, !tbaa !2449
  %6841 = icmp eq i32 %6824, 0
  %6842 = zext i1 %6841 to i8
  store i8 %6842, i8* %96, align 1, !tbaa !2450
  %6843 = lshr i32 %6824, 31
  %6844 = trunc i32 %6843 to i8
  store i8 %6844, i8* %99, align 1, !tbaa !2451
  %6845 = lshr i32 %6823, 31
  %6846 = xor i32 %6843, %6803
  %6847 = xor i32 %6843, %6845
  %6848 = add nuw nsw i32 %6846, %6847
  %6849 = icmp eq i32 %6848, 2
  %6850 = zext i1 %6849 to i8
  store i8 %6850, i8* %105, align 1, !tbaa !2452
  %6851 = add i64 %6805, -76
  %6852 = add i64 %6348, 225
  store i64 %6852, i64* %PC, align 8
  %6853 = inttoptr i64 %6851 to i32*
  %6854 = load i32, i32* %6853, align 4
  %6855 = add i32 %6854, %6824
  %6856 = zext i32 %6855 to i64
  store i64 %6856, i64* %RDX, align 8, !tbaa !2428
  %6857 = icmp ult i32 %6855, %6824
  %6858 = icmp ult i32 %6855, %6854
  %6859 = or i1 %6857, %6858
  %6860 = zext i1 %6859 to i8
  store i8 %6860, i8* %82, align 1, !tbaa !2434
  %6861 = and i32 %6855, 255
  %6862 = tail call i32 @llvm.ctpop.i32(i32 %6861) #9
  %6863 = trunc i32 %6862 to i8
  %6864 = and i8 %6863, 1
  %6865 = xor i8 %6864, 1
  store i8 %6865, i8* %88, align 1, !tbaa !2448
  %6866 = xor i32 %6854, %6824
  %6867 = xor i32 %6866, %6855
  %6868 = lshr i32 %6867, 4
  %6869 = trunc i32 %6868 to i8
  %6870 = and i8 %6869, 1
  store i8 %6870, i8* %93, align 1, !tbaa !2449
  %6871 = icmp eq i32 %6855, 0
  %6872 = zext i1 %6871 to i8
  store i8 %6872, i8* %96, align 1, !tbaa !2450
  %6873 = lshr i32 %6855, 31
  %6874 = trunc i32 %6873 to i8
  store i8 %6874, i8* %99, align 1, !tbaa !2451
  %6875 = lshr i32 %6854, 31
  %6876 = xor i32 %6873, %6843
  %6877 = xor i32 %6873, %6875
  %6878 = add nuw nsw i32 %6876, %6877
  %6879 = icmp eq i32 %6878, 2
  %6880 = zext i1 %6879 to i8
  store i8 %6880, i8* %105, align 1, !tbaa !2452
  %6881 = sext i32 %6855 to i64
  store i64 %6881, i64* %RCX, align 8, !tbaa !2428
  %6882 = load i64, i64* %RAX, align 8
  %6883 = shl nsw i64 %6881, 2
  %6884 = add i64 %6882, %6883
  %6885 = add i64 %6348, 233
  store i64 %6885, i64* %PC, align 8
  %6886 = load <2 x float>, <2 x float>* %192, align 1
  %6887 = load <2 x i32>, <2 x i32>* %197, align 1
  %6888 = inttoptr i64 %6884 to float*
  %6889 = load float, float* %6888, align 4
  %6890 = extractelement <2 x float> %6886, i32 0
  %6891 = fmul float %6890, %6889
  store float %6891, float* %193, align 1, !tbaa !2453
  %6892 = bitcast <2 x float> %6886 to <2 x i32>
  %6893 = extractelement <2 x i32> %6892, i32 1
  store i32 %6893, i32* %188, align 1, !tbaa !2453
  %6894 = extractelement <2 x i32> %6887, i32 0
  store i32 %6894, i32* %189, align 1, !tbaa !2453
  %6895 = extractelement <2 x i32> %6887, i32 1
  store i32 %6895, i32* %191, align 1, !tbaa !2453
  %6896 = load i64, i64* %RBP, align 8
  %6897 = add i64 %6896, -104
  %6898 = add i64 %6348, 238
  store i64 %6898, i64* %PC, align 8
  %6899 = load <2 x float>, <2 x float>* %192, align 1
  %6900 = extractelement <2 x float> %6899, i32 0
  %6901 = inttoptr i64 %6897 to float*
  store float %6900, float* %6901, align 4
  %6902 = load i64, i64* %RBP, align 8
  %6903 = add i64 %6902, -104
  %6904 = load i64, i64* %PC, align 8
  %6905 = add i64 %6904, 5
  store i64 %6905, i64* %PC, align 8
  %6906 = inttoptr i64 %6903 to i32*
  %6907 = load i32, i32* %6906, align 4
  store i32 %6907, i32* %186, align 1, !tbaa !2453
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  store float 0.000000e+00, float* %195, align 1, !tbaa !2453
  store float 0.000000e+00, float* %196, align 1, !tbaa !2453
  %6908 = add i64 %6904, 10
  store i64 %6908, i64* %PC, align 8
  %6909 = load <2 x float>, <2 x float>* %192, align 1
  %6910 = load <2 x i32>, <2 x i32>* %197, align 1
  %6911 = inttoptr i64 %6903 to float*
  %6912 = load float, float* %6911, align 4
  %6913 = extractelement <2 x float> %6909, i32 0
  %6914 = fmul float %6913, %6912
  store float %6914, float* %193, align 1, !tbaa !2453
  %6915 = bitcast <2 x float> %6909 to <2 x i32>
  %6916 = extractelement <2 x i32> %6915, i32 1
  store i32 %6916, i32* %188, align 1, !tbaa !2453
  %6917 = extractelement <2 x i32> %6910, i32 0
  store i32 %6917, i32* %189, align 1, !tbaa !2453
  %6918 = extractelement <2 x i32> %6910, i32 1
  store i32 %6918, i32* %191, align 1, !tbaa !2453
  %6919 = add i64 %6902, -96
  %6920 = add i64 %6904, 15
  store i64 %6920, i64* %PC, align 8
  %6921 = load <2 x float>, <2 x float>* %192, align 1
  %6922 = load <2 x i32>, <2 x i32>* %197, align 1
  %6923 = inttoptr i64 %6919 to float*
  %6924 = load float, float* %6923, align 4
  %6925 = extractelement <2 x float> %6921, i32 0
  %6926 = fadd float %6925, %6924
  store float %6926, float* %193, align 1, !tbaa !2453
  %6927 = bitcast <2 x float> %6921 to <2 x i32>
  %6928 = extractelement <2 x i32> %6927, i32 1
  store i32 %6928, i32* %188, align 1, !tbaa !2453
  %6929 = extractelement <2 x i32> %6922, i32 0
  store i32 %6929, i32* %189, align 1, !tbaa !2453
  %6930 = extractelement <2 x i32> %6922, i32 1
  store i32 %6930, i32* %191, align 1, !tbaa !2453
  %6931 = add i64 %6904, 20
  store i64 %6931, i64* %PC, align 8
  %6932 = load <2 x float>, <2 x float>* %192, align 1
  %6933 = extractelement <2 x float> %6932, i32 0
  store float %6933, float* %6923, align 4
  %6934 = load i64, i64* %RBP, align 8
  %6935 = add i64 %6934, -40
  %6936 = load i64, i64* %PC, align 8
  %6937 = add i64 %6936, 4
  store i64 %6937, i64* %PC, align 8
  %6938 = inttoptr i64 %6935 to i64*
  %6939 = load i64, i64* %6938, align 8
  store i64 %6939, i64* %RAX, align 8, !tbaa !2428
  %6940 = add i64 %6936, 7
  store i64 %6940, i64* %PC, align 8
  %6941 = inttoptr i64 %6939 to i64*
  %6942 = load i64, i64* %6941, align 8
  store i64 %6942, i64* %RAX, align 8, !tbaa !2428
  %6943 = add i64 %6936, 11
  store i64 %6943, i64* %PC, align 8
  %6944 = load i64, i64* %6938, align 8
  store i64 %6944, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6945 = add i64 %6936, 19
  store i64 %6945, i64* %PC, align 8
  %6946 = load i64, i64* %6938, align 8
  store i64 %6946, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6947 = add i64 %6936, 27
  store i64 %6947, i64* %PC, align 8
  %6948 = load i64, i64* %6938, align 8
  store i64 %6948, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %6949 = add i64 %6934, -68
  %6950 = add i64 %6936, 34
  store i64 %6950, i64* %PC, align 8
  %6951 = inttoptr i64 %6949 to i32*
  %6952 = load i32, i32* %6951, align 4
  %6953 = zext i32 %6952 to i64
  store i64 %6953, i64* %RSI, align 8, !tbaa !2428
  %6954 = add i64 %6936, 38
  store i64 %6954, i64* %PC, align 8
  %6955 = load i64, i64* %6938, align 8
  store i64 %6955, i64* %RCX, align 8, !tbaa !2428
  %6956 = add i64 %6955, 16
  %6957 = add i64 %6936, 42
  store i64 %6957, i64* %PC, align 8
  %6958 = inttoptr i64 %6956 to i32*
  %6959 = load i32, i32* %6958, align 4
  %6960 = sext i32 %6952 to i64
  %6961 = sext i32 %6959 to i64
  %6962 = mul nsw i64 %6961, %6960
  %6963 = trunc i64 %6962 to i32
  %6964 = and i64 %6962, 4294967295
  store i64 %6964, i64* %RSI, align 8, !tbaa !2428
  %6965 = shl i64 %6962, 32
  %6966 = ashr exact i64 %6965, 32
  %6967 = icmp ne i64 %6966, %6962
  %6968 = zext i1 %6967 to i8
  store i8 %6968, i8* %82, align 1, !tbaa !2434
  %6969 = and i32 %6963, 255
  %6970 = tail call i32 @llvm.ctpop.i32(i32 %6969) #9
  %6971 = trunc i32 %6970 to i8
  %6972 = and i8 %6971, 1
  %6973 = xor i8 %6972, 1
  store i8 %6973, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %6974 = lshr i32 %6963, 31
  %6975 = trunc i32 %6974 to i8
  store i8 %6975, i8* %99, align 1, !tbaa !2451
  store i8 %6968, i8* %105, align 1, !tbaa !2452
  %6976 = load i64, i64* %RBP, align 8
  %6977 = add i64 %6976, -40
  %6978 = add i64 %6936, 46
  store i64 %6978, i64* %PC, align 8
  %6979 = inttoptr i64 %6977 to i64*
  %6980 = load i64, i64* %6979, align 8
  store i64 %6980, i64* %RCX, align 8, !tbaa !2428
  %6981 = add i64 %6980, 20
  %6982 = add i64 %6936, 50
  store i64 %6982, i64* %PC, align 8
  %6983 = inttoptr i64 %6981 to i32*
  %6984 = load i32, i32* %6983, align 4
  %6985 = shl i64 %6962, 32
  %6986 = ashr exact i64 %6985, 32
  %6987 = sext i32 %6984 to i64
  %6988 = mul nsw i64 %6987, %6986
  %6989 = and i64 %6988, 4294967295
  store i64 %6989, i64* %RSI, align 8, !tbaa !2428
  %6990 = trunc i64 %6988 to i32
  %6991 = and i64 %6988, 4294967295
  store i64 %6991, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %6992 = and i32 %6990, 255
  %6993 = tail call i32 @llvm.ctpop.i32(i32 %6992) #9
  %6994 = trunc i32 %6993 to i8
  %6995 = and i8 %6994, 1
  %6996 = xor i8 %6995, 1
  store i8 %6996, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %6997 = icmp eq i32 %6990, 0
  %6998 = zext i1 %6997 to i8
  store i8 %6998, i8* %96, align 1, !tbaa !2450
  %6999 = lshr i32 %6990, 31
  %7000 = trunc i32 %6999 to i8
  store i8 %7000, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %7001 = add i64 %6976, -72
  %7002 = add i64 %6936, 55
  store i64 %7002, i64* %PC, align 8
  %7003 = inttoptr i64 %7001 to i32*
  %7004 = load i32, i32* %7003, align 4
  %7005 = zext i32 %7004 to i64
  store i64 %7005, i64* %RSI, align 8, !tbaa !2428
  %7006 = add i64 %6936, 59
  store i64 %7006, i64* %PC, align 8
  %7007 = load i64, i64* %6979, align 8
  store i64 %7007, i64* %RCX, align 8, !tbaa !2428
  %7008 = add i64 %7007, 20
  %7009 = add i64 %6936, 63
  store i64 %7009, i64* %PC, align 8
  %7010 = inttoptr i64 %7008 to i32*
  %7011 = load i32, i32* %7010, align 4
  %7012 = sext i32 %7004 to i64
  %7013 = sext i32 %7011 to i64
  %7014 = mul nsw i64 %7013, %7012
  %7015 = and i64 %7014, 4294967295
  store i64 %7015, i64* %RSI, align 8, !tbaa !2428
  %7016 = trunc i64 %7014 to i32
  %7017 = add i32 %7016, %6990
  %7018 = zext i32 %7017 to i64
  store i64 %7018, i64* %RDX, align 8, !tbaa !2428
  %7019 = icmp ult i32 %7017, %6990
  %7020 = icmp ult i32 %7017, %7016
  %7021 = or i1 %7019, %7020
  %7022 = zext i1 %7021 to i8
  store i8 %7022, i8* %82, align 1, !tbaa !2434
  %7023 = and i32 %7017, 255
  %7024 = tail call i32 @llvm.ctpop.i32(i32 %7023) #9
  %7025 = trunc i32 %7024 to i8
  %7026 = and i8 %7025, 1
  %7027 = xor i8 %7026, 1
  store i8 %7027, i8* %88, align 1, !tbaa !2448
  %7028 = xor i64 %7014, %6988
  %7029 = trunc i64 %7028 to i32
  %7030 = xor i32 %7029, %7017
  %7031 = lshr i32 %7030, 4
  %7032 = trunc i32 %7031 to i8
  %7033 = and i8 %7032, 1
  store i8 %7033, i8* %93, align 1, !tbaa !2449
  %7034 = icmp eq i32 %7017, 0
  %7035 = zext i1 %7034 to i8
  store i8 %7035, i8* %96, align 1, !tbaa !2450
  %7036 = lshr i32 %7017, 31
  %7037 = trunc i32 %7036 to i8
  store i8 %7037, i8* %99, align 1, !tbaa !2451
  %7038 = lshr i32 %7016, 31
  %7039 = xor i32 %7036, %6999
  %7040 = xor i32 %7036, %7038
  %7041 = add nuw nsw i32 %7039, %7040
  %7042 = icmp eq i32 %7041, 2
  %7043 = zext i1 %7042 to i8
  store i8 %7043, i8* %105, align 1, !tbaa !2452
  %7044 = load i64, i64* %RBP, align 8
  %7045 = add i64 %7044, -76
  %7046 = add i64 %6936, 68
  store i64 %7046, i64* %PC, align 8
  %7047 = inttoptr i64 %7045 to i32*
  %7048 = load i32, i32* %7047, align 4
  %7049 = add i32 %7048, %7017
  %7050 = zext i32 %7049 to i64
  store i64 %7050, i64* %RDX, align 8, !tbaa !2428
  %7051 = icmp ult i32 %7049, %7017
  %7052 = icmp ult i32 %7049, %7048
  %7053 = or i1 %7051, %7052
  %7054 = zext i1 %7053 to i8
  store i8 %7054, i8* %82, align 1, !tbaa !2434
  %7055 = and i32 %7049, 255
  %7056 = tail call i32 @llvm.ctpop.i32(i32 %7055) #9
  %7057 = trunc i32 %7056 to i8
  %7058 = and i8 %7057, 1
  %7059 = xor i8 %7058, 1
  store i8 %7059, i8* %88, align 1, !tbaa !2448
  %7060 = xor i32 %7048, %7017
  %7061 = xor i32 %7060, %7049
  %7062 = lshr i32 %7061, 4
  %7063 = trunc i32 %7062 to i8
  %7064 = and i8 %7063, 1
  store i8 %7064, i8* %93, align 1, !tbaa !2449
  %7065 = icmp eq i32 %7049, 0
  %7066 = zext i1 %7065 to i8
  store i8 %7066, i8* %96, align 1, !tbaa !2450
  %7067 = lshr i32 %7049, 31
  %7068 = trunc i32 %7067 to i8
  store i8 %7068, i8* %99, align 1, !tbaa !2451
  %7069 = lshr i32 %7048, 31
  %7070 = xor i32 %7067, %7036
  %7071 = xor i32 %7067, %7069
  %7072 = add nuw nsw i32 %7070, %7071
  %7073 = icmp eq i32 %7072, 2
  %7074 = zext i1 %7073 to i8
  store i8 %7074, i8* %105, align 1, !tbaa !2452
  %7075 = sext i32 %7049 to i64
  store i64 %7075, i64* %RCX, align 8, !tbaa !2428
  %7076 = load i64, i64* %RAX, align 8
  %7077 = shl nsw i64 %7075, 2
  %7078 = add i64 %7076, %7077
  %7079 = add i64 %6936, 76
  store i64 %7079, i64* %PC, align 8
  %7080 = inttoptr i64 %7078 to i32*
  %7081 = load i32, i32* %7080, align 4
  store i32 %7081, i32* %186, align 1, !tbaa !2453
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  store float 0.000000e+00, float* %195, align 1, !tbaa !2453
  store float 0.000000e+00, float* %196, align 1, !tbaa !2453
  %7082 = load i32, i32* bitcast (%omega_type* @omega to i32*), align 8
  store i32 %7082, i32* %200, align 1, !tbaa !2453
  store float 0.000000e+00, float* %202, align 1, !tbaa !2453
  store float 0.000000e+00, float* %204, align 1, !tbaa !2453
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %7083 = add i64 %7044, -104
  %7084 = add i64 %6936, 90
  store i64 %7084, i64* %PC, align 8
  %7085 = load <2 x float>, <2 x float>* %207, align 1
  %7086 = load <2 x i32>, <2 x i32>* %208, align 1
  %7087 = inttoptr i64 %7083 to float*
  %7088 = load float, float* %7087, align 4
  %7089 = extractelement <2 x float> %7085, i32 0
  %7090 = fmul float %7089, %7088
  store float %7090, float* %199, align 1, !tbaa !2453
  %7091 = bitcast <2 x float> %7085 to <2 x i32>
  %7092 = extractelement <2 x i32> %7091, i32 1
  store i32 %7092, i32* %209, align 1, !tbaa !2453
  %7093 = extractelement <2 x i32> %7086, i32 0
  store i32 %7093, i32* %210, align 1, !tbaa !2453
  %7094 = extractelement <2 x i32> %7086, i32 1
  store i32 %7094, i32* %211, align 1, !tbaa !2453
  %7095 = load <2 x float>, <2 x float>* %192, align 1
  %7096 = load <2 x i32>, <2 x i32>* %197, align 1
  %7097 = load <2 x float>, <2 x float>* %207, align 1
  %7098 = extractelement <2 x float> %7095, i32 0
  %7099 = extractelement <2 x float> %7097, i32 0
  %7100 = fadd float %7098, %7099
  store float %7100, float* %193, align 1, !tbaa !2453
  %7101 = bitcast <2 x float> %7095 to <2 x i32>
  %7102 = extractelement <2 x i32> %7101, i32 1
  store i32 %7102, i32* %188, align 1, !tbaa !2453
  %7103 = extractelement <2 x i32> %7096, i32 0
  store i32 %7103, i32* %189, align 1, !tbaa !2453
  %7104 = extractelement <2 x i32> %7096, i32 1
  store i32 %7104, i32* %191, align 1, !tbaa !2453
  %7105 = add i64 %7044, -64
  %7106 = add i64 %6936, 98
  store i64 %7106, i64* %PC, align 8
  %7107 = inttoptr i64 %7105 to i64*
  %7108 = load i64, i64* %7107, align 8
  store i64 %7108, i64* %RAX, align 8, !tbaa !2428
  %7109 = add i64 %6936, 101
  store i64 %7109, i64* %PC, align 8
  %7110 = inttoptr i64 %7108 to i64*
  %7111 = load i64, i64* %7110, align 8
  store i64 %7111, i64* %RAX, align 8, !tbaa !2428
  %7112 = load i64, i64* %RBP, align 8
  %7113 = add i64 %7112, -64
  %7114 = add i64 %6936, 105
  store i64 %7114, i64* %PC, align 8
  %7115 = inttoptr i64 %7113 to i64*
  %7116 = load i64, i64* %7115, align 8
  store i64 %7116, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %7117 = add i64 %6936, 113
  store i64 %7117, i64* %PC, align 8
  %7118 = load i64, i64* %7115, align 8
  store i64 %7118, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %7119 = add i64 %6936, 121
  store i64 %7119, i64* %PC, align 8
  %7120 = load i64, i64* %7115, align 8
  store i64 %7120, i64* %RCX, align 8, !tbaa !2428
  store i64 0, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  store i8 1, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  store i8 0, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %7121 = add i64 %7112, -68
  %7122 = add i64 %6936, 128
  store i64 %7122, i64* %PC, align 8
  %7123 = inttoptr i64 %7121 to i32*
  %7124 = load i32, i32* %7123, align 4
  %7125 = zext i32 %7124 to i64
  store i64 %7125, i64* %RSI, align 8, !tbaa !2428
  %7126 = add i64 %6936, 132
  store i64 %7126, i64* %PC, align 8
  %7127 = load i64, i64* %7115, align 8
  store i64 %7127, i64* %RCX, align 8, !tbaa !2428
  %7128 = add i64 %7127, 16
  %7129 = add i64 %6936, 136
  store i64 %7129, i64* %PC, align 8
  %7130 = inttoptr i64 %7128 to i32*
  %7131 = load i32, i32* %7130, align 4
  %7132 = sext i32 %7124 to i64
  %7133 = sext i32 %7131 to i64
  %7134 = mul nsw i64 %7133, %7132
  %7135 = trunc i64 %7134 to i32
  %7136 = and i64 %7134, 4294967295
  store i64 %7136, i64* %RSI, align 8, !tbaa !2428
  %7137 = shl i64 %7134, 32
  %7138 = ashr exact i64 %7137, 32
  %7139 = icmp ne i64 %7138, %7134
  %7140 = zext i1 %7139 to i8
  store i8 %7140, i8* %82, align 1, !tbaa !2434
  %7141 = and i32 %7135, 255
  %7142 = tail call i32 @llvm.ctpop.i32(i32 %7141) #9
  %7143 = trunc i32 %7142 to i8
  %7144 = and i8 %7143, 1
  %7145 = xor i8 %7144, 1
  store i8 %7145, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  store i8 0, i8* %96, align 1, !tbaa !2450
  %7146 = lshr i32 %7135, 31
  %7147 = trunc i32 %7146 to i8
  store i8 %7147, i8* %99, align 1, !tbaa !2451
  store i8 %7140, i8* %105, align 1, !tbaa !2452
  %7148 = add i64 %6936, 140
  store i64 %7148, i64* %PC, align 8
  %7149 = load i64, i64* %7115, align 8
  store i64 %7149, i64* %RCX, align 8, !tbaa !2428
  %7150 = add i64 %7149, 20
  %7151 = add i64 %6936, 144
  store i64 %7151, i64* %PC, align 8
  %7152 = inttoptr i64 %7150 to i32*
  %7153 = load i32, i32* %7152, align 4
  %7154 = shl i64 %7134, 32
  %7155 = ashr exact i64 %7154, 32
  %7156 = sext i32 %7153 to i64
  %7157 = mul nsw i64 %7156, %7155
  %7158 = and i64 %7157, 4294967295
  store i64 %7158, i64* %RSI, align 8, !tbaa !2428
  %7159 = trunc i64 %7157 to i32
  %7160 = and i64 %7157, 4294967295
  store i64 %7160, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %82, align 1, !tbaa !2434
  %7161 = and i32 %7159, 255
  %7162 = tail call i32 @llvm.ctpop.i32(i32 %7161) #9
  %7163 = trunc i32 %7162 to i8
  %7164 = and i8 %7163, 1
  %7165 = xor i8 %7164, 1
  store i8 %7165, i8* %88, align 1, !tbaa !2448
  store i8 0, i8* %93, align 1, !tbaa !2449
  %7166 = icmp eq i32 %7159, 0
  %7167 = zext i1 %7166 to i8
  store i8 %7167, i8* %96, align 1, !tbaa !2450
  %7168 = lshr i32 %7159, 31
  %7169 = trunc i32 %7168 to i8
  store i8 %7169, i8* %99, align 1, !tbaa !2451
  store i8 0, i8* %105, align 1, !tbaa !2452
  %7170 = load i64, i64* %RBP, align 8
  %7171 = add i64 %7170, -72
  %7172 = add i64 %6936, 149
  store i64 %7172, i64* %PC, align 8
  %7173 = inttoptr i64 %7171 to i32*
  %7174 = load i32, i32* %7173, align 4
  %7175 = zext i32 %7174 to i64
  store i64 %7175, i64* %RSI, align 8, !tbaa !2428
  %7176 = add i64 %7170, -64
  %7177 = add i64 %6936, 153
  store i64 %7177, i64* %PC, align 8
  %7178 = inttoptr i64 %7176 to i64*
  %7179 = load i64, i64* %7178, align 8
  store i64 %7179, i64* %RCX, align 8, !tbaa !2428
  %7180 = add i64 %7179, 20
  %7181 = add i64 %6936, 157
  store i64 %7181, i64* %PC, align 8
  %7182 = inttoptr i64 %7180 to i32*
  %7183 = load i32, i32* %7182, align 4
  %7184 = sext i32 %7174 to i64
  %7185 = sext i32 %7183 to i64
  %7186 = mul nsw i64 %7185, %7184
  %7187 = and i64 %7186, 4294967295
  store i64 %7187, i64* %RSI, align 8, !tbaa !2428
  %7188 = trunc i64 %7186 to i32
  %7189 = add i32 %7188, %7159
  %7190 = zext i32 %7189 to i64
  store i64 %7190, i64* %RDX, align 8, !tbaa !2428
  %7191 = icmp ult i32 %7189, %7159
  %7192 = icmp ult i32 %7189, %7188
  %7193 = or i1 %7191, %7192
  %7194 = zext i1 %7193 to i8
  store i8 %7194, i8* %82, align 1, !tbaa !2434
  %7195 = and i32 %7189, 255
  %7196 = tail call i32 @llvm.ctpop.i32(i32 %7195) #9
  %7197 = trunc i32 %7196 to i8
  %7198 = and i8 %7197, 1
  %7199 = xor i8 %7198, 1
  store i8 %7199, i8* %88, align 1, !tbaa !2448
  %7200 = xor i64 %7186, %7157
  %7201 = trunc i64 %7200 to i32
  %7202 = xor i32 %7201, %7189
  %7203 = lshr i32 %7202, 4
  %7204 = trunc i32 %7203 to i8
  %7205 = and i8 %7204, 1
  store i8 %7205, i8* %93, align 1, !tbaa !2449
  %7206 = icmp eq i32 %7189, 0
  %7207 = zext i1 %7206 to i8
  store i8 %7207, i8* %96, align 1, !tbaa !2450
  %7208 = lshr i32 %7189, 31
  %7209 = trunc i32 %7208 to i8
  store i8 %7209, i8* %99, align 1, !tbaa !2451
  %7210 = lshr i32 %7188, 31
  %7211 = xor i32 %7208, %7168
  %7212 = xor i32 %7208, %7210
  %7213 = add nuw nsw i32 %7211, %7212
  %7214 = icmp eq i32 %7213, 2
  %7215 = zext i1 %7214 to i8
  store i8 %7215, i8* %105, align 1, !tbaa !2452
  %7216 = add i64 %7170, -76
  %7217 = add i64 %6936, 162
  store i64 %7217, i64* %PC, align 8
  %7218 = inttoptr i64 %7216 to i32*
  %7219 = load i32, i32* %7218, align 4
  %7220 = add i32 %7219, %7189
  %7221 = zext i32 %7220 to i64
  store i64 %7221, i64* %RDX, align 8, !tbaa !2428
  %7222 = icmp ult i32 %7220, %7189
  %7223 = icmp ult i32 %7220, %7219
  %7224 = or i1 %7222, %7223
  %7225 = zext i1 %7224 to i8
  store i8 %7225, i8* %82, align 1, !tbaa !2434
  %7226 = and i32 %7220, 255
  %7227 = tail call i32 @llvm.ctpop.i32(i32 %7226) #9
  %7228 = trunc i32 %7227 to i8
  %7229 = and i8 %7228, 1
  %7230 = xor i8 %7229, 1
  store i8 %7230, i8* %88, align 1, !tbaa !2448
  %7231 = xor i32 %7219, %7189
  %7232 = xor i32 %7231, %7220
  %7233 = lshr i32 %7232, 4
  %7234 = trunc i32 %7233 to i8
  %7235 = and i8 %7234, 1
  store i8 %7235, i8* %93, align 1, !tbaa !2449
  %7236 = icmp eq i32 %7220, 0
  %7237 = zext i1 %7236 to i8
  store i8 %7237, i8* %96, align 1, !tbaa !2450
  %7238 = lshr i32 %7220, 31
  %7239 = trunc i32 %7238 to i8
  store i8 %7239, i8* %99, align 1, !tbaa !2451
  %7240 = lshr i32 %7219, 31
  %7241 = xor i32 %7238, %7208
  %7242 = xor i32 %7238, %7240
  %7243 = add nuw nsw i32 %7241, %7242
  %7244 = icmp eq i32 %7243, 2
  %7245 = zext i1 %7244 to i8
  store i8 %7245, i8* %105, align 1, !tbaa !2452
  %7246 = sext i32 %7220 to i64
  store i64 %7246, i64* %RCX, align 8, !tbaa !2428
  %7247 = load i64, i64* %RAX, align 8
  %7248 = shl nsw i64 %7246, 2
  %7249 = add i64 %7247, %7248
  %7250 = add i64 %6936, 170
  store i64 %7250, i64* %PC, align 8
  %7251 = load <2 x float>, <2 x float>* %192, align 1
  %7252 = extractelement <2 x float> %7251, i32 0
  %7253 = inttoptr i64 %7249 to float*
  store float %7252, float* %7253, align 4
  %7254 = load i64, i64* %RBP, align 8
  %7255 = add i64 %7254, -76
  %7256 = load i64, i64* %PC, align 8
  %7257 = add i64 %7256, 3
  store i64 %7257, i64* %PC, align 8
  %7258 = inttoptr i64 %7255 to i32*
  %7259 = load i32, i32* %7258, align 4
  %7260 = add i32 %7259, 1
  %7261 = zext i32 %7260 to i64
  store i64 %7261, i64* %RAX, align 8, !tbaa !2428
  %7262 = icmp eq i32 %7259, -1
  %7263 = icmp eq i32 %7260, 0
  %7264 = or i1 %7262, %7263
  %7265 = zext i1 %7264 to i8
  store i8 %7265, i8* %82, align 1, !tbaa !2434
  %7266 = and i32 %7260, 255
  %7267 = tail call i32 @llvm.ctpop.i32(i32 %7266) #9
  %7268 = trunc i32 %7267 to i8
  %7269 = and i8 %7268, 1
  %7270 = xor i8 %7269, 1
  store i8 %7270, i8* %88, align 1, !tbaa !2448
  %7271 = xor i32 %7260, %7259
  %7272 = lshr i32 %7271, 4
  %7273 = trunc i32 %7272 to i8
  %7274 = and i8 %7273, 1
  store i8 %7274, i8* %93, align 1, !tbaa !2449
  %7275 = zext i1 %7263 to i8
  store i8 %7275, i8* %96, align 1, !tbaa !2450
  %7276 = lshr i32 %7260, 31
  %7277 = trunc i32 %7276 to i8
  store i8 %7277, i8* %99, align 1, !tbaa !2451
  %7278 = lshr i32 %7259, 31
  %7279 = xor i32 %7276, %7278
  %7280 = add nuw nsw i32 %7279, %7276
  %7281 = icmp eq i32 %7280, 2
  %7282 = zext i1 %7281 to i8
  store i8 %7282, i8* %105, align 1, !tbaa !2452
  %7283 = add i64 %7256, 9
  store i64 %7283, i64* %PC, align 8
  store i32 %7260, i32* %7258, align 4
  %7284 = load i64, i64* %PC, align 8
  %7285 = add i64 %7284, -2748
  store i64 %7285, i64* %PC, align 8, !tbaa !2428
  br label %block_400d8a

block_40188b:                                     ; preds = %block_401884, %block_401950
  %7286 = phi i64 [ %.pre26, %block_401884 ], [ %471, %block_401950 ]
  %7287 = load i64, i64* %RBP, align 8
  %7288 = add i64 %7287, -72
  %7289 = add i64 %7286, 3
  store i64 %7289, i64* %PC, align 8
  %7290 = inttoptr i64 %7288 to i32*
  %7291 = load i32, i32* %7290, align 4
  %7292 = zext i32 %7291 to i64
  store i64 %7292, i64* %RAX, align 8, !tbaa !2428
  %7293 = add i64 %7287, -88
  %7294 = add i64 %7286, 6
  store i64 %7294, i64* %PC, align 8
  %7295 = inttoptr i64 %7293 to i32*
  %7296 = load i32, i32* %7295, align 4
  %7297 = sub i32 %7291, %7296
  %7298 = icmp ult i32 %7291, %7296
  %7299 = zext i1 %7298 to i8
  store i8 %7299, i8* %82, align 1, !tbaa !2434
  %7300 = and i32 %7297, 255
  %7301 = tail call i32 @llvm.ctpop.i32(i32 %7300) #9
  %7302 = trunc i32 %7301 to i8
  %7303 = and i8 %7302, 1
  %7304 = xor i8 %7303, 1
  store i8 %7304, i8* %88, align 1, !tbaa !2448
  %7305 = xor i32 %7296, %7291
  %7306 = xor i32 %7305, %7297
  %7307 = lshr i32 %7306, 4
  %7308 = trunc i32 %7307 to i8
  %7309 = and i8 %7308, 1
  store i8 %7309, i8* %93, align 1, !tbaa !2449
  %7310 = icmp eq i32 %7297, 0
  %7311 = zext i1 %7310 to i8
  store i8 %7311, i8* %96, align 1, !tbaa !2450
  %7312 = lshr i32 %7297, 31
  %7313 = trunc i32 %7312 to i8
  store i8 %7313, i8* %99, align 1, !tbaa !2451
  %7314 = lshr i32 %7291, 31
  %7315 = lshr i32 %7296, 31
  %7316 = xor i32 %7315, %7314
  %7317 = xor i32 %7312, %7314
  %7318 = add nuw nsw i32 %7317, %7316
  %7319 = icmp eq i32 %7318, 2
  %7320 = zext i1 %7319 to i8
  store i8 %7320, i8* %105, align 1, !tbaa !2452
  %7321 = icmp ne i8 %7313, 0
  %7322 = xor i1 %7321, %7319
  %.v30 = select i1 %7322, i64 12, i64 216
  %7323 = add i64 %7286, %.v30
  store i64 %7323, i64* %PC, align 8, !tbaa !2428
  br i1 %7322, label %block_401897, label %block_401963

block_400d8a:                                     ; preds = %block_400d83, %block_400d96
  %7324 = phi i64 [ %.pre29, %block_400d83 ], [ %7285, %block_400d96 ]
  %7325 = load i64, i64* %RBP, align 8
  %7326 = add i64 %7325, -76
  %7327 = add i64 %7324, 3
  store i64 %7327, i64* %PC, align 8
  %7328 = inttoptr i64 %7326 to i32*
  %7329 = load i32, i32* %7328, align 4
  %7330 = zext i32 %7329 to i64
  store i64 %7330, i64* %RAX, align 8, !tbaa !2428
  %7331 = add i64 %7325, -92
  %7332 = add i64 %7324, 6
  store i64 %7332, i64* %PC, align 8
  %7333 = inttoptr i64 %7331 to i32*
  %7334 = load i32, i32* %7333, align 4
  %7335 = sub i32 %7329, %7334
  %7336 = icmp ult i32 %7329, %7334
  %7337 = zext i1 %7336 to i8
  store i8 %7337, i8* %82, align 1, !tbaa !2434
  %7338 = and i32 %7335, 255
  %7339 = tail call i32 @llvm.ctpop.i32(i32 %7338) #9
  %7340 = trunc i32 %7339 to i8
  %7341 = and i8 %7340, 1
  %7342 = xor i8 %7341, 1
  store i8 %7342, i8* %88, align 1, !tbaa !2448
  %7343 = xor i32 %7334, %7329
  %7344 = xor i32 %7343, %7335
  %7345 = lshr i32 %7344, 4
  %7346 = trunc i32 %7345 to i8
  %7347 = and i8 %7346, 1
  store i8 %7347, i8* %93, align 1, !tbaa !2449
  %7348 = icmp eq i32 %7335, 0
  %7349 = zext i1 %7348 to i8
  store i8 %7349, i8* %96, align 1, !tbaa !2450
  %7350 = lshr i32 %7335, 31
  %7351 = trunc i32 %7350 to i8
  store i8 %7351, i8* %99, align 1, !tbaa !2451
  %7352 = lshr i32 %7329, 31
  %7353 = lshr i32 %7334, 31
  %7354 = xor i32 %7353, %7352
  %7355 = xor i32 %7350, %7352
  %7356 = add nuw nsw i32 %7355, %7354
  %7357 = icmp eq i32 %7356, 2
  %7358 = zext i1 %7357 to i8
  store i8 %7358, i8* %105, align 1, !tbaa !2452
  %7359 = icmp ne i8 %7351, 0
  %7360 = xor i1 %7359, %7357
  %.v33 = select i1 %7360, i64 12, i64 2753
  %7361 = add i64 %7324, %.v33
  store i64 %7361, i64* %PC, align 8, !tbaa !2428
  br i1 %7360, label %block_400d96, label %block_40184b

block_401989:                                     ; preds = %block_400d49
  %7362 = add i64 %7379, -96
  %7363 = add i64 %7415, 5
  store i64 %7363, i64* %PC, align 8
  %7364 = inttoptr i64 %7362 to i32*
  %7365 = load i32, i32* %7364, align 4
  store i32 %7365, i32* %186, align 1, !tbaa !2453
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  store float 0.000000e+00, float* %195, align 1, !tbaa !2453
  store float 0.000000e+00, float* %196, align 1, !tbaa !2453
  %7366 = add i64 %7415, 6
  store i64 %7366, i64* %PC, align 8
  %7367 = load i64, i64* %9, align 8, !tbaa !2428
  %7368 = add i64 %7367, 8
  %7369 = inttoptr i64 %7367 to i64*
  %7370 = load i64, i64* %7369, align 8
  store i64 %7370, i64* %RBP, align 8, !tbaa !2428
  store i64 %7368, i64* %9, align 8, !tbaa !2428
  %7371 = add i64 %7415, 7
  store i64 %7371, i64* %PC, align 8
  %7372 = inttoptr i64 %7368 to i64*
  %7373 = load i64, i64* %7372, align 8
  store i64 %7373, i64* %PC, align 8, !tbaa !2428
  %7374 = add i64 %7367, 16
  store i64 %7374, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401884:                                     ; preds = %block_401878
  %7375 = add i64 %228, -72
  %7376 = add i64 %264, 7
  store i64 %7376, i64* %PC, align 8
  %7377 = inttoptr i64 %7375 to i32*
  store i32 1, i32* %7377, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_40188b

block_400d49:                                     ; preds = %block_401976, %block_400cf0
  %7378 = phi i64 [ %332, %block_401976 ], [ %.pre, %block_400cf0 ]
  %7379 = load i64, i64* %RBP, align 8
  %7380 = add i64 %7379, -80
  %7381 = add i64 %7378, 3
  store i64 %7381, i64* %PC, align 8
  %7382 = inttoptr i64 %7380 to i32*
  %7383 = load i32, i32* %7382, align 4
  %7384 = zext i32 %7383 to i64
  store i64 %7384, i64* %RAX, align 8, !tbaa !2428
  %7385 = add i64 %7379, -4
  %7386 = add i64 %7378, 6
  store i64 %7386, i64* %PC, align 8
  %7387 = inttoptr i64 %7385 to i32*
  %7388 = load i32, i32* %7387, align 4
  %7389 = sub i32 %7383, %7388
  %7390 = icmp ult i32 %7383, %7388
  %7391 = zext i1 %7390 to i8
  store i8 %7391, i8* %82, align 1, !tbaa !2434
  %7392 = and i32 %7389, 255
  %7393 = tail call i32 @llvm.ctpop.i32(i32 %7392) #9
  %7394 = trunc i32 %7393 to i8
  %7395 = and i8 %7394, 1
  %7396 = xor i8 %7395, 1
  store i8 %7396, i8* %88, align 1, !tbaa !2448
  %7397 = xor i32 %7388, %7383
  %7398 = xor i32 %7397, %7389
  %7399 = lshr i32 %7398, 4
  %7400 = trunc i32 %7399 to i8
  %7401 = and i8 %7400, 1
  store i8 %7401, i8* %93, align 1, !tbaa !2449
  %7402 = icmp eq i32 %7389, 0
  %7403 = zext i1 %7402 to i8
  store i8 %7403, i8* %96, align 1, !tbaa !2450
  %7404 = lshr i32 %7389, 31
  %7405 = trunc i32 %7404 to i8
  store i8 %7405, i8* %99, align 1, !tbaa !2451
  %7406 = lshr i32 %7383, 31
  %7407 = lshr i32 %7388, 31
  %7408 = xor i32 %7407, %7406
  %7409 = xor i32 %7404, %7406
  %7410 = add nuw nsw i32 %7409, %7408
  %7411 = icmp eq i32 %7410, 2
  %7412 = zext i1 %7411 to i8
  store i8 %7412, i8* %105, align 1, !tbaa !2452
  %7413 = icmp ne i8 %7405, 0
  %7414 = xor i1 %7413, %7411
  %.v34 = select i1 %7414, i64 12, i64 3136
  %7415 = add i64 %7378, %.v34
  store i64 %7415, i64* %PC, align 8, !tbaa !2428
  br i1 %7414, label %block_400d55, label %block_401989

block_400d83:                                     ; preds = %block_400d77
  %7416 = add i64 %266, -76
  %7417 = add i64 %302, 7
  store i64 %7417, i64* %PC, align 8
  %7418 = inttoptr i64 %7416 to i32*
  store i32 1, i32* %7418, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400d8a
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4005c0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4005c0:
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
define %struct.Memory* @sub_401a50_mflops(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401a50:
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
  %14 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 24) to i64*), align 8
  %15 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %14, i64* %15, align 1, !tbaa !2432
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to double*
  store double 0.000000e+00, double* %17, align 1, !tbaa !2432
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
  store i64 %41, i64* %26, align 1, !tbaa !2432
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = bitcast i64* %43 to double*
  store double 0.000000e+00, double* %44, align 1, !tbaa !2432
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
  store double %53, double* %42, align 1, !tbaa !2432
  store i64 0, i64* %43, align 1, !tbaa !2432
  %54 = add i64 %36, -4
  %55 = add i64 %38, 19
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = bitcast %union.VectorReg* %5 to double*
  store double %58, double* %59, align 1, !tbaa !2432
  %60 = fmul double %58, %53
  store double %60, double* %42, align 1, !tbaa !2432
  store i64 0, i64* %43, align 1, !tbaa !2432
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401d30___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401d30:
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
  store i8 %51, i8* %43, align 1, !tbaa !2455
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2455
  store i8 0, i8* %45, align 1, !tbaa !2455
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2455
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2455
  store i8 0, i8* %48, align 1, !tbaa !2455
  %63 = add i64 %38, -6211
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400508__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2434
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2448
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2450
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %48, align 1, !tbaa !2452
  store i8 0, i8* %45, align 1, !tbaa !2449
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401d86, label %block_401d66

block_401d86.loopexit:                            ; preds = %block_401d70
  br label %block_401d86

block_401d86:                                     ; preds = %block_401d86.loopexit, %block_401d30
  %81 = phi i64 [ %80, %block_401d30 ], [ %179, %block_401d86.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401d30 ], [ %149, %block_401d86.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2434
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2448
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2449
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2450
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2451
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2452
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

block_401d66:                                     ; preds = %block_401d30
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2434
  store i8 1, i8* %44, align 1, !tbaa !2448
  store i8 1, i8* %46, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %48, align 1, !tbaa !2452
  store i8 0, i8* %45, align 1, !tbaa !2449
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401d70

block_401d70:                                     ; preds = %block_401d70, %block_401d66
  %134 = phi i64 [ 0, %block_401d66 ], [ %152, %block_401d70 ]
  %135 = phi i64 [ %133, %block_401d66 ], [ %179, %block_401d70 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401d66 ], [ %149, %block_401d70 ]
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
  store i8 %157, i8* %43, align 1, !tbaa !2434
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #9
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2448
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2449
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2450
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2451
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2452
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401d86.loopexit, label %block_401d70
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400a80_newMat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a80:
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
  store i8 %15, i8* %16, align 1, !tbaa !2434
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2448
  %24 = xor i64 %10, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2451
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2452
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
  store i8 %152, i8* %16, align 1, !tbaa !2434
  %153 = and i32 %147, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #9
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %23, align 1, !tbaa !2448
  store i8 0, i8* %28, align 1, !tbaa !2449
  store i8 0, i8* %31, align 1, !tbaa !2450
  %158 = lshr i32 %147, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %34, align 1, !tbaa !2451
  store i8 %152, i8* %40, align 1, !tbaa !2452
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
  store i8 %173, i8* %16, align 1, !tbaa !2434
  %174 = and i32 %168, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #9
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %23, align 1, !tbaa !2448
  store i8 0, i8* %28, align 1, !tbaa !2449
  store i8 0, i8* %31, align 1, !tbaa !2450
  %179 = lshr i32 %168, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %34, align 1, !tbaa !2451
  store i8 %173, i8* %40, align 1, !tbaa !2452
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
  store i8 %193, i8* %16, align 1, !tbaa !2455
  %194 = trunc i64 %192 to i32
  %195 = and i32 %194, 252
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #9
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %23, align 1, !tbaa !2455
  store i8 0, i8* %28, align 1, !tbaa !2455
  %200 = icmp eq i32 %190, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %31, align 1, !tbaa !2455
  %202 = lshr i64 %191, 61
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %34, align 1, !tbaa !2455
  store i8 0, i8* %40, align 1, !tbaa !2455
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
  store i8 0, i8* %16, align 1, !tbaa !2434
  store i8 1, i8* %23, align 1, !tbaa !2448
  store i8 1, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2452
  store i8 0, i8* %28, align 1, !tbaa !2449
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
  store i8 %239, i8* %16, align 1, !tbaa !2434
  %240 = trunc i64 %237 to i32
  %241 = and i32 %240, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #9
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %23, align 1, !tbaa !2448
  %246 = xor i64 %237, %236
  %247 = lshr i64 %246, 4
  %248 = trunc i64 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %28, align 1, !tbaa !2449
  %250 = icmp eq i64 %237, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %31, align 1, !tbaa !2450
  %252 = lshr i64 %237, 63
  %253 = trunc i64 %252 to i8
  store i8 %253, i8* %34, align 1, !tbaa !2451
  %254 = lshr i64 %236, 63
  %255 = xor i64 %252, %254
  %256 = add nuw nsw i64 %255, %252
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %40, align 1, !tbaa !2452
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
define %struct.Memory* @sub_401c80_second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401c80:
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
  store i8 0, i8* %13, align 1, !tbaa !2434
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 1, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %17, align 1, !tbaa !2451
  store i8 0, i8* %18, align 1, !tbaa !2452
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %20 = add i64 %12, -5937
  %21 = add i64 %12, 20
  %22 = add i64 %9, -48
  %23 = inttoptr i64 %22 to i64*
  store i64 %21, i64* %23, align 8
  store i64 %22, i64* %RSP, align 8, !tbaa !2428
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %24 = tail call fastcc %struct.Memory* @ext_603160_gettimeofday(%struct.State* nonnull %0, %struct.Memory* %2)
  %25 = load i64, i64* %PC, align 8
  %26 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  store i8 0, i8* %13, align 1, !tbaa !2434
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #9
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  %32 = icmp eq i32 %26, 0
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2450
  %34 = lshr i32 %26, 31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %17, align 1, !tbaa !2451
  store i8 0, i8* %18, align 1, !tbaa !2452
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
  %44 = load i8, i8* %16, align 1, !tbaa !2450
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i64 %42, i64 %43
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %.pre = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  br i1 %45, label %block_401cdb, label %block_401ca6

block_401d18:                                     ; preds = %block_401cdb, %block_401cb4
  %.pre-phi5 = phi double* [ %120, %block_401cdb ], [ %.pre4, %block_401cb4 ]
  %.pre-phi = phi i64* [ %118, %block_401cdb ], [ %101, %block_401cb4 ]
  %47 = phi i64 [ %.pre2, %block_401cdb ], [ %105, %block_401cb4 ]
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -24
  %50 = add i64 %47, 5
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %.pre-phi, align 1, !tbaa !2432
  store double 0.000000e+00, double* %.pre-phi5, align 1, !tbaa !2432
  %53 = load i64, i64* %RSP, align 8
  %54 = add i64 %53, 32
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  %55 = icmp ugt i64 %53, -33
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %13, align 1, !tbaa !2434
  %57 = trunc i64 %54 to i32
  %58 = and i32 %57, 255
  %59 = tail call i32 @llvm.ctpop.i32(i32 %58) #9
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  store i8 %62, i8* %14, align 1, !tbaa !2448
  %63 = xor i64 %54, %53
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  store i8 %66, i8* %15, align 1, !tbaa !2449
  %67 = icmp eq i64 %54, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %16, align 1, !tbaa !2450
  %69 = lshr i64 %54, 63
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %17, align 1, !tbaa !2451
  %71 = lshr i64 %53, 63
  %72 = xor i64 %69, %71
  %73 = add nuw nsw i64 %72, %69
  %74 = icmp eq i64 %73, 2
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %18, align 1, !tbaa !2452
  %76 = add i64 %47, 10
  store i64 %76, i64* %PC, align 8
  %77 = add i64 %53, 40
  %78 = inttoptr i64 %54 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %RBP, align 8, !tbaa !2428
  store i64 %77, i64* %RSP, align 8, !tbaa !2428
  %80 = add i64 %47, 11
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %77 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %PC, align 8, !tbaa !2428
  %83 = add i64 %53, 48
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %24

block_401cb4:                                     ; preds = %block_401ca6
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %85 = bitcast [32 x %union.VectorReg]* %4 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %85, align 1, !tbaa !2456
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -16
  %88 = add i64 %115, 7
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = trunc i64 %90 to i32
  %92 = and i64 %90, 4294967295
  store i64 %92, i64* %RCX, align 8, !tbaa !2428
  store i32 %91, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %93 = add i64 %86, -8
  %94 = add i64 %115, 20
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RAX, align 8, !tbaa !2428
  %97 = trunc i64 %96 to i32
  %98 = and i64 %96, 4294967295
  store i64 %98, i64* %RCX, align 8, !tbaa !2428
  store i32 %97, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 8) to i32*), align 8
  %99 = add i64 %86, -24
  %100 = add i64 %115, 34
  store i64 %100, i64* %PC, align 8
  %101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %102 = load i64, i64* %101, align 1
  %103 = inttoptr i64 %99 to i64*
  store i64 %102, i64* %103, align 8
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 66
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  %.pre4 = bitcast i64* %84 to double*
  br label %block_401d18

block_401ca6:                                     ; preds = %block_401c80
  store i8 0, i8* %13, align 1, !tbaa !2434
  %106 = and i32 %.pre, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106) #9
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  %111 = icmp eq i32 %.pre, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %16, align 1, !tbaa !2450
  %113 = lshr i32 %.pre, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %17, align 1, !tbaa !2451
  store i8 0, i8* %18, align 1, !tbaa !2452
  %.v = select i1 %111, i64 14, i64 53
  %115 = add i64 %46, %.v
  store i64 %115, i64* %PC, align 8, !tbaa !2428
  br i1 %111, label %block_401cb4, label %block_401cdb

block_401cdb:                                     ; preds = %block_401c80, %block_401ca6
  %116 = phi i64 [ %115, %block_401ca6 ], [ %42, %block_401c80 ]
  %117 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401db0__rodata_type* @seg_401db0__rodata to i64), i64 32) to i64*), align 16
  %118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %117, i64* %118, align 1, !tbaa !2432
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %120 = bitcast i64* %119 to double*
  store double 0.000000e+00, double* %120, align 1, !tbaa !2432
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -16
  %123 = add i64 %116, 12
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4) to i32*), align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %RCX, align 8, !tbaa !2428
  %128 = sub i64 %125, %127
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = icmp ult i64 %125, %127
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %13, align 1, !tbaa !2434
  %131 = trunc i64 %128 to i32
  %132 = and i32 %131, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132) #9
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %14, align 1, !tbaa !2448
  %137 = xor i64 %127, %125
  %138 = xor i64 %137, %128
  %139 = lshr i64 %138, 4
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %15, align 1, !tbaa !2449
  %142 = icmp eq i64 %128, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %16, align 1, !tbaa !2450
  %144 = lshr i64 %128, 63
  %145 = trunc i64 %144 to i8
  store i8 %145, i8* %17, align 1, !tbaa !2451
  %146 = lshr i64 %125, 63
  %147 = lshr i64 %127, 63
  %148 = xor i64 %147, %146
  %149 = xor i64 %144, %146
  %150 = add nuw nsw i64 %149, %148
  %151 = icmp eq i64 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %18, align 1, !tbaa !2452
  %153 = sitofp i64 %128 to double
  %154 = bitcast %union.VectorReg* %5 to double*
  store double %153, double* %154, align 1, !tbaa !2432
  %155 = add i64 %121, -8
  %156 = add i64 %116, 32
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = sext i32 %.pre to i64
  store i64 %159, i64* %RCX, align 8, !tbaa !2428
  %160 = sub i64 %158, %159
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = icmp ult i64 %158, %159
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %13, align 1, !tbaa !2434
  %163 = trunc i64 %160 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #9
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %14, align 1, !tbaa !2448
  %169 = xor i64 %159, %158
  %170 = xor i64 %169, %160
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %15, align 1, !tbaa !2449
  %174 = icmp eq i64 %160, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %16, align 1, !tbaa !2450
  %176 = lshr i64 %160, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %17, align 1, !tbaa !2451
  %178 = lshr i64 %158, 63
  %179 = lshr i64 %159, 63
  %180 = xor i64 %179, %178
  %181 = xor i64 %176, %178
  %182 = add nuw nsw i64 %181, %180
  %183 = icmp eq i64 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %18, align 1, !tbaa !2452
  %185 = sitofp i64 %160 to double
  %186 = bitcast %union.VectorReg* %6 to double*
  %187 = bitcast [32 x %union.VectorReg]* %4 to double*
  %188 = load double, double* %187, align 1
  %189 = fdiv double %185, %188
  store double %189, double* %186, align 1, !tbaa !2432
  %190 = fadd double %153, %189
  store double %190, double* %154, align 1, !tbaa !2432
  %191 = load i64, i64* %RBP, align 8
  %192 = add i64 %191, -24
  %193 = add i64 %116, 61
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to double*
  store double %190, double* %194, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_401d18
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c10_mat_set(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400c10:
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
  br label %block_400c27

block_400c55:                                     ; preds = %block_400c65, %block_400c4e
  %49 = phi i64 [ %518, %block_400c65 ], [ %.pre8, %block_400c4e ]
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
  store i8 %66, i8* %35, align 1, !tbaa !2434
  %67 = and i32 %64, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67) #9
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %36, align 1, !tbaa !2448
  %72 = xor i32 %63, %54
  %73 = xor i32 %72, %64
  %74 = lshr i32 %73, 4
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %37, align 1, !tbaa !2449
  %77 = icmp eq i32 %64, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %38, align 1, !tbaa !2450
  %79 = lshr i32 %64, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %39, align 1, !tbaa !2451
  %81 = lshr i32 %54, 31
  %82 = lshr i32 %63, 31
  %83 = xor i32 %82, %81
  %84 = xor i32 %79, %81
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %40, align 1, !tbaa !2452
  %88 = icmp ne i8 %80, 0
  %89 = xor i1 %88, %86
  %.v9 = select i1 %89, i64 16, i64 114
  %90 = add i64 %49, %.v9
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  br i1 %89, label %block_400c65, label %block_400cc7

block_400c37:                                     ; preds = %block_400c27
  %91 = add i64 %107, -24
  %92 = add i64 %147, 7
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  store i32 0, i32* %93, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400c3e

block_400ced:                                     ; preds = %block_400c27
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
  store i64 %101, i64* %PC, align 8, !tbaa !2428
  %102 = add i64 %95, 16
  store i64 %102, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400c4e:                                     ; preds = %block_400c3e
  %103 = add i64 %179, -28
  %104 = add i64 %219, 7
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 0, i32* %105, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400c55

block_400c27:                                     ; preds = %block_400cda, %block_400c10
  %106 = phi i64 [ %249, %block_400cda ], [ %.pre, %block_400c10 ]
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
  store i8 %123, i8* %35, align 1, !tbaa !2434
  %124 = and i32 %121, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #9
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %36, align 1, !tbaa !2448
  %129 = xor i32 %120, %111
  %130 = xor i32 %129, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %37, align 1, !tbaa !2449
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %38, align 1, !tbaa !2450
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %39, align 1, !tbaa !2451
  %138 = lshr i32 %111, 31
  %139 = lshr i32 %120, 31
  %140 = xor i32 %139, %138
  %141 = xor i32 %136, %138
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %40, align 1, !tbaa !2452
  %145 = icmp ne i8 %137, 0
  %146 = xor i1 %145, %143
  %.v10 = select i1 %146, i64 16, i64 198
  %147 = add i64 %106, %.v10
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  br i1 %146, label %block_400c37, label %block_400ced

block_400cc7:                                     ; preds = %block_400c55
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
  store i8 %157, i8* %35, align 1, !tbaa !2434
  %158 = and i32 %152, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #9
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %36, align 1, !tbaa !2448
  %163 = xor i32 %152, %151
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %37, align 1, !tbaa !2449
  %167 = zext i1 %155 to i8
  store i8 %167, i8* %38, align 1, !tbaa !2450
  %168 = lshr i32 %152, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %39, align 1, !tbaa !2451
  %170 = lshr i32 %151, 31
  %171 = xor i32 %168, %170
  %172 = add nuw nsw i32 %171, %168
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %40, align 1, !tbaa !2452
  %175 = add i64 %90, 14
  store i64 %175, i64* %PC, align 8
  store i32 %152, i32* %150, align 4
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, -151
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  br label %block_400c3e

block_400c3e:                                     ; preds = %block_400cc7, %block_400c37
  %178 = phi i64 [ %177, %block_400cc7 ], [ %.pre7, %block_400c37 ]
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -24
  %181 = add i64 %178, 3
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = add i64 %179, -8
  %186 = add i64 %178, 7
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RCX, align 8, !tbaa !2428
  %189 = add i64 %188, 16
  %190 = add i64 %178, 10
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sub i32 %183, %192
  %194 = icmp ult i32 %183, %192
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %35, align 1, !tbaa !2434
  %196 = and i32 %193, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #9
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %36, align 1, !tbaa !2448
  %201 = xor i32 %192, %183
  %202 = xor i32 %201, %193
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %37, align 1, !tbaa !2449
  %206 = icmp eq i32 %193, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %38, align 1, !tbaa !2450
  %208 = lshr i32 %193, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %39, align 1, !tbaa !2451
  %210 = lshr i32 %183, 31
  %211 = lshr i32 %192, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %208, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %40, align 1, !tbaa !2452
  %217 = icmp ne i8 %209, 0
  %218 = xor i1 %217, %215
  %.v = select i1 %218, i64 16, i64 156
  %219 = add i64 %178, %.v
  store i64 %219, i64* %PC, align 8, !tbaa !2428
  br i1 %218, label %block_400c4e, label %block_400cda

block_400cda:                                     ; preds = %block_400c3e
  %220 = add i64 %179, -20
  %221 = add i64 %219, 8
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %223, 1
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = icmp eq i32 %223, -1
  %227 = icmp eq i32 %224, 0
  %228 = or i1 %226, %227
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %35, align 1, !tbaa !2434
  %230 = and i32 %224, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #9
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %36, align 1, !tbaa !2448
  %235 = xor i32 %224, %223
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %37, align 1, !tbaa !2449
  %239 = zext i1 %227 to i8
  store i8 %239, i8* %38, align 1, !tbaa !2450
  %240 = lshr i32 %224, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %39, align 1, !tbaa !2451
  %242 = lshr i32 %223, 31
  %243 = xor i32 %240, %242
  %244 = add nuw nsw i32 %243, %240
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %40, align 1, !tbaa !2452
  %247 = add i64 %219, 14
  store i64 %247, i64* %PC, align 8
  store i32 %224, i32* %222, align 4
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, -193
  store i64 %249, i64* %PC, align 8, !tbaa !2428
  br label %block_400c27

block_400c65:                                     ; preds = %block_400c55
  %250 = add i64 %50, -16
  %251 = add i64 %90, 5
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %42, align 1, !tbaa !2453
  store float 0.000000e+00, float* %44, align 1, !tbaa !2453
  store float 0.000000e+00, float* %46, align 1, !tbaa !2453
  store float 0.000000e+00, float* %48, align 1, !tbaa !2453
  %254 = add i64 %90, 9
  store i64 %254, i64* %PC, align 8
  %255 = load i64, i64* %58, align 8
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = add i64 %90, 12
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = add i64 %50, -12
  %260 = add i64 %90, 15
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RCX, align 8, !tbaa !2428
  %264 = add i64 %90, 19
  store i64 %264, i64* %PC, align 8
  %265 = load i64, i64* %58, align 8
  store i64 %265, i64* %RDX, align 8, !tbaa !2428
  %266 = add i64 %265, 12
  %267 = add i64 %90, 23
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
  store i8 %278, i8* %35, align 1, !tbaa !2434
  %279 = and i32 %273, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279) #9
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %284 = lshr i32 %273, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %39, align 1, !tbaa !2451
  store i8 %278, i8* %40, align 1, !tbaa !2452
  %286 = add i64 %90, 27
  store i64 %286, i64* %PC, align 8
  %287 = load i64, i64* %58, align 8
  store i64 %287, i64* %RDX, align 8, !tbaa !2428
  %288 = add i64 %287, 16
  %289 = add i64 %90, 31
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = shl i64 %272, 32
  %293 = ashr exact i64 %292, 32
  %294 = sext i32 %291 to i64
  %295 = mul nsw i64 %294, %293
  %296 = trunc i64 %295 to i32
  %297 = and i64 %295, 4294967295
  store i64 %297, i64* %RCX, align 8, !tbaa !2428
  %298 = shl i64 %295, 32
  %299 = ashr exact i64 %298, 32
  %300 = icmp ne i64 %299, %295
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %35, align 1, !tbaa !2434
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #9
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %307 = lshr i32 %296, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %39, align 1, !tbaa !2451
  store i8 %301, i8* %40, align 1, !tbaa !2452
  %309 = add i64 %90, 35
  store i64 %309, i64* %PC, align 8
  %310 = load i64, i64* %58, align 8
  store i64 %310, i64* %RDX, align 8, !tbaa !2428
  %311 = add i64 %310, 20
  %312 = add i64 %90, 39
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = shl i64 %295, 32
  %316 = ashr exact i64 %315, 32
  %317 = sext i32 %314 to i64
  %318 = mul nsw i64 %317, %316
  %319 = trunc i64 %318 to i32
  %320 = and i64 %318, 4294967295
  store i64 %320, i64* %RCX, align 8, !tbaa !2428
  %321 = shl i64 %318, 32
  %322 = ashr exact i64 %321, 32
  %323 = icmp ne i64 %322, %318
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %35, align 1, !tbaa !2434
  %325 = and i32 %319, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #9
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %330 = lshr i32 %319, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %39, align 1, !tbaa !2451
  store i8 %324, i8* %40, align 1, !tbaa !2452
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -20
  %334 = add i64 %90, 42
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RSI, align 8, !tbaa !2428
  %338 = add i64 %332, -8
  %339 = add i64 %90, 46
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RDX, align 8, !tbaa !2428
  %342 = add i64 %341, 16
  %343 = add i64 %90, 50
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %336 to i64
  %347 = sext i32 %345 to i64
  %348 = mul nsw i64 %347, %346
  %349 = trunc i64 %348 to i32
  %350 = and i64 %348, 4294967295
  store i64 %350, i64* %RSI, align 8, !tbaa !2428
  %351 = shl i64 %348, 32
  %352 = ashr exact i64 %351, 32
  %353 = icmp ne i64 %352, %348
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %35, align 1, !tbaa !2434
  %355 = and i32 %349, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355) #9
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %360 = lshr i32 %349, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %39, align 1, !tbaa !2451
  store i8 %354, i8* %40, align 1, !tbaa !2452
  %362 = add i64 %90, 54
  store i64 %362, i64* %PC, align 8
  %363 = load i64, i64* %340, align 8
  store i64 %363, i64* %RDX, align 8, !tbaa !2428
  %364 = add i64 %363, 20
  %365 = add i64 %90, 58
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = shl i64 %348, 32
  %369 = ashr exact i64 %368, 32
  %370 = sext i32 %367 to i64
  %371 = mul nsw i64 %370, %369
  %372 = and i64 %371, 4294967295
  store i64 %372, i64* %RSI, align 8, !tbaa !2428
  %373 = trunc i64 %371 to i32
  %374 = trunc i64 %318 to i32
  %375 = add i32 %373, %374
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RCX, align 8, !tbaa !2428
  %377 = icmp ult i32 %375, %374
  %378 = icmp ult i32 %375, %373
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %35, align 1, !tbaa !2434
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #9
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %36, align 1, !tbaa !2448
  %386 = xor i64 %371, %318
  %387 = trunc i64 %386 to i32
  %388 = xor i32 %387, %375
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %37, align 1, !tbaa !2449
  %392 = icmp eq i32 %375, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %38, align 1, !tbaa !2450
  %394 = lshr i32 %375, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %39, align 1, !tbaa !2451
  %396 = lshr i32 %374, 31
  %397 = lshr i32 %373, 31
  %398 = xor i32 %394, %396
  %399 = xor i32 %394, %397
  %400 = add nuw nsw i32 %398, %399
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %40, align 1, !tbaa !2452
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -24
  %405 = add i64 %90, 63
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RSI, align 8, !tbaa !2428
  %409 = add i64 %403, -8
  %410 = add i64 %90, 67
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RDX, align 8, !tbaa !2428
  %413 = add i64 %412, 20
  %414 = add i64 %90, 71
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %407 to i64
  %418 = sext i32 %416 to i64
  %419 = mul nsw i64 %418, %417
  %420 = and i64 %419, 4294967295
  store i64 %420, i64* %RSI, align 8, !tbaa !2428
  %421 = trunc i64 %419 to i32
  %422 = add i32 %421, %375
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RCX, align 8, !tbaa !2428
  %424 = icmp ult i32 %422, %375
  %425 = icmp ult i32 %422, %421
  %426 = or i1 %424, %425
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %35, align 1, !tbaa !2434
  %428 = and i32 %422, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428) #9
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %36, align 1, !tbaa !2448
  %433 = xor i64 %419, %376
  %434 = trunc i64 %433 to i32
  %435 = xor i32 %434, %422
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %37, align 1, !tbaa !2449
  %439 = icmp eq i32 %422, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %38, align 1, !tbaa !2450
  %441 = lshr i32 %422, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %39, align 1, !tbaa !2451
  %443 = lshr i32 %421, 31
  %444 = xor i32 %441, %394
  %445 = xor i32 %441, %443
  %446 = add nuw nsw i32 %444, %445
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %40, align 1, !tbaa !2452
  %449 = add i64 %403, -28
  %450 = add i64 %90, 76
  store i64 %450, i64* %PC, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = add i32 %452, %422
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RCX, align 8, !tbaa !2428
  %455 = icmp ult i32 %453, %422
  %456 = icmp ult i32 %453, %452
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %35, align 1, !tbaa !2434
  %459 = and i32 %453, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459) #9
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %36, align 1, !tbaa !2448
  %464 = xor i32 %452, %422
  %465 = xor i32 %464, %453
  %466 = lshr i32 %465, 4
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %37, align 1, !tbaa !2449
  %469 = icmp eq i32 %453, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %38, align 1, !tbaa !2450
  %471 = lshr i32 %453, 31
  %472 = trunc i32 %471 to i8
  store i8 %472, i8* %39, align 1, !tbaa !2451
  %473 = lshr i32 %452, 31
  %474 = xor i32 %471, %441
  %475 = xor i32 %471, %473
  %476 = add nuw nsw i32 %474, %475
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %40, align 1, !tbaa !2452
  %479 = sext i32 %453 to i64
  store i64 %479, i64* %RDX, align 8, !tbaa !2428
  %480 = load i64, i64* %RAX, align 8
  %481 = shl nsw i64 %479, 2
  %482 = add i64 %480, %481
  %483 = add i64 %90, 84
  store i64 %483, i64* %PC, align 8
  %484 = load <2 x float>, <2 x float>* %26, align 1
  %485 = extractelement <2 x float> %484, i32 0
  %486 = inttoptr i64 %482 to float*
  store float %485, float* %486, align 4
  %487 = load i64, i64* %RBP, align 8
  %488 = add i64 %487, -28
  %489 = load i64, i64* %PC, align 8
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, 1
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX, align 8, !tbaa !2428
  %495 = icmp eq i32 %492, -1
  %496 = icmp eq i32 %493, 0
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %35, align 1, !tbaa !2434
  %499 = and i32 %493, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499) #9
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %36, align 1, !tbaa !2448
  %504 = xor i32 %493, %492
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %37, align 1, !tbaa !2449
  %508 = zext i1 %496 to i8
  store i8 %508, i8* %38, align 1, !tbaa !2450
  %509 = lshr i32 %493, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %39, align 1, !tbaa !2451
  %511 = lshr i32 %492, 31
  %512 = xor i32 %509, %511
  %513 = add nuw nsw i32 %512, %509
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %40, align 1, !tbaa !2452
  %516 = add i64 %489, 9
  store i64 %516, i64* %PC, align 8
  store i32 %493, i32* %491, align 4
  %517 = load i64, i64* %PC, align 8
  %518 = add i64 %517, -109
  store i64 %518, i64* %PC, align 8, !tbaa !2428
  br label %block_400c55
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401990_clearMat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401990:
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
  store i8 %11, i8* %12, align 1, !tbaa !2434
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #9
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2448
  %20 = xor i64 %6, 16
  %21 = xor i64 %20, %9
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2449
  %26 = icmp eq i64 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2450
  %29 = lshr i64 %9, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2451
  %32 = lshr i64 %6, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2452
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
  store i8 0, i8* %12, align 1, !tbaa !2434
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  %57 = icmp eq i64 %50, 0
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %28, align 1, !tbaa !2450
  %59 = lshr i64 %50, 63
  %60 = trunc i64 %59 to i8
  store i8 %60, i8* %31, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2452
  %.v = select i1 %57, i64 29, i64 14
  %61 = add i64 %44, %.v
  store i64 %61, i64* %PC, align 8, !tbaa !2428
  br i1 %57, label %block_4019b9, label %block_4019aa

block_4019aa:                                     ; preds = %block_401990
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
  br label %block_4019b9

block_4019b9:                                     ; preds = %block_4019aa, %block_401990
  %73 = phi i64 [ %61, %block_401990 ], [ %.pre1, %block_4019aa ]
  %74 = phi i64 [ %42, %block_401990 ], [ %.pre, %block_4019aa ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401990 ], [ %72, %block_4019aa ]
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
  store i8 %121, i8* %12, align 1, !tbaa !2434
  %122 = trunc i64 %119 to i32
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #9
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %19, align 1, !tbaa !2448
  %128 = xor i64 %117, 16
  %129 = xor i64 %128, %119
  %130 = lshr i64 %129, 4
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %25, align 1, !tbaa !2449
  %133 = icmp eq i64 %119, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %28, align 1, !tbaa !2450
  %135 = lshr i64 %119, 63
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %31, align 1, !tbaa !2451
  %137 = lshr i64 %117, 63
  %138 = xor i64 %135, %137
  %139 = add nuw nsw i64 %138, %135
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %37, align 1, !tbaa !2452
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

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400670_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400670_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400670_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400640___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400640___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603138_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603120_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400580_exit(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401da0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401da0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401da0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401da0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401d30___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401d30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401d30___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401d30___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400680_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
define internal fastcc %struct.Memory* @ext_603160_gettimeofday(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603118_free(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @second() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401c80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @second_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401c80_second(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @mflops() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a50;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_401a50_mflops(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @newMat() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @newMat_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400a80_newMat(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @mat_set() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @mat_set_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c10_mat_set(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @jacobi() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400cf0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @jacobi_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400cf0_jacobi(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400508;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400508__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @fflop() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @fflop_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401a00_fflop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401da4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_401da4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @set_param() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401a90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @15, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @set_param_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401a90_set_param(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @mat_set_init() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400b10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @16, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @mat_set_init_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400b10_mat_set_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @clearMat() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401990;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @17, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @clearMat_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401990_clearMat(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_401da0___libc_csu_fini()
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
  tail call void @callback_sub_401d30___libc_csu_init()
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
!2432 = !{!2433, !2433, i64 0}
!2433 = !{!"double", !2430, i64 0}
!2434 = !{!2435, !2430, i64 2065}
!2435 = !{!"_ZTS5State", !2430, i64 16, !2436, i64 2064, !2430, i64 2080, !2437, i64 2088, !2439, i64 2112, !2441, i64 2208, !2442, i64 2480, !2443, i64 2608, !2444, i64 2736, !2430, i64 2760, !2430, i64 2768, !2445, i64 3280}
!2436 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2437 = !{!"_ZTS8Segments", !2438, i64 0, !2430, i64 2, !2438, i64 4, !2430, i64 6, !2438, i64 8, !2430, i64 10, !2438, i64 12, !2430, i64 14, !2438, i64 16, !2430, i64 18, !2438, i64 20, !2430, i64 22}
!2438 = !{!"short", !2430, i64 0}
!2439 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88}
!2440 = !{!"_ZTS3Reg", !2430, i64 0}
!2441 = !{!"_ZTS3GPR", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88, !2429, i64 96, !2440, i64 104, !2429, i64 112, !2440, i64 120, !2429, i64 128, !2440, i64 136, !2429, i64 144, !2440, i64 152, !2429, i64 160, !2440, i64 168, !2429, i64 176, !2440, i64 184, !2429, i64 192, !2440, i64 200, !2429, i64 208, !2440, i64 216, !2429, i64 224, !2440, i64 232, !2429, i64 240, !2440, i64 248, !2429, i64 256, !2440, i64 264}
!2442 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2443 = !{!"_ZTS3MMX", !2430, i64 0}
!2444 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2445 = !{!"_ZTS13SegmentCaches", !2446, i64 0, !2446, i64 16, !2446, i64 32, !2446, i64 48, !2446, i64 64, !2446, i64 80}
!2446 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2447, i64 8, !2447, i64 12}
!2447 = !{!"int", !2430, i64 0}
!2448 = !{!2435, !2430, i64 2067}
!2449 = !{!2435, !2430, i64 2069}
!2450 = !{!2435, !2430, i64 2071}
!2451 = !{!2435, !2430, i64 2073}
!2452 = !{!2435, !2430, i64 2077}
!2453 = !{!2454, !2454, i64 0}
!2454 = !{!"float", !2430, i64 0}
!2455 = !{!2430, !2430, i64 0}
!2456 = !{!2447, !2447, i64 0}
